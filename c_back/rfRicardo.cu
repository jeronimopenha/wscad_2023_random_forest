#include <sys/time.h>
#include <cuda_runtime.h>
#include <stdio.h>
#include <stdlib.h>
#include <stdbool.h>
#include <time.h>

#define WARP_SIZE 32
#define N_ELEM 200000000

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

// Type of experiment
// #define _RF_WITH_CALC_1TREE_1INPUT_3LEVEL
// #define _RF_WITH_CALC_1TREE_1INPUT_5LEVEL
#define _RF_WITH_CALC_1TREE_1INPUT_7LEVEL
// #define _RF_WITH_IF_1TREE_1INPUT_3LEVEL_BEST
// #define _RF_WITH_IF_1TREE_1INPUT_3LEVEL_WORST
// #define _RF_WITH_IF_1TREE_1INPUT_7LEVEL_BEST
// #define _RF_WITH_IF_1TREE_1INPUT_7LEVEL_WORST
// #define _RF_WITH_IF_4TREE_1INPUT_5LEVEL_BEST
// #define _RF_WITH_IF_4TREE_1INPUT_5LEVEL_WORST


// IF
#if defined(_RF_WITH_IF_1TREE_1INPUT_3LEVEL_BEST) || defined(_RF_WITH_IF_1TREE_1INPUT_3LEVEL_WORST)

#define _1_INPUT

#ifdef _RF_WITH_IF_1TREE_1INPUT_3LEVEL_BEST
#define EXP_NAME "_RF_WITH_IF_1TREE_1INPUT_3LEVEL_BEST"
#define EXP_OUTPUT_FILE "_RF_WITH_IF_1TREE_1INPUT_3LEVEL_BEST_OUTPUT.txt"
#define EXP_RESULT_FILE "_RF_WITH_IF_1TREE_1INPUT_3LEVEL_BEST_RESULT.csv"
#endif

#ifdef _RF_WITH_IF_1TREE_1INPUT_3LEVEL_WORST
#define EXP_NAME "_RF_WITH_IF_1TREE_1INPUT_3LEVEL_WORST"
#define EXP_OUTPUT_FILE "_RF_WITH_IF_1TREE_1INPUT_3LEVEL_WORST_OUTPUT.txt"
#define EXP_RESULT_FILE "_RF_WITH_IF_1TREE_1INPUT_3LEVEL_WORST_RESULT.csv"
#endif

// RF_with_calc
__global__ void RF_kernel(float *input, const int n, float *vR)
{
    int i = blockIdx.x * blockDim.x + threadIdx.x;

    // para 8 classes
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
            { // <=5
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
        { //<=3
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
            { // <=1
                if (input[i] == 1)
                {
                    vR[i] = 1;
                }
                else
                { //!=1
                    vR[i] = 0;
                }
            }
        }
    }
}

#endif

#if defined(_RF_WITH_IF_1TREE_1INPUT_7LEVEL_BEST) || defined(_RF_WITH_IF_1TREE_1INPUT_7LEVEL_WORST)

#define _1_INPUT

#ifdef _RF_WITH_IF_1TREE_1INPUT_7LEVEL_BEST
#define EXP_NAME "_RF_WITH_IF_1TREE_1INPUT_7LEVEL_BEST"
#define EXP_OUTPUT_FILE "_RF_WITH_IF_1TREE_1INPUT_7LEVEL_BEST_OUTPUT.txt"
#define EXP_RESULT_FILE "_RF_WITH_IF_1TREE_1INPUT_7LEVEL_BEST_RESULT.csv"
#endif

#ifdef _RF_WITH_IF_1TREE_1INPUT_7LEVEL_WORST
#define EXP_NAME "_RF_WITH_IF_1TREE_1INPUT_7LEVEL_WORST"
#define EXP_OUTPUT_FILE "_RF_WITH_IF_1TREE_1INPUT_7LEVEL_WORST_OUTPUT.txt"
#define EXP_RESULT_FILE "_RF_WITH_IF_1TREE_1INPUT_7LEVEL_WORST_RESULT.csv"

#endif

// RF_with_calc
__global__ void RF_kernel(float *input, const int n, float *vR)
{
    int i = blockIdx.x * blockDim.x + threadIdx.x;

    // para 128 classes
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
                                { //!=127
                                    vR[i] = 126;
                                }
                            }
                            else
                            { // <= 125
                                if (input[i] == 125)
                                {
                                    vR[i] = 125;
                                }
                                else
                                { //!=125
                                    vR[i] = 124;
                                }
                            }
                        }
                        else
                        { //<=123
                            if (input[i] > 121)
                            {
                                if (input[i] == 123)
                                {
                                    vR[i] = 123;
                                }
                                else
                                { //!=123
                                    vR[i] = 122;
                                }
                            }
                            else
                            { // <=121
                                if (input[i] == 12)
                                {
                                    vR[i] = 121;
                                }
                                else
                                { //!=121
                                    vR[i] = 120;
                                }
                            }
                        }
                    }
                    else
                    { //<=119
                        if (input[i] > 115)
                        {
                            if (input[i] > 117)
                            {
                                if (input[i] == 119)
                                {
                                    vR[i] = 119;
                                }
                                else
                                { //!=119
                                    vR[i] = 118;
                                }
                            }
                            else
                            { // <=117
                                if (input[i] == 17)
                                {
                                    vR[i] = 117;
                                }
                                else
                                { //!=117
                                    vR[i] = 116;
                                }
                            }
                        }
                        else
                        { //<=115
                            if (input[i] > 113)
                            {
                                if (input[i] == 115)
                                {
                                    vR[i] = 115;
                                }
                                else
                                { //!=115
                                    vR[i] = 114;
                                }
                            }
                            else
                            { // <=113
                                if (input[i] == 113)
                                {
                                    vR[i] = 113;
                                }
                                else
                                { //!=113
                                    vR[i] = 112;
                                }
                            }
                        }
                    }
                }
                else
                { //<=111
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
                                { //!=111
                                    vR[i] = 110;
                                }
                            }
                            else
                            { // <=109
                                if (input[i] == 109)
                                {
                                    vR[i] = 109;
                                }
                                else
                                { //!=109
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
                                { //!=107
                                    vR[i] = 106;
                                }
                            }
                            else
                            { //<=105
                                if (input[i] == 105)
                                {
                                    vR[i] = 105;
                                }
                                else
                                { //!=105
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
                                { //!=103
                                    vR[i] = 102;
                                }
                            }
                            else
                            { // <=101
                                if (input[i] == 101)
                                {
                                    vR[i] = 101;
                                }
                                else
                                { //!=101
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
                                { //!=99
                                    vR[i] = 98;
                                }
                            }
                            else
                            { // <=97
                                if (input[i] == 97)
                                {
                                    vR[i] = 97;
                                }
                                else
                                { //!=97
                                    vR[i] = 96;
                                }
                            }
                        }
                    }
                }
            }
            else
            { //<=95
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
                                { //!=95
                                    vR[i] = 94;
                                }
                            }
                            else
                            { //<=93
                                if (input[i] == 93)
                                {
                                    vR[i] = 93;
                                }
                                else
                                { //!=93
                                    vR[i] = 92;
                                }
                            }
                        }
                        else
                        { //<=91
                            if (input[i] > 89)
                            {
                                if (input[i] == 91)
                                {
                                    vR[i] = 91;
                                }
                                else
                                { //!=91
                                    vR[i] = 90;
                                }
                            }
                            else
                            { // <=89
                                if (input[i] == 89)
                                {
                                    vR[i] = 89;
                                }
                                else
                                { //!=89
                                    vR[i] = 88;
                                }
                            }
                        }
                    }
                    else
                    { //<=87
                        if (input[i] > 83)
                        {
                            if (input[i] > 85)
                            {
                                if (input[i] == 87)
                                {
                                    vR[i] = 87;
                                }
                                else
                                { //!=87
                                    vR[i] = 86;
                                }
                            }
                            else
                            { // <=85
                                if (input[i] == 85)
                                {
                                    vR[i] = 85;
                                }
                                else
                                { //!=85
                                    vR[i] = 84;
                                }
                            }
                        }
                        else
                        { //<=83
                            if (input[i] > 81)
                            {
                                if (input[i] == 83)
                                {
                                    vR[i] = 83;
                                }
                                else
                                { //!=83
                                    vR[i] = 82;
                                }
                            }
                            else
                            { // <=81
                                if (input[i] == 81)
                                {
                                    vR[i] = 81;
                                }
                                else
                                { //!=81
                                    vR[i] = 80;
                                }
                            }
                        }
                    }
                }
                else
                { //<=79
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
                                { //!=79
                                    vR[i] = 78;
                                }
                            }
                            else
                            { // <= 77
                                if (input[i] == 77)
                                {
                                    vR[i] = 77;
                                }
                                else
                                { //!=77
                                    vR[i] = 76;
                                }
                            }
                        }
                        else
                        { //<=75
                            if (input[i] > 73)
                            {
                                if (input[i] == 75)
                                {
                                    vR[i] = 75;
                                }
                                else
                                { //!=75
                                    vR[i] = 74;
                                }
                            }
                            else
                            { // <=73
                                if (input[i] == 73)
                                {
                                    vR[i] = 73;
                                }
                                else
                                { //!=73
                                    vR[i] = 72;
                                }
                            }
                        }
                    }
                    else
                    { // <=71
                        if (input[i] > 67)
                        {
                            if (input[i] > 69)
                            {
                                if (input[i] == 71)
                                {
                                    vR[i] = 71;
                                }
                                else
                                { //!=71
                                    vR[i] = 70;
                                }
                            }
                            else
                            { // <=69
                                if (input[i] == 69)
                                {
                                    vR[i] = 69;
                                }
                                else
                                { //!=69
                                    vR[i] = 68;
                                }
                            }
                        }
                        else
                        { // <=67
                            if (input[i] > 65)
                            {
                                if (input[i] == 67)
                                {
                                    vR[i] = 67;
                                }
                                else
                                { //!=67
                                    vR[i] = 66;
                                }
                            }
                            else
                            { // <=65
                                if (input[i] == 65)
                                {
                                    vR[i] = 65;
                                }
                                else
                                { //!=65
                                    vR[i] = 64;
                                }
                            }
                        }
                    }
                }
            }
        }
        else
        { //<=63
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
                            { // <=61
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
                            { // <=57
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
                            { // <=53
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
                            { // <=49
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
                            { // <=45
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
                            { // <=41
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
                            { // <=37
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
                            { // <=33
                                if (input[i] == 33)
                                {
                                    vR[i] = 33;
                                }
                                else
                                { //!=35
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
                            { // <=29
                                if (input[i] == 29)
                                {
                                    vR[i] = 29;
                                }
                                else
                                { //!=29
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
                            { // <=25
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
                            { // <=21
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
                                { //!=
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
                            { // <=13
                                if (input[i] == 13)
                                {
                                    vR[i] = 13;
                                }
                                else
                                { //!=13
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
                                { //!=11
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
                                { //!=9
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
                            { // <=5
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
                        { //<=3
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
                            { // <=1
                                if (input[i] == 1)
                                {
                                    vR[i] = 1;
                                }
                                else
                                { //!=1
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

#if defined(_RF_WITH_IF_4TREE_1INPUT_5LEVEL_BEST) || defined(_RF_WITH_IF_4TREE_1INPUT_5LEVEL_WORST)

#define _1_INPUT

#ifdef _RF_WITH_IF_4TREE_1INPUT_5LEVEL_BEST
#define EXP_NAME "_RF_WITH_IF_4TREE_1INPUT_5LEVEL_BEST"
#define EXP_OUTPUT_FILE "_RF_WITH_IF_4TREE_1INPUT_5LEVEL_BEST_OUTPUT.txt"
#define EXP_RESULT_FILE "_RF_WITH_IF_4TREE_1INPUT_5LEVEL_BEST_RESULT.csv"
#endif

#ifdef _RF_WITH_IF_4TREE_1INPUT_5LEVEL_WORST
#define EXP_NAME "_RF_WITH_IF_4TREE_1INPUT_5LEVEL_WORST"
#define EXP_OUTPUT_FILE "_RF_WITH_IF_4TREE_1INPUT_5LEVEL_WORST_OUTPUT.txt"
#define EXP_RESULT_FILE "_RF_WITH_IF_4TREE_1INPUT_5LEVEL_WORST_RESULT.csv"

#endif

// RF_with_calc
__global__ void RF_kernel(float *input, const int n, float *vR)
{
    int i = blockIdx.x * blockDim.x + threadIdx.x;

    // para 32 classes
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
                        { //!=29
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
                        { // !=19
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
                        { //!=17
                            vR[i] = 16;
                        }
                    }
                }
            }
        }
        else
        { // <=15
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
                    { //<=13
                        if (input[i] == 13)
                        {
                            vR[i] = 13;
                        }
                        else
                        { //!=13
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
                        { //!=11
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
                        { //!=9
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
                    { //<=5
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
                { //<=3
                    if (input[i] > 1)
                    {
                        if (input[i] == 3)
                        {
                            vR[i] = 3;
                        }
                        else
                        { // !=3
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
                        { //!=1
                            vR[i] = 0;
                        }
                    }
                }
            }
        }

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
                            vR[i] += 1;
                        }
                        else
                        { //!=31
                            vR[i] += 1;
                        }
                    }
                    else
                    { //<=29
                        if (input[i] == 29)
                        {
                            vR[i] += 1;
                        }
                        else
                        { //!=29
                            vR[i] += 1;
                        }
                    }
                }
                else
                { //<=27
                    if (input[i] > 25)
                    {
                        if (input[i] == 27)
                        {
                            vR[i] += 1;
                        }
                        else
                        { //!=27
                            vR[i] += 1;
                        }
                    }
                    else
                    { //<=25
                        if (input[i] == 25)
                        {
                            vR[i] += 1;
                        }
                        else
                        { //!=25
                            vR[i] += 1;
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
                            vR[i] += 1;
                        }
                        else
                        { //!=23
                            vR[i] += 1;
                        }
                    }
                    else
                    { //<=21
                        if (input[i] == 21)
                        {
                            vR[i] += 1;
                        }
                        else
                        { //!=21
                            vR[i] += 1;
                        }
                    }
                }
                else
                { //<=19
                    if (input[i] > 17)
                    {
                        if (input[i] == 19)
                        {
                            vR[i] += 1;
                        }
                        else
                        { // !=19
                            vR[i] += 1;
                        }
                    }
                    else
                    { //<=17
                        if (input[i] == 17)
                        {
                            vR[i] += 1;
                        }
                        else
                        { //!=17
                            vR[i] += 1;
                        }
                    }
                }
            }
        }
        else
        { // <=15
            if (input[i] > 7)
            {
                if (input[i] > 11)
                {
                    if (input[i] > 13)
                    {
                        if (input[i] == 15)
                        {
                            vR[i] += 1;
                        }
                        else
                        { //!=15
                            vR[i] += 1;
                        }
                    }
                    else
                    { //<=13
                        if (input[i] == 13)
                        {
                            vR[i] += 1;
                        }
                        else
                        { //!=13
                            vR[i] += 1;
                        }
                    }
                }
                else
                { //<=11
                    if (input[i] > 9)
                    {
                        if (input[i] == 11)
                        {
                            vR[i] += 1;
                        }
                        else
                        { //!=11
                            vR[i] += 1;
                        }
                    }
                    else
                    { //<=9
                        if (input[i] == 9)
                        {
                            vR[i] += 1;
                        }
                        else
                        { //!=9
                            vR[i] += 1;
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
                            vR[i] += 1;
                        }
                        else
                        { //!=7
                            vR[i] += 1;
                        }
                    }
                    else
                    { //<=5
                        if (input[i] == 5)
                        {
                            vR[i] += 1;
                        }
                        else
                        { //!=5
                            vR[i] += 1;
                        }
                    }
                }
                else
                { //<=3
                    if (input[i] > 1)
                    {
                        if (input[i] == 3)
                        {
                            vR[i] += 1;
                        }
                        else
                        { // !=3
                            vR[i] += 1;
                        }
                    }
                    else
                    { //<=1
                        if (input[i] == 1)
                        {
                            vR[i] += 1;
                        }
                        else
                        { //!=1
                            vR[i] += 1;
                        }
                    }
                }
            }
        }

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
                            vR[i] += 1;
                        }
                        else
                        { //!=31
                            vR[i] += 1;
                        }
                    }
                    else
                    { //<=29
                        if (input[i] == 29)
                        {
                            vR[i] += 1;
                        }
                        else
                        { //!=29
                            vR[i] += 1;
                        }
                    }
                }
                else
                { //<=27
                    if (input[i] > 25)
                    {
                        if (input[i] == 27)
                        {
                            vR[i] += 1;
                        }
                        else
                        { //!=27
                            vR[i] += 1;
                        }
                    }
                    else
                    { //<=25
                        if (input[i] == 25)
                        {
                            vR[i] += 1;
                        }
                        else
                        { //!=25
                            vR[i] += 1;
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
                            vR[i] += 1;
                        }
                        else
                        { //!=23
                            vR[i] += 1;
                        }
                    }
                    else
                    { //<=21
                        if (input[i] == 21)
                        {
                            vR[i] += 1;
                        }
                        else
                        { //!=21
                            vR[i] += 1;
                        }
                    }
                }
                else
                { //<=19
                    if (input[i] > 17)
                    {
                        if (input[i] == 19)
                        {
                            vR[i] += 1;
                        }
                        else
                        { // !=19
                            vR[i] += 1;
                        }
                    }
                    else
                    { //<=17
                        if (input[i] == 17)
                        {
                            vR[i] += 1;
                        }
                        else
                        { //!=17
                            vR[i] += 1;
                        }
                    }
                }
            }
        }
        else
        { // <=15
            if (input[i] > 7)
            {
                if (input[i] > 11)
                {
                    if (input[i] > 13)
                    {
                        if (input[i] == 15)
                        {
                            vR[i] += 1;
                        }
                        else
                        { //!=15
                            vR[i] += 1;
                        }
                    }
                    else
                    { //<=13
                        if (input[i] == 13)
                        {
                            vR[i] += 1;
                        }
                        else
                        { //!=13
                            vR[i] += 1;
                        }
                    }
                }
                else
                { //<=11
                    if (input[i] > 9)
                    {
                        if (input[i] == 11)
                        {
                            vR[i] += 1;
                        }
                        else
                        { //!=11
                            vR[i] += 1;
                        }
                    }
                    else
                    { //<=9
                        if (input[i] == 9)
                        {
                            vR[i] += 1;
                        }
                        else
                        { //!=9
                            vR[i] += 1;
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
                            vR[i] += 1;
                        }
                        else
                        { //!=7
                            vR[i] += 1;
                        }
                    }
                    else
                    { //<=5
                        if (input[i] == 5)
                        {
                            vR[i] += 1;
                        }
                        else
                        { //!=5
                            vR[i] += 1;
                        }
                    }
                }
                else
                { //<=3
                    if (input[i] > 1)
                    {
                        if (input[i] == 3)
                        {
                            vR[i] += 1;
                        }
                        else
                        { // !=3
                            vR[i] += 1;
                        }
                    }
                    else
                    { //<=1
                        if (input[i] == 1)
                        {
                            vR[i] += 1;
                        }
                        else
                        { //!=1
                            vR[i] += 1;
                        }
                    }
                }
            }
        }

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
                            vR[i] += 1;
                        }
                        else
                        { //!=31
                            vR[i] += 1;
                        }
                    }
                    else
                    { //<=29
                        if (input[i] == 29)
                        {
                            vR[i] += 1;
                        }
                        else
                        { //!=29
                            vR[i] += 1;
                        }
                    }
                }
                else
                { //<=27
                    if (input[i] > 25)
                    {
                        if (input[i] == 27)
                        {
                            vR[i] += 1;
                        }
                        else
                        { //!=27
                            vR[i] += 1;
                        }
                    }
                    else
                    { //<=25
                        if (input[i] == 25)
                        {
                            vR[i] += 1;
                        }
                        else
                        { //!=25
                            vR[i] += 1;
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
                            vR[i] += 1;
                        }
                        else
                        { //!=23
                            vR[i] += 1;
                        }
                    }
                    else
                    { //<=21
                        if (input[i] == 21)
                        {
                            vR[i] += 1;
                        }
                        else
                        { //!=21
                            vR[i] += 1;
                        }
                    }
                }
                else
                { //<=19
                    if (input[i] > 17)
                    {
                        if (input[i] == 19)
                        {
                            vR[i] += 1;
                        }
                        else
                        { // !=19
                            vR[i] += 1;
                        }
                    }
                    else
                    { //<=17
                        if (input[i] == 17)
                        {
                            vR[i] += 1;
                        }
                        else
                        { //!=17
                            vR[i] += 1;
                        }
                    }
                }
            }
        }
        else
        { // <=15
            if (input[i] > 7)
            {
                if (input[i] > 11)
                {
                    if (input[i] > 13)
                    {
                        if (input[i] == 15)
                        {
                            vR[i] += 1;
                        }
                        else
                        { //!=15
                            vR[i] += 1;
                        }
                    }
                    else
                    { //<=13
                        if (input[i] == 13)
                        {
                            vR[i] += 1;
                        }
                        else
                        { //!=13
                            vR[i] += 1;
                        }
                    }
                }
                else
                { //<=11
                    if (input[i] > 9)
                    {
                        if (input[i] == 11)
                        {
                            vR[i] += 1;
                        }
                        else
                        { //!=11
                            vR[i] += 1;
                        }
                    }
                    else
                    { //<=9
                        if (input[i] == 9)
                        {
                            vR[i] += 1;
                        }
                        else
                        { //!=9
                            vR[i] += 1;
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
                            vR[i] += 1;
                        }
                        else
                        { //!=7
                            vR[i] += 1;
                        }
                    }
                    else
                    { //<=5
                        if (input[i] == 5)
                        {
                            vR[i] += 1;
                        }
                        else
                        { //!=5
                            vR[i] += 1;
                        }
                    }
                }
                else
                { //<=3
                    if (input[i] > 1)
                    {
                        if (input[i] == 3)
                        {
                            vR[i] += 1;
                        }
                        else
                        { // !=3
                            vR[i] += 1;
                        }
                    }
                    else
                    { //<=1
                        if (input[i] == 1)
                        {
                            vR[i] += 1;
                        }
                        else
                        { //!=1
                            vR[i] += 1;
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
#if defined(_RF_WITH_CALC_1TREE_1INPUT_3LEVEL)

#define EXP_NAME "_RF_WITH_CALC_1TREE_1INPUT_3LEVEL"
#define EXP_OUTPUT_FILE "_RF_WITH_CALC_1TREE_1INPUT_3LEVEL.txt"
#define EXP_RESULT_FILE "_RF_WITH_CALC_1TREE_1INPUT_3LEVEL.csv"
#define _1_INPUT

// RF_with_calc
__global__ void RF_kernel(float *input, const int n, float *vR)
{
    int id = blockIdx.x * blockDim.x + threadIdx.x;

    // para 8 classes
    if (id < n)
    {
        char rt00 = (input[id] > 1); // root t00
        char t00 = rt00 * (2 + (input[id] > 2));
        t00 += (1 - rt00) * (input[id] > 0); // 0, 1, 2, 3

        char rt01 = (input[id] > 5); // root t01
        char t01 = rt01 * (2 + (input[id] > 6));
        t01 += (1 - rt01) * (input[id] > 4); // 0, 1, 2, 3

        char root = (input[id] > 3); // root 10
        char leaf = root * (4 + t01);
        leaf += (1 - root) * t00; // 0, 1, 2, 3, 4, 5, 6, 7

        vR[id] = leaf;
    }
}

#endif

#if defined(_RF_WITH_CALC_1TREE_1INPUT_5LEVEL)

#define EXP_NAME "_RF_WITH_CALC_1TREE_1INPUT_5LEVEL"
#define EXP_OUTPUT_FILE "_RF_WITH_CALC_1TREE_1INPUT_5LEVEL.txt"
#define EXP_RESULT_FILE "_RF_WITH_CALC_1TREE_1INPUT_5LEVEL.csv"
#define _1_INPUT

// RF_with_calc
__global__ void RF_kernel(float *input, const int n, float *vR)
{
    int id = blockIdx.x * blockDim.x + threadIdx.x;

    // para 32 classes
    if (id < n)
    {
        char rt00 = (input[id] > 1); // root t00
        char t00 = rt00 * (2 + (input[id] > 2));
        t00 += (1 - rt00) * (input[id] > 0); // 0, 1, 2, 3

        char rt01 = (input[id] > 5); // root t01
        char t01 = rt01 * (2 + (input[id] > 6));
        t01 += (1 - rt01) * (input[id] > 4); // 0, 1, 2, 3

        char rt02 = (input[id] > 9); // root t02
        char t02 = rt02 * (2 + (input[id] > 10));
        t02 += (1 - rt02) * (input[id] > 8); // 0, 1, 2, 3

        char rt03 = (input[id] > 13); // root t03
        char t03 = rt03 * (2 + (input[id] > 14));
        t03 += (1 - rt03) * (input[id] > 12); // 0, 1, 2, 3

        char rt04 = (input[id] > 17); // root t04
        char t04 = rt04 * (2 + (input[id] > 18));
        t04 += (1 - rt04) * (input[id] > 16); // 0, 1, 2, 3

        char rt05 = (input[id] > 21); // root t05
        char t05 = rt05 * (2 + (input[id] > 22));
        t05 += (1 - rt05) * (input[id] > 20); // 0, 1, 2, 3

        char rt06 = (input[id] > 25); // root t06
        char t06 = rt06 * (2 + (input[id] > 26));
        t06 += (1 - rt06) * (input[id] > 24); // 0, 1, 2, 3

        char rt07 = (input[id] > 29); // root t07
        char t07 = rt07 * (2 + (input[id] > 30));
        t07 += (1 - rt07) * (input[id] > 28); // 0, 1, 2, 3

        char rt10 = (input[id] > 3); // root 10
        char t10 = rt10 * (4 + t01);
        t10 += (1 - rt10) * t00; // 0, 1, 2, 3, 4, 5, 6, 7

        char rt11 = (input[id] > 11); // root 11
        char t11 = rt11 * (4 + t03);
        t11 += (1 - rt11) * t02; // 0, 1, 2, 3, 4, 5, 6, 7

        char rt12 = (input[id] > 19); // root 12
        char t12 = rt12 * (4 + t05);
        t12 += (1 - rt12) * t04; // 0, 1, 2, 3, 4, 5, 6, 7

        char rt13 = (input[id] > 27); // root 13
        char t13 = rt13 * (4 + t07);
        t13 += (1 - rt13) * t06; // 0, 1, 2, 3, 4, 5, 6, 7

        char rt20 = (input[id] > 7); // root 10
        char t20 = rt20 * (8 + t11);
        t20 += (1 - rt20) * t10;
        // 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15

        char rt21 = (input[id] > 23); // root 10
        char t21 = rt21 * (8 + t13);
        t21 += (1 - rt21) * t12;
        // 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15

        char root = (input[id] > 15); // root 10
        char leaf = root * (16 + t21);
        leaf += (1 - root) * t20;
        // 0, ... , 31

        vR[id] = leaf;
    }
}

#endif

// TODO
#if defined(_RF_WITH_CALC_1TREE_1INPUT_7LEVEL)

#define EXP_NAME "_RF_WITH_CALC_1TREE_1INPUT_7LEVEL"
#define EXP_OUTPUT_FILE "_RF_WITH_CALC_1TREE_1INPUT_7LEVEL.txt"
#define EXP_RESULT_FILE "_RF_WITH_CALC_1TREE_1INPUT_7LEVEL.csv"
#define _1_INPUT

// RF_with_calc
__global__ void RF_kernel(float *input, const int n, float *vR)
{
    int id = blockIdx.x * blockDim.x + threadIdx.x;

    // para 128 classes
    if (id < n)
    {
        char rt0_00 = (input[id] > 1); // root t0_00
        char t0_00 = rt0_00 * (2 + (input[id] > 2));
        t0_00 += (1 - rt0_00) * (input[id] > 0); // 0, 1, 2, 3

        char rt0_01 = (input[id] > 5); // root t0_01
        char t0_01 = rt0_01 * (2 + (input[id] > 6));
        t0_01 += (1 - rt0_01) * (input[id] > 4); // 0, 1, 2, 3

        char rt0_02 = (input[id] > 9); // root t0_02
        char t0_02 = rt0_02 * (2 + (input[id] > 10));
        t0_02 += (1 - rt0_02) * (input[id] > 8); // 0, 1, 2, 3

        char rt0_03 = (input[id] > 13); // root t0_03
        char t0_03 = rt0_03 * (2 + (input[id] > 14));
        t0_03 += (1 - rt0_03) * (input[id] > 12); // 0, 1, 2, 3

        char rt0_04 = (input[id] > 17); // root t0_04
        char t0_04 = rt0_04 * (2 + (input[id] > 18));
        t0_04 += (1 - rt0_04) * (input[id] > 16); // 0, 1, 2, 3

        char rt0_05 = (input[id] > 21); // root t0_05
        char t0_05 = rt0_05 * (2 + (input[id] > 22));
        t0_05 += (1 - rt0_05) * (input[id] > 20); // 0, 1, 2, 3

        char rt0_06 = (input[id] > 25); // root t0_06
        char t0_06 = rt0_06 * (2 + (input[id] > 26));
        t0_06 += (1 - rt0_06) * (input[id] > 24); // 0, 1, 2, 3

        char rt0_07 = (input[id] > 29); // root t0_07
        char t0_07 = rt0_07 * (2 + (input[id] > 30));
        t0_07 += (1 - rt0_07) * (input[id] > 28); // 0, 1, 2, 3

        char rt0_08 = (input[id] > 33); // root t0_08
        char t0_08 = rt0_08 * (2 + (input[id] > 34));
        t0_08 += (1 - rt0_08) * (input[id] > 32); // 0, 1, 2, 3

        char rt0_09 = (input[id] > 37); // root t0_09
        char t0_09 = rt0_09 * (2 + (input[id] > 38));
        t0_09 += (1 - rt0_09) * (input[id] > 36); // 0, 1, 2, 3

        char rt0_10 = (input[id] > 41); // root t0_10
        char t0_10 = rt0_10 * (2 + (input[id] > 42));
        t0_10 += (1 - rt0_10) * (input[id] > 40); // 0, 1, 2, 3

        char rt0_11 = (input[id] > 45); // root t0_11
        char t0_11 = rt0_11 * (2 + (input[id] > 46));
        t0_11 += (1 - rt0_11) * (input[id] > 44); // 0, 1, 2, 3

        char rt0_12 = (input[id] > 49); // root t0_12
        char t0_12 = rt0_12 * (2 + (input[id] > 50));
        t0_12 += (1 - rt0_12) * (input[id] > 48); // 0, 1, 2, 3

        char rt0_13 = (input[id] > 53); // root t0_13
        char t0_13 = rt0_13 * (2 + (input[id] > 54));
        t0_13 += (1 - rt0_13) * (input[id] > 52); // 0, 1, 2, 3

        char rt0_14 = (input[id] > 57); // root t0_14
        char t0_14 = rt0_14 * (2 + (input[id] > 58));
        t0_14 += (1 - rt0_14) * (input[id] > 56); // 0, 1, 2, 3

        char rt0_15 = (input[id] > 61); // root t0_15
        char t0_15 = rt0_15 * (2 + (input[id] > 62));
        t0_15 += (1 - rt0_15) * (input[id] > 60); // 0, 1, 2, 3

        char rt0_16 = (input[id] > 65); // root t0_16
        char t0_16 = rt0_16 * (2 + (input[id] > 66));
        t0_16 += (1 - rt0_16) * (input[id] > 64); // 0, 1, 2, 3

        char rt0_17 = (input[id] > 69); // root t0_17
        char t0_17 = rt0_17 * (2 + (input[id] > 70));
        t0_17 += (1 - rt0_17) * (input[id] > 68); // 0, 1, 2, 3

        char rt0_18 = (input[id] > 73); // root t0_18
        char t0_18 = rt0_18 * (2 + (input[id] > 74));
        t0_18 += (1 - rt0_18) * (input[id] > 72); // 0, 1, 2, 3

        char rt0_19 = (input[id] > 77); // root t0_19
        char t0_19 = rt0_19 * (2 + (input[id] > 78));
        t0_19 += (1 - rt0_19) * (input[id] > 76); // 0, 1, 2, 3

        char rt0_20 = (input[id] > 81); // root t0_20
        char t0_20 = rt0_20 * (2 + (input[id] > 82));
        t0_20 += (1 - rt0_20) * (input[id] > 80); // 0, 1, 2, 3

        char rt0_21 = (input[id] > 85); // root t0_21
        char t0_21 = rt0_21 * (2 + (input[id] > 86));
        t0_21 += (1 - rt0_21) * (input[id] > 84); // 0, 1, 2, 3

        char rt0_22 = (input[id] > 89); // root t0_22
        char t0_22 = rt0_22 * (2 + (input[id] > 90));
        t0_22 += (1 - rt0_22) * (input[id] > 88); // 0, 1, 2, 3

        char rt0_23 = (input[id] > 93); // root t0_23
        char t0_23 = rt0_23 * (2 + (input[id] > 94));
        t0_23 += (1 - rt0_23) * (input[id] > 92); // 0, 1, 2, 3

        char rt0_24 = (input[id] > 97); // root t0_24
        char t0_24 = rt0_24 * (2 + (input[id] > 98));
        t0_24 += (1 - rt0_24) * (input[id] > 96); // 0, 1, 2, 3

        char rt0_25 = (input[id] > 101); // root t0_25
        char t0_25 = rt0_25 * (2 + (input[id] > 102));
        t0_25 += (1 - rt0_25) * (input[id] > 100); // 0, 1, 2, 3

        char rt0_26 = (input[id] > 105); // root t0_26
        char t0_26 = rt0_26 * (2 + (input[id] > 106));
        t0_26 += (1 - rt0_26) * (input[id] > 104); // 0, 1, 2, 3

        char rt0_27 = (input[id] > 109); // root t0_27
        char t0_27 = rt0_27 * (2 + (input[id] > 110));
        t0_27 += (1 - rt0_27) * (input[id] > 108); // 0, 1, 2, 3

        char rt0_28 = (input[id] > 113); // root t0_28
        char t0_28 = rt0_28 * (2 + (input[id] > 114));
        t0_28 += (1 - rt0_28) * (input[id] > 112); // 0, 1, 2, 3

        char rt0_29 = (input[id] > 117); // root t0_29
        char t0_29 = rt0_29 * (2 + (input[id] > 118));
        t0_29 += (1 - rt0_29) * (input[id] > 116); // 0, 1, 2, 3

        char rt0_30 = (input[id] > 121); // root t0_30
        char t0_30 = rt0_30 * (2 + (input[id] > 122));
        t0_30 += (1 - rt0_30) * (input[id] > 120); // 0, 1, 2, 3

        char rt0_31 = (input[id] > 125); // root t0_31
        char t0_31 = rt0_31 * (2 + (input[id] > 126));
        t0_31 += (1 - rt0_31) * (input[id] > 124); // 0, 1, 2, 3

        char rt1_00 = (input[id] > 3);     // root 1_00
        char t1_00 = rt1_00 * (4 + t0_01); // 1
        t1_00 += (1 - rt1_00) * t0_00;     // 0, 1, 2, 3, 4, 5, 6, 7

        char rt1_01 = (input[id] > 11);    // root 1_01
        char t1_01 = rt1_01 * (4 + t0_03); // 1
        t1_01 += (1 - rt1_01) * t0_02;     // 0, 1, 2, 3, 4, 5, 6, 7

        char rt1_02 = (input[id] > 19);    // root 1_02
        char t1_02 = rt1_02 * (4 + t0_05); // 1
        t1_02 += (1 - rt1_02) * t0_04;     // 0, 1, 2, 3, 4, 5, 6, 7

        char rt1_03 = (input[id] > 27);    // root 1_03
        char t1_03 = rt1_03 * (4 + t0_07); // 1
        t1_03 += (1 - rt1_03) * t0_06;     // 0, 1, 2, 3, 4, 5, 6, 7

        char rt1_04 = (input[id] > 35);    // root 1_04
        char t1_04 = rt1_04 * (4 + t0_09); // 1
        t1_04 += (1 - rt1_04) * t0_08;     // 0, 1, 2, 3, 4, 5, 6, 7

        char rt1_05 = (input[id] > 43);    // root 1_05
        char t1_05 = rt1_05 * (4 + t0_11); // 1
        t1_05 += (1 - rt1_05) * t0_10;     // 0, 1, 2, 3, 4, 5, 6, 7

        char rt1_06 = (input[id] > 51);    // root 1_06
        char t1_06 = rt1_06 * (4 + t0_13); // 1
        t1_06 += (1 - rt1_06) * t0_12;     // 0, 1, 2, 3, 4, 5, 6, 7

        char rt1_07 = (input[id] > 59);    // root 1_07
        char t1_07 = rt1_07 * (4 + t0_15); // 1
        t1_07 += (1 - rt1_07) * t0_14;     // 0, 1, 2, 3, 4, 5, 6, 7

        char rt1_08 = (input[id] > 67);    // root 1_08
        char t1_08 = rt1_08 * (4 + t0_17); // 1
        t1_08 += (1 - rt1_08) * t0_16;     // 0, 1, 2, 3, 4, 5, 6, 7

        char rt1_09 = (input[id] > 75);    // root 1_09
        char t1_09 = rt1_09 * (4 + t0_19); // 1
        t1_09 += (1 - rt1_09) * t0_18;     // 0, 1, 2, 3, 4, 5, 6, 7

        char rt1_10 = (input[id] > 83);    // root 1_10
        char t1_10 = rt1_10 * (4 + t0_21); // 1
        t1_10 += (1 - rt1_10) * t0_20;     // 0, 1, 2, 3, 4, 5, 6, 7

        char rt1_11 = (input[id] > 91);    // root 1_11
        char t1_11 = rt1_11 * (4 + t0_23); // 1
        t1_11 += (1 - rt1_11) * t0_22;     // 0, 1, 2, 3, 4, 5, 6, 7

        char rt1_12 = (input[id] > 99);    // root 1_12
        char t1_12 = rt1_12 * (4 + t0_25); // 1
        t1_12 += (1 - rt1_12) * t0_24;     // 0, 1, 2, 3, 4, 5, 6, 7

        char rt1_13 = (input[id] > 107);   // root 1_13
        char t1_13 = rt1_13 * (4 + t0_27); // 1
        t1_13 += (1 - rt1_13) * t0_26;     // 0, 1, 2, 3, 4, 5, 6, 7

        char rt1_14 = (input[id] > 115);   // root 1_14
        char t1_14 = rt1_14 * (4 + t0_29); // 1
        t1_14 += (1 - rt1_14) * t0_28;     // 0, 1, 2, 3, 4, 5, 6, 7

        char rt1_15 = (input[id] > 123);   // root 1_15
        char t1_15 = rt1_15 * (4 + t0_31); // 1
        t1_15 += (1 - rt1_15) * t0_30;     // 0, 1, 2, 3, 4, 5, 6, 7

        char rt2_00 = (input[id] > 7); // root 2_00
        char t2_00 = rt2_00 * (8 + t1_01);
        t2_00 += (1 - rt2_00) * t1_00;
        // 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15

        char rt2_01 = (input[id] > 23); // root 2_01
        char t2_01 = rt2_01 * (8 + t1_03);
        t2_01 += (1 - rt2_01) * t1_02;
        // 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15

        char rt2_02 = (input[id] > 39); // root 2_02
        char t2_02 = rt2_02 * (8 + t1_05);
        t2_02 += (1 - rt2_02) * t1_04;
        // 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15

        char rt2_03 = (input[id] > 55); // root 2_03
        char t2_03 = rt2_03 * (8 + t1_07);
        t2_03 += (1 - rt2_03) * t1_06;
        // 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15

        char rt2_04 = (input[id] > 71); // root 2_04
        char t2_04 = rt2_04 * (8 + t1_09);
        t2_04 += (1 - rt2_04) * t1_08;
        // 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15

        char rt2_05 = (input[id] > 87); // root 2_05
        char t2_05 = rt2_05 * (8 + t1_11);
        t2_05 += (1 - rt2_05) * t1_10;
        // 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15

        char rt2_06 = (input[id] > 103); // root 2_06
        char t2_06 = rt2_06 * (8 + t1_13);
        t2_06 += (1 - rt2_06) * t1_12;
        // 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15

        char rt2_07 = (input[id] > 119); // root 2_07
        char t2_07 = rt2_07 * (8 + t1_15);
        t2_07 += (1 - rt2_07) * t1_14;
        // 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15

        char rt3_00 = (input[id] > 15); // root 3_00
        char t3_00 = rt3_00 * (16 + t2_01);
        t3_00 += (1 - rt3_00) * t2_00;
        // 0, ..., 31

        char rt3_01 = (input[id] > 47); // root 3_01
        char t3_01 = rt3_01 * (16 + t2_03);
        t3_01 += (1 - rt3_01) * t2_02;
        // 0, ..., 31

        char rt3_02 = (input[id] > 79); // root 3_02
        char t3_02 = rt3_02 * (16 + t2_05);
        t3_02 += (1 - rt3_02) * t2_04;
        // 0, ..., 31

        char rt3_03 = (input[id] > 111); // root 3_03
        char t3_03 = rt3_03 * (16 + t2_07);
        t3_03 += (1 - rt3_03) * t2_06;
        // 0, ..., 31

        char rt4_00 = (input[id] > 31); // root 4_00
        char t4_00 = rt4_00 * (32 + t3_01);
        t4_00 += (1 - rt4_00) * t3_00;
        // 0, ..., 64

        char rt4_01 = (input[id] > 95); // root 4_01
        char t4_01 = rt4_01 * (32 + t3_03);
        t4_01 += (1 - rt4_01) * t3_02;
        // 0, ..., 64

        char root = (input[id] > 63); // root 10
        char leaf = root * (64 + t4_01);
        leaf += (1 - root) * t4_00;
        // 0, ... , 128

        vR[id] = leaf;
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

#if defined(_RF_WITH_CALC_1TREE_1INPUT_5LEVEL) || defined(_RF_WITH_IF_1TREE_1INPUT_7LEVEL_BEST) ||     \
    defined(_RF_WITH_IF_1TREE_1INPUT_7LEVEL_WORST) || defined(_RF_WITH_IF_4TREE_1INPUT_5LEVEL_BEST) || \
    defined(_RF_WITH_IF_4TREE_1INPUT_5LEVEL_WORST)
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
        if (h_input[i] != h_vR[i])
        {
            printf("Error!!");
            flag = 0;
            break;
        }
#endif
    }

    if (flag == 1)
    {
        printf("Return correct");
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
#if defined(_RF_WITH_IF_1TREE_1INPUT_7LEVEL_WORST)
        ip[i] = (float)((i % WARP_SIZE) * 4);

#elif defined(_RF_WITH_IF_1TREE_1INPUT_3LEVEL_BEST) || defined(_RF_WITH_IF_1TREE_1INPUT_7LEVEL_BEST) || \
    defined(_RF_WITH_IF_4TREE_1INPUT_5LEVEL_BEST)
        ip[i] = (float)(0);

#elif defined(_RF_WITH_IF_1TREE_1INPUT_3LEVEL_WORST) || defined(_RF_WITH_IF_4TREE_1INPUT_5LEVEL_WORST)
        ip[i] = (float)(i % WARP_SIZE);
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
