#include <sys/time.h>
#include <cuda_runtime.h>
#include <stdio.h>
#include <stdlib.h>
#include <stdbool.h>
#include <time.h>

#define TAM_TABLE 15
#define TAM_TH 7

//#define N_ELEM 50000000
#define N_ELEM 100000000

// #define _RF_TABLE_1TREE_7LV_FAKE
//  #define _RF_TABLE_2TREE_7LV_FAKE
//  #define _RF_TABLE_3TREE_7LV_FAKE
//  #define _RF_TABLE_4TREE_7LV_FAKE

#define WARP_SIZE 32

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

#define _MOD 8

#define _1TREE
#define EXP_NAME "_RF_TABLE_1TREE_7LV_FAKE"
__global__ void RF_kernel(float *input, const int n, const int *table, const int offset0, float *vR)

{
	int i = blockIdx.x * blockDim.x + threadIdx.x;
	int next, left, right;
	float th;
	int tb[TAM_TABLE];

	int v;

	if (i < n)
	{

		for (int j = 0; j < TAM_TABLE; j++)
		{
			tb[j] = table[j];
		}

		v = input[i];
		left = (tb[0] >> 2) & 0xff;
		right = (tb[1] >> 10) & 0xff;
		th = tb[2];
		next = (v > (th + offset0)) ? left : right;

		// if (i == 2)
		//	printf("idx=%d, left=%d , right=%d , th=%f , next=%d \n", idx, left, right, th, next);

		left = (tb[3] >> 2) & 0xff;
		right = (tb[4] >> 10) & 0xff;
		th = tb[5];
		next += (v > (th + offset0)) ? left : right;

		left = (tb[6] >> 2) & 0xff;
		right = (tb[7] >> 10) & 0xff;
		th = tb[8];
		next += (v > (th + offset0)) ? left : right;

		vR[i] = next + offset0;
    }
}

void initData(float *ip, int size);
void registerTime(float value);

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
	int tamTable = TAM_TABLE;
	int tamTh = TAM_TH;
	printf("[CUDA - Random Forest]: Vector Size %d\n", nElem);

	// malloc host memory
	size_t nBytes = nElem * sizeof(float);
	size_t tableBytes = tamTable * sizeof(int);
	size_t thBytes = tamTh * sizeof(float);

	float *h_vR;
	h_vR = (float *)malloc(nBytes);
	float *h_input;
	h_input = (float *)malloc(nBytes);
	int *h_table;
	h_table = (int *)malloc(tableBytes);
	float *h_th;
	h_th = (float *)malloc(thBytes);
	{
		h_table[0] = (1 << 2) | (2 << 10);
		h_table[1] = (3 << 2) | (4 << 10);
		h_table[2] = (5 << 2) | (6 << 10);
		h_table[3] = (7 << 2) | (8 << 10);
		h_table[4] = (9 << 2) | (10 << 10);
		h_table[5] = (11 << 2) | (12 << 10);
		h_table[6] = (13 << 2) | (14 << 10);
		h_table[7] = 7;
		h_table[8] = 6;
		h_table[9] = 5;
		h_table[10] = 4;
		h_table[11] = 3;
		h_table[12] = 2;
		h_table[13] = 1;
		h_table[14] = 0;
	}
	printf("[CUDA - Random Forest]: Start Reading Dataset\n");
	initData(h_input, nElem);
	printf("[CUDA - Random Forest]: Finished Reading Dataset\n");
	memset(h_vR, 0, nBytes);

	// malloc device global memory
	float *d_vR;
	CHECK(cudaMalloc((float **)&d_vR, nBytes));
	float *d_input;
	CHECK(cudaMalloc((float **)&d_input, nBytes));
	int *d_table;
	CHECK(cudaMalloc((int **)&d_table, tableBytes));

	// transfer data from host to device
	CHECK(cudaMemcpy(d_input, h_input, nBytes, cudaMemcpyHostToDevice));
	CHECK(cudaMemcpy(d_table, h_table, tableBytes, cudaMemcpyHostToDevice));

	// invoke kernel at host side
	int iLen = 512;
	dim3 block(iLen);
	dim3 grid((nElem + block.x - 1) / block.x);
	cudaEvent_t start, stop;
	CHECK(cudaEventCreate(&start));
	CHECK(cudaEventCreate(&stop));

	// record start event
	CHECK(cudaEventRecord(start, 0));

#if defined(_2TREE)
	RF_kernel<<<grid, block>>>(d_input, nElem, 0, 0, d_vR);
#elif defined(_3TREE)
	RF_kernel<<<grid, block>>>(d_input, nElem, 0, 0, 0, d_vR);
#elif defined(_4TREE)
	RF_kernel<<<grid, block>>>(d_input, nElem, 0, 0, 0, 0, d_vR);
#else
	RF_kernel<<<grid, block>>>(d_input, nElem, d_table, 0, d_vR);
#endif

	CHECK(cudaEventRecord(stop, 0));
	CHECK(cudaEventSynchronize(stop));
	cudaDeviceSynchronize();

	// calculate elapsed time
	CHECK(cudaEventElapsedTime(&elapsed_time, start, stop));
	printf("[CUDA - Random Forest]: %s - execution time = %.6fms\n", EXP_NAME, elapsed_time);
	registerTime(elapsed_time);

	// copy kernel result back to host side
	CHECK(cudaMemcpy(h_vR, d_vR, nBytes, cudaMemcpyDeviceToHost));
	CHECK(cudaGetLastError());

	// Verify the answers
	char flag = 1;
	for (int i = 0; i < nElem; i++)
	{
		if (i < 4 * WARP_SIZE)
		{
			printf("%.3f ", h_vR[i]);
		}
		if (h_input[i] != h_vR[i])
		{
			flag = 0;
			// break;
		}
	}
	if (flag == 1)
	{
		// printf("Return correct");
	}
	else
	{
		// printf("Error!!");
	}
	printf("\n ");

	// free device memory
	cudaFree(d_input);
	cudaFree(d_vR);

	// free host memory
	free(h_input);
	free(h_vR);
	free(h_th);
	free(h_table);
	return (0);
}

void initData(float *ip, int size)
{
	for (int i = 0; i < size; i++)
	{
		ip[i] = (float)0;
		// if (WARP_SIZE < _MOD)
		//{
		//	int aux = _MOD / WARP_SIZE;
		//	ip[i] = (float)((i * aux) % _MOD);
		// }
		// else
		//{
		//	ip[i] = (float)(i % _MOD);
		// }
		//  if (i < 32)
		//	printf("%.2f ", ip[i]);
	}
	return;
}

void registerTime(float value)
{
	printf("[CUDA - Random Forest]: Time spent: %f.\n", value);
}
