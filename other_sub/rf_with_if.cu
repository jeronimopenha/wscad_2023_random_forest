#include <sys/time.h>
#define CHECK(call)                                                            \
{                                                                              \
    const cudaError_t error = call;                                            \
    if (error != cudaSuccess)                                                  \
    {                                                                          \
        fprintf(stderr, "Error: %s:%d, ", __FILE__, __LINE__);                 \
        fprintf(stderr, "code: %d, reason: %s\n", error,                       \
                cudaGetErrorString(error));                                    \
    }                                                                          \
}
#define N_ELEM 4999998


#include <cuda_runtime.h>
#include <stdio.h>


void initialData(float *ip, int size){

  for (int i = 0; i < size; i++){
      ip[i] = (float)( rand() & 15 );
  }
  return;
}
FILE *inFile;
FILE *outFile;

void readInFile(float **ip) {
    FILE *file = fopen("SUSY.csv","r");
    if (file == NULL) {
        printf("[CUDA]: Failed to open the file.\n");
        exit(1);
    }

    char line[1000];
    
    int row = 0;
    fgets(line, sizeof(line), file);
    while (fgets(line, sizeof(line), file)) {
        char *token = strtok(line, ",");
        
        int column = 0;
        while (token != NULL) {
            ip[column][row] = atof(token);
            token = strtok(NULL, ",");
            column++;
        }

        row++;
        if(row > N_ELEM) break;
    }

    fclose(file);
}
void writeOutFile(int value){
    outFile = fopen("out_rf.csv","a");
    fprintf(outFile, "%d\n", value);
    fclose(outFile);
} 

void registerTime(float value){
    outFile = fopen("results/results.csv","a");
    fprintf(outFile, ",%.4f", value);
    fclose(outFile);
}__global__ void RF_with_IF(float *F0, float *F1, float *F2, float *F3, float *F4, float *F5, float *F6, float *F7, float *F8, float *F9, float *F10, float *F11, float *F12, float *F13, float *F14, float *F15, float *F16, float *F17, float *F18, int *P, const int N, int offset)
{	int i = blockIdx.x * blockDim.x + threadIdx.x;
	int Class[2]; 
	Class[0] = 0;
	Class[1] = 0;
	if (i < N) {
		int leaf;
		if (F10[i]<= (1.013+ offset)) {
			if (F15[i]<= (0.761+ offset)) {
				if (F7[i]<= (1.279+ offset)) {
					if (F15[i]<= (0.575+ offset)) {
						if (F1[i]<= (0.716+ offset)) {
							leaf = 0;
							Class[1]++;
						} else {
							leaf = 1;
							Class[0]++;
						}
					} else {
						if (F1[i]<= (0.824+ offset)) {
							leaf = 2;
							Class[1]++;
						} else {
							leaf = 3;
							Class[0]++;
						}
					}
				} else {
					if (F7[i]<= (1.633+ offset)) {
						if (F13[i]<= (1.718+ offset)) {
							leaf = 4;
							Class[0]++;
						} else {
							leaf = 5;
							Class[1]++;
						}
					} else {
						if (F10[i]<= (-0.851+ offset)) {
							leaf = 6;
							Class[0]++;
						} else {
							leaf = 7;
							Class[0]++;
						}
					}
				}
			} else {
				if (F7[i]<= (1.156+ offset)) {
					if (F7[i]<= (0.756+ offset)) {
						if (F0[i]<= (0.156+ offset)) {
							leaf = 8;
							Class[1]++;
						} else {
							leaf = 9;
							Class[0]++;
						}
					} else {
						if (F11[i]<= (0.922+ offset)) {
							leaf = 10;
							Class[1]++;
						} else {
							leaf = 11;
							Class[0]++;
						}
					}
				} else {
					if (F1[i]<= (1.005+ offset)) {
						if (F7[i]<= (1.57+ offset)) {
							leaf = 12;
							Class[0]++;
						} else {
							leaf = 13;
							Class[0]++;
						}
					} else {
						if (F13[i]<= (0.699+ offset)) {
							leaf = 14;
							Class[0]++;
						} else {
							leaf = 15;
							Class[0]++;
						}
					}
				}
			}
		} else {
			if (F7[i]<= (1.087+ offset)) {
				if (F17[i]<= (1.312+ offset)) {
					if (F1[i]<= (0.627+ offset)) {
						if (F2[i]<= (-1.216+ offset)) {
							leaf = 16;
							Class[0]++;
						} else {
							leaf = 17;
							Class[0]++;
						}
					} else {
						if (F12[i]<= (0.481+ offset)) {
							leaf = 18;
							Class[0]++;
						} else {
							leaf = 19;
							Class[0]++;
						}
					}
				} else {
					if (F4[i]<= (1.032+ offset)) {
						if (F11[i]<= (0.507+ offset)) {
							leaf = 20;
							Class[1]++;
						} else {
							leaf = 21;
							Class[1]++;
						}
					} else {
						if (F17[i]<= (1.466+ offset)) {
							leaf = 22;
							Class[0]++;
						} else {
							leaf = 23;
							Class[0]++;
						}
					}
				}
			} else {
				if (F7[i]<= (1.387+ offset)) {
					if (F11[i]<= (0.68+ offset)) {
						if (F17[i]<= (1.345+ offset)) {
							leaf = 24;
							Class[0]++;
						} else {
							leaf = 25;
							Class[0]++;
						}
					} else {
						if (F2[i]<= (1.573+ offset)) {
							leaf = 26;
							Class[0]++;
						} else {
							leaf = 27;
							Class[0]++;
						}
					}
				} else {
					if (F1[i]<= (0.723+ offset)) {
						if (F7[i]<= (1.578+ offset)) {
							leaf = 28;
							Class[0]++;
						} else {
							leaf = 29;
							Class[0]++;
						}
					} else {
						if (F4[i]<= (3.169+ offset)) {
							leaf = 30;
							Class[0]++;
						} else {
							leaf = 31;
							Class[0]++;
						}
					}
				}
			}
		}

		if (F7[i]<= (1.199+ offset)) {
			if (F15[i]<= (0.737+ offset)) {
				if (F10[i]<= (0.785+ offset)) {
					if (F1[i]<= (0.75+ offset)) {
						if (F16[i]<= (1.516+ offset)) {
							leaf = 0;
							Class[1]++;
						} else {
							leaf = 1;
							Class[1]++;
						}
					} else {
						if (F0[i]<= (0.443+ offset)) {
							leaf = 2;
							Class[1]++;
						} else {
							leaf = 3;
							Class[0]++;
						}
					}
				} else {
					if (F2[i]<= (-1.17+ offset)) {
						if (F14[i]<= (0.425+ offset)) {
							leaf = 4;
							Class[1]++;
						} else {
							leaf = 5;
							Class[0]++;
						}
					} else {
						if (F13[i]<= (0.679+ offset)) {
							leaf = 6;
							Class[0]++;
						} else {
							leaf = 7;
							Class[1]++;
						}
					}
				}
			} else {
				if (F1[i]<= (1.03+ offset)) {
					if (F10[i]<= (0.845+ offset)) {
						if (F2[i]<= (1.467+ offset)) {
							leaf = 8;
							Class[1]++;
						} else {
							leaf = 9;
							Class[1]++;
						}
					} else {
						if (F14[i]<= (0.429+ offset)) {
							leaf = 10;
							Class[0]++;
						} else {
							leaf = 11;
							Class[0]++;
						}
					}
				} else {
					if (F13[i]<= (0.552+ offset)) {
						if (F2[i]<= (-1.33+ offset)) {
							leaf = 12;
							Class[1]++;
						} else {
							leaf = 13;
							Class[0]++;
						}
					} else {
						if (F1[i]<= (1.382+ offset)) {
							leaf = 14;
							Class[0]++;
						} else {
							leaf = 15;
							Class[0]++;
						}
					}
				}
			}
		} else {
			if (F1[i]<= (0.777+ offset)) {
				if (F14[i]<= (1.388+ offset)) {
					if (F10[i]<= (0.445+ offset)) {
						if (F13[i]<= (2.119+ offset)) {
							leaf = 16;
							Class[0]++;
						} else {
							leaf = 17;
							Class[0]++;
						}
					} else {
						if (F7[i]<= (1.52+ offset)) {
							leaf = 18;
							Class[0]++;
						} else {
							leaf = 19;
							Class[0]++;
						}
					}
				} else {
					if (F12[i]<= (1.369+ offset)) {
						if (F10[i]<= (-0.427+ offset)) {
							leaf = 20;
							Class[1]++;
						} else {
							leaf = 21;
							Class[0]++;
						}
					} else {
						if (F15[i]<= (0.794+ offset)) {
							leaf = 22;
							Class[0]++;
						} else {
							leaf = 23;
							Class[0]++;
						}
					}
				}
			} else {
				if (F2[i]<= (1.405+ offset)) {
					if (F9[i]<= (2.554+ offset)) {
						if (F5[i]<= (-1.281+ offset)) {
							leaf = 24;
							Class[0]++;
						} else {
							leaf = 25;
							Class[0]++;
						}
					} else {
						if (F4[i]<= (0.759+ offset)) {
							leaf = 26;
							Class[0]++;
						} else {
							leaf = 27;
							Class[0]++;
						}
					}
				} else {
					if (F14[i]<= (0.102+ offset)) {
						if (F4[i]<= (3.355+ offset)) {
							leaf = 28;
							Class[0]++;
						} else {
							leaf = 29;
							Class[0]++;
						}
					} else {
						if (F10[i]<= (-0.348+ offset)) {
							leaf = 30;
							Class[0]++;
						} else {
							leaf = 31;
							Class[0]++;
						}
					}
				}
			}
		}

		if (F0[i]<= (0.3+ offset)) {
			if (F9[i]<= (1.864+ offset)) {
				if (F7[i]<= (1.242+ offset)) {
					if (F12[i]<= (1.048+ offset)) {
						if (F1[i]<= (0.846+ offset)) {
							leaf = 0;
							Class[1]++;
						} else {
							leaf = 1;
							Class[1]++;
						}
					} else {
						if (F12[i]<= (1.246+ offset)) {
							leaf = 2;
							Class[1]++;
						} else {
							leaf = 3;
							Class[0]++;
						}
					}
				} else {
					if (F16[i]<= (1.147+ offset)) {
						if (F16[i]<= (0.817+ offset)) {
							leaf = 4;
							Class[0]++;
						} else {
							leaf = 5;
							Class[0]++;
						}
					} else {
						if (F11[i]<= (4.207+ offset)) {
							leaf = 6;
							Class[0]++;
						} else {
							leaf = 7;
							Class[0]++;
						}
					}
				}
			} else {
				if (F12[i]<= (1.419+ offset)) {
					if (F16[i]<= (1.411+ offset)) {
						if (F13[i]<= (1.497+ offset)) {
							leaf = 8;
							Class[0]++;
						} else {
							leaf = 9;
							Class[0]++;
						}
					} else {
						if (F16[i]<= (2.21+ offset)) {
							leaf = 10;
							Class[0]++;
						} else {
							leaf = 11;
							Class[0]++;
						}
					}
				} else {
					if (F9[i]<= (2.614+ offset)) {
						if (F7[i]<= (1.702+ offset)) {
							leaf = 12;
							Class[0]++;
						} else {
							leaf = 13;
							Class[0]++;
						}
					} else {
						if (F1[i]<= (0.949+ offset)) {
							leaf = 14;
							Class[0]++;
						} else {
							leaf = 15;
							Class[0]++;
						}
					}
				}
			}
		} else {
			if (F7[i]<= (1.279+ offset)) {
				if (F12[i]<= (1.115+ offset)) {
					if (F1[i]<= (0.846+ offset)) {
						if (F11[i]<= (0.552+ offset)) {
							leaf = 16;
							Class[1]++;
						} else {
							leaf = 17;
							Class[1]++;
						}
					} else {
						if (F1[i]<= (1.103+ offset)) {
							leaf = 18;
							Class[0]++;
						} else {
							leaf = 19;
							Class[0]++;
						}
					}
				} else {
					if (F11[i]<= (0.759+ offset)) {
						if (F10[i]<= (-0.577+ offset)) {
							leaf = 20;
							Class[1]++;
						} else {
							leaf = 21;
							Class[0]++;
						}
					} else {
						if (F0[i]<= (0.459+ offset)) {
							leaf = 22;
							Class[0]++;
						} else {
							leaf = 23;
							Class[0]++;
						}
					}
				}
			} else {
				if (F9[i]<= (2.66+ offset)) {
					if (F11[i]<= (0.668+ offset)) {
						if (F14[i]<= (1.677+ offset)) {
							leaf = 24;
							Class[0]++;
						} else {
							leaf = 25;
							Class[0]++;
						}
					} else {
						if (F17[i]<= (1.142+ offset)) {
							leaf = 26;
							Class[0]++;
						} else {
							leaf = 27;
							Class[0]++;
						}
					}
				} else {
					if (F15[i]<= (0.898+ offset)) {
						if (F14[i]<= (2.384+ offset)) {
							leaf = 28;
							Class[0]++;
						} else {
							leaf = 29;
							Class[0]++;
						}
					} else {
						if (F10[i]<= (-1.218+ offset)) {
							leaf = 30;
							Class[0]++;
						} else {
							leaf = 31;
							Class[0]++;
						}
					}
				}
			}
		}

		if (F9[i]<= (1.879+ offset)) {
			if (F11[i]<= (0.755+ offset)) {
				if (F12[i]<= (1.085+ offset)) {
					if (F10[i]<= (1.031+ offset)) {
						if (F1[i]<= (0.723+ offset)) {
							leaf = 0;
							Class[1]++;
						} else {
							leaf = 1;
							Class[1]++;
						}
					} else {
						if (F14[i]<= (0.225+ offset)) {
							leaf = 2;
							Class[0]++;
						} else {
							leaf = 3;
							Class[0]++;
						}
					}
				} else {
					if (F9[i]<= (1.328+ offset)) {
						if (F7[i]<= (1.358+ offset)) {
							leaf = 4;
							Class[0]++;
						} else {
							leaf = 5;
							Class[0]++;
						}
					} else {
						if (F10[i]<= (-0.393+ offset)) {
							leaf = 6;
							Class[1]++;
						} else {
							leaf = 7;
							Class[0]++;
						}
					}
				}
			} else {
				if (F11[i]<= (1.04+ offset)) {
					if (F2[i]<= (1.372+ offset)) {
						if (F13[i]<= (1.071+ offset)) {
							leaf = 8;
							Class[1]++;
						} else {
							leaf = 9;
							Class[0]++;
						}
					} else {
						if (F7[i]<= (1.252+ offset)) {
							leaf = 10;
							Class[1]++;
						} else {
							leaf = 11;
							Class[0]++;
						}
					}
				} else {
					if (F12[i]<= (1.204+ offset)) {
						if (F7[i]<= (1.155+ offset)) {
							leaf = 12;
							Class[1]++;
						} else {
							leaf = 13;
							Class[0]++;
						}
					} else {
						if (F15[i]<= (3.318+ offset)) {
							leaf = 14;
							Class[0]++;
						} else {
							leaf = 15;
							Class[0]++;
						}
					}
				}
			}
		} else {
			if (F12[i]<= (1.436+ offset)) {
				if (F10[i]<= (-0.428+ offset)) {
					if (F9[i]<= (2.473+ offset)) {
						if (F12[i]<= (1.316+ offset)) {
							leaf = 16;
							Class[1]++;
						} else {
							leaf = 17;
							Class[0]++;
						}
					} else {
						if (F5[i]<= (-1.274+ offset)) {
							leaf = 18;
							Class[0]++;
						} else {
							leaf = 19;
							Class[0]++;
						}
					}
				} else {
					if (F9[i]<= (2.177+ offset)) {
						if (F7[i]<= (1.493+ offset)) {
							leaf = 20;
							Class[0]++;
						} else {
							leaf = 21;
							Class[0]++;
						}
					} else {
						if (F7[i]<= (1.71+ offset)) {
							leaf = 22;
							Class[0]++;
						} else {
							leaf = 23;
							Class[0]++;
						}
					}
				}
			} else {
				if (F14[i]<= (1.216+ offset)) {
					if (F7[i]<= (1.86+ offset)) {
						if (F11[i]<= (6.6+ offset)) {
							leaf = 24;
							Class[0]++;
						} else {
							leaf = 25;
							Class[1]++;
						}
					} else {
						if (F9[i]<= (2.906+ offset)) {
							leaf = 26;
							Class[0]++;
						} else {
							leaf = 27;
							Class[0]++;
						}
					}
				} else {
					if (F9[i]<= (2.597+ offset)) {
						if (F1[i]<= (1.393+ offset)) {
							leaf = 28;
							Class[0]++;
						} else {
							leaf = 29;
							Class[0]++;
						}
					} else {
						if (F10[i]<= (-1.031+ offset)) {
							leaf = 30;
							Class[0]++;
						} else {
							leaf = 31;
							Class[0]++;
						}
					}
				}
			}
		}
		int p0 = (Class[0] > Class[1])?0:1;
		int Q0 = (Class[0] > Class[1])?Class[0]:Class[1];
		P[i] = p0;
	}
}int main(int argc, char ** argv) {
     
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

    float  * h_0,  * h_1,  * h_2,  * h_3,  * h_4,  * h_5,  * h_6,  * h_7,  * h_8,  * h_9,  * h_10,  * h_11,  * h_12,  * h_13,  * h_14,  * h_15,  * h_16,  * h_17,  * h_18;
    int * h_P, * hostRef;
    	h_0 = (float * ) malloc(nBytes);
	h_1 = (float * ) malloc(nBytes);
	h_2 = (float * ) malloc(nBytes);
	h_3 = (float * ) malloc(nBytes);
	h_4 = (float * ) malloc(nBytes);
	h_5 = (float * ) malloc(nBytes);
	h_6 = (float * ) malloc(nBytes);
	h_7 = (float * ) malloc(nBytes);
	h_8 = (float * ) malloc(nBytes);
	h_9 = (float * ) malloc(nBytes);
	h_10 = (float * ) malloc(nBytes);
	h_11 = (float * ) malloc(nBytes);
	h_12 = (float * ) malloc(nBytes);
	h_13 = (float * ) malloc(nBytes);
	h_14 = (float * ) malloc(nBytes);
	h_15 = (float * ) malloc(nBytes);
	h_16 = (float * ) malloc(nBytes);
	h_17 = (float * ) malloc(nBytes);
	h_18 = (float * ) malloc(nBytes);
    hostRef = (int * ) malloc(nBytes);
    h_P = (int * ) malloc(nBytes);

    printf("[CUDA]: Start Reading Dataset\n");
	float* h[19] = { h_0, h_1, h_2, h_3, h_4, h_5, h_6, h_7, h_8, h_9, h_10, h_11, h_12, h_13, h_14, h_15, h_16, h_17, h_18};
	readInFile(h);
	printf("[CUDA]: Finished Reading Dataset\n");


    memset(hostRef, 0, nBytes);
    memset(h_P, 0, nBytes);

    // malloc device global memory
    float * d_0, * d_1, * d_2, * d_3, * d_4, * d_5, * d_6, * d_7, * d_8, * d_9, * d_10, * d_11, * d_12, * d_13, * d_14, * d_15, * d_16, * d_17, * d_18;
    int * d_P;
        CHECK(cudaMalloc((float ** ) & d_0, nBytes));
    CHECK(cudaMalloc((float ** ) & d_1, nBytes));
    CHECK(cudaMalloc((float ** ) & d_2, nBytes));
    CHECK(cudaMalloc((float ** ) & d_3, nBytes));
    CHECK(cudaMalloc((float ** ) & d_4, nBytes));
    CHECK(cudaMalloc((float ** ) & d_5, nBytes));
    CHECK(cudaMalloc((float ** ) & d_6, nBytes));
    CHECK(cudaMalloc((float ** ) & d_7, nBytes));
    CHECK(cudaMalloc((float ** ) & d_8, nBytes));
    CHECK(cudaMalloc((float ** ) & d_9, nBytes));
    CHECK(cudaMalloc((float ** ) & d_10, nBytes));
    CHECK(cudaMalloc((float ** ) & d_11, nBytes));
    CHECK(cudaMalloc((float ** ) & d_12, nBytes));
    CHECK(cudaMalloc((float ** ) & d_13, nBytes));
    CHECK(cudaMalloc((float ** ) & d_14, nBytes));
    CHECK(cudaMalloc((float ** ) & d_15, nBytes));
    CHECK(cudaMalloc((float ** ) & d_16, nBytes));
    CHECK(cudaMalloc((float ** ) & d_17, nBytes));
    CHECK(cudaMalloc((float ** ) & d_18, nBytes));
    CHECK(cudaMalloc((int ** ) & d_P, nBytes));


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
    int iLen = 512;
    dim3 block(iLen);
    dim3 grid((nElem + block.x - 1) / block.x);

    cudaEvent_t start, stop;
    CHECK(cudaEventCreate( & start));
    CHECK(cudaEventCreate( & stop));
    // record start event
    CHECK(cudaEventRecord(start, 0));
    RF_with_IF << < grid, block >>> (d_0, d_1, d_2, d_3, d_4, d_5, d_6, d_7, d_8, d_9, d_10, d_11, d_12, d_13, d_14, d_15, d_16, d_17, d_18, d_P, nElem, 0);
    cudaDeviceSynchronize();
    CHECK(cudaEventRecord(stop, 0));
    CHECK(cudaEventSynchronize(stop));
    // calculate elapsed time
    CHECK(cudaEventElapsedTime( & elapsed_time, start, stop));
    printf("[CUDA]: RF with IF - execution time = %.6fms\n", elapsed_time);

    registerTime(elapsed_time);
    CHECK(cudaMemcpy(h_P, d_P, nBytes, cudaMemcpyDeviceToHost));
    CHECK(cudaEventCreate( & start));
    CHECK(cudaEventCreate( & stop));
    CHECK(cudaGetLastError());

    // copy kernel result back to host side
    CHECK(cudaMemcpy(h_P, d_P, nBytes, cudaMemcpyDeviceToHost));
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

    return (0);
 }