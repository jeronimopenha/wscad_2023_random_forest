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

#define _MOD 128
#define _2TREE
#define EXP_NAME "_RF_CALC_2TREE_7LV_1INPUT_50000000"

// RF_with_if

__global__ void RF_kernel(float *input, const int n, const int offset0, const int offset1, float *vR)
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

int rt0_0_8 = (input[i] > (33+offset0));
int t0_0_8 = rt0_0_8 * (2 + (input[i] > (34+offset0)));
t0_0_8 += (1 - rt0_0_8) * (input[i] > (32+offset0));

int rt0_0_9 = (input[i] > (37+offset0));
int t0_0_9 = rt0_0_9 * (2 + (input[i] > (38+offset0)));
t0_0_9 += (1 - rt0_0_9) * (input[i] > (36+offset0));

int rt0_0_10 = (input[i] > (41+offset0));
int t0_0_10 = rt0_0_10 * (2 + (input[i] > (42+offset0)));
t0_0_10 += (1 - rt0_0_10) * (input[i] > (40+offset0));

int rt0_0_11 = (input[i] > (45+offset0));
int t0_0_11 = rt0_0_11 * (2 + (input[i] > (46+offset0)));
t0_0_11 += (1 - rt0_0_11) * (input[i] > (44+offset0));

int rt0_0_12 = (input[i] > (49+offset0));
int t0_0_12 = rt0_0_12 * (2 + (input[i] > (50+offset0)));
t0_0_12 += (1 - rt0_0_12) * (input[i] > (48+offset0));

int rt0_0_13 = (input[i] > (53+offset0));
int t0_0_13 = rt0_0_13 * (2 + (input[i] > (54+offset0)));
t0_0_13 += (1 - rt0_0_13) * (input[i] > (52+offset0));

int rt0_0_14 = (input[i] > (57+offset0));
int t0_0_14 = rt0_0_14 * (2 + (input[i] > (58+offset0)));
t0_0_14 += (1 - rt0_0_14) * (input[i] > (56+offset0));

int rt0_0_15 = (input[i] > (61+offset0));
int t0_0_15 = rt0_0_15 * (2 + (input[i] > (62+offset0)));
t0_0_15 += (1 - rt0_0_15) * (input[i] > (60+offset0));

int rt0_0_16 = (input[i] > (65+offset0));
int t0_0_16 = rt0_0_16 * (2 + (input[i] > (66+offset0)));
t0_0_16 += (1 - rt0_0_16) * (input[i] > (64+offset0));

int rt0_0_17 = (input[i] > (69+offset0));
int t0_0_17 = rt0_0_17 * (2 + (input[i] > (70+offset0)));
t0_0_17 += (1 - rt0_0_17) * (input[i] > (68+offset0));

int rt0_0_18 = (input[i] > (73+offset0));
int t0_0_18 = rt0_0_18 * (2 + (input[i] > (74+offset0)));
t0_0_18 += (1 - rt0_0_18) * (input[i] > (72+offset0));

int rt0_0_19 = (input[i] > (77+offset0));
int t0_0_19 = rt0_0_19 * (2 + (input[i] > (78+offset0)));
t0_0_19 += (1 - rt0_0_19) * (input[i] > (76+offset0));

int rt0_0_20 = (input[i] > (81+offset0));
int t0_0_20 = rt0_0_20 * (2 + (input[i] > (82+offset0)));
t0_0_20 += (1 - rt0_0_20) * (input[i] > (80+offset0));

int rt0_0_21 = (input[i] > (85+offset0));
int t0_0_21 = rt0_0_21 * (2 + (input[i] > (86+offset0)));
t0_0_21 += (1 - rt0_0_21) * (input[i] > (84+offset0));

int rt0_0_22 = (input[i] > (89+offset0));
int t0_0_22 = rt0_0_22 * (2 + (input[i] > (90+offset0)));
t0_0_22 += (1 - rt0_0_22) * (input[i] > (88+offset0));

int rt0_0_23 = (input[i] > (93+offset0));
int t0_0_23 = rt0_0_23 * (2 + (input[i] > (94+offset0)));
t0_0_23 += (1 - rt0_0_23) * (input[i] > (92+offset0));

int rt0_0_24 = (input[i] > (97+offset0));
int t0_0_24 = rt0_0_24 * (2 + (input[i] > (98+offset0)));
t0_0_24 += (1 - rt0_0_24) * (input[i] > (96+offset0));

int rt0_0_25 = (input[i] > (101+offset0));
int t0_0_25 = rt0_0_25 * (2 + (input[i] > (102+offset0)));
t0_0_25 += (1 - rt0_0_25) * (input[i] > (100+offset0));

int rt0_0_26 = (input[i] > (105+offset0));
int t0_0_26 = rt0_0_26 * (2 + (input[i] > (106+offset0)));
t0_0_26 += (1 - rt0_0_26) * (input[i] > (104+offset0));

int rt0_0_27 = (input[i] > (109+offset0));
int t0_0_27 = rt0_0_27 * (2 + (input[i] > (110+offset0)));
t0_0_27 += (1 - rt0_0_27) * (input[i] > (108+offset0));

int rt0_0_28 = (input[i] > (113+offset0));
int t0_0_28 = rt0_0_28 * (2 + (input[i] > (114+offset0)));
t0_0_28 += (1 - rt0_0_28) * (input[i] > (112+offset0));

int rt0_0_29 = (input[i] > (117+offset0));
int t0_0_29 = rt0_0_29 * (2 + (input[i] > (118+offset0)));
t0_0_29 += (1 - rt0_0_29) * (input[i] > (116+offset0));

int rt0_0_30 = (input[i] > (121+offset0));
int t0_0_30 = rt0_0_30 * (2 + (input[i] > (122+offset0)));
t0_0_30 += (1 - rt0_0_30) * (input[i] > (120+offset0));

int rt0_0_31 = (input[i] > (125+offset0));
int t0_0_31 = rt0_0_31 * (2 + (input[i] > (126+offset0)));
t0_0_31 += (1 - rt0_0_31) * (input[i] > (124+offset0));

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

int rt0_1_4 = (input[i] > (35+offset0));
int t0_1_4 = rt0_1_4 * (4 + t0_0_9);
t0_1_4 += (1 - rt0_1_4) * t0_0_8;

int rt0_1_5 = (input[i] > (43+offset0));
int t0_1_5 = rt0_1_5 * (4 + t0_0_11);
t0_1_5 += (1 - rt0_1_5) * t0_0_10;

int rt0_1_6 = (input[i] > (51+offset0));
int t0_1_6 = rt0_1_6 * (4 + t0_0_13);
t0_1_6 += (1 - rt0_1_6) * t0_0_12;

int rt0_1_7 = (input[i] > (59+offset0));
int t0_1_7 = rt0_1_7 * (4 + t0_0_15);
t0_1_7 += (1 - rt0_1_7) * t0_0_14;

int rt0_1_8 = (input[i] > (67+offset0));
int t0_1_8 = rt0_1_8 * (4 + t0_0_17);
t0_1_8 += (1 - rt0_1_8) * t0_0_16;

int rt0_1_9 = (input[i] > (75+offset0));
int t0_1_9 = rt0_1_9 * (4 + t0_0_19);
t0_1_9 += (1 - rt0_1_9) * t0_0_18;

int rt0_1_10 = (input[i] > (83+offset0));
int t0_1_10 = rt0_1_10 * (4 + t0_0_21);
t0_1_10 += (1 - rt0_1_10) * t0_0_20;

int rt0_1_11 = (input[i] > (91+offset0));
int t0_1_11 = rt0_1_11 * (4 + t0_0_23);
t0_1_11 += (1 - rt0_1_11) * t0_0_22;

int rt0_1_12 = (input[i] > (99+offset0));
int t0_1_12 = rt0_1_12 * (4 + t0_0_25);
t0_1_12 += (1 - rt0_1_12) * t0_0_24;

int rt0_1_13 = (input[i] > (107+offset0));
int t0_1_13 = rt0_1_13 * (4 + t0_0_27);
t0_1_13 += (1 - rt0_1_13) * t0_0_26;

int rt0_1_14 = (input[i] > (115+offset0));
int t0_1_14 = rt0_1_14 * (4 + t0_0_29);
t0_1_14 += (1 - rt0_1_14) * t0_0_28;

int rt0_1_15 = (input[i] > (123+offset0));
int t0_1_15 = rt0_1_15 * (4 + t0_0_31);
t0_1_15 += (1 - rt0_1_15) * t0_0_30;

int rt0_2_0 = (input[i] > (7+offset0));
int t0_2_0 = rt0_2_0 * (8 + t0_1_1);
t0_2_0 += (1 - rt0_2_0) * t0_1_0;

int rt0_2_1 = (input[i] > (23+offset0));
int t0_2_1 = rt0_2_1 * (8 + t0_1_3);
t0_2_1 += (1 - rt0_2_1) * t0_1_2;

int rt0_2_2 = (input[i] > (39+offset0));
int t0_2_2 = rt0_2_2 * (8 + t0_1_5);
t0_2_2 += (1 - rt0_2_2) * t0_1_4;

int rt0_2_3 = (input[i] > (55+offset0));
int t0_2_3 = rt0_2_3 * (8 + t0_1_7);
t0_2_3 += (1 - rt0_2_3) * t0_1_6;

int rt0_2_4 = (input[i] > (71+offset0));
int t0_2_4 = rt0_2_4 * (8 + t0_1_9);
t0_2_4 += (1 - rt0_2_4) * t0_1_8;

int rt0_2_5 = (input[i] > (87+offset0));
int t0_2_5 = rt0_2_5 * (8 + t0_1_11);
t0_2_5 += (1 - rt0_2_5) * t0_1_10;

int rt0_2_6 = (input[i] > (103+offset0));
int t0_2_6 = rt0_2_6 * (8 + t0_1_13);
t0_2_6 += (1 - rt0_2_6) * t0_1_12;

int rt0_2_7 = (input[i] > (119+offset0));
int t0_2_7 = rt0_2_7 * (8 + t0_1_15);
t0_2_7 += (1 - rt0_2_7) * t0_1_14;

int rt0_3_0 = (input[i] > (15+offset0));
int t0_3_0 = rt0_3_0 * (16 + t0_2_1);
t0_3_0 += (1 - rt0_3_0) * t0_2_0;

int rt0_3_1 = (input[i] > (47+offset0));
int t0_3_1 = rt0_3_1 * (16 + t0_2_3);
t0_3_1 += (1 - rt0_3_1) * t0_2_2;

int rt0_3_2 = (input[i] > (79+offset0));
int t0_3_2 = rt0_3_2 * (16 + t0_2_5);
t0_3_2 += (1 - rt0_3_2) * t0_2_4;

int rt0_3_3 = (input[i] > (111+offset0));
int t0_3_3 = rt0_3_3 * (16 + t0_2_7);
t0_3_3 += (1 - rt0_3_3) * t0_2_6;

int rt0_4_0 = (input[i] > (31+offset0));
int t0_4_0 = rt0_4_0 * (32 + t0_3_1);
t0_4_0 += (1 - rt0_4_0) * t0_3_0;

int rt0_4_1 = (input[i] > (95+offset0));
int t0_4_1 = rt0_4_1 * (32 + t0_3_3);
t0_4_1 += (1 - rt0_4_1) * t0_3_2;

int rt0_5_0 = (input[i] > (63+offset0));
int t0_5_0 = rt0_5_0 * (64 + t0_4_1);
t0_5_0 += (1 - rt0_5_0) * t0_4_0;

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

int rt1_0_8 = (input[i] > (33+offset1));
int t1_0_8 = rt1_0_8 * (2 + (input[i] > (34+offset1)));
t1_0_8 += (1 - rt1_0_8) * (input[i] > (32+offset1));

int rt1_0_9 = (input[i] > (37+offset1));
int t1_0_9 = rt1_0_9 * (2 + (input[i] > (38+offset1)));
t1_0_9 += (1 - rt1_0_9) * (input[i] > (36+offset1));

int rt1_0_10 = (input[i] > (41+offset1));
int t1_0_10 = rt1_0_10 * (2 + (input[i] > (42+offset1)));
t1_0_10 += (1 - rt1_0_10) * (input[i] > (40+offset1));

int rt1_0_11 = (input[i] > (45+offset1));
int t1_0_11 = rt1_0_11 * (2 + (input[i] > (46+offset1)));
t1_0_11 += (1 - rt1_0_11) * (input[i] > (44+offset1));

int rt1_0_12 = (input[i] > (49+offset1));
int t1_0_12 = rt1_0_12 * (2 + (input[i] > (50+offset1)));
t1_0_12 += (1 - rt1_0_12) * (input[i] > (48+offset1));

int rt1_0_13 = (input[i] > (53+offset1));
int t1_0_13 = rt1_0_13 * (2 + (input[i] > (54+offset1)));
t1_0_13 += (1 - rt1_0_13) * (input[i] > (52+offset1));

int rt1_0_14 = (input[i] > (57+offset1));
int t1_0_14 = rt1_0_14 * (2 + (input[i] > (58+offset1)));
t1_0_14 += (1 - rt1_0_14) * (input[i] > (56+offset1));

int rt1_0_15 = (input[i] > (61+offset1));
int t1_0_15 = rt1_0_15 * (2 + (input[i] > (62+offset1)));
t1_0_15 += (1 - rt1_0_15) * (input[i] > (60+offset1));

int rt1_0_16 = (input[i] > (65+offset1));
int t1_0_16 = rt1_0_16 * (2 + (input[i] > (66+offset1)));
t1_0_16 += (1 - rt1_0_16) * (input[i] > (64+offset1));

int rt1_0_17 = (input[i] > (69+offset1));
int t1_0_17 = rt1_0_17 * (2 + (input[i] > (70+offset1)));
t1_0_17 += (1 - rt1_0_17) * (input[i] > (68+offset1));

int rt1_0_18 = (input[i] > (73+offset1));
int t1_0_18 = rt1_0_18 * (2 + (input[i] > (74+offset1)));
t1_0_18 += (1 - rt1_0_18) * (input[i] > (72+offset1));

int rt1_0_19 = (input[i] > (77+offset1));
int t1_0_19 = rt1_0_19 * (2 + (input[i] > (78+offset1)));
t1_0_19 += (1 - rt1_0_19) * (input[i] > (76+offset1));

int rt1_0_20 = (input[i] > (81+offset1));
int t1_0_20 = rt1_0_20 * (2 + (input[i] > (82+offset1)));
t1_0_20 += (1 - rt1_0_20) * (input[i] > (80+offset1));

int rt1_0_21 = (input[i] > (85+offset1));
int t1_0_21 = rt1_0_21 * (2 + (input[i] > (86+offset1)));
t1_0_21 += (1 - rt1_0_21) * (input[i] > (84+offset1));

int rt1_0_22 = (input[i] > (89+offset1));
int t1_0_22 = rt1_0_22 * (2 + (input[i] > (90+offset1)));
t1_0_22 += (1 - rt1_0_22) * (input[i] > (88+offset1));

int rt1_0_23 = (input[i] > (93+offset1));
int t1_0_23 = rt1_0_23 * (2 + (input[i] > (94+offset1)));
t1_0_23 += (1 - rt1_0_23) * (input[i] > (92+offset1));

int rt1_0_24 = (input[i] > (97+offset1));
int t1_0_24 = rt1_0_24 * (2 + (input[i] > (98+offset1)));
t1_0_24 += (1 - rt1_0_24) * (input[i] > (96+offset1));

int rt1_0_25 = (input[i] > (101+offset1));
int t1_0_25 = rt1_0_25 * (2 + (input[i] > (102+offset1)));
t1_0_25 += (1 - rt1_0_25) * (input[i] > (100+offset1));

int rt1_0_26 = (input[i] > (105+offset1));
int t1_0_26 = rt1_0_26 * (2 + (input[i] > (106+offset1)));
t1_0_26 += (1 - rt1_0_26) * (input[i] > (104+offset1));

int rt1_0_27 = (input[i] > (109+offset1));
int t1_0_27 = rt1_0_27 * (2 + (input[i] > (110+offset1)));
t1_0_27 += (1 - rt1_0_27) * (input[i] > (108+offset1));

int rt1_0_28 = (input[i] > (113+offset1));
int t1_0_28 = rt1_0_28 * (2 + (input[i] > (114+offset1)));
t1_0_28 += (1 - rt1_0_28) * (input[i] > (112+offset1));

int rt1_0_29 = (input[i] > (117+offset1));
int t1_0_29 = rt1_0_29 * (2 + (input[i] > (118+offset1)));
t1_0_29 += (1 - rt1_0_29) * (input[i] > (116+offset1));

int rt1_0_30 = (input[i] > (121+offset1));
int t1_0_30 = rt1_0_30 * (2 + (input[i] > (122+offset1)));
t1_0_30 += (1 - rt1_0_30) * (input[i] > (120+offset1));

int rt1_0_31 = (input[i] > (125+offset1));
int t1_0_31 = rt1_0_31 * (2 + (input[i] > (126+offset1)));
t1_0_31 += (1 - rt1_0_31) * (input[i] > (124+offset1));

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

int rt1_1_4 = (input[i] > (35+offset1));
int t1_1_4 = rt1_1_4 * (4 + t1_0_9);
t1_1_4 += (1 - rt1_1_4) * t1_0_8;

int rt1_1_5 = (input[i] > (43+offset1));
int t1_1_5 = rt1_1_5 * (4 + t1_0_11);
t1_1_5 += (1 - rt1_1_5) * t1_0_10;

int rt1_1_6 = (input[i] > (51+offset1));
int t1_1_6 = rt1_1_6 * (4 + t1_0_13);
t1_1_6 += (1 - rt1_1_6) * t1_0_12;

int rt1_1_7 = (input[i] > (59+offset1));
int t1_1_7 = rt1_1_7 * (4 + t1_0_15);
t1_1_7 += (1 - rt1_1_7) * t1_0_14;

int rt1_1_8 = (input[i] > (67+offset1));
int t1_1_8 = rt1_1_8 * (4 + t1_0_17);
t1_1_8 += (1 - rt1_1_8) * t1_0_16;

int rt1_1_9 = (input[i] > (75+offset1));
int t1_1_9 = rt1_1_9 * (4 + t1_0_19);
t1_1_9 += (1 - rt1_1_9) * t1_0_18;

int rt1_1_10 = (input[i] > (83+offset1));
int t1_1_10 = rt1_1_10 * (4 + t1_0_21);
t1_1_10 += (1 - rt1_1_10) * t1_0_20;

int rt1_1_11 = (input[i] > (91+offset1));
int t1_1_11 = rt1_1_11 * (4 + t1_0_23);
t1_1_11 += (1 - rt1_1_11) * t1_0_22;

int rt1_1_12 = (input[i] > (99+offset1));
int t1_1_12 = rt1_1_12 * (4 + t1_0_25);
t1_1_12 += (1 - rt1_1_12) * t1_0_24;

int rt1_1_13 = (input[i] > (107+offset1));
int t1_1_13 = rt1_1_13 * (4 + t1_0_27);
t1_1_13 += (1 - rt1_1_13) * t1_0_26;

int rt1_1_14 = (input[i] > (115+offset1));
int t1_1_14 = rt1_1_14 * (4 + t1_0_29);
t1_1_14 += (1 - rt1_1_14) * t1_0_28;

int rt1_1_15 = (input[i] > (123+offset1));
int t1_1_15 = rt1_1_15 * (4 + t1_0_31);
t1_1_15 += (1 - rt1_1_15) * t1_0_30;

int rt1_2_0 = (input[i] > (7+offset1));
int t1_2_0 = rt1_2_0 * (8 + t1_1_1);
t1_2_0 += (1 - rt1_2_0) * t1_1_0;

int rt1_2_1 = (input[i] > (23+offset1));
int t1_2_1 = rt1_2_1 * (8 + t1_1_3);
t1_2_1 += (1 - rt1_2_1) * t1_1_2;

int rt1_2_2 = (input[i] > (39+offset1));
int t1_2_2 = rt1_2_2 * (8 + t1_1_5);
t1_2_2 += (1 - rt1_2_2) * t1_1_4;

int rt1_2_3 = (input[i] > (55+offset1));
int t1_2_3 = rt1_2_3 * (8 + t1_1_7);
t1_2_3 += (1 - rt1_2_3) * t1_1_6;

int rt1_2_4 = (input[i] > (71+offset1));
int t1_2_4 = rt1_2_4 * (8 + t1_1_9);
t1_2_4 += (1 - rt1_2_4) * t1_1_8;

int rt1_2_5 = (input[i] > (87+offset1));
int t1_2_5 = rt1_2_5 * (8 + t1_1_11);
t1_2_5 += (1 - rt1_2_5) * t1_1_10;

int rt1_2_6 = (input[i] > (103+offset1));
int t1_2_6 = rt1_2_6 * (8 + t1_1_13);
t1_2_6 += (1 - rt1_2_6) * t1_1_12;

int rt1_2_7 = (input[i] > (119+offset1));
int t1_2_7 = rt1_2_7 * (8 + t1_1_15);
t1_2_7 += (1 - rt1_2_7) * t1_1_14;

int rt1_3_0 = (input[i] > (15+offset1));
int t1_3_0 = rt1_3_0 * (16 + t1_2_1);
t1_3_0 += (1 - rt1_3_0) * t1_2_0;

int rt1_3_1 = (input[i] > (47+offset1));
int t1_3_1 = rt1_3_1 * (16 + t1_2_3);
t1_3_1 += (1 - rt1_3_1) * t1_2_2;

int rt1_3_2 = (input[i] > (79+offset1));
int t1_3_2 = rt1_3_2 * (16 + t1_2_5);
t1_3_2 += (1 - rt1_3_2) * t1_2_4;

int rt1_3_3 = (input[i] > (111+offset1));
int t1_3_3 = rt1_3_3 * (16 + t1_2_7);
t1_3_3 += (1 - rt1_3_3) * t1_2_6;

int rt1_4_0 = (input[i] > (31+offset1));
int t1_4_0 = rt1_4_0 * (32 + t1_3_1);
t1_4_0 += (1 - rt1_4_0) * t1_3_0;

int rt1_4_1 = (input[i] > (95+offset1));
int t1_4_1 = rt1_4_1 * (32 + t1_3_3);
t1_4_1 += (1 - rt1_4_1) * t1_3_2;

int rt1_5_0 = (input[i] > (63+offset1));
int t1_5_0 = rt1_5_0 * (64 + t1_4_1);
t1_5_0 += (1 - rt1_5_0) * t1_4_0;

vR[i] = t0_5_0+ (t0_5_0 == t1_5_0);
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
