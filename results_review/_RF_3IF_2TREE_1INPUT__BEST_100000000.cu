#include <sys/time.h>
#include <cuda_runtime.h>
#include <stdio.h>
#include <stdlib.h>
#include <stdbool.h>
#include <time.h>

#define _BEST
#define TIMES 10
#define N_ELEM 100000000

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

void initData(float *ip, int size);
void registerTime(float value);

#define _MOD 4
#define _2TREE
#define EXP_NAME "_RF_3IF_2TREE_1INPUT__BEST_100000000"

// RF_with_if

__global__ void RF_kernel(float *input, const int n, const int offset0, const int offset1, float *vR)
{
	int i = blockIdx.x * blockDim.x + threadIdx.x;
	if (i < n)
	{
if(input[i]>(1+offset0))
{
	if(input[i]==(3+offset0))
{
	vR[i] = 3;
}
else
{
	vR[i] = 2;
}

}
else
{
	if(input[i]==(1+offset0))
{
	vR[i] = 1;
}
else
{
	vR[i] = 0;
}

}


if(input[i]>(1+offset1))
{
	if(input[i]==(3+offset1))
{
	vR[i] = 3;
}
else
{
	vR[i] = 2;
}

}
else
{
	if(input[i]==(1+offset1))
{
	vR[i] = 1;
}
else
{
	vR[i] = 0;
}

}


	}
}

int main(int argc, char **argv)
{
	float elapsed_time[TIMES], avg = 0.0, sd = 0.0;
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
	float *h_input;
	h_input = (float *)malloc(nBytes);

	printf("[CUDA - Random Forest]: Start Reading Dataset\n");
	initData(h_input, nElem);
	printf("[CUDA - Random Forest]: Finished Reading Dataset\n");
	memset(h_vR, 0, nBytes);

	// malloc device global memory
	float *d_vR;
	CHECK(cudaMalloc((float **)&d_vR, nBytes));
	float *d_input;
	CHECK(cudaMalloc((float **)&d_input, nBytes));

	// transfer data from host to device
	CHECK(cudaMemcpy(d_input, h_input, nBytes, cudaMemcpyHostToDevice));

	// invoke kernel at host side
	int iLen = 512;
	dim3 block(iLen);
	dim3 grid((nElem + block.x - 1) / block.x);
	cudaEvent_t start, stop;
	CHECK(cudaEventCreate(&start));
	CHECK(cudaEventCreate(&stop));

	for (int t = 0; t < TIMES; t++)
	{
	// record start event
		CHECK(cudaEventRecord(start, 0));
#if defined(_2TREE)
		RF_kernel<<<grid, block>>>(d_input, nElem, 0, 0, d_vR);
#elif defined(_3TREE)
		RF_kernel<<<grid, block>>>(d_input, nElem, 0, 0, 0, d_vR);
#elif defined(_4TREE)
		RF_kernel<<<grid, block>>>(d_input, nElem, 0, 0, 0, 0, d_vR);
#elif defined(_5TREE)
		RF_kernel<<<grid, block>>>(d_input, nElem, 0, 0, 0, 0, 0, d_vR);
#elif defined(_6TREE)
		RF_kernel<<<grid, block>>>(d_input, nElem, 0, 0, 0, 0, 0, 0, d_vR);
#elif defined(_7TREE)
		RF_kernel<<<grid, block>>>(d_input, nElem, 0, 0, 0, 0, 0, 0, 0, d_vR);
#elif defined(_8TREE)
		RF_kernel<<<grid, block>>>(d_input, nElem, 0, 0, 0, 0, 0, 0, 0, 0, d_vR);
#elif defined(_9TREE)
		RF_kernel<<<grid, block>>>(d_input, nElem, 0, 0, 0, 0, 0, 0, 0, 0, 0, d_vR);
#elif defined(_10TREE)
		RF_kernel<<<grid, block>>>(d_input, nElem, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, d_vR);
#else
		RF_kernel<<<grid, block>>>(d_input, nElem, 0, d_vR);
#endif
		CHECK(cudaEventRecord(stop, 0));
		CHECK(cudaEventSynchronize(stop));
		cudaDeviceSynchronize();

		// calculate elapsed time
		CHECK(cudaEventElapsedTime(&elapsed_time[t], start, stop));
		printf("[CUDA - Random Forest]: %s - execution time = %.6fms\n", EXP_NAME, elapsed_time[t]);
		registerTime(elapsed_time[t]);

		avg += elapsed_time[t];
	}
	// copy kernel result back to host side
	CHECK(cudaMemcpy(h_vR, d_vR, nBytes, cudaMemcpyDeviceToHost));
	CHECK(cudaGetLastError());

	//Verify the answers
	char flag = 1;
	for (int i = 0; i < nElem; i++)
	{
		if (i < 32)
		{
			//printf("%.3f ", h_vR[i]);
		}
		if (h_input[i] != h_vR[i])
		{
			flag = 0;
			break;
		}
	}
	if (flag == 1)
	{
		printf("Return correct");
	}
	else
	{
		printf("Error!!");
	}
	printf("\n ");

	// avg and standard deviation
	avg = (float)avg / TIMES;
	for (int t = 0; t < TIMES; t++)
	{
		sd+=pow(elapsed_time[t]-avg,2);
	}
	sd = (float) sd/TIMES;
	sd = sqrt(sd);
	printf("\nAVG = %fms, SD = %fms\n", avg,sd);
	// free device memory
	cudaFree(d_input);
	cudaFree(d_vR);

	// free host memory
	free(h_input);
	free(h_vR);
	return (0);
}

void initData(float *ip, int size)
{
	for (int i = 0; i < size; i++)
	{

#if defined(_BEST)
		ip[i] = (float)(0);
#else
		if(WARP_SIZE < _MOD)
		{
			int aux = _MOD / WARP_SIZE;
			ip[i] = (float)((i * aux) % _MOD);
		}
		else
		{
			ip[i] = (float)(i % _MOD);
		}
#endif
	}
	return;
}

void registerTime(float value)
{
	printf("[CUDA - Random Forest]: Time spent: %f.\n", value);
}
