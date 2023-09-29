#include <sys/time.h>
#include <cuda_runtime.h>
#include <stdio.h>
#include <stdlib.h>
#include <stdbool.h>
#include <time.h>

#define TAM_TABLE 15
#define TAM_TH 7

#define N_ELEM 50000000
// #define N_ELEM 100000000

#define INDIRECT

// #define _RF_TABLE_1TREE
// #define _RF_TABLE_2TREE_GLOBAL
// #define _RF_TABLE_3TREE_GLOBAL
// #define _RF_TABLE_4TREE_GLOBAL
// #define _RF_TABLE_1TREE_RESTRICT
// #define _RF_TABLE_2TREE_RESTRICT
// #define _RF_TABLE_3TREE_RESTRICT
// #define _RF_TABLE_4TREE_RESTRICT
// #define _RF_TABLE_1TREE_CONST
// #define _RF_TABLE_2TREE_CONST
// #define _RF_TABLE_3TREE_CONST
// #define _RF_TABLE_4TREE_CONST
#define _RF_TABLE_1TREE_SHARED
// #define _RF_TABLE_2TREE_SHARED
// #define _RF_TABLE_3TREE_SHARED
// #define _RF_TABLE_4TREE_SHARED

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

#if defined(_RF_TABLE_1TREE_CONST) || defined(_RF_TABLE_2TREE_CONST) || \
	defined(_RF_TABLE_3TREE_CONST) || defined(_RF_TABLE_4TREE_CONST)
__constant__ int table[TAM_TABLE];
int tableData[] = {(1 << 2) | (2 << 10), (3 << 2) | (4 << 10), (5 << 2) | (6 << 10),
				   (7 << 2) | (8 << 10), (9 << 2) | (10 << 10), (11 << 2) | (12 << 10),
				   (13 << 2) | (14 << 10), 7, 6, 5, 4, 3, 2, 1, 0};
__constant__ float TH[TAM_TH];
float THData[] = {3, 5, 1, 6, 4, 2, 0};
#endif

#if defined(_RF_TABLE_1TREE_GLOBAL) || defined(_RF_TABLE_1TREE_RESTRICT) || defined(_RF_TABLE_1TREE_CONST) || defined(_RF_TABLE_1TREE_SHARED)
#define _MOD 4
#define _1TREE

#if defined(_RF_TABLE_1TREE_GLOBAL)
#define EXP_NAME "_RF_TABLE_1TREE_GLOBAL"
__global__ void
RF_kernel(float *input, const int n, const float *TH, const int *table, const int offset0, float *vR)
#elif defined(_RF_TABLE_1TREE_RESTRICT)
#define EXP_NAME "_RF_TABLE_1TREE_RESTRICT"
__global__ void
RF_kernel(float *input, const int n, float *__restrict__ TH, int *__restrict__ table, const int offset0, float *vR)
#elif defined(_RF_TABLE_1TREE_CONST)
#define EXP_NAME "_RF_TABLE_1TREE_CONST"
__global__ void RF_kernel(float *input, const int n, const int offset0, float *vR)
#elif defined(_RF_TABLE_1TREE_SHARED)
#define EXP_NAME "_RF_TABLE_1TREE_SHARED"
__global__ void RF_kernel(float *input, const int n, float *t, int *tab, const int offset0, float *vR)
#endif
{
	int i = blockIdx.x * blockDim.x + threadIdx.x;
	int next = 0, left, right;
	float th;

#ifdef _RF_TABLE_1TREE_SHARED
	__shared__ float TH[TAM_TH];
	__shared__ int table[TAM_TABLE];

	if (threadIdx.x < TAM_TH)
	{
		TH[threadIdx.x] = t[threadIdx.x];
	}
	if (threadIdx.x < TAM_TABLE)
	{
		table[threadIdx.x] = tab[threadIdx.x];
	}
	__syncthreads();
#endif

#ifdef INDIRECT
	int idx;
	int v[4];

	v[1] = 12;
	v[2] = 128;
	v[3] = 1;
#else
	int v;
#endif
	if (i < n)
	{

#ifdef INDIRECT
		v[0] = input[i];
#else
		v = input[i];
#endif

#ifdef INDIRECT
		idx = table[next] & 0x3;
#endif
		left = (table[next] >> 2) & 0xff;
		right = (table[next] >> 10) & 0xff;
		th = TH[next];
#ifdef INDIRECT
		next = (v[idx] > (th + offset0)) ? left : right;
#else
		next = (v > (th + offset0)) ? left : right;
#endif

		// if (i == 2)
		//	printf("idx=%d, left=%d , right=%d , th=%f , next=%d \n", idx, left, right, th, next);

#ifdef INDIRECT
		idx = table[next] & 0x3;
#endif
		left = (table[next] >> 2) & 0xff;
		right = (table[next] >> 10) & 0xff;
		th = TH[next];
#ifdef INDIRECT
		next = (v[idx] > (th + offset0)) ? left : right;
#else
		next = (v > (th + offset0)) ? left : right;
#endif

		// if (i == 2)
		//	printf("idx=%d, left=%d , right=%d , th=%f , next=%d \n", idx, left, right, th, next);

#ifdef INDIRECT
		idx = table[next] & 0x3;
#endif
		left = (table[next] >> 2) & 0xff;
		right = (table[next] >> 10) & 0xff;
		th = TH[next];
#ifdef INDIRECT
		next = (v[idx] > (th + offset0)) ? left : right;
#else
		next = (v > (th + offset0)) ? left : right;
#endif

		// if (i == 2)
		//	printf("idx=%d, left=%d , right=%d , th=%f , next=%d \n", idx, left, right, th, next);

		vR[i] = table[next] + offset0;
	}
}
#endif

#if defined(_RF_TABLE_2TREE_GLOBAL) || defined(_RF_TABLE_2TREE_RESTRICT) || defined(_RF_TABLE_2TREE_CONST) || defined(_RF_TABLE_2TREE_SHARED)
#define _MOD 4
#define _2TREE

#if defined(_RF_TABLE_2TREE_GLOBAL)
#define EXP_NAME "_RF_TABLE_2TREE_GLOBAL"
__global__ void RF_kernel(float *input, const int n, const float *TH, const int *table, const int offset0, const int offset1, float *vR)
#elif defined(_RF_TABLE_2TREE_RESTRICT)
#define EXP_NAME "_RF_TABLE_2TREE_RESTRICT"
__global__ void RF_kernel(float *input, const int n, float *__restrict__ TH, int *__restrict__ table, const int offset0, const int offset1, float *vR)
#elif defined(_RF_TABLE_2TREE_CONST)
#define EXP_NAME "_RF_TABLE_2TREE_CONST"
__global__ void RF_kernel(float *input, const int n, const int offset0, const int offset1, float *vR)
#elif defined(_RF_TABLE_2TREE_SHARED)
#define EXP_NAME "_RF_TABLE_2TREE_SHARED"
__global__ void RF_kernel(float *input, const int n, const float *t, const int *tab, const int offset0, const int offset1, float *vR)
#endif
{
	int i = blockIdx.x * blockDim.x + threadIdx.x;
	int next = 0, left, right;
	float th;
#ifdef _RF_TABLE_2TREE_SHARED
	__shared__ float TH[TAM_TH];
	__shared__ int table[TAM_TABLE];

	if (threadIdx.x < TAM_TH)
	{
		TH[threadIdx.x] = t[threadIdx.x];
	}
	if (threadIdx.x < TAM_TABLE)
	{
		table[threadIdx.x] = tab[threadIdx.x];
	}
	__syncthreads();
#endif

#ifdef INDIRECT
	int idx;
	int v[4];

	v[1] = 12;
	v[2] = 128;
	v[3] = 1;
#else
	int v;
#endif
	if (i < n)
	{

#ifdef INDIRECT
		v[0] = input[i];
#else
		v = input[i];
#endif

#ifdef INDIRECT
		idx = table[next] & 0x3;
#endif
		left = (table[next] >> 2) & 0xff;
		right = (table[next] >> 10) & 0xff;
		th = TH[next];
#ifdef INDIRECT
		next = (v[idx] > (th + offset0)) ? left : right;
#else
		next = (v > (th + offset0)) ? left : right;
#endif

		// if (i == 2)
		//	printf("idx=%d, left=%d , right=%d , th=%f , next=%d \n", idx, left, right, th, next);

#ifdef INDIRECT
		idx = table[next] & 0x3;
#endif
		left = (table[next] >> 2) & 0xff;
		right = (table[next] >> 10) & 0xff;
		th = TH[next];
#ifdef INDIRECT
		next = (v[idx] > (th + offset0)) ? left : right;
#else
		next = (v > (th + offset0)) ? left : right;
#endif

		// if (i == 2)
		//	printf("idx=%d, left=%d , right=%d , th=%f , next=%d \n", idx, left, right, th, next);

#ifdef INDIRECT
		idx = table[next] & 0x3;
#endif
		left = (table[next] >> 2) & 0xff;
		right = (table[next] >> 10) & 0xff;
		th = TH[next];
#ifdef INDIRECT
		next = (v[idx] > (th + offset0)) ? left : right;
#else
		next = (v > (th + offset0)) ? left : right;
#endif

		// if (i == 2)
		//	printf("idx=%d, left=%d , right=%d , th=%f , next=%d \n", idx, left, right, th, next);

		vR[i] = table[next] + offset0;

		// 2nd tree
#ifdef INDIRECT
		v[0] = input[i];
#else
		v = input[i];
#endif
		next = offset1;
#ifdef INDIRECT
		idx = table[next] & 0x3;
#endif
		left = (table[next] >> 2) & 0xff;
		right = (table[next] >> 10) & 0xff;
		th = TH[next];
#ifdef INDIRECT
		next = (v[idx] > (th + offset1)) ? left : right;
#else
		next = (v > (th + offset1)) ? left : right;
#endif

#ifdef INDIRECT
		idx = table[next] & 0x3;
#endif
		left = (table[next] >> 2) & 0xff;
		right = (table[next] >> 10) & 0xff;
		th = TH[next];
#ifdef INDIRECT
		next = (v[idx] > (th + offset1)) ? left : right;
#else
		next = (v > (th + offset1)) ? left : right;
#endif

#ifdef INDIRECT
		idx = table[next] & 0x3;
#endif
		left = (table[next] >> 2) & 0xff;
		right = (table[next] >> 10) & 0xff;
		th = TH[next];
#ifdef INDIRECT
		next = (v[idx] > (th + offset1)) ? left : right;
#else
		next = (v > (th + offset1)) ? left : right;
#endif

		vR[i] = table[next] + offset1;
	}
}
#endif

#if defined(_RF_TABLE_3TREE_GLOBAL) || defined(_RF_TABLE_3TREE_RESTRICT) || defined(_RF_TABLE_3TREE_CONST) || defined(_RF_TABLE_3TREE_SHARED)
#define _MOD 4
#define _3TREE

#if defined(_RF_TABLE_3TREE_GLOBAL)
#define EXP_NAME "_RF_TABLE_3TREE_GLOBAL"
__global__ void RF_kernel(float *input, const int n, const float *TH, const int *table, const int offset0, const int offset1, const int offset2, float *vR)
#elif defined(_RF_TABLE_3TREE_RESTRICT)
#define EXP_NAME "_RF_TABLE_3TREE_RESTRICT"
__global__ void RF_kernel(float *input, const int n, float *__restrict__ TH, int *__restrict__ table, const int offset0, const int offset1, const int offset2, float *vR)
#elif defined(_RF_TABLE_3TREE_CONST)
#define EXP_NAME "_RF_TABLE_3TREE_RESTRICT"
__global__ void RF_kernel(float *input, const int n, const int offset0, const int offset1, const int offset2, float *vR)
#elif defined(_RF_TABLE_3TREE_SHARED)
#define EXP_NAME "_RF_TABLE_3TREE_SHARED"
__global__ void RF_kernel(float *input, const int n, const float *t, const int *tab, const int offset0, const int offset1, const int offset2, float *vR)
#endif
{
	int i = blockIdx.x * blockDim.x + threadIdx.x;
	int next = 0, left, right;
	float th;
#ifdef _RF_TABLE_3TREE_SHARED
	__shared__ float TH[TAM_TH];
	__shared__ int table[TAM_TABLE];

	if (threadIdx.x < TAM_TH)
	{
		TH[threadIdx.x] = t[threadIdx.x];
	}
	if (threadIdx.x < TAM_TABLE)
	{
		table[threadIdx.x] = tab[threadIdx.x];
	}
	__syncthreads();
#endif

#ifdef INDIRECT
	int idx;
	int v[4];

	v[1] = 12;
	v[2] = 128;
	v[3] = 1;
#else
	int v;
#endif
	if (i < n)
	{

#ifdef INDIRECT
		v[0] = input[i];
#else
		v = input[i];
#endif

#ifdef INDIRECT
		idx = table[next] & 0x3;
#endif
		left = (table[next] >> 2) & 0xff;
		right = (table[next] >> 10) & 0xff;
		th = TH[next];
#ifdef INDIRECT
		next = (v[idx] > (th + offset0)) ? left : right;
#else
		next = (v > (th + offset0)) ? left : right;
#endif

		// if (i == 2)
		//	printf("idx=%d, left=%d , right=%d , th=%f , next=%d \n", idx, left, right, th, next);

#ifdef INDIRECT
		idx = table[next] & 0x3;
#endif
		left = (table[next] >> 2) & 0xff;
		right = (table[next] >> 10) & 0xff;
		th = TH[next];
#ifdef INDIRECT
		next = (v[idx] > (th + offset0)) ? left : right;
#else
		next = (v > (th + offset0)) ? left : right;
#endif

		// if (i == 2)
		//	printf("idx=%d, left=%d , right=%d , th=%f , next=%d \n", idx, left, right, th, next);

#ifdef INDIRECT
		idx = table[next] & 0x3;
#endif
		left = (table[next] >> 2) & 0xff;
		right = (table[next] >> 10) & 0xff;
		th = TH[next];
#ifdef INDIRECT
		next = (v[idx] > (th + offset0)) ? left : right;
#else
		next = (v > (th + offset0)) ? left : right;
#endif

		// if (i == 2)
		//	printf("idx=%d, left=%d , right=%d , th=%f , next=%d \n", idx, left, right, th, next);

		vR[i] = table[next] + offset0;

// 2nd tree
#ifdef INDIRECT
		v[0] = input[i];
#else
		v = input[i];
#endif
		next = offset1;

#ifdef INDIRECT
		idx = table[next] & 0x3;
#endif
		left = (table[next] >> 2) & 0xff;
		right = (table[next] >> 10) & 0xff;
		th = TH[next];
#ifdef INDIRECT
		next = (v[idx] > (th + offset1)) ? left : right;
#else
		next = (v > (th + offset1)) ? left : right;
#endif

#ifdef INDIRECT
		idx = table[next] & 0x3;
#endif
		left = (table[next] >> 2) & 0xff;
		right = (table[next] >> 10) & 0xff;
		th = TH[next];
#ifdef INDIRECT
		next = (v[idx] > (th + offset1)) ? left : right;
#else
		next = (v > (th + offset1)) ? left : right;
#endif

#ifdef INDIRECT
		idx = table[next] & 0x3;
#endif
		left = (table[next] >> 2) & 0xff;
		right = (table[next] >> 10) & 0xff;
		th = TH[next];
#ifdef INDIRECT
		next = (v[idx] > (th + offset1)) ? left : right;
#else
		next = (v > (th + offset1)) ? left : right;
#endif

		vR[i] = table[next] + offset1;

// 3nd tree
#ifdef INDIRECT
		v[0] = input[i];
#else
		v = input[i];
#endif
		next = offset2;

#ifdef INDIRECT
		idx = table[next] & 0x3;
#endif
		left = (table[next] >> 2) & 0xff;
		right = (table[next] >> 10) & 0xff;
		th = TH[next];
#ifdef INDIRECT
		next = (v[idx] > (th + offset2)) ? left : right;
#else
		next = (v > (th + offset2)) ? left : right;
#endif

#ifdef INDIRECT
		idx = table[next] & 0x3;
#endif
		left = (table[next] >> 2) & 0xff;
		right = (table[next] >> 10) & 0xff;
		th = TH[next];
#ifdef INDIRECT
		next = (v[idx] > (th + offset2)) ? left : right;
#else
		next = (v > (th + offset2)) ? left : right;
#endif

#ifdef INDIRECT
		idx = table[next] & 0x3;
#endif
		left = (table[next] >> 2) & 0xff;
		right = (table[next] >> 10) & 0xff;
		th = TH[next];
#ifdef INDIRECT
		next = (v[idx] > (th + offset2)) ? left : right;
#else
		next = (v > (th + offset2)) ? left : right;
#endif

		vR[i] = table[next] + offset2;
	}
}
#endif

#if defined(_RF_TABLE_4TREE_GLOBAL) || defined(_RF_TABLE_4TREE_RESTRICT) || defined(_RF_TABLE_4TREE_CONST) || defined(_RF_TABLE_4TREE_SHARED)
#define _MOD 4
#define _4TREE

#if defined(_RF_TABLE_4TREE_GLOBAL)
#define EXP_NAME "_RF_TABLE_4TREE_GLOBAL"
__global__ void RF_kernel(float *input, const int n, const float *TH, const int *table, const int offset0, const int offset1, const int offset2, const int offset3, float *vR)
#elif defined(_RF_TABLE_4TREE_RESTRICT)
#define EXP_NAME "_RF_TABLE_4TREE_RESTRICT"
__global__ void RF_kernel(float *input, const int n, float *__restrict__ TH, int *__restrict__ table, const int offset0, const int offset1, const int offset2, const int offset3, float *vR)
#elif defined(_RF_TABLE_4TREE_CONST)
#define EXP_NAME "_RF_TABLE_4TREE_RESTRICT"
__global__ void RF_kernel(float *input, const int n, const int offset0, const int offset1, const int offset2, const int offset3, float *vR)
#elif defined(_RF_TABLE_4TREE_SHARED)
#define EXP_NAME "_RF_TABLE_4TREE_SHARED"
__global__ void RF_kernel(float *input, const int n, const float *t, const int *tab, const int offset0, const int offset1, const int offset2, const int offset3, float *vR)
#endif
{
	int i = blockIdx.x * blockDim.x + threadIdx.x;
	int next = 0, left, right;
	float th;
#ifdef _RF_TABLE_4TREE_SHARED
	__shared__ float TH[TAM_TH];
	__shared__ int table[TAM_TABLE];

	if (threadIdx.x < TAM_TH)
	{
		TH[threadIdx.x] = t[threadIdx.x];
	}
	if (threadIdx.x < TAM_TABLE)
	{
		table[threadIdx.x] = tab[threadIdx.x];
	}
	__syncthreads();
#endif

#ifdef INDIRECT
	int idx;
	int v[4];

	v[1] = 12;
	v[2] = 128;
	v[3] = 1;
#else
	int v;
#endif
	if (i < n)
	{

#ifdef INDIRECT
		v[0] = input[i];
#else
		v = input[i];
#endif

#ifdef INDIRECT
		idx = table[next] & 0x3;
#endif
		left = (table[next] >> 2) & 0xff;
		right = (table[next] >> 10) & 0xff;
		th = TH[next];
#ifdef INDIRECT
		next = (v[idx] > (th + offset0)) ? left : right;
#else
		next = (v > (th + offset0)) ? left : right;
#endif

		// if (i == 2)
		//	printf("idx=%d, left=%d , right=%d , th=%f , next=%d \n", idx, left, right, th, next);

#ifdef INDIRECT
		idx = table[next] & 0x3;
#endif
		left = (table[next] >> 2) & 0xff;
		right = (table[next] >> 10) & 0xff;
		th = TH[next];
#ifdef INDIRECT
		next = (v[idx] > (th + offset0)) ? left : right;
#else
		next = (v > (th + offset0)) ? left : right;
#endif

		// if (i == 2)
		//	printf("idx=%d, left=%d , right=%d , th=%f , next=%d \n", idx, left, right, th, next);

#ifdef INDIRECT
		idx = table[next] & 0x3;
#endif
		left = (table[next] >> 2) & 0xff;
		right = (table[next] >> 10) & 0xff;
		th = TH[next];
#ifdef INDIRECT
		next = (v[idx] > (th + offset0)) ? left : right;
#else
		next = (v > (th + offset0)) ? left : right;
#endif

		// if (i == 2)
		//	printf("idx=%d, left=%d , right=%d , th=%f , next=%d \n", idx, left, right, th, next);

		vR[i] = table[next] + offset0;

// 2nd tree
#ifdef INDIRECT
		v[0] = input[i];
#else
		v = input[i];
#endif
		next = offset1;
#ifdef INDIRECT
		idx = table[next] & 0x3;
#endif
		left = (table[next] >> 2) & 0xff;
		right = (table[next] >> 10) & 0xff;
		th = TH[next];
#ifdef INDIRECT
		next = (v[idx] > (th + offset1)) ? left : right;
#else
		next = (v > (th + offset1)) ? left : right;
#endif

#ifdef INDIRECT
		idx = table[next] & 0x3;
#endif
		left = (table[next] >> 2) & 0xff;
		right = (table[next] >> 10) & 0xff;
		th = TH[next];
#ifdef INDIRECT
		next = (v[idx] > (th + offset1)) ? left : right;
#else
		next = (v > (th + offset1)) ? left : right;
#endif

#ifdef INDIRECT
		idx = table[next] & 0x3;
#endif
		left = (table[next] >> 2) & 0xff;
		right = (table[next] >> 10) & 0xff;
		th = TH[next];
#ifdef INDIRECT
		next = (v[idx] > (th + offset1)) ? left : right;
#else
		next = (v > (th + offset1)) ? left : right;
#endif

		vR[i] = table[next] + offset1;

// 3nd tree
#ifdef INDIRECT
		v[0] = input[i];
#else
		v = input[i];
#endif
		next = offset2;
#ifdef INDIRECT
		idx = table[next] & 0x3;
#endif
		left = (table[next] >> 2) & 0xff;
		right = (table[next] >> 10) & 0xff;
		th = TH[next];
#ifdef INDIRECT
		next = (v[idx] > (th + offset2)) ? left : right;
#else
		next = (v > (th + offset2)) ? left : right;
#endif

#ifdef INDIRECT
		idx = table[next] & 0x3;
#endif
		left = (table[next] >> 2) & 0xff;
		right = (table[next] >> 10) & 0xff;
		th = TH[next];
#ifdef INDIRECT
		next = (v[idx] > (th + offset2)) ? left : right;
#else
		next = (v > (th + offset2)) ? left : right;
#endif

#ifdef INDIRECT
		idx = table[next] & 0x3;
#endif
		left = (table[next] >> 2) & 0xff;
		right = (table[next] >> 10) & 0xff;
		th = TH[next];
#ifdef INDIRECT
		next = (v[idx] > (th + offset2)) ? left : right;
#else
		next = (v > (th + offset2)) ? left : right;
#endif

		vR[i] = table[next] + offset2;

// 4nd tree
#ifdef INDIRECT
		v[0] = input[i];
#else
		v = input[i];
#endif
		next = offset3;
#ifdef INDIRECT
		idx = table[next] & 0x3;
#endif
		left = (table[next] >> 2) & 0xff;
		right = (table[next] >> 10) & 0xff;
		th = TH[next];
#ifdef INDIRECT
		next = (v[idx] > (th + offset3)) ? left : right;
#else
		next = (v > (th + offset3)) ? left : right;
#endif

#ifdef INDIRECT
		idx = table[next] & 0x3;
#endif
		left = (table[next] >> 2) & 0xff;
		right = (table[next] >> 10) & 0xff;
		th = TH[next];
#ifdef INDIRECT
		next = (v[idx] > (th + offset3)) ? left : right;
#else
		next = (v > (th + offset3)) ? left : right;
#endif

#ifdef INDIRECT
		idx = table[next] & 0x3;
#endif
		left = (table[next] >> 2) & 0xff;
		right = (table[next] >> 10) & 0xff;
		th = TH[next];
#ifdef INDIRECT
		next = (v[idx] > (th + offset3)) ? left : right;
#else
		next = (v > (th + offset3)) ? left : right;
#endif

		vR[i] = table[next] + offset3;
	}
}
#endif

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
#ifdef INDIRECT
	printf("[CUDA - Random Forest]: INDIRECT\n");
#endif
	printf("[CUDA - Random Forest]: Using Device %d: %s\n", dev, deviceProp.name);
	CHECK(cudaSetDevice(dev));

	// set up data size of vectors
	int nElem = N_ELEM;
#if !defined(_RF_TABLE_1TREE_CONST) && !defined(_RF_TABLE_2TREE_CONST) && \
	!defined(_RF_TABLE_3TREE_CONST) && !defined(_RF_TABLE_4TREE_CONST)
	int tamTable = TAM_TABLE;
	int tamTh = TAM_TH;
#endif
	printf("[CUDA - Random Forest]: Vector Size %d\n", nElem);

	// malloc host memory
	size_t nBytes = nElem * sizeof(float);
#if !defined(_RF_TABLE_1TREE_CONST) && !defined(_RF_TABLE_2TREE_CONST) && \
	!defined(_RF_TABLE_3TREE_CONST) && !defined(_RF_TABLE_4TREE_CONST)
	size_t tableBytes = tamTable * sizeof(int);
	size_t thBytes = tamTh * sizeof(float);
#endif
	float *h_vR;
	h_vR = (float *)malloc(nBytes);
	float *h_input;
	h_input = (float *)malloc(nBytes);
#if !defined(_RF_TABLE_1TREE_CONST) && !defined(_RF_TABLE_2TREE_CONST) && \
	!defined(_RF_TABLE_3TREE_CONST) && !defined(_RF_TABLE_4TREE_CONST)
	int *h_table;
	h_table = (int *)malloc(tableBytes);
	float *h_th;
	h_th = (float *)malloc(thBytes);

	/*
	linha 0: th = 3, left = 1<<10, right = 2<<2, var = 0
	linha 1: th = 5, left = 3, right = 4, var = 0
	linha 2: th = 1, left = 5, right = 6, var = 0
	linha 3: th = 6, left = 7, right = 8, var = 0
	linha 4: th = 4, left = 9, right = 10, var = 0
	linha 5: th = 2, left = 11, right = 12, var = 0
	linha 6: th = 0, left = 13, right = 14, var = 0
	linha 7: 7
	linha 8: 6
	linha 9: 5
	linha 10: 4
	linha 11: 3
	linha 12: 2
	linha 13: 1
	linha 14: 0
	*/
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

	h_th[0] = 3;
	h_th[1] = 5;
	h_th[2] = 1;
	h_th[3] = 6;
	h_th[4] = 4;
	h_th[5] = 2;
	h_th[6] = 0;
#endif
	printf("[CUDA - Random Forest]: Start Reading Dataset\n");
	initData(h_input, nElem);
	printf("[CUDA - Random Forest]: Finished Reading Dataset\n");
	memset(h_vR, 0, nBytes);

	// malloc device global memory
	float *d_vR;
	CHECK(cudaMalloc((float **)&d_vR, nBytes));
	float *d_input;
	CHECK(cudaMalloc((float **)&d_input, nBytes));
#if !defined(_RF_TABLE_1TREE_CONST) && !defined(_RF_TABLE_2TREE_CONST) && \
	!defined(_RF_TABLE_3TREE_CONST) && !defined(_RF_TABLE_4TREE_CONST)
	int *d_table;
	CHECK(cudaMalloc((int **)&d_table, tableBytes));
	float *d_th;
	CHECK(cudaMalloc((float **)&d_th, thBytes));
#endif

	// transfer data from host to device
	CHECK(cudaMemcpy(d_input, h_input, nBytes, cudaMemcpyHostToDevice));
#if !defined(_RF_TABLE_1TREE_CONST) && !defined(_RF_TABLE_2TREE_CONST) && \
	!defined(_RF_TABLE_3TREE_CONST) && !defined(_RF_TABLE_4TREE_CONST)
	CHECK(cudaMemcpy(d_table, h_table, tableBytes, cudaMemcpyHostToDevice));
	CHECK(cudaMemcpy(d_th, h_th, thBytes, cudaMemcpyHostToDevice));
#else
	CHECK(cudaMemcpyToSymbol(table, tableData, TAM_TABLE * sizeof(int)));
	CHECK(cudaMemcpyToSymbol(TH, THData, TAM_TH * sizeof(float)));
#endif
	// invoke kernel at host side
	int iLen = 512; // 1024
	dim3 block(iLen);
	dim3 grid((nElem + block.x - 1) / block.x);// /2
	cudaEvent_t start, stop;
	CHECK(cudaEventCreate(&start));
	CHECK(cudaEventCreate(&stop));

	// record start event
	CHECK(cudaEventRecord(start, 0));
#if defined(_RF_TABLE_1TREE_CONST) || defined(_RF_TABLE_2TREE_CONST) || \
	defined(_RF_TABLE_3TREE_CONST) || defined(_RF_TABLE_4TREE_CONST)
#if defined(_2TREE)
	RF_kernel<<<grid, block>>>(d_input, nElem, 0, 0, d_vR);
#elif defined(_3TREE)
	RF_kernel<<<grid, block>>>(d_input, nElem, 0, 0, 0, d_vR);
#elif defined(_4TREE)
	RF_kernel<<<grid, block>>>(d_input, nElem, 0, 0, 0, 0, d_vR);
#else
	RF_kernel<<<grid, block>>>(d_input, nElem, 0, d_vR);
#endif
#else
#if defined(_2TREE)
	RF_kernel<<<grid, block>>>(d_input, nElem, d_th, d_table, 0, 0, d_vR);
#elif defined(_3TREE)
	RF_kernel<<<grid, block>>>(d_input, nElem, d_th, d_table, 0, 0, 0, d_vR);
#elif defined(_4TREE)
	RF_kernel<<<grid, block>>>(d_input, nElem, d_th, d_table, 0, 0, 0, 0, d_vR);
#else
	RF_kernel<<<grid, block>>>(d_input, nElem, d_th, d_table, 0, d_vR);
#endif
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
		if (i < 32)
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
#if !defined(_RF_TABLE_1TREE_CONST) && !defined(_RF_TABLE_2TREE_CONST) && \
	!defined(_RF_TABLE_3TREE_CONST) && !defined(_RF_TABLE_4TREE_CONST)
	cudaFree(d_th);
	cudaFree(d_table);
#endif

	// free host memory
	free(h_input);
	free(h_vR);
#if !defined(_RF_TABLE_1TREE_CONST) && !defined(_RF_TABLE_2TREE_CONST) && \
	!defined(_RF_TABLE_3TREE_CONST) && !defined(_RF_TABLE_4TREE_CONST)
	free(h_th);
	free(h_table);
#endif
	return (0);
}

void initData(float *ip, int size)
{
	for (int i = 0; i < size; i++)
	{
		if (WARP_SIZE < _MOD)
		{
			int aux = _MOD / WARP_SIZE;
			ip[i] = (float)((i * aux) % _MOD);
		}
		else
		{
			ip[i] = (float)(i % _MOD);
		}
		// if (i < 32)
		//	printf("%.2f ", ip[i]);
	}
	return;
}

void registerTime(float value)
{
	printf("[CUDA - Random Forest]: Time spent: %f.\n", value);
}
