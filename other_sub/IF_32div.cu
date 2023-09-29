#include <sys/time.h>
#include <cuda_runtime.h>
#include <stdio.h>
#include <stdlib.h>
#include <stdbool.h>
#include <time.h>

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

#define _MOD 32
#define _1TREE
#define EXP_NAME "_RF_IF_1TREE_5LV_TOTAL_DIVERGENCE_GLOBAL"

__global__ void
RF_kernel(float *input, const int n, const int *offset, float *vR)
{
    int i = blockIdx.x * blockDim.x + threadIdx.x;
    
    if (threadIdx.x%WARP_SIZE == 0)
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
                            vR[i] = 31;
                        }
                        else
                        {
                            vR[i] = 30;
                        }
                    }
                    else
                    {
                        if (input[i] == (29 + offset[0]))
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
                    if (input[i] > (25 + offset[0]))
                    {
                        if (input[i] == (27 + offset[0]))
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
                        if (input[i] == (25 + offset[0]))
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
                if (input[i] > (19 + offset[0]))
                {
                    if (input[i] > (21 + offset[0]))
                    {
                        if (input[i] == (23 + offset[0]))
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
                        if (input[i] == (21 + offset[0]))
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
                    if (input[i] > (17 + offset[0]))
                    {
                        if (input[i] == (19 + offset[0]))
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
                        if (input[i] == (17 + offset[0]))
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
            if (input[i] > (7 + offset[0]))
            {
                if (input[i] > (11 + offset[0]))
                {
                    if (input[i] > (13 + offset[0]))
                    {
                        if (input[i] == (15 + offset[0]))
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
                        if (input[i] == (13 + offset[0]))
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
                    if (input[i] > (9 + offset[0]))
                    {
                        if (input[i] == (11 + offset[0]))
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
                        if (input[i] == (9 + offset[0]))
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
                if (input[i] > (3 + offset[0]))
                {
                    if (input[i] > (5 + offset[0]))
                    {
                        if (input[i] == (7 + offset[0]))
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
                        if (input[i] == (5 + offset[0]))
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
                    if (input[i] > (1 + offset[0]))
                    {
                        if (input[i] == (3 + offset[0]))
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
                        if (input[i] == (1 + offset[0]))
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
    else if (threadIdx.x%WARP_SIZE == 1)
    {
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
                            vR[i] = 31;
                        }
                        else
                        {
                            vR[i] = 30;
                        }
                    }
                    else
                    {
                        if (input[i] == (29 + offset[1]))
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
                    if (input[i] > (25 + offset[1]))
                    {
                        if (input[i] == (27 + offset[1]))
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
                        if (input[i] == (25 + offset[1]))
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
                if (input[i] > (19 + offset[1]))
                {
                    if (input[i] > (21 + offset[1]))
                    {
                        if (input[i] == (23 + offset[1]))
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
                        if (input[i] == (21 + offset[1]))
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
                    if (input[i] > (17 + offset[1]))
                    {
                        if (input[i] == (19 + offset[1]))
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
                        if (input[i] == (17 + offset[1]))
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
            if (input[i] > (7 + offset[1]))
            {
                if (input[i] > (11 + offset[1]))
                {
                    if (input[i] > (13 + offset[1]))
                    {
                        if (input[i] == (15 + offset[1]))
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
                        if (input[i] == (13 + offset[1]))
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
                    if (input[i] > (9 + offset[1]))
                    {
                        if (input[i] == (11 + offset[1]))
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
                        if (input[i] == (9 + offset[1]))
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
                if (input[i] > (3 + offset[1]))
                {
                    if (input[i] > (5 + offset[1]))
                    {
                        if (input[i] == (7 + offset[1]))
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
                        if (input[i] == (5 + offset[1]))
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
                    if (input[i] > (1 + offset[1]))
                    {
                        if (input[i] == (3 + offset[1]))
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
                        if (input[i] == (1 + offset[1]))
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
    else if (threadIdx.x%WARP_SIZE == 2)
    {
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
                            vR[i] = 31;
                        }
                        else
                        {
                            vR[i] = 30;
                        }
                    }
                    else
                    {
                        if (input[i] == (29 + offset[2]))
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
                    if (input[i] > (25 + offset[2]))
                    {
                        if (input[i] == (27 + offset[2]))
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
                        if (input[i] == (25 + offset[2]))
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
                if (input[i] > (19 + offset[2]))
                {
                    if (input[i] > (21 + offset[2]))
                    {
                        if (input[i] == (23 + offset[2]))
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
                        if (input[i] == (21 + offset[2]))
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
                    if (input[i] > (17 + offset[2]))
                    {
                        if (input[i] == (19 + offset[2]))
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
                        if (input[i] == (17 + offset[2]))
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
            if (input[i] > (7 + offset[2]))
            {
                if (input[i] > (11 + offset[2]))
                {
                    if (input[i] > (13 + offset[2]))
                    {
                        if (input[i] == (15 + offset[2]))
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
                        if (input[i] == (13 + offset[2]))
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
                    if (input[i] > (9 + offset[2]))
                    {
                        if (input[i] == (11 + offset[2]))
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
                        if (input[i] == (9 + offset[2]))
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
                if (input[i] > (3 + offset[2]))
                {
                    if (input[i] > (5 + offset[2]))
                    {
                        if (input[i] == (7 + offset[2]))
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
                        if (input[i] == (5 + offset[2]))
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
                    if (input[i] > (1 + offset[2]))
                    {
                        if (input[i] == (3 + offset[2]))
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
                        if (input[i] == (1 + offset[2]))
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
    else if (threadIdx.x%WARP_SIZE == 3)
    {
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
                            vR[i] = 31;
                        }
                        else
                        {
                            vR[i] = 30;
                        }
                    }
                    else
                    {
                        if (input[i] == (29 + offset[3]))
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
                    if (input[i] > (25 + offset[3]))
                    {
                        if (input[i] == (27 + offset[3]))
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
                        if (input[i] == (25 + offset[3]))
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
                if (input[i] > (19 + offset[3]))
                {
                    if (input[i] > (21 + offset[3]))
                    {
                        if (input[i] == (23 + offset[3]))
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
                        if (input[i] == (21 + offset[3]))
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
                    if (input[i] > (17 + offset[3]))
                    {
                        if (input[i] == (19 + offset[3]))
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
                        if (input[i] == (17 + offset[3]))
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
            if (input[i] > (7 + offset[3]))
            {
                if (input[i] > (11 + offset[3]))
                {
                    if (input[i] > (13 + offset[3]))
                    {
                        if (input[i] == (15 + offset[3]))
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
                        if (input[i] == (13 + offset[3]))
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
                    if (input[i] > (9 + offset[3]))
                    {
                        if (input[i] == (11 + offset[3]))
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
                        if (input[i] == (9 + offset[3]))
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
                if (input[i] > (3 + offset[3]))
                {
                    if (input[i] > (5 + offset[3]))
                    {
                        if (input[i] == (7 + offset[3]))
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
                        if (input[i] == (5 + offset[3]))
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
                    if (input[i] > (1 + offset[3]))
                    {
                        if (input[i] == (3 + offset[3]))
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
                        if (input[i] == (1 + offset[3]))
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
    else if (threadIdx.x%WARP_SIZE == 4)
    {
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
                            vR[i] = 31;
                        }
                        else
                        {
                            vR[i] = 30;
                        }
                    }
                    else
                    {
                        if (input[i] == (29 + offset[4]))
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
                    if (input[i] > (25 + offset[4]))
                    {
                        if (input[i] == (27 + offset[4]))
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
                        if (input[i] == (25 + offset[4]))
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
                if (input[i] > (19 + offset[4]))
                {
                    if (input[i] > (21 + offset[4]))
                    {
                        if (input[i] == (23 + offset[4]))
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
                        if (input[i] == (21 + offset[4]))
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
                    if (input[i] > (17 + offset[4]))
                    {
                        if (input[i] == (19 + offset[4]))
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
                        if (input[i] == (17 + offset[4]))
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
            if (input[i] > (7 + offset[4]))
            {
                if (input[i] > (11 + offset[4]))
                {
                    if (input[i] > (13 + offset[4]))
                    {
                        if (input[i] == (15 + offset[4]))
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
                        if (input[i] == (13 + offset[4]))
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
                    if (input[i] > (9 + offset[4]))
                    {
                        if (input[i] == (11 + offset[4]))
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
                        if (input[i] == (9 + offset[4]))
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
                if (input[i] > (3 + offset[4]))
                {
                    if (input[i] > (5 + offset[4]))
                    {
                        if (input[i] == (7 + offset[4]))
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
                        if (input[i] == (5 + offset[4]))
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
                    if (input[i] > (1 + offset[4]))
                    {
                        if (input[i] == (3 + offset[4]))
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
                        if (input[i] == (1 + offset[4]))
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
    else if (threadIdx.x%WARP_SIZE == 5)
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
                            vR[i] = 31;
                        }
                        else
                        {
                            vR[i] = 30;
                        }
                    }
                    else
                    {
                        if (input[i] == (29 + offset[5]))
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
                    if (input[i] > (25 + offset[5]))
                    {
                        if (input[i] == (27 + offset[5]))
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
                        if (input[i] == (25 + offset[5]))
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
                if (input[i] > (19 + offset[5]))
                {
                    if (input[i] > (21 + offset[5]))
                    {
                        if (input[i] == (23 + offset[5]))
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
                        if (input[i] == (21 + offset[5]))
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
                    if (input[i] > (17 + offset[5]))
                    {
                        if (input[i] == (19 + offset[5]))
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
                        if (input[i] == (17 + offset[5]))
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
            if (input[i] > (7 + offset[5]))
            {
                if (input[i] > (11 + offset[5]))
                {
                    if (input[i] > (13 + offset[5]))
                    {
                        if (input[i] == (15 + offset[5]))
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
                        if (input[i] == (13 + offset[5]))
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
                    if (input[i] > (9 + offset[5]))
                    {
                        if (input[i] == (11 + offset[5]))
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
                        if (input[i] == (9 + offset[5]))
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
                if (input[i] > (3 + offset[5]))
                {
                    if (input[i] > (5 + offset[5]))
                    {
                        if (input[i] == (7 + offset[5]))
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
                        if (input[i] == (5 + offset[5]))
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
                    if (input[i] > (1 + offset[5]))
                    {
                        if (input[i] == (3 + offset[5]))
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
                        if (input[i] == (1 + offset[5]))
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
    else if (threadIdx.x%WARP_SIZE == 6)
    {
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
                            vR[i] = 31;
                        }
                        else
                        {
                            vR[i] = 30;
                        }
                    }
                    else
                    {
                        if (input[i] == (29 + offset[6]))
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
                    if (input[i] > (25 + offset[6]))
                    {
                        if (input[i] == (27 + offset[6]))
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
                        if (input[i] == (25 + offset[6]))
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
                if (input[i] > (19 + offset[6]))
                {
                    if (input[i] > (21 + offset[6]))
                    {
                        if (input[i] == (23 + offset[6]))
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
                        if (input[i] == (21 + offset[6]))
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
                    if (input[i] > (17 + offset[6]))
                    {
                        if (input[i] == (19 + offset[6]))
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
                        if (input[i] == (17 + offset[6]))
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
            if (input[i] > (7 + offset[6]))
            {
                if (input[i] > (11 + offset[6]))
                {
                    if (input[i] > (13 + offset[6]))
                    {
                        if (input[i] == (15 + offset[6]))
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
                        if (input[i] == (13 + offset[6]))
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
                    if (input[i] > (9 + offset[6]))
                    {
                        if (input[i] == (11 + offset[6]))
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
                        if (input[i] == (9 + offset[6]))
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
                if (input[i] > (3 + offset[6]))
                {
                    if (input[i] > (5 + offset[6]))
                    {
                        if (input[i] == (7 + offset[6]))
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
                        if (input[i] == (5 + offset[6]))
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
                    if (input[i] > (1 + offset[6]))
                    {
                        if (input[i] == (3 + offset[6]))
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
                        if (input[i] == (1 + offset[6]))
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
    else if (threadIdx.x%WARP_SIZE == 7)
    {
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
                            vR[i] = 31;
                        }
                        else
                        {
                            vR[i] = 30;
                        }
                    }
                    else
                    {
                        if (input[i] == (29 + offset[7]))
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
                    if (input[i] > (25 + offset[7]))
                    {
                        if (input[i] == (27 + offset[7]))
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
                        if (input[i] == (25 + offset[7]))
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
                if (input[i] > (19 + offset[7]))
                {
                    if (input[i] > (21 + offset[7]))
                    {
                        if (input[i] == (23 + offset[7]))
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
                        if (input[i] == (21 + offset[7]))
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
                    if (input[i] > (17 + offset[7]))
                    {
                        if (input[i] == (19 + offset[7]))
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
                        if (input[i] == (17 + offset[7]))
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
            if (input[i] > (7 + offset[7]))
            {
                if (input[i] > (11 + offset[7]))
                {
                    if (input[i] > (13 + offset[7]))
                    {
                        if (input[i] == (15 + offset[7]))
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
                        if (input[i] == (13 + offset[7]))
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
                    if (input[i] > (9 + offset[7]))
                    {
                        if (input[i] == (11 + offset[7]))
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
                        if (input[i] == (9 + offset[7]))
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
                if (input[i] > (3 + offset[7]))
                {
                    if (input[i] > (5 + offset[7]))
                    {
                        if (input[i] == (7 + offset[7]))
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
                        if (input[i] == (5 + offset[7]))
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
                    if (input[i] > (1 + offset[7]))
                    {
                        if (input[i] == (3 + offset[7]))
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
                        if (input[i] == (1 + offset[7]))
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
    else if (threadIdx.x%WARP_SIZE == 8)
    {
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
                            vR[i] = 31;
                        }
                        else
                        {
                            vR[i] = 30;
                        }
                    }
                    else
                    {
                        if (input[i] == (29 + offset[8]))
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
                    if (input[i] > (25 + offset[8]))
                    {
                        if (input[i] == (27 + offset[8]))
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
                        if (input[i] == (25 + offset[8]))
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
                if (input[i] > (19 + offset[8]))
                {
                    if (input[i] > (21 + offset[8]))
                    {
                        if (input[i] == (23 + offset[8]))
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
                        if (input[i] == (21 + offset[8]))
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
                    if (input[i] > (17 + offset[8]))
                    {
                        if (input[i] == (19 + offset[8]))
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
                        if (input[i] == (17 + offset[8]))
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
            if (input[i] > (7 + offset[8]))
            {
                if (input[i] > (11 + offset[8]))
                {
                    if (input[i] > (13 + offset[8]))
                    {
                        if (input[i] == (15 + offset[8]))
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
                        if (input[i] == (13 + offset[8]))
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
                    if (input[i] > (9 + offset[8]))
                    {
                        if (input[i] == (11 + offset[8]))
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
                        if (input[i] == (9 + offset[8]))
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
                if (input[i] > (3 + offset[8]))
                {
                    if (input[i] > (5 + offset[8]))
                    {
                        if (input[i] == (7 + offset[8]))
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
                        if (input[i] == (5 + offset[8]))
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
                    if (input[i] > (1 + offset[8]))
                    {
                        if (input[i] == (3 + offset[8]))
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
                        if (input[i] == (1 + offset[8]))
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
    else if (threadIdx.x%WARP_SIZE == 9)
    {
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
                            vR[i] = 31;
                        }
                        else
                        {
                            vR[i] = 30;
                        }
                    }
                    else
                    {
                        if (input[i] == (29 + offset[9]))
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
                    if (input[i] > (25 + offset[9]))
                    {
                        if (input[i] == (27 + offset[9]))
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
                        if (input[i] == (25 + offset[9]))
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
                if (input[i] > (19 + offset[9]))
                {
                    if (input[i] > (21 + offset[9]))
                    {
                        if (input[i] == (23 + offset[9]))
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
                        if (input[i] == (21 + offset[9]))
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
                    if (input[i] > (17 + offset[9]))
                    {
                        if (input[i] == (19 + offset[9]))
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
                        if (input[i] == (17 + offset[9]))
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
            if (input[i] > (7 + offset[9]))
            {
                if (input[i] > (11 + offset[9]))
                {
                    if (input[i] > (13 + offset[9]))
                    {
                        if (input[i] == (15 + offset[9]))
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
                        if (input[i] == (13 + offset[9]))
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
                    if (input[i] > (9 + offset[9]))
                    {
                        if (input[i] == (11 + offset[9]))
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
                        if (input[i] == (9 + offset[9]))
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
                if (input[i] > (3 + offset[9]))
                {
                    if (input[i] > (5 + offset[9]))
                    {
                        if (input[i] == (7 + offset[9]))
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
                        if (input[i] == (5 + offset[9]))
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
                    if (input[i] > (1 + offset[9]))
                    {
                        if (input[i] == (3 + offset[9]))
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
                        if (input[i] == (1 + offset[9]))
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
    else if (threadIdx.x%WARP_SIZE == 10)
    {
        if (input[i] > (15 + offset[10]))
        {
            if (input[i] > (23 + offset[10]))
            {
                if (input[i] > (27 + offset[10]))
                {
                    if (input[i] > (29 + offset[10]))
                    {
                        if (input[i] == (31 + offset[10]))
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
                        if (input[i] == (29 + offset[10]))
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
                    if (input[i] > (25 + offset[10]))
                    {
                        if (input[i] == (27 + offset[10]))
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
                        if (input[i] == (25 + offset[10]))
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
                if (input[i] > (19 + offset[10]))
                {
                    if (input[i] > (21 + offset[10]))
                    {
                        if (input[i] == (23 + offset[10]))
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
                        if (input[i] == (21 + offset[10]))
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
                    if (input[i] > (17 + offset[10]))
                    {
                        if (input[i] == (19 + offset[10]))
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
                        if (input[i] == (17 + offset[10]))
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
            if (input[i] > (7 + offset[10]))
            {
                if (input[i] > (11 + offset[10]))
                {
                    if (input[i] > (13 + offset[10]))
                    {
                        if (input[i] == (15 + offset[10]))
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
                        if (input[i] == (13 + offset[10]))
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
                    if (input[i] > (9 + offset[10]))
                    {
                        if (input[i] == (11 + offset[10]))
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
                        if (input[i] == (9 + offset[10]))
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
                if (input[i] > (3 + offset[10]))
                {
                    if (input[i] > (5 + offset[10]))
                    {
                        if (input[i] == (7 + offset[10]))
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
                        if (input[i] == (5 + offset[10]))
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
                    if (input[i] > (1 + offset[10]))
                    {
                        if (input[i] == (3 + offset[10]))
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
                        if (input[i] == (1 + offset[10]))
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
    else if (threadIdx.x%WARP_SIZE == 11)
    {
        if (input[i] > (15 + offset[11]))
        {
            if (input[i] > (23 + offset[11]))
            {
                if (input[i] > (27 + offset[11]))
                {
                    if (input[i] > (29 + offset[11]))
                    {
                        if (input[i] == (31 + offset[11]))
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
                        if (input[i] == (29 + offset[11]))
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
                    if (input[i] > (25 + offset[11]))
                    {
                        if (input[i] == (27 + offset[11]))
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
                        if (input[i] == (25 + offset[11]))
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
                if (input[i] > (19 + offset[11]))
                {
                    if (input[i] > (21 + offset[11]))
                    {
                        if (input[i] == (23 + offset[11]))
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
                        if (input[i] == (21 + offset[11]))
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
                    if (input[i] > (17 + offset[11]))
                    {
                        if (input[i] == (19 + offset[11]))
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
                        if (input[i] == (17 + offset[11]))
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
            if (input[i] > (7 + offset[11]))
            {
                if (input[i] > (11 + offset[11]))
                {
                    if (input[i] > (13 + offset[11]))
                    {
                        if (input[i] == (15 + offset[11]))
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
                        if (input[i] == (13 + offset[11]))
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
                    if (input[i] > (9 + offset[11]))
                    {
                        if (input[i] == (11 + offset[11]))
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
                        if (input[i] == (9 + offset[11]))
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
                if (input[i] > (3 + offset[11]))
                {
                    if (input[i] > (5 + offset[11]))
                    {
                        if (input[i] == (7 + offset[11]))
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
                        if (input[i] == (5 + offset[11]))
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
                    if (input[i] > (1 + offset[11]))
                    {
                        if (input[i] == (3 + offset[11]))
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
                        if (input[i] == (1 + offset[11]))
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
    else if (threadIdx.x%WARP_SIZE == 12)
    {
        if (input[i] > (15 + offset[12]))
        {
            if (input[i] > (23 + offset[12]))
            {
                if (input[i] > (27 + offset[12]))
                {
                    if (input[i] > (29 + offset[12]))
                    {
                        if (input[i] == (31 + offset[12]))
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
                        if (input[i] == (29 + offset[12]))
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
                    if (input[i] > (25 + offset[12]))
                    {
                        if (input[i] == (27 + offset[12]))
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
                        if (input[i] == (25 + offset[12]))
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
                if (input[i] > (19 + offset[12]))
                {
                    if (input[i] > (21 + offset[12]))
                    {
                        if (input[i] == (23 + offset[12]))
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
                        if (input[i] == (21 + offset[12]))
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
                    if (input[i] > (17 + offset[12]))
                    {
                        if (input[i] == (19 + offset[12]))
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
                        if (input[i] == (17 + offset[12]))
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
            if (input[i] > (7 + offset[12]))
            {
                if (input[i] > (11 + offset[12]))
                {
                    if (input[i] > (13 + offset[12]))
                    {
                        if (input[i] == (15 + offset[12]))
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
                        if (input[i] == (13 + offset[12]))
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
                    if (input[i] > (9 + offset[12]))
                    {
                        if (input[i] == (11 + offset[12]))
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
                        if (input[i] == (9 + offset[12]))
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
                if (input[i] > (3 + offset[12]))
                {
                    if (input[i] > (5 + offset[12]))
                    {
                        if (input[i] == (7 + offset[12]))
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
                        if (input[i] == (5 + offset[12]))
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
                    if (input[i] > (1 + offset[12]))
                    {
                        if (input[i] == (3 + offset[12]))
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
                        if (input[i] == (1 + offset[12]))
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
    else if (threadIdx.x%WARP_SIZE == 13)
    {
        if (input[i] > (15 + offset[13]))
        {
            if (input[i] > (23 + offset[13]))
            {
                if (input[i] > (27 + offset[13]))
                {
                    if (input[i] > (29 + offset[13]))
                    {
                        if (input[i] == (31 + offset[13]))
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
                        if (input[i] == (29 + offset[13]))
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
                    if (input[i] > (25 + offset[13]))
                    {
                        if (input[i] == (27 + offset[13]))
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
                        if (input[i] == (25 + offset[13]))
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
                if (input[i] > (19 + offset[13]))
                {
                    if (input[i] > (21 + offset[13]))
                    {
                        if (input[i] == (23 + offset[13]))
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
                        if (input[i] == (21 + offset[13]))
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
                    if (input[i] > (17 + offset[13]))
                    {
                        if (input[i] == (19 + offset[13]))
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
                        if (input[i] == (17 + offset[13]))
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
            if (input[i] > (7 + offset[13]))
            {
                if (input[i] > (11 + offset[13]))
                {
                    if (input[i] > (13 + offset[13]))
                    {
                        if (input[i] == (15 + offset[13]))
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
                        if (input[i] == (13 + offset[13]))
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
                    if (input[i] > (9 + offset[13]))
                    {
                        if (input[i] == (11 + offset[13]))
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
                        if (input[i] == (9 + offset[13]))
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
                if (input[i] > (3 + offset[13]))
                {
                    if (input[i] > (5 + offset[13]))
                    {
                        if (input[i] == (7 + offset[13]))
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
                        if (input[i] == (5 + offset[13]))
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
                    if (input[i] > (1 + offset[13]))
                    {
                        if (input[i] == (3 + offset[13]))
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
                        if (input[i] == (1 + offset[13]))
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
    else if (threadIdx.x%WARP_SIZE == 14)
    {
        if (input[i] > (15 + offset[14]))
        {
            if (input[i] > (23 + offset[14]))
            {
                if (input[i] > (27 + offset[14]))
                {
                    if (input[i] > (29 + offset[14]))
                    {
                        if (input[i] == (31 + offset[14]))
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
                        if (input[i] == (29 + offset[14]))
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
                    if (input[i] > (25 + offset[14]))
                    {
                        if (input[i] == (27 + offset[14]))
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
                        if (input[i] == (25 + offset[14]))
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
                if (input[i] > (19 + offset[14]))
                {
                    if (input[i] > (21 + offset[14]))
                    {
                        if (input[i] == (23 + offset[14]))
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
                        if (input[i] == (21 + offset[14]))
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
                    if (input[i] > (17 + offset[14]))
                    {
                        if (input[i] == (19 + offset[14]))
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
                        if (input[i] == (17 + offset[14]))
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
            if (input[i] > (7 + offset[14]))
            {
                if (input[i] > (11 + offset[14]))
                {
                    if (input[i] > (13 + offset[14]))
                    {
                        if (input[i] == (15 + offset[14]))
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
                        if (input[i] == (13 + offset[14]))
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
                    if (input[i] > (9 + offset[14]))
                    {
                        if (input[i] == (11 + offset[14]))
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
                        if (input[i] == (9 + offset[14]))
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
                if (input[i] > (3 + offset[14]))
                {
                    if (input[i] > (5 + offset[14]))
                    {
                        if (input[i] == (7 + offset[14]))
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
                        if (input[i] == (5 + offset[14]))
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
                    if (input[i] > (1 + offset[14]))
                    {
                        if (input[i] == (3 + offset[14]))
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
                        if (input[i] == (1 + offset[14]))
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
    else if (threadIdx.x%WARP_SIZE == 15)
    {
        if (input[i] > (15 + offset[15]))
        {
            if (input[i] > (23 + offset[15]))
            {
                if (input[i] > (27 + offset[15]))
                {
                    if (input[i] > (29 + offset[15]))
                    {
                        if (input[i] == (31 + offset[15]))
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
                        if (input[i] == (29 + offset[15]))
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
                    if (input[i] > (25 + offset[15]))
                    {
                        if (input[i] == (27 + offset[15]))
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
                        if (input[i] == (25 + offset[15]))
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
                if (input[i] > (19 + offset[15]))
                {
                    if (input[i] > (21 + offset[15]))
                    {
                        if (input[i] == (23 + offset[15]))
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
                        if (input[i] == (21 + offset[15]))
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
                    if (input[i] > (17 + offset[15]))
                    {
                        if (input[i] == (19 + offset[15]))
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
                        if (input[i] == (17 + offset[15]))
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
            if (input[i] > (7 + offset[15]))
            {
                if (input[i] > (11 + offset[15]))
                {
                    if (input[i] > (13 + offset[15]))
                    {
                        if (input[i] == (15 + offset[15]))
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
                        if (input[i] == (13 + offset[15]))
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
                    if (input[i] > (9 + offset[15]))
                    {
                        if (input[i] == (11 + offset[15]))
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
                        if (input[i] == (9 + offset[15]))
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
                if (input[i] > (3 + offset[15]))
                {
                    if (input[i] > (5 + offset[15]))
                    {
                        if (input[i] == (7 + offset[15]))
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
                        if (input[i] == (5 + offset[15]))
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
                    if (input[i] > (1 + offset[15]))
                    {
                        if (input[i] == (3 + offset[15]))
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
                        if (input[i] == (1 + offset[15]))
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
    else if (threadIdx.x%WARP_SIZE == 16)
    {
        if (input[i] > (15 + offset[16]))
        {
            if (input[i] > (23 + offset[16]))
            {
                if (input[i] > (27 + offset[16]))
                {
                    if (input[i] > (29 + offset[16]))
                    {
                        if (input[i] == (31 + offset[16]))
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
                        if (input[i] == (29 + offset[16]))
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
                    if (input[i] > (25 + offset[16]))
                    {
                        if (input[i] == (27 + offset[16]))
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
                        if (input[i] == (25 + offset[16]))
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
                if (input[i] > (19 + offset[16]))
                {
                    if (input[i] > (21 + offset[16]))
                    {
                        if (input[i] == (23 + offset[16]))
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
                        if (input[i] == (21 + offset[16]))
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
                    if (input[i] > (17 + offset[16]))
                    {
                        if (input[i] == (19 + offset[16]))
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
                        if (input[i] == (17 + offset[16]))
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
            if (input[i] > (7 + offset[16]))
            {
                if (input[i] > (11 + offset[16]))
                {
                    if (input[i] > (13 + offset[16]))
                    {
                        if (input[i] == (15 + offset[16]))
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
                        if (input[i] == (13 + offset[16]))
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
                    if (input[i] > (9 + offset[16]))
                    {
                        if (input[i] == (11 + offset[16]))
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
                        if (input[i] == (9 + offset[16]))
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
                if (input[i] > (3 + offset[16]))
                {
                    if (input[i] > (5 + offset[16]))
                    {
                        if (input[i] == (7 + offset[16]))
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
                        if (input[i] == (5 + offset[16]))
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
                    if (input[i] > (1 + offset[16]))
                    {
                        if (input[i] == (3 + offset[16]))
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
                        if (input[i] == (1 + offset[16]))
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
    else if (threadIdx.x%WARP_SIZE == 17)
    {
        if (input[i] > (15 + offset[17]))
        {
            if (input[i] > (23 + offset[17]))
            {
                if (input[i] > (27 + offset[17]))
                {
                    if (input[i] > (29 + offset[17]))
                    {
                        if (input[i] == (31 + offset[17]))
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
                        if (input[i] == (29 + offset[17]))
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
                    if (input[i] > (25 + offset[17]))
                    {
                        if (input[i] == (27 + offset[17]))
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
                        if (input[i] == (25 + offset[17]))
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
                if (input[i] > (19 + offset[17]))
                {
                    if (input[i] > (21 + offset[17]))
                    {
                        if (input[i] == (23 + offset[17]))
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
                        if (input[i] == (21 + offset[17]))
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
                    if (input[i] > (17 + offset[17]))
                    {
                        if (input[i] == (19 + offset[17]))
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
                        if (input[i] == (17 + offset[17]))
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
            if (input[i] > (7 + offset[17]))
            {
                if (input[i] > (11 + offset[17]))
                {
                    if (input[i] > (13 + offset[17]))
                    {
                        if (input[i] == (15 + offset[17]))
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
                        if (input[i] == (13 + offset[17]))
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
                    if (input[i] > (9 + offset[17]))
                    {
                        if (input[i] == (11 + offset[17]))
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
                        if (input[i] == (9 + offset[17]))
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
                if (input[i] > (3 + offset[17]))
                {
                    if (input[i] > (5 + offset[17]))
                    {
                        if (input[i] == (7 + offset[17]))
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
                        if (input[i] == (5 + offset[17]))
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
                    if (input[i] > (1 + offset[17]))
                    {
                        if (input[i] == (3 + offset[17]))
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
                        if (input[i] == (1 + offset[17]))
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
    else if (threadIdx.x%WARP_SIZE == 18)
    {
        if (input[i] > (15 + offset[18]))
        {
            if (input[i] > (23 + offset[18]))
            {
                if (input[i] > (27 + offset[18]))
                {
                    if (input[i] > (29 + offset[18]))
                    {
                        if (input[i] == (31 + offset[18]))
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
                        if (input[i] == (29 + offset[18]))
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
                    if (input[i] > (25 + offset[18]))
                    {
                        if (input[i] == (27 + offset[18]))
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
                        if (input[i] == (25 + offset[18]))
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
                if (input[i] > (19 + offset[18]))
                {
                    if (input[i] > (21 + offset[18]))
                    {
                        if (input[i] == (23 + offset[18]))
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
                        if (input[i] == (21 + offset[18]))
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
                    if (input[i] > (17 + offset[18]))
                    {
                        if (input[i] == (19 + offset[18]))
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
                        if (input[i] == (17 + offset[18]))
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
            if (input[i] > (7 + offset[18]))
            {
                if (input[i] > (11 + offset[18]))
                {
                    if (input[i] > (13 + offset[18]))
                    {
                        if (input[i] == (15 + offset[18]))
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
                        if (input[i] == (13 + offset[18]))
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
                    if (input[i] > (9 + offset[18]))
                    {
                        if (input[i] == (11 + offset[18]))
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
                        if (input[i] == (9 + offset[18]))
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
                if (input[i] > (3 + offset[18]))
                {
                    if (input[i] > (5 + offset[18]))
                    {
                        if (input[i] == (7 + offset[18]))
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
                        if (input[i] == (5 + offset[18]))
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
                    if (input[i] > (1 + offset[18]))
                    {
                        if (input[i] == (3 + offset[18]))
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
                        if (input[i] == (1 + offset[18]))
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
    else if (threadIdx.x%WARP_SIZE == 19)
    {
        if (input[i] > (15 + offset[19]))
        {
            if (input[i] > (23 + offset[19]))
            {
                if (input[i] > (27 + offset[19]))
                {
                    if (input[i] > (29 + offset[19]))
                    {
                        if (input[i] == (31 + offset[19]))
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
                        if (input[i] == (29 + offset[19]))
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
                    if (input[i] > (25 + offset[19]))
                    {
                        if (input[i] == (27 + offset[19]))
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
                        if (input[i] == (25 + offset[19]))
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
                if (input[i] > (19 + offset[19]))
                {
                    if (input[i] > (21 + offset[19]))
                    {
                        if (input[i] == (23 + offset[19]))
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
                        if (input[i] == (21 + offset[19]))
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
                    if (input[i] > (17 + offset[19]))
                    {
                        if (input[i] == (19 + offset[19]))
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
                        if (input[i] == (17 + offset[19]))
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
            if (input[i] > (7 + offset[19]))
            {
                if (input[i] > (11 + offset[19]))
                {
                    if (input[i] > (13 + offset[19]))
                    {
                        if (input[i] == (15 + offset[19]))
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
                        if (input[i] == (13 + offset[19]))
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
                    if (input[i] > (9 + offset[19]))
                    {
                        if (input[i] == (11 + offset[19]))
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
                        if (input[i] == (9 + offset[19]))
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
                if (input[i] > (3 + offset[19]))
                {
                    if (input[i] > (5 + offset[19]))
                    {
                        if (input[i] == (7 + offset[19]))
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
                        if (input[i] == (5 + offset[19]))
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
                    if (input[i] > (1 + offset[19]))
                    {
                        if (input[i] == (3 + offset[19]))
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
                        if (input[i] == (1 + offset[19]))
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
    else if (threadIdx.x%WARP_SIZE == 20)
    {
        if (input[i] > (15 + offset[20]))
        {
            if (input[i] > (23 + offset[20]))
            {
                if (input[i] > (27 + offset[20]))
                {
                    if (input[i] > (29 + offset[20]))
                    {
                        if (input[i] == (31 + offset[20]))
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
                        if (input[i] == (29 + offset[20]))
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
                    if (input[i] > (25 + offset[20]))
                    {
                        if (input[i] == (27 + offset[20]))
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
                        if (input[i] == (25 + offset[20]))
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
                if (input[i] > (19 + offset[20]))
                {
                    if (input[i] > (21 + offset[20]))
                    {
                        if (input[i] == (23 + offset[20]))
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
                        if (input[i] == (21 + offset[20]))
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
                    if (input[i] > (17 + offset[20]))
                    {
                        if (input[i] == (19 + offset[20]))
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
                        if (input[i] == (17 + offset[20]))
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
            if (input[i] > (7 + offset[20]))
            {
                if (input[i] > (11 + offset[20]))
                {
                    if (input[i] > (13 + offset[20]))
                    {
                        if (input[i] == (15 + offset[20]))
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
                        if (input[i] == (13 + offset[20]))
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
                    if (input[i] > (9 + offset[20]))
                    {
                        if (input[i] == (11 + offset[20]))
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
                        if (input[i] == (9 + offset[20]))
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
                if (input[i] > (3 + offset[20]))
                {
                    if (input[i] > (5 + offset[20]))
                    {
                        if (input[i] == (7 + offset[20]))
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
                        if (input[i] == (5 + offset[20]))
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
                    if (input[i] > (1 + offset[20]))
                    {
                        if (input[i] == (3 + offset[20]))
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
                        if (input[i] == (1 + offset[20]))
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
    else if (threadIdx.x%WARP_SIZE == 21)
    {
        if (input[i] > (15 + offset[21]))
        {
            if (input[i] > (23 + offset[21]))
            {
                if (input[i] > (27 + offset[21]))
                {
                    if (input[i] > (29 + offset[21]))
                    {
                        if (input[i] == (31 + offset[21]))
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
                        if (input[i] == (29 + offset[21]))
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
                    if (input[i] > (25 + offset[21]))
                    {
                        if (input[i] == (27 + offset[21]))
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
                        if (input[i] == (25 + offset[21]))
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
                if (input[i] > (19 + offset[21]))
                {
                    if (input[i] > (21 + offset[21]))
                    {
                        if (input[i] == (23 + offset[21]))
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
                        if (input[i] == (21 + offset[21]))
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
                    if (input[i] > (17 + offset[21]))
                    {
                        if (input[i] == (19 + offset[21]))
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
                        if (input[i] == (17 + offset[21]))
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
            if (input[i] > (7 + offset[21]))
            {
                if (input[i] > (11 + offset[21]))
                {
                    if (input[i] > (13 + offset[21]))
                    {
                        if (input[i] == (15 + offset[21]))
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
                        if (input[i] == (13 + offset[21]))
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
                    if (input[i] > (9 + offset[21]))
                    {
                        if (input[i] == (11 + offset[21]))
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
                        if (input[i] == (9 + offset[21]))
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
                if (input[i] > (3 + offset[21]))
                {
                    if (input[i] > (5 + offset[21]))
                    {
                        if (input[i] == (7 + offset[21]))
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
                        if (input[i] == (5 + offset[21]))
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
                    if (input[i] > (1 + offset[21]))
                    {
                        if (input[i] == (3 + offset[21]))
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
                        if (input[i] == (1 + offset[21]))
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
    else if (threadIdx.x%WARP_SIZE == 22)
    {
        if (input[i] > (15 + offset[22]))
        {
            if (input[i] > (23 + offset[22]))
            {
                if (input[i] > (27 + offset[22]))
                {
                    if (input[i] > (29 + offset[22]))
                    {
                        if (input[i] == (31 + offset[22]))
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
                        if (input[i] == (29 + offset[22]))
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
                    if (input[i] > (25 + offset[22]))
                    {
                        if (input[i] == (27 + offset[22]))
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
                        if (input[i] == (25 + offset[22]))
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
                if (input[i] > (19 + offset[22]))
                {
                    if (input[i] > (21 + offset[22]))
                    {
                        if (input[i] == (23 + offset[22]))
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
                        if (input[i] == (21 + offset[22]))
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
                    if (input[i] > (17 + offset[22]))
                    {
                        if (input[i] == (19 + offset[22]))
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
                        if (input[i] == (17 + offset[22]))
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
            if (input[i] > (7 + offset[22]))
            {
                if (input[i] > (11 + offset[22]))
                {
                    if (input[i] > (13 + offset[22]))
                    {
                        if (input[i] == (15 + offset[22]))
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
                        if (input[i] == (13 + offset[22]))
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
                    if (input[i] > (9 + offset[22]))
                    {
                        if (input[i] == (11 + offset[22]))
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
                        if (input[i] == (9 + offset[22]))
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
                if (input[i] > (3 + offset[22]))
                {
                    if (input[i] > (5 + offset[22]))
                    {
                        if (input[i] == (7 + offset[22]))
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
                        if (input[i] == (5 + offset[22]))
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
                    if (input[i] > (1 + offset[22]))
                    {
                        if (input[i] == (3 + offset[22]))
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
                        if (input[i] == (1 + offset[22]))
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
    else if (threadIdx.x%WARP_SIZE == 23)
    {
        if (input[i] > (15 + offset[23]))
        {
            if (input[i] > (23 + offset[23]))
            {
                if (input[i] > (27 + offset[23]))
                {
                    if (input[i] > (29 + offset[23]))
                    {
                        if (input[i] == (31 + offset[23]))
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
                        if (input[i] == (29 + offset[23]))
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
                    if (input[i] > (25 + offset[23]))
                    {
                        if (input[i] == (27 + offset[23]))
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
                        if (input[i] == (25 + offset[23]))
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
                if (input[i] > (19 + offset[23]))
                {
                    if (input[i] > (21 + offset[23]))
                    {
                        if (input[i] == (23 + offset[23]))
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
                        if (input[i] == (21 + offset[23]))
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
                    if (input[i] > (17 + offset[23]))
                    {
                        if (input[i] == (19 + offset[23]))
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
                        if (input[i] == (17 + offset[23]))
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
            if (input[i] > (7 + offset[23]))
            {
                if (input[i] > (11 + offset[23]))
                {
                    if (input[i] > (13 + offset[23]))
                    {
                        if (input[i] == (15 + offset[23]))
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
                        if (input[i] == (13 + offset[23]))
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
                    if (input[i] > (9 + offset[23]))
                    {
                        if (input[i] == (11 + offset[23]))
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
                        if (input[i] == (9 + offset[23]))
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
                if (input[i] > (3 + offset[23]))
                {
                    if (input[i] > (5 + offset[23]))
                    {
                        if (input[i] == (7 + offset[23]))
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
                        if (input[i] == (5 + offset[23]))
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
                    if (input[i] > (1 + offset[23]))
                    {
                        if (input[i] == (3 + offset[23]))
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
                        if (input[i] == (1 + offset[23]))
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
    else if (threadIdx.x%WARP_SIZE == 24)
    {
        if (input[i] > (15 + offset[24]))
        {
            if (input[i] > (23 + offset[24]))
            {
                if (input[i] > (27 + offset[24]))
                {
                    if (input[i] > (29 + offset[24]))
                    {
                        if (input[i] == (31 + offset[24]))
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
                        if (input[i] == (29 + offset[24]))
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
                    if (input[i] > (25 + offset[24]))
                    {
                        if (input[i] == (27 + offset[24]))
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
                        if (input[i] == (25 + offset[24]))
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
                if (input[i] > (19 + offset[24]))
                {
                    if (input[i] > (21 + offset[24]))
                    {
                        if (input[i] == (23 + offset[24]))
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
                        if (input[i] == (21 + offset[24]))
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
                    if (input[i] > (17 + offset[24]))
                    {
                        if (input[i] == (19 + offset[24]))
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
                        if (input[i] == (17 + offset[24]))
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
            if (input[i] > (7 + offset[24]))
            {
                if (input[i] > (11 + offset[24]))
                {
                    if (input[i] > (13 + offset[24]))
                    {
                        if (input[i] == (15 + offset[24]))
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
                        if (input[i] == (13 + offset[24]))
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
                    if (input[i] > (9 + offset[24]))
                    {
                        if (input[i] == (11 + offset[24]))
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
                        if (input[i] == (9 + offset[24]))
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
                if (input[i] > (3 + offset[24]))
                {
                    if (input[i] > (5 + offset[24]))
                    {
                        if (input[i] == (7 + offset[24]))
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
                        if (input[i] == (5 + offset[24]))
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
                    if (input[i] > (1 + offset[24]))
                    {
                        if (input[i] == (3 + offset[24]))
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
                        if (input[i] == (1 + offset[24]))
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
    else if (threadIdx.x%WARP_SIZE == 25)
    {
        if (input[i] > (15 + offset[25]))
        {
            if (input[i] > (23 + offset[25]))
            {
                if (input[i] > (27 + offset[25]))
                {
                    if (input[i] > (29 + offset[25]))
                    {
                        if (input[i] == (31 + offset[25]))
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
                        if (input[i] == (29 + offset[25]))
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
                    if (input[i] > (25 + offset[25]))
                    {
                        if (input[i] == (27 + offset[25]))
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
                        if (input[i] == (25 + offset[25]))
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
                if (input[i] > (19 + offset[25]))
                {
                    if (input[i] > (21 + offset[25]))
                    {
                        if (input[i] == (23 + offset[25]))
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
                        if (input[i] == (21 + offset[25]))
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
                    if (input[i] > (17 + offset[25]))
                    {
                        if (input[i] == (19 + offset[25]))
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
                        if (input[i] == (17 + offset[25]))
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
            if (input[i] > (7 + offset[25]))
            {
                if (input[i] > (11 + offset[25]))
                {
                    if (input[i] > (13 + offset[25]))
                    {
                        if (input[i] == (15 + offset[25]))
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
                        if (input[i] == (13 + offset[25]))
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
                    if (input[i] > (9 + offset[25]))
                    {
                        if (input[i] == (11 + offset[25]))
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
                        if (input[i] == (9 + offset[25]))
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
                if (input[i] > (3 + offset[25]))
                {
                    if (input[i] > (5 + offset[25]))
                    {
                        if (input[i] == (7 + offset[25]))
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
                        if (input[i] == (5 + offset[25]))
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
                    if (input[i] > (1 + offset[25]))
                    {
                        if (input[i] == (3 + offset[25]))
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
                        if (input[i] == (1 + offset[25]))
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
    else if (threadIdx.x%WARP_SIZE == 26)
    {
        if (input[i] > (15 + offset[26]))
        {
            if (input[i] > (23 + offset[26]))
            {
                if (input[i] > (27 + offset[26]))
                {
                    if (input[i] > (29 + offset[26]))
                    {
                        if (input[i] == (31 + offset[26]))
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
                        if (input[i] == (29 + offset[26]))
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
                    if (input[i] > (25 + offset[26]))
                    {
                        if (input[i] == (27 + offset[26]))
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
                        if (input[i] == (25 + offset[26]))
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
                if (input[i] > (19 + offset[26]))
                {
                    if (input[i] > (21 + offset[26]))
                    {
                        if (input[i] == (23 + offset[26]))
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
                        if (input[i] == (21 + offset[26]))
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
                    if (input[i] > (17 + offset[26]))
                    {
                        if (input[i] == (19 + offset[26]))
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
                        if (input[i] == (17 + offset[26]))
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
            if (input[i] > (7 + offset[26]))
            {
                if (input[i] > (11 + offset[26]))
                {
                    if (input[i] > (13 + offset[26]))
                    {
                        if (input[i] == (15 + offset[26]))
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
                        if (input[i] == (13 + offset[26]))
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
                    if (input[i] > (9 + offset[26]))
                    {
                        if (input[i] == (11 + offset[26]))
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
                        if (input[i] == (9 + offset[26]))
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
                if (input[i] > (3 + offset[26]))
                {
                    if (input[i] > (5 + offset[26]))
                    {
                        if (input[i] == (7 + offset[26]))
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
                        if (input[i] == (5 + offset[26]))
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
                    if (input[i] > (1 + offset[26]))
                    {
                        if (input[i] == (3 + offset[26]))
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
                        if (input[i] == (1 + offset[26]))
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
    else if (threadIdx.x%WARP_SIZE == 27)
    {
        if (input[i] > (15 + offset[27]))
        {
            if (input[i] > (23 + offset[27]))
            {
                if (input[i] > (27 + offset[27]))
                {
                    if (input[i] > (29 + offset[27]))
                    {
                        if (input[i] == (31 + offset[27]))
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
                        if (input[i] == (29 + offset[27]))
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
                    if (input[i] > (25 + offset[27]))
                    {
                        if (input[i] == (27 + offset[27]))
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
                        if (input[i] == (25 + offset[27]))
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
                if (input[i] > (19 + offset[27]))
                {
                    if (input[i] > (21 + offset[27]))
                    {
                        if (input[i] == (23 + offset[27]))
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
                        if (input[i] == (21 + offset[27]))
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
                    if (input[i] > (17 + offset[27]))
                    {
                        if (input[i] == (19 + offset[27]))
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
                        if (input[i] == (17 + offset[27]))
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
            if (input[i] > (7 + offset[27]))
            {
                if (input[i] > (11 + offset[27]))
                {
                    if (input[i] > (13 + offset[27]))
                    {
                        if (input[i] == (15 + offset[27]))
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
                        if (input[i] == (13 + offset[27]))
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
                    if (input[i] > (9 + offset[27]))
                    {
                        if (input[i] == (11 + offset[27]))
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
                        if (input[i] == (9 + offset[27]))
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
                if (input[i] > (3 + offset[27]))
                {
                    if (input[i] > (5 + offset[27]))
                    {
                        if (input[i] == (7 + offset[27]))
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
                        if (input[i] == (5 + offset[27]))
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
                    if (input[i] > (1 + offset[27]))
                    {
                        if (input[i] == (3 + offset[27]))
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
                        if (input[i] == (1 + offset[27]))
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
    else if (threadIdx.x%WARP_SIZE == 28)
    {
        if (input[i] > (15 + offset[28]))
        {
            if (input[i] > (23 + offset[28]))
            {
                if (input[i] > (27 + offset[28]))
                {
                    if (input[i] > (29 + offset[28]))
                    {
                        if (input[i] == (31 + offset[28]))
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
                        if (input[i] == (29 + offset[28]))
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
                    if (input[i] > (25 + offset[28]))
                    {
                        if (input[i] == (27 + offset[28]))
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
                        if (input[i] == (25 + offset[28]))
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
                if (input[i] > (19 + offset[28]))
                {
                    if (input[i] > (21 + offset[28]))
                    {
                        if (input[i] == (23 + offset[28]))
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
                        if (input[i] == (21 + offset[28]))
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
                    if (input[i] > (17 + offset[28]))
                    {
                        if (input[i] == (19 + offset[28]))
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
                        if (input[i] == (17 + offset[28]))
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
            if (input[i] > (7 + offset[28]))
            {
                if (input[i] > (11 + offset[28]))
                {
                    if (input[i] > (13 + offset[28]))
                    {
                        if (input[i] == (15 + offset[28]))
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
                        if (input[i] == (13 + offset[28]))
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
                    if (input[i] > (9 + offset[28]))
                    {
                        if (input[i] == (11 + offset[28]))
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
                        if (input[i] == (9 + offset[28]))
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
                if (input[i] > (3 + offset[28]))
                {
                    if (input[i] > (5 + offset[28]))
                    {
                        if (input[i] == (7 + offset[28]))
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
                        if (input[i] == (5 + offset[28]))
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
                    if (input[i] > (1 + offset[28]))
                    {
                        if (input[i] == (3 + offset[28]))
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
                        if (input[i] == (1 + offset[28]))
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
    else if (threadIdx.x%WARP_SIZE == 29)
    {
        if (input[i] > (15 + offset[29]))
        {
            if (input[i] > (23 + offset[29]))
            {
                if (input[i] > (27 + offset[29]))
                {
                    if (input[i] > (29 + offset[29]))
                    {
                        if (input[i] == (31 + offset[29]))
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
                        if (input[i] == (29 + offset[29]))
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
                    if (input[i] > (25 + offset[29]))
                    {
                        if (input[i] == (27 + offset[29]))
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
                        if (input[i] == (25 + offset[29]))
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
                if (input[i] > (19 + offset[29]))
                {
                    if (input[i] > (21 + offset[29]))
                    {
                        if (input[i] == (23 + offset[29]))
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
                        if (input[i] == (21 + offset[29]))
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
                    if (input[i] > (17 + offset[29]))
                    {
                        if (input[i] == (19 + offset[29]))
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
                        if (input[i] == (17 + offset[29]))
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
            if (input[i] > (7 + offset[29]))
            {
                if (input[i] > (11 + offset[29]))
                {
                    if (input[i] > (13 + offset[29]))
                    {
                        if (input[i] == (15 + offset[29]))
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
                        if (input[i] == (13 + offset[29]))
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
                    if (input[i] > (9 + offset[29]))
                    {
                        if (input[i] == (11 + offset[29]))
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
                        if (input[i] == (9 + offset[29]))
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
                if (input[i] > (3 + offset[29]))
                {
                    if (input[i] > (5 + offset[29]))
                    {
                        if (input[i] == (7 + offset[29]))
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
                        if (input[i] == (5 + offset[29]))
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
                    if (input[i] > (1 + offset[29]))
                    {
                        if (input[i] == (3 + offset[29]))
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
                        if (input[i] == (1 + offset[29]))
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
    else if (threadIdx.x%WARP_SIZE == 30)
    {
        if (input[i] > (15 + offset[30]))
        {
            if (input[i] > (23 + offset[30]))
            {
                if (input[i] > (27 + offset[30]))
                {
                    if (input[i] > (29 + offset[30]))
                    {
                        if (input[i] == (31 + offset[30]))
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
                        if (input[i] == (29 + offset[30]))
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
                    if (input[i] > (25 + offset[30]))
                    {
                        if (input[i] == (27 + offset[30]))
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
                        if (input[i] == (25 + offset[30]))
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
                if (input[i] > (19 + offset[30]))
                {
                    if (input[i] > (21 + offset[30]))
                    {
                        if (input[i] == (23 + offset[30]))
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
                        if (input[i] == (21 + offset[30]))
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
                    if (input[i] > (17 + offset[30]))
                    {
                        if (input[i] == (19 + offset[30]))
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
                        if (input[i] == (17 + offset[30]))
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
            if (input[i] > (7 + offset[30]))
            {
                if (input[i] > (11 + offset[30]))
                {
                    if (input[i] > (13 + offset[30]))
                    {
                        if (input[i] == (15 + offset[30]))
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
                        if (input[i] == (13 + offset[30]))
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
                    if (input[i] > (9 + offset[30]))
                    {
                        if (input[i] == (11 + offset[30]))
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
                        if (input[i] == (9 + offset[30]))
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
                if (input[i] > (3 + offset[30]))
                {
                    if (input[i] > (5 + offset[30]))
                    {
                        if (input[i] == (7 + offset[30]))
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
                        if (input[i] == (5 + offset[30]))
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
                    if (input[i] > (1 + offset[30]))
                    {
                        if (input[i] == (3 + offset[30]))
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
                        if (input[i] == (1 + offset[30]))
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
    else if (threadIdx.x%WARP_SIZE == 31)
    {
        if (input[i] > (15 + offset[31]))
        {
            if (input[i] > (23 + offset[31]))
            {
                if (input[i] > (27 + offset[31]))
                {
                    if (input[i] > (29 + offset[31]))
                    {
                        if (input[i] == (31 + offset[31]))
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
                        if (input[i] == (29 + offset[31]))
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
                    if (input[i] > (25 + offset[31]))
                    {
                        if (input[i] == (27 + offset[31]))
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
                        if (input[i] == (25 + offset[31]))
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
                if (input[i] > (19 + offset[31]))
                {
                    if (input[i] > (21 + offset[31]))
                    {
                        if (input[i] == (23 + offset[31]))
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
                        if (input[i] == (21 + offset[31]))
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
                    if (input[i] > (17 + offset[31]))
                    {
                        if (input[i] == (19 + offset[31]))
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
                        if (input[i] == (17 + offset[31]))
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
            if (input[i] > (7 + offset[31]))
            {
                if (input[i] > (11 + offset[31]))
                {
                    if (input[i] > (13 + offset[31]))
                    {
                        if (input[i] == (15 + offset[31]))
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
                        if (input[i] == (13 + offset[31]))
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
                    if (input[i] > (9 + offset[31]))
                    {
                        if (input[i] == (11 + offset[31]))
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
                        if (input[i] == (9 + offset[31]))
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
                if (input[i] > (3 + offset[31]))
                {
                    if (input[i] > (5 + offset[31]))
                    {
                        if (input[i] == (7 + offset[31]))
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
                        if (input[i] == (5 + offset[31]))
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
                    if (input[i] > (1 + offset[31]))
                    {
                        if (input[i] == (3 + offset[31]))
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
                        if (input[i] == (1 + offset[31]))
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
    size_t offsetBytes = WARP_SIZE * sizeof(int);

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
    int iLen = 512; // 1024
    dim3 block(iLen);
    dim3 grid((nElem + block.x - 1) / block.x); // /2
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
