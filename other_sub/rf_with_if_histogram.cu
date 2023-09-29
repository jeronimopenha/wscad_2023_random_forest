#include <sys/time.h>
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
#define N_ELEM 4999998
#define TH_PER_BLOCK 512
#define WARP_SIZE 32

#include <cuda_runtime.h>
#include <stdio.h>

void initialData(float *ip, int size)
{

	for (int i = 0; i < size; i++)
	{
		ip[i] = (float)(rand() & 15);
	}
	return;
}
FILE *inFile;
FILE *outFile;

void readInFile(float **ip)
{
	FILE *file = fopen("SUSY.csv", "r");
	if (file == NULL)
	{
		printf("[CUDA]: Failed to open the file.\n");
		exit(1);
	}

	char line[1000];

	int row = 0;
	fgets(line, sizeof(line), file);
	while (fgets(line, sizeof(line), file))
	{
		char *token = strtok(line, ",");

		int column = 0;
		while (token != NULL)
		{
			ip[column][row] = atof(token);
			token = strtok(NULL, ",");
			column++;
		}

		row++;
		if (row > N_ELEM)
			break;
	}

	fclose(file);
}
void writeOutFile(int value)
{
	outFile = fopen("out_rf.csv", "a");
	fprintf(outFile, "%d\n", value);
	fclose(outFile);
}

void registerTime(float value)
{
	outFile = fopen("results/results.csv", "a");
	fprintf(outFile, ",%.4f", value);
	fclose(outFile);
}
__global__ void RF_with_IF(float *F0, float *F1, float *F2, float *F3, float *F4, float *F5, float *F6, float *F7, float *F8,
						   float *F9, float *F10, float *F11, float *F12, float *F13, float *F14, float *F15, float *F16,
						   float *F17, float *F18, int *P, const int N, int *hist0, int *hist1, int *hist2, int *hist3)
{

	//__shared__ int th_idx[TH_PER_BLOCK];
	int i = blockIdx.x * blockDim.x + threadIdx.x;
	int Class[2];
	Class[0] = 0;
	Class[1] = 0;

	//th_idx[threadIdx.x] = 0;

	if (i < N)
	{
		int leaf;

		if (F10[i] <= (1.013))
		{
			if (F15[i] <= (0.761))
			{
				if (F7[i] <= (1.279))
				{
					if (F15[i] <= (0.575))
					{
						if (F1[i] <= (0.716))
						{
							leaf = 0;
							Class[1]++;
						}
						else
						{
							leaf = 1;
							Class[0]++;
						}
					}
					else
					{
						if (F1[i] <= (0.824))
						{
							leaf = 2;
							Class[1]++;
						}
						else
						{
							leaf = 3;
							Class[0]++;
						}
					}
				}
				else
				{
					if (F7[i] <= (1.633))
					{
						if (F13[i] <= (1.718))
						{
							leaf = 4;
							Class[0]++;
						}
						else
						{
							leaf = 5;
							Class[1]++;
						}
					}
					else
					{
						if (F10[i] <= (-0.851))
						{
							leaf = 6;
							Class[0]++;
						}
						else
						{
							leaf = 7;
							Class[0]++;
						}
					}
				}
			}
			else
			{
				if (F7[i] <= (1.156))
				{
					if (F7[i] <= (0.756))
					{
						if (F0[i] <= (0.156))
						{
							leaf = 8;
							Class[1]++;
						}
						else
						{
							leaf = 9;
							Class[0]++;
						}
					}
					else
					{
						if (F11[i] <= (0.922))
						{
							leaf = 10;
							Class[1]++;
						}
						else
						{
							leaf = 11;
							Class[0]++;
						}
					}
				}
				else
				{
					if (F1[i] <= (1.005))
					{
						if (F7[i] <= (1.57))
						{
							leaf = 12;
							Class[0]++;
						}
						else
						{
							leaf = 13;
							Class[0]++;
						}
					}
					else
					{
						if (F13[i] <= (0.699))
						{
							leaf = 14;
							Class[0]++;
						}
						else
						{
							leaf = 15;
							Class[0]++;
						}
					}
				}
			}
		}
		else
		{
			if (F7[i] <= (1.087))
			{
				if (F17[i] <= (1.312))
				{
					if (F1[i] <= (0.627))
					{
						if (F2[i] <= (-1.216))
						{
							leaf = 16;
							Class[0]++;
						}
						else
						{
							leaf = 17;
							Class[0]++;
						}
					}
					else
					{
						if (F12[i] <= (0.481))
						{
							leaf = 18;
							Class[0]++;
						}
						else
						{
							leaf = 19;
							Class[0]++;
						}
					}
				}
				else
				{
					if (F4[i] <= (1.032))
					{
						if (F11[i] <= (0.507))
						{
							leaf = 20;
							Class[1]++;
						}
						else
						{
							leaf = 21;
							Class[1]++;
						}
					}
					else
					{
						if (F17[i] <= (1.466))
						{
							leaf = 22;
							Class[0]++;
						}
						else
						{
							leaf = 23;
							Class[0]++;
						}
					}
				}
			}
			else
			{
				if (F7[i] <= (1.387))
				{
					if (F11[i] <= (0.68))
					{
						if (F17[i] <= (1.345))
						{
							leaf = 24;
							Class[0]++;
						}
						else
						{
							leaf = 25;
							Class[0]++;
						}
					}
					else
					{
						if (F2[i] <= (1.573))
						{
							leaf = 26;
							Class[0]++;
						}
						else
						{
							leaf = 27;
							Class[0]++;
						}
					}
				}
				else
				{
					if (F1[i] <= (0.723))
					{
						if (F7[i] <= (1.578))
						{
							leaf = 28;
							Class[0]++;
						}
						else
						{
							leaf = 29;
							Class[0]++;
						}
					}
					else
					{
						if (F4[i] <= (3.169))
						{
							leaf = 30;
							Class[0]++;
						}
						else
						{
							leaf = 31;
							Class[0]++;
						}
					}
				}
			}
		}

		/*th_idx[threadIdx.x] = leaf;
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
			}*/
			//atomicAdd(&hist0[count - 1], 1);
			// if (blockIdx.x == 0 && threadIdx.x == 0)
			//	printf("%d ", hist0[count - 1]);
		//}
		

		int p0 = (Class[0] > Class[1]) ? 0 : 1;
		int Q0 = (Class[0] > Class[1]) ? Class[0] : Class[1];
		P[i] = p0;
	}
}
int main(int argc, char **argv)
{

	float elapsed_time;
	// set up device
	int dev = 0;
	cudaDeviceProp deviceProp;
	CHECK(cudaGetDeviceProperties(&deviceProp, dev));
	printf("[CUDA]: Using Device %d: %s\n", dev, deviceProp.name);
	CHECK(cudaSetDevice(dev));

	// set up data size of vectors
	int nElem = 4999998;
	printf("[CUDA]: Vector Size %d\n", nElem);

	// malloc host memory
	size_t nBytes = nElem * sizeof(float);
	size_t histBytes = WARP_SIZE * sizeof(int);

	int *h_hist0, *h_hist1, *h_hist2, *h_hist3;
	h_hist0 = (int *)malloc(histBytes);
	h_hist1 = (int *)malloc(histBytes);
	h_hist2 = (int *)malloc(histBytes);
	h_hist3 = (int *)malloc(histBytes);

	memset(h_hist0, 0, histBytes);
	memset(h_hist1, 0, histBytes);
	memset(h_hist2, 0, histBytes);
	memset(h_hist3, 0, histBytes);

	float *h_0, *h_1, *h_2, *h_3, *h_4, *h_5, *h_6, *h_7, *h_8, *h_9, *h_10, *h_11, *h_12, *h_13, *h_14, *h_15, *h_16, *h_17, *h_18;
	int *h_P, *hostRef;
	h_0 = (float *)malloc(nBytes);
	h_1 = (float *)malloc(nBytes);
	h_2 = (float *)malloc(nBytes);
	h_3 = (float *)malloc(nBytes);
	h_4 = (float *)malloc(nBytes);
	h_5 = (float *)malloc(nBytes);
	h_6 = (float *)malloc(nBytes);
	h_7 = (float *)malloc(nBytes);
	h_8 = (float *)malloc(nBytes);
	h_9 = (float *)malloc(nBytes);
	h_10 = (float *)malloc(nBytes);
	h_11 = (float *)malloc(nBytes);
	h_12 = (float *)malloc(nBytes);
	h_13 = (float *)malloc(nBytes);
	h_14 = (float *)malloc(nBytes);
	h_15 = (float *)malloc(nBytes);
	h_16 = (float *)malloc(nBytes);
	h_17 = (float *)malloc(nBytes);
	h_18 = (float *)malloc(nBytes);
	hostRef = (int *)malloc(nBytes);
	h_P = (int *)malloc(nBytes);

	printf("[CUDA]: Start Reading Dataset\n");
	float *h[19] = {h_0, h_1, h_2, h_3, h_4, h_5, h_6, h_7, h_8, h_9, h_10, h_11, h_12, h_13, h_14, h_15, h_16, h_17, h_18};
	readInFile(h);
	printf("[CUDA]: Finished Reading Dataset\n");

	memset(hostRef, 0, nBytes);
	memset(h_P, 0, nBytes);

	// malloc device global memory
	int *d_hist0, *d_hist1, *d_hist2, *d_hist3;
	CHECK(cudaMalloc((float **)&d_hist0, histBytes));
	CHECK(cudaMalloc((float **)&d_hist1, histBytes));
	CHECK(cudaMalloc((float **)&d_hist2, histBytes));
	CHECK(cudaMalloc((float **)&d_hist3, histBytes));

	CHECK(cudaMemcpy(d_hist0, h_hist0, histBytes, cudaMemcpyHostToDevice));
	CHECK(cudaMemcpy(d_hist1, h_hist1, histBytes, cudaMemcpyHostToDevice));
	CHECK(cudaMemcpy(d_hist2, h_hist2, histBytes, cudaMemcpyHostToDevice));
	CHECK(cudaMemcpy(d_hist3, h_hist3, histBytes, cudaMemcpyHostToDevice));

	float *d_0, *d_1, *d_2, *d_3, *d_4, *d_5, *d_6, *d_7, *d_8, *d_9, *d_10, *d_11, *d_12, *d_13, *d_14, *d_15, *d_16, *d_17, *d_18;
	int *d_P;
	CHECK(cudaMalloc((float **)&d_0, nBytes));
	CHECK(cudaMalloc((float **)&d_1, nBytes));
	CHECK(cudaMalloc((float **)&d_2, nBytes));
	CHECK(cudaMalloc((float **)&d_3, nBytes));
	CHECK(cudaMalloc((float **)&d_4, nBytes));
	CHECK(cudaMalloc((float **)&d_5, nBytes));
	CHECK(cudaMalloc((float **)&d_6, nBytes));
	CHECK(cudaMalloc((float **)&d_7, nBytes));
	CHECK(cudaMalloc((float **)&d_8, nBytes));
	CHECK(cudaMalloc((float **)&d_9, nBytes));
	CHECK(cudaMalloc((float **)&d_10, nBytes));
	CHECK(cudaMalloc((float **)&d_11, nBytes));
	CHECK(cudaMalloc((float **)&d_12, nBytes));
	CHECK(cudaMalloc((float **)&d_13, nBytes));
	CHECK(cudaMalloc((float **)&d_14, nBytes));
	CHECK(cudaMalloc((float **)&d_15, nBytes));
	CHECK(cudaMalloc((float **)&d_16, nBytes));
	CHECK(cudaMalloc((float **)&d_17, nBytes));
	CHECK(cudaMalloc((float **)&d_18, nBytes));
	CHECK(cudaMalloc((int **)&d_P, nBytes));

	// transfer data from host to device
	CHECK(cudaMemcpy(d_0, h_0, nBytes, cudaMemcpyHostToDevice));
	CHECK(cudaMemcpy(d_1, h_1, nBytes, cudaMemcpyHostToDevice));
	CHECK(cudaMemcpy(d_2, h_2, nBytes, cudaMemcpyHostToDevice));
	CHECK(cudaMemcpy(d_3, h_3, nBytes, cudaMemcpyHostToDevice));
	CHECK(cudaMemcpy(d_4, h_4, nBytes, cudaMemcpyHostToDevice));
	CHECK(cudaMemcpy(d_5, h_5, nBytes, cudaMemcpyHostToDevice));
	CHECK(cudaMemcpy(d_6, h_6, nBytes, cudaMemcpyHostToDevice));
	CHECK(cudaMemcpy(d_7, h_7, nBytes, cudaMemcpyHostToDevice));
	CHECK(cudaMemcpy(d_8, h_8, nBytes, cudaMemcpyHostToDevice));
	CHECK(cudaMemcpy(d_9, h_9, nBytes, cudaMemcpyHostToDevice));
	CHECK(cudaMemcpy(d_10, h_10, nBytes, cudaMemcpyHostToDevice));
	CHECK(cudaMemcpy(d_11, h_11, nBytes, cudaMemcpyHostToDevice));
	CHECK(cudaMemcpy(d_12, h_12, nBytes, cudaMemcpyHostToDevice));
	CHECK(cudaMemcpy(d_13, h_13, nBytes, cudaMemcpyHostToDevice));
	CHECK(cudaMemcpy(d_14, h_14, nBytes, cudaMemcpyHostToDevice));
	CHECK(cudaMemcpy(d_15, h_15, nBytes, cudaMemcpyHostToDevice));
	CHECK(cudaMemcpy(d_16, h_16, nBytes, cudaMemcpyHostToDevice));
	CHECK(cudaMemcpy(d_17, h_17, nBytes, cudaMemcpyHostToDevice));
	CHECK(cudaMemcpy(d_18, h_18, nBytes, cudaMemcpyHostToDevice));
	// invoke kernel at host side
	int iLen = TH_PER_BLOCK;
	dim3 block(iLen);
	dim3 grid((nElem + block.x - 1) / block.x);

	cudaEvent_t start, stop;
	CHECK(cudaEventCreate(&start));
	CHECK(cudaEventCreate(&stop));
	// record start event
	CHECK(cudaEventRecord(start, 0));
	RF_with_IF<<<grid, block>>>(d_0, d_1, d_2, d_3, d_4, d_5, d_6, d_7,
								d_8, d_9, d_10, d_11, d_12, d_13, d_14,
								d_15, d_16, d_17, d_18, d_P, nElem,
								d_hist0, d_hist1, d_hist2, d_hist3);
	cudaDeviceSynchronize();
	CHECK(cudaEventRecord(stop, 0));
	CHECK(cudaEventSynchronize(stop));
	// calculate elapsed time
	CHECK(cudaEventElapsedTime(&elapsed_time, start, stop));
	printf("[CUDA]: RF with IF - execution time = %.6fms\n", elapsed_time);

	registerTime(elapsed_time);
	CHECK(cudaEventCreate(&start));
	CHECK(cudaEventCreate(&stop));
	CHECK(cudaGetLastError());

	// copy kernel result back to host side
	/*CHECK(cudaMemcpy(h_P, d_P, nBytes, cudaMemcpyDeviceToHost));

	CHECK(cudaMemcpy(h_hist0, d_hist0, histBytes, cudaMemcpyDeviceToHost));
	CHECK(cudaMemcpy(h_hist1, d_hist1, histBytes, cudaMemcpyDeviceToHost));
	CHECK(cudaMemcpy(h_hist2, d_hist2, histBytes, cudaMemcpyDeviceToHost));
	CHECK(cudaMemcpy(h_hist3, d_hist3, histBytes, cudaMemcpyDeviceToHost));*/

	for (int i = 0; i < WARP_SIZE; i++)
	{
		printf("%d ", h_hist0[i]);
	}
	printf("\n ");
	for (int i = 0; i < WARP_SIZE; i++)
	{
		printf("%d ", h_hist1[i]);
	}
	printf("\n ");
	for (int i = 0; i < WARP_SIZE; i++)
	{
		printf("%d ", h_hist2[i]);
	}
	printf("\n ");
	for (int i = 0; i < WARP_SIZE; i++)
	{
		printf("%d ", h_hist3[i]);
	}
	printf("\n ");

	// free host memory
	cudaFree(d_0);
	cudaFree(d_1);
	cudaFree(d_2);
	cudaFree(d_3);
	cudaFree(d_4);
	cudaFree(d_5);
	cudaFree(d_6);
	cudaFree(d_7);
	cudaFree(d_8);
	cudaFree(d_9);
	cudaFree(d_10);
	cudaFree(d_11);
	cudaFree(d_12);
	cudaFree(d_13);
	cudaFree(d_14);
	cudaFree(d_15);
	cudaFree(d_16);
	cudaFree(d_17);
	cudaFree(d_18);
	cudaFree(d_P);
	cudaFree(d_hist0);
	cudaFree(d_hist1);
	cudaFree(d_hist2);
	cudaFree(d_hist3);
	free(h_0);
	free(h_1);
	free(h_2);
	free(h_3);
	free(h_4);
	free(h_5);
	free(h_6);
	free(h_7);
	free(h_8);
	free(h_9);
	free(h_10);
	free(h_11);
	free(h_12);
	free(h_13);
	free(h_14);
	free(h_15);
	free(h_16);
	free(h_17);
	free(h_18);
	free(hostRef);
	free(h_hist0);
	free(h_hist1);
	free(h_hist2);
	free(h_hist3);

	return (0);
}