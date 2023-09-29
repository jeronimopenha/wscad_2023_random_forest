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