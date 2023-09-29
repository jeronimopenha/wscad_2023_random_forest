

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

        int rt3_0_00 = (input[id + offset3] > 1); // root t0_00
        int r3_0_00 = rt3_0_00 * (2 + (input[id + offset3] > 2));
        r3_0_00 += (1 - rt3_0_00) * (input[id + offset3] > 0); // 0, 1, 2, 3

        vR[id] = r0_0_00 + (r1_0_00 == r0_0_00) + (r2_0_00 == r0_0_00) + (r3_0_00 == r0_0_00);
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