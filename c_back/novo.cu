#include <sys/time.h>
#include <cuda_runtime.h>
#include <stdio.h>
#include <stdlib.h>
#include <stdbool.h>
#include <time.h>

#define WARP_SIZE 32
#define N_ELEM 200000000

#define CHECK(call)                                                \
    {                                                              \
        const cudaError_t error = call;                            \
        if (error != cudaSuccess)                                  \
        {                                                          \
            fprintf(stderr, "Error: %s:%d, ", __FILE__, __LINE__); \
            fprintf(stderr, "code: %d, reason: %s\n", error,       \
                    cudaGetErrorString(error));                    \
        }                                                          \
    }
FILE *outFile;

// RF_kernel
__global__ void RF_copia_simples(float *input, const int n, float *vR)
{
    int i = blockIdx.x * blockDim.x + threadIdx.x;

    // para 8 classes
    if (i < n)
    {
        vR[i] = input[i];
    }
}

// RF_kernel
__global__ void RF_1if(float *input, const int n, float *vR)
{
    int i = blockIdx.x * blockDim.x + threadIdx.x;

    // para 8 classes
    if (i < n)
    {
        if (input[i] > 16)
        {
            vR[i] = 17;
        }
        else
        {
            vR[i] = 15;
        }
    }
}

// RF_kernel
__global__ void RF_1if2t(float *input, const int n, const int offset, float *vR)
{
    int i = blockIdx.x * blockDim.x + threadIdx.x;
    int local;
    // para 8 classes
    if (i < n)
    {
        if (input[i] > 16)
        {
            local = 17;
        }
        else
        {
            local = 15;
        }

        if (input[i] > 16 + offset)
        {
            vR[i] = local;
        }
        else
        {
            vR[i] = local;
        }
    }
}

// RF_kernel
__global__ void RF_2if(float *input, const int n, float *vR)
{
    int i = blockIdx.x * blockDim.x + threadIdx.x;

    // para 8 classes
    if (i < n)
    {
        if (input[i] > 16)
        {
            if (input[i] > 17)
            {
                vR[i] = 18;
            }
            else
            {
                vR[i] = 17;
            }
        }
        else
        {
            vR[i] = 15;
        }
    }
}

int main(int argc, char **argv)
{

    float elapsed_time;
    // set up device
    int dev = 0;
    cudaDeviceProp deviceProp;
    CHECK(cudaGetDeviceProperties(&deviceProp, dev));
    printf("[CUDA - Random Forest]: EXP %s\n", EXP_NAME);
    printf("[CUDA - Random Forest]: Using Device %d: %s\n", dev, deviceProp.name);
    CHECK(cudaSetDevice(dev));

    // set up data size of vectors
    int nElem = N_ELEM;
    printf("[CUDA - Random Forest]: Vector Size %d\n", nElem);

    // malloc host memory
    size_t nBytes = nElem * sizeof(float);

    float *h_vR;
    h_vR = (float *)malloc(nBytes);

#if defined(_1_INPUT)
    float *h_input;
    h_input = (float *)malloc(nBytes);
#endif

    printf("[CUDA - Random Forest]: Start Reading Dataset\n");
#if defined(_1_INPUT)
    initData(h_input, nElem);
#endif
    printf("[CUDA - Random Forest]: Finished Reading Dataset\n");

    memset(h_vR, 0, nBytes);

    // malloc device global memory
    float *d_vR;
    CHECK(cudaMalloc((float **)&d_vR, nBytes));

#if defined(_1_INPUT)
    float *d_input;
    CHECK(cudaMalloc((float **)&d_input, nBytes));
#endif

    // transfer data from host to device
#if defined(_1_INPUT)
    CHECK(cudaMemcpy(d_input, h_input, nBytes, cudaMemcpyHostToDevice));
#endif

    // invoke kernel at host side
    int iLen = 512;
    dim3 block(iLen);
    dim3 grid((nElem + block.x - 1) / block.x);

    cudaEvent_t start, stop;
    CHECK(cudaEventCreate(&start));
    CHECK(cudaEventCreate(&stop));
    // record start event
    CHECK(cudaEventRecord(start, 0));

#if defined(_RF_WITH_CALC_1TREE_1INPUT_5LEVEL) || defined(_RF_WITH_IF_1TREE_1INPUT_7LEVEL_BEST) ||     \
    defined(_RF_WITH_IF_1TREE_1INPUT_7LEVEL_WORST) || defined(_RF_WITH_IF_4TREE_1INPUT_5LEVEL_BEST) || \
    defined(_RF_WITH_IF_4TREE_1INPUT_5LEVEL_WORST)
    RF_kernel<<<grid, block>>>(d_input, nElem, d_vR);
#endif

    CHECK(cudaEventRecord(stop, 0));
    CHECK(cudaEventSynchronize(stop));
    cudaDeviceSynchronize();
    // calculate elapsed time
    CHECK(cudaEventElapsedTime(&elapsed_time, start, stop));
    printf("[CUDA - Random Forest]: %s - execution time = %.6fms\n", EXP_NAME, elapsed_time);

    registerTime(elapsed_time);

    // copy kernel result back to host side
#if defined(_1_INPUT)
    CHECK(cudaMemcpy(h_vR, d_vR, nBytes, cudaMemcpyDeviceToHost));
    CHECK(cudaGetLastError());
#endif

    char flag = 1;

    for (int i = 0; i < nElem; i++)
    {
        if (i < 32)
        {
            printf("%.3f ", h_vR[i]);
        }
#if defined(_1_INPUT)
        if (h_input[i] != h_vR[i])
        {
            printf("Error!!");
            flag = 0;
            break;
        }
#endif
    }

    if (flag == 1)
    {
        printf("Return correct");
    }

    printf("\n ");

    // free device memory
#if defined(_1_INPUT)
    cudaFree(d_input);
#endif
    cudaFree(d_vR);

    // free host memory
#if defined(_1_INPUT)
    free(h_input);
#endif
    free(h_vR);

    return (0);
}

void initData(float *ip, int size)
{
    for (int i = 0; i < size; i++)
    {
#if defined(_RF_WITH_IF_1TREE_1INPUT_7LEVEL_WORST)
        ip[i] = (float)((i % WARP_SIZE) * 4);

#elif defined(_RF_WITH_IF_1TREE_1INPUT_3LEVEL_BEST) || defined(_RF_WITH_IF_1TREE_1INPUT_7LEVEL_BEST) || \
    defined(_RF_WITH_IF_4TREE_1INPUT_5LEVEL_BEST)
        ip[i] = (float)(0);

#elif defined(_RF_WITH_IF_1TREE_1INPUT_3LEVEL_WORST) || defined(_RF_WITH_IF_4TREE_1INPUT_5LEVEL_WORST)
        ip[i] = (float)(i % WARP_SIZE);
#endif
    }
    return;
}

void writeOutFile(int value)
{
    outFile = fopen(EXP_OUTPUT_FILE, "a");
    fprintf(outFile, "%d\n", value);
    fclose(outFile);
}

void registerTime(float value)
{
    printf("[CUDA - Random Forest]: Time spent: %f.\n", value);
    outFile = fopen(EXP_RESULT_FILE, "a");
    fprintf(outFile, ",%f", value);
    fclose(outFile);
}
