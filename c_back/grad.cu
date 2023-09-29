#include <sys/time.h>
#include <cuda_runtime.h>
#include <stdio.h>
#include <stdlib.h>
#include <stdbool.h>
#include <time.h>

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
FILE *outFile;

#include "definitions.h"

// COPIA SIMPLES
#if defined(_RF_COPIA_SIMPLES_1INPUT)

#define _1_INPUT

#define EXP_NAME "_RF_COPIA_SIMPLES_1INPUT"
#define EXP_OUTPUT_FILE "_RF_COPIA_SIMPLES_1INPUT_OUTPUT.txt"
#define EXP_RESULT_FILE "_RF_COPIA_SIMPLES_1INPUT_RESULT.csv"

// _RF_COPIA_SIMPLES_1INPUT
__global__ void RF_kernel(float *input, const int n, float *vR)
{
    int i = blockIdx.x * blockDim.x + threadIdx.x;

    // para 8 classes
    if (i < n)
    {
        vR[i] = input[i];
    }
}
#endif
//*********

// IF
#if defined(_RF_1IF_1TREE_1INPUT_WORST)
#define _MOD 2
#define _1_INPUT

#define EXP_NAME "_RF_1IF_1TREE_1INPUT_WORST"
#define EXP_OUTPUT_FILE "_RF_1IF_1TREE_1INPUT_WORST_OUTPUT.txt"
#define EXP_RESULT_FILE "_RF_1IF_1TREE_1INPUT_WORST_RESULT.csv"

// RF_with_calc
__global__ void RF_kernel(float *input, const int n, float *vR)
{
    int i = blockIdx.x * blockDim.x + threadIdx.x;

    if (i < n)
    {
        if (input[i] > 0)
        {
            vR[i] = 1;
        }
        else
        { //<=0
            vR[i] = 0;
        }
    }
}

#endif

#if defined(_RF_1IF_2TREE_1INPUT_WORST)
#define _MOD 2
#define _1_INPUT
#define _2TREE

#define EXP_NAME "_RF_1IF_2TREE_1INPUT_WORST"
#define EXP_OUTPUT_FILE "_RF_1IF_2TREE_1INPUT_WORST_OUTPUT.txt"
#define EXP_RESULT_FILE "_RF_1IF_2TREE_1INPUT_WORST_RESULT.csv"

// RF_with_calc
__global__ void RF_kernel(float *input, const int n, const int offset0, const int offset1, float *vR)
{
    int i = blockIdx.x * blockDim.x + threadIdx.x;

    if (i < n)
    {
        if (input[i + offset0] == 1)
        {
            vR[i] = 1;
        }
        else
        {
            vR[i] = 0;
        }
        if (input[i + offset1] == 1)
        {
            vR[i] += 1;
        }
        else
        {
            vR[i] += 1;
        }
    }
}

#endif

#if defined(_RF_1IF_3TREE_1INPUT_WORST)
#define _MOD 2
#define _1_INPUT
#define _3TREE

#define EXP_NAME "_RF_1IF_3TREE_1INPUT_WORST"
#define EXP_OUTPUT_FILE "_RF_1IF_3TREE_1INPUT_WORST_OUTPUT.txt"
#define EXP_RESULT_FILE "_RF_1IF_3TREE_1INPUT_WORST_RESULT.csv"

// RF_with_calc
__global__ void RF_kernel(float *input, const int n, const int offset0, const int offset1, const int offset2, float *vR)
{
    int i = blockIdx.x * blockDim.x + threadIdx.x;

    if (i < n)
    {
        if (input[i + offset0] == 1)
        {
            vR[i] = 1;
        }
        else
        {
            vR[i] = 0;
        }
        if (input[i + offset1] == 1)
        {
            vR[i] += 1;
        }
        else
        {
            vR[i] += 1;
        }
        if (input[i + offset2] == 1)
        {
            vR[i] += 1;
        }
        else
        {
            vR[i] += 1;
        }
    }
}

#endif

#if defined(_RF_1IF_4TREE_1INPUT_WORST)
#define _MOD 2
#define _1_INPUT
#define _4TREE

#define EXP_NAME "_RF_1IF_4TREE_1INPUT_WORST"
#define EXP_OUTPUT_FILE "_RF_1IF_4TREE_1INPUT_WORST_OUTPUT.txt"
#define EXP_RESULT_FILE "_RF_21IF_4TREE_1INPUT_WORST_RESULT.csv"

// RF_with_calc
__global__ void RF_kernel(float *input, const int n, const int offset0, const int offset1, const int offset2, const int offset3, float *vR)
{
    int i = blockIdx.x * blockDim.x + threadIdx.x;

    if (i < n)
    {
        if (input[i + offset0] == 1)
        {
            vR[i] = 1;
        }
        else
        {
            vR[i] = 0;
        }
        if (input[i + offset1] == 1)
        {
            vR[i] += 1;
        }
        else
        {
            vR[i] += 1;
        }
        if (input[i + offset2] == 1)
        {
            vR[i] += 1;
        }
        else
        {
            vR[i] += 1;
        }
        if (input[i + offset3] == 1)
        {
            vR[i] += 1;
        }
        else
        {
            vR[i] += 1;
        }
    }
}

#endif

#if defined(_RF_2IF_1TREE_1INPUT_WORST)
#define _MOD 3
#define _1_INPUT

#define EXP_NAME "_RF_2IF_1TREE_1INPUT_WORST"
#define EXP_OUTPUT_FILE "_RF_2IF_1TREE_1INPUT_WORST_OUTPUT.txt"
#define EXP_RESULT_FILE "_RF_2IF_1TREE_1INPUT_WORST_RESULT.csv"

// RF_with_calc
__global__ void RF_kernel(float *input, const int n, float *vR)
{
    int i = blockIdx.x * blockDim.x + threadIdx.x;

    if (i < n)
    {
        if (input[i] > 1)
        {
            vR[i] = 2;
        }
        else
        { //<=1
            if (input[i] == 1)
            {
                vR[i] = 1;
            }
            else
            { //!=0
                vR[i] = 0;
            }
        }
    }
}

#endif

#if defined(_RF_3IF_1TREE_1INPUT_WORST)
#define _MOD 4
#define _1_INPUT

#define EXP_NAME "_RF_3IF_1TREE_1INPUT_WORST"
#define EXP_OUTPUT_FILE "_RF_3IF_1TREE_1INPUT_WORST_OUTPUT.txt"
#define EXP_RESULT_FILE "_RF_3IF_1TREE_1INPUT_WORST_RESULT.csv"

// RF_with_calc
__global__ void RF_kernel(float *input, const int n, float *vR)
{
    int i = blockIdx.x * blockDim.x + threadIdx.x;

    if (i < n)
    {
        if (input[i] > 1)
        {
            if (input[i] == 3)
            {
                vR[i] = 3;
            }
            else
            { //!=3
                vR[i] = 2;
            }
        }
        else
        { //<=1
            if (input[i] == 1)
            {
                vR[i] = 1;
            }
            else
            { //!=0
                vR[i] = 0;
            }
        }
    }
}

#endif

#if defined(_RF_3IF_2TREE_1INPUT_WORST)
#define _MOD 4
#define _1_INPUT
#define _2TREE

#define EXP_NAME "_RF_3IF_2TREE_1INPUT_WORST"
#define EXP_OUTPUT_FILE "_RF_3IF_2TREE_1INPUT_WORST_OUTPUT.txt"
#define EXP_RESULT_FILE "_RF_3IF_2TREE_1INPUT_WORST_RESULT.csv"

// RF_with_calc
__global__ void RF_kernel(float *input, const int n, const int offset0, const int offset1, float *vR)
{
    int i = blockIdx.x * blockDim.x + threadIdx.x;

    if (i < n)
    {
        if (input[i] > 1)
        {
            if (input[i] == 3)
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
            if (input[i] == 1)
            {
                vR[i] = 1;
            }
            else
            {
                vR[i] = 0;
            }
        }
        
        if (input[i] > (1 + offset0))
        {
            if (input[i] == (3 + offset0))
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
            if (input[i] == (1 + offset0))
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

#endif

#if defined(_RF_3IF_3TREE_1INPUT_WORST)
#define _MOD 4
#define _1_INPUT
#define _3TREE

#define EXP_NAME "_RF_3IF_3TREE_1INPUT_WORST"
#define EXP_OUTPUT_FILE "_RF_3IF_3TREE_1INPUT_WORST_OUTPUT.txt"
#define EXP_RESULT_FILE "_RF_3IF_23TREE_1INPUT_WORST_RESULT.csv"

// RF_with_calc
__global__ void RF_kernel(float *input, const int n, const int offset0, const int offset1, const int offset2, float *vR)
{
    int i = blockIdx.x * blockDim.x + threadIdx.x;

    if (i < n)
    {
        if (input[i + offset0] > 1)
        {
            if (input[i + offset0] == 3)
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
            if (input[i + offset0] == 1)
            {
                vR[i] = 1;
            }
            else
            {
                vR[i] = 0;
            }
        }
        if (input[i + offset1] > 1)
        {
            if (input[i + offset1] == 3)
            {
                vR[i] += 1;
            }
            else
            {
                vR[i] += 1;
            }
        }
        else
        {
            if (input[i + offset1] == 1)
            {
                vR[i] += 1;
            }
            else
            {
                vR[i] += 1;
            }
        }
        if (input[i + offset2] > 1)
        {
            if (input[i + offset2] == 3)
            {
                vR[i] += 1;
            }
            else
            {
                vR[i] += 1;
            }
        }
        else
        {
            if (input[i + offset2] == 1)
            {
                vR[i] += 1;
            }
            else
            {
                vR[i] += 1;
            }
        }
    }
}

#endif

#if defined(_RF_3IF_4TREE_1INPUT_WORST)
#define _MOD 4
#define _1_INPUT
#define _4TREE

#define EXP_NAME "_RF_3IF_4TREE_1INPUT_WORST"
#define EXP_OUTPUT_FILE "_RF_3IF_4TREE_1INPUT_WORST_OUTPUT.txt"
#define EXP_RESULT_FILE "_RF_3IF_4TREE_1INPUT_WORST_RESULT.csv"

// RF_with_calc
__global__ void RF_kernel(float *input, const int n, const int offset0, const int offset1, const int offset2, const int offset3, float *vR)
{
    int i = blockIdx.x * blockDim.x + threadIdx.x;

    if (i < n)
    {
        if (input[i + offset0] > 1)
        {
            if (input[i + offset0] == 3)
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
            if (input[i + offset0] == 1)
            {
                vR[i] = 1;
            }
            else
            {
                vR[i] = 0;
            }
        }
        if (input[i + offset1] > 1)
        {
            if (input[i + offset1] == 3)
            {
                vR[i] += 1;
            }
            else
            {
                vR[i] += 1;
            }
        }
        else
        {
            if (input[i + offset1] == 1)
            {
                vR[i] += 1;
            }
            else
            {
                vR[i] += 1;
            }
        }
        if (input[i + offset2] > 1)
        {
            if (input[i + offset2] == 3)
            {
                vR[i] += 1;
            }
            else
            {
                vR[i] += 1;
            }
        }
        else
        {
            if (input[i + offset2] == 1)
            {
                vR[i] += 1;
            }
            else
            {
                vR[i] += 1;
            }
        }
        if (input[i + offset3] > 1)
        {
            if (input[i + offset3] == 3)
            {
                vR[i] += 1;
            }
            else
            {
                vR[i] += 1;
            }
        }
        else
        {
            if (input[i + offset3] == 1)
            {
                vR[i] += 1;
            }
            else
            {
                vR[i] += 1;
            }
        }
    }
}

#endif

#if defined(_RF_4IF_1TREE_1INPUT_WORST)
#define _MOD 5
#define _1_INPUT

#define EXP_NAME "_RF_4IF_1TREE_1INPUT_WORST"
#define EXP_OUTPUT_FILE "_RF_4IF_1TREE_1INPUT_WORST_OUTPUT.txt"
#define EXP_RESULT_FILE "_RF_4IF_1TREE_1INPUT_WORST_RESULT.csv"

// RF_with_calc
__global__ void RF_kernel(float *input, const int n, float *vR)
{
    int i = blockIdx.x * blockDim.x + threadIdx.x;

    if (i < n)
    {
        if (input[i] > 3)
        {
            vR[i] = 4;
        }
        else
        { //<=1
            if (input[i] > 1)
            {
                if (input[i] == 3)
                {
                    vR[i] = 3;
                }
                else
                { //!=3
                    vR[i] = 2;
                }
            }
            else
            { //<=1
                if (input[i] == 1)
                {
                    vR[i] = 1;
                }
                else
                { //!=0
                    vR[i] = 0;
                }
            }
        }
    }
}

#endif

#if defined(_RF_5IF_1TREE_1INPUT_WORST)
#define _MOD 6
#define _1_INPUT

#define EXP_NAME "_RF_5IF_1TREE_1INPUT_WORST"
#define EXP_OUTPUT_FILE "_RF_5IF_1TREE_1INPUT_WORST_OUTPUT.txt"
#define EXP_RESULT_FILE "_RF_5IF_1TREE_1INPUT_WORST_RESULT.csv"

// RF_with_calc
__global__ void RF_kernel(float *input, const int n, float *vR)
{
    int i = blockIdx.x * blockDim.x + threadIdx.x;

    if (i < n)
    {
        if (input[i] > 3)
        {
            if (input[i] == 5)
            {
                vR[i] = 5;
            }
            else
            { //!=5
                vR[i] = 4;
            }
        }
        else
        { //<=1
            if (input[i] > 1)
            {
                if (input[i] == 3)
                {
                    vR[i] = 3;
                }
                else
                { //!=3
                    vR[i] = 2;
                }
            }
            else
            { //<=1
                if (input[i] == 1)
                {
                    vR[i] = 1;
                }
                else
                { //!=0
                    vR[i] = 0;
                }
            }
        }
    }
}

#endif

#if defined(_RF_7IF_1TREE_1INPUT_WORST)
#define _MOD 8
#define _1_INPUT

#define EXP_NAME "_RF_7IF_1TREE_1INPUT_WORST"
#define EXP_OUTPUT_FILE "_RF_7IF_1TREE_1INPUT_WORST_OUTPUT.txt"
#define EXP_RESULT_FILE "_RF_7IF_1TREE_1INPUT_WORST_RESULT.csv"

// RF_with_calc
__global__ void RF_kernel(float *input, const int n, float *vR)
{
    int i = blockIdx.x * blockDim.x + threadIdx.x;

    if (i < n)
    {
        if (input[i] > 3)
        {
            if (input[i] > 5)
            {
                if (input[i] == 7)
                {
                    vR[i] = 7;
                }
                else
                { //!=7
                    vR[i] = 6;
                }
            }
            else
            {
                if (input[i] == 5)
                {
                    vR[i] = 5;
                }
                else
                { //!=5
                    vR[i] = 4;
                }
            }
        }
        else
        { //<=1
            if (input[i] > 1)
            {
                if (input[i] == 3)
                {
                    vR[i] = 3;
                }
                else
                { //!=3
                    vR[i] = 2;
                }
            }
            else
            { //<=1
                if (input[i] == 1)
                {
                    vR[i] = 1;
                }
                else
                { //!=0
                    vR[i] = 0;
                }
            }
        }
    }
}

#endif

#if defined(_RF_7IF_2TREE_1INPUT_WORST)
#define _MOD 8
#define _1_INPUT
#define _2TREE

#define EXP_NAME "_RF_7IF_2TREE_1INPUT_WORST"
#define EXP_OUTPUT_FILE "_RF_7IF_2TREE_1INPUT_WORST_OUTPUT.txt"
#define EXP_RESULT_FILE "_RF_7IF_2TREE_1INPUT_WORST_RESULT.csv"

// RF_with_calc
__global__ void RF_kernel(float *input, const int n, const int offset0, const int offset1, float *vR)
{
    int i = blockIdx.x * blockDim.x + threadIdx.x;

    if (i < n)
    {
        if (input[i + offset0] > 3)
        {
            if (input[i + offset0] > 5)
            {
                if (input[i + offset0] == 7)
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
                if (input[i + offset0] == 5)
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
            if (input[i + offset0] > 1)
            {
                if (input[i + offset0] == 3)
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
                if (input[i + offset0] == 1)
                {
                    vR[i] = 1;
                }
                else
                {
                    vR[i] = 0;
                }
            }
        }
        if (input[i + offset1] > 3)
        {
            if (input[i + offset1] > 5)
            {
                if (input[i + offset1] == 7)
                {
                    vR[i] += 1;
                }
                else
                {
                    vR[i] += 1;
                }
            }
            else
            {
                if (input[i + offset1] == 5)
                {
                    vR[i] += 1;
                }
                else
                {
                    vR[i] += 1;
                }
            }
        }
        else
        {
            if (input[i + offset1] > 1)
            {
                if (input[i + offset1] == 3)
                {
                    vR[i] += 1;
                }
                else
                {
                    vR[i] += 1;
                }
            }
            else
            {
                if (input[i + offset1] == 1)
                {
                    vR[i] += 1;
                }
                else
                {
                    vR[i] += 1;
                }
            }
        }
    }
}

#endif

#if defined(_RF_7IF_3TREE_1INPUT_WORST)
#define _MOD 8
#define _1_INPUT
#define _3TREE

#define EXP_NAME "_RF_7IF_3TREE_1INPUT_WORST"
#define EXP_OUTPUT_FILE "_RF_7IF_3TREE_1INPUT_WORST_OUTPUT.txt"
#define EXP_RESULT_FILE "_RF_7IF_23TREE_1INPUT_WORST_RESULT.csv"

// RF_with_calc
__global__ void RF_kernel(float *input, const int n, const int offset0, const int offset1, const int offset2, float *vR)
{
    int i = blockIdx.x * blockDim.x + threadIdx.x;

    if (i < n)
    {
        if (input[i + offset0] > 3)
        {
            if (input[i + offset0] > 5)
            {
                if (input[i + offset0] == 7)
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
                if (input[i + offset0] == 5)
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
            if (input[i + offset0] > 1)
            {
                if (input[i + offset0] == 3)
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
                if (input[i + offset0] == 1)
                {
                    vR[i] = 1;
                }
                else
                {
                    vR[i] = 0;
                }
            }
        }
        if (input[i + offset1] > 3)
        {
            if (input[i + offset1] > 5)
            {
                if (input[i + offset1] == 7)
                {
                    vR[i] += 1;
                }
                else
                {
                    vR[i] += 1;
                }
            }
            else
            {
                if (input[i + offset1] == 5)
                {
                    vR[i] += 1;
                }
                else
                {
                    vR[i] += 1;
                }
            }
        }
        else
        {
            if (input[i + offset1] > 1)
            {
                if (input[i + offset1] == 3)
                {
                    vR[i] += 1;
                }
                else
                {
                    vR[i] += 1;
                }
            }
            else
            {
                if (input[i + offset1] == 1)
                {
                    vR[i] += 1;
                }
                else
                {
                    vR[i] += 1;
                }
            }
        }
        if (input[i + offset2] > 3)
        {
            if (input[i + offset2] > 5)
            {
                if (input[i + offset2] == 7)
                {
                    vR[i] += 1;
                }
                else
                {
                    vR[i] += 1;
                }
            }
            else
            {
                if (input[i + offset2] == 5)
                {
                    vR[i] += 1;
                }
                else
                {
                    vR[i] += 1;
                }
            }
        }
        else
        {
            if (input[i + offset2] > 1)
            {
                if (input[i + offset2] == 3)
                {
                    vR[i] += 1;
                }
                else
                {
                    vR[i] += 1;
                }
            }
            else
            {
                if (input[i + offset2] == 1)
                {
                    vR[i] += 1;
                }
                else
                {
                    vR[i] += 1;
                }
            }
        }
    }
}

#endif

#if defined(_RF_7IF_4TREE_1INPUT_WORST)
#define _MOD 8
#define _1_INPUT
#define _4TREE

#define EXP_NAME "_RF_7IF_4TREE_1INPUT_WORST"
#define EXP_OUTPUT_FILE "_RF_7IF_4TREE_1INPUT_WORST_OUTPUT.txt"
#define EXP_RESULT_FILE "_RF_7IF_4TREE_1INPUT_WORST_RESULT.csv"

// RF_with_calc
__global__ void RF_kernel(float *input, const int n, const int offset0, const int offset1, const int offset2, const int offset3, float *vR)
{
    int i = blockIdx.x * blockDim.x + threadIdx.x;

    if (i < n)
    {
        if (input[i + offset0] > 3)
        {
            if (input[i + offset0] > 5)
            {
                if (input[i + offset0] == 7)
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
                if (input[i + offset0] == 5)
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
            if (input[i + offset0] > 1)
            {
                if (input[i + offset0] == 3)
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
                if (input[i + offset0] == 1)
                {
                    vR[i] = 1;
                }
                else
                {
                    vR[i] = 0;
                }
            }
        }
        if (input[i + offset1] > 3)
        {
            if (input[i + offset1] > 5)
            {
                if (input[i + offset1] == 7)
                {
                    vR[i] += 1;
                }
                else
                {
                    vR[i] += 1;
                }
            }
            else
            {
                if (input[i + offset1] == 5)
                {
                    vR[i] += 1;
                }
                else
                {
                    vR[i] += 1;
                }
            }
        }
        else
        {
            if (input[i + offset1] > 1)
            {
                if (input[i + offset1] == 3)
                {
                    vR[i] += 1;
                }
                else
                {
                    vR[i] += 1;
                }
            }
            else
            {
                if (input[i + offset1] == 1)
                {
                    vR[i] += 1;
                }
                else
                {
                    vR[i] += 1;
                }
            }
        }
        if (input[i + offset2] > 3)
        {
            if (input[i + offset2] > 5)
            {
                if (input[i + offset2] == 7)
                {
                    vR[i] += 1;
                }
                else
                {
                    vR[i] += 1;
                }
            }
            else
            {
                if (input[i + offset2] == 5)
                {
                    vR[i] += 1;
                }
                else
                {
                    vR[i] += 1;
                }
            }
        }
        else
        {
            if (input[i + offset2] > 1)
            {
                if (input[i + offset2] == 3)
                {
                    vR[i] += 1;
                }
                else
                {
                    vR[i] += 1;
                }
            }
            else
            {
                if (input[i + offset2] == 1)
                {
                    vR[i] += 1;
                }
                else
                {
                    vR[i] += 1;
                }
            }
        }
        if (input[i + offset3] > 3)
        {
            if (input[i + offset3] > 5)
            {
                if (input[i + offset3] == 7)
                {
                    vR[i] += 1;
                }
                else
                {
                    vR[i] += 1;
                }
            }
            else
            {
                if (input[i + offset3] == 5)
                {
                    vR[i] += 1;
                }
                else
                {
                    vR[i] += 1;
                }
            }
        }
        else
        {
            if (input[i + offset3] > 1)
            {
                if (input[i + offset3] == 3)
                {
                    vR[i] += 1;
                }
                else
                {
                    vR[i] += 1;
                }
            }
            else
            {
                if (input[i + offset3] == 1)
                {
                    vR[i] += 1;
                }
                else
                {
                    vR[i] += 1;
                }
            }
        }
    }
}

#endif

#if defined(_RF_15IF_1TREE_1INPUT_WORST)
#define _MOD 16
#define _1_INPUT

#define EXP_NAME "_RF_15IF_1TREE_1INPUT_WORST"
#define EXP_OUTPUT_FILE "_RF_15IF_1TREE_1INPUT_WORST_OUTPUT.txt"
#define EXP_RESULT_FILE "_RF_15IF_1TREE_1INPUT_WORST_RESULT.csv"

// RF_with_calc
__global__ void RF_kernel(float *input, const int n, float *vR)
{
    int i = blockIdx.x * blockDim.x + threadIdx.x;

    if (i < n)
    {
        if (input[i] > 7)
        {
            if (input[i] > 11)
            {
                if (input[i] > 13)
                {
                    if (input[i] == 15)
                    {
                        vR[i] = 15;
                    }
                    else
                    { //!=15
                        vR[i] = 14;
                    }
                }
                else
                { //!<=13
                    if (input[i] == 13)
                    {
                        vR[i] = 13;
                    }
                    else
                    { //!=5
                        vR[i] = 12;
                    }
                }
            }
            else
            { //<=11
                if (input[i] > 9)
                {
                    if (input[i] == 11)
                    {
                        vR[i] = 11;
                    }
                    else
                    { //!=3
                        vR[i] = 10;
                    }
                }
                else
                { //<=9
                    if (input[i] == 9)
                    {
                        vR[i] = 9;
                    }
                    else
                    { //!=
                        vR[i] = 8;
                    }
                }
            }
        }
        else
        { //<=7
            if (input[i] > 3)
            {
                if (input[i] > 5)
                {
                    if (input[i] == 7)
                    {
                        vR[i] = 7;
                    }
                    else
                    { //!=7
                        vR[i] = 6;
                    }
                }
                else
                {
                    if (input[i] == 5)
                    {
                        vR[i] = 5;
                    }
                    else
                    { //!=5
                        vR[i] = 4;
                    }
                }
            }
            else
            { //<=1
                if (input[i] > 1)
                {
                    if (input[i] == 3)
                    {
                        vR[i] = 3;
                    }
                    else
                    { //!=3
                        vR[i] = 2;
                    }
                }
                else
                { //<=1
                    if (input[i] == 1)
                    {
                        vR[i] = 1;
                    }
                    else
                    { //!=0
                        vR[i] = 0;
                    }
                }
            }
        }
    }
}

#endif

#if defined(_RF_15IF_2TREE_1INPUT_WORST)
#define _MOD 16
#define _1_INPUT
#define _2TREE

#define EXP_NAME "_RF_15IF_2TREE_1INPUT_WORST"
#define EXP_OUTPUT_FILE "_RF_15IF_2TREE_1INPUT_WORST_OUTPUT.txt"
#define EXP_RESULT_FILE "_RF_15IF_2TREE_1INPUT_WORST_RESULT.csv"

// RF_with_calc
__global__ void RF_kernel(float *input, const int n, const int offset0, const int offset1, float *vR)
{
    int i = blockIdx.x * blockDim.x + threadIdx.x;

    if (i < n)
    {
        if (input[i + offset0] > 7)
        {
            if (input[i + offset0] > 11)
            {
                if (input[i + offset0] > 13)
                {
                    if (input[i + offset0] == 15)
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
                    if (input[i + offset0] == 13)
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
                if (input[i + offset0] > 9)
                {
                    if (input[i + offset0] == 11)
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
                    if (input[i + offset0] == 9)
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
            if (input[i + offset0] > 3)
            {
                if (input[i + offset0] > 5)
                {
                    if (input[i + offset0] == 7)
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
                    if (input[i + offset0] == 5)
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
                if (input[i + offset0] > 1)
                {
                    if (input[i + offset0] == 3)
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
                    if (input[i + offset0] == 1)
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
        if (input[i + offset1] > 7)
        {
            if (input[i + offset1] > 11)
            {
                if (input[i + offset1] > 13)
                {
                    if (input[i + offset1] == 15)
                    {
                        vR[i] += 1;
                    }
                    else
                    {
                        vR[i] += 1;
                    }
                }
                else
                {
                    if (input[i + offset1] == 13)
                    {
                        vR[i] += 1;
                    }
                    else
                    {
                        vR[i] += 1;
                    }
                }
            }
            else
            {
                if (input[i + offset1] > 9)
                {
                    if (input[i + offset1] == 11)
                    {
                        vR[i] += 1;
                    }
                    else
                    {
                        vR[i] += 1;
                    }
                }
                else
                {
                    if (input[i + offset1] == 9)
                    {
                        vR[i] += 1;
                    }
                    else
                    {
                        vR[i] += 1;
                    }
                }
            }
        }
        else
        {
            if (input[i + offset1] > 3)
            {
                if (input[i + offset1] > 5)
                {
                    if (input[i + offset1] == 7)
                    {
                        vR[i] += 1;
                    }
                    else
                    {
                        vR[i] += 1;
                    }
                }
                else
                {
                    if (input[i + offset1] == 5)
                    {
                        vR[i] += 1;
                    }
                    else
                    {
                        vR[i] += 1;
                    }
                }
            }
            else
            {
                if (input[i + offset1] > 1)
                {
                    if (input[i + offset1] == 3)
                    {
                        vR[i] += 1;
                    }
                    else
                    {
                        vR[i] += 1;
                    }
                }
                else
                {
                    if (input[i + offset1] == 1)
                    {
                        vR[i] += 1;
                    }
                    else
                    {
                        vR[i] += 1;
                    }
                }
            }
        }
    }
}

#endif

#if defined(_RF_15IF_3TREE_1INPUT_WORST)
#define _MOD 16
#define _1_INPUT
#define _3TREE

#define EXP_NAME "_RF_15IF_3TREE_1INPUT_WORST"
#define EXP_OUTPUT_FILE "_RF_15IF_3TREE_1INPUT_WORST_OUTPUT.txt"
#define EXP_RESULT_FILE "_RF_15IF_23TREE_1INPUT_WORST_RESULT.csv"

// RF_with_calc
__global__ void RF_kernel(float *input, const int n, const int offset0, const int offset1, const int offset2, float *vR)
{
    int i = blockIdx.x * blockDim.x + threadIdx.x;

    if (i < n)
    {
        if (input[i + offset0] > 7)
        {
            if (input[i + offset0] > 11)
            {
                if (input[i + offset0] > 13)
                {
                    if (input[i + offset0] == 15)
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
                    if (input[i + offset0] == 13)
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
                if (input[i + offset0] > 9)
                {
                    if (input[i + offset0] == 11)
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
                    if (input[i + offset0] == 9)
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
            if (input[i + offset0] > 3)
            {
                if (input[i + offset0] > 5)
                {
                    if (input[i + offset0] == 7)
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
                    if (input[i + offset0] == 5)
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
                if (input[i + offset0] > 1)
                {
                    if (input[i + offset0] == 3)
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
                    if (input[i + offset0] == 1)
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
        if (input[i + offset1] > 7)
        {
            if (input[i + offset1] > 11)
            {
                if (input[i + offset1] > 13)
                {
                    if (input[i + offset1] == 15)
                    {
                        vR[i] += 1;
                    }
                    else
                    {
                        vR[i] += 1;
                    }
                }
                else
                {
                    if (input[i + offset1] == 13)
                    {
                        vR[i] += 1;
                    }
                    else
                    {
                        vR[i] += 1;
                    }
                }
            }
            else
            {
                if (input[i + offset1] > 9)
                {
                    if (input[i + offset1] == 11)
                    {
                        vR[i] += 1;
                    }
                    else
                    {
                        vR[i] += 1;
                    }
                }
                else
                {
                    if (input[i + offset1] == 9)
                    {
                        vR[i] += 1;
                    }
                    else
                    {
                        vR[i] += 1;
                    }
                }
            }
        }
        else
        {
            if (input[i + offset1] > 3)
            {
                if (input[i + offset1] > 5)
                {
                    if (input[i + offset1] == 7)
                    {
                        vR[i] += 1;
                    }
                    else
                    {
                        vR[i] += 1;
                    }
                }
                else
                {
                    if (input[i + offset1] == 5)
                    {
                        vR[i] += 1;
                    }
                    else
                    {
                        vR[i] += 1;
                    }
                }
            }
            else
            {
                if (input[i + offset1] > 1)
                {
                    if (input[i + offset1] == 3)
                    {
                        vR[i] += 1;
                    }
                    else
                    {
                        vR[i] += 1;
                    }
                }
                else
                {
                    if (input[i + offset1] == 1)
                    {
                        vR[i] += 1;
                    }
                    else
                    {
                        vR[i] += 1;
                    }
                }
            }
        }
        if (input[i + offset2] > 7)
        {
            if (input[i + offset2] > 11)
            {
                if (input[i + offset2] > 13)
                {
                    if (input[i + offset2] == 15)
                    {
                        vR[i] += 1;
                    }
                    else
                    {
                        vR[i] += 1;
                    }
                }
                else
                {
                    if (input[i + offset2] == 13)
                    {
                        vR[i] += 1;
                    }
                    else
                    {
                        vR[i] += 1;
                    }
                }
            }
            else
            {
                if (input[i + offset2] > 9)
                {
                    if (input[i + offset2] == 11)
                    {
                        vR[i] += 1;
                    }
                    else
                    {
                        vR[i] += 1;
                    }
                }
                else
                {
                    if (input[i + offset2] == 9)
                    {
                        vR[i] += 1;
                    }
                    else
                    {
                        vR[i] += 1;
                    }
                }
            }
        }
        else
        {
            if (input[i + offset2] > 3)
            {
                if (input[i + offset2] > 5)
                {
                    if (input[i + offset2] == 7)
                    {
                        vR[i] += 1;
                    }
                    else
                    {
                        vR[i] += 1;
                    }
                }
                else
                {
                    if (input[i + offset2] == 5)
                    {
                        vR[i] += 1;
                    }
                    else
                    {
                        vR[i] += 1;
                    }
                }
            }
            else
            {
                if (input[i + offset2] > 1)
                {
                    if (input[i + offset2] == 3)
                    {
                        vR[i] += 1;
                    }
                    else
                    {
                        vR[i] += 1;
                    }
                }
                else
                {
                    if (input[i + offset2] == 1)
                    {
                        vR[i] += 1;
                    }
                    else
                    {
                        vR[i] += 1;
                    }
                }
            }
        }
    }
}

#endif

#if defined(_RF_15IF_4TREE_1INPUT_WORST)
#define _MOD 16
#define _1_INPUT
#define _4TREE

#define EXP_NAME "_RF_15IF_4TREE_1INPUT_WORST"
#define EXP_OUTPUT_FILE "_RF_15IF_4TREE_1INPUT_WORST_OUTPUT.txt"
#define EXP_RESULT_FILE "_RF_15IF_4TREE_1INPUT_WORST_RESULT.csv"

// RF_with_calc
__global__ void RF_kernel(float *input, const int n, const int offset0, const int offset1, const int offset2, const int offset3, float *vR)
{
    int i = blockIdx.x * blockDim.x + threadIdx.x;

    if (i < n)
    {
        if (input[i + offset0] > 7)
        {
            if (input[i + offset0] > 11)
            {
                if (input[i + offset0] > 13)
                {
                    if (input[i + offset0] == 15)
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
                    if (input[i + offset0] == 13)
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
                if (input[i + offset0] > 9)
                {
                    if (input[i + offset0] == 11)
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
                    if (input[i + offset0] == 9)
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
            if (input[i + offset0] > 3)
            {
                if (input[i + offset0] > 5)
                {
                    if (input[i + offset0] == 7)
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
                    if (input[i + offset0] == 5)
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
                if (input[i + offset0] > 1)
                {
                    if (input[i + offset0] == 3)
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
                    if (input[i + offset0] == 1)
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
        if (input[i + offset1] > 7)
        {
            if (input[i + offset1] > 11)
            {
                if (input[i + offset1] > 13)
                {
                    if (input[i + offset1] == 15)
                    {
                        vR[i] += 1;
                    }
                    else
                    {
                        vR[i] += 1;
                    }
                }
                else
                {
                    if (input[i + offset1] == 13)
                    {
                        vR[i] += 1;
                    }
                    else
                    {
                        vR[i] += 1;
                    }
                }
            }
            else
            {
                if (input[i + offset1] > 9)
                {
                    if (input[i + offset1] == 11)
                    {
                        vR[i] += 1;
                    }
                    else
                    {
                        vR[i] += 1;
                    }
                }
                else
                {
                    if (input[i + offset1] == 9)
                    {
                        vR[i] += 1;
                    }
                    else
                    {
                        vR[i] += 1;
                    }
                }
            }
        }
        else
        {
            if (input[i + offset1] > 3)
            {
                if (input[i + offset1] > 5)
                {
                    if (input[i + offset1] == 7)
                    {
                        vR[i] += 1;
                    }
                    else
                    {
                        vR[i] += 1;
                    }
                }
                else
                {
                    if (input[i + offset1] == 5)
                    {
                        vR[i] += 1;
                    }
                    else
                    {
                        vR[i] += 1;
                    }
                }
            }
            else
            {
                if (input[i + offset1] > 1)
                {
                    if (input[i + offset1] == 3)
                    {
                        vR[i] += 1;
                    }
                    else
                    {
                        vR[i] += 1;
                    }
                }
                else
                {
                    if (input[i + offset1] == 1)
                    {
                        vR[i] += 1;
                    }
                    else
                    {
                        vR[i] += 1;
                    }
                }
            }
        }
        if (input[i + offset2] > 7)
        {
            if (input[i + offset2] > 11)
            {
                if (input[i + offset2] > 13)
                {
                    if (input[i + offset2] == 15)
                    {
                        vR[i] += 1;
                    }
                    else
                    {
                        vR[i] += 1;
                    }
                }
                else
                {
                    if (input[i + offset2] == 13)
                    {
                        vR[i] += 1;
                    }
                    else
                    {
                        vR[i] += 1;
                    }
                }
            }
            else
            {
                if (input[i + offset2] > 9)
                {
                    if (input[i + offset2] == 11)
                    {
                        vR[i] += 1;
                    }
                    else
                    {
                        vR[i] += 1;
                    }
                }
                else
                {
                    if (input[i + offset2] == 9)
                    {
                        vR[i] += 1;
                    }
                    else
                    {
                        vR[i] += 1;
                    }
                }
            }
        }
        else
        {
            if (input[i + offset2] > 3)
            {
                if (input[i + offset2] > 5)
                {
                    if (input[i + offset2] == 7)
                    {
                        vR[i] += 1;
                    }
                    else
                    {
                        vR[i] += 1;
                    }
                }
                else
                {
                    if (input[i + offset2] == 5)
                    {
                        vR[i] += 1;
                    }
                    else
                    {
                        vR[i] += 1;
                    }
                }
            }
            else
            {
                if (input[i + offset2] > 1)
                {
                    if (input[i + offset2] == 3)
                    {
                        vR[i] += 1;
                    }
                    else
                    {
                        vR[i] += 1;
                    }
                }
                else
                {
                    if (input[i + offset2] == 1)
                    {
                        vR[i] += 1;
                    }
                    else
                    {
                        vR[i] += 1;
                    }
                }
            }
        }
        if (input[i + offset3] > 7)
        {
            if (input[i + offset3] > 11)
            {
                if (input[i + offset3] > 13)
                {
                    if (input[i + offset3] == 15)
                    {
                        vR[i] += 1;
                    }
                    else
                    {
                        vR[i] += 1;
                    }
                }
                else
                {
                    if (input[i + offset3] == 13)
                    {
                        vR[i] += 1;
                    }
                    else
                    {
                        vR[i] += 1;
                    }
                }
            }
            else
            {
                if (input[i + offset3] > 9)
                {
                    if (input[i + offset3] == 11)
                    {
                        vR[i] += 1;
                    }
                    else
                    {
                        vR[i] += 1;
                    }
                }
                else
                {
                    if (input[i + offset3] == 9)
                    {
                        vR[i] += 1;
                    }
                    else
                    {
                        vR[i] += 1;
                    }
                }
            }
        }
        else
        {
            if (input[i + offset3] > 3)
            {
                if (input[i + offset3] > 5)
                {
                    if (input[i + offset3] == 7)
                    {
                        vR[i] += 1;
                    }
                    else
                    {
                        vR[i] += 1;
                    }
                }
                else
                {
                    if (input[i + offset3] == 5)
                    {
                        vR[i] += 1;
                    }
                    else
                    {
                        vR[i] += 1;
                    }
                }
            }
            else
            {
                if (input[i + offset3] > 1)
                {
                    if (input[i + offset3] == 3)
                    {
                        vR[i] += 1;
                    }
                    else
                    {
                        vR[i] += 1;
                    }
                }
                else
                {
                    if (input[i + offset3] == 1)
                    {
                        vR[i] += 1;
                    }
                    else
                    {
                        vR[i] += 1;
                    }
                }
            }
        }
    }
}

#endif

#if defined(_RF_31IF_1TREE_1INPUT_WORST)
#define _MOD 32
#define _1_INPUT

#define EXP_NAME "_RF_31IF_1TREE_1INPUT_WORST"
#define EXP_OUTPUT_FILE "_RF_31IF_1TREE_1INPUT_WORST_OUTPUT.txt"
#define EXP_RESULT_FILE "_RF_31IF_1TREE_1INPUT_WORST_RESULT.csv"

// RF_with_calc
__global__ void RF_kernel(float *input, const int n, float *vR)
{
    int i = blockIdx.x * blockDim.x + threadIdx.x;

    if (i < n)
    {
        if (input[i] > 15)
        {
            if (input[i] > 23)
            {
                if (input[i] > 27)
                {
                    if (input[i] > 29)
                    {
                        if (input[i] == 31)
                        {
                            vR[i] = 31;
                        }
                        else
                        { //!=31
                            vR[i] = 30;
                        }
                    }
                    else
                    { //<=29
                        if (input[i] == 29)
                        {
                            vR[i] = 29;
                        }
                        else
                        { //!!=29
                            vR[i] = 28;
                        }
                    }
                }
                else
                { //<=27
                    if (input[i] > 25)
                    {
                        if (input[i] == 27)
                        {
                            vR[i] = 27;
                        }
                        else
                        { //!=27
                            vR[i] = 26;
                        }
                    }
                    else
                    { //<=25
                        if (input[i] == 25)
                        {
                            vR[i] = 25;
                        }
                        else
                        { //!=25
                            vR[i] = 24;
                        }
                    }
                }
            }
            else
            { //<=23
                if (input[i] > 19)
                {
                    if (input[i] > 21)
                    {
                        if (input[i] == 23)
                        {
                            vR[i] = 23;
                        }
                        else
                        { //!=23
                            vR[i] = 22;
                        }
                    }
                    else
                    { //<=21
                        if (input[i] == 21)
                        {
                            vR[i] = 21;
                        }
                        else
                        { //!=21
                            vR[i] = 20;
                        }
                    }
                }
                else
                { //<=19
                    if (input[i] > 17)
                    {
                        if (input[i] == 19)
                        {
                            vR[i] = 19;
                        }
                        else
                        { //!=19
                            vR[i] = 18;
                        }
                    }
                    else
                    { //<=17
                        if (input[i] == 17)
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
        { //<=15
            if (input[i] > 7)
            {
                if (input[i] > 11)
                {
                    if (input[i] > 13)
                    {
                        if (input[i] == 15)
                        {
                            vR[i] = 15;
                        }
                        else
                        { //!=15
                            vR[i] = 14;
                        }
                    }
                    else
                    { //!<=13
                        if (input[i] == 13)
                        {
                            vR[i] = 13;
                        }
                        else
                        { //!=5
                            vR[i] = 12;
                        }
                    }
                }
                else
                { //<=11
                    if (input[i] > 9)
                    {
                        if (input[i] == 11)
                        {
                            vR[i] = 11;
                        }
                        else
                        { //!=3
                            vR[i] = 10;
                        }
                    }
                    else
                    { //<=9
                        if (input[i] == 9)
                        {
                            vR[i] = 9;
                        }
                        else
                        { //!=
                            vR[i] = 8;
                        }
                    }
                }
            }
            else
            { //<=7
                if (input[i] > 3)
                {
                    if (input[i] > 5)
                    {
                        if (input[i] == 7)
                        {
                            vR[i] = 7;
                        }
                        else
                        { //!=7
                            vR[i] = 6;
                        }
                    }
                    else
                    {
                        if (input[i] == 5)
                        {
                            vR[i] = 5;
                        }
                        else
                        { //!=5
                            vR[i] = 4;
                        }
                    }
                }
                else
                { //<=1
                    if (input[i] > 1)
                    {
                        if (input[i] == 3)
                        {
                            vR[i] = 3;
                        }
                        else
                        { //!=3
                            vR[i] = 2;
                        }
                    }
                    else
                    { //<=1
                        if (input[i] == 1)
                        {
                            vR[i] = 1;
                        }
                        else
                        { //!=0
                            vR[i] = 0;
                        }
                    }
                }
            }
        }
    }
}

#endif

#if defined(_RF_31IF_2TREE_1INPUT_WORST)
#define _MOD 32
#define _1_INPUT
#define _2TREE

#define EXP_NAME "_RF_31IF_2TREE_1INPUT_WORST"
#define EXP_OUTPUT_FILE "_RF_31IF_2TREE_1INPUT_WORST_OUTPUT.txt"
#define EXP_RESULT_FILE "_RF_31IF_2TREE_1INPUT_WORST_RESULT.csv"

// RF_with_calc
__global__ void RF_kernel(float *input, const int n, const int offset0, const int offset1, float *vR)
{
    int i = blockIdx.x * blockDim.x + threadIdx.x;

    if (i < n)
    {
        if (input[i + offset0] > 15)
        {
            if (input[i + offset0] > 23)
            {
                if (input[i + offset0] > 27)
                {
                    if (input[i + offset0] > 29)
                    {
                        if (input[i + offset0] == 31)
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
                        if (input[i + offset0] == 29)
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
                    if (input[i + offset0] > 25)
                    {
                        if (input[i + offset0] == 27)
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
                        if (input[i + offset0] == 25)
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
                if (input[i + offset0] > 19)
                {
                    if (input[i + offset0] > 21)
                    {
                        if (input[i + offset0] == 23)
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
                        if (input[i + offset0] == 21)
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
                    if (input[i + offset0] > 17)
                    {
                        if (input[i + offset0] == 19)
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
                        if (input[i + offset0] == 17)
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
            if (input[i + offset0] > 7)
            {
                if (input[i + offset0] > 11)
                {
                    if (input[i + offset0] > 13)
                    {
                        if (input[i + offset0] == 15)
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
                        if (input[i + offset0] == 13)
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
                    if (input[i + offset0] > 9)
                    {
                        if (input[i + offset0] == 11)
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
                        if (input[i + offset0] == 9)
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
                if (input[i + offset0] > 3)
                {
                    if (input[i + offset0] > 5)
                    {
                        if (input[i + offset0] == 7)
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
                        if (input[i + offset0] == 5)
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
                    if (input[i + offset0] > 1)
                    {
                        if (input[i + offset0] == 3)
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
                        if (input[i + offset0] == 1)
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
        if (input[i + offset1] > 15)
        {
            if (input[i + offset1] > 23)
            {
                if (input[i + offset1] > 27)
                {
                    if (input[i + offset1] > 29)
                    {
                        if (input[i + offset1] == 31)
                        {
                            vR[i] += 1;
                        }
                        else
                        {
                            vR[i] += 1;
                        }
                    }
                    else
                    {
                        if (input[i + offset1] == 29)
                        {
                            vR[i] += 1;
                        }
                        else
                        {
                            vR[i] += 1;
                        }
                    }
                }
                else
                {
                    if (input[i + offset1] > 25)
                    {
                        if (input[i + offset1] == 27)
                        {
                            vR[i] += 1;
                        }
                        else
                        {
                            vR[i] += 1;
                        }
                    }
                    else
                    {
                        if (input[i + offset1] == 25)
                        {
                            vR[i] += 1;
                        }
                        else
                        {
                            vR[i] += 1;
                        }
                    }
                }
            }
            else
            {
                if (input[i + offset1] > 19)
                {
                    if (input[i + offset1] > 21)
                    {
                        if (input[i + offset1] == 23)
                        {
                            vR[i] += 1;
                        }
                        else
                        {
                            vR[i] += 1;
                        }
                    }
                    else
                    {
                        if (input[i + offset1] == 21)
                        {
                            vR[i] += 1;
                        }
                        else
                        {
                            vR[i] += 1;
                        }
                    }
                }
                else
                {
                    if (input[i + offset1] > 17)
                    {
                        if (input[i + offset1] == 19)
                        {
                            vR[i] += 1;
                        }
                        else
                        {
                            vR[i] += 1;
                        }
                    }
                    else
                    {
                        if (input[i + offset1] == 17)
                        {
                            vR[i] += 1;
                        }
                        else
                        {
                            vR[i] += 1;
                        }
                    }
                }
            }
        }
        else
        {
            if (input[i + offset1] > 7)
            {
                if (input[i + offset1] > 11)
                {
                    if (input[i + offset1] > 13)
                    {
                        if (input[i + offset1] == 15)
                        {
                            vR[i] += 1;
                        }
                        else
                        {
                            vR[i] += 1;
                        }
                    }
                    else
                    {
                        if (input[i + offset1] == 13)
                        {
                            vR[i] += 1;
                        }
                        else
                        {
                            vR[i] += 1;
                        }
                    }
                }
                else
                {
                    if (input[i + offset1] > 9)
                    {
                        if (input[i + offset1] == 11)
                        {
                            vR[i] += 1;
                        }
                        else
                        {
                            vR[i] += 1;
                        }
                    }
                    else
                    {
                        if (input[i + offset1] == 9)
                        {
                            vR[i] += 1;
                        }
                        else
                        {
                            vR[i] += 1;
                        }
                    }
                }
            }
            else
            {
                if (input[i + offset1] > 3)
                {
                    if (input[i + offset1] > 5)
                    {
                        if (input[i + offset1] == 7)
                        {
                            vR[i] += 1;
                        }
                        else
                        {
                            vR[i] += 1;
                        }
                    }
                    else
                    {
                        if (input[i + offset1] == 5)
                        {
                            vR[i] += 1;
                        }
                        else
                        {
                            vR[i] += 1;
                        }
                    }
                }
                else
                {
                    if (input[i + offset1] > 1)
                    {
                        if (input[i + offset1] == 3)
                        {
                            vR[i] += 1;
                        }
                        else
                        {
                            vR[i] += 1;
                        }
                    }
                    else
                    {
                        if (input[i + offset1] == 1)
                        {
                            vR[i] += 1;
                        }
                        else
                        {
                            vR[i] += 1;
                        }
                    }
                }
            }
        }
    }
}

#endif

#if defined(_RF_31IF_3TREE_1INPUT_WORST)
#define _MOD 32
#define _1_INPUT
#define _3TREE

#define EXP_NAME "_RF_31IF_3TREE_1INPUT_WORST"
#define EXP_OUTPUT_FILE "_RF_31IF_3TREE_1INPUT_WORST_OUTPUT.txt"
#define EXP_RESULT_FILE "_RF_31IF_23TREE_1INPUT_WORST_RESULT.csv"

// RF_with_calc
__global__ void RF_kernel(float *input, const int n, const int offset0, const int offset1, const int offset2, float *vR)
{
    int i = blockIdx.x * blockDim.x + threadIdx.x;

    if (i < n)
    {
        if (input[i + offset0] > 15)
        {
            if (input[i + offset0] > 23)
            {
                if (input[i + offset0] > 27)
                {
                    if (input[i + offset0] > 29)
                    {
                        if (input[i + offset0] == 31)
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
                        if (input[i + offset0] == 29)
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
                    if (input[i + offset0] > 25)
                    {
                        if (input[i + offset0] == 27)
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
                        if (input[i + offset0] == 25)
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
                if (input[i + offset0] > 19)
                {
                    if (input[i + offset0] > 21)
                    {
                        if (input[i + offset0] == 23)
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
                        if (input[i + offset0] == 21)
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
                    if (input[i + offset0] > 17)
                    {
                        if (input[i + offset0] == 19)
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
                        if (input[i + offset0] == 17)
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
            if (input[i + offset0] > 7)
            {
                if (input[i + offset0] > 11)
                {
                    if (input[i + offset0] > 13)
                    {
                        if (input[i + offset0] == 15)
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
                        if (input[i + offset0] == 13)
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
                    if (input[i + offset0] > 9)
                    {
                        if (input[i + offset0] == 11)
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
                        if (input[i + offset0] == 9)
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
                if (input[i + offset0] > 3)
                {
                    if (input[i + offset0] > 5)
                    {
                        if (input[i + offset0] == 7)
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
                        if (input[i + offset0] == 5)
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
                    if (input[i + offset0] > 1)
                    {
                        if (input[i + offset0] == 3)
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
                        if (input[i + offset0] == 1)
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
        if (input[i + offset1] > 15)
        {
            if (input[i + offset1] > 23)
            {
                if (input[i + offset1] > 27)
                {
                    if (input[i + offset1] > 29)
                    {
                        if (input[i + offset1] == 31)
                        {
                            vR[i] += 1;
                        }
                        else
                        {
                            vR[i] += 1;
                        }
                    }
                    else
                    {
                        if (input[i + offset1] == 29)
                        {
                            vR[i] += 1;
                        }
                        else
                        {
                            vR[i] += 1;
                        }
                    }
                }
                else
                {
                    if (input[i + offset1] > 25)
                    {
                        if (input[i + offset1] == 27)
                        {
                            vR[i] += 1;
                        }
                        else
                        {
                            vR[i] += 1;
                        }
                    }
                    else
                    {
                        if (input[i + offset1] == 25)
                        {
                            vR[i] += 1;
                        }
                        else
                        {
                            vR[i] += 1;
                        }
                    }
                }
            }
            else
            {
                if (input[i + offset1] > 19)
                {
                    if (input[i + offset1] > 21)
                    {
                        if (input[i + offset1] == 23)
                        {
                            vR[i] += 1;
                        }
                        else
                        {
                            vR[i] += 1;
                        }
                    }
                    else
                    {
                        if (input[i + offset1] == 21)
                        {
                            vR[i] += 1;
                        }
                        else
                        {
                            vR[i] += 1;
                        }
                    }
                }
                else
                {
                    if (input[i + offset1] > 17)
                    {
                        if (input[i + offset1] == 19)
                        {
                            vR[i] += 1;
                        }
                        else
                        {
                            vR[i] += 1;
                        }
                    }
                    else
                    {
                        if (input[i + offset1] == 17)
                        {
                            vR[i] += 1;
                        }
                        else
                        {
                            vR[i] += 1;
                        }
                    }
                }
            }
        }
        else
        {
            if (input[i + offset1] > 7)
            {
                if (input[i + offset1] > 11)
                {
                    if (input[i + offset1] > 13)
                    {
                        if (input[i + offset1] == 15)
                        {
                            vR[i] += 1;
                        }
                        else
                        {
                            vR[i] += 1;
                        }
                    }
                    else
                    {
                        if (input[i + offset1] == 13)
                        {
                            vR[i] += 1;
                        }
                        else
                        {
                            vR[i] += 1;
                        }
                    }
                }
                else
                {
                    if (input[i + offset1] > 9)
                    {
                        if (input[i + offset1] == 11)
                        {
                            vR[i] += 1;
                        }
                        else
                        {
                            vR[i] += 1;
                        }
                    }
                    else
                    {
                        if (input[i + offset1] == 9)
                        {
                            vR[i] += 1;
                        }
                        else
                        {
                            vR[i] += 1;
                        }
                    }
                }
            }
            else
            {
                if (input[i + offset1] > 3)
                {
                    if (input[i + offset1] > 5)
                    {
                        if (input[i + offset1] == 7)
                        {
                            vR[i] += 1;
                        }
                        else
                        {
                            vR[i] += 1;
                        }
                    }
                    else
                    {
                        if (input[i + offset1] == 5)
                        {
                            vR[i] += 1;
                        }
                        else
                        {
                            vR[i] += 1;
                        }
                    }
                }
                else
                {
                    if (input[i + offset1] > 1)
                    {
                        if (input[i + offset1] == 3)
                        {
                            vR[i] += 1;
                        }
                        else
                        {
                            vR[i] += 1;
                        }
                    }
                    else
                    {
                        if (input[i + offset1] == 1)
                        {
                            vR[i] += 1;
                        }
                        else
                        {
                            vR[i] += 1;
                        }
                    }
                }
            }
        }
        if (input[i + offset2] > 15)
        {
            if (input[i + offset2] > 23)
            {
                if (input[i + offset2] > 27)
                {
                    if (input[i + offset2] > 29)
                    {
                        if (input[i + offset2] == 31)
                        {
                            vR[i] += 1;
                        }
                        else
                        {
                            vR[i] += 1;
                        }
                    }
                    else
                    {
                        if (input[i + offset2] == 29)
                        {
                            vR[i] += 1;
                        }
                        else
                        {
                            vR[i] += 1;
                        }
                    }
                }
                else
                {
                    if (input[i + offset2] > 25)
                    {
                        if (input[i + offset2] == 27)
                        {
                            vR[i] += 1;
                        }
                        else
                        {
                            vR[i] += 1;
                        }
                    }
                    else
                    {
                        if (input[i + offset2] == 25)
                        {
                            vR[i] += 1;
                        }
                        else
                        {
                            vR[i] += 1;
                        }
                    }
                }
            }
            else
            {
                if (input[i + offset2] > 19)
                {
                    if (input[i + offset2] > 21)
                    {
                        if (input[i + offset2] == 23)
                        {
                            vR[i] += 1;
                        }
                        else
                        {
                            vR[i] += 1;
                        }
                    }
                    else
                    {
                        if (input[i + offset2] == 21)
                        {
                            vR[i] += 1;
                        }
                        else
                        {
                            vR[i] += 1;
                        }
                    }
                }
                else
                {
                    if (input[i + offset2] > 17)
                    {
                        if (input[i + offset2] == 19)
                        {
                            vR[i] += 1;
                        }
                        else
                        {
                            vR[i] += 1;
                        }
                    }
                    else
                    {
                        if (input[i + offset2] == 17)
                        {
                            vR[i] += 1;
                        }
                        else
                        {
                            vR[i] += 1;
                        }
                    }
                }
            }
        }
        else
        {
            if (input[i + offset2] > 7)
            {
                if (input[i + offset2] > 11)
                {
                    if (input[i + offset2] > 13)
                    {
                        if (input[i + offset2] == 15)
                        {
                            vR[i] += 1;
                        }
                        else
                        {
                            vR[i] += 1;
                        }
                    }
                    else
                    {
                        if (input[i + offset2] == 13)
                        {
                            vR[i] += 1;
                        }
                        else
                        {
                            vR[i] += 1;
                        }
                    }
                }
                else
                {
                    if (input[i + offset2] > 9)
                    {
                        if (input[i + offset2] == 11)
                        {
                            vR[i] += 1;
                        }
                        else
                        {
                            vR[i] += 1;
                        }
                    }
                    else
                    {
                        if (input[i + offset2] == 9)
                        {
                            vR[i] += 1;
                        }
                        else
                        {
                            vR[i] += 1;
                        }
                    }
                }
            }
            else
            {
                if (input[i + offset2] > 3)
                {
                    if (input[i + offset2] > 5)
                    {
                        if (input[i + offset2] == 7)
                        {
                            vR[i] += 1;
                        }
                        else
                        {
                            vR[i] += 1;
                        }
                    }
                    else
                    {
                        if (input[i + offset2] == 5)
                        {
                            vR[i] += 1;
                        }
                        else
                        {
                            vR[i] += 1;
                        }
                    }
                }
                else
                {
                    if (input[i + offset2] > 1)
                    {
                        if (input[i + offset2] == 3)
                        {
                            vR[i] += 1;
                        }
                        else
                        {
                            vR[i] += 1;
                        }
                    }
                    else
                    {
                        if (input[i + offset2] == 1)
                        {
                            vR[i] += 1;
                        }
                        else
                        {
                            vR[i] += 1;
                        }
                    }
                }
            }
        }
    }
}

#endif

#if defined(_RF_31IF_4TREE_1INPUT_WORST)
#define _MOD 32
#define _1_INPUT
#define _4TREE

#define EXP_NAME "_RF_31IF_4TREE_1INPUT_WORST"
#define EXP_OUTPUT_FILE "_RF_31IF_4TREE_1INPUT_WORST_OUTPUT.txt"
#define EXP_RESULT_FILE "_RF_31IF_4TREE_1INPUT_WORST_RESULT.csv"

// RF_with_calc
__global__ void RF_kernel(float *input, const int n, const int offset0, const int offset1, const int offset2, const int offset3, float *vR)
{
    int i = blockIdx.x * blockDim.x + threadIdx.x;

    if (i < n)
    {
        if (input[i + offset0] > 15)
        {
            if (input[i + offset0] > 23)
            {
                if (input[i + offset0] > 27)
                {
                    if (input[i + offset0] > 29)
                    {
                        if (input[i + offset0] == 31)
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
                        if (input[i + offset0] == 29)
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
                    if (input[i + offset0] > 25)
                    {
                        if (input[i + offset0] == 27)
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
                        if (input[i + offset0] == 25)
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
                if (input[i + offset0] > 19)
                {
                    if (input[i + offset0] > 21)
                    {
                        if (input[i + offset0] == 23)
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
                        if (input[i + offset0] == 21)
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
                    if (input[i + offset0] > 17)
                    {
                        if (input[i + offset0] == 19)
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
                        if (input[i + offset0] == 17)
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
            if (input[i + offset0] > 7)
            {
                if (input[i + offset0] > 11)
                {
                    if (input[i + offset0] > 13)
                    {
                        if (input[i + offset0] == 15)
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
                        if (input[i + offset0] == 13)
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
                    if (input[i + offset0] > 9)
                    {
                        if (input[i + offset0] == 11)
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
                        if (input[i + offset0] == 9)
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
                if (input[i + offset0] > 3)
                {
                    if (input[i + offset0] > 5)
                    {
                        if (input[i + offset0] == 7)
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
                        if (input[i + offset0] == 5)
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
                    if (input[i + offset0] > 1)
                    {
                        if (input[i + offset0] == 3)
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
                        if (input[i + offset0] == 1)
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
        if (input[i + offset1] > 15)
        {
            if (input[i + offset1] > 23)
            {
                if (input[i + offset1] > 27)
                {
                    if (input[i + offset1] > 29)
                    {
                        if (input[i + offset1] == 31)
                        {
                            vR[i] += 1;
                        }
                        else
                        {
                            vR[i] += 1;
                        }
                    }
                    else
                    {
                        if (input[i + offset1] == 29)
                        {
                            vR[i] += 1;
                        }
                        else
                        {
                            vR[i] += 1;
                        }
                    }
                }
                else
                {
                    if (input[i + offset1] > 25)
                    {
                        if (input[i + offset1] == 27)
                        {
                            vR[i] += 1;
                        }
                        else
                        {
                            vR[i] += 1;
                        }
                    }
                    else
                    {
                        if (input[i + offset1] == 25)
                        {
                            vR[i] += 1;
                        }
                        else
                        {
                            vR[i] += 1;
                        }
                    }
                }
            }
            else
            {
                if (input[i + offset1] > 19)
                {
                    if (input[i + offset1] > 21)
                    {
                        if (input[i + offset1] == 23)
                        {
                            vR[i] += 1;
                        }
                        else
                        {
                            vR[i] += 1;
                        }
                    }
                    else
                    {
                        if (input[i + offset1] == 21)
                        {
                            vR[i] += 1;
                        }
                        else
                        {
                            vR[i] += 1;
                        }
                    }
                }
                else
                {
                    if (input[i + offset1] > 17)
                    {
                        if (input[i + offset1] == 19)
                        {
                            vR[i] += 1;
                        }
                        else
                        {
                            vR[i] += 1;
                        }
                    }
                    else
                    {
                        if (input[i + offset1] == 17)
                        {
                            vR[i] += 1;
                        }
                        else
                        {
                            vR[i] += 1;
                        }
                    }
                }
            }
        }
        else
        {
            if (input[i + offset1] > 7)
            {
                if (input[i + offset1] > 11)
                {
                    if (input[i + offset1] > 13)
                    {
                        if (input[i + offset1] == 15)
                        {
                            vR[i] += 1;
                        }
                        else
                        {
                            vR[i] += 1;
                        }
                    }
                    else
                    {
                        if (input[i + offset1] == 13)
                        {
                            vR[i] += 1;
                        }
                        else
                        {
                            vR[i] += 1;
                        }
                    }
                }
                else
                {
                    if (input[i + offset1] > 9)
                    {
                        if (input[i + offset1] == 11)
                        {
                            vR[i] += 1;
                        }
                        else
                        {
                            vR[i] += 1;
                        }
                    }
                    else
                    {
                        if (input[i + offset1] == 9)
                        {
                            vR[i] += 1;
                        }
                        else
                        {
                            vR[i] += 1;
                        }
                    }
                }
            }
            else
            {
                if (input[i + offset1] > 3)
                {
                    if (input[i + offset1] > 5)
                    {
                        if (input[i + offset1] == 7)
                        {
                            vR[i] += 1;
                        }
                        else
                        {
                            vR[i] += 1;
                        }
                    }
                    else
                    {
                        if (input[i + offset1] == 5)
                        {
                            vR[i] += 1;
                        }
                        else
                        {
                            vR[i] += 1;
                        }
                    }
                }
                else
                {
                    if (input[i + offset1] > 1)
                    {
                        if (input[i + offset1] == 3)
                        {
                            vR[i] += 1;
                        }
                        else
                        {
                            vR[i] += 1;
                        }
                    }
                    else
                    {
                        if (input[i + offset1] == 1)
                        {
                            vR[i] += 1;
                        }
                        else
                        {
                            vR[i] += 1;
                        }
                    }
                }
            }
        }
        if (input[i + offset2] > 15)
        {
            if (input[i + offset2] > 23)
            {
                if (input[i + offset2] > 27)
                {
                    if (input[i + offset2] > 29)
                    {
                        if (input[i + offset2] == 31)
                        {
                            vR[i] += 1;
                        }
                        else
                        {
                            vR[i] += 1;
                        }
                    }
                    else
                    {
                        if (input[i + offset2] == 29)
                        {
                            vR[i] += 1;
                        }
                        else
                        {
                            vR[i] += 1;
                        }
                    }
                }
                else
                {
                    if (input[i + offset2] > 25)
                    {
                        if (input[i + offset2] == 27)
                        {
                            vR[i] += 1;
                        }
                        else
                        {
                            vR[i] += 1;
                        }
                    }
                    else
                    {
                        if (input[i + offset2] == 25)
                        {
                            vR[i] += 1;
                        }
                        else
                        {
                            vR[i] += 1;
                        }
                    }
                }
            }
            else
            {
                if (input[i + offset2] > 19)
                {
                    if (input[i + offset2] > 21)
                    {
                        if (input[i + offset2] == 23)
                        {
                            vR[i] += 1;
                        }
                        else
                        {
                            vR[i] += 1;
                        }
                    }
                    else
                    {
                        if (input[i + offset2] == 21)
                        {
                            vR[i] += 1;
                        }
                        else
                        {
                            vR[i] += 1;
                        }
                    }
                }
                else
                {
                    if (input[i + offset2] > 17)
                    {
                        if (input[i + offset2] == 19)
                        {
                            vR[i] += 1;
                        }
                        else
                        {
                            vR[i] += 1;
                        }
                    }
                    else
                    {
                        if (input[i + offset2] == 17)
                        {
                            vR[i] += 1;
                        }
                        else
                        {
                            vR[i] += 1;
                        }
                    }
                }
            }
        }
        else
        {
            if (input[i + offset2] > 7)
            {
                if (input[i + offset2] > 11)
                {
                    if (input[i + offset2] > 13)
                    {
                        if (input[i + offset2] == 15)
                        {
                            vR[i] += 1;
                        }
                        else
                        {
                            vR[i] += 1;
                        }
                    }
                    else
                    {
                        if (input[i + offset2] == 13)
                        {
                            vR[i] += 1;
                        }
                        else
                        {
                            vR[i] += 1;
                        }
                    }
                }
                else
                {
                    if (input[i + offset2] > 9)
                    {
                        if (input[i + offset2] == 11)
                        {
                            vR[i] += 1;
                        }
                        else
                        {
                            vR[i] += 1;
                        }
                    }
                    else
                    {
                        if (input[i + offset2] == 9)
                        {
                            vR[i] += 1;
                        }
                        else
                        {
                            vR[i] += 1;
                        }
                    }
                }
            }
            else
            {
                if (input[i + offset2] > 3)
                {
                    if (input[i + offset2] > 5)
                    {
                        if (input[i + offset2] == 7)
                        {
                            vR[i] += 1;
                        }
                        else
                        {
                            vR[i] += 1;
                        }
                    }
                    else
                    {
                        if (input[i + offset2] == 5)
                        {
                            vR[i] += 1;
                        }
                        else
                        {
                            vR[i] += 1;
                        }
                    }
                }
                else
                {
                    if (input[i + offset2] > 1)
                    {
                        if (input[i + offset2] == 3)
                        {
                            vR[i] += 1;
                        }
                        else
                        {
                            vR[i] += 1;
                        }
                    }
                    else
                    {
                        if (input[i + offset2] == 1)
                        {
                            vR[i] += 1;
                        }
                        else
                        {
                            vR[i] += 1;
                        }
                    }
                }
            }
        }
        if (input[i + offset3] > 15)
        {
            if (input[i + offset3] > 23)
            {
                if (input[i + offset3] > 27)
                {
                    if (input[i + offset3] > 29)
                    {
                        if (input[i + offset3] == 31)
                        {
                            vR[i] += 1;
                        }
                        else
                        {
                            vR[i] += 1;
                        }
                    }
                    else
                    {
                        if (input[i + offset3] == 29)
                        {
                            vR[i] += 1;
                        }
                        else
                        {
                            vR[i] += 1;
                        }
                    }
                }
                else
                {
                    if (input[i + offset3] > 25)
                    {
                        if (input[i + offset3] == 27)
                        {
                            vR[i] += 1;
                        }
                        else
                        {
                            vR[i] += 1;
                        }
                    }
                    else
                    {
                        if (input[i + offset3] == 25)
                        {
                            vR[i] += 1;
                        }
                        else
                        {
                            vR[i] += 1;
                        }
                    }
                }
            }
            else
            {
                if (input[i + offset3] > 19)
                {
                    if (input[i + offset3] > 21)
                    {
                        if (input[i + offset3] == 23)
                        {
                            vR[i] += 1;
                        }
                        else
                        {
                            vR[i] += 1;
                        }
                    }
                    else
                    {
                        if (input[i + offset3] == 21)
                        {
                            vR[i] += 1;
                        }
                        else
                        {
                            vR[i] += 1;
                        }
                    }
                }
                else
                {
                    if (input[i + offset3] > 17)
                    {
                        if (input[i + offset3] == 19)
                        {
                            vR[i] += 1;
                        }
                        else
                        {
                            vR[i] += 1;
                        }
                    }
                    else
                    {
                        if (input[i + offset3] == 17)
                        {
                            vR[i] += 1;
                        }
                        else
                        {
                            vR[i] += 1;
                        }
                    }
                }
            }
        }
        else
        {
            if (input[i + offset3] > 7)
            {
                if (input[i + offset3] > 11)
                {
                    if (input[i + offset3] > 13)
                    {
                        if (input[i + offset3] == 15)
                        {
                            vR[i] += 1;
                        }
                        else
                        {
                            vR[i] += 1;
                        }
                    }
                    else
                    {
                        if (input[i + offset3] == 13)
                        {
                            vR[i] += 1;
                        }
                        else
                        {
                            vR[i] += 1;
                        }
                    }
                }
                else
                {
                    if (input[i + offset3] > 9)
                    {
                        if (input[i + offset3] == 11)
                        {
                            vR[i] += 1;
                        }
                        else
                        {
                            vR[i] += 1;
                        }
                    }
                    else
                    {
                        if (input[i + offset3] == 9)
                        {
                            vR[i] += 1;
                        }
                        else
                        {
                            vR[i] += 1;
                        }
                    }
                }
            }
            else
            {
                if (input[i + offset3] > 3)
                {
                    if (input[i + offset3] > 5)
                    {
                        if (input[i + offset3] == 7)
                        {
                            vR[i] += 1;
                        }
                        else
                        {
                            vR[i] += 1;
                        }
                    }
                    else
                    {
                        if (input[i + offset3] == 5)
                        {
                            vR[i] += 1;
                        }
                        else
                        {
                            vR[i] += 1;
                        }
                    }
                }
                else
                {
                    if (input[i + offset3] > 1)
                    {
                        if (input[i + offset3] == 3)
                        {
                            vR[i] += 1;
                        }
                        else
                        {
                            vR[i] += 1;
                        }
                    }
                    else
                    {
                        if (input[i + offset3] == 1)
                        {
                            vR[i] += 1;
                        }
                        else
                        {
                            vR[i] += 1;
                        }
                    }
                }
            }
        }
    }
}

#endif

#if defined(_RF_63IF_1TREE_1INPUT_WORST)
#define _MOD 64
#define _1_INPUT

#define EXP_NAME "_RF_63IF_1TREE_1INPUT_WORST"
#define EXP_OUTPUT_FILE "_RF_63IF_1TREE_1INPUT_WORST_OUTPUT.txt"
#define EXP_RESULT_FILE "_RF_63IF_1TREE_1INPUT_WORST_RESULT.csv"

// RF_with_calc
__global__ void RF_kernel(float *input, const int n, float *vR)
{
    int i = blockIdx.x * blockDim.x + threadIdx.x;

    if (i < n)
    {
        if (input[i] > 31)
        {
            if (input[i] > 47)
            {
                if (input[i] > 55)
                {
                    if (input[i] > 59)
                    {
                        if (input[i] > 61)
                        {
                            if (input[i] == 63)
                            {
                                vR[i] = 63;
                            }
                            else
                            { //!=63
                                vR[i] = 62;
                            }
                        }
                        else
                        { //<=61
                            if (input[i] == 61)
                            {
                                vR[i] = 61;
                            }
                            else
                            { //!=61
                                vR[i] = 60;
                            }
                        }
                    }
                    else
                    { //<=59
                        if (input[i] > 57)
                        {
                            if (input[i] == 59)
                            {
                                vR[i] = 59;
                            }
                            else
                            { //!=59
                                vR[i] = 58;
                            }
                        }
                        else
                        { //<=57
                            if (input[i] == 57)
                            {
                                vR[i] = 57;
                            }
                            else
                            { //!=57
                                vR[i] = 56;
                            }
                        }
                    }
                }
                else
                { //<=55
                    if (input[i] > 51)
                    {
                        if (input[i] > 53)
                        {
                            if (input[i] == 55)
                            {
                                vR[i] = 55;
                            }
                            else
                            { //!=55
                                vR[i] = 54;
                            }
                        }
                        else
                        { //<=53
                            if (input[i] == 53)
                            {
                                vR[i] = 53;
                            }
                            else
                            { //!=53
                                vR[i] = 52;
                            }
                        }
                    }
                    else
                    { //<=51
                        if (input[i] > 49)
                        {
                            if (input[i] == 51)
                            {
                                vR[i] = 51;
                            }
                            else
                            { //!=51
                                vR[i] = 50;
                            }
                        }
                        else
                        { //<=49
                            if (input[i] == 49)
                            {
                                vR[i] = 49;
                            }
                            else
                            { //!=49
                                vR[i] = 48;
                            }
                        }
                    }
                }
            }
            else
            { //<=47
                if (input[i] > 39)
                {
                    if (input[i] > 43)
                    {
                        if (input[i] > 45)
                        {
                            if (input[i] == 47)
                            {
                                vR[i] = 47;
                            }
                            else
                            { //!=47
                                vR[i] = 46;
                            }
                        }
                        else
                        { //<=45
                            if (input[i] == 45)
                            {
                                vR[i] = 45;
                            }
                            else
                            { //!=45
                                vR[i] = 44;
                            }
                        }
                    }
                    else
                    { //<=43
                        if (input[i] > 41)
                        {
                            if (input[i] == 43)
                            {
                                vR[i] = 43;
                            }
                            else
                            { //!=43
                                vR[i] = 42;
                            }
                        }
                        else
                        { //<=41
                            if (input[i] == 41)
                            {
                                vR[i] = 41;
                            }
                            else
                            { //!=41
                                vR[i] = 40;
                            }
                        }
                    }
                }
                else
                { //<=39
                    if (input[i] > 35)
                    {
                        if (input[i] > 37)
                        {
                            if (input[i] == 39)
                            {
                                vR[i] = 39;
                            }
                            else
                            { //!=39
                                vR[i] = 38;
                            }
                        }
                        else
                        { //<=37
                            if (input[i] == 37)
                            {
                                vR[i] = 37;
                            }
                            else
                            { //!=37
                                vR[i] = 36;
                            }
                        }
                    }
                    else
                    { //<=35
                        if (input[i] > 33)
                        {
                            if (input[i] == 35)
                            {
                                vR[i] = 35;
                            }
                            else
                            { //!=35
                                vR[i] = 34;
                            }
                        }
                        else
                        { //<=33
                            if (input[i] == 33)
                            {
                                vR[i] = 33;
                            }
                            else
                            { //!=33
                                vR[i] = 32;
                            }
                        }
                    }
                }
            }
        }
        else
        { //<=31
            if (input[i] > 15)
            {
                if (input[i] > 23)
                {
                    if (input[i] > 27)
                    {
                        if (input[i] > 29)
                        {
                            if (input[i] == 31)
                            {
                                vR[i] = 31;
                            }
                            else
                            { //!=31
                                vR[i] = 30;
                            }
                        }
                        else
                        { //<=29
                            if (input[i] == 29)
                            {
                                vR[i] = 29;
                            }
                            else
                            { //!!=29
                                vR[i] = 28;
                            }
                        }
                    }
                    else
                    { //<=27
                        if (input[i] > 25)
                        {
                            if (input[i] == 27)
                            {
                                vR[i] = 27;
                            }
                            else
                            { //!=27
                                vR[i] = 26;
                            }
                        }
                        else
                        { //<=25
                            if (input[i] == 25)
                            {
                                vR[i] = 25;
                            }
                            else
                            { //!=25
                                vR[i] = 24;
                            }
                        }
                    }
                }
                else
                { //<=23
                    if (input[i] > 19)
                    {
                        if (input[i] > 21)
                        {
                            if (input[i] == 23)
                            {
                                vR[i] = 23;
                            }
                            else
                            { //!=23
                                vR[i] = 22;
                            }
                        }
                        else
                        { //<=21
                            if (input[i] == 21)
                            {
                                vR[i] = 21;
                            }
                            else
                            { //!=21
                                vR[i] = 20;
                            }
                        }
                    }
                    else
                    { //<=19
                        if (input[i] > 17)
                        {
                            if (input[i] == 19)
                            {
                                vR[i] = 19;
                            }
                            else
                            { //!=19
                                vR[i] = 18;
                            }
                        }
                        else
                        { //<=17
                            if (input[i] == 17)
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
            { //<=15
                if (input[i] > 7)
                {
                    if (input[i] > 11)
                    {
                        if (input[i] > 13)
                        {
                            if (input[i] == 15)
                            {
                                vR[i] = 15;
                            }
                            else
                            { //!=15
                                vR[i] = 14;
                            }
                        }
                        else
                        { //!<=13
                            if (input[i] == 13)
                            {
                                vR[i] = 13;
                            }
                            else
                            { //!=5
                                vR[i] = 12;
                            }
                        }
                    }
                    else
                    { //<=11
                        if (input[i] > 9)
                        {
                            if (input[i] == 11)
                            {
                                vR[i] = 11;
                            }
                            else
                            { //!=3
                                vR[i] = 10;
                            }
                        }
                        else
                        { //<=9
                            if (input[i] == 9)
                            {
                                vR[i] = 9;
                            }
                            else
                            { //!=
                                vR[i] = 8;
                            }
                        }
                    }
                }
                else
                { //<=7
                    if (input[i] > 3)
                    {
                        if (input[i] > 5)
                        {
                            if (input[i] == 7)
                            {
                                vR[i] = 7;
                            }
                            else
                            { //!=7
                                vR[i] = 6;
                            }
                        }
                        else
                        {
                            if (input[i] == 5)
                            {
                                vR[i] = 5;
                            }
                            else
                            { //!=5
                                vR[i] = 4;
                            }
                        }
                    }
                    else
                    { //<=1
                        if (input[i] > 1)
                        {
                            if (input[i] == 3)
                            {
                                vR[i] = 3;
                            }
                            else
                            { //!=3
                                vR[i] = 2;
                            }
                        }
                        else
                        { //<=1
                            if (input[i] == 1)
                            {
                                vR[i] = 1;
                            }
                            else
                            { //!=0
                                vR[i] = 0;
                            }
                        }
                    }
                }
            }
        }
    }
}

#endif

#if defined(_RF_63IF_2TREE_1INPUT_WORST)
#define _MOD 64
#define _1_INPUT
#define _2TREE

#define EXP_NAME "_RF_63IF_2TREE_1INPUT_WORST"
#define EXP_OUTPUT_FILE "_RF_63IF_2TREE_1INPUT_WORST_OUTPUT.txt"
#define EXP_RESULT_FILE "_RF_63IF_2TREE_1INPUT_WORST_RESULT.csv"

// RF_with_calc
__global__ void RF_kernel(float *input, const int n, const int offset0, const int offset1, float *vR)
{
    int i = blockIdx.x * blockDim.x + threadIdx.x;

    if (i < n)
    {
    }
}

#endif

#if defined(_RF_63IF_3TREE_1INPUT_WORST)
#define _MOD 64
#define _1_INPUT
#define _3TREE

#define EXP_NAME "_RF_63IF_3TREE_1INPUT_WORST"
#define EXP_OUTPUT_FILE "_RF_63IF_3TREE_1INPUT_WORST_OUTPUT.txt"
#define EXP_RESULT_FILE "_RF_63IF_23TREE_1INPUT_WORST_RESULT.csv"

// RF_with_calc
__global__ void RF_kernel(float *input, const int n, const int offset0, const int offset1, const int offset2, float *vR)
{
    int i = blockIdx.x * blockDim.x + threadIdx.x;

    if (i < n)
    {
    }
}

#endif

#if defined(_RF_63IF_4TREE_1INPUT_WORST)
#define _MOD 64
#define _1_INPUT
#define _4TREE

#define EXP_NAME "_RF_63IF_4TREE_1INPUT_WORST"
#define EXP_OUTPUT_FILE "_RF_63IF_4TREE_1INPUT_WORST_OUTPUT.txt"
#define EXP_RESULT_FILE "_RF_63IF_4TREE_1INPUT_WORST_RESULT.csv"

// RF_with_calc
__global__ void RF_kernel(float *input, const int n, const int offset0, const int offset1, const int offset2, const int offset3, float *vR)
{
    int i = blockIdx.x * blockDim.x + threadIdx.x;

    if (i < n)
    {
        if (input[i + offset0] > 31)
        {
            if (input[i + offset0] > 47)
            {
                if (input[i + offset0] > 55)
                {
                    if (input[i + offset0] > 59)
                    {
                        if (input[i + offset0] > 61)
                        {
                            if (input[i + offset0] == 63)
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
                            if (input[i + offset0] == 61)
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
                        if (input[i + offset0] > 57)
                        {
                            if (input[i + offset0] == 59)
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
                            if (input[i + offset0] == 57)
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
                    if (input[i + offset0] > 51)
                    {
                        if (input[i + offset0] > 53)
                        {
                            if (input[i + offset0] == 55)
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
                            if (input[i + offset0] == 53)
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
                        if (input[i + offset0] > 49)
                        {
                            if (input[i + offset0] == 51)
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
                            if (input[i + offset0] == 49)
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
                if (input[i + offset0] > 39)
                {
                    if (input[i + offset0] > 43)
                    {
                        if (input[i + offset0] > 45)
                        {
                            if (input[i + offset0] == 47)
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
                            if (input[i + offset0] == 45)
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
                        if (input[i + offset0] > 41)
                        {
                            if (input[i + offset0] == 43)
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
                            if (input[i + offset0] == 41)
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
                    if (input[i + offset0] > 35)
                    {
                        if (input[i + offset0] > 37)
                        {
                            if (input[i + offset0] == 39)
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
                            if (input[i + offset0] == 37)
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
                        if (input[i + offset0] > 33)
                        {
                            if (input[i + offset0] == 35)
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
                            if (input[i + offset0] == 33)
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
            if (input[i + offset0] > 15)
            {
                if (input[i + offset0] > 23)
                {
                    if (input[i + offset0] > 27)
                    {
                        if (input[i + offset0] > 29)
                        {
                            if (input[i + offset0] == 31)
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
                            if (input[i + offset0] == 29)
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
                        if (input[i + offset0] > 25)
                        {
                            if (input[i + offset0] == 27)
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
                            if (input[i + offset0] == 25)
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
                    if (input[i + offset0] > 19)
                    {
                        if (input[i + offset0] > 21)
                        {
                            if (input[i + offset0] == 23)
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
                            if (input[i + offset0] == 21)
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
                        if (input[i + offset0] > 17)
                        {
                            if (input[i + offset0] == 19)
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
                            if (input[i + offset0] == 17)
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
                if (input[i + offset0] > 7)
                {
                    if (input[i + offset0] > 11)
                    {
                        if (input[i + offset0] > 13)
                        {
                            if (input[i + offset0] == 15)
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
                            if (input[i + offset0] == 13)
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
                        if (input[i + offset0] > 9)
                        {
                            if (input[i + offset0] == 11)
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
                            if (input[i + offset0] == 9)
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
                    if (input[i + offset0] > 3)
                    {
                        if (input[i + offset0] > 5)
                        {
                            if (input[i + offset0] == 7)
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
                            if (input[i + offset0] == 5)
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
                        if (input[i + offset0] > 1)
                        {
                            if (input[i + offset0] == 3)
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
                            if (input[i + offset0] == 1)
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
        if (input[i + offset1] > 31)
        {
            if (input[i + offset1] > 47)
            {
                if (input[i + offset1] > 55)
                {
                    if (input[i + offset1] > 59)
                    {
                        if (input[i + offset1] > 61)
                        {
                            if (input[i + offset1] == 63)
                            {
                                vR[i] += 1;
                            }
                            else
                            {
                                vR[i] += 1;
                            }
                        }
                        else
                        {
                            if (input[i + offset1] == 61)
                            {
                                vR[i] += 1;
                            }
                            else
                            {
                                vR[i] += 1;
                            }
                        }
                    }
                    else
                    {
                        if (input[i + offset1] > 57)
                        {
                            if (input[i + offset1] == 59)
                            {
                                vR[i] += 1;
                            }
                            else
                            {
                                vR[i] += 1;
                            }
                        }
                        else
                        {
                            if (input[i + offset1] == 57)
                            {
                                vR[i] += 1;
                            }
                            else
                            {
                                vR[i] += 1;
                            }
                        }
                    }
                }
                else
                {
                    if (input[i + offset1] > 51)
                    {
                        if (input[i + offset1] > 53)
                        {
                            if (input[i + offset1] == 55)
                            {
                                vR[i] += 1;
                            }
                            else
                            {
                                vR[i] += 1;
                            }
                        }
                        else
                        {
                            if (input[i + offset1] == 53)
                            {
                                vR[i] += 1;
                            }
                            else
                            {
                                vR[i] += 1;
                            }
                        }
                    }
                    else
                    {
                        if (input[i + offset1] > 49)
                        {
                            if (input[i + offset1] == 51)
                            {
                                vR[i] += 1;
                            }
                            else
                            {
                                vR[i] += 1;
                            }
                        }
                        else
                        {
                            if (input[i + offset1] == 49)
                            {
                                vR[i] += 1;
                            }
                            else
                            {
                                vR[i] += 1;
                            }
                        }
                    }
                }
            }
            else
            {
                if (input[i + offset1] > 39)
                {
                    if (input[i + offset1] > 43)
                    {
                        if (input[i + offset1] > 45)
                        {
                            if (input[i + offset1] == 47)
                            {
                                vR[i] += 1;
                            }
                            else
                            {
                                vR[i] += 1;
                            }
                        }
                        else
                        {
                            if (input[i + offset1] == 45)
                            {
                                vR[i] += 1;
                            }
                            else
                            {
                                vR[i] += 1;
                            }
                        }
                    }
                    else
                    {
                        if (input[i + offset1] > 41)
                        {
                            if (input[i + offset1] == 43)
                            {
                                vR[i] += 1;
                            }
                            else
                            {
                                vR[i] += 1;
                            }
                        }
                        else
                        {
                            if (input[i + offset1] == 41)
                            {
                                vR[i] += 1;
                            }
                            else
                            {
                                vR[i] += 1;
                            }
                        }
                    }
                }
                else
                {
                    if (input[i + offset1] > 35)
                    {
                        if (input[i + offset1] > 37)
                        {
                            if (input[i + offset1] == 39)
                            {
                                vR[i] += 1;
                            }
                            else
                            {
                                vR[i] += 1;
                            }
                        }
                        else
                        {
                            if (input[i + offset1] == 37)
                            {
                                vR[i] += 1;
                            }
                            else
                            {
                                vR[i] += 1;
                            }
                        }
                    }
                    else
                    {
                        if (input[i + offset1] > 33)
                        {
                            if (input[i + offset1] == 35)
                            {
                                vR[i] += 1;
                            }
                            else
                            {
                                vR[i] += 1;
                            }
                        }
                        else
                        {
                            if (input[i + offset1] == 33)
                            {
                                vR[i] += 1;
                            }
                            else
                            {
                                vR[i] += 1;
                            }
                        }
                    }
                }
            }
        }
        else
        {
            if (input[i + offset1] > 15)
            {
                if (input[i + offset1] > 23)
                {
                    if (input[i + offset1] > 27)
                    {
                        if (input[i + offset1] > 29)
                        {
                            if (input[i + offset1] == 31)
                            {
                                vR[i] += 1;
                            }
                            else
                            {
                                vR[i] += 1;
                            }
                        }
                        else
                        {
                            if (input[i + offset1] == 29)
                            {
                                vR[i] += 1;
                            }
                            else
                            {
                                vR[i] += 1;
                            }
                        }
                    }
                    else
                    {
                        if (input[i + offset1] > 25)
                        {
                            if (input[i + offset1] == 27)
                            {
                                vR[i] += 1;
                            }
                            else
                            {
                                vR[i] += 1;
                            }
                        }
                        else
                        {
                            if (input[i + offset1] == 25)
                            {
                                vR[i] += 1;
                            }
                            else
                            {
                                vR[i] += 1;
                            }
                        }
                    }
                }
                else
                {
                    if (input[i + offset1] > 19)
                    {
                        if (input[i + offset1] > 21)
                        {
                            if (input[i + offset1] == 23)
                            {
                                vR[i] += 1;
                            }
                            else
                            {
                                vR[i] += 1;
                            }
                        }
                        else
                        {
                            if (input[i + offset1] == 21)
                            {
                                vR[i] += 1;
                            }
                            else
                            {
                                vR[i] += 1;
                            }
                        }
                    }
                    else
                    {
                        if (input[i + offset1] > 17)
                        {
                            if (input[i + offset1] == 19)
                            {
                                vR[i] += 1;
                            }
                            else
                            {
                                vR[i] += 1;
                            }
                        }
                        else
                        {
                            if (input[i + offset1] == 17)
                            {
                                vR[i] += 1;
                            }
                            else
                            {
                                vR[i] += 1;
                            }
                        }
                    }
                }
            }
            else
            {
                if (input[i + offset1] > 7)
                {
                    if (input[i + offset1] > 11)
                    {
                        if (input[i + offset1] > 13)
                        {
                            if (input[i + offset1] == 15)
                            {
                                vR[i] += 1;
                            }
                            else
                            {
                                vR[i] += 1;
                            }
                        }
                        else
                        {
                            if (input[i + offset1] == 13)
                            {
                                vR[i] += 1;
                            }
                            else
                            {
                                vR[i] += 1;
                            }
                        }
                    }
                    else
                    {
                        if (input[i + offset1] > 9)
                        {
                            if (input[i + offset1] == 11)
                            {
                                vR[i] += 1;
                            }
                            else
                            {
                                vR[i] += 1;
                            }
                        }
                        else
                        {
                            if (input[i + offset1] == 9)
                            {
                                vR[i] += 1;
                            }
                            else
                            {
                                vR[i] += 1;
                            }
                        }
                    }
                }
                else
                {
                    if (input[i + offset1] > 3)
                    {
                        if (input[i + offset1] > 5)
                        {
                            if (input[i + offset1] == 7)
                            {
                                vR[i] += 1;
                            }
                            else
                            {
                                vR[i] += 1;
                            }
                        }
                        else
                        {
                            if (input[i + offset1] == 5)
                            {
                                vR[i] += 1;
                            }
                            else
                            {
                                vR[i] += 1;
                            }
                        }
                    }
                    else
                    {
                        if (input[i + offset1] > 1)
                        {
                            if (input[i + offset1] == 3)
                            {
                                vR[i] += 1;
                            }
                            else
                            {
                                vR[i] += 1;
                            }
                        }
                        else
                        {
                            if (input[i + offset1] == 1)
                            {
                                vR[i] += 1;
                            }
                            else
                            {
                                vR[i] += 1;
                            }
                        }
                    }
                }
            }
        }
        if (input[i + offset2] > 31)
        {
            if (input[i + offset2] > 47)
            {
                if (input[i + offset2] > 55)
                {
                    if (input[i + offset2] > 59)
                    {
                        if (input[i + offset2] > 61)
                        {
                            if (input[i + offset2] == 63)
                            {
                                vR[i] += 1;
                            }
                            else
                            {
                                vR[i] += 1;
                            }
                        }
                        else
                        {
                            if (input[i + offset2] == 61)
                            {
                                vR[i] += 1;
                            }
                            else
                            {
                                vR[i] += 1;
                            }
                        }
                    }
                    else
                    {
                        if (input[i + offset2] > 57)
                        {
                            if (input[i + offset2] == 59)
                            {
                                vR[i] += 1;
                            }
                            else
                            {
                                vR[i] += 1;
                            }
                        }
                        else
                        {
                            if (input[i + offset2] == 57)
                            {
                                vR[i] += 1;
                            }
                            else
                            {
                                vR[i] += 1;
                            }
                        }
                    }
                }
                else
                {
                    if (input[i + offset2] > 51)
                    {
                        if (input[i + offset2] > 53)
                        {
                            if (input[i + offset2] == 55)
                            {
                                vR[i] += 1;
                            }
                            else
                            {
                                vR[i] += 1;
                            }
                        }
                        else
                        {
                            if (input[i + offset2] == 53)
                            {
                                vR[i] += 1;
                            }
                            else
                            {
                                vR[i] += 1;
                            }
                        }
                    }
                    else
                    {
                        if (input[i + offset2] > 49)
                        {
                            if (input[i + offset2] == 51)
                            {
                                vR[i] += 1;
                            }
                            else
                            {
                                vR[i] += 1;
                            }
                        }
                        else
                        {
                            if (input[i + offset2] == 49)
                            {
                                vR[i] += 1;
                            }
                            else
                            {
                                vR[i] += 1;
                            }
                        }
                    }
                }
            }
            else
            {
                if (input[i + offset2] > 39)
                {
                    if (input[i + offset2] > 43)
                    {
                        if (input[i + offset2] > 45)
                        {
                            if (input[i + offset2] == 47)
                            {
                                vR[i] += 1;
                            }
                            else
                            {
                                vR[i] += 1;
                            }
                        }
                        else
                        {
                            if (input[i + offset2] == 45)
                            {
                                vR[i] += 1;
                            }
                            else
                            {
                                vR[i] += 1;
                            }
                        }
                    }
                    else
                    {
                        if (input[i + offset2] > 41)
                        {
                            if (input[i + offset2] == 43)
                            {
                                vR[i] += 1;
                            }
                            else
                            {
                                vR[i] += 1;
                            }
                        }
                        else
                        {
                            if (input[i + offset2] == 41)
                            {
                                vR[i] += 1;
                            }
                            else
                            {
                                vR[i] += 1;
                            }
                        }
                    }
                }
                else
                {
                    if (input[i + offset2] > 35)
                    {
                        if (input[i + offset2] > 37)
                        {
                            if (input[i + offset2] == 39)
                            {
                                vR[i] += 1;
                            }
                            else
                            {
                                vR[i] += 1;
                            }
                        }
                        else
                        {
                            if (input[i + offset2] == 37)
                            {
                                vR[i] += 1;
                            }
                            else
                            {
                                vR[i] += 1;
                            }
                        }
                    }
                    else
                    {
                        if (input[i + offset2] > 33)
                        {
                            if (input[i + offset2] == 35)
                            {
                                vR[i] += 1;
                            }
                            else
                            {
                                vR[i] += 1;
                            }
                        }
                        else
                        {
                            if (input[i + offset2] == 33)
                            {
                                vR[i] += 1;
                            }
                            else
                            {
                                vR[i] += 1;
                            }
                        }
                    }
                }
            }
        }
        else
        {
            if (input[i + offset2] > 15)
            {
                if (input[i + offset2] > 23)
                {
                    if (input[i + offset2] > 27)
                    {
                        if (input[i + offset2] > 29)
                        {
                            if (input[i + offset2] == 31)
                            {
                                vR[i] += 1;
                            }
                            else
                            {
                                vR[i] += 1;
                            }
                        }
                        else
                        {
                            if (input[i + offset2] == 29)
                            {
                                vR[i] += 1;
                            }
                            else
                            {
                                vR[i] += 1;
                            }
                        }
                    }
                    else
                    {
                        if (input[i + offset2] > 25)
                        {
                            if (input[i + offset2] == 27)
                            {
                                vR[i] += 1;
                            }
                            else
                            {
                                vR[i] += 1;
                            }
                        }
                        else
                        {
                            if (input[i + offset2] == 25)
                            {
                                vR[i] += 1;
                            }
                            else
                            {
                                vR[i] += 1;
                            }
                        }
                    }
                }
                else
                {
                    if (input[i + offset2] > 19)
                    {
                        if (input[i + offset2] > 21)
                        {
                            if (input[i + offset2] == 23)
                            {
                                vR[i] += 1;
                            }
                            else
                            {
                                vR[i] += 1;
                            }
                        }
                        else
                        {
                            if (input[i + offset2] == 21)
                            {
                                vR[i] += 1;
                            }
                            else
                            {
                                vR[i] += 1;
                            }
                        }
                    }
                    else
                    {
                        if (input[i + offset2] > 17)
                        {
                            if (input[i + offset2] == 19)
                            {
                                vR[i] += 1;
                            }
                            else
                            {
                                vR[i] += 1;
                            }
                        }
                        else
                        {
                            if (input[i + offset2] == 17)
                            {
                                vR[i] += 1;
                            }
                            else
                            {
                                vR[i] += 1;
                            }
                        }
                    }
                }
            }
            else
            {
                if (input[i + offset2] > 7)
                {
                    if (input[i + offset2] > 11)
                    {
                        if (input[i + offset2] > 13)
                        {
                            if (input[i + offset2] == 15)
                            {
                                vR[i] += 1;
                            }
                            else
                            {
                                vR[i] += 1;
                            }
                        }
                        else
                        {
                            if (input[i + offset2] == 13)
                            {
                                vR[i] += 1;
                            }
                            else
                            {
                                vR[i] += 1;
                            }
                        }
                    }
                    else
                    {
                        if (input[i + offset2] > 9)
                        {
                            if (input[i + offset2] == 11)
                            {
                                vR[i] += 1;
                            }
                            else
                            {
                                vR[i] += 1;
                            }
                        }
                        else
                        {
                            if (input[i + offset2] == 9)
                            {
                                vR[i] += 1;
                            }
                            else
                            {
                                vR[i] += 1;
                            }
                        }
                    }
                }
                else
                {
                    if (input[i + offset2] > 3)
                    {
                        if (input[i + offset2] > 5)
                        {
                            if (input[i + offset2] == 7)
                            {
                                vR[i] += 1;
                            }
                            else
                            {
                                vR[i] += 1;
                            }
                        }
                        else
                        {
                            if (input[i + offset2] == 5)
                            {
                                vR[i] += 1;
                            }
                            else
                            {
                                vR[i] += 1;
                            }
                        }
                    }
                    else
                    {
                        if (input[i + offset2] > 1)
                        {
                            if (input[i + offset2] == 3)
                            {
                                vR[i] += 1;
                            }
                            else
                            {
                                vR[i] += 1;
                            }
                        }
                        else
                        {
                            if (input[i + offset2] == 1)
                            {
                                vR[i] += 1;
                            }
                            else
                            {
                                vR[i] += 1;
                            }
                        }
                    }
                }
            }
        }
        if (input[i + offset3] > 31)
        {
            if (input[i + offset3] > 47)
            {
                if (input[i + offset3] > 55)
                {
                    if (input[i + offset3] > 59)
                    {
                        if (input[i + offset3] > 61)
                        {
                            if (input[i + offset3] == 63)
                            {
                                vR[i] += 1;
                            }
                            else
                            {
                                vR[i] += 1;
                            }
                        }
                        else
                        {
                            if (input[i + offset3] == 61)
                            {
                                vR[i] += 1;
                            }
                            else
                            {
                                vR[i] += 1;
                            }
                        }
                    }
                    else
                    {
                        if (input[i + offset3] > 57)
                        {
                            if (input[i + offset3] == 59)
                            {
                                vR[i] += 1;
                            }
                            else
                            {
                                vR[i] += 1;
                            }
                        }
                        else
                        {
                            if (input[i + offset3] == 57)
                            {
                                vR[i] += 1;
                            }
                            else
                            {
                                vR[i] += 1;
                            }
                        }
                    }
                }
                else
                {
                    if (input[i + offset3] > 51)
                    {
                        if (input[i + offset3] > 53)
                        {
                            if (input[i + offset3] == 55)
                            {
                                vR[i] += 1;
                            }
                            else
                            {
                                vR[i] += 1;
                            }
                        }
                        else
                        {
                            if (input[i + offset3] == 53)
                            {
                                vR[i] += 1;
                            }
                            else
                            {
                                vR[i] += 1;
                            }
                        }
                    }
                    else
                    {
                        if (input[i + offset3] > 49)
                        {
                            if (input[i + offset3] == 51)
                            {
                                vR[i] += 1;
                            }
                            else
                            {
                                vR[i] += 1;
                            }
                        }
                        else
                        {
                            if (input[i + offset3] == 49)
                            {
                                vR[i] += 1;
                            }
                            else
                            {
                                vR[i] += 1;
                            }
                        }
                    }
                }
            }
            else
            {
                if (input[i + offset3] > 39)
                {
                    if (input[i + offset3] > 43)
                    {
                        if (input[i + offset3] > 45)
                        {
                            if (input[i + offset3] == 47)
                            {
                                vR[i] += 1;
                            }
                            else
                            {
                                vR[i] += 1;
                            }
                        }
                        else
                        {
                            if (input[i + offset3] == 45)
                            {
                                vR[i] += 1;
                            }
                            else
                            {
                                vR[i] += 1;
                            }
                        }
                    }
                    else
                    {
                        if (input[i + offset3] > 41)
                        {
                            if (input[i + offset3] == 43)
                            {
                                vR[i] += 1;
                            }
                            else
                            {
                                vR[i] += 1;
                            }
                        }
                        else
                        {
                            if (input[i + offset3] == 41)
                            {
                                vR[i] += 1;
                            }
                            else
                            {
                                vR[i] += 1;
                            }
                        }
                    }
                }
                else
                {
                    if (input[i + offset3] > 35)
                    {
                        if (input[i + offset3] > 37)
                        {
                            if (input[i + offset3] == 39)
                            {
                                vR[i] += 1;
                            }
                            else
                            {
                                vR[i] += 1;
                            }
                        }
                        else
                        {
                            if (input[i + offset3] == 37)
                            {
                                vR[i] += 1;
                            }
                            else
                            {
                                vR[i] += 1;
                            }
                        }
                    }
                    else
                    {
                        if (input[i + offset3] > 33)
                        {
                            if (input[i + offset3] == 35)
                            {
                                vR[i] += 1;
                            }
                            else
                            {
                                vR[i] += 1;
                            }
                        }
                        else
                        {
                            if (input[i + offset3] == 33)
                            {
                                vR[i] += 1;
                            }
                            else
                            {
                                vR[i] += 1;
                            }
                        }
                    }
                }
            }
        }
        else
        {
            if (input[i + offset3] > 15)
            {
                if (input[i + offset3] > 23)
                {
                    if (input[i + offset3] > 27)
                    {
                        if (input[i + offset3] > 29)
                        {
                            if (input[i + offset3] == 31)
                            {
                                vR[i] += 1;
                            }
                            else
                            {
                                vR[i] += 1;
                            }
                        }
                        else
                        {
                            if (input[i + offset3] == 29)
                            {
                                vR[i] += 1;
                            }
                            else
                            {
                                vR[i] += 1;
                            }
                        }
                    }
                    else
                    {
                        if (input[i + offset3] > 25)
                        {
                            if (input[i + offset3] == 27)
                            {
                                vR[i] += 1;
                            }
                            else
                            {
                                vR[i] += 1;
                            }
                        }
                        else
                        {
                            if (input[i + offset3] == 25)
                            {
                                vR[i] += 1;
                            }
                            else
                            {
                                vR[i] += 1;
                            }
                        }
                    }
                }
                else
                {
                    if (input[i + offset3] > 19)
                    {
                        if (input[i + offset3] > 21)
                        {
                            if (input[i + offset3] == 23)
                            {
                                vR[i] += 1;
                            }
                            else
                            {
                                vR[i] += 1;
                            }
                        }
                        else
                        {
                            if (input[i + offset3] == 21)
                            {
                                vR[i] += 1;
                            }
                            else
                            {
                                vR[i] += 1;
                            }
                        }
                    }
                    else
                    {
                        if (input[i + offset3] > 17)
                        {
                            if (input[i + offset3] == 19)
                            {
                                vR[i] += 1;
                            }
                            else
                            {
                                vR[i] += 1;
                            }
                        }
                        else
                        {
                            if (input[i + offset3] == 17)
                            {
                                vR[i] += 1;
                            }
                            else
                            {
                                vR[i] += 1;
                            }
                        }
                    }
                }
            }
            else
            {
                if (input[i + offset3] > 7)
                {
                    if (input[i + offset3] > 11)
                    {
                        if (input[i + offset3] > 13)
                        {
                            if (input[i + offset3] == 15)
                            {
                                vR[i] += 1;
                            }
                            else
                            {
                                vR[i] += 1;
                            }
                        }
                        else
                        {
                            if (input[i + offset3] == 13)
                            {
                                vR[i] += 1;
                            }
                            else
                            {
                                vR[i] += 1;
                            }
                        }
                    }
                    else
                    {
                        if (input[i + offset3] > 9)
                        {
                            if (input[i + offset3] == 11)
                            {
                                vR[i] += 1;
                            }
                            else
                            {
                                vR[i] += 1;
                            }
                        }
                        else
                        {
                            if (input[i + offset3] == 9)
                            {
                                vR[i] += 1;
                            }
                            else
                            {
                                vR[i] += 1;
                            }
                        }
                    }
                }
                else
                {
                    if (input[i + offset3] > 3)
                    {
                        if (input[i + offset3] > 5)
                        {
                            if (input[i + offset3] == 7)
                            {
                                vR[i] += 1;
                            }
                            else
                            {
                                vR[i] += 1;
                            }
                        }
                        else
                        {
                            if (input[i + offset3] == 5)
                            {
                                vR[i] += 1;
                            }
                            else
                            {
                                vR[i] += 1;
                            }
                        }
                    }
                    else
                    {
                        if (input[i + offset3] > 1)
                        {
                            if (input[i + offset3] == 3)
                            {
                                vR[i] += 1;
                            }
                            else
                            {
                                vR[i] += 1;
                            }
                        }
                        else
                        {
                            if (input[i + offset3] == 1)
                            {
                                vR[i] += 1;
                            }
                            else
                            {
                                vR[i] += 1;
                            }
                        }
                    }
                }
            }
        }
    }
}

#endif

#if defined(_RF_127IF_1TREE_1INPUT_WORST)
#define _MOD 128
#define _1_INPUT

#define EXP_NAME "_RF_127IF_1TREE_1INPUT_WORST"
#define EXP_OUTPUT_FILE "_RF_127IF_1TREE_1INPUT_WORST_OUTPUT.txt"
#define EXP_RESULT_FILE "_RF_127IF_1TREE_1INPUT_WORST_RESULT.csv"

// RF_with_calc
__global__ void RF_kernel(float *input, const int n, float *vR)
{
    int i = blockIdx.x * blockDim.x + threadIdx.x;

    if (i < n)
    {
        if (input[i] > 63)
        {
            if (input[i] > 95)
            {
                if (input[i] > 111)
                {
                    if (input[i] > 119)
                    {
                        if (input[i] > 123)
                        {
                            if (input[i] > 125)
                            {
                                if (input[i] == 127)
                                {
                                    vR[i] = 127;
                                }
                                else
                                {
                                    vR[i] = 126;
                                }
                            }
                            else
                            {
                                if (input[i] == 125)
                                {
                                    vR[i] = 125;
                                }
                                else
                                {
                                    vR[i] = 124;
                                }
                            }
                        }
                        else
                        {
                            if (input[i] > 121)
                            {
                                if (input[i] == 123)
                                {
                                    vR[i] = 123;
                                }
                                else
                                {
                                    vR[i] = 122;
                                }
                            }
                            else
                            {
                                if (input[i] == 121)
                                {
                                    vR[i] = 121;
                                }
                                else
                                {
                                    vR[i] = 120;
                                }
                            }
                        }
                    }
                    else
                    {
                        if (input[i] > 115)
                        {
                            if (input[i] > 117)
                            {
                                if (input[i] == 119)
                                {
                                    vR[i] = 119;
                                }
                                else
                                {
                                    vR[i] = 118;
                                }
                            }
                            else
                            {
                                if (input[i] == 117)
                                {
                                    vR[i] = 117;
                                }
                                else
                                {
                                    vR[i] = 116;
                                }
                            }
                        }
                        else
                        {
                            if (input[i] > 113)
                            {
                                if (input[i] == 115)
                                {
                                    vR[i] = 115;
                                }
                                else
                                {
                                    vR[i] = 114;
                                }
                            }
                            else
                            {
                                if (input[i] == 113)
                                {
                                    vR[i] = 113;
                                }
                                else
                                {
                                    vR[i] = 112;
                                }
                            }
                        }
                    }
                }
                else
                {
                    if (input[i] > 103)
                    {
                        if (input[i] > 107)
                        {
                            if (input[i] > 109)
                            {
                                if (input[i] == 111)
                                {
                                    vR[i] = 111;
                                }
                                else
                                {
                                    vR[i] = 110;
                                }
                            }
                            else
                            {
                                if (input[i] == 109)
                                {
                                    vR[i] = 109;
                                }
                                else
                                {
                                    vR[i] = 108;
                                }
                            }
                        }
                        else
                        {
                            if (input[i] > 105)
                            {
                                if (input[i] == 107)
                                {
                                    vR[i] = 107;
                                }
                                else
                                {
                                    vR[i] = 106;
                                }
                            }
                            else
                            {
                                if (input[i] == 105)
                                {
                                    vR[i] = 105;
                                }
                                else
                                {
                                    vR[i] = 104;
                                }
                            }
                        }
                    }
                    else
                    {
                        if (input[i] > 99)
                        {
                            if (input[i] > 101)
                            {
                                if (input[i] == 103)
                                {
                                    vR[i] = 103;
                                }
                                else
                                {
                                    vR[i] = 102;
                                }
                            }
                            else
                            {
                                if (input[i] == 101)
                                {
                                    vR[i] = 101;
                                }
                                else
                                {
                                    vR[i] = 100;
                                }
                            }
                        }
                        else
                        {
                            if (input[i] > 97)
                            {
                                if (input[i] == 99)
                                {
                                    vR[i] = 99;
                                }
                                else
                                {
                                    vR[i] = 98;
                                }
                            }
                            else
                            {
                                if (input[i] == 97)
                                {
                                    vR[i] = 97;
                                }
                                else
                                {
                                    vR[i] = 96;
                                }
                            }
                        }
                    }
                }
            }
            else
            {
                if (input[i] > 79)
                {
                    if (input[i] > 87)
                    {
                        if (input[i] > 91)
                        {
                            if (input[i] > 93)
                            {
                                if (input[i] == 95)
                                {
                                    vR[i] = 95;
                                }
                                else
                                {
                                    vR[i] = 94;
                                }
                            }
                            else
                            {
                                if (input[i] == 93)
                                {
                                    vR[i] = 93;
                                }
                                else
                                {
                                    vR[i] = 92;
                                }
                            }
                        }
                        else
                        {
                            if (input[i] > 89)
                            {
                                if (input[i] == 91)
                                {
                                    vR[i] = 91;
                                }
                                else
                                {
                                    vR[i] = 90;
                                }
                            }
                            else
                            {
                                if (input[i] == 89)
                                {
                                    vR[i] = 89;
                                }
                                else
                                {
                                    vR[i] = 88;
                                }
                            }
                        }
                    }
                    else
                    {
                        if (input[i] > 83)
                        {
                            if (input[i] > 85)
                            {
                                if (input[i] == 87)
                                {
                                    vR[i] = 87;
                                }
                                else
                                {
                                    vR[i] = 86;
                                }
                            }
                            else
                            {
                                if (input[i] == 85)
                                {
                                    vR[i] = 85;
                                }
                                else
                                {
                                    vR[i] = 84;
                                }
                            }
                        }
                        else
                        {
                            if (input[i] > 81)
                            {
                                if (input[i] == 83)
                                {
                                    vR[i] = 83;
                                }
                                else
                                {
                                    vR[i] = 82;
                                }
                            }
                            else
                            {
                                if (input[i] == 81)
                                {
                                    vR[i] = 81;
                                }
                                else
                                {
                                    vR[i] = 80;
                                }
                            }
                        }
                    }
                }
                else
                {
                    if (input[i] > 71)
                    {
                        if (input[i] > 75)
                        {
                            if (input[i] > 77)
                            {
                                if (input[i] == 79)
                                {
                                    vR[i] = 79;
                                }
                                else
                                {
                                    vR[i] = 78;
                                }
                            }
                            else
                            {
                                if (input[i] == 77)
                                {
                                    vR[i] = 77;
                                }
                                else
                                {
                                    vR[i] = 76;
                                }
                            }
                        }
                        else
                        {
                            if (input[i] > 73)
                            {
                                if (input[i] == 75)
                                {
                                    vR[i] = 75;
                                }
                                else
                                {
                                    vR[i] = 74;
                                }
                            }
                            else
                            {
                                if (input[i] == 73)
                                {
                                    vR[i] = 73;
                                }
                                else
                                {
                                    vR[i] = 72;
                                }
                            }
                        }
                    }
                    else
                    {
                        if (input[i] > 67)
                        {
                            if (input[i] > 69)
                            {
                                if (input[i] == 71)
                                {
                                    vR[i] = 71;
                                }
                                else
                                {
                                    vR[i] = 70;
                                }
                            }
                            else
                            {
                                if (input[i] == 69)
                                {
                                    vR[i] = 69;
                                }
                                else
                                {
                                    vR[i] = 68;
                                }
                            }
                        }
                        else
                        {
                            if (input[i] > 65)
                            {
                                if (input[i] == 67)
                                {
                                    vR[i] = 67;
                                }
                                else
                                {
                                    vR[i] = 66;
                                }
                            }
                            else
                            {
                                if (input[i] == 65)
                                {
                                    vR[i] = 65;
                                }
                                else
                                {
                                    vR[i] = 64;
                                }
                            }
                        }
                    }
                }
            }
        }
        else
        {
            if (input[i] > 31)
            {
                if (input[i] > 47)
                {
                    if (input[i] > 55)
                    {
                        if (input[i] > 59)
                        {
                            if (input[i] > 61)
                            {
                                if (input[i] == 63)
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
                                if (input[i] == 61)
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
                            if (input[i] > 57)
                            {
                                if (input[i] == 59)
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
                                if (input[i] == 57)
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
                        if (input[i] > 51)
                        {
                            if (input[i] > 53)
                            {
                                if (input[i] == 55)
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
                                if (input[i] == 53)
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
                            if (input[i] > 49)
                            {
                                if (input[i] == 51)
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
                                if (input[i] == 49)
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
                    if (input[i] > 39)
                    {
                        if (input[i] > 43)
                        {
                            if (input[i] > 45)
                            {
                                if (input[i] == 47)
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
                                if (input[i] == 45)
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
                            if (input[i] > 41)
                            {
                                if (input[i] == 43)
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
                                if (input[i] == 41)
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
                        if (input[i] > 35)
                        {
                            if (input[i] > 37)
                            {
                                if (input[i] == 39)
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
                                if (input[i] == 37)
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
                            if (input[i] > 33)
                            {
                                if (input[i] == 35)
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
                                if (input[i] == 33)
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
                if (input[i] > 15)
                {
                    if (input[i] > 23)
                    {
                        if (input[i] > 27)
                        {
                            if (input[i] > 29)
                            {
                                if (input[i] == 31)
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
                                if (input[i] == 29)
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
                            if (input[i] > 25)
                            {
                                if (input[i] == 27)
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
                                if (input[i] == 25)
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
                        if (input[i] > 19)
                        {
                            if (input[i] > 21)
                            {
                                if (input[i] == 23)
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
                                if (input[i] == 21)
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
                            if (input[i] > 17)
                            {
                                if (input[i] == 19)
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
                                if (input[i] == 17)
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
                    if (input[i] > 7)
                    {
                        if (input[i] > 11)
                        {
                            if (input[i] > 13)
                            {
                                if (input[i] == 15)
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
                                if (input[i] == 13)
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
                            if (input[i] > 9)
                            {
                                if (input[i] == 11)
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
                                if (input[i] == 9)
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
                        if (input[i] > 3)
                        {
                            if (input[i] > 5)
                            {
                                if (input[i] == 7)
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
                                if (input[i] == 5)
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
                            if (input[i] > 1)
                            {
                                if (input[i] == 3)
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
                                if (input[i] == 1)
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
}

#endif

#if defined(_RF_127IF_2TREE_1INPUT_WORST)
#define _MOD 128
#define _1_INPUT
#define _2TREE

#define EXP_NAME "_RF_127IF_2TREE_1INPUT_WORST"
#define EXP_OUTPUT_FILE "_RF_127IF_2TREE_1INPUT_WORST_OUTPUT.txt"
#define EXP_RESULT_FILE "_RF_127IF_2TREE_1INPUT_WORST_RESULT.csv"

// RF_with_calc
__global__ void RF_kernel(float *input, const int n, const int offset0, const int offset1, float *vR)
{
    int i = blockIdx.x * blockDim.x + threadIdx.x;

    if (i < n)
    {
    }
}

#endif

#if defined(_RF_127IF_3TREE_1INPUT_WORST)
#define _MOD 128
#define _1_INPUT
#define _3TREE

#define EXP_NAME "_RF_127IF_3TREE_1INPUT_WORST"
#define EXP_OUTPUT_FILE "_RF_127IF_3TREE_1INPUT_WORST_OUTPUT.txt"
#define EXP_RESULT_FILE "_RF_127IF_23TREE_1INPUT_WORST_RESULT.csv"

// RF_with_calc
__global__ void RF_kernel(float *input, const int n, const int offset0, const int offset1, const int offset2, float *vR)
{
    int i = blockIdx.x * blockDim.x + threadIdx.x;

    if (i < n)
    {
    }
}

#endif

#if defined(_RF_127IF_4TREE_1INPUT_WORST)
#define _MOD 128
#define _1_INPUT
#define _4TREE

#define EXP_NAME "_RF_127IF_4TREE_1INPUT_WORST"
#define EXP_OUTPUT_FILE "_RF_127IF_4TREE_1INPUT_WORST_OUTPUT.txt"
#define EXP_RESULT_FILE "_RF_127IF_4TREE_1INPUT_WORST_RESULT.csv"

// RF_with_calc
__global__ void RF_kernel(float *input, const int n, const int offset0, const int offset1, const int offset2, const int offset3, float *vR)
{
    int i = blockIdx.x * blockDim.x + threadIdx.x;

    if (i < n)
    {
        if (input[i + offset0] > 63)
        {
            if (input[i + offset0] > 95)
            {
                if (input[i + offset0] > 111)
                {
                    if (input[i + offset0] > 119)
                    {
                        if (input[i + offset0] > 123)
                        {
                            if (input[i + offset0] > 125)
                            {
                                if (input[i + offset0] == 127)
                                {
                                    vR[i] = 127;
                                }
                                else
                                {
                                    vR[i] = 126;
                                }
                            }
                            else
                            {
                                if (input[i + offset0] == 125)
                                {
                                    vR[i] = 125;
                                }
                                else
                                {
                                    vR[i] = 124;
                                }
                            }
                        }
                        else
                        {
                            if (input[i + offset0] > 121)
                            {
                                if (input[i + offset0] == 123)
                                {
                                    vR[i] = 123;
                                }
                                else
                                {
                                    vR[i] = 122;
                                }
                            }
                            else
                            {
                                if (input[i + offset0] == 121)
                                {
                                    vR[i] = 121;
                                }
                                else
                                {
                                    vR[i] = 120;
                                }
                            }
                        }
                    }
                    else
                    {
                        if (input[i + offset0] > 115)
                        {
                            if (input[i + offset0] > 117)
                            {
                                if (input[i + offset0] == 119)
                                {
                                    vR[i] = 119;
                                }
                                else
                                {
                                    vR[i] = 118;
                                }
                            }
                            else
                            {
                                if (input[i + offset0] == 117)
                                {
                                    vR[i] = 117;
                                }
                                else
                                {
                                    vR[i] = 116;
                                }
                            }
                        }
                        else
                        {
                            if (input[i + offset0] > 113)
                            {
                                if (input[i + offset0] == 115)
                                {
                                    vR[i] = 115;
                                }
                                else
                                {
                                    vR[i] = 114;
                                }
                            }
                            else
                            {
                                if (input[i + offset0] == 113)
                                {
                                    vR[i] = 113;
                                }
                                else
                                {
                                    vR[i] = 112;
                                }
                            }
                        }
                    }
                }
                else
                {
                    if (input[i + offset0] > 103)
                    {
                        if (input[i + offset0] > 107)
                        {
                            if (input[i + offset0] > 109)
                            {
                                if (input[i + offset0] == 111)
                                {
                                    vR[i] = 111;
                                }
                                else
                                {
                                    vR[i] = 110;
                                }
                            }
                            else
                            {
                                if (input[i + offset0] == 109)
                                {
                                    vR[i] = 109;
                                }
                                else
                                {
                                    vR[i] = 108;
                                }
                            }
                        }
                        else
                        {
                            if (input[i + offset0] > 105)
                            {
                                if (input[i + offset0] == 107)
                                {
                                    vR[i] = 107;
                                }
                                else
                                {
                                    vR[i] = 106;
                                }
                            }
                            else
                            {
                                if (input[i + offset0] == 105)
                                {
                                    vR[i] = 105;
                                }
                                else
                                {
                                    vR[i] = 104;
                                }
                            }
                        }
                    }
                    else
                    {
                        if (input[i + offset0] > 99)
                        {
                            if (input[i + offset0] > 101)
                            {
                                if (input[i + offset0] == 103)
                                {
                                    vR[i] = 103;
                                }
                                else
                                {
                                    vR[i] = 102;
                                }
                            }
                            else
                            {
                                if (input[i + offset0] == 101)
                                {
                                    vR[i] = 101;
                                }
                                else
                                {
                                    vR[i] = 100;
                                }
                            }
                        }
                        else
                        {
                            if (input[i + offset0] > 97)
                            {
                                if (input[i + offset0] == 99)
                                {
                                    vR[i] = 99;
                                }
                                else
                                {
                                    vR[i] = 98;
                                }
                            }
                            else
                            {
                                if (input[i + offset0] == 97)
                                {
                                    vR[i] = 97;
                                }
                                else
                                {
                                    vR[i] = 96;
                                }
                            }
                        }
                    }
                }
            }
            else
            {
                if (input[i + offset0] > 79)
                {
                    if (input[i + offset0] > 87)
                    {
                        if (input[i + offset0] > 91)
                        {
                            if (input[i + offset0] > 93)
                            {
                                if (input[i + offset0] == 95)
                                {
                                    vR[i] = 95;
                                }
                                else
                                {
                                    vR[i] = 94;
                                }
                            }
                            else
                            {
                                if (input[i + offset0] == 93)
                                {
                                    vR[i] = 93;
                                }
                                else
                                {
                                    vR[i] = 92;
                                }
                            }
                        }
                        else
                        {
                            if (input[i + offset0] > 89)
                            {
                                if (input[i + offset0] == 91)
                                {
                                    vR[i] = 91;
                                }
                                else
                                {
                                    vR[i] = 90;
                                }
                            }
                            else
                            {
                                if (input[i + offset0] == 89)
                                {
                                    vR[i] = 89;
                                }
                                else
                                {
                                    vR[i] = 88;
                                }
                            }
                        }
                    }
                    else
                    {
                        if (input[i + offset0] > 83)
                        {
                            if (input[i + offset0] > 85)
                            {
                                if (input[i + offset0] == 87)
                                {
                                    vR[i] = 87;
                                }
                                else
                                {
                                    vR[i] = 86;
                                }
                            }
                            else
                            {
                                if (input[i + offset0] == 85)
                                {
                                    vR[i] = 85;
                                }
                                else
                                {
                                    vR[i] = 84;
                                }
                            }
                        }
                        else
                        {
                            if (input[i + offset0] > 81)
                            {
                                if (input[i + offset0] == 83)
                                {
                                    vR[i] = 83;
                                }
                                else
                                {
                                    vR[i] = 82;
                                }
                            }
                            else
                            {
                                if (input[i + offset0] == 81)
                                {
                                    vR[i] = 81;
                                }
                                else
                                {
                                    vR[i] = 80;
                                }
                            }
                        }
                    }
                }
                else
                {
                    if (input[i + offset0] > 71)
                    {
                        if (input[i + offset0] > 75)
                        {
                            if (input[i + offset0] > 77)
                            {
                                if (input[i + offset0] == 79)
                                {
                                    vR[i] = 79;
                                }
                                else
                                {
                                    vR[i] = 78;
                                }
                            }
                            else
                            {
                                if (input[i + offset0] == 77)
                                {
                                    vR[i] = 77;
                                }
                                else
                                {
                                    vR[i] = 76;
                                }
                            }
                        }
                        else
                        {
                            if (input[i + offset0] > 73)
                            {
                                if (input[i + offset0] == 75)
                                {
                                    vR[i] = 75;
                                }
                                else
                                {
                                    vR[i] = 74;
                                }
                            }
                            else
                            {
                                if (input[i + offset0] == 73)
                                {
                                    vR[i] = 73;
                                }
                                else
                                {
                                    vR[i] = 72;
                                }
                            }
                        }
                    }
                    else
                    {
                        if (input[i + offset0] > 67)
                        {
                            if (input[i + offset0] > 69)
                            {
                                if (input[i + offset0] == 71)
                                {
                                    vR[i] = 71;
                                }
                                else
                                {
                                    vR[i] = 70;
                                }
                            }
                            else
                            {
                                if (input[i + offset0] == 69)
                                {
                                    vR[i] = 69;
                                }
                                else
                                {
                                    vR[i] = 68;
                                }
                            }
                        }
                        else
                        {
                            if (input[i + offset0] > 65)
                            {
                                if (input[i + offset0] == 67)
                                {
                                    vR[i] = 67;
                                }
                                else
                                {
                                    vR[i] = 66;
                                }
                            }
                            else
                            {
                                if (input[i + offset0] == 65)
                                {
                                    vR[i] = 65;
                                }
                                else
                                {
                                    vR[i] = 64;
                                }
                            }
                        }
                    }
                }
            }
        }
        else
        {
            if (input[i + offset0] > 31)
            {
                if (input[i + offset0] > 47)
                {
                    if (input[i + offset0] > 55)
                    {
                        if (input[i + offset0] > 59)
                        {
                            if (input[i + offset0] > 61)
                            {
                                if (input[i + offset0] == 63)
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
                                if (input[i + offset0] == 61)
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
                            if (input[i + offset0] > 57)
                            {
                                if (input[i + offset0] == 59)
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
                                if (input[i + offset0] == 57)
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
                        if (input[i + offset0] > 51)
                        {
                            if (input[i + offset0] > 53)
                            {
                                if (input[i + offset0] == 55)
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
                                if (input[i + offset0] == 53)
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
                            if (input[i + offset0] > 49)
                            {
                                if (input[i + offset0] == 51)
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
                                if (input[i + offset0] == 49)
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
                    if (input[i + offset0] > 39)
                    {
                        if (input[i + offset0] > 43)
                        {
                            if (input[i + offset0] > 45)
                            {
                                if (input[i + offset0] == 47)
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
                                if (input[i + offset0] == 45)
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
                            if (input[i + offset0] > 41)
                            {
                                if (input[i + offset0] == 43)
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
                                if (input[i + offset0] == 41)
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
                        if (input[i + offset0] > 35)
                        {
                            if (input[i + offset0] > 37)
                            {
                                if (input[i + offset0] == 39)
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
                                if (input[i + offset0] == 37)
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
                            if (input[i + offset0] > 33)
                            {
                                if (input[i + offset0] == 35)
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
                                if (input[i + offset0] == 33)
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
                if (input[i + offset0] > 15)
                {
                    if (input[i + offset0] > 23)
                    {
                        if (input[i + offset0] > 27)
                        {
                            if (input[i + offset0] > 29)
                            {
                                if (input[i + offset0] == 31)
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
                                if (input[i + offset0] == 29)
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
                            if (input[i + offset0] > 25)
                            {
                                if (input[i + offset0] == 27)
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
                                if (input[i + offset0] == 25)
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
                        if (input[i + offset0] > 19)
                        {
                            if (input[i + offset0] > 21)
                            {
                                if (input[i + offset0] == 23)
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
                                if (input[i + offset0] == 21)
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
                            if (input[i + offset0] > 17)
                            {
                                if (input[i + offset0] == 19)
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
                                if (input[i + offset0] == 17)
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
                    if (input[i + offset0] > 7)
                    {
                        if (input[i + offset0] > 11)
                        {
                            if (input[i + offset0] > 13)
                            {
                                if (input[i + offset0] == 15)
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
                                if (input[i + offset0] == 13)
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
                            if (input[i + offset0] > 9)
                            {
                                if (input[i + offset0] == 11)
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
                                if (input[i + offset0] == 9)
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
                        if (input[i + offset0] > 3)
                        {
                            if (input[i + offset0] > 5)
                            {
                                if (input[i + offset0] == 7)
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
                                if (input[i + offset0] == 5)
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
                            if (input[i + offset0] > 1)
                            {
                                if (input[i + offset0] == 3)
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
                                if (input[i + offset0] == 1)
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
        if (input[i + offset1] > 63)
        {
            if (input[i + offset1] > 95)
            {
                if (input[i + offset1] > 111)
                {
                    if (input[i + offset1] > 119)
                    {
                        if (input[i + offset1] > 123)
                        {
                            if (input[i + offset1] > 125)
                            {
                                if (input[i + offset1] == 127)
                                {
                                    vR[i] += 1;
                                }
                                else
                                {
                                    vR[i] += 1;
                                }
                            }
                            else
                            {
                                if (input[i + offset1] == 125)
                                {
                                    vR[i] += 1;
                                }
                                else
                                {
                                    vR[i] += 1;
                                }
                            }
                        }
                        else
                        {
                            if (input[i + offset1] > 121)
                            {
                                if (input[i + offset1] == 123)
                                {
                                    vR[i] += 1;
                                }
                                else
                                {
                                    vR[i] += 1;
                                }
                            }
                            else
                            {
                                if (input[i + offset1] == 121)
                                {
                                    vR[i] += 1;
                                }
                                else
                                {
                                    vR[i] += 1;
                                }
                            }
                        }
                    }
                    else
                    {
                        if (input[i + offset1] > 115)
                        {
                            if (input[i + offset1] > 117)
                            {
                                if (input[i + offset1] == 119)
                                {
                                    vR[i] += 1;
                                }
                                else
                                {
                                    vR[i] += 1;
                                }
                            }
                            else
                            {
                                if (input[i + offset1] == 117)
                                {
                                    vR[i] += 1;
                                }
                                else
                                {
                                    vR[i] += 1;
                                }
                            }
                        }
                        else
                        {
                            if (input[i + offset1] > 113)
                            {
                                if (input[i + offset1] == 115)
                                {
                                    vR[i] += 1;
                                }
                                else
                                {
                                    vR[i] += 1;
                                }
                            }
                            else
                            {
                                if (input[i + offset1] == 113)
                                {
                                    vR[i] += 1;
                                }
                                else
                                {
                                    vR[i] += 1;
                                }
                            }
                        }
                    }
                }
                else
                {
                    if (input[i + offset1] > 103)
                    {
                        if (input[i + offset1] > 107)
                        {
                            if (input[i + offset1] > 109)
                            {
                                if (input[i + offset1] == 111)
                                {
                                    vR[i] += 1;
                                }
                                else
                                {
                                    vR[i] += 1;
                                }
                            }
                            else
                            {
                                if (input[i + offset1] == 109)
                                {
                                    vR[i] += 1;
                                }
                                else
                                {
                                    vR[i] += 1;
                                }
                            }
                        }
                        else
                        {
                            if (input[i + offset1] > 105)
                            {
                                if (input[i + offset1] == 107)
                                {
                                    vR[i] += 1;
                                }
                                else
                                {
                                    vR[i] += 1;
                                }
                            }
                            else
                            {
                                if (input[i + offset1] == 105)
                                {
                                    vR[i] += 1;
                                }
                                else
                                {
                                    vR[i] += 1;
                                }
                            }
                        }
                    }
                    else
                    {
                        if (input[i + offset1] > 99)
                        {
                            if (input[i + offset1] > 101)
                            {
                                if (input[i + offset1] == 103)
                                {
                                    vR[i] += 1;
                                }
                                else
                                {
                                    vR[i] += 1;
                                }
                            }
                            else
                            {
                                if (input[i + offset1] == 101)
                                {
                                    vR[i] += 1;
                                }
                                else
                                {
                                    vR[i] += 1;
                                }
                            }
                        }
                        else
                        {
                            if (input[i + offset1] > 97)
                            {
                                if (input[i + offset1] == 99)
                                {
                                    vR[i] += 1;
                                }
                                else
                                {
                                    vR[i] += 1;
                                }
                            }
                            else
                            {
                                if (input[i + offset1] == 97)
                                {
                                    vR[i] += 1;
                                }
                                else
                                {
                                    vR[i] += 1;
                                }
                            }
                        }
                    }
                }
            }
            else
            {
                if (input[i + offset1] > 79)
                {
                    if (input[i + offset1] > 87)
                    {
                        if (input[i + offset1] > 91)
                        {
                            if (input[i + offset1] > 93)
                            {
                                if (input[i + offset1] == 95)
                                {
                                    vR[i] += 1;
                                }
                                else
                                {
                                    vR[i] += 1;
                                }
                            }
                            else
                            {
                                if (input[i + offset1] == 93)
                                {
                                    vR[i] += 1;
                                }
                                else
                                {
                                    vR[i] += 1;
                                }
                            }
                        }
                        else
                        {
                            if (input[i + offset1] > 89)
                            {
                                if (input[i + offset1] == 91)
                                {
                                    vR[i] += 1;
                                }
                                else
                                {
                                    vR[i] += 1;
                                }
                            }
                            else
                            {
                                if (input[i + offset1] == 89)
                                {
                                    vR[i] += 1;
                                }
                                else
                                {
                                    vR[i] += 1;
                                }
                            }
                        }
                    }
                    else
                    {
                        if (input[i + offset1] > 83)
                        {
                            if (input[i + offset1] > 85)
                            {
                                if (input[i + offset1] == 87)
                                {
                                    vR[i] += 1;
                                }
                                else
                                {
                                    vR[i] += 1;
                                }
                            }
                            else
                            {
                                if (input[i + offset1] == 85)
                                {
                                    vR[i] += 1;
                                }
                                else
                                {
                                    vR[i] += 1;
                                }
                            }
                        }
                        else
                        {
                            if (input[i + offset1] > 81)
                            {
                                if (input[i + offset1] == 83)
                                {
                                    vR[i] += 1;
                                }
                                else
                                {
                                    vR[i] += 1;
                                }
                            }
                            else
                            {
                                if (input[i + offset1] == 81)
                                {
                                    vR[i] += 1;
                                }
                                else
                                {
                                    vR[i] += 1;
                                }
                            }
                        }
                    }
                }
                else
                {
                    if (input[i + offset1] > 71)
                    {
                        if (input[i + offset1] > 75)
                        {
                            if (input[i + offset1] > 77)
                            {
                                if (input[i + offset1] == 79)
                                {
                                    vR[i] += 1;
                                }
                                else
                                {
                                    vR[i] += 1;
                                }
                            }
                            else
                            {
                                if (input[i + offset1] == 77)
                                {
                                    vR[i] += 1;
                                }
                                else
                                {
                                    vR[i] += 1;
                                }
                            }
                        }
                        else
                        {
                            if (input[i + offset1] > 73)
                            {
                                if (input[i + offset1] == 75)
                                {
                                    vR[i] += 1;
                                }
                                else
                                {
                                    vR[i] += 1;
                                }
                            }
                            else
                            {
                                if (input[i + offset1] == 73)
                                {
                                    vR[i] += 1;
                                }
                                else
                                {
                                    vR[i] += 1;
                                }
                            }
                        }
                    }
                    else
                    {
                        if (input[i + offset1] > 67)
                        {
                            if (input[i + offset1] > 69)
                            {
                                if (input[i + offset1] == 71)
                                {
                                    vR[i] += 1;
                                }
                                else
                                {
                                    vR[i] += 1;
                                }
                            }
                            else
                            {
                                if (input[i + offset1] == 69)
                                {
                                    vR[i] += 1;
                                }
                                else
                                {
                                    vR[i] += 1;
                                }
                            }
                        }
                        else
                        {
                            if (input[i + offset1] > 65)
                            {
                                if (input[i + offset1] == 67)
                                {
                                    vR[i] += 1;
                                }
                                else
                                {
                                    vR[i] += 1;
                                }
                            }
                            else
                            {
                                if (input[i + offset1] == 65)
                                {
                                    vR[i] += 1;
                                }
                                else
                                {
                                    vR[i] += 1;
                                }
                            }
                        }
                    }
                }
            }
        }
        else
        {
            if (input[i + offset1] > 31)
            {
                if (input[i + offset1] > 47)
                {
                    if (input[i + offset1] > 55)
                    {
                        if (input[i + offset1] > 59)
                        {
                            if (input[i + offset1] > 61)
                            {
                                if (input[i + offset1] == 63)
                                {
                                    vR[i] += 1;
                                }
                                else
                                {
                                    vR[i] += 1;
                                }
                            }
                            else
                            {
                                if (input[i + offset1] == 61)
                                {
                                    vR[i] += 1;
                                }
                                else
                                {
                                    vR[i] += 1;
                                }
                            }
                        }
                        else
                        {
                            if (input[i + offset1] > 57)
                            {
                                if (input[i + offset1] == 59)
                                {
                                    vR[i] += 1;
                                }
                                else
                                {
                                    vR[i] += 1;
                                }
                            }
                            else
                            {
                                if (input[i + offset1] == 57)
                                {
                                    vR[i] += 1;
                                }
                                else
                                {
                                    vR[i] += 1;
                                }
                            }
                        }
                    }
                    else
                    {
                        if (input[i + offset1] > 51)
                        {
                            if (input[i + offset1] > 53)
                            {
                                if (input[i + offset1] == 55)
                                {
                                    vR[i] += 1;
                                }
                                else
                                {
                                    vR[i] += 1;
                                }
                            }
                            else
                            {
                                if (input[i + offset1] == 53)
                                {
                                    vR[i] += 1;
                                }
                                else
                                {
                                    vR[i] += 1;
                                }
                            }
                        }
                        else
                        {
                            if (input[i + offset1] > 49)
                            {
                                if (input[i + offset1] == 51)
                                {
                                    vR[i] += 1;
                                }
                                else
                                {
                                    vR[i] += 1;
                                }
                            }
                            else
                            {
                                if (input[i + offset1] == 49)
                                {
                                    vR[i] += 1;
                                }
                                else
                                {
                                    vR[i] += 1;
                                }
                            }
                        }
                    }
                }
                else
                {
                    if (input[i + offset1] > 39)
                    {
                        if (input[i + offset1] > 43)
                        {
                            if (input[i + offset1] > 45)
                            {
                                if (input[i + offset1] == 47)
                                {
                                    vR[i] += 1;
                                }
                                else
                                {
                                    vR[i] += 1;
                                }
                            }
                            else
                            {
                                if (input[i + offset1] == 45)
                                {
                                    vR[i] += 1;
                                }
                                else
                                {
                                    vR[i] += 1;
                                }
                            }
                        }
                        else
                        {
                            if (input[i + offset1] > 41)
                            {
                                if (input[i + offset1] == 43)
                                {
                                    vR[i] += 1;
                                }
                                else
                                {
                                    vR[i] += 1;
                                }
                            }
                            else
                            {
                                if (input[i + offset1] == 41)
                                {
                                    vR[i] += 1;
                                }
                                else
                                {
                                    vR[i] += 1;
                                }
                            }
                        }
                    }
                    else
                    {
                        if (input[i + offset1] > 35)
                        {
                            if (input[i + offset1] > 37)
                            {
                                if (input[i + offset1] == 39)
                                {
                                    vR[i] += 1;
                                }
                                else
                                {
                                    vR[i] += 1;
                                }
                            }
                            else
                            {
                                if (input[i + offset1] == 37)
                                {
                                    vR[i] += 1;
                                }
                                else
                                {
                                    vR[i] += 1;
                                }
                            }
                        }
                        else
                        {
                            if (input[i + offset1] > 33)
                            {
                                if (input[i + offset1] == 35)
                                {
                                    vR[i] += 1;
                                }
                                else
                                {
                                    vR[i] += 1;
                                }
                            }
                            else
                            {
                                if (input[i + offset1] == 33)
                                {
                                    vR[i] += 1;
                                }
                                else
                                {
                                    vR[i] += 1;
                                }
                            }
                        }
                    }
                }
            }
            else
            {
                if (input[i + offset1] > 15)
                {
                    if (input[i + offset1] > 23)
                    {
                        if (input[i + offset1] > 27)
                        {
                            if (input[i + offset1] > 29)
                            {
                                if (input[i + offset1] == 31)
                                {
                                    vR[i] += 1;
                                }
                                else
                                {
                                    vR[i] += 1;
                                }
                            }
                            else
                            {
                                if (input[i + offset1] == 29)
                                {
                                    vR[i] += 1;
                                }
                                else
                                {
                                    vR[i] += 1;
                                }
                            }
                        }
                        else
                        {
                            if (input[i + offset1] > 25)
                            {
                                if (input[i + offset1] == 27)
                                {
                                    vR[i] += 1;
                                }
                                else
                                {
                                    vR[i] += 1;
                                }
                            }
                            else
                            {
                                if (input[i + offset1] == 25)
                                {
                                    vR[i] += 1;
                                }
                                else
                                {
                                    vR[i] += 1;
                                }
                            }
                        }
                    }
                    else
                    {
                        if (input[i + offset1] > 19)
                        {
                            if (input[i + offset1] > 21)
                            {
                                if (input[i + offset1] == 23)
                                {
                                    vR[i] += 1;
                                }
                                else
                                {
                                    vR[i] += 1;
                                }
                            }
                            else
                            {
                                if (input[i + offset1] == 21)
                                {
                                    vR[i] += 1;
                                }
                                else
                                {
                                    vR[i] += 1;
                                }
                            }
                        }
                        else
                        {
                            if (input[i + offset1] > 17)
                            {
                                if (input[i + offset1] == 19)
                                {
                                    vR[i] += 1;
                                }
                                else
                                {
                                    vR[i] += 1;
                                }
                            }
                            else
                            {
                                if (input[i + offset1] == 17)
                                {
                                    vR[i] += 1;
                                }
                                else
                                {
                                    vR[i] += 1;
                                }
                            }
                        }
                    }
                }
                else
                {
                    if (input[i + offset1] > 7)
                    {
                        if (input[i + offset1] > 11)
                        {
                            if (input[i + offset1] > 13)
                            {
                                if (input[i + offset1] == 15)
                                {
                                    vR[i] += 1;
                                }
                                else
                                {
                                    vR[i] += 1;
                                }
                            }
                            else
                            {
                                if (input[i + offset1] == 13)
                                {
                                    vR[i] += 1;
                                }
                                else
                                {
                                    vR[i] += 1;
                                }
                            }
                        }
                        else
                        {
                            if (input[i + offset1] > 9)
                            {
                                if (input[i + offset1] == 11)
                                {
                                    vR[i] += 1;
                                }
                                else
                                {
                                    vR[i] += 1;
                                }
                            }
                            else
                            {
                                if (input[i + offset1] == 9)
                                {
                                    vR[i] += 1;
                                }
                                else
                                {
                                    vR[i] += 1;
                                }
                            }
                        }
                    }
                    else
                    {
                        if (input[i + offset1] > 3)
                        {
                            if (input[i + offset1] > 5)
                            {
                                if (input[i + offset1] == 7)
                                {
                                    vR[i] += 1;
                                }
                                else
                                {
                                    vR[i] += 1;
                                }
                            }
                            else
                            {
                                if (input[i + offset1] == 5)
                                {
                                    vR[i] += 1;
                                }
                                else
                                {
                                    vR[i] += 1;
                                }
                            }
                        }
                        else
                        {
                            if (input[i + offset1] > 1)
                            {
                                if (input[i + offset1] == 3)
                                {
                                    vR[i] += 1;
                                }
                                else
                                {
                                    vR[i] += 1;
                                }
                            }
                            else
                            {
                                if (input[i + offset1] == 1)
                                {
                                    vR[i] += 1;
                                }
                                else
                                {
                                    vR[i] += 1;
                                }
                            }
                        }
                    }
                }
            }
        }
        if (input[i + offset2] > 63)
        {
            if (input[i + offset2] > 95)
            {
                if (input[i + offset2] > 111)
                {
                    if (input[i + offset2] > 119)
                    {
                        if (input[i + offset2] > 123)
                        {
                            if (input[i + offset2] > 125)
                            {
                                if (input[i + offset2] == 127)
                                {
                                    vR[i] += 1;
                                }
                                else
                                {
                                    vR[i] += 1;
                                }
                            }
                            else
                            {
                                if (input[i + offset2] == 125)
                                {
                                    vR[i] += 1;
                                }
                                else
                                {
                                    vR[i] += 1;
                                }
                            }
                        }
                        else
                        {
                            if (input[i + offset2] > 121)
                            {
                                if (input[i + offset2] == 123)
                                {
                                    vR[i] += 1;
                                }
                                else
                                {
                                    vR[i] += 1;
                                }
                            }
                            else
                            {
                                if (input[i + offset2] == 121)
                                {
                                    vR[i] += 1;
                                }
                                else
                                {
                                    vR[i] += 1;
                                }
                            }
                        }
                    }
                    else
                    {
                        if (input[i + offset2] > 115)
                        {
                            if (input[i + offset2] > 117)
                            {
                                if (input[i + offset2] == 119)
                                {
                                    vR[i] += 1;
                                }
                                else
                                {
                                    vR[i] += 1;
                                }
                            }
                            else
                            {
                                if (input[i + offset2] == 117)
                                {
                                    vR[i] += 1;
                                }
                                else
                                {
                                    vR[i] += 1;
                                }
                            }
                        }
                        else
                        {
                            if (input[i + offset2] > 113)
                            {
                                if (input[i + offset2] == 115)
                                {
                                    vR[i] += 1;
                                }
                                else
                                {
                                    vR[i] += 1;
                                }
                            }
                            else
                            {
                                if (input[i + offset2] == 113)
                                {
                                    vR[i] += 1;
                                }
                                else
                                {
                                    vR[i] += 1;
                                }
                            }
                        }
                    }
                }
                else
                {
                    if (input[i + offset2] > 103)
                    {
                        if (input[i + offset2] > 107)
                        {
                            if (input[i + offset2] > 109)
                            {
                                if (input[i + offset2] == 111)
                                {
                                    vR[i] += 1;
                                }
                                else
                                {
                                    vR[i] += 1;
                                }
                            }
                            else
                            {
                                if (input[i + offset2] == 109)
                                {
                                    vR[i] += 1;
                                }
                                else
                                {
                                    vR[i] += 1;
                                }
                            }
                        }
                        else
                        {
                            if (input[i + offset2] > 105)
                            {
                                if (input[i + offset2] == 107)
                                {
                                    vR[i] += 1;
                                }
                                else
                                {
                                    vR[i] += 1;
                                }
                            }
                            else
                            {
                                if (input[i + offset2] == 105)
                                {
                                    vR[i] += 1;
                                }
                                else
                                {
                                    vR[i] += 1;
                                }
                            }
                        }
                    }
                    else
                    {
                        if (input[i + offset2] > 99)
                        {
                            if (input[i + offset2] > 101)
                            {
                                if (input[i + offset2] == 103)
                                {
                                    vR[i] += 1;
                                }
                                else
                                {
                                    vR[i] += 1;
                                }
                            }
                            else
                            {
                                if (input[i + offset2] == 101)
                                {
                                    vR[i] += 1;
                                }
                                else
                                {
                                    vR[i] += 1;
                                }
                            }
                        }
                        else
                        {
                            if (input[i + offset2] > 97)
                            {
                                if (input[i + offset2] == 99)
                                {
                                    vR[i] += 1;
                                }
                                else
                                {
                                    vR[i] += 1;
                                }
                            }
                            else
                            {
                                if (input[i + offset2] == 97)
                                {
                                    vR[i] += 1;
                                }
                                else
                                {
                                    vR[i] += 1;
                                }
                            }
                        }
                    }
                }
            }
            else
            {
                if (input[i + offset2] > 79)
                {
                    if (input[i + offset2] > 87)
                    {
                        if (input[i + offset2] > 91)
                        {
                            if (input[i + offset2] > 93)
                            {
                                if (input[i + offset2] == 95)
                                {
                                    vR[i] += 1;
                                }
                                else
                                {
                                    vR[i] += 1;
                                }
                            }
                            else
                            {
                                if (input[i + offset2] == 93)
                                {
                                    vR[i] += 1;
                                }
                                else
                                {
                                    vR[i] += 1;
                                }
                            }
                        }
                        else
                        {
                            if (input[i + offset2] > 89)
                            {
                                if (input[i + offset2] == 91)
                                {
                                    vR[i] += 1;
                                }
                                else
                                {
                                    vR[i] += 1;
                                }
                            }
                            else
                            {
                                if (input[i + offset2] == 89)
                                {
                                    vR[i] += 1;
                                }
                                else
                                {
                                    vR[i] += 1;
                                }
                            }
                        }
                    }
                    else
                    {
                        if (input[i + offset2] > 83)
                        {
                            if (input[i + offset2] > 85)
                            {
                                if (input[i + offset2] == 87)
                                {
                                    vR[i] += 1;
                                }
                                else
                                {
                                    vR[i] += 1;
                                }
                            }
                            else
                            {
                                if (input[i + offset2] == 85)
                                {
                                    vR[i] += 1;
                                }
                                else
                                {
                                    vR[i] += 1;
                                }
                            }
                        }
                        else
                        {
                            if (input[i + offset2] > 81)
                            {
                                if (input[i + offset2] == 83)
                                {
                                    vR[i] += 1;
                                }
                                else
                                {
                                    vR[i] += 1;
                                }
                            }
                            else
                            {
                                if (input[i + offset2] == 81)
                                {
                                    vR[i] += 1;
                                }
                                else
                                {
                                    vR[i] += 1;
                                }
                            }
                        }
                    }
                }
                else
                {
                    if (input[i + offset2] > 71)
                    {
                        if (input[i + offset2] > 75)
                        {
                            if (input[i + offset2] > 77)
                            {
                                if (input[i + offset2] == 79)
                                {
                                    vR[i] += 1;
                                }
                                else
                                {
                                    vR[i] += 1;
                                }
                            }
                            else
                            {
                                if (input[i + offset2] == 77)
                                {
                                    vR[i] += 1;
                                }
                                else
                                {
                                    vR[i] += 1;
                                }
                            }
                        }
                        else
                        {
                            if (input[i + offset2] > 73)
                            {
                                if (input[i + offset2] == 75)
                                {
                                    vR[i] += 1;
                                }
                                else
                                {
                                    vR[i] += 1;
                                }
                            }
                            else
                            {
                                if (input[i + offset2] == 73)
                                {
                                    vR[i] += 1;
                                }
                                else
                                {
                                    vR[i] += 1;
                                }
                            }
                        }
                    }
                    else
                    {
                        if (input[i + offset2] > 67)
                        {
                            if (input[i + offset2] > 69)
                            {
                                if (input[i + offset2] == 71)
                                {
                                    vR[i] += 1;
                                }
                                else
                                {
                                    vR[i] += 1;
                                }
                            }
                            else
                            {
                                if (input[i + offset2] == 69)
                                {
                                    vR[i] += 1;
                                }
                                else
                                {
                                    vR[i] += 1;
                                }
                            }
                        }
                        else
                        {
                            if (input[i + offset2] > 65)
                            {
                                if (input[i + offset2] == 67)
                                {
                                    vR[i] += 1;
                                }
                                else
                                {
                                    vR[i] += 1;
                                }
                            }
                            else
                            {
                                if (input[i + offset2] == 65)
                                {
                                    vR[i] += 1;
                                }
                                else
                                {
                                    vR[i] += 1;
                                }
                            }
                        }
                    }
                }
            }
        }
        else
        {
            if (input[i + offset2] > 31)
            {
                if (input[i + offset2] > 47)
                {
                    if (input[i + offset2] > 55)
                    {
                        if (input[i + offset2] > 59)
                        {
                            if (input[i + offset2] > 61)
                            {
                                if (input[i + offset2] == 63)
                                {
                                    vR[i] += 1;
                                }
                                else
                                {
                                    vR[i] += 1;
                                }
                            }
                            else
                            {
                                if (input[i + offset2] == 61)
                                {
                                    vR[i] += 1;
                                }
                                else
                                {
                                    vR[i] += 1;
                                }
                            }
                        }
                        else
                        {
                            if (input[i + offset2] > 57)
                            {
                                if (input[i + offset2] == 59)
                                {
                                    vR[i] += 1;
                                }
                                else
                                {
                                    vR[i] += 1;
                                }
                            }
                            else
                            {
                                if (input[i + offset2] == 57)
                                {
                                    vR[i] += 1;
                                }
                                else
                                {
                                    vR[i] += 1;
                                }
                            }
                        }
                    }
                    else
                    {
                        if (input[i + offset2] > 51)
                        {
                            if (input[i + offset2] > 53)
                            {
                                if (input[i + offset2] == 55)
                                {
                                    vR[i] += 1;
                                }
                                else
                                {
                                    vR[i] += 1;
                                }
                            }
                            else
                            {
                                if (input[i + offset2] == 53)
                                {
                                    vR[i] += 1;
                                }
                                else
                                {
                                    vR[i] += 1;
                                }
                            }
                        }
                        else
                        {
                            if (input[i + offset2] > 49)
                            {
                                if (input[i + offset2] == 51)
                                {
                                    vR[i] += 1;
                                }
                                else
                                {
                                    vR[i] += 1;
                                }
                            }
                            else
                            {
                                if (input[i + offset2] == 49)
                                {
                                    vR[i] += 1;
                                }
                                else
                                {
                                    vR[i] += 1;
                                }
                            }
                        }
                    }
                }
                else
                {
                    if (input[i + offset2] > 39)
                    {
                        if (input[i + offset2] > 43)
                        {
                            if (input[i + offset2] > 45)
                            {
                                if (input[i + offset2] == 47)
                                {
                                    vR[i] += 1;
                                }
                                else
                                {
                                    vR[i] += 1;
                                }
                            }
                            else
                            {
                                if (input[i + offset2] == 45)
                                {
                                    vR[i] += 1;
                                }
                                else
                                {
                                    vR[i] += 1;
                                }
                            }
                        }
                        else
                        {
                            if (input[i + offset2] > 41)
                            {
                                if (input[i + offset2] == 43)
                                {
                                    vR[i] += 1;
                                }
                                else
                                {
                                    vR[i] += 1;
                                }
                            }
                            else
                            {
                                if (input[i + offset2] == 41)
                                {
                                    vR[i] += 1;
                                }
                                else
                                {
                                    vR[i] += 1;
                                }
                            }
                        }
                    }
                    else
                    {
                        if (input[i + offset2] > 35)
                        {
                            if (input[i + offset2] > 37)
                            {
                                if (input[i + offset2] == 39)
                                {
                                    vR[i] += 1;
                                }
                                else
                                {
                                    vR[i] += 1;
                                }
                            }
                            else
                            {
                                if (input[i + offset2] == 37)
                                {
                                    vR[i] += 1;
                                }
                                else
                                {
                                    vR[i] += 1;
                                }
                            }
                        }
                        else
                        {
                            if (input[i + offset2] > 33)
                            {
                                if (input[i + offset2] == 35)
                                {
                                    vR[i] += 1;
                                }
                                else
                                {
                                    vR[i] += 1;
                                }
                            }
                            else
                            {
                                if (input[i + offset2] == 33)
                                {
                                    vR[i] += 1;
                                }
                                else
                                {
                                    vR[i] += 1;
                                }
                            }
                        }
                    }
                }
            }
            else
            {
                if (input[i + offset2] > 15)
                {
                    if (input[i + offset2] > 23)
                    {
                        if (input[i + offset2] > 27)
                        {
                            if (input[i + offset2] > 29)
                            {
                                if (input[i + offset2] == 31)
                                {
                                    vR[i] += 1;
                                }
                                else
                                {
                                    vR[i] += 1;
                                }
                            }
                            else
                            {
                                if (input[i + offset2] == 29)
                                {
                                    vR[i] += 1;
                                }
                                else
                                {
                                    vR[i] += 1;
                                }
                            }
                        }
                        else
                        {
                            if (input[i + offset2] > 25)
                            {
                                if (input[i + offset2] == 27)
                                {
                                    vR[i] += 1;
                                }
                                else
                                {
                                    vR[i] += 1;
                                }
                            }
                            else
                            {
                                if (input[i + offset2] == 25)
                                {
                                    vR[i] += 1;
                                }
                                else
                                {
                                    vR[i] += 1;
                                }
                            }
                        }
                    }
                    else
                    {
                        if (input[i + offset2] > 19)
                        {
                            if (input[i + offset2] > 21)
                            {
                                if (input[i + offset2] == 23)
                                {
                                    vR[i] += 1;
                                }
                                else
                                {
                                    vR[i] += 1;
                                }
                            }
                            else
                            {
                                if (input[i + offset2] == 21)
                                {
                                    vR[i] += 1;
                                }
                                else
                                {
                                    vR[i] += 1;
                                }
                            }
                        }
                        else
                        {
                            if (input[i + offset2] > 17)
                            {
                                if (input[i + offset2] == 19)
                                {
                                    vR[i] += 1;
                                }
                                else
                                {
                                    vR[i] += 1;
                                }
                            }
                            else
                            {
                                if (input[i + offset2] == 17)
                                {
                                    vR[i] += 1;
                                }
                                else
                                {
                                    vR[i] += 1;
                                }
                            }
                        }
                    }
                }
                else
                {
                    if (input[i + offset2] > 7)
                    {
                        if (input[i + offset2] > 11)
                        {
                            if (input[i + offset2] > 13)
                            {
                                if (input[i + offset2] == 15)
                                {
                                    vR[i] += 1;
                                }
                                else
                                {
                                    vR[i] += 1;
                                }
                            }
                            else
                            {
                                if (input[i + offset2] == 13)
                                {
                                    vR[i] += 1;
                                }
                                else
                                {
                                    vR[i] += 1;
                                }
                            }
                        }
                        else
                        {
                            if (input[i + offset2] > 9)
                            {
                                if (input[i + offset2] == 11)
                                {
                                    vR[i] += 1;
                                }
                                else
                                {
                                    vR[i] += 1;
                                }
                            }
                            else
                            {
                                if (input[i + offset2] == 9)
                                {
                                    vR[i] += 1;
                                }
                                else
                                {
                                    vR[i] += 1;
                                }
                            }
                        }
                    }
                    else
                    {
                        if (input[i + offset2] > 3)
                        {
                            if (input[i + offset2] > 5)
                            {
                                if (input[i + offset2] == 7)
                                {
                                    vR[i] += 1;
                                }
                                else
                                {
                                    vR[i] += 1;
                                }
                            }
                            else
                            {
                                if (input[i + offset2] == 5)
                                {
                                    vR[i] += 1;
                                }
                                else
                                {
                                    vR[i] += 1;
                                }
                            }
                        }
                        else
                        {
                            if (input[i + offset2] > 1)
                            {
                                if (input[i + offset2] == 3)
                                {
                                    vR[i] += 1;
                                }
                                else
                                {
                                    vR[i] += 1;
                                }
                            }
                            else
                            {
                                if (input[i + offset2] == 1)
                                {
                                    vR[i] += 1;
                                }
                                else
                                {
                                    vR[i] += 1;
                                }
                            }
                        }
                    }
                }
            }
        }
        if (input[i + offset3] > 63)
        {
            if (input[i + offset3] > 95)
            {
                if (input[i + offset3] > 111)
                {
                    if (input[i + offset3] > 119)
                    {
                        if (input[i + offset3] > 123)
                        {
                            if (input[i + offset3] > 125)
                            {
                                if (input[i + offset3] == 127)
                                {
                                    vR[i] += 1;
                                }
                                else
                                {
                                    vR[i] += 1;
                                }
                            }
                            else
                            {
                                if (input[i + offset3] == 125)
                                {
                                    vR[i] += 1;
                                }
                                else
                                {
                                    vR[i] += 1;
                                }
                            }
                        }
                        else
                        {
                            if (input[i + offset3] > 121)
                            {
                                if (input[i + offset3] == 123)
                                {
                                    vR[i] += 1;
                                }
                                else
                                {
                                    vR[i] += 1;
                                }
                            }
                            else
                            {
                                if (input[i + offset3] == 121)
                                {
                                    vR[i] += 1;
                                }
                                else
                                {
                                    vR[i] += 1;
                                }
                            }
                        }
                    }
                    else
                    {
                        if (input[i + offset3] > 115)
                        {
                            if (input[i + offset3] > 117)
                            {
                                if (input[i + offset3] == 119)
                                {
                                    vR[i] += 1;
                                }
                                else
                                {
                                    vR[i] += 1;
                                }
                            }
                            else
                            {
                                if (input[i + offset3] == 117)
                                {
                                    vR[i] += 1;
                                }
                                else
                                {
                                    vR[i] += 1;
                                }
                            }
                        }
                        else
                        {
                            if (input[i + offset3] > 113)
                            {
                                if (input[i + offset3] == 115)
                                {
                                    vR[i] += 1;
                                }
                                else
                                {
                                    vR[i] += 1;
                                }
                            }
                            else
                            {
                                if (input[i + offset3] == 113)
                                {
                                    vR[i] += 1;
                                }
                                else
                                {
                                    vR[i] += 1;
                                }
                            }
                        }
                    }
                }
                else
                {
                    if (input[i + offset3] > 103)
                    {
                        if (input[i + offset3] > 107)
                        {
                            if (input[i + offset3] > 109)
                            {
                                if (input[i + offset3] == 111)
                                {
                                    vR[i] += 1;
                                }
                                else
                                {
                                    vR[i] += 1;
                                }
                            }
                            else
                            {
                                if (input[i + offset3] == 109)
                                {
                                    vR[i] += 1;
                                }
                                else
                                {
                                    vR[i] += 1;
                                }
                            }
                        }
                        else
                        {
                            if (input[i + offset3] > 105)
                            {
                                if (input[i + offset3] == 107)
                                {
                                    vR[i] += 1;
                                }
                                else
                                {
                                    vR[i] += 1;
                                }
                            }
                            else
                            {
                                if (input[i + offset3] == 105)
                                {
                                    vR[i] += 1;
                                }
                                else
                                {
                                    vR[i] += 1;
                                }
                            }
                        }
                    }
                    else
                    {
                        if (input[i + offset3] > 99)
                        {
                            if (input[i + offset3] > 101)
                            {
                                if (input[i + offset3] == 103)
                                {
                                    vR[i] += 1;
                                }
                                else
                                {
                                    vR[i] += 1;
                                }
                            }
                            else
                            {
                                if (input[i + offset3] == 101)
                                {
                                    vR[i] += 1;
                                }
                                else
                                {
                                    vR[i] += 1;
                                }
                            }
                        }
                        else
                        {
                            if (input[i + offset3] > 97)
                            {
                                if (input[i + offset3] == 99)
                                {
                                    vR[i] += 1;
                                }
                                else
                                {
                                    vR[i] += 1;
                                }
                            }
                            else
                            {
                                if (input[i + offset3] == 97)
                                {
                                    vR[i] += 1;
                                }
                                else
                                {
                                    vR[i] += 1;
                                }
                            }
                        }
                    }
                }
            }
            else
            {
                if (input[i + offset3] > 79)
                {
                    if (input[i + offset3] > 87)
                    {
                        if (input[i + offset3] > 91)
                        {
                            if (input[i + offset3] > 93)
                            {
                                if (input[i + offset3] == 95)
                                {
                                    vR[i] += 1;
                                }
                                else
                                {
                                    vR[i] += 1;
                                }
                            }
                            else
                            {
                                if (input[i + offset3] == 93)
                                {
                                    vR[i] += 1;
                                }
                                else
                                {
                                    vR[i] += 1;
                                }
                            }
                        }
                        else
                        {
                            if (input[i + offset3] > 89)
                            {
                                if (input[i + offset3] == 91)
                                {
                                    vR[i] += 1;
                                }
                                else
                                {
                                    vR[i] += 1;
                                }
                            }
                            else
                            {
                                if (input[i + offset3] == 89)
                                {
                                    vR[i] += 1;
                                }
                                else
                                {
                                    vR[i] += 1;
                                }
                            }
                        }
                    }
                    else
                    {
                        if (input[i + offset3] > 83)
                        {
                            if (input[i + offset3] > 85)
                            {
                                if (input[i + offset3] == 87)
                                {
                                    vR[i] += 1;
                                }
                                else
                                {
                                    vR[i] += 1;
                                }
                            }
                            else
                            {
                                if (input[i + offset3] == 85)
                                {
                                    vR[i] += 1;
                                }
                                else
                                {
                                    vR[i] += 1;
                                }
                            }
                        }
                        else
                        {
                            if (input[i + offset3] > 81)
                            {
                                if (input[i + offset3] == 83)
                                {
                                    vR[i] += 1;
                                }
                                else
                                {
                                    vR[i] += 1;
                                }
                            }
                            else
                            {
                                if (input[i + offset3] == 81)
                                {
                                    vR[i] += 1;
                                }
                                else
                                {
                                    vR[i] += 1;
                                }
                            }
                        }
                    }
                }
                else
                {
                    if (input[i + offset3] > 71)
                    {
                        if (input[i + offset3] > 75)
                        {
                            if (input[i + offset3] > 77)
                            {
                                if (input[i + offset3] == 79)
                                {
                                    vR[i] += 1;
                                }
                                else
                                {
                                    vR[i] += 1;
                                }
                            }
                            else
                            {
                                if (input[i + offset3] == 77)
                                {
                                    vR[i] += 1;
                                }
                                else
                                {
                                    vR[i] += 1;
                                }
                            }
                        }
                        else
                        {
                            if (input[i + offset3] > 73)
                            {
                                if (input[i + offset3] == 75)
                                {
                                    vR[i] += 1;
                                }
                                else
                                {
                                    vR[i] += 1;
                                }
                            }
                            else
                            {
                                if (input[i + offset3] == 73)
                                {
                                    vR[i] += 1;
                                }
                                else
                                {
                                    vR[i] += 1;
                                }
                            }
                        }
                    }
                    else
                    {
                        if (input[i + offset3] > 67)
                        {
                            if (input[i + offset3] > 69)
                            {
                                if (input[i + offset3] == 71)
                                {
                                    vR[i] += 1;
                                }
                                else
                                {
                                    vR[i] += 1;
                                }
                            }
                            else
                            {
                                if (input[i + offset3] == 69)
                                {
                                    vR[i] += 1;
                                }
                                else
                                {
                                    vR[i] += 1;
                                }
                            }
                        }
                        else
                        {
                            if (input[i + offset3] > 65)
                            {
                                if (input[i + offset3] == 67)
                                {
                                    vR[i] += 1;
                                }
                                else
                                {
                                    vR[i] += 1;
                                }
                            }
                            else
                            {
                                if (input[i + offset3] == 65)
                                {
                                    vR[i] += 1;
                                }
                                else
                                {
                                    vR[i] += 1;
                                }
                            }
                        }
                    }
                }
            }
        }
        else
        {
            if (input[i + offset3] > 31)
            {
                if (input[i + offset3] > 47)
                {
                    if (input[i + offset3] > 55)
                    {
                        if (input[i + offset3] > 59)
                        {
                            if (input[i + offset3] > 61)
                            {
                                if (input[i + offset3] == 63)
                                {
                                    vR[i] += 1;
                                }
                                else
                                {
                                    vR[i] += 1;
                                }
                            }
                            else
                            {
                                if (input[i + offset3] == 61)
                                {
                                    vR[i] += 1;
                                }
                                else
                                {
                                    vR[i] += 1;
                                }
                            }
                        }
                        else
                        {
                            if (input[i + offset3] > 57)
                            {
                                if (input[i + offset3] == 59)
                                {
                                    vR[i] += 1;
                                }
                                else
                                {
                                    vR[i] += 1;
                                }
                            }
                            else
                            {
                                if (input[i + offset3] == 57)
                                {
                                    vR[i] += 1;
                                }
                                else
                                {
                                    vR[i] += 1;
                                }
                            }
                        }
                    }
                    else
                    {
                        if (input[i + offset3] > 51)
                        {
                            if (input[i + offset3] > 53)
                            {
                                if (input[i + offset3] == 55)
                                {
                                    vR[i] += 1;
                                }
                                else
                                {
                                    vR[i] += 1;
                                }
                            }
                            else
                            {
                                if (input[i + offset3] == 53)
                                {
                                    vR[i] += 1;
                                }
                                else
                                {
                                    vR[i] += 1;
                                }
                            }
                        }
                        else
                        {
                            if (input[i + offset3] > 49)
                            {
                                if (input[i + offset3] == 51)
                                {
                                    vR[i] += 1;
                                }
                                else
                                {
                                    vR[i] += 1;
                                }
                            }
                            else
                            {
                                if (input[i + offset3] == 49)
                                {
                                    vR[i] += 1;
                                }
                                else
                                {
                                    vR[i] += 1;
                                }
                            }
                        }
                    }
                }
                else
                {
                    if (input[i + offset3] > 39)
                    {
                        if (input[i + offset3] > 43)
                        {
                            if (input[i + offset3] > 45)
                            {
                                if (input[i + offset3] == 47)
                                {
                                    vR[i] += 1;
                                }
                                else
                                {
                                    vR[i] += 1;
                                }
                            }
                            else
                            {
                                if (input[i + offset3] == 45)
                                {
                                    vR[i] += 1;
                                }
                                else
                                {
                                    vR[i] += 1;
                                }
                            }
                        }
                        else
                        {
                            if (input[i + offset3] > 41)
                            {
                                if (input[i + offset3] == 43)
                                {
                                    vR[i] += 1;
                                }
                                else
                                {
                                    vR[i] += 1;
                                }
                            }
                            else
                            {
                                if (input[i + offset3] == 41)
                                {
                                    vR[i] += 1;
                                }
                                else
                                {
                                    vR[i] += 1;
                                }
                            }
                        }
                    }
                    else
                    {
                        if (input[i + offset3] > 35)
                        {
                            if (input[i + offset3] > 37)
                            {
                                if (input[i + offset3] == 39)
                                {
                                    vR[i] += 1;
                                }
                                else
                                {
                                    vR[i] += 1;
                                }
                            }
                            else
                            {
                                if (input[i + offset3] == 37)
                                {
                                    vR[i] += 1;
                                }
                                else
                                {
                                    vR[i] += 1;
                                }
                            }
                        }
                        else
                        {
                            if (input[i + offset3] > 33)
                            {
                                if (input[i + offset3] == 35)
                                {
                                    vR[i] += 1;
                                }
                                else
                                {
                                    vR[i] += 1;
                                }
                            }
                            else
                            {
                                if (input[i + offset3] == 33)
                                {
                                    vR[i] += 1;
                                }
                                else
                                {
                                    vR[i] += 1;
                                }
                            }
                        }
                    }
                }
            }
            else
            {
                if (input[i + offset3] > 15)
                {
                    if (input[i + offset3] > 23)
                    {
                        if (input[i + offset3] > 27)
                        {
                            if (input[i + offset3] > 29)
                            {
                                if (input[i + offset3] == 31)
                                {
                                    vR[i] += 1;
                                }
                                else
                                {
                                    vR[i] += 1;
                                }
                            }
                            else
                            {
                                if (input[i + offset3] == 29)
                                {
                                    vR[i] += 1;
                                }
                                else
                                {
                                    vR[i] += 1;
                                }
                            }
                        }
                        else
                        {
                            if (input[i + offset3] > 25)
                            {
                                if (input[i + offset3] == 27)
                                {
                                    vR[i] += 1;
                                }
                                else
                                {
                                    vR[i] += 1;
                                }
                            }
                            else
                            {
                                if (input[i + offset3] == 25)
                                {
                                    vR[i] += 1;
                                }
                                else
                                {
                                    vR[i] += 1;
                                }
                            }
                        }
                    }
                    else
                    {
                        if (input[i + offset3] > 19)
                        {
                            if (input[i + offset3] > 21)
                            {
                                if (input[i + offset3] == 23)
                                {
                                    vR[i] += 1;
                                }
                                else
                                {
                                    vR[i] += 1;
                                }
                            }
                            else
                            {
                                if (input[i + offset3] == 21)
                                {
                                    vR[i] += 1;
                                }
                                else
                                {
                                    vR[i] += 1;
                                }
                            }
                        }
                        else
                        {
                            if (input[i + offset3] > 17)
                            {
                                if (input[i + offset3] == 19)
                                {
                                    vR[i] += 1;
                                }
                                else
                                {
                                    vR[i] += 1;
                                }
                            }
                            else
                            {
                                if (input[i + offset3] == 17)
                                {
                                    vR[i] += 1;
                                }
                                else
                                {
                                    vR[i] += 1;
                                }
                            }
                        }
                    }
                }
                else
                {
                    if (input[i + offset3] > 7)
                    {
                        if (input[i + offset3] > 11)
                        {
                            if (input[i + offset3] > 13)
                            {
                                if (input[i + offset3] == 15)
                                {
                                    vR[i] += 1;
                                }
                                else
                                {
                                    vR[i] += 1;
                                }
                            }
                            else
                            {
                                if (input[i + offset3] == 13)
                                {
                                    vR[i] += 1;
                                }
                                else
                                {
                                    vR[i] += 1;
                                }
                            }
                        }
                        else
                        {
                            if (input[i + offset3] > 9)
                            {
                                if (input[i + offset3] == 11)
                                {
                                    vR[i] += 1;
                                }
                                else
                                {
                                    vR[i] += 1;
                                }
                            }
                            else
                            {
                                if (input[i + offset3] == 9)
                                {
                                    vR[i] += 1;
                                }
                                else
                                {
                                    vR[i] += 1;
                                }
                            }
                        }
                    }
                    else
                    {
                        if (input[i + offset3] > 3)
                        {
                            if (input[i + offset3] > 5)
                            {
                                if (input[i + offset3] == 7)
                                {
                                    vR[i] += 1;
                                }
                                else
                                {
                                    vR[i] += 1;
                                }
                            }
                            else
                            {
                                if (input[i + offset3] == 5)
                                {
                                    vR[i] += 1;
                                }
                                else
                                {
                                    vR[i] += 1;
                                }
                            }
                        }
                        else
                        {
                            if (input[i + offset3] > 1)
                            {
                                if (input[i + offset3] == 3)
                                {
                                    vR[i] += 1;
                                }
                                else
                                {
                                    vR[i] += 1;
                                }
                            }
                            else
                            {
                                if (input[i + offset3] == 1)
                                {
                                    vR[i] += 1;
                                }
                                else
                                {
                                    vR[i] += 1;
                                }
                            }
                        }
                    }
                }
            }
        }
    }
}

#endif

//*********

// CALC
#if defined(_RF_1CALC_1LV_1TREE_1INPUT)
#define _MOD 2
#define _1_INPUT

#define EXP_NAME "_RF_1CALC_1LV_1TREE_1INPUT"
#define EXP_OUTPUT_FILE "_RF_1CALC_1LV_1TREE_1INPUT.txt"
#define EXP_RESULT_FILE "_RF_1CALC_1LV_1TREE_1INPUT.csv"

// RF_with_calc
__global__ void RF_kernel(float *input, const int n, float *vR)
{
    int id = blockIdx.x * blockDim.x + threadIdx.x;

    if (id < n)
    {
        int rt0_00 = (input[id] > 1); // root t0_00
        int leaf = rt0_00 * (2 + (input[id] > 2));
        leaf += (1 - rt0_00) * (input[id] > 0); // 0, 1, 2, 3

        vR[id] = leaf;
    }
}

#endif

#if defined(_RF_1CALC_1LV_2TREE_1INPUT)
#define _MOD 2
#define _1_INPUT
#define _2TREE

#define EXP_NAME "_RF_1CALC_1LV_2TREE_1INPUT"
#define EXP_OUTPUT_FILE "_RF_1CALC_1LV_2TREE_1INPUT.txt"
#define EXP_RESULT_FILE "_RF_1CALC_1LV_2TREE_1INPUT.csv"

// RF_with_calc
__global__ void RF_kernel(float *input, const int n, const int offset0, const int offset1, float *vR)
{
    int id = blockIdx.x * blockDim.x + threadIdx.x;

    if (id < n)
    {
        int rt0_0_00 = (input[id + offset0] > 1); // root t0_00
        int r0_0_00 = rt0_0_00 * (2 + (input[id + offset0] > 2));
        r0_0_00 += (1 - rt0_0_00) * (input[id + offset0] > 0); // 0, 1, 2, 3

        int rt1_0_00 = (input[id + offset1] > 1); // root t0_00
        int r1_0_00 = rt1_0_00 * (2 + (input[id + offset1] > 2));
        r1_0_00 += (1 - rt1_0_00) * (input[id + offset1] > 0); // 0, 1, 2, 3

        vR[id] = r0_0_00 + (r1_0_00 == r0_0_00);
    }
}

#endif

#if defined(_RF_1CALC_1LV_3TREE_1INPUT)
#define _MOD 2
#define _1_INPUT
#define _3TREE

#define EXP_NAME "_RF_1CALC_1LV_3TREE_1INPUT"
#define EXP_OUTPUT_FILE "_RF_1CALC_1LV_3TREE_1INPUT.txt"
#define EXP_RESULT_FILE "_RF_1CALC_1LV_3TREE_1INPUT.csv"

// RF_with_calc
__global__ void RF_kernel(float *input, const int n, const int offset0, const int offset1, const int offset2, float *vR)
{
    int id = blockIdx.x * blockDim.x + threadIdx.x;

    if (id < n)
    {
        int rt0_0_00 = (input[id + offset0] > 1); // root t0_00
        int r0_0_00 = rt0_0_00 * (2 + (input[id + offset0] > 2));
        r0_0_00 += (1 - rt0_0_00) * (input[id + offset0] > 0); // 0, 1, 2, 3

        int rt1_0_00 = (input[id + offset1] > 1); // root t0_00
        int r1_0_00 = rt1_0_00 * (2 + (input[id] > 2));
        r1_0_00 += (1 - rt1_0_00) * (input[id] > 0); // 0, 1, 2, 3

        int rt2_0_00 = (input[id + offset2] > 1); // root t0_00
        int r2_0_00 = rt2_0_00 * (2 + (input[id + offset2] > 2));
        r2_0_00 += (1 - rt2_0_00) * (input[id + offset2] > 0); // 0, 1, 2, 3

        vR[id] = r0_0_00 + (r1_0_00 == r0_0_00) + (r2_0_00 == r0_0_00);
    }
}

#endif

#if defined(_RF_1CALC_1LV_4TREE_1INPUT)
#define _MOD 2
#define _1_INPUT
#define _4TREE

#define EXP_NAME "_RF_1CALC_1LV_4TREE_1INPUT"
#define EXP_OUTPUT_FILE "_RF_1CALC_1LV_4TREE_1INPUT.txt"
#define EXP_RESULT_FILE "_RF_1CALC_1LV_4TREE_1INPUT.csv"

// RF_with_calc
__global__ void RF_kernel(float *input, const int n, const int offset0, const int offset1, const int offset2, const int offset3, float *vR)
{
    int id = blockIdx.x * blockDim.x + threadIdx.x;

    if (id < n)
    {
        int rt0_0_00 = (input[id + offset0] > 1); // root t0_00
        int r0_0_00 = rt0_0_00 * (2 + (input[id + offset0] > 2));
        r0_0_00 += (1 - rt0_0_00) * (input[id + offset0] > 0); // 0, 1, 2, 3

        int rt1_0_00 = (input[id + offset1] > 1); // root t0_00
        int r1_0_00 = rt1_0_00 * (2 + (input[id] > 2));
        r1_0_00 += (1 - rt1_0_00) * (input[id] > 0); // 0, 1, 2, 3

        int rt2_0_00 = (input[id + offset2] > 1); // root t0_00
        int r2_0_00 = rt2_0_00 * (2 + (input[id + offset2] > 2));
        r2_0_00 += (1 - rt2_0_00) * (input[id + offset2] > 0); // 0, 1, 2, 3

        int rt3_0_00 = (input[id + offset3] > 1); // root t0_00
        int r3_0_00 = rt3_0_00 * (2 + (input[id + offset3] > 2));
        r3_0_00 += (1 - rt3_0_00) * (input[id + offset3] > 0); // 0, 1, 2, 3

        vR[id] = r0_0_00 + (r1_0_00 == r0_0_00) + (r2_0_00 == r0_0_00) + (r3_0_00 == r0_0_00);
    }
}

#endif

#if defined(_RF_2CALC_2LV_1TREE_1INPUT)
#define _MOD 3
#define _1_INPUT

#define EXP_NAME "_RF_2CALC_2LV_1TREE_1INPUT"
#define EXP_OUTPUT_FILE "_RF_2CALC_2LV_1TREE_1INPUT.txt"
#define EXP_RESULT_FILE "_RF_2CALC_2LV_1TREE_1INPUT.csv"

// RF_with_calc
__global__ void RF_kernel(float *input, const int n, float *vR)
{
    int id = blockIdx.x * blockDim.x + threadIdx.x;

    if (id < n)
    {
        int rt0_00 = (input[id] > 1); // root t0_00
        int leaf = rt0_00 * (2 + (input[id] > 2));
        leaf += (1 - rt0_00) * (input[id] > 0); // 0, 1, 2, 3

        vR[id] = leaf;
    }
}

#endif

#if defined(_RF_3CALC_2LV_1TREE_1INPUT)
#define _MOD 4
#define _1_INPUT

#define EXP_NAME "_RF_3CALC_2LV_1TREE_1INPUT"
#define EXP_OUTPUT_FILE "_RF_3CALC_2LV_1TREE_1INPUT.txt"
#define EXP_RESULT_FILE "_RF_3CALC_2LV_1TREE_1INPUT.csv"

// RF_with_calc
__global__ void RF_kernel(float *input, const int n, float *vR)
{
    int id = blockIdx.x * blockDim.x + threadIdx.x;

    if (id < n)
    {
        int rt0_00 = (input[id] > 1); // root t0_00
        int leaf = rt0_00 * (2 + (input[id] > 2));
        leaf += (1 - rt0_00) * (input[id] > 0); // 0, 1, 2, 3

        vR[id] = leaf;
    }
}

#endif

#if defined(_RF_4CALC_3LV_1TREE_1INPUT)
#define _MOD 5
#define _1_INPUT

#define EXP_NAME "_RF_4CALC_3LV_1TREE_1INPUT"
#define EXP_OUTPUT_FILE "_RF_4CALC_3LV_1TREE_1INPUT.txt"
#define EXP_RESULT_FILE "_RF_4CALC_3LV_1TREE_1INPUT.csv"

// RF_with_calc
__global__ void RF_kernel(float *input, const int n, float *vR)
{
    int id = blockIdx.x * blockDim.x + threadIdx.x;

    if (id < n)
    {
        int rt0_00 = (input[id] > 1); // root t0_00
        int t0_00 = rt0_00 * (2 + (input[id] > 2));
        t0_00 += (1 - rt0_00) * (input[id] > 0); // 0, 1, 2, 3

        int rt0_01 = (input[id] > 5); // root t0_01
        int t0_01 = rt0_01 * (2 + (input[id] > 6));
        t0_01 += (1 - rt0_01) * (input[id] > 4); // 0, 1, 2, 3

        int rt1_00 = (input[id] > 3); // root t0_00
        int leaf = rt1_00 * (4 + t0_01);
        leaf += (1 - rt1_00) * t0_00; // 0, ... , 7

        vR[id] = leaf;
    }
}

#endif

#if defined(_RF_7CALC_3LV_1TREE_1INPUT)
#define _MOD 8
#define _1_INPUT

#define EXP_NAME "_RF_7CALC_3LV_1TREE_1INPUT"
#define EXP_OUTPUT_FILE "_RF_7CALC_3LV_1TREE_1INPUT.txt"
#define EXP_RESULT_FILE "_RF_7CALC_3LV_1TREE_1INPUT.csv"

// RF_with_calc
__global__ void RF_kernel(float *input, const int n, float *vR)
{
    int id = blockIdx.x * blockDim.x + threadIdx.x;

    if (id < n)
    {
        int rt0_00 = (input[id] > 1); // root t0_00
        int t0_00 = rt0_00 * (2 + (input[id] > 2));
        t0_00 += (1 - rt0_00) * (input[id] > 0); // 0, 1, 2, 3

        int rt0_01 = (input[id] > 5); // root t0_01
        int t0_01 = rt0_01 * (2 + (input[id] > 6));
        t0_01 += (1 - rt0_01) * (input[id] > 4); // 0, 1, 2, 3

        int rt1_00 = (input[id] > 3); // root t1_00
        int leaf = rt1_00 * (4 + t0_01);
        leaf += (1 - rt1_00) * t0_00; // 0, ... , 7

        vR[id] = leaf;
    }
}

#endif

#if defined(_RF_7CALC_3LV_2TREE_1INPUT)
#define _MOD 8
#define _1_INPUT
#define _2TREE

#define EXP_NAME "_RF_7CALC_3LV_2TREE_1INPUT"
#define EXP_OUTPUT_FILE "_RF_7CALC_3LV_2TREE_1INPUT.txt"
#define EXP_RESULT_FILE "_RF_7CALC_3LV_2TREE_1INPUT.csv"

// RF_with_calc
__global__ void RF_kernel(float *input, const int n, const int offset0, const int offset1, float *vR)
{
    int id = blockIdx.x * blockDim.x + threadIdx.x;

    if (id < n)
    {
        int rt0_0_0 = (input[id + offset0] > 1);
        int t0_0_0 = rt0_0_0 * (2 + (input[id + offset0] > 2));
        t0_0_0 += (1 - rt0_0_0) * (input[id + offset0] > 0);

        int rt0_0_1 = (input[id + offset0] > 5);
        int t0_0_1 = rt0_0_1 * (2 + (input[id + offset0] > 6));
        t0_0_1 += (1 - rt0_0_1) * (input[id + offset0] > 4);

        int rt0_1_0 = (input[id + offset0] > 3);
        int t0_1_0 = rt0_1_0 * (4 + t0_0_1);
        t0_1_0 += (1 - rt0_1_0) * t0_0_0;

        int rt1_0_0 = (input[id + offset1] > 1);
        int t1_0_0 = rt1_0_0 * (2 + (input[id + offset1] > 2));
        t1_0_0 += (1 - rt1_0_0) * (input[id + offset1] > 0);

        int rt1_0_1 = (input[id + offset1] > 5);
        int t1_0_1 = rt1_0_1 * (2 + (input[id + offset1] > 6));
        t1_0_1 += (1 - rt1_0_1) * (input[id + offset1] > 4);

        int rt1_1_0 = (input[id + offset1] > 3);
        int t1_1_0 = rt1_1_0 * (4 + t1_0_1);
        t1_1_0 += (1 - rt1_1_0) * t1_0_0;

        vR[id] = t0_1_0 + (t1_1_0 == t0_1_0);
    }
}

#endif

#if defined(_RF_7CALC_3LV_3TREE_1INPUT)
#define _MOD 8
#define _1_INPUT
#define _3TREE

#define EXP_NAME "_RF_7CALC_3LV_T3REE_1INPUT"
#define EXP_OUTPUT_FILE "_RF_7CALC_3LV_3TREE_1INPUT.txt"
#define EXP_RESULT_FILE "_RF_7CALC_3LV_3TREE_1INPUT.csv"

// RF_with_calc
__global__ void RF_kernel(float *input, const int n, const int offset0, const int offset1, const int offset2, float *vR)
{
    int id = blockIdx.x * blockDim.x + threadIdx.x;

    if (id < n)
    {

        int rt0_0_0 = (input[id + offset0] > 1);
        int t0_0_0 = rt0_0_0 * (2 + (input[id + offset0] > 2));
        t0_0_0 += (1 - rt0_0_0) * (input[id + offset0] > 0);

        int rt0_0_1 = (input[id + offset0] > 5);
        int t0_0_1 = rt0_0_1 * (2 + (input[id + offset0] > 6));
        t0_0_1 += (1 - rt0_0_1) * (input[id + offset0] > 4);

        int rt0_1_0 = (input[id + offset0] > 3);
        int t0_1_0 = rt0_1_0 * (4 + t0_0_1);
        t0_1_0 += (1 - rt0_1_0) * t0_0_0;

        int rt1_0_0 = (input[id + offset1] > 1);
        int t1_0_0 = rt1_0_0 * (2 + (input[id + offset1] > 2));
        t1_0_0 += (1 - rt1_0_0) * (input[id + offset1] > 0);

        int rt1_0_1 = (input[id + offset1] > 5);
        int t1_0_1 = rt1_0_1 * (2 + (input[id + offset1] > 6));
        t1_0_1 += (1 - rt1_0_1) * (input[id + offset1] > 4);

        int rt1_1_0 = (input[id + offset1] > 3);
        int t1_1_0 = rt1_1_0 * (4 + t1_0_1);
        t1_1_0 += (1 - rt1_1_0) * t1_0_0;

        int rt2_0_0 = (input[id + offset2] > 1);
        int t2_0_0 = rt2_0_0 * (2 + (input[id + offset2] > 2));
        t2_0_0 += (1 - rt2_0_0) * (input[id + offset2] > 0);
        int rt2_0_1 = (input[id + offset2] > 5);
        int t2_0_1 = rt2_0_1 * (2 + (input[id + offset2] > 6));
        t2_0_1 += (1 - rt2_0_1) * (input[id + offset2] > 4);
        int rt2_1_0 = (input[id + offset2] > 3);
        int t2_1_0 = rt2_1_0 * (4 + t2_0_1);
        t2_1_0 += (1 - rt2_1_0) * t2_0_0;

        vR[id] = t2_1_0 + (t1_1_0 == t2_1_0) + (t0_1_0 == t2_1_0);
    }
}

#endif

#if defined(_RF_7CALC_3LV_4TREE_1INPUT)
#define _MOD 8
#define _1_INPUT
#define _4TREE

#define EXP_NAME "_RF_7CALC_3LV_4TREE_1INPUT"
#define EXP_OUTPUT_FILE "_RF_7CALC_3LV_4TREE_1INPUT.txt"
#define EXP_RESULT_FILE "_RF_7CALC_3LV_4TREE_1INPUT.csv"

// RF_with_calc
__global__ void RF_kernel(float *input, const int n, const int offset0, const int offset1, const int offset2, const int offset3, float *vR)
{
    int id = blockIdx.x * blockDim.x + threadIdx.x;

    if (id < n)
    {

        int rt0_0_0 = (input[id + offset0] > 1);
        int t0_0_0 = rt0_0_0 * (2 + (input[id + offset0] > 2));
        t0_0_0 += (1 - rt0_0_0) * (input[id + offset0] > 0);
        int rt0_0_1 = (input[id + offset0] > 5);
        int t0_0_1 = rt0_0_1 * (2 + (input[id + offset0] > 6));
        t0_0_1 += (1 - rt0_0_1) * (input[id + offset0] > 4);
        int rt0_1_0 = (input[id + offset0] > 3);
        int t0_1_0 = rt0_1_0 * (4 + t0_0_1);
        t0_1_0 += (1 - rt0_1_0) * t0_0_0;
        int rt1_0_0 = (input[id + offset1] > 1);
        int t1_0_0 = rt1_0_0 * (2 + (input[id + offset1] > 2));
        t1_0_0 += (1 - rt1_0_0) * (input[id + offset1] > 0);
        int rt1_0_1 = (input[id + offset1] > 5);
        int t1_0_1 = rt1_0_1 * (2 + (input[id + offset1] > 6));
        t1_0_1 += (1 - rt1_0_1) * (input[id + offset1] > 4);
        int rt1_1_0 = (input[id + offset1] > 3);
        int t1_1_0 = rt1_1_0 * (4 + t1_0_1);
        t1_1_0 += (1 - rt1_1_0) * t1_0_0;
        int rt2_0_0 = (input[id + offset2] > 1);
        int t2_0_0 = rt2_0_0 * (2 + (input[id + offset2] > 2));
        t2_0_0 += (1 - rt2_0_0) * (input[id + offset2] > 0);
        int rt2_0_1 = (input[id + offset2] > 5);
        int t2_0_1 = rt2_0_1 * (2 + (input[id + offset2] > 6));
        t2_0_1 += (1 - rt2_0_1) * (input[id + offset2] > 4);
        int rt2_1_0 = (input[id + offset2] > 3);
        int t2_1_0 = rt2_1_0 * (4 + t2_0_1);
        t2_1_0 += (1 - rt2_1_0) * t2_0_0;
        int rt3_0_0 = (input[id + offset3] > 1);
        int t3_0_0 = rt3_0_0 * (2 + (input[id + offset3] > 2));
        t3_0_0 += (1 - rt3_0_0) * (input[id + offset3] > 0);
        int rt3_0_1 = (input[id + offset3] > 5);
        int t3_0_1 = rt3_0_1 * (2 + (input[id + offset3] > 6));
        t3_0_1 += (1 - rt3_0_1) * (input[id + offset3] > 4);
        int rt3_1_0 = (input[id + offset3] > 3);
        int t3_1_0 = rt3_1_0 * (4 + t3_0_1);
        t3_1_0 += (1 - rt3_1_0) * t3_0_0;

        vR[id] = t0_1_0 + (t0_1_0 == t1_1_0) + (t0_1_0 == t2_1_0) + (t0_1_0 == t3_1_0);
    }
}

#endif

#if defined(_RF_15CALC_4LV_1TREE_1INPUT)
#define _MOD 16
#define _1_INPUT

#define EXP_NAME "_RF_15CALC_4LV_1TREE_1INPUT"
#define EXP_OUTPUT_FILE "_RF_15CALC_4LV_1TREE_1INPUT.txt"
#define EXP_RESULT_FILE "_RF_15CALC_4LV_1TREE_1INPUT.csv"

// RF_with_calc
__global__ void RF_kernel(float *input, const int n, float *vR)
{
    int id = blockIdx.x * blockDim.x + threadIdx.x;

    if (id < n)
    {
        int rt0_00 = (input[id] > 1); // root t0_00
        int t0_00 = rt0_00 * (2 + (input[id] > 2));
        t0_00 += (1 - rt0_00) * (input[id] > 0); // 0, 1, 2, 3

        int rt0_01 = (input[id] > 5); // root t0_01
        int t0_01 = rt0_01 * (2 + (input[id] > 6));
        t0_01 += (1 - rt0_01) * (input[id] > 4); // 0, 1, 2, 3

        int rt0_2 = (input[id] > 9); // root t0_2
        int t0_02 = rt0_2 * (2 + (input[id] > 10));
        t0_02 += (1 - rt0_2) * (input[id] > 8); // 0, 1, 2, 3

        int rt0_3 = (input[id] > 13); // root t0_3
        int t0_03 = rt0_3 * (2 + (input[id] > 14));
        t0_03 += (1 - rt0_3) * (input[id] > 12); // 0, 1, 2, 3

        int rt1_00 = (input[id] > 3); // root t1_00
        int t1_00 = rt1_00 * (4 + t0_01);
        t1_00 += (1 - rt1_00) * t0_00; // 0, ... , 7

        int rt1_01 = (input[id] > 11); // root t1_02
        int t1_01 = rt1_01 * (4 + t0_03);
        t1_01 += (1 - rt1_01) * t0_02; // 0, ... , 7

        int rt2_00 = (input[id] > 7); // root t2_00
        int t2_00 = rt2_00 * (8 + t1_01);
        t2_00 += (1 - rt2_00) * t1_00; // 0, ... , 15

        vR[id] = t2_00;
    }
}

#endif

#if defined(_RF_15CALC_4LV_2TREE_1INPUT)
#define _MOD 16
#define _1_INPUT
#define _2TREE

#define EXP_NAME "_RF_15CALC_4LV_2TREE_1INPUT"
#define EXP_OUTPUT_FILE "_RF_15CALC_4LV_2TREE_1INPUT.txt"
#define EXP_RESULT_FILE "_RF_15CALC_4LV_2TREE_1INPUT.csv"

// RF_with_calc
__global__ void RF_kernel(float *input, const int n, const int offset0, const int offset1, float *vR)
{
    int id = blockIdx.x * blockDim.x + threadIdx.x;

    if (id < n)
    {
        int rt0_0_0 = (input[id + offset0] > 1);
        int t0_0_0 = rt0_0_0 * (2 + (input[id + offset0] > 2));
        t0_0_0 += (1 - rt0_0_0) * (input[id + offset0] > 0);
        int rt0_0_1 = (input[id + offset0] > 5);
        int t0_0_1 = rt0_0_1 * (2 + (input[id + offset0] > 6));
        t0_0_1 += (1 - rt0_0_1) * (input[id + offset0] > 4);
        int rt0_0_2 = (input[id + offset0] > 9);
        int t0_0_2 = rt0_0_2 * (2 + (input[id + offset0] > 10));
        t0_0_2 += (1 - rt0_0_2) * (input[id + offset0] > 8);
        int rt0_0_3 = (input[id + offset0] > 13);
        int t0_0_3 = rt0_0_3 * (2 + (input[id + offset0] > 14));
        t0_0_3 += (1 - rt0_0_3) * (input[id + offset0] > 12);
        int rt0_1_0 = (input[id + offset0] > 3);
        int t0_1_0 = rt0_1_0 * (4 + t0_0_1);
        t0_1_0 += (1 - rt0_1_0) * t0_0_0;
        int rt0_1_1 = (input[id + offset0] > 11);
        int t0_1_1 = rt0_1_1 * (4 + t0_0_3);
        t0_1_1 += (1 - rt0_1_1) * t0_0_2;
        int rt0_2_0 = (input[id + offset0] > 7);
        int t0_2_0 = rt0_2_0 * (8 + t0_1_1);
        t0_2_0 += (1 - rt0_2_0) * t0_1_0;
        int rt1_0_0 = (input[id + offset1] > 1);
        int t1_0_0 = rt1_0_0 * (2 + (input[id + offset1] > 2));
        t1_0_0 += (1 - rt1_0_0) * (input[id + offset1] > 0);
        int rt1_0_1 = (input[id + offset1] > 5);
        int t1_0_1 = rt1_0_1 * (2 + (input[id + offset1] > 6));
        t1_0_1 += (1 - rt1_0_1) * (input[id + offset1] > 4);
        int rt1_0_2 = (input[id + offset1] > 9);
        int t1_0_2 = rt1_0_2 * (2 + (input[id + offset1] > 10));
        t1_0_2 += (1 - rt1_0_2) * (input[id + offset1] > 8);
        int rt1_0_3 = (input[id + offset1] > 13);
        int t1_0_3 = rt1_0_3 * (2 + (input[id + offset1] > 14));
        t1_0_3 += (1 - rt1_0_3) * (input[id + offset1] > 12);
        int rt1_1_0 = (input[id + offset1] > 3);
        int t1_1_0 = rt1_1_0 * (4 + t1_0_1);
        t1_1_0 += (1 - rt1_1_0) * t1_0_0;
        int rt1_1_1 = (input[id + offset1] > 11);
        int t1_1_1 = rt1_1_1 * (4 + t1_0_3);
        t1_1_1 += (1 - rt1_1_1) * t1_0_2;
        int rt1_2_0 = (input[id + offset1] > 7);
        int t1_2_0 = rt1_2_0 * (8 + t1_1_1);
        t1_2_0 += (1 - rt1_2_0) * t1_1_0;

        vR[id] = t0_2_0 + (t0_2_0 == t1_2_0);
    }
}

#endif

#if defined(_RF_15CALC_4LV_3TREE_1INPUT)
#define _MOD 16
#define _1_INPUT
#define _3TREE

#define EXP_NAME "_RF_15CALC_4LV_3TREE_1INPUT"
#define EXP_OUTPUT_FILE "_RF_15CALC_4LV_3TREE_1INPUT.txt"
#define EXP_RESULT_FILE "_RF_15CALC_4LV_3TREE_1INPUT.csv"

// RF_with_calc
__global__ void RF_kernel(float *input, const int n, const int offset0, const int offset1, const int offset2, float *vR)
{
    int id = blockIdx.x * blockDim.x + threadIdx.x;

    if (id < n)
    {
        int rt0_0_0 = (input[id + offset0] > 1);
        int t0_0_0 = rt0_0_0 * (2 + (input[id + offset0] > 2));
        t0_0_0 += (1 - rt0_0_0) * (input[id + offset0] > 0);
        int rt0_0_1 = (input[id + offset0] > 5);
        int t0_0_1 = rt0_0_1 * (2 + (input[id + offset0] > 6));
        t0_0_1 += (1 - rt0_0_1) * (input[id + offset0] > 4);
        int rt0_0_2 = (input[id + offset0] > 9);
        int t0_0_2 = rt0_0_2 * (2 + (input[id + offset0] > 10));
        t0_0_2 += (1 - rt0_0_2) * (input[id + offset0] > 8);
        int rt0_0_3 = (input[id + offset0] > 13);
        int t0_0_3 = rt0_0_3 * (2 + (input[id + offset0] > 14));
        t0_0_3 += (1 - rt0_0_3) * (input[id + offset0] > 12);
        int rt0_1_0 = (input[id + offset0] > 3);
        int t0_1_0 = rt0_1_0 * (4 + t0_0_1);
        t0_1_0 += (1 - rt0_1_0) * t0_0_0;
        int rt0_1_1 = (input[id + offset0] > 11);
        int t0_1_1 = rt0_1_1 * (4 + t0_0_3);
        t0_1_1 += (1 - rt0_1_1) * t0_0_2;
        int rt0_2_0 = (input[id + offset0] > 7);
        int t0_2_0 = rt0_2_0 * (8 + t0_1_1);
        t0_2_0 += (1 - rt0_2_0) * t0_1_0;
        int rt1_0_0 = (input[id + offset1] > 1);
        int t1_0_0 = rt1_0_0 * (2 + (input[id + offset1] > 2));
        t1_0_0 += (1 - rt1_0_0) * (input[id + offset1] > 0);
        int rt1_0_1 = (input[id + offset1] > 5);
        int t1_0_1 = rt1_0_1 * (2 + (input[id + offset1] > 6));
        t1_0_1 += (1 - rt1_0_1) * (input[id + offset1] > 4);
        int rt1_0_2 = (input[id + offset1] > 9);
        int t1_0_2 = rt1_0_2 * (2 + (input[id + offset1] > 10));
        t1_0_2 += (1 - rt1_0_2) * (input[id + offset1] > 8);
        int rt1_0_3 = (input[id + offset1] > 13);
        int t1_0_3 = rt1_0_3 * (2 + (input[id + offset1] > 14));
        t1_0_3 += (1 - rt1_0_3) * (input[id + offset1] > 12);
        int rt1_1_0 = (input[id + offset1] > 3);
        int t1_1_0 = rt1_1_0 * (4 + t1_0_1);
        t1_1_0 += (1 - rt1_1_0) * t1_0_0;
        int rt1_1_1 = (input[id + offset1] > 11);
        int t1_1_1 = rt1_1_1 * (4 + t1_0_3);
        t1_1_1 += (1 - rt1_1_1) * t1_0_2;
        int rt1_2_0 = (input[id + offset1] > 7);
        int t1_2_0 = rt1_2_0 * (8 + t1_1_1);
        t1_2_0 += (1 - rt1_2_0) * t1_1_0;
        int rt2_0_0 = (input[id + offset2] > 1);
        int t2_0_0 = rt2_0_0 * (2 + (input[id + offset2] > 2));
        t2_0_0 += (1 - rt2_0_0) * (input[id + offset2] > 0);
        int rt2_0_1 = (input[id + offset2] > 5);
        int t2_0_1 = rt2_0_1 * (2 + (input[id + offset2] > 6));
        t2_0_1 += (1 - rt2_0_1) * (input[id + offset2] > 4);
        int rt2_0_2 = (input[id + offset2] > 9);
        int t2_0_2 = rt2_0_2 * (2 + (input[id + offset2] > 10));
        t2_0_2 += (1 - rt2_0_2) * (input[id + offset2] > 8);
        int rt2_0_3 = (input[id + offset2] > 13);
        int t2_0_3 = rt2_0_3 * (2 + (input[id + offset2] > 14));
        t2_0_3 += (1 - rt2_0_3) * (input[id + offset2] > 12);
        int rt2_1_0 = (input[id + offset2] > 3);
        int t2_1_0 = rt2_1_0 * (4 + t2_0_1);
        t2_1_0 += (1 - rt2_1_0) * t2_0_0;
        int rt2_1_1 = (input[id + offset2] > 11);
        int t2_1_1 = rt2_1_1 * (4 + t2_0_3);
        t2_1_1 += (1 - rt2_1_1) * t2_0_2;
        int rt2_2_0 = (input[id + offset2] > 7);
        int t2_2_0 = rt2_2_0 * (8 + t2_1_1);
        t2_2_0 += (1 - rt2_2_0) * t2_1_0;

        vR[id] = t0_2_0 + (t1_2_0 == t0_2_0) + (t2_2_0 == t0_2_0);
    }
}

#endif

#if defined(_RF_15CALC_4LV_4TREE_1INPUT)
#define _MOD 16
#define _1_INPUT
#define _4TREE

#define EXP_NAME "_RF_15CALC_4LV_4TREE_1INPUT"
#define EXP_OUTPUT_FILE "_RF_15CALC_4LV_4TREE_1INPUT.txt"
#define EXP_RESULT_FILE "_RF_15CALC_4LV_4TREE_1INPUT.csv"

// RF_with_calc
__global__ void RF_kernel(float *input, const int n, const int offset0, const int offset1, const int offset2, const int offset3, float *vR)
{
    int id = blockIdx.x * blockDim.x + threadIdx.x;

    if (id < n)
    {
        int rt0_0_0 = (input[id + offset0] > 1);
        int t0_0_0 = rt0_0_0 * (2 + (input[id + offset0] > 2));
        t0_0_0 += (1 - rt0_0_0) * (input[id + offset0] > 0);
        int rt0_0_1 = (input[id + offset0] > 5);
        int t0_0_1 = rt0_0_1 * (2 + (input[id + offset0] > 6));
        t0_0_1 += (1 - rt0_0_1) * (input[id + offset0] > 4);
        int rt0_0_2 = (input[id + offset0] > 9);
        int t0_0_2 = rt0_0_2 * (2 + (input[id + offset0] > 10));
        t0_0_2 += (1 - rt0_0_2) * (input[id + offset0] > 8);
        int rt0_0_3 = (input[id + offset0] > 13);
        int t0_0_3 = rt0_0_3 * (2 + (input[id + offset0] > 14));
        t0_0_3 += (1 - rt0_0_3) * (input[id + offset0] > 12);
        int rt0_1_0 = (input[id + offset0] > 3);
        int t0_1_0 = rt0_1_0 * (4 + t0_0_1);
        t0_1_0 += (1 - rt0_1_0) * t0_0_0;
        int rt0_1_1 = (input[id + offset0] > 11);
        int t0_1_1 = rt0_1_1 * (4 + t0_0_3);
        t0_1_1 += (1 - rt0_1_1) * t0_0_2;
        int rt0_2_0 = (input[id + offset0] > 7);
        int t0_2_0 = rt0_2_0 * (8 + t0_1_1);
        t0_2_0 += (1 - rt0_2_0) * t0_1_0;
        int rt1_0_0 = (input[id + offset1] > 1);
        int t1_0_0 = rt1_0_0 * (2 + (input[id + offset1] > 2));
        t1_0_0 += (1 - rt1_0_0) * (input[id + offset1] > 0);
        int rt1_0_1 = (input[id + offset1] > 5);
        int t1_0_1 = rt1_0_1 * (2 + (input[id + offset1] > 6));
        t1_0_1 += (1 - rt1_0_1) * (input[id + offset1] > 4);
        int rt1_0_2 = (input[id + offset1] > 9);
        int t1_0_2 = rt1_0_2 * (2 + (input[id + offset1] > 10));
        t1_0_2 += (1 - rt1_0_2) * (input[id + offset1] > 8);
        int rt1_0_3 = (input[id + offset1] > 13);
        int t1_0_3 = rt1_0_3 * (2 + (input[id + offset1] > 14));
        t1_0_3 += (1 - rt1_0_3) * (input[id + offset1] > 12);
        int rt1_1_0 = (input[id + offset1] > 3);
        int t1_1_0 = rt1_1_0 * (4 + t1_0_1);
        t1_1_0 += (1 - rt1_1_0) * t1_0_0;
        int rt1_1_1 = (input[id + offset1] > 11);
        int t1_1_1 = rt1_1_1 * (4 + t1_0_3);
        t1_1_1 += (1 - rt1_1_1) * t1_0_2;
        int rt1_2_0 = (input[id + offset1] > 7);
        int t1_2_0 = rt1_2_0 * (8 + t1_1_1);
        t1_2_0 += (1 - rt1_2_0) * t1_1_0;
        int rt2_0_0 = (input[id + offset2] > 1);
        int t2_0_0 = rt2_0_0 * (2 + (input[id + offset2] > 2));
        t2_0_0 += (1 - rt2_0_0) * (input[id + offset2] > 0);
        int rt2_0_1 = (input[id + offset2] > 5);
        int t2_0_1 = rt2_0_1 * (2 + (input[id + offset2] > 6));
        t2_0_1 += (1 - rt2_0_1) * (input[id + offset2] > 4);
        int rt2_0_2 = (input[id + offset2] > 9);
        int t2_0_2 = rt2_0_2 * (2 + (input[id + offset2] > 10));
        t2_0_2 += (1 - rt2_0_2) * (input[id + offset2] > 8);
        int rt2_0_3 = (input[id + offset2] > 13);
        int t2_0_3 = rt2_0_3 * (2 + (input[id + offset2] > 14));
        t2_0_3 += (1 - rt2_0_3) * (input[id + offset2] > 12);
        int rt2_1_0 = (input[id + offset2] > 3);
        int t2_1_0 = rt2_1_0 * (4 + t2_0_1);
        t2_1_0 += (1 - rt2_1_0) * t2_0_0;
        int rt2_1_1 = (input[id + offset2] > 11);
        int t2_1_1 = rt2_1_1 * (4 + t2_0_3);
        t2_1_1 += (1 - rt2_1_1) * t2_0_2;
        int rt2_2_0 = (input[id + offset2] > 7);
        int t2_2_0 = rt2_2_0 * (8 + t2_1_1);
        t2_2_0 += (1 - rt2_2_0) * t2_1_0;
        int rt3_0_0 = (input[id + offset3] > 1);
        int t3_0_0 = rt3_0_0 * (2 + (input[id + offset3] > 2));
        t3_0_0 += (1 - rt3_0_0) * (input[id + offset3] > 0);
        int rt3_0_1 = (input[id + offset3] > 5);
        int t3_0_1 = rt3_0_1 * (2 + (input[id + offset3] > 6));
        t3_0_1 += (1 - rt3_0_1) * (input[id + offset3] > 4);
        int rt3_0_2 = (input[id + offset3] > 9);
        int t3_0_2 = rt3_0_2 * (2 + (input[id + offset3] > 10));
        t3_0_2 += (1 - rt3_0_2) * (input[id + offset3] > 8);
        int rt3_0_3 = (input[id + offset3] > 13);
        int t3_0_3 = rt3_0_3 * (2 + (input[id + offset3] > 14));
        t3_0_3 += (1 - rt3_0_3) * (input[id + offset3] > 12);
        int rt3_1_0 = (input[id + offset3] > 3);
        int t3_1_0 = rt3_1_0 * (4 + t3_0_1);
        t3_1_0 += (1 - rt3_1_0) * t3_0_0;
        int rt3_1_1 = (input[id + offset3] > 11);
        int t3_1_1 = rt3_1_1 * (4 + t3_0_3);
        t3_1_1 += (1 - rt3_1_1) * t3_0_2;
        int rt3_2_0 = (input[id + offset3] > 7);
        int t3_2_0 = rt3_2_0 * (8 + t3_1_1);
        t3_2_0 += (1 - rt3_2_0) * t3_1_0;

        

        vR[id] = t0_2_0 + (t1_2_0 == t0_2_0) + (t2_2_0 == t0_2_0) + (t3_2_0 == t0_2_0);
    }
}

#endif

#if defined(_RF_31CALC_5LV_1TREE_1INPUT)
#define _MOD 32
#define _1_INPUT

#define EXP_NAME "_RF_31CALC_5LV_1TREE_1INPUT"
#define EXP_OUTPUT_FILE "_RF_31CALC_5LV_1TREE_1INPUT.txt"
#define EXP_RESULT_FILE "_RF_31CALC_5LV_1TREE_1INPUT.csv"

// RF_with_calc
__global__ void RF_kernel(float *input, const int n, float *vR)
{
    int id = blockIdx.x * blockDim.x + threadIdx.x;

    if (id < n)
    {
        int rt0_00 = (input[id] > 1); // root t0_00
        int t0_00 = rt0_00 * (2 + (input[id] > 2));
        t0_00 += (1 - rt0_00) * (input[id] > 0); // 0, 1, 2, 3

        int rt0_01 = (input[id] > 5); // root t0_01
        int t0_01 = rt0_01 * (2 + (input[id] > 6));
        t0_01 += (1 - rt0_01) * (input[id] > 4); // 0, 1, 2, 3

        int rt0_2 = (input[id] > 9); // root t0_2
        int t0_02 = rt0_2 * (2 + (input[id] > 10));
        t0_02 += (1 - rt0_2) * (input[id] > 8); // 0, 1, 2, 3

        int rt0_3 = (input[id] > 13); // root t0_3
        int t0_03 = rt0_3 * (2 + (input[id] > 14));
        t0_03 += (1 - rt0_3) * (input[id] > 12); // 0, 1, 2, 3

        int rt0_04 = (input[id] > 17); // root t0_04
        int t0_04 = rt0_04 * (2 + (input[id] > 18));
        t0_04 += (1 - rt0_04) * (input[id] > 16); // 0, 1, 2, 3

        int rt0_05 = (input[id] > 21); // root t0_05
        int t0_05 = rt0_05 * (2 + (input[id] > 22));
        t0_05 += (1 - rt0_05) * (input[id] > 20); // 0, 1, 2, 3

        int rt0_06 = (input[id] > 25); // root t0_06
        int t0_06 = rt0_06 * (2 + (input[id] > 26));
        t0_06 += (1 - rt0_06) * (input[id] > 24); // 0, 1, 2, 3

        int rt0_07 = (input[id] > 29); // root t0_07
        int t0_07 = rt0_07 * (2 + (input[id] > 30));
        t0_07 += (1 - rt0_07) * (input[id] > 28); // 0, 1, 2, 3

        int rt1_00 = (input[id] > 3); // root t1_00
        int t1_00 = rt1_00 * (4 + t0_01);
        t1_00 += (1 - rt1_00) * t0_00; // 0, ... , 7

        int rt1_01 = (input[id] > 11); // root t1_02
        int t1_01 = rt1_01 * (4 + t0_03);
        t1_01 += (1 - rt1_01) * t0_02; // 0, ... , 7

        int rt1_02 = (input[id] > 19); // root t1_02
        int t1_02 = rt1_02 * (4 + t0_05);
        t1_02 += (1 - rt1_02) * t0_04; // 0, ... , 7

        int rt1_03 = (input[id] > 27); // root t1_03
        int t1_03 = rt1_03 * (4 + t0_07);
        t1_03 += (1 - rt1_03) * t0_06; // 0, ... , 7

        int rt2_00 = (input[id] > 7); // root t2_00
        int t2_00 = rt2_00 * (8 + t1_01);
        t2_00 += (1 - rt2_00) * t1_00; // 0, ... , 15

        int rt2_01 = (input[id] > 23); // root t2_01
        int t2_01 = rt2_01 * (8 + t1_03);
        t2_01 += (1 - rt2_01) * t1_02; // 0, ... , 15

        int rt3_00 = (input[id] > 15); // root t3_00
        int t3_00 = rt3_00 * (16 + t2_01);
        t3_00 += (1 - rt3_00) * t2_00; // 0, ... , 31

        vR[id] = t3_00;
    }
}

#endif

#if defined(_RF_63CALC_6LV_1TREE_1INPUT)
#define _MOD 64
#define _1_INPUT

#define EXP_NAME "_RF_63CALC_6LV_1TREE_1INPUT"
#define EXP_OUTPUT_FILE "_RF_63CALC_6LV_1TREE_1INPUT.txt"
#define EXP_RESULT_FILE "_RF_63CALC_6LV_1TREE_1INPUT.csv"

// RF_with_calc
__global__ void RF_kernel(float *input, const int n, float *vR)
{
    int id = blockIdx.x * blockDim.x + threadIdx.x;

    if (id < n)
    {
        int rt0_00 = (input[id] > 1); // root t0_00
        int t0_00 = rt0_00 * (2 + (input[id] > 2));
        t0_00 += (1 - rt0_00) * (input[id] > 0); // 0, 1, 2, 3

        int rt0_01 = (input[id] > 5); // root t0_01
        int t0_01 = rt0_01 * (2 + (input[id] > 6));
        t0_01 += (1 - rt0_01) * (input[id] > 4); // 0, 1, 2, 3

        int rt0_2 = (input[id] > 9); // root t0_2
        int t0_02 = rt0_2 * (2 + (input[id] > 10));
        t0_02 += (1 - rt0_2) * (input[id] > 8); // 0, 1, 2, 3

        int rt0_3 = (input[id] > 13); // root t0_3
        int t0_03 = rt0_3 * (2 + (input[id] > 14));
        t0_03 += (1 - rt0_3) * (input[id] > 12); // 0, 1, 2, 3

        int rt0_04 = (input[id] > 17); // root t0_04
        int t0_04 = rt0_04 * (2 + (input[id] > 18));
        t0_04 += (1 - rt0_04) * (input[id] > 16); // 0, 1, 2, 3

        int rt0_05 = (input[id] > 21); // root t0_05
        int t0_05 = rt0_05 * (2 + (input[id] > 22));
        t0_05 += (1 - rt0_05) * (input[id] > 20); // 0, 1, 2, 3

        int rt0_06 = (input[id] > 25); // root t0_06
        int t0_06 = rt0_06 * (2 + (input[id] > 26));
        t0_06 += (1 - rt0_06) * (input[id] > 24); // 0, 1, 2, 3

        int rt0_07 = (input[id] > 29); // root t0_07
        int t0_07 = rt0_07 * (2 + (input[id] > 30));
        t0_07 += (1 - rt0_07) * (input[id] > 28); // 0, 1, 2, 3

        int rt0_08 = (input[id] > 33); // root t0_08
        int t0_08 = rt0_08 * (2 + (input[id] > 34));
        t0_08 += (1 - rt0_08) * (input[id] > 32); // 0, 1, 2, 3

        int rt0_09 = (input[id] > 37); // root t0_09
        int t0_09 = rt0_09 * (2 + (input[id] > 38));
        t0_09 += (1 - rt0_09) * (input[id] > 36); // 0, 1, 2, 3

        int rt0_10 = (input[id] > 41); // root t0_10
        int t0_10 = rt0_10 * (2 + (input[id] > 42));
        t0_10 += (1 - rt0_10) * (input[id] > 40); // 0, 1, 2, 3

        int rt0_11 = (input[id] > 45); // root t0_11
        int t0_11 = rt0_11 * (2 + (input[id] > 46));
        t0_11 += (1 - rt0_11) * (input[id] > 44); // 0, 1, 2, 3

        int rt0_12 = (input[id] > 49); // root t0_12
        int t0_12 = rt0_12 * (2 + (input[id] > 50));
        t0_12 += (1 - rt0_12) * (input[id] > 48); // 0, 1, 2, 3

        int rt0_13 = (input[id] > 53); // root t0_13
        int t0_13 = rt0_13 * (2 + (input[id] > 54));
        t0_13 += (1 - rt0_13) * (input[id] > 52); // 0, 1, 2, 3

        int rt0_14 = (input[id] > 57); // root t0_15
        int t0_14 = rt0_14 * (2 + (input[id] > 58));
        t0_14 += (1 - rt0_14) * (input[id] > 56); // 0, 1, 2, 3

        int rt0_15 = (input[id] > 61); // root t0_15
        int t0_15 = rt0_15 * (2 + (input[id] > 62));
        t0_15 += (1 - rt0_15) * (input[id] > 60); // 0, 1, 2, 3

        int rt1_00 = (input[id] > 3); // root t1_00
        int t1_00 = rt1_00 * (4 + t0_01);
        t1_00 += (1 - rt1_00) * t0_00; // 0, ... , 7

        int rt1_01 = (input[id] > 11); // root t1_02
        int t1_01 = rt1_01 * (4 + t0_03);
        t1_01 += (1 - rt1_01) * t0_02; // 0, ... , 7

        int rt1_02 = (input[id] > 19); // root t1_02
        int t1_02 = rt1_02 * (4 + t0_05);
        t1_02 += (1 - rt1_02) * t0_04; // 0, ... , 7

        int rt1_03 = (input[id] > 27); // root t1_03
        int t1_03 = rt1_03 * (4 + t0_07);
        t1_03 += (1 - rt1_03) * t0_06; // 0, ... , 7

        int rt1_04 = (input[id] > 35); // root t1_04
        int t1_04 = rt1_04 * (4 + t0_09);
        t1_04 += (1 - rt1_04) * t0_08; // 0, ... , 7

        int rt1_05 = (input[id] > 43); // root t1_05
        int t1_05 = rt1_05 * (4 + t0_11);
        t1_05 += (1 - rt1_05) * t0_10; // 0, ... , 7

        int rt1_06 = (input[id] > 51); // root t1_06
        int t1_06 = rt1_06 * (4 + t0_13);
        t1_06 += (1 - rt1_06) * t0_12; // 0, ... , 7

        int rt1_07 = (input[id] > 59); // root t1_07
        int t1_07 = rt1_07 * (4 + t0_15);
        t1_07 += (1 - rt1_07) * t0_14; // 0, ... , 7

        int rt2_00 = (input[id] > 7); // root t2_00
        int t2_00 = rt2_00 * (8 + t1_01);
        t2_00 += (1 - rt2_00) * t1_00; // 0, ... , 15

        int rt2_01 = (input[id] > 23); // root t2_01
        int t2_01 = rt2_01 * (8 + t1_03);
        t2_01 += (1 - rt2_01) * t1_02; // 0, ... , 15

        int rt2_02 = (input[id] > 39); // root t2_02
        int t2_02 = rt2_02 * (8 + t1_05);
        t2_02 += (1 - rt2_02) * t1_04; // 0, ... , 15

        int rt2_03 = (input[id] > 55); // root t2_03
        int t2_03 = rt2_03 * (8 + t1_07);
        t2_03 += (1 - rt2_03) * t1_06; // 0, ... , 15

        int rt3_00 = (input[id] > 15); // root t3_00
        int t3_00 = rt3_00 * (16 + t2_01);
        t3_00 += (1 - rt3_00) * t2_00; // 0, ... , 31

        int rt3_01 = (input[id] > 47); // root t3_01
        int t3_01 = rt3_01 * (16 + t2_03);
        t3_01 += (1 - rt3_01) * t2_02; // 0, ... , 31

        int rt4_00 = (input[id] > 31); // root t3_01
        int t4_00 = rt4_00 * (32 + t3_01);
        t4_00 += (1 - rt4_00) * t3_00; // 0, ... , 31

        vR[id] = t4_00;
    }
}

#endif

#if defined(_RF_127CALC_7LV_1TREE_1INPUT)
#define _MOD 128
#define _1_INPUT

#define EXP_NAME "_RF_127CALC_7LV_1TREE_1INPUT"
#define EXP_OUTPUT_FILE "_RF_127CALC_7LV_1TREE_1INPUT.txt"
#define EXP_RESULT_FILE "_RF_127CALC_7LV_1TREE_1INPUT.csv"

// RF_with_calc
__global__ void RF_kernel(float *input, const int n, float *vR)
{
    int id = blockIdx.x * blockDim.x + threadIdx.x;

    if (id < n)
    {
        int rt0_0 = (input[id] > 1);
        int t0_0 = rt0_0 * (2 + (input[id] > 2));
        t0_0 += (1 - rt0_0) * (input[id] > 0);
        int rt0_1 = (input[id] > 5);
        int t0_1 = rt0_1 * (2 + (input[id] > 6));
        t0_1 += (1 - rt0_1) * (input[id] > 4);
        int rt0_2 = (input[id] > 9);
        int t0_2 = rt0_2 * (2 + (input[id] > 10));
        t0_2 += (1 - rt0_2) * (input[id] > 8);
        int rt0_3 = (input[id] > 13);
        int t0_3 = rt0_3 * (2 + (input[id] > 14));
        t0_3 += (1 - rt0_3) * (input[id] > 12);
        int rt0_4 = (input[id] > 17);
        int t0_4 = rt0_4 * (2 + (input[id] > 18));
        t0_4 += (1 - rt0_4) * (input[id] > 16);
        int rt0_5 = (input[id] > 21);
        int t0_5 = rt0_5 * (2 + (input[id] > 22));
        t0_5 += (1 - rt0_5) * (input[id] > 20);
        int rt0_6 = (input[id] > 25);
        int t0_6 = rt0_6 * (2 + (input[id] > 26));
        t0_6 += (1 - rt0_6) * (input[id] > 24);
        int rt0_7 = (input[id] > 29);
        int t0_7 = rt0_7 * (2 + (input[id] > 30));
        t0_7 += (1 - rt0_7) * (input[id] > 28);
        int rt0_8 = (input[id] > 33);
        int t0_8 = rt0_8 * (2 + (input[id] > 34));
        t0_8 += (1 - rt0_8) * (input[id] > 32);
        int rt0_9 = (input[id] > 37);
        int t0_9 = rt0_9 * (2 + (input[id] > 38));
        t0_9 += (1 - rt0_9) * (input[id] > 36);
        int rt0_10 = (input[id] > 41);
        int t0_10 = rt0_10 * (2 + (input[id] > 42));
        t0_10 += (1 - rt0_10) * (input[id] > 40);
        int rt0_11 = (input[id] > 45);
        int t0_11 = rt0_11 * (2 + (input[id] > 46));
        t0_11 += (1 - rt0_11) * (input[id] > 44);
        int rt0_12 = (input[id] > 49);
        int t0_12 = rt0_12 * (2 + (input[id] > 50));
        t0_12 += (1 - rt0_12) * (input[id] > 48);
        int rt0_13 = (input[id] > 53);
        int t0_13 = rt0_13 * (2 + (input[id] > 54));
        t0_13 += (1 - rt0_13) * (input[id] > 52);
        int rt0_14 = (input[id] > 57);
        int t0_14 = rt0_14 * (2 + (input[id] > 58));
        t0_14 += (1 - rt0_14) * (input[id] > 56);
        int rt0_15 = (input[id] > 61);
        int t0_15 = rt0_15 * (2 + (input[id] > 62));
        t0_15 += (1 - rt0_15) * (input[id] > 60);
        int rt0_16 = (input[id] > 65);
        int t0_16 = rt0_16 * (2 + (input[id] > 66));
        t0_16 += (1 - rt0_16) * (input[id] > 64);
        int rt0_17 = (input[id] > 69);
        int t0_17 = rt0_17 * (2 + (input[id] > 70));
        t0_17 += (1 - rt0_17) * (input[id] > 68);
        int rt0_18 = (input[id] > 73);
        int t0_18 = rt0_18 * (2 + (input[id] > 74));
        t0_18 += (1 - rt0_18) * (input[id] > 72);
        int rt0_19 = (input[id] > 77);
        int t0_19 = rt0_19 * (2 + (input[id] > 78));
        t0_19 += (1 - rt0_19) * (input[id] > 76);
        int rt0_20 = (input[id] > 81);
        int t0_20 = rt0_20 * (2 + (input[id] > 82));
        t0_20 += (1 - rt0_20) * (input[id] > 80);
        int rt0_21 = (input[id] > 85);
        int t0_21 = rt0_21 * (2 + (input[id] > 86));
        t0_21 += (1 - rt0_21) * (input[id] > 84);
        int rt0_22 = (input[id] > 89);
        int t0_22 = rt0_22 * (2 + (input[id] > 90));
        t0_22 += (1 - rt0_22) * (input[id] > 88);
        int rt0_23 = (input[id] > 93);
        int t0_23 = rt0_23 * (2 + (input[id] > 94));
        t0_23 += (1 - rt0_23) * (input[id] > 92);
        int rt0_24 = (input[id] > 97);
        int t0_24 = rt0_24 * (2 + (input[id] > 98));
        t0_24 += (1 - rt0_24) * (input[id] > 96);
        int rt0_25 = (input[id] > 101);
        int t0_25 = rt0_25 * (2 + (input[id] > 102));
        t0_25 += (1 - rt0_25) * (input[id] > 100);
        int rt0_26 = (input[id] > 105);
        int t0_26 = rt0_26 * (2 + (input[id] > 106));
        t0_26 += (1 - rt0_26) * (input[id] > 104);
        int rt0_27 = (input[id] > 109);
        int t0_27 = rt0_27 * (2 + (input[id] > 110));
        t0_27 += (1 - rt0_27) * (input[id] > 108);
        int rt0_28 = (input[id] > 113);
        int t0_28 = rt0_28 * (2 + (input[id] > 114));
        t0_28 += (1 - rt0_28) * (input[id] > 112);
        int rt0_29 = (input[id] > 117);
        int t0_29 = rt0_29 * (2 + (input[id] > 118));
        t0_29 += (1 - rt0_29) * (input[id] > 116);
        int rt0_30 = (input[id] > 121);
        int t0_30 = rt0_30 * (2 + (input[id] > 122));
        t0_30 += (1 - rt0_30) * (input[id] > 120);
        int rt0_31 = (input[id] > 125);
        int t0_31 = rt0_31 * (2 + (input[id] > 126));
        t0_31 += (1 - rt0_31) * (input[id] > 124);
        int rt1_0 = (input[id] > 3);
        int t1_0 = rt1_0 * (4 + t0_1);
        t1_0 += (1 - rt1_0) * t0_0;
        int rt1_1 = (input[id] > 11);
        int t1_1 = rt1_1 * (4 + t0_3);
        t1_1 += (1 - rt1_1) * t0_2;
        int rt1_2 = (input[id] > 19);
        int t1_2 = rt1_2 * (4 + t0_5);
        t1_2 += (1 - rt1_2) * t0_4;
        int rt1_3 = (input[id] > 27);
        int t1_3 = rt1_3 * (4 + t0_7);
        t1_3 += (1 - rt1_3) * t0_6;
        int rt1_4 = (input[id] > 35);
        int t1_4 = rt1_4 * (4 + t0_9);
        t1_4 += (1 - rt1_4) * t0_8;
        int rt1_5 = (input[id] > 43);
        int t1_5 = rt1_5 * (4 + t0_11);
        t1_5 += (1 - rt1_5) * t0_10;
        int rt1_6 = (input[id] > 51);
        int t1_6 = rt1_6 * (4 + t0_13);
        t1_6 += (1 - rt1_6) * t0_12;
        int rt1_7 = (input[id] > 59);
        int t1_7 = rt1_7 * (4 + t0_15);
        t1_7 += (1 - rt1_7) * t0_14;
        int rt1_8 = (input[id] > 67);
        int t1_8 = rt1_8 * (4 + t0_17);
        t1_8 += (1 - rt1_8) * t0_16;
        int rt1_9 = (input[id] > 75);
        int t1_9 = rt1_9 * (4 + t0_19);
        t1_9 += (1 - rt1_9) * t0_18;
        int rt1_10 = (input[id] > 83);
        int t1_10 = rt1_10 * (4 + t0_21);
        t1_10 += (1 - rt1_10) * t0_20;
        int rt1_11 = (input[id] > 91);
        int t1_11 = rt1_11 * (4 + t0_23);
        t1_11 += (1 - rt1_11) * t0_22;
        int rt1_12 = (input[id] > 99);
        int t1_12 = rt1_12 * (4 + t0_25);
        t1_12 += (1 - rt1_12) * t0_24;
        int rt1_13 = (input[id] > 107);
        int t1_13 = rt1_13 * (4 + t0_27);
        t1_13 += (1 - rt1_13) * t0_26;
        int rt1_14 = (input[id] > 115);
        int t1_14 = rt1_14 * (4 + t0_29);
        t1_14 += (1 - rt1_14) * t0_28;
        int rt1_15 = (input[id] > 123);
        int t1_15 = rt1_15 * (4 + t0_31);
        t1_15 += (1 - rt1_15) * t0_30;
        int rt2_0 = (input[id] > 7);
        int t2_0 = rt2_0 * (8 + t1_1);
        t2_0 += (1 - rt2_0) * t1_0;
        int rt2_1 = (input[id] > 23);
        int t2_1 = rt2_1 * (8 + t1_3);
        t2_1 += (1 - rt2_1) * t1_2;
        int rt2_2 = (input[id] > 39);
        int t2_2 = rt2_2 * (8 + t1_5);
        t2_2 += (1 - rt2_2) * t1_4;
        int rt2_3 = (input[id] > 55);
        int t2_3 = rt2_3 * (8 + t1_7);
        t2_3 += (1 - rt2_3) * t1_6;
        int rt2_4 = (input[id] > 71);
        int t2_4 = rt2_4 * (8 + t1_9);
        t2_4 += (1 - rt2_4) * t1_8;
        int rt2_5 = (input[id] > 87);
        int t2_5 = rt2_5 * (8 + t1_11);
        t2_5 += (1 - rt2_5) * t1_10;
        int rt2_6 = (input[id] > 103);
        int t2_6 = rt2_6 * (8 + t1_13);
        t2_6 += (1 - rt2_6) * t1_12;
        int rt2_7 = (input[id] > 119);
        int t2_7 = rt2_7 * (8 + t1_15);
        t2_7 += (1 - rt2_7) * t1_14;
        int rt3_0 = (input[id] > 15);
        int t3_0 = rt3_0 * (16 + t2_1);
        t3_0 += (1 - rt3_0) * t2_0;
        int rt3_1 = (input[id] > 47);
        int t3_1 = rt3_1 * (16 + t2_3);
        t3_1 += (1 - rt3_1) * t2_2;
        int rt3_2 = (input[id] > 79);
        int t3_2 = rt3_2 * (16 + t2_5);
        t3_2 += (1 - rt3_2) * t2_4;
        int rt3_3 = (input[id] > 111);
        int t3_3 = rt3_3 * (16 + t2_7);
        t3_3 += (1 - rt3_3) * t2_6;
        int rt4_0 = (input[id] > 31);
        int t4_0 = rt4_0 * (32 + t3_1);
        t4_0 += (1 - rt4_0) * t3_0;
        int rt4_1 = (input[id] > 95);
        int t4_1 = rt4_1 * (32 + t3_3);
        t4_1 += (1 - rt4_1) * t3_2;
        int rt5_0 = (input[id] > 63);
        int t5_0 = rt5_0 * (64 + t4_1);
        t5_0 += (1 - rt5_0) * t4_0;

        vR[id] = t5_0;
    }
}

#endif
//*********

void initData(float *ip, int size);
void writeOutFile(int value);
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
#if defined(_2TREE)
    RF_kernel<<<grid, block>>>(d_input, nElem, 0, 0, d_vR);
#elif defined(_3TREE)
    RF_kernel<<<grid, block>>>(d_input, nElem, 0, 0, 0, d_vR);
#elif defined(_4TREE)
    RF_kernel<<<grid, block>>>(d_input, nElem, 0, 0, 0, 0, d_vR);
#else
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
#if defined(_2TREE)
        if (h_input[i] != h_vR[i] - 1)
#elif defined(_3TREE)
        if (h_input[i] != h_vR[i] - 2)
#elif defined(_4TREE)
        if (h_input[i] != h_vR[i] - 3)
#else
        if (h_input[i] != h_vR[i])
#endif
        {
            flag = 0;
            break;
        }
#endif
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
#if defined(_RF_COPIA_SIMPLES_1INPUT)
        ip[i] = (float)(0);
#elif defined(_RF_63IF_1TREE_1INPUT_WORST) || defined(_RF_63IF_2TREE_1INPUT_WORST) || \
    defined(_RF_63F_3TREE_1INPUT_WORST) || defined(_RF_63IF_4TREE_1INPUT_WORST) ||    \
    defined(_RF_127IF_1TREE_1INPUT_WORST) || defined(_RF_127IF_2TREE_1INPUT_WORST) || \
    defined(_RF_127IF_3TREE_1INPUT_WORST) || defined(_RF_127IF_4TREE_1INPUT_WORST)
        int aux = _MOD / WARP_SIZE;
        ip[i] = (float)((i * aux) % _MOD);
#else
        ip[i] = (float)(i % _MOD);
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
