#include <sys/time.h>
#include <cuda_runtime.h>
#include <stdio.h>
#include <stdlib.h>
#include <stdbool.h>
#include <time.h>

#define OFFSET_SIZE 10
#define N_ELEM 50000000
// #define N_ELEM 100000000
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

#define _MOD 32
#define _1TREE
#define EXP_NAME "_RF_IF_10TREE_5LV_2_2"

__global__ void RF_kernel(float *input, const int n, const int *offset, float *vR)
{
    __shared__ int temp[1024];

    int i = blockIdx.x * blockDim.x / 2 + threadIdx.x % 512;
    // rodar os de prof 5 e 6 com 4 árvores

    if (i < n)
    {
        if (threadIdx.x < 512)
        {
            if (input[i] > (15 + offset[0]))
            {
                if (input[i] > (23 + offset[0]))
                {
                    if (input[i] > (27 + offset[0]))
                    {
                        if (input[i] > (29 + offset[0]))
                        {
                            if (input[i] == (31 + offset[0]))
                            {
                                temp[threadIdx.x] = 31;
                            }
                            else
                            {
                                temp[threadIdx.x] = 30;
                            }
                        }
                        else
                        {
                            if (input[i] == (29 + offset[0]))
                            {
                                temp[threadIdx.x] = 29;
                            }
                            else
                            {
                                temp[threadIdx.x] = 28;
                            }
                        }
                    }
                    else
                    {
                        if (input[i] > (25 + offset[0]))
                        {
                            if (input[i] == (27 + offset[0]))
                            {
                                temp[threadIdx.x] = 27;
                            }
                            else
                            {
                                temp[threadIdx.x] = 26;
                            }
                        }
                        else
                        {
                            if (input[i] == (25 + offset[0]))
                            {
                                temp[threadIdx.x] = 25;
                            }
                            else
                            {
                                temp[threadIdx.x] = 24;
                            }
                        }
                    }
                }
                else
                {
                    if (input[i] > (19 + offset[0]))
                    {
                        if (input[i] > (21 + offset[0]))
                        {
                            if (input[i] == (23 + offset[0]))
                            {
                                temp[threadIdx.x] = 23;
                            }
                            else
                            {
                                temp[threadIdx.x] = 22;
                            }
                        }
                        else
                        {
                            if (input[i] == (21 + offset[0]))
                            {
                                temp[threadIdx.x] = 21;
                            }
                            else
                            {
                                temp[threadIdx.x] = 20;
                            }
                        }
                    }
                    else
                    {
                        if (input[i] > (17 + offset[0]))
                        {
                            if (input[i] == (19 + offset[0]))
                            {
                                temp[threadIdx.x] = 19;
                            }
                            else
                            {
                                temp[threadIdx.x] = 18;
                            }
                        }
                        else
                        {
                            if (input[i] == (17 + offset[0]))
                            {
                                temp[threadIdx.x] = 17;
                            }
                            else
                            {
                                temp[threadIdx.x] = 16;
                            }
                        }
                    }
                }
            }
            else
            {
                if (input[i] > (7 + offset[0]))
                {
                    if (input[i] > (11 + offset[0]))
                    {
                        if (input[i] > (13 + offset[0]))
                        {
                            if (input[i] == (15 + offset[0]))
                            {
                                temp[threadIdx.x] = 15;
                            }
                            else
                            {
                                temp[threadIdx.x] = 14;
                            }
                        }
                        else
                        {
                            if (input[i] == (13 + offset[0]))
                            {
                                temp[threadIdx.x] = 13;
                            }
                            else
                            {
                                temp[threadIdx.x] = 12;
                            }
                        }
                    }
                    else
                    {
                        if (input[i] > (9 + offset[0]))
                        {
                            if (input[i] == (11 + offset[0]))
                            {
                                temp[threadIdx.x] = 11;
                            }
                            else
                            {
                                temp[threadIdx.x] = 10;
                            }
                        }
                        else
                        {
                            if (input[i] == (9 + offset[0]))
                            {
                                temp[threadIdx.x] = 9;
                            }
                            else
                            {
                                temp[threadIdx.x] = 8;
                            }
                        }
                    }
                }
                else
                {
                    if (input[i] > (3 + offset[0]))
                    {
                        if (input[i] > (5 + offset[0]))
                        {
                            if (input[i] == (7 + offset[0]))
                            {
                                temp[threadIdx.x] = 7;
                            }
                            else
                            {
                                temp[threadIdx.x] = 6;
                            }
                        }
                        else
                        {
                            if (input[i] == (5 + offset[0]))
                            {
                                temp[threadIdx.x] = 5;
                            }
                            else
                            {
                                temp[threadIdx.x] = 4;
                            }
                        }
                    }
                    else
                    {
                        if (input[i] > (1 + offset[0]))
                        {
                            if (input[i] == (3 + offset[0]))
                            {
                                temp[threadIdx.x] = 3;
                            }
                            else
                            {
                                temp[threadIdx.x] = 2;
                            }
                        }
                        else
                        {
                            if (input[i] == (1 + offset[0]))
                            {
                                temp[threadIdx.x] = 1;
                            }
                            else
                            {
                                temp[threadIdx.x] = 0;
                            }
                        }
                    }
                }
            }

            if (input[i] > (15 + offset[1]))
            {
                if (input[i] > (23 + offset[1]))
                {
                    if (input[i] > (27 + offset[1]))
                    {
                        if (input[i] > (29 + offset[1]))
                        {
                            if (input[i] == (31 + offset[1]))
                            {
                                temp[threadIdx.x] = 31;
                            }
                            else
                            {
                                temp[threadIdx.x] = 30;
                            }
                        }
                        else
                        {
                            if (input[i] == (29 + offset[1]))
                            {
                                temp[threadIdx.x] = 29;
                            }
                            else
                            {
                                temp[threadIdx.x] = 28;
                            }
                        }
                    }
                    else
                    {
                        if (input[i] > (25 + offset[1]))
                        {
                            if (input[i] == (27 + offset[1]))
                            {
                                temp[threadIdx.x] = 27;
                            }
                            else
                            {
                                temp[threadIdx.x] = 26;
                            }
                        }
                        else
                        {
                            if (input[i] == (25 + offset[1]))
                            {
                                temp[threadIdx.x] = 25;
                            }
                            else
                            {
                                temp[threadIdx.x] = 24;
                            }
                        }
                    }
                }
                else
                {
                    if (input[i] > (19 + offset[1]))
                    {
                        if (input[i] > (21 + offset[1]))
                        {
                            if (input[i] == (23 + offset[1]))
                            {
                                temp[threadIdx.x] = 23;
                            }
                            else
                            {
                                temp[threadIdx.x] = 22;
                            }
                        }
                        else
                        {
                            if (input[i] == (21 + offset[1]))
                            {
                                temp[threadIdx.x] = 21;
                            }
                            else
                            {
                                temp[threadIdx.x] = 20;
                            }
                        }
                    }
                    else
                    {
                        if (input[i] > (17 + offset[1]))
                        {
                            if (input[i] == (19 + offset[1]))
                            {
                                temp[threadIdx.x] = 19;
                            }
                            else
                            {
                                temp[threadIdx.x] = 18;
                            }
                        }
                        else
                        {
                            if (input[i] == (17 + offset[1]))
                            {
                                temp[threadIdx.x] = 17;
                            }
                            else
                            {
                                temp[threadIdx.x] = 16;
                            }
                        }
                    }
                }
            }
            else
            {
                if (input[i] > (7 + offset[1]))
                {
                    if (input[i] > (11 + offset[1]))
                    {
                        if (input[i] > (13 + offset[1]))
                        {
                            if (input[i] == (15 + offset[1]))
                            {
                                temp[threadIdx.x] = 15;
                            }
                            else
                            {
                                temp[threadIdx.x] = 14;
                            }
                        }
                        else
                        {
                            if (input[i] == (13 + offset[1]))
                            {
                                temp[threadIdx.x] = 13;
                            }
                            else
                            {
                                temp[threadIdx.x] = 12;
                            }
                        }
                    }
                    else
                    {
                        if (input[i] > (9 + offset[1]))
                        {
                            if (input[i] == (11 + offset[1]))
                            {
                                temp[threadIdx.x] = 11;
                            }
                            else
                            {
                                temp[threadIdx.x] = 10;
                            }
                        }
                        else
                        {
                            if (input[i] == (9 + offset[1]))
                            {
                                temp[threadIdx.x] = 9;
                            }
                            else
                            {
                                temp[threadIdx.x] = 8;
                            }
                        }
                    }
                }
                else
                {
                    if (input[i] > (3 + offset[1]))
                    {
                        if (input[i] > (5 + offset[1]))
                        {
                            if (input[i] == (7 + offset[1]))
                            {
                                temp[threadIdx.x] = 7;
                            }
                            else
                            {
                                temp[threadIdx.x] = 6;
                            }
                        }
                        else
                        {
                            if (input[i] == (5 + offset[1]))
                            {
                                temp[threadIdx.x] = 5;
                            }
                            else
                            {
                                temp[threadIdx.x] = 4;
                            }
                        }
                    }
                    else
                    {
                        if (input[i] > (1 + offset[1]))
                        {
                            if (input[i] == (3 + offset[1]))
                            {
                                temp[threadIdx.x] = 3;
                            }
                            else
                            {
                                temp[threadIdx.x] = 2;
                            }
                        }
                        else
                        {
                            if (input[i] == (1 + offset[1]))
                            {
                                temp[threadIdx.x] = 1;
                            }
                            else
                            {
                                temp[threadIdx.x] = 0;
                            }
                        }
                    }
                }
            }

            if (input[i] > (15 + offset[2]))
            {
                if (input[i] > (23 + offset[2]))
                {
                    if (input[i] > (27 + offset[2]))
                    {
                        if (input[i] > (29 + offset[2]))
                        {
                            if (input[i] == (31 + offset[2]))
                            {
                                temp[threadIdx.x] = 31;
                            }
                            else
                            {
                                temp[threadIdx.x] = 30;
                            }
                        }
                        else
                        {
                            if (input[i] == (29 + offset[2]))
                            {
                                temp[threadIdx.x] = 29;
                            }
                            else
                            {
                                temp[threadIdx.x] = 28;
                            }
                        }
                    }
                    else
                    {
                        if (input[i] > (25 + offset[2]))
                        {
                            if (input[i] == (27 + offset[2]))
                            {
                                temp[threadIdx.x] = 27;
                            }
                            else
                            {
                                temp[threadIdx.x] = 26;
                            }
                        }
                        else
                        {
                            if (input[i] == (25 + offset[2]))
                            {
                                temp[threadIdx.x] = 25;
                            }
                            else
                            {
                                temp[threadIdx.x] = 24;
                            }
                        }
                    }
                }
                else
                {
                    if (input[i] > (19 + offset[2]))
                    {
                        if (input[i] > (21 + offset[2]))
                        {
                            if (input[i] == (23 + offset[2]))
                            {
                                temp[threadIdx.x] = 23;
                            }
                            else
                            {
                                temp[threadIdx.x] = 22;
                            }
                        }
                        else
                        {
                            if (input[i] == (21 + offset[2]))
                            {
                                temp[threadIdx.x] = 21;
                            }
                            else
                            {
                                temp[threadIdx.x] = 20;
                            }
                        }
                    }
                    else
                    {
                        if (input[i] > (17 + offset[2]))
                        {
                            if (input[i] == (19 + offset[2]))
                            {
                                temp[threadIdx.x] = 19;
                            }
                            else
                            {
                                temp[threadIdx.x] = 18;
                            }
                        }
                        else
                        {
                            if (input[i] == (17 + offset[2]))
                            {
                                temp[threadIdx.x] = 17;
                            }
                            else
                            {
                                temp[threadIdx.x] = 16;
                            }
                        }
                    }
                }
            }
            else
            {
                if (input[i] > (7 + offset[2]))
                {
                    if (input[i] > (11 + offset[2]))
                    {
                        if (input[i] > (13 + offset[2]))
                        {
                            if (input[i] == (15 + offset[2]))
                            {
                                temp[threadIdx.x] = 15;
                            }
                            else
                            {
                                temp[threadIdx.x] = 14;
                            }
                        }
                        else
                        {
                            if (input[i] == (13 + offset[2]))
                            {
                                temp[threadIdx.x] = 13;
                            }
                            else
                            {
                                temp[threadIdx.x] = 12;
                            }
                        }
                    }
                    else
                    {
                        if (input[i] > (9 + offset[2]))
                        {
                            if (input[i] == (11 + offset[2]))
                            {
                                temp[threadIdx.x] = 11;
                            }
                            else
                            {
                                temp[threadIdx.x] = 10;
                            }
                        }
                        else
                        {
                            if (input[i] == (9 + offset[2]))
                            {
                                temp[threadIdx.x] = 9;
                            }
                            else
                            {
                                temp[threadIdx.x] = 8;
                            }
                        }
                    }
                }
                else
                {
                    if (input[i] > (3 + offset[2]))
                    {
                        if (input[i] > (5 + offset[2]))
                        {
                            if (input[i] == (7 + offset[2]))
                            {
                                temp[threadIdx.x] = 7;
                            }
                            else
                            {
                                temp[threadIdx.x] = 6;
                            }
                        }
                        else
                        {
                            if (input[i] == (5 + offset[2]))
                            {
                                temp[threadIdx.x] = 5;
                            }
                            else
                            {
                                temp[threadIdx.x] = 4;
                            }
                        }
                    }
                    else
                    {
                        if (input[i] > (1 + offset[2]))
                        {
                            if (input[i] == (3 + offset[2]))
                            {
                                temp[threadIdx.x] = 3;
                            }
                            else
                            {
                                temp[threadIdx.x] = 2;
                            }
                        }
                        else
                        {
                            if (input[i] == (1 + offset[2]))
                            {
                                temp[threadIdx.x] = 1;
                            }
                            else
                            {
                                temp[threadIdx.x] = 0;
                            }
                        }
                    }
                }
            }

            if (input[i] > (15 + offset[3]))
            {
                if (input[i] > (23 + offset[3]))
                {
                    if (input[i] > (27 + offset[3]))
                    {
                        if (input[i] > (29 + offset[3]))
                        {
                            if (input[i] == (31 + offset[3]))
                            {
                                temp[threadIdx.x] = 31;
                            }
                            else
                            {
                                temp[threadIdx.x] = 30;
                            }
                        }
                        else
                        {
                            if (input[i] == (29 + offset[3]))
                            {
                                temp[threadIdx.x] = 29;
                            }
                            else
                            {
                                temp[threadIdx.x] = 28;
                            }
                        }
                    }
                    else
                    {
                        if (input[i] > (25 + offset[3]))
                        {
                            if (input[i] == (27 + offset[3]))
                            {
                                temp[threadIdx.x] = 27;
                            }
                            else
                            {
                                temp[threadIdx.x] = 26;
                            }
                        }
                        else
                        {
                            if (input[i] == (25 + offset[3]))
                            {
                                temp[threadIdx.x] = 25;
                            }
                            else
                            {
                                temp[threadIdx.x] = 24;
                            }
                        }
                    }
                }
                else
                {
                    if (input[i] > (19 + offset[3]))
                    {
                        if (input[i] > (21 + offset[3]))
                        {
                            if (input[i] == (23 + offset[3]))
                            {
                                temp[threadIdx.x] = 23;
                            }
                            else
                            {
                                temp[threadIdx.x] = 22;
                            }
                        }
                        else
                        {
                            if (input[i] == (21 + offset[3]))
                            {
                                temp[threadIdx.x] = 21;
                            }
                            else
                            {
                                temp[threadIdx.x] = 20;
                            }
                        }
                    }
                    else
                    {
                        if (input[i] > (17 + offset[3]))
                        {
                            if (input[i] == (19 + offset[3]))
                            {
                                temp[threadIdx.x] = 19;
                            }
                            else
                            {
                                temp[threadIdx.x] = 18;
                            }
                        }
                        else
                        {
                            if (input[i] == (17 + offset[3]))
                            {
                                temp[threadIdx.x] = 17;
                            }
                            else
                            {
                                temp[threadIdx.x] = 16;
                            }
                        }
                    }
                }
            }
            else
            {
                if (input[i] > (7 + offset[3]))
                {
                    if (input[i] > (11 + offset[3]))
                    {
                        if (input[i] > (13 + offset[3]))
                        {
                            if (input[i] == (15 + offset[3]))
                            {
                                temp[threadIdx.x] = 15;
                            }
                            else
                            {
                                temp[threadIdx.x] = 14;
                            }
                        }
                        else
                        {
                            if (input[i] == (13 + offset[3]))
                            {
                                temp[threadIdx.x] = 13;
                            }
                            else
                            {
                                temp[threadIdx.x] = 12;
                            }
                        }
                    }
                    else
                    {
                        if (input[i] > (9 + offset[3]))
                        {
                            if (input[i] == (11 + offset[3]))
                            {
                                temp[threadIdx.x] = 11;
                            }
                            else
                            {
                                temp[threadIdx.x] = 10;
                            }
                        }
                        else
                        {
                            if (input[i] == (9 + offset[3]))
                            {
                                temp[threadIdx.x] = 9;
                            }
                            else
                            {
                                temp[threadIdx.x] = 8;
                            }
                        }
                    }
                }
                else
                {
                    if (input[i] > (3 + offset[3]))
                    {
                        if (input[i] > (5 + offset[3]))
                        {
                            if (input[i] == (7 + offset[3]))
                            {
                                temp[threadIdx.x] = 7;
                            }
                            else
                            {
                                temp[threadIdx.x] = 6;
                            }
                        }
                        else
                        {
                            if (input[i] == (5 + offset[3]))
                            {
                                temp[threadIdx.x] = 5;
                            }
                            else
                            {
                                temp[threadIdx.x] = 4;
                            }
                        }
                    }
                    else
                    {
                        if (input[i] > (1 + offset[3]))
                        {
                            if (input[i] == (3 + offset[3]))
                            {
                                temp[threadIdx.x] = 3;
                            }
                            else
                            {
                                temp[threadIdx.x] = 2;
                            }
                        }
                        else
                        {
                            if (input[i] == (1 + offset[3]))
                            {
                                temp[threadIdx.x] = 1;
                            }
                            else
                            {
                                temp[threadIdx.x] = 0;
                            }
                        }
                    }
                }
            }
            if (input[i] > (15 + offset[4]))
            {
                if (input[i] > (23 + offset[4]))
                {
                    if (input[i] > (27 + offset[4]))
                    {
                        if (input[i] > (29 + offset[4]))
                        {
                            if (input[i] == (31 + offset[4]))
                            {
                                temp[threadIdx.x] = 31;
                            }
                            else
                            {
                                temp[threadIdx.x] = 30;
                            }
                        }
                        else
                        {
                            if (input[i] == (29 + offset[4]))
                            {
                                temp[threadIdx.x] = 29;
                            }
                            else
                            {
                                temp[threadIdx.x] = 28;
                            }
                        }
                    }
                    else
                    {
                        if (input[i] > (25 + offset[4]))
                        {
                            if (input[i] == (27 + offset[4]))
                            {
                                temp[threadIdx.x] = 27;
                            }
                            else
                            {
                                temp[threadIdx.x] = 26;
                            }
                        }
                        else
                        {
                            if (input[i] == (25 + offset[4]))
                            {
                                temp[threadIdx.x] = 25;
                            }
                            else
                            {
                                temp[threadIdx.x] = 24;
                            }
                        }
                    }
                }
                else
                {
                    if (input[i] > (19 + offset[4]))
                    {
                        if (input[i] > (21 + offset[4]))
                        {
                            if (input[i] == (23 + offset[4]))
                            {
                                temp[threadIdx.x] = 23;
                            }
                            else
                            {
                                temp[threadIdx.x] = 22;
                            }
                        }
                        else
                        {
                            if (input[i] == (21 + offset[4]))
                            {
                                temp[threadIdx.x] = 21;
                            }
                            else
                            {
                                temp[threadIdx.x] = 20;
                            }
                        }
                    }
                    else
                    {
                        if (input[i] > (17 + offset[4]))
                        {
                            if (input[i] == (19 + offset[4]))
                            {
                                temp[threadIdx.x] = 19;
                            }
                            else
                            {
                                temp[threadIdx.x] = 18;
                            }
                        }
                        else
                        {
                            if (input[i] == (17 + offset[4]))
                            {
                                temp[threadIdx.x] = 17;
                            }
                            else
                            {
                                temp[threadIdx.x] = 16;
                            }
                        }
                    }
                }
            }
            else
            {
                if (input[i] > (7 + offset[4]))
                {
                    if (input[i] > (11 + offset[4]))
                    {
                        if (input[i] > (13 + offset[4]))
                        {
                            if (input[i] == (15 + offset[4]))
                            {
                                temp[threadIdx.x] = 15;
                            }
                            else
                            {
                                temp[threadIdx.x] = 14;
                            }
                        }
                        else
                        {
                            if (input[i] == (13 + offset[4]))
                            {
                                temp[threadIdx.x] = 13;
                            }
                            else
                            {
                                temp[threadIdx.x] = 12;
                            }
                        }
                    }
                    else
                    {
                        if (input[i] > (9 + offset[4]))
                        {
                            if (input[i] == (11 + offset[4]))
                            {
                                temp[threadIdx.x] = 11;
                            }
                            else
                            {
                                temp[threadIdx.x] = 10;
                            }
                        }
                        else
                        {
                            if (input[i] == (9 + offset[4]))
                            {
                                temp[threadIdx.x] = 9;
                            }
                            else
                            {
                                temp[threadIdx.x] = 8;
                            }
                        }
                    }
                }
                else
                {
                    if (input[i] > (3 + offset[4]))
                    {
                        if (input[i] > (5 + offset[4]))
                        {
                            if (input[i] == (7 + offset[4]))
                            {
                                temp[threadIdx.x] = 7;
                            }
                            else
                            {
                                temp[threadIdx.x] = 6;
                            }
                        }
                        else
                        {
                            if (input[i] == (5 + offset[4]))
                            {
                                temp[threadIdx.x] = 5;
                            }
                            else
                            {
                                temp[threadIdx.x] = 4;
                            }
                        }
                    }
                    else
                    {
                        if (input[i] > (1 + offset[4]))
                        {
                            if (input[i] == (3 + offset[4]))
                            {
                                temp[threadIdx.x] = 3;
                            }
                            else
                            {
                                temp[threadIdx.x] = 2;
                            }
                        }
                        else
                        {
                            if (input[i] == (1 + offset[4]))
                            {
                                temp[threadIdx.x] = 1;
                            }
                            else
                            {
                                temp[threadIdx.x] = 0;
                            }
                        }
                    }
                }
            }
        }
        else
        {
            if (input[i] > (15 + offset[5]))
            {
                if (input[i] > (23 + offset[5]))
                {
                    if (input[i] > (27 + offset[5]))
                    {
                        if (input[i] > (29 + offset[5]))
                        {
                            if (input[i] == (31 + offset[5]))
                            {
                                temp[threadIdx.x] = 31;
                            }
                            else
                            {
                                temp[threadIdx.x] = 30;
                            }
                        }
                        else
                        {
                            if (input[i] == (29 + offset[5]))
                            {
                                temp[threadIdx.x] = 29;
                            }
                            else
                            {
                                temp[threadIdx.x] = 28;
                            }
                        }
                    }
                    else
                    {
                        if (input[i] > (25 + offset[5]))
                        {
                            if (input[i] == (27 + offset[5]))
                            {
                                temp[threadIdx.x] = 27;
                            }
                            else
                            {
                                temp[threadIdx.x] = 26;
                            }
                        }
                        else
                        {
                            if (input[i] == (25 + offset[5]))
                            {
                                temp[threadIdx.x] = 25;
                            }
                            else
                            {
                                temp[threadIdx.x] = 24;
                            }
                        }
                    }
                }
                else
                {
                    if (input[i] > (19 + offset[5]))
                    {
                        if (input[i] > (21 + offset[5]))
                        {
                            if (input[i] == (23 + offset[5]))
                            {
                                temp[threadIdx.x] = 23;
                            }
                            else
                            {
                                temp[threadIdx.x] = 22;
                            }
                        }
                        else
                        {
                            if (input[i] == (21 + offset[5]))
                            {
                                temp[threadIdx.x] = 21;
                            }
                            else
                            {
                                temp[threadIdx.x] = 20;
                            }
                        }
                    }
                    else
                    {
                        if (input[i] > (17 + offset[5]))
                        {
                            if (input[i] == (19 + offset[5]))
                            {
                                temp[threadIdx.x] = 19;
                            }
                            else
                            {
                                temp[threadIdx.x] = 18;
                            }
                        }
                        else
                        {
                            if (input[i] == (17 + offset[5]))
                            {
                                temp[threadIdx.x] = 17;
                            }
                            else
                            {
                                temp[threadIdx.x] = 16;
                            }
                        }
                    }
                }
            }
            else
            {
                if (input[i] > (7 + offset[5]))
                {
                    if (input[i] > (11 + offset[5]))
                    {
                        if (input[i] > (13 + offset[5]))
                        {
                            if (input[i] == (15 + offset[5]))
                            {
                                temp[threadIdx.x] = 15;
                            }
                            else
                            {
                                temp[threadIdx.x] = 14;
                            }
                        }
                        else
                        {
                            if (input[i] == (13 + offset[5]))
                            {
                                temp[threadIdx.x] = 13;
                            }
                            else
                            {
                                temp[threadIdx.x] = 12;
                            }
                        }
                    }
                    else
                    {
                        if (input[i] > (9 + offset[5]))
                        {
                            if (input[i] == (11 + offset[5]))
                            {
                                temp[threadIdx.x] = 11;
                            }
                            else
                            {
                                temp[threadIdx.x] = 10;
                            }
                        }
                        else
                        {
                            if (input[i] == (9 + offset[5]))
                            {
                                temp[threadIdx.x] = 9;
                            }
                            else
                            {
                                temp[threadIdx.x] = 8;
                            }
                        }
                    }
                }
                else
                {
                    if (input[i] > (3 + offset[5]))
                    {
                        if (input[i] > (5 + offset[5]))
                        {
                            if (input[i] == (7 + offset[5]))
                            {
                                temp[threadIdx.x] = 7;
                            }
                            else
                            {
                                temp[threadIdx.x] = 6;
                            }
                        }
                        else
                        {
                            if (input[i] == (5 + offset[5]))
                            {
                                temp[threadIdx.x] = 5;
                            }
                            else
                            {
                                temp[threadIdx.x] = 4;
                            }
                        }
                    }
                    else
                    {
                        if (input[i] > (1 + offset[5]))
                        {
                            if (input[i] == (3 + offset[5]))
                            {
                                temp[threadIdx.x] = 3;
                            }
                            else
                            {
                                temp[threadIdx.x] = 2;
                            }
                        }
                        else
                        {
                            if (input[i] == (1 + offset[5]))
                            {
                                temp[threadIdx.x] = 1;
                            }
                            else
                            {
                                temp[threadIdx.x] = 0;
                            }
                        }
                    }
                }
            }

            if (input[i] > (15 + offset[6]))
            {
                if (input[i] > (23 + offset[6]))
                {
                    if (input[i] > (27 + offset[6]))
                    {
                        if (input[i] > (29 + offset[6]))
                        {
                            if (input[i] == (31 + offset[6]))
                            {
                                temp[threadIdx.x] = 31;
                            }
                            else
                            {
                                temp[threadIdx.x] = 30;
                            }
                        }
                        else
                        {
                            if (input[i] == (29 + offset[6]))
                            {
                                temp[threadIdx.x] = 29;
                            }
                            else
                            {
                                temp[threadIdx.x] = 28;
                            }
                        }
                    }
                    else
                    {
                        if (input[i] > (25 + offset[6]))
                        {
                            if (input[i] == (27 + offset[6]))
                            {
                                temp[threadIdx.x] = 27;
                            }
                            else
                            {
                                temp[threadIdx.x] = 26;
                            }
                        }
                        else
                        {
                            if (input[i] == (25 + offset[6]))
                            {
                                temp[threadIdx.x] = 25;
                            }
                            else
                            {
                                temp[threadIdx.x] = 24;
                            }
                        }
                    }
                }
                else
                {
                    if (input[i] > (19 + offset[6]))
                    {
                        if (input[i] > (21 + offset[6]))
                        {
                            if (input[i] == (23 + offset[6]))
                            {
                                temp[threadIdx.x] = 23;
                            }
                            else
                            {
                                temp[threadIdx.x] = 22;
                            }
                        }
                        else
                        {
                            if (input[i] == (21 + offset[6]))
                            {
                                temp[threadIdx.x] = 21;
                            }
                            else
                            {
                                temp[threadIdx.x] = 20;
                            }
                        }
                    }
                    else
                    {
                        if (input[i] > (17 + offset[6]))
                        {
                            if (input[i] == (19 + offset[6]))
                            {
                                temp[threadIdx.x] = 19;
                            }
                            else
                            {
                                temp[threadIdx.x] = 18;
                            }
                        }
                        else
                        {
                            if (input[i] == (17 + offset[6]))
                            {
                                temp[threadIdx.x] = 17;
                            }
                            else
                            {
                                temp[threadIdx.x] = 16;
                            }
                        }
                    }
                }
            }
            else
            {
                if (input[i] > (7 + offset[6]))
                {
                    if (input[i] > (11 + offset[6]))
                    {
                        if (input[i] > (13 + offset[6]))
                        {
                            if (input[i] == (15 + offset[6]))
                            {
                                temp[threadIdx.x] = 15;
                            }
                            else
                            {
                                temp[threadIdx.x] = 14;
                            }
                        }
                        else
                        {
                            if (input[i] == (13 + offset[6]))
                            {
                                temp[threadIdx.x] = 13;
                            }
                            else
                            {
                                temp[threadIdx.x] = 12;
                            }
                        }
                    }
                    else
                    {
                        if (input[i] > (9 + offset[6]))
                        {
                            if (input[i] == (11 + offset[6]))
                            {
                                temp[threadIdx.x] = 11;
                            }
                            else
                            {
                                temp[threadIdx.x] = 10;
                            }
                        }
                        else
                        {
                            if (input[i] == (9 + offset[6]))
                            {
                                temp[threadIdx.x] = 9;
                            }
                            else
                            {
                                temp[threadIdx.x] = 8;
                            }
                        }
                    }
                }
                else
                {
                    if (input[i] > (3 + offset[6]))
                    {
                        if (input[i] > (5 + offset[6]))
                        {
                            if (input[i] == (7 + offset[6]))
                            {
                                temp[threadIdx.x] = 7;
                            }
                            else
                            {
                                temp[threadIdx.x] = 6;
                            }
                        }
                        else
                        {
                            if (input[i] == (5 + offset[6]))
                            {
                                temp[threadIdx.x] = 5;
                            }
                            else
                            {
                                temp[threadIdx.x] = 4;
                            }
                        }
                    }
                    else
                    {
                        if (input[i] > (1 + offset[6]))
                        {
                            if (input[i] == (3 + offset[6]))
                            {
                                temp[threadIdx.x] = 3;
                            }
                            else
                            {
                                temp[threadIdx.x] = 2;
                            }
                        }
                        else
                        {
                            if (input[i] == (1 + offset[6]))
                            {
                                temp[threadIdx.x] = 1;
                            }
                            else
                            {
                                temp[threadIdx.x] = 0;
                            }
                        }
                    }
                }
            }

            if (input[i] > (15 + offset[7]))
            {
                if (input[i] > (23 + offset[7]))
                {
                    if (input[i] > (27 + offset[7]))
                    {
                        if (input[i] > (29 + offset[7]))
                        {
                            if (input[i] == (31 + offset[7]))
                            {
                                temp[threadIdx.x] = 31;
                            }
                            else
                            {
                                temp[threadIdx.x] = 30;
                            }
                        }
                        else
                        {
                            if (input[i] == (29 + offset[7]))
                            {
                                temp[threadIdx.x] = 29;
                            }
                            else
                            {
                                temp[threadIdx.x] = 28;
                            }
                        }
                    }
                    else
                    {
                        if (input[i] > (25 + offset[7]))
                        {
                            if (input[i] == (27 + offset[7]))
                            {
                                temp[threadIdx.x] = 27;
                            }
                            else
                            {
                                temp[threadIdx.x] = 26;
                            }
                        }
                        else
                        {
                            if (input[i] == (25 + offset[7]))
                            {
                                temp[threadIdx.x] = 25;
                            }
                            else
                            {
                                temp[threadIdx.x] = 24;
                            }
                        }
                    }
                }
                else
                {
                    if (input[i] > (19 + offset[7]))
                    {
                        if (input[i] > (21 + offset[7]))
                        {
                            if (input[i] == (23 + offset[7]))
                            {
                                temp[threadIdx.x] = 23;
                            }
                            else
                            {
                                temp[threadIdx.x] = 22;
                            }
                        }
                        else
                        {
                            if (input[i] == (21 + offset[7]))
                            {
                                temp[threadIdx.x] = 21;
                            }
                            else
                            {
                                temp[threadIdx.x] = 20;
                            }
                        }
                    }
                    else
                    {
                        if (input[i] > (17 + offset[7]))
                        {
                            if (input[i] == (19 + offset[7]))
                            {
                                temp[threadIdx.x] = 19;
                            }
                            else
                            {
                                temp[threadIdx.x] = 18;
                            }
                        }
                        else
                        {
                            if (input[i] == (17 + offset[7]))
                            {
                                temp[threadIdx.x] = 17;
                            }
                            else
                            {
                                temp[threadIdx.x] = 16;
                            }
                        }
                    }
                }
            }
            else
            {
                if (input[i] > (7 + offset[7]))
                {
                    if (input[i] > (11 + offset[7]))
                    {
                        if (input[i] > (13 + offset[7]))
                        {
                            if (input[i] == (15 + offset[7]))
                            {
                                temp[threadIdx.x] = 15;
                            }
                            else
                            {
                                temp[threadIdx.x] = 14;
                            }
                        }
                        else
                        {
                            if (input[i] == (13 + offset[7]))
                            {
                                temp[threadIdx.x] = 13;
                            }
                            else
                            {
                                temp[threadIdx.x] = 12;
                            }
                        }
                    }
                    else
                    {
                        if (input[i] > (9 + offset[7]))
                        {
                            if (input[i] == (11 + offset[7]))
                            {
                                temp[threadIdx.x] = 11;
                            }
                            else
                            {
                                temp[threadIdx.x] = 10;
                            }
                        }
                        else
                        {
                            if (input[i] == (9 + offset[7]))
                            {
                                temp[threadIdx.x] = 9;
                            }
                            else
                            {
                                temp[threadIdx.x] = 8;
                            }
                        }
                    }
                }
                else
                {
                    if (input[i] > (3 + offset[7]))
                    {
                        if (input[i] > (5 + offset[7]))
                        {
                            if (input[i] == (7 + offset[7]))
                            {
                                temp[threadIdx.x] = 7;
                            }
                            else
                            {
                                temp[threadIdx.x] = 6;
                            }
                        }
                        else
                        {
                            if (input[i] == (5 + offset[7]))
                            {
                                temp[threadIdx.x] = 5;
                            }
                            else
                            {
                                temp[threadIdx.x] = 4;
                            }
                        }
                    }
                    else
                    {
                        if (input[i] > (1 + offset[7]))
                        {
                            if (input[i] == (3 + offset[7]))
                            {
                                temp[threadIdx.x] = 3;
                            }
                            else
                            {
                                temp[threadIdx.x] = 2;
                            }
                        }
                        else
                        {
                            if (input[i] == (1 + offset[7]))
                            {
                                temp[threadIdx.x] = 1;
                            }
                            else
                            {
                                temp[threadIdx.x] = 0;
                            }
                        }
                    }
                }
            }

            if (input[i] > (15 + offset[8]))
            {
                if (input[i] > (23 + offset[8]))
                {
                    if (input[i] > (27 + offset[8]))
                    {
                        if (input[i] > (29 + offset[8]))
                        {
                            if (input[i] == (31 + offset[8]))
                            {
                                temp[threadIdx.x] = 31;
                            }
                            else
                            {
                                temp[threadIdx.x] = 30;
                            }
                        }
                        else
                        {
                            if (input[i] == (29 + offset[8]))
                            {
                                temp[threadIdx.x] = 29;
                            }
                            else
                            {
                                temp[threadIdx.x] = 28;
                            }
                        }
                    }
                    else
                    {
                        if (input[i] > (25 + offset[8]))
                        {
                            if (input[i] == (27 + offset[8]))
                            {
                                temp[threadIdx.x] = 27;
                            }
                            else
                            {
                                temp[threadIdx.x] = 26;
                            }
                        }
                        else
                        {
                            if (input[i] == (25 + offset[8]))
                            {
                                temp[threadIdx.x] = 25;
                            }
                            else
                            {
                                temp[threadIdx.x] = 24;
                            }
                        }
                    }
                }
                else
                {
                    if (input[i] > (19 + offset[8]))
                    {
                        if (input[i] > (21 + offset[8]))
                        {
                            if (input[i] == (23 + offset[8]))
                            {
                                temp[threadIdx.x] = 23;
                            }
                            else
                            {
                                temp[threadIdx.x] = 22;
                            }
                        }
                        else
                        {
                            if (input[i] == (21 + offset[8]))
                            {
                                temp[threadIdx.x] = 21;
                            }
                            else
                            {
                                temp[threadIdx.x] = 20;
                            }
                        }
                    }
                    else
                    {
                        if (input[i] > (17 + offset[8]))
                        {
                            if (input[i] == (19 + offset[8]))
                            {
                                temp[threadIdx.x] = 19;
                            }
                            else
                            {
                                temp[threadIdx.x] = 18;
                            }
                        }
                        else
                        {
                            if (input[i] == (17 + offset[8]))
                            {
                                temp[threadIdx.x] = 17;
                            }
                            else
                            {
                                temp[threadIdx.x] = 16;
                            }
                        }
                    }
                }
            }
            else
            {
                if (input[i] > (7 + offset[8]))
                {
                    if (input[i] > (11 + offset[8]))
                    {
                        if (input[i] > (13 + offset[8]))
                        {
                            if (input[i] == (15 + offset[8]))
                            {
                                temp[threadIdx.x] = 15;
                            }
                            else
                            {
                                temp[threadIdx.x] = 14;
                            }
                        }
                        else
                        {
                            if (input[i] == (13 + offset[8]))
                            {
                                temp[threadIdx.x] = 13;
                            }
                            else
                            {
                                temp[threadIdx.x] = 12;
                            }
                        }
                    }
                    else
                    {
                        if (input[i] > (9 + offset[8]))
                        {
                            if (input[i] == (11 + offset[8]))
                            {
                                temp[threadIdx.x] = 11;
                            }
                            else
                            {
                                temp[threadIdx.x] = 10;
                            }
                        }
                        else
                        {
                            if (input[i] == (9 + offset[8]))
                            {
                                temp[threadIdx.x] = 9;
                            }
                            else
                            {
                                temp[threadIdx.x] = 8;
                            }
                        }
                    }
                }
                else
                {
                    if (input[i] > (3 + offset[8]))
                    {
                        if (input[i] > (5 + offset[8]))
                        {
                            if (input[i] == (7 + offset[8]))
                            {
                                temp[threadIdx.x] = 7;
                            }
                            else
                            {
                                temp[threadIdx.x] = 6;
                            }
                        }
                        else
                        {
                            if (input[i] == (5 + offset[8]))
                            {
                                temp[threadIdx.x] = 5;
                            }
                            else
                            {
                                temp[threadIdx.x] = 4;
                            }
                        }
                    }
                    else
                    {
                        if (input[i] > (1 + offset[8]))
                        {
                            if (input[i] == (3 + offset[8]))
                            {
                                temp[threadIdx.x] = 3;
                            }
                            else
                            {
                                temp[threadIdx.x] = 2;
                            }
                        }
                        else
                        {
                            if (input[i] == (1 + offset[8]))
                            {
                                temp[threadIdx.x] = 1;
                            }
                            else
                            {
                                temp[threadIdx.x] = 0;
                            }
                        }
                    }
                }
            }

            if (input[i] > (15 + offset[9]))
            {
                if (input[i] > (23 + offset[9]))
                {
                    if (input[i] > (27 + offset[9]))
                    {
                        if (input[i] > (29 + offset[9]))
                        {
                            if (input[i] == (31 + offset[9]))
                            {
                                temp[threadIdx.x] = 31;
                            }
                            else
                            {
                                temp[threadIdx.x] = 30;
                            }
                        }
                        else
                        {
                            if (input[i] == (29 + offset[9]))
                            {
                                temp[threadIdx.x] = 29;
                            }
                            else
                            {
                                temp[threadIdx.x] = 28;
                            }
                        }
                    }
                    else
                    {
                        if (input[i] > (25 + offset[9]))
                        {
                            if (input[i] == (27 + offset[9]))
                            {
                                temp[threadIdx.x] = 27;
                            }
                            else
                            {
                                temp[threadIdx.x] = 26;
                            }
                        }
                        else
                        {
                            if (input[i] == (25 + offset[9]))
                            {
                                temp[threadIdx.x] = 25;
                            }
                            else
                            {
                                temp[threadIdx.x] = 24;
                            }
                        }
                    }
                }
                else
                {
                    if (input[i] > (19 + offset[9]))
                    {
                        if (input[i] > (21 + offset[9]))
                        {
                            if (input[i] == (23 + offset[9]))
                            {
                                temp[threadIdx.x] = 23;
                            }
                            else
                            {
                                temp[threadIdx.x] = 22;
                            }
                        }
                        else
                        {
                            if (input[i] == (21 + offset[9]))
                            {
                                temp[threadIdx.x] = 21;
                            }
                            else
                            {
                                temp[threadIdx.x] = 20;
                            }
                        }
                    }
                    else
                    {
                        if (input[i] > (17 + offset[9]))
                        {
                            if (input[i] == (19 + offset[9]))
                            {
                                temp[threadIdx.x] = 19;
                            }
                            else
                            {
                                temp[threadIdx.x] = 18;
                            }
                        }
                        else
                        {
                            if (input[i] == (17 + offset[9]))
                            {
                                temp[threadIdx.x] = 17;
                            }
                            else
                            {
                                temp[threadIdx.x] = 16;
                            }
                        }
                    }
                }
            }
            else
            {
                if (input[i] > (7 + offset[9]))
                {
                    if (input[i] > (11 + offset[9]))
                    {
                        if (input[i] > (13 + offset[9]))
                        {
                            if (input[i] == (15 + offset[9]))
                            {
                                temp[threadIdx.x] = 15;
                            }
                            else
                            {
                                temp[threadIdx.x] = 14;
                            }
                        }
                        else
                        {
                            if (input[i] == (13 + offset[9]))
                            {
                                temp[threadIdx.x] = 13;
                            }
                            else
                            {
                                temp[threadIdx.x] = 12;
                            }
                        }
                    }
                    else
                    {
                        if (input[i] > (9 + offset[9]))
                        {
                            if (input[i] == (11 + offset[9]))
                            {
                                temp[threadIdx.x] = 11;
                            }
                            else
                            {
                                temp[threadIdx.x] = 10;
                            }
                        }
                        else
                        {
                            if (input[i] == (9 + offset[9]))
                            {
                                temp[threadIdx.x] = 9;
                            }
                            else
                            {
                                temp[threadIdx.x] = 8;
                            }
                        }
                    }
                }
                else
                {
                    if (input[i] > (3 + offset[9]))
                    {
                        if (input[i] > (5 + offset[9]))
                        {
                            if (input[i] == (7 + offset[9]))
                            {
                                temp[threadIdx.x] = 7;
                            }
                            else
                            {
                                temp[threadIdx.x] = 6;
                            }
                        }
                        else
                        {
                            if (input[i] == (5 + offset[9]))
                            {
                                temp[threadIdx.x] = 5;
                            }
                            else
                            {
                                temp[threadIdx.x] = 4;
                            }
                        }
                    }
                    else
                    {
                        if (input[i] > (1 + offset[9]))
                        {
                            if (input[i] == (3 + offset[9]))
                            {
                                temp[threadIdx.x] = 3;
                            }
                            else
                            {
                                temp[threadIdx.x] = 2;
                            }
                        }
                        else
                        {
                            if (input[i] == (1 + offset[9]))
                            {
                                temp[threadIdx.x] = 1;
                            }
                            else
                            {
                                temp[threadIdx.x] = 0;
                            }
                        }
                    }
                }
            }
        }
    }

    __syncthreads();
    if (threadIdx.x < 512)
    {
        vR[i] = temp[threadIdx.x] + temp[threadIdx.x + 512];
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

    printf("[CUDA - Random Forest]: Vector Size %d\n", nElem);

    // malloc host memory
    size_t nBytes = nElem * sizeof(float);
    size_t offsetBytes = OFFSET_SIZE * sizeof(int);

    float *h_vR;
    h_vR = (float *)malloc(nBytes);
    float *h_input;
    h_input = (float *)malloc(nBytes);
    int *h_offset = (int *)malloc(offsetBytes);

    printf("[CUDA - Random Forest]: Start Reading Dataset\n");
    initData(h_input, nElem);
    printf("[CUDA - Random Forest]: Finished Reading Dataset\n");
    memset(h_vR, 0, nBytes);
    memset(h_offset, 0, offsetBytes);

    // malloc device global memory
    float *d_vR;
    CHECK(cudaMalloc((float **)&d_vR, nBytes));
    float *d_input;
    CHECK(cudaMalloc((float **)&d_input, nBytes));
    int *d_offset;
    CHECK(cudaMalloc((float **)&d_offset, offsetBytes));

    // transfer data from host to device
    CHECK(cudaMemcpy(d_input, h_input, nBytes, cudaMemcpyHostToDevice));
    CHECK(cudaMemcpy(d_offset, h_offset, offsetBytes, cudaMemcpyHostToDevice));

    // invoke kernel at host side
    int iLen = 1024;
    dim3 block(iLen);
    dim3 grid((nElem + (block.x / 2) - 1) / (block.x / 2));
    cudaEvent_t start, stop;
    CHECK(cudaEventCreate(&start));
    CHECK(cudaEventCreate(&stop));

    // record start event
    CHECK(cudaEventRecord(start, 0));

    RF_kernel<<<grid, block>>>(d_input, nElem, d_offset, d_vR);

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
        if (i < WARP_SIZE)
        {
            printf("%.3f ", h_vR[i]);
        }
        if (2 * h_input[i] != h_vR[i])
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
    cudaFree(d_offset);

    // free host memory
    free(h_input);
    free(h_vR);
    free(h_offset);

    return (0);
}

void initData(float *ip, int size)
{
    for (int i = 0; i < size; i++)
    {

        if (WARP_SIZE <= _MOD)
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
