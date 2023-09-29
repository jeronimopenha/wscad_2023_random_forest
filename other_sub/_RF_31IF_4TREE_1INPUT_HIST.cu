#include <sys/time.h>
#include <cuda_runtime.h>
#include <stdio.h>
#include <stdlib.h>
#include <stdbool.h>
#include <time.h>

#define TH_PER_BLOCK 512

#define _WORST
// #define _BEST
#define N_ELEM 50000000

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

#define _MOD 32
#define _4TREE
#define EXP_NAME "_RF_31IF_4TREE_1INPUT__WORST_50000000"

// RF_with_if

__global__ void RF_kernel(float *input, const int n, const int offset0, const int offset1, const int offset2, const int offset3, float *R, int *histogram)
{
	int i = blockIdx.x * blockDim.x + threadIdx.x;
	int vR;

	__shared__ int th_idx[TH_PER_BLOCK];

	th_idx[threadIdx.x] = 0;

	if (i < n)
	{
		if (input[i] > (15 + offset0))
		{
			if (input[i] > (23 + offset0))
			{
				if (input[i] > (27 + offset0))
				{
					if (input[i] > (29 + offset0))
					{
						if (input[i] == (31 + offset0))
						{
							vR = 31;
						}
						else
						{
							vR = 30;
						}
					}
					else
					{
						if (input[i] == (29 + offset0))
						{
							vR = 29;
						}
						else
						{
							vR = 28;
						}
					}
				}
				else
				{
					if (input[i] > (25 + offset0))
					{
						if (input[i] == (27 + offset0))
						{
							vR = 27;
						}
						else
						{
							vR = 26;
						}
					}
					else
					{
						if (input[i] == (25 + offset0))
						{
							vR = 25;
						}
						else
						{
							vR = 24;
						}
					}
				}
			}
			else
			{
				if (input[i] > (19 + offset0))
				{
					if (input[i] > (21 + offset0))
					{
						if (input[i] == (23 + offset0))
						{
							vR = 23;
						}
						else
						{
							vR = 22;
						}
					}
					else
					{
						if (input[i] == (21 + offset0))
						{
							vR = 21;
						}
						else
						{
							vR = 20;
						}
					}
				}
				else
				{
					if (input[i] > (17 + offset0))
					{
						if (input[i] == (19 + offset0))
						{
							vR = 19;
						}
						else
						{
							vR = 18;
						}
					}
					else
					{
						if (input[i] == (17 + offset0))
						{
							vR = 17;
						}
						else
						{
							vR = 16;
						}
					}
				}
			}
		}
		else
		{
			if (input[i] > (7 + offset0))
			{
				if (input[i] > (11 + offset0))
				{
					if (input[i] > (13 + offset0))
					{
						if (input[i] == (15 + offset0))
						{
							vR = 15;
						}
						else
						{
							vR = 14;
						}
					}
					else
					{
						if (input[i] == (13 + offset0))
						{
							vR = 13;
						}
						else
						{
							vR = 12;
						}
					}
				}
				else
				{
					if (input[i] > (9 + offset0))
					{
						if (input[i] == (11 + offset0))
						{
							vR = 11;
						}
						else
						{
							vR = 10;
						}
					}
					else
					{
						if (input[i] == (9 + offset0))
						{
							vR = 9;
						}
						else
						{
							vR = 8;
						}
					}
				}
			}
			else
			{
				if (input[i] > (3 + offset0))
				{
					if (input[i] > (5 + offset0))
					{
						if (input[i] == (7 + offset0))
						{
							vR = 7;
						}
						else
						{
							vR = 6;
						}
					}
					else
					{
						if (input[i] == (5 + offset0))
						{
							vR = 5;
						}
						else
						{
							vR = 4;
						}
					}
				}
				else
				{
					if (input[i] > (1 + offset0))
					{
						if (input[i] == (3 + offset0))
						{
							vR = 3;
						}
						else
						{
							vR = 2;
						}
					}
					else
					{
						if (input[i] == (1 + offset0))
						{
							vR = 1;
						}
						else
						{
							vR = 0;
						}
					}
				}
			}
		}

		R[i] = vR;
		th_idx[threadIdx.x] = vR;

		if (threadIdx.x % WARP_SIZE == 0)
		{
			int uniqueValues[WARP_SIZE];
			int count = 0;

			for (int i = 0; i < WARP_SIZE; i++)
			{
				int isUnique = 1;
				for (int j = 0; j < count; j++)
				{
					if (th_idx[threadIdx.x + i] == uniqueValues[j])
					{
						isUnique = 0;
						break;
					}
				}
				if (isUnique)
				{
					uniqueValues[count] = th_idx[threadIdx.x + i];
					count++;
				}
			}
			atomicAdd(&histogram[count-1], 1);
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
	size_t histBytes = WARP_SIZE * sizeof(int);
	float *h_vR;
	h_vR = (float *)malloc(nBytes);
	float *h_input;
	h_input = (float *)malloc(nBytes);
	int *h_histogram;
	h_histogram = (int *)malloc(histBytes);

	printf("[CUDA - Random Forest]: Start Reading Dataset\n");
	initData(h_input, nElem);
	printf("[CUDA - Random Forest]: Finished Reading Dataset\n");
	memset(h_vR, 0, nBytes);
	memset(h_histogram, 0, histBytes);

	// malloc device global memory
	float *d_vR;
	CHECK(cudaMalloc((float **)&d_vR, nBytes));
	float *d_input;
	CHECK(cudaMalloc((float **)&d_input, nBytes));
	int *d_histogram;
	CHECK(cudaMalloc((int **)&d_histogram, histBytes));

	// transfer data from host to device
	CHECK(cudaMemcpy(d_input, h_input, nBytes, cudaMemcpyHostToDevice));
	CHECK(cudaMemcpy(d_histogram, h_histogram, histBytes, cudaMemcpyHostToDevice));

	// invoke kernel at host side
	int iLen = TH_PER_BLOCK;
	dim3 block(iLen);
	dim3 grid((nElem + block.x - 1) / block.x);
	cudaEvent_t start, stop;
	CHECK(cudaEventCreate(&start));
	CHECK(cudaEventCreate(&stop));

	// record start event
	CHECK(cudaEventRecord(start, 0));

	RF_kernel<<<grid, block>>>(d_input, nElem, 0, 0, 0, 0, d_vR, d_histogram);

	CHECK(cudaEventRecord(stop, 0));
	CHECK(cudaEventSynchronize(stop));
	cudaDeviceSynchronize();

	// calculate elapsed time
	CHECK(cudaEventElapsedTime(&elapsed_time, start, stop));
	printf("[CUDA - Random Forest]: %s - execution time = %.6fms\n", EXP_NAME, elapsed_time);
	registerTime(elapsed_time);

	// copy kernel result back to host side
	CHECK(cudaMemcpy(h_vR, d_vR, nBytes, cudaMemcpyDeviceToHost));
	CHECK(cudaMemcpy(h_histogram, d_histogram, histBytes, cudaMemcpyDeviceToHost));
	CHECK(cudaGetLastError());

	for (int i = 0; i < WARP_SIZE; i++)
	{
		printf("%d ", h_histogram[i]);
	}

	printf("\n\n");
	// Verify the answers
	char flag = 1;
	for (int i = 0; i < nElem; i++)
	{
		if (i < 32)
		{
			printf("%.3f ", h_vR[i]);
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

	// free device memory
	cudaFree(d_input);
	cudaFree(d_vR);
	cudaFree(d_histogram);

	// free host memory
	free(h_input);
	free(h_vR);
	free(h_histogram);
	return (0);
}

void initData(float *ip, int size)
{
	for (int i = 0; i < size; i++)
	{

#if defined(_BEST)
		ip[i] = (float)(0);
#else
		if (WARP_SIZE < _MOD)
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
