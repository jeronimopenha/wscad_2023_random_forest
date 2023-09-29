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

void initData(float *ip, int size);
void registerTime(float value);

#define _MOD 32
#define _10TREE
#define EXP_NAME "_RF_CALC_10TREE_5LV_1INPUT_50000000"

// RF_with_if

__global__ void RF_kernel(float *input, const int n, const int offset0, const int offset1, const int offset2, const int offset3, const int offset4, const int offset5, const int offset6, const int offset7, const int offset8, const int offset9, float *vR)
{
	int i = blockIdx.x * blockDim.x + threadIdx.x;
	if (i < n)
	{
int rt0_0_0 = (input[i] > (1+offset0));
int t0_0_0 = rt0_0_0 * (2 + (input[i] > (2+offset0)));
t0_0_0 += (1 - rt0_0_0) * (input[i] > (0+offset0));

int rt0_0_1 = (input[i] > (5+offset0));
int t0_0_1 = rt0_0_1 * (2 + (input[i] > (6+offset0)));
t0_0_1 += (1 - rt0_0_1) * (input[i] > (4+offset0));

int rt0_0_2 = (input[i] > (9+offset0));
int t0_0_2 = rt0_0_2 * (2 + (input[i] > (10+offset0)));
t0_0_2 += (1 - rt0_0_2) * (input[i] > (8+offset0));

int rt0_0_3 = (input[i] > (13+offset0));
int t0_0_3 = rt0_0_3 * (2 + (input[i] > (14+offset0)));
t0_0_3 += (1 - rt0_0_3) * (input[i] > (12+offset0));

int rt0_0_4 = (input[i] > (17+offset0));
int t0_0_4 = rt0_0_4 * (2 + (input[i] > (18+offset0)));
t0_0_4 += (1 - rt0_0_4) * (input[i] > (16+offset0));

int rt0_0_5 = (input[i] > (21+offset0));
int t0_0_5 = rt0_0_5 * (2 + (input[i] > (22+offset0)));
t0_0_5 += (1 - rt0_0_5) * (input[i] > (20+offset0));

int rt0_0_6 = (input[i] > (25+offset0));
int t0_0_6 = rt0_0_6 * (2 + (input[i] > (26+offset0)));
t0_0_6 += (1 - rt0_0_6) * (input[i] > (24+offset0));

int rt0_0_7 = (input[i] > (29+offset0));
int t0_0_7 = rt0_0_7 * (2 + (input[i] > (30+offset0)));
t0_0_7 += (1 - rt0_0_7) * (input[i] > (28+offset0));

int rt0_1_0 = (input[i] > (3+offset0));
int t0_1_0 = rt0_1_0 * (4 + t0_0_1);
t0_1_0 += (1 - rt0_1_0) * t0_0_0;

int rt0_1_1 = (input[i] > (11+offset0));
int t0_1_1 = rt0_1_1 * (4 + t0_0_3);
t0_1_1 += (1 - rt0_1_1) * t0_0_2;

int rt0_1_2 = (input[i] > (19+offset0));
int t0_1_2 = rt0_1_2 * (4 + t0_0_5);
t0_1_2 += (1 - rt0_1_2) * t0_0_4;

int rt0_1_3 = (input[i] > (27+offset0));
int t0_1_3 = rt0_1_3 * (4 + t0_0_7);
t0_1_3 += (1 - rt0_1_3) * t0_0_6;

int rt0_2_0 = (input[i] > (7+offset0));
int t0_2_0 = rt0_2_0 * (8 + t0_1_1);
t0_2_0 += (1 - rt0_2_0) * t0_1_0;

int rt0_2_1 = (input[i] > (23+offset0));
int t0_2_1 = rt0_2_1 * (8 + t0_1_3);
t0_2_1 += (1 - rt0_2_1) * t0_1_2;

int rt0_3_0 = (input[i] > (15+offset0));
int t0_3_0 = rt0_3_0 * (16 + t0_2_1);
t0_3_0 += (1 - rt0_3_0) * t0_2_0;

int rt1_0_0 = (input[i] > (1+offset1));
int t1_0_0 = rt1_0_0 * (2 + (input[i] > (2+offset1)));
t1_0_0 += (1 - rt1_0_0) * (input[i] > (0+offset1));

int rt1_0_1 = (input[i] > (5+offset1));
int t1_0_1 = rt1_0_1 * (2 + (input[i] > (6+offset1)));
t1_0_1 += (1 - rt1_0_1) * (input[i] > (4+offset1));

int rt1_0_2 = (input[i] > (9+offset1));
int t1_0_2 = rt1_0_2 * (2 + (input[i] > (10+offset1)));
t1_0_2 += (1 - rt1_0_2) * (input[i] > (8+offset1));

int rt1_0_3 = (input[i] > (13+offset1));
int t1_0_3 = rt1_0_3 * (2 + (input[i] > (14+offset1)));
t1_0_3 += (1 - rt1_0_3) * (input[i] > (12+offset1));

int rt1_0_4 = (input[i] > (17+offset1));
int t1_0_4 = rt1_0_4 * (2 + (input[i] > (18+offset1)));
t1_0_4 += (1 - rt1_0_4) * (input[i] > (16+offset1));

int rt1_0_5 = (input[i] > (21+offset1));
int t1_0_5 = rt1_0_5 * (2 + (input[i] > (22+offset1)));
t1_0_5 += (1 - rt1_0_5) * (input[i] > (20+offset1));

int rt1_0_6 = (input[i] > (25+offset1));
int t1_0_6 = rt1_0_6 * (2 + (input[i] > (26+offset1)));
t1_0_6 += (1 - rt1_0_6) * (input[i] > (24+offset1));

int rt1_0_7 = (input[i] > (29+offset1));
int t1_0_7 = rt1_0_7 * (2 + (input[i] > (30+offset1)));
t1_0_7 += (1 - rt1_0_7) * (input[i] > (28+offset1));

int rt1_1_0 = (input[i] > (3+offset1));
int t1_1_0 = rt1_1_0 * (4 + t1_0_1);
t1_1_0 += (1 - rt1_1_0) * t1_0_0;

int rt1_1_1 = (input[i] > (11+offset1));
int t1_1_1 = rt1_1_1 * (4 + t1_0_3);
t1_1_1 += (1 - rt1_1_1) * t1_0_2;

int rt1_1_2 = (input[i] > (19+offset1));
int t1_1_2 = rt1_1_2 * (4 + t1_0_5);
t1_1_2 += (1 - rt1_1_2) * t1_0_4;

int rt1_1_3 = (input[i] > (27+offset1));
int t1_1_3 = rt1_1_3 * (4 + t1_0_7);
t1_1_3 += (1 - rt1_1_3) * t1_0_6;

int rt1_2_0 = (input[i] > (7+offset1));
int t1_2_0 = rt1_2_0 * (8 + t1_1_1);
t1_2_0 += (1 - rt1_2_0) * t1_1_0;

int rt1_2_1 = (input[i] > (23+offset1));
int t1_2_1 = rt1_2_1 * (8 + t1_1_3);
t1_2_1 += (1 - rt1_2_1) * t1_1_2;

int rt1_3_0 = (input[i] > (15+offset1));
int t1_3_0 = rt1_3_0 * (16 + t1_2_1);
t1_3_0 += (1 - rt1_3_0) * t1_2_0;

int rt2_0_0 = (input[i] > (1+offset2));
int t2_0_0 = rt2_0_0 * (2 + (input[i] > (2+offset2)));
t2_0_0 += (1 - rt2_0_0) * (input[i] > (0+offset2));

int rt2_0_1 = (input[i] > (5+offset2));
int t2_0_1 = rt2_0_1 * (2 + (input[i] > (6+offset2)));
t2_0_1 += (1 - rt2_0_1) * (input[i] > (4+offset2));

int rt2_0_2 = (input[i] > (9+offset2));
int t2_0_2 = rt2_0_2 * (2 + (input[i] > (10+offset2)));
t2_0_2 += (1 - rt2_0_2) * (input[i] > (8+offset2));

int rt2_0_3 = (input[i] > (13+offset2));
int t2_0_3 = rt2_0_3 * (2 + (input[i] > (14+offset2)));
t2_0_3 += (1 - rt2_0_3) * (input[i] > (12+offset2));

int rt2_0_4 = (input[i] > (17+offset2));
int t2_0_4 = rt2_0_4 * (2 + (input[i] > (18+offset2)));
t2_0_4 += (1 - rt2_0_4) * (input[i] > (16+offset2));

int rt2_0_5 = (input[i] > (21+offset2));
int t2_0_5 = rt2_0_5 * (2 + (input[i] > (22+offset2)));
t2_0_5 += (1 - rt2_0_5) * (input[i] > (20+offset2));

int rt2_0_6 = (input[i] > (25+offset2));
int t2_0_6 = rt2_0_6 * (2 + (input[i] > (26+offset2)));
t2_0_6 += (1 - rt2_0_6) * (input[i] > (24+offset2));

int rt2_0_7 = (input[i] > (29+offset2));
int t2_0_7 = rt2_0_7 * (2 + (input[i] > (30+offset2)));
t2_0_7 += (1 - rt2_0_7) * (input[i] > (28+offset2));

int rt2_1_0 = (input[i] > (3+offset2));
int t2_1_0 = rt2_1_0 * (4 + t2_0_1);
t2_1_0 += (1 - rt2_1_0) * t2_0_0;

int rt2_1_1 = (input[i] > (11+offset2));
int t2_1_1 = rt2_1_1 * (4 + t2_0_3);
t2_1_1 += (1 - rt2_1_1) * t2_0_2;

int rt2_1_2 = (input[i] > (19+offset2));
int t2_1_2 = rt2_1_2 * (4 + t2_0_5);
t2_1_2 += (1 - rt2_1_2) * t2_0_4;

int rt2_1_3 = (input[i] > (27+offset2));
int t2_1_3 = rt2_1_3 * (4 + t2_0_7);
t2_1_3 += (1 - rt2_1_3) * t2_0_6;

int rt2_2_0 = (input[i] > (7+offset2));
int t2_2_0 = rt2_2_0 * (8 + t2_1_1);
t2_2_0 += (1 - rt2_2_0) * t2_1_0;

int rt2_2_1 = (input[i] > (23+offset2));
int t2_2_1 = rt2_2_1 * (8 + t2_1_3);
t2_2_1 += (1 - rt2_2_1) * t2_1_2;

int rt2_3_0 = (input[i] > (15+offset2));
int t2_3_0 = rt2_3_0 * (16 + t2_2_1);
t2_3_0 += (1 - rt2_3_0) * t2_2_0;

int rt3_0_0 = (input[i] > (1+offset3));
int t3_0_0 = rt3_0_0 * (2 + (input[i] > (2+offset3)));
t3_0_0 += (1 - rt3_0_0) * (input[i] > (0+offset3));

int rt3_0_1 = (input[i] > (5+offset3));
int t3_0_1 = rt3_0_1 * (2 + (input[i] > (6+offset3)));
t3_0_1 += (1 - rt3_0_1) * (input[i] > (4+offset3));

int rt3_0_2 = (input[i] > (9+offset3));
int t3_0_2 = rt3_0_2 * (2 + (input[i] > (10+offset3)));
t3_0_2 += (1 - rt3_0_2) * (input[i] > (8+offset3));

int rt3_0_3 = (input[i] > (13+offset3));
int t3_0_3 = rt3_0_3 * (2 + (input[i] > (14+offset3)));
t3_0_3 += (1 - rt3_0_3) * (input[i] > (12+offset3));

int rt3_0_4 = (input[i] > (17+offset3));
int t3_0_4 = rt3_0_4 * (2 + (input[i] > (18+offset3)));
t3_0_4 += (1 - rt3_0_4) * (input[i] > (16+offset3));

int rt3_0_5 = (input[i] > (21+offset3));
int t3_0_5 = rt3_0_5 * (2 + (input[i] > (22+offset3)));
t3_0_5 += (1 - rt3_0_5) * (input[i] > (20+offset3));

int rt3_0_6 = (input[i] > (25+offset3));
int t3_0_6 = rt3_0_6 * (2 + (input[i] > (26+offset3)));
t3_0_6 += (1 - rt3_0_6) * (input[i] > (24+offset3));

int rt3_0_7 = (input[i] > (29+offset3));
int t3_0_7 = rt3_0_7 * (2 + (input[i] > (30+offset3)));
t3_0_7 += (1 - rt3_0_7) * (input[i] > (28+offset3));

int rt3_1_0 = (input[i] > (3+offset3));
int t3_1_0 = rt3_1_0 * (4 + t3_0_1);
t3_1_0 += (1 - rt3_1_0) * t3_0_0;

int rt3_1_1 = (input[i] > (11+offset3));
int t3_1_1 = rt3_1_1 * (4 + t3_0_3);
t3_1_1 += (1 - rt3_1_1) * t3_0_2;

int rt3_1_2 = (input[i] > (19+offset3));
int t3_1_2 = rt3_1_2 * (4 + t3_0_5);
t3_1_2 += (1 - rt3_1_2) * t3_0_4;

int rt3_1_3 = (input[i] > (27+offset3));
int t3_1_3 = rt3_1_3 * (4 + t3_0_7);
t3_1_3 += (1 - rt3_1_3) * t3_0_6;

int rt3_2_0 = (input[i] > (7+offset3));
int t3_2_0 = rt3_2_0 * (8 + t3_1_1);
t3_2_0 += (1 - rt3_2_0) * t3_1_0;

int rt3_2_1 = (input[i] > (23+offset3));
int t3_2_1 = rt3_2_1 * (8 + t3_1_3);
t3_2_1 += (1 - rt3_2_1) * t3_1_2;

int rt3_3_0 = (input[i] > (15+offset3));
int t3_3_0 = rt3_3_0 * (16 + t3_2_1);
t3_3_0 += (1 - rt3_3_0) * t3_2_0;

int rt4_0_0 = (input[i] > (1+offset4));
int t4_0_0 = rt4_0_0 * (2 + (input[i] > (2+offset4)));
t4_0_0 += (1 - rt4_0_0) * (input[i] > (0+offset4));

int rt4_0_1 = (input[i] > (5+offset4));
int t4_0_1 = rt4_0_1 * (2 + (input[i] > (6+offset4)));
t4_0_1 += (1 - rt4_0_1) * (input[i] > (4+offset4));

int rt4_0_2 = (input[i] > (9+offset4));
int t4_0_2 = rt4_0_2 * (2 + (input[i] > (10+offset4)));
t4_0_2 += (1 - rt4_0_2) * (input[i] > (8+offset4));

int rt4_0_3 = (input[i] > (13+offset4));
int t4_0_3 = rt4_0_3 * (2 + (input[i] > (14+offset4)));
t4_0_3 += (1 - rt4_0_3) * (input[i] > (12+offset4));

int rt4_0_4 = (input[i] > (17+offset4));
int t4_0_4 = rt4_0_4 * (2 + (input[i] > (18+offset4)));
t4_0_4 += (1 - rt4_0_4) * (input[i] > (16+offset4));

int rt4_0_5 = (input[i] > (21+offset4));
int t4_0_5 = rt4_0_5 * (2 + (input[i] > (22+offset4)));
t4_0_5 += (1 - rt4_0_5) * (input[i] > (20+offset4));

int rt4_0_6 = (input[i] > (25+offset4));
int t4_0_6 = rt4_0_6 * (2 + (input[i] > (26+offset4)));
t4_0_6 += (1 - rt4_0_6) * (input[i] > (24+offset4));

int rt4_0_7 = (input[i] > (29+offset4));
int t4_0_7 = rt4_0_7 * (2 + (input[i] > (30+offset4)));
t4_0_7 += (1 - rt4_0_7) * (input[i] > (28+offset4));

int rt4_1_0 = (input[i] > (3+offset4));
int t4_1_0 = rt4_1_0 * (4 + t4_0_1);
t4_1_0 += (1 - rt4_1_0) * t4_0_0;

int rt4_1_1 = (input[i] > (11+offset4));
int t4_1_1 = rt4_1_1 * (4 + t4_0_3);
t4_1_1 += (1 - rt4_1_1) * t4_0_2;

int rt4_1_2 = (input[i] > (19+offset4));
int t4_1_2 = rt4_1_2 * (4 + t4_0_5);
t4_1_2 += (1 - rt4_1_2) * t4_0_4;

int rt4_1_3 = (input[i] > (27+offset4));
int t4_1_3 = rt4_1_3 * (4 + t4_0_7);
t4_1_3 += (1 - rt4_1_3) * t4_0_6;

int rt4_2_0 = (input[i] > (7+offset4));
int t4_2_0 = rt4_2_0 * (8 + t4_1_1);
t4_2_0 += (1 - rt4_2_0) * t4_1_0;

int rt4_2_1 = (input[i] > (23+offset4));
int t4_2_1 = rt4_2_1 * (8 + t4_1_3);
t4_2_1 += (1 - rt4_2_1) * t4_1_2;

int rt4_3_0 = (input[i] > (15+offset4));
int t4_3_0 = rt4_3_0 * (16 + t4_2_1);
t4_3_0 += (1 - rt4_3_0) * t4_2_0;

int rt5_0_0 = (input[i] > (1+offset5));
int t5_0_0 = rt5_0_0 * (2 + (input[i] > (2+offset5)));
t5_0_0 += (1 - rt5_0_0) * (input[i] > (0+offset5));

int rt5_0_1 = (input[i] > (5+offset5));
int t5_0_1 = rt5_0_1 * (2 + (input[i] > (6+offset5)));
t5_0_1 += (1 - rt5_0_1) * (input[i] > (4+offset5));

int rt5_0_2 = (input[i] > (9+offset5));
int t5_0_2 = rt5_0_2 * (2 + (input[i] > (10+offset5)));
t5_0_2 += (1 - rt5_0_2) * (input[i] > (8+offset5));

int rt5_0_3 = (input[i] > (13+offset5));
int t5_0_3 = rt5_0_3 * (2 + (input[i] > (14+offset5)));
t5_0_3 += (1 - rt5_0_3) * (input[i] > (12+offset5));

int rt5_0_4 = (input[i] > (17+offset5));
int t5_0_4 = rt5_0_4 * (2 + (input[i] > (18+offset5)));
t5_0_4 += (1 - rt5_0_4) * (input[i] > (16+offset5));

int rt5_0_5 = (input[i] > (21+offset5));
int t5_0_5 = rt5_0_5 * (2 + (input[i] > (22+offset5)));
t5_0_5 += (1 - rt5_0_5) * (input[i] > (20+offset5));

int rt5_0_6 = (input[i] > (25+offset5));
int t5_0_6 = rt5_0_6 * (2 + (input[i] > (26+offset5)));
t5_0_6 += (1 - rt5_0_6) * (input[i] > (24+offset5));

int rt5_0_7 = (input[i] > (29+offset5));
int t5_0_7 = rt5_0_7 * (2 + (input[i] > (30+offset5)));
t5_0_7 += (1 - rt5_0_7) * (input[i] > (28+offset5));

int rt5_1_0 = (input[i] > (3+offset5));
int t5_1_0 = rt5_1_0 * (4 + t5_0_1);
t5_1_0 += (1 - rt5_1_0) * t5_0_0;

int rt5_1_1 = (input[i] > (11+offset5));
int t5_1_1 = rt5_1_1 * (4 + t5_0_3);
t5_1_1 += (1 - rt5_1_1) * t5_0_2;

int rt5_1_2 = (input[i] > (19+offset5));
int t5_1_2 = rt5_1_2 * (4 + t5_0_5);
t5_1_2 += (1 - rt5_1_2) * t5_0_4;

int rt5_1_3 = (input[i] > (27+offset5));
int t5_1_3 = rt5_1_3 * (4 + t5_0_7);
t5_1_3 += (1 - rt5_1_3) * t5_0_6;

int rt5_2_0 = (input[i] > (7+offset5));
int t5_2_0 = rt5_2_0 * (8 + t5_1_1);
t5_2_0 += (1 - rt5_2_0) * t5_1_0;

int rt5_2_1 = (input[i] > (23+offset5));
int t5_2_1 = rt5_2_1 * (8 + t5_1_3);
t5_2_1 += (1 - rt5_2_1) * t5_1_2;

int rt5_3_0 = (input[i] > (15+offset5));
int t5_3_0 = rt5_3_0 * (16 + t5_2_1);
t5_3_0 += (1 - rt5_3_0) * t5_2_0;

int rt6_0_0 = (input[i] > (1+offset6));
int t6_0_0 = rt6_0_0 * (2 + (input[i] > (2+offset6)));
t6_0_0 += (1 - rt6_0_0) * (input[i] > (0+offset6));

int rt6_0_1 = (input[i] > (5+offset6));
int t6_0_1 = rt6_0_1 * (2 + (input[i] > (6+offset6)));
t6_0_1 += (1 - rt6_0_1) * (input[i] > (4+offset6));

int rt6_0_2 = (input[i] > (9+offset6));
int t6_0_2 = rt6_0_2 * (2 + (input[i] > (10+offset6)));
t6_0_2 += (1 - rt6_0_2) * (input[i] > (8+offset6));

int rt6_0_3 = (input[i] > (13+offset6));
int t6_0_3 = rt6_0_3 * (2 + (input[i] > (14+offset6)));
t6_0_3 += (1 - rt6_0_3) * (input[i] > (12+offset6));

int rt6_0_4 = (input[i] > (17+offset6));
int t6_0_4 = rt6_0_4 * (2 + (input[i] > (18+offset6)));
t6_0_4 += (1 - rt6_0_4) * (input[i] > (16+offset6));

int rt6_0_5 = (input[i] > (21+offset6));
int t6_0_5 = rt6_0_5 * (2 + (input[i] > (22+offset6)));
t6_0_5 += (1 - rt6_0_5) * (input[i] > (20+offset6));

int rt6_0_6 = (input[i] > (25+offset6));
int t6_0_6 = rt6_0_6 * (2 + (input[i] > (26+offset6)));
t6_0_6 += (1 - rt6_0_6) * (input[i] > (24+offset6));

int rt6_0_7 = (input[i] > (29+offset6));
int t6_0_7 = rt6_0_7 * (2 + (input[i] > (30+offset6)));
t6_0_7 += (1 - rt6_0_7) * (input[i] > (28+offset6));

int rt6_1_0 = (input[i] > (3+offset6));
int t6_1_0 = rt6_1_0 * (4 + t6_0_1);
t6_1_0 += (1 - rt6_1_0) * t6_0_0;

int rt6_1_1 = (input[i] > (11+offset6));
int t6_1_1 = rt6_1_1 * (4 + t6_0_3);
t6_1_1 += (1 - rt6_1_1) * t6_0_2;

int rt6_1_2 = (input[i] > (19+offset6));
int t6_1_2 = rt6_1_2 * (4 + t6_0_5);
t6_1_2 += (1 - rt6_1_2) * t6_0_4;

int rt6_1_3 = (input[i] > (27+offset6));
int t6_1_3 = rt6_1_3 * (4 + t6_0_7);
t6_1_3 += (1 - rt6_1_3) * t6_0_6;

int rt6_2_0 = (input[i] > (7+offset6));
int t6_2_0 = rt6_2_0 * (8 + t6_1_1);
t6_2_0 += (1 - rt6_2_0) * t6_1_0;

int rt6_2_1 = (input[i] > (23+offset6));
int t6_2_1 = rt6_2_1 * (8 + t6_1_3);
t6_2_1 += (1 - rt6_2_1) * t6_1_2;

int rt6_3_0 = (input[i] > (15+offset6));
int t6_3_0 = rt6_3_0 * (16 + t6_2_1);
t6_3_0 += (1 - rt6_3_0) * t6_2_0;

int rt7_0_0 = (input[i] > (1+offset7));
int t7_0_0 = rt7_0_0 * (2 + (input[i] > (2+offset7)));
t7_0_0 += (1 - rt7_0_0) * (input[i] > (0+offset7));

int rt7_0_1 = (input[i] > (5+offset7));
int t7_0_1 = rt7_0_1 * (2 + (input[i] > (6+offset7)));
t7_0_1 += (1 - rt7_0_1) * (input[i] > (4+offset7));

int rt7_0_2 = (input[i] > (9+offset7));
int t7_0_2 = rt7_0_2 * (2 + (input[i] > (10+offset7)));
t7_0_2 += (1 - rt7_0_2) * (input[i] > (8+offset7));

int rt7_0_3 = (input[i] > (13+offset7));
int t7_0_3 = rt7_0_3 * (2 + (input[i] > (14+offset7)));
t7_0_3 += (1 - rt7_0_3) * (input[i] > (12+offset7));

int rt7_0_4 = (input[i] > (17+offset7));
int t7_0_4 = rt7_0_4 * (2 + (input[i] > (18+offset7)));
t7_0_4 += (1 - rt7_0_4) * (input[i] > (16+offset7));

int rt7_0_5 = (input[i] > (21+offset7));
int t7_0_5 = rt7_0_5 * (2 + (input[i] > (22+offset7)));
t7_0_5 += (1 - rt7_0_5) * (input[i] > (20+offset7));

int rt7_0_6 = (input[i] > (25+offset7));
int t7_0_6 = rt7_0_6 * (2 + (input[i] > (26+offset7)));
t7_0_6 += (1 - rt7_0_6) * (input[i] > (24+offset7));

int rt7_0_7 = (input[i] > (29+offset7));
int t7_0_7 = rt7_0_7 * (2 + (input[i] > (30+offset7)));
t7_0_7 += (1 - rt7_0_7) * (input[i] > (28+offset7));

int rt7_1_0 = (input[i] > (3+offset7));
int t7_1_0 = rt7_1_0 * (4 + t7_0_1);
t7_1_0 += (1 - rt7_1_0) * t7_0_0;

int rt7_1_1 = (input[i] > (11+offset7));
int t7_1_1 = rt7_1_1 * (4 + t7_0_3);
t7_1_1 += (1 - rt7_1_1) * t7_0_2;

int rt7_1_2 = (input[i] > (19+offset7));
int t7_1_2 = rt7_1_2 * (4 + t7_0_5);
t7_1_2 += (1 - rt7_1_2) * t7_0_4;

int rt7_1_3 = (input[i] > (27+offset7));
int t7_1_3 = rt7_1_3 * (4 + t7_0_7);
t7_1_3 += (1 - rt7_1_3) * t7_0_6;

int rt7_2_0 = (input[i] > (7+offset7));
int t7_2_0 = rt7_2_0 * (8 + t7_1_1);
t7_2_0 += (1 - rt7_2_0) * t7_1_0;

int rt7_2_1 = (input[i] > (23+offset7));
int t7_2_1 = rt7_2_1 * (8 + t7_1_3);
t7_2_1 += (1 - rt7_2_1) * t7_1_2;

int rt7_3_0 = (input[i] > (15+offset7));
int t7_3_0 = rt7_3_0 * (16 + t7_2_1);
t7_3_0 += (1 - rt7_3_0) * t7_2_0;

int rt8_0_0 = (input[i] > (1+offset8));
int t8_0_0 = rt8_0_0 * (2 + (input[i] > (2+offset8)));
t8_0_0 += (1 - rt8_0_0) * (input[i] > (0+offset8));

int rt8_0_1 = (input[i] > (5+offset8));
int t8_0_1 = rt8_0_1 * (2 + (input[i] > (6+offset8)));
t8_0_1 += (1 - rt8_0_1) * (input[i] > (4+offset8));

int rt8_0_2 = (input[i] > (9+offset8));
int t8_0_2 = rt8_0_2 * (2 + (input[i] > (10+offset8)));
t8_0_2 += (1 - rt8_0_2) * (input[i] > (8+offset8));

int rt8_0_3 = (input[i] > (13+offset8));
int t8_0_3 = rt8_0_3 * (2 + (input[i] > (14+offset8)));
t8_0_3 += (1 - rt8_0_3) * (input[i] > (12+offset8));

int rt8_0_4 = (input[i] > (17+offset8));
int t8_0_4 = rt8_0_4 * (2 + (input[i] > (18+offset8)));
t8_0_4 += (1 - rt8_0_4) * (input[i] > (16+offset8));

int rt8_0_5 = (input[i] > (21+offset8));
int t8_0_5 = rt8_0_5 * (2 + (input[i] > (22+offset8)));
t8_0_5 += (1 - rt8_0_5) * (input[i] > (20+offset8));

int rt8_0_6 = (input[i] > (25+offset8));
int t8_0_6 = rt8_0_6 * (2 + (input[i] > (26+offset8)));
t8_0_6 += (1 - rt8_0_6) * (input[i] > (24+offset8));

int rt8_0_7 = (input[i] > (29+offset8));
int t8_0_7 = rt8_0_7 * (2 + (input[i] > (30+offset8)));
t8_0_7 += (1 - rt8_0_7) * (input[i] > (28+offset8));

int rt8_1_0 = (input[i] > (3+offset8));
int t8_1_0 = rt8_1_0 * (4 + t8_0_1);
t8_1_0 += (1 - rt8_1_0) * t8_0_0;

int rt8_1_1 = (input[i] > (11+offset8));
int t8_1_1 = rt8_1_1 * (4 + t8_0_3);
t8_1_1 += (1 - rt8_1_1) * t8_0_2;

int rt8_1_2 = (input[i] > (19+offset8));
int t8_1_2 = rt8_1_2 * (4 + t8_0_5);
t8_1_2 += (1 - rt8_1_2) * t8_0_4;

int rt8_1_3 = (input[i] > (27+offset8));
int t8_1_3 = rt8_1_3 * (4 + t8_0_7);
t8_1_3 += (1 - rt8_1_3) * t8_0_6;

int rt8_2_0 = (input[i] > (7+offset8));
int t8_2_0 = rt8_2_0 * (8 + t8_1_1);
t8_2_0 += (1 - rt8_2_0) * t8_1_0;

int rt8_2_1 = (input[i] > (23+offset8));
int t8_2_1 = rt8_2_1 * (8 + t8_1_3);
t8_2_1 += (1 - rt8_2_1) * t8_1_2;

int rt8_3_0 = (input[i] > (15+offset8));
int t8_3_0 = rt8_3_0 * (16 + t8_2_1);
t8_3_0 += (1 - rt8_3_0) * t8_2_0;

int rt9_0_0 = (input[i] > (1+offset9));
int t9_0_0 = rt9_0_0 * (2 + (input[i] > (2+offset9)));
t9_0_0 += (1 - rt9_0_0) * (input[i] > (0+offset9));

int rt9_0_1 = (input[i] > (5+offset9));
int t9_0_1 = rt9_0_1 * (2 + (input[i] > (6+offset9)));
t9_0_1 += (1 - rt9_0_1) * (input[i] > (4+offset9));

int rt9_0_2 = (input[i] > (9+offset9));
int t9_0_2 = rt9_0_2 * (2 + (input[i] > (10+offset9)));
t9_0_2 += (1 - rt9_0_2) * (input[i] > (8+offset9));

int rt9_0_3 = (input[i] > (13+offset9));
int t9_0_3 = rt9_0_3 * (2 + (input[i] > (14+offset9)));
t9_0_3 += (1 - rt9_0_3) * (input[i] > (12+offset9));

int rt9_0_4 = (input[i] > (17+offset9));
int t9_0_4 = rt9_0_4 * (2 + (input[i] > (18+offset9)));
t9_0_4 += (1 - rt9_0_4) * (input[i] > (16+offset9));

int rt9_0_5 = (input[i] > (21+offset9));
int t9_0_5 = rt9_0_5 * (2 + (input[i] > (22+offset9)));
t9_0_5 += (1 - rt9_0_5) * (input[i] > (20+offset9));

int rt9_0_6 = (input[i] > (25+offset9));
int t9_0_6 = rt9_0_6 * (2 + (input[i] > (26+offset9)));
t9_0_6 += (1 - rt9_0_6) * (input[i] > (24+offset9));

int rt9_0_7 = (input[i] > (29+offset9));
int t9_0_7 = rt9_0_7 * (2 + (input[i] > (30+offset9)));
t9_0_7 += (1 - rt9_0_7) * (input[i] > (28+offset9));

int rt9_1_0 = (input[i] > (3+offset9));
int t9_1_0 = rt9_1_0 * (4 + t9_0_1);
t9_1_0 += (1 - rt9_1_0) * t9_0_0;

int rt9_1_1 = (input[i] > (11+offset9));
int t9_1_1 = rt9_1_1 * (4 + t9_0_3);
t9_1_1 += (1 - rt9_1_1) * t9_0_2;

int rt9_1_2 = (input[i] > (19+offset9));
int t9_1_2 = rt9_1_2 * (4 + t9_0_5);
t9_1_2 += (1 - rt9_1_2) * t9_0_4;

int rt9_1_3 = (input[i] > (27+offset9));
int t9_1_3 = rt9_1_3 * (4 + t9_0_7);
t9_1_3 += (1 - rt9_1_3) * t9_0_6;

int rt9_2_0 = (input[i] > (7+offset9));
int t9_2_0 = rt9_2_0 * (8 + t9_1_1);
t9_2_0 += (1 - rt9_2_0) * t9_1_0;

int rt9_2_1 = (input[i] > (23+offset9));
int t9_2_1 = rt9_2_1 * (8 + t9_1_3);
t9_2_1 += (1 - rt9_2_1) * t9_1_2;

int rt9_3_0 = (input[i] > (15+offset9));
int t9_3_0 = rt9_3_0 * (16 + t9_2_1);
t9_3_0 += (1 - rt9_3_0) * t9_2_0;

vR[i] = t0_3_0+ (t0_3_0 == t1_3_0)+ (t0_3_0 == t2_3_0)+ (t0_3_0 == t3_3_0)+ (t0_3_0 == t4_3_0)+ (t0_3_0 == t5_3_0)+ (t0_3_0 == t6_3_0)+ (t0_3_0 == t7_3_0)+ (t0_3_0 == t8_3_0)+ (t0_3_0 == t9_3_0);
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
#elif defined(_5TREE)
	RF_kernel<<<grid, block>>>(d_input, nElem, 0, 0, 0, 0, 0, d_vR);
#elif defined(_6TREE)
	RF_kernel<<<grid, block>>>(d_input, nElem, 0, 0, 0, 0, 0, 0, d_vR);
#elif defined(_7TREE)
	RF_kernel<<<grid, block>>>(d_input, nElem, 0, 0, 0, 0, 0, 0, 0, d_vR);
#elif defined(_8TREE)
	RF_kernel<<<grid, block>>>(d_input, nElem, 0, 0, 0, 0, 0, 0, 0, 0, d_vR);
#elif defined(_9TREE)
	RF_kernel<<<grid, block>>>(d_input, nElem, 0, 0, 0, 0, 0, 0, 0, 0, 0, d_vR);
#elif defined(_10TREE)
	RF_kernel<<<grid, block>>>(d_input, nElem, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, d_vR);
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
//		printf("Return correct");
	}
	else
	{
//		printf("Error!!");
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
		ip[i] = (float)(0);
	}
	return;
}

void registerTime(float value)
{
	printf("[CUDA - Random Forest]: Time spent: %f.\n", value);
}
