#include <sys/time.h>
#include <cuda_runtime.h>
#include <stdio.h>
#include <stdlib.h>
#include <stdbool.h>
#include <time.h>

#define _WORST
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

#define _MOD 64
#define _2TREE
#define EXP_NAME "_RF_63IF_2TREE_1INPUT__WORST_100000000"

// RF_with_if

__global__ void RF_kernel(float *input, const int n, const int offset0, const int offset1, float *vR)
{
	int i = blockIdx.x * blockDim.x + threadIdx.x;
	if (i < n)
	{
if(input[i]>(31+offset0))
{
	if(input[i]>(47+offset0))
{
	if(input[i]>(55+offset0))
{
	if(input[i]>(59+offset0))
{
	if(input[i]>(61+offset0))
{
	if(input[i]==(63+offset0))
{
	vR[i] = 63;
}
else
{
	vR[i] = 62;
}

}
else
{
	if(input[i]==(61+offset0))
{
	vR[i] = 61;
}
else
{
	vR[i] = 60;
}

}

}
else
{
	if(input[i]>(57+offset0))
{
	if(input[i]==(59+offset0))
{
	vR[i] = 59;
}
else
{
	vR[i] = 58;
}

}
else
{
	if(input[i]==(57+offset0))
{
	vR[i] = 57;
}
else
{
	vR[i] = 56;
}

}

}

}
else
{
	if(input[i]>(51+offset0))
{
	if(input[i]>(53+offset0))
{
	if(input[i]==(55+offset0))
{
	vR[i] = 55;
}
else
{
	vR[i] = 54;
}

}
else
{
	if(input[i]==(53+offset0))
{
	vR[i] = 53;
}
else
{
	vR[i] = 52;
}

}

}
else
{
	if(input[i]>(49+offset0))
{
	if(input[i]==(51+offset0))
{
	vR[i] = 51;
}
else
{
	vR[i] = 50;
}

}
else
{
	if(input[i]==(49+offset0))
{
	vR[i] = 49;
}
else
{
	vR[i] = 48;
}

}

}

}

}
else
{
	if(input[i]>(39+offset0))
{
	if(input[i]>(43+offset0))
{
	if(input[i]>(45+offset0))
{
	if(input[i]==(47+offset0))
{
	vR[i] = 47;
}
else
{
	vR[i] = 46;
}

}
else
{
	if(input[i]==(45+offset0))
{
	vR[i] = 45;
}
else
{
	vR[i] = 44;
}

}

}
else
{
	if(input[i]>(41+offset0))
{
	if(input[i]==(43+offset0))
{
	vR[i] = 43;
}
else
{
	vR[i] = 42;
}

}
else
{
	if(input[i]==(41+offset0))
{
	vR[i] = 41;
}
else
{
	vR[i] = 40;
}

}

}

}
else
{
	if(input[i]>(35+offset0))
{
	if(input[i]>(37+offset0))
{
	if(input[i]==(39+offset0))
{
	vR[i] = 39;
}
else
{
	vR[i] = 38;
}

}
else
{
	if(input[i]==(37+offset0))
{
	vR[i] = 37;
}
else
{
	vR[i] = 36;
}

}

}
else
{
	if(input[i]>(33+offset0))
{
	if(input[i]==(35+offset0))
{
	vR[i] = 35;
}
else
{
	vR[i] = 34;
}

}
else
{
	if(input[i]==(33+offset0))
{
	vR[i] = 33;
}
else
{
	vR[i] = 32;
}

}

}

}

}

}
else
{
	if(input[i]>(15+offset0))
{
	if(input[i]>(23+offset0))
{
	if(input[i]>(27+offset0))
{
	if(input[i]>(29+offset0))
{
	if(input[i]==(31+offset0))
{
	vR[i] = 31;
}
else
{
	vR[i] = 30;
}

}
else
{
	if(input[i]==(29+offset0))
{
	vR[i] = 29;
}
else
{
	vR[i] = 28;
}

}

}
else
{
	if(input[i]>(25+offset0))
{
	if(input[i]==(27+offset0))
{
	vR[i] = 27;
}
else
{
	vR[i] = 26;
}

}
else
{
	if(input[i]==(25+offset0))
{
	vR[i] = 25;
}
else
{
	vR[i] = 24;
}

}

}

}
else
{
	if(input[i]>(19+offset0))
{
	if(input[i]>(21+offset0))
{
	if(input[i]==(23+offset0))
{
	vR[i] = 23;
}
else
{
	vR[i] = 22;
}

}
else
{
	if(input[i]==(21+offset0))
{
	vR[i] = 21;
}
else
{
	vR[i] = 20;
}

}

}
else
{
	if(input[i]>(17+offset0))
{
	if(input[i]==(19+offset0))
{
	vR[i] = 19;
}
else
{
	vR[i] = 18;
}

}
else
{
	if(input[i]==(17+offset0))
{
	vR[i] = 17;
}
else
{
	vR[i] = 16;
}

}

}

}

}
else
{
	if(input[i]>(7+offset0))
{
	if(input[i]>(11+offset0))
{
	if(input[i]>(13+offset0))
{
	if(input[i]==(15+offset0))
{
	vR[i] = 15;
}
else
{
	vR[i] = 14;
}

}
else
{
	if(input[i]==(13+offset0))
{
	vR[i] = 13;
}
else
{
	vR[i] = 12;
}

}

}
else
{
	if(input[i]>(9+offset0))
{
	if(input[i]==(11+offset0))
{
	vR[i] = 11;
}
else
{
	vR[i] = 10;
}

}
else
{
	if(input[i]==(9+offset0))
{
	vR[i] = 9;
}
else
{
	vR[i] = 8;
}

}

}

}
else
{
	if(input[i]>(3+offset0))
{
	if(input[i]>(5+offset0))
{
	if(input[i]==(7+offset0))
{
	vR[i] = 7;
}
else
{
	vR[i] = 6;
}

}
else
{
	if(input[i]==(5+offset0))
{
	vR[i] = 5;
}
else
{
	vR[i] = 4;
}

}

}
else
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

}

}

}

}


if(input[i]>(31+offset1))
{
	if(input[i]>(47+offset1))
{
	if(input[i]>(55+offset1))
{
	if(input[i]>(59+offset1))
{
	if(input[i]>(61+offset1))
{
	if(input[i]==(63+offset1))
{
	vR[i] = 63;
}
else
{
	vR[i] = 62;
}

}
else
{
	if(input[i]==(61+offset1))
{
	vR[i] = 61;
}
else
{
	vR[i] = 60;
}

}

}
else
{
	if(input[i]>(57+offset1))
{
	if(input[i]==(59+offset1))
{
	vR[i] = 59;
}
else
{
	vR[i] = 58;
}

}
else
{
	if(input[i]==(57+offset1))
{
	vR[i] = 57;
}
else
{
	vR[i] = 56;
}

}

}

}
else
{
	if(input[i]>(51+offset1))
{
	if(input[i]>(53+offset1))
{
	if(input[i]==(55+offset1))
{
	vR[i] = 55;
}
else
{
	vR[i] = 54;
}

}
else
{
	if(input[i]==(53+offset1))
{
	vR[i] = 53;
}
else
{
	vR[i] = 52;
}

}

}
else
{
	if(input[i]>(49+offset1))
{
	if(input[i]==(51+offset1))
{
	vR[i] = 51;
}
else
{
	vR[i] = 50;
}

}
else
{
	if(input[i]==(49+offset1))
{
	vR[i] = 49;
}
else
{
	vR[i] = 48;
}

}

}

}

}
else
{
	if(input[i]>(39+offset1))
{
	if(input[i]>(43+offset1))
{
	if(input[i]>(45+offset1))
{
	if(input[i]==(47+offset1))
{
	vR[i] = 47;
}
else
{
	vR[i] = 46;
}

}
else
{
	if(input[i]==(45+offset1))
{
	vR[i] = 45;
}
else
{
	vR[i] = 44;
}

}

}
else
{
	if(input[i]>(41+offset1))
{
	if(input[i]==(43+offset1))
{
	vR[i] = 43;
}
else
{
	vR[i] = 42;
}

}
else
{
	if(input[i]==(41+offset1))
{
	vR[i] = 41;
}
else
{
	vR[i] = 40;
}

}

}

}
else
{
	if(input[i]>(35+offset1))
{
	if(input[i]>(37+offset1))
{
	if(input[i]==(39+offset1))
{
	vR[i] = 39;
}
else
{
	vR[i] = 38;
}

}
else
{
	if(input[i]==(37+offset1))
{
	vR[i] = 37;
}
else
{
	vR[i] = 36;
}

}

}
else
{
	if(input[i]>(33+offset1))
{
	if(input[i]==(35+offset1))
{
	vR[i] = 35;
}
else
{
	vR[i] = 34;
}

}
else
{
	if(input[i]==(33+offset1))
{
	vR[i] = 33;
}
else
{
	vR[i] = 32;
}

}

}

}

}

}
else
{
	if(input[i]>(15+offset1))
{
	if(input[i]>(23+offset1))
{
	if(input[i]>(27+offset1))
{
	if(input[i]>(29+offset1))
{
	if(input[i]==(31+offset1))
{
	vR[i] = 31;
}
else
{
	vR[i] = 30;
}

}
else
{
	if(input[i]==(29+offset1))
{
	vR[i] = 29;
}
else
{
	vR[i] = 28;
}

}

}
else
{
	if(input[i]>(25+offset1))
{
	if(input[i]==(27+offset1))
{
	vR[i] = 27;
}
else
{
	vR[i] = 26;
}

}
else
{
	if(input[i]==(25+offset1))
{
	vR[i] = 25;
}
else
{
	vR[i] = 24;
}

}

}

}
else
{
	if(input[i]>(19+offset1))
{
	if(input[i]>(21+offset1))
{
	if(input[i]==(23+offset1))
{
	vR[i] = 23;
}
else
{
	vR[i] = 22;
}

}
else
{
	if(input[i]==(21+offset1))
{
	vR[i] = 21;
}
else
{
	vR[i] = 20;
}

}

}
else
{
	if(input[i]>(17+offset1))
{
	if(input[i]==(19+offset1))
{
	vR[i] = 19;
}
else
{
	vR[i] = 18;
}

}
else
{
	if(input[i]==(17+offset1))
{
	vR[i] = 17;
}
else
{
	vR[i] = 16;
}

}

}

}

}
else
{
	if(input[i]>(7+offset1))
{
	if(input[i]>(11+offset1))
{
	if(input[i]>(13+offset1))
{
	if(input[i]==(15+offset1))
{
	vR[i] = 15;
}
else
{
	vR[i] = 14;
}

}
else
{
	if(input[i]==(13+offset1))
{
	vR[i] = 13;
}
else
{
	vR[i] = 12;
}

}

}
else
{
	if(input[i]>(9+offset1))
{
	if(input[i]==(11+offset1))
{
	vR[i] = 11;
}
else
{
	vR[i] = 10;
}

}
else
{
	if(input[i]==(9+offset1))
{
	vR[i] = 9;
}
else
{
	vR[i] = 8;
}

}

}

}
else
{
	if(input[i]>(3+offset1))
{
	if(input[i]>(5+offset1))
{
	if(input[i]==(7+offset1))
{
	vR[i] = 7;
}
else
{
	vR[i] = 6;
}

}
else
{
	if(input[i]==(5+offset1))
{
	vR[i] = 5;
}
else
{
	vR[i] = 4;
}

}

}
else
{
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

}

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

	// record start event
	CHECK(cudaEventRecord(start, 0));
#if defined(_2TREE)
	RF_kernel<<<grid, block>>>(d_input, nElem, 0, 0, d_vR);
#elif defined(_3TREE)
	RF_kernel<<<grid, block>>>(d_input, nElem, 0, 0, 0, d_vR);
#elif defined(_4TREE)
	RF_kernel<<<grid, block>>>(d_input, nElem, 0, 0, 0, 0, d_vR);
#else
	RF_kernel<<<grid, block>>>(d_input, nElem, 0, d_vR);
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

	//Verify the answers
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
