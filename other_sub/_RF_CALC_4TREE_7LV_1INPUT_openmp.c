#include <sys/time.h>
#include <omp.h>
#include <stdio.h>
#include <stdlib.h>
#include <stdbool.h>
#include <time.h>
#include <string.h>

#define N_ELEM 50000000

// #define _RF_CALC_1TREE_GLOBAL
// #define _RF_CALC_2TREE_GLOBAL
// #define _RF_CALC_3TREE_GLOBAL
#define _RF_CALC_4TREE_GLOBAL

void initData(float *ip, int size);
void registerTime(unsigned long value);

#define _MOD 128

#if defined(_RF_CALC_1TREE_GLOBAL)
#define EXP_NAME "_RF_CALC_1TREE_GLOBAL"
#define _1TREE
#elif defined(_RF_CALC_2TREE_GLOBAL)
#define EXP_NAME "_RF_CALC_2TREE_GLOBAL"
#define _2TREE
#elif defined(_RF_CALC_3TREE_GLOBAL)
#define EXP_NAME "_RF_CALC_3TREE_GLOBAL"
#define _3TREE
#elif defined(_RF_CALC_4TREE_GLOBAL)
#define EXP_NAME "_RF_CALC_4TREE_GLOBAL"
#define _4TREE
#endif

// RF_with_if

void RF_kernel(float *input, const int n, const int offset0, const int offset1, const int offset2, const int offset3, float *vR)
{
	int nCpu = 16;
	omp_set_num_threads(nCpu);
#pragma omp parallel shared(input, n, offset0, offset1, offset2, offset3, vR)
	{
		int thId = omp_get_thread_num();
		for (int i = thId; i < n; i += nCpu)
		{
			int rt0_0_0 = (input[i] > (1 + offset0));
			int t0_0_0 = rt0_0_0 * (2 + (input[i] > (2 + offset0)));
			t0_0_0 += (1 - rt0_0_0) * (input[i] > (0 + offset0));

			int rt0_0_1 = (input[i] > (5 + offset0));
			int t0_0_1 = rt0_0_1 * (2 + (input[i] > (6 + offset0)));
			t0_0_1 += (1 - rt0_0_1) * (input[i] > (4 + offset0));

			int rt0_0_2 = (input[i] > (9 + offset0));
			int t0_0_2 = rt0_0_2 * (2 + (input[i] > (10 + offset0)));
			t0_0_2 += (1 - rt0_0_2) * (input[i] > (8 + offset0));

			int rt0_0_3 = (input[i] > (13 + offset0));
			int t0_0_3 = rt0_0_3 * (2 + (input[i] > (14 + offset0)));
			t0_0_3 += (1 - rt0_0_3) * (input[i] > (12 + offset0));

			int rt0_0_4 = (input[i] > (17 + offset0));
			int t0_0_4 = rt0_0_4 * (2 + (input[i] > (18 + offset0)));
			t0_0_4 += (1 - rt0_0_4) * (input[i] > (16 + offset0));

			int rt0_0_5 = (input[i] > (21 + offset0));
			int t0_0_5 = rt0_0_5 * (2 + (input[i] > (22 + offset0)));
			t0_0_5 += (1 - rt0_0_5) * (input[i] > (20 + offset0));

			int rt0_0_6 = (input[i] > (25 + offset0));
			int t0_0_6 = rt0_0_6 * (2 + (input[i] > (26 + offset0)));
			t0_0_6 += (1 - rt0_0_6) * (input[i] > (24 + offset0));

			int rt0_0_7 = (input[i] > (29 + offset0));
			int t0_0_7 = rt0_0_7 * (2 + (input[i] > (30 + offset0)));
			t0_0_7 += (1 - rt0_0_7) * (input[i] > (28 + offset0));

			int rt0_0_8 = (input[i] > (33 + offset0));
			int t0_0_8 = rt0_0_8 * (2 + (input[i] > (34 + offset0)));
			t0_0_8 += (1 - rt0_0_8) * (input[i] > (32 + offset0));

			int rt0_0_9 = (input[i] > (37 + offset0));
			int t0_0_9 = rt0_0_9 * (2 + (input[i] > (38 + offset0)));
			t0_0_9 += (1 - rt0_0_9) * (input[i] > (36 + offset0));

			int rt0_0_10 = (input[i] > (41 + offset0));
			int t0_0_10 = rt0_0_10 * (2 + (input[i] > (42 + offset0)));
			t0_0_10 += (1 - rt0_0_10) * (input[i] > (40 + offset0));

			int rt0_0_11 = (input[i] > (45 + offset0));
			int t0_0_11 = rt0_0_11 * (2 + (input[i] > (46 + offset0)));
			t0_0_11 += (1 - rt0_0_11) * (input[i] > (44 + offset0));

			int rt0_0_12 = (input[i] > (49 + offset0));
			int t0_0_12 = rt0_0_12 * (2 + (input[i] > (50 + offset0)));
			t0_0_12 += (1 - rt0_0_12) * (input[i] > (48 + offset0));

			int rt0_0_13 = (input[i] > (53 + offset0));
			int t0_0_13 = rt0_0_13 * (2 + (input[i] > (54 + offset0)));
			t0_0_13 += (1 - rt0_0_13) * (input[i] > (52 + offset0));

			int rt0_0_14 = (input[i] > (57 + offset0));
			int t0_0_14 = rt0_0_14 * (2 + (input[i] > (58 + offset0)));
			t0_0_14 += (1 - rt0_0_14) * (input[i] > (56 + offset0));

			int rt0_0_15 = (input[i] > (61 + offset0));
			int t0_0_15 = rt0_0_15 * (2 + (input[i] > (62 + offset0)));
			t0_0_15 += (1 - rt0_0_15) * (input[i] > (60 + offset0));

			int rt0_0_16 = (input[i] > (65 + offset0));
			int t0_0_16 = rt0_0_16 * (2 + (input[i] > (66 + offset0)));
			t0_0_16 += (1 - rt0_0_16) * (input[i] > (64 + offset0));

			int rt0_0_17 = (input[i] > (69 + offset0));
			int t0_0_17 = rt0_0_17 * (2 + (input[i] > (70 + offset0)));
			t0_0_17 += (1 - rt0_0_17) * (input[i] > (68 + offset0));

			int rt0_0_18 = (input[i] > (73 + offset0));
			int t0_0_18 = rt0_0_18 * (2 + (input[i] > (74 + offset0)));
			t0_0_18 += (1 - rt0_0_18) * (input[i] > (72 + offset0));

			int rt0_0_19 = (input[i] > (77 + offset0));
			int t0_0_19 = rt0_0_19 * (2 + (input[i] > (78 + offset0)));
			t0_0_19 += (1 - rt0_0_19) * (input[i] > (76 + offset0));

			int rt0_0_20 = (input[i] > (81 + offset0));
			int t0_0_20 = rt0_0_20 * (2 + (input[i] > (82 + offset0)));
			t0_0_20 += (1 - rt0_0_20) * (input[i] > (80 + offset0));

			int rt0_0_21 = (input[i] > (85 + offset0));
			int t0_0_21 = rt0_0_21 * (2 + (input[i] > (86 + offset0)));
			t0_0_21 += (1 - rt0_0_21) * (input[i] > (84 + offset0));

			int rt0_0_22 = (input[i] > (89 + offset0));
			int t0_0_22 = rt0_0_22 * (2 + (input[i] > (90 + offset0)));
			t0_0_22 += (1 - rt0_0_22) * (input[i] > (88 + offset0));

			int rt0_0_23 = (input[i] > (93 + offset0));
			int t0_0_23 = rt0_0_23 * (2 + (input[i] > (94 + offset0)));
			t0_0_23 += (1 - rt0_0_23) * (input[i] > (92 + offset0));

			int rt0_0_24 = (input[i] > (97 + offset0));
			int t0_0_24 = rt0_0_24 * (2 + (input[i] > (98 + offset0)));
			t0_0_24 += (1 - rt0_0_24) * (input[i] > (96 + offset0));

			int rt0_0_25 = (input[i] > (101 + offset0));
			int t0_0_25 = rt0_0_25 * (2 + (input[i] > (102 + offset0)));
			t0_0_25 += (1 - rt0_0_25) * (input[i] > (100 + offset0));

			int rt0_0_26 = (input[i] > (105 + offset0));
			int t0_0_26 = rt0_0_26 * (2 + (input[i] > (106 + offset0)));
			t0_0_26 += (1 - rt0_0_26) * (input[i] > (104 + offset0));

			int rt0_0_27 = (input[i] > (109 + offset0));
			int t0_0_27 = rt0_0_27 * (2 + (input[i] > (110 + offset0)));
			t0_0_27 += (1 - rt0_0_27) * (input[i] > (108 + offset0));

			int rt0_0_28 = (input[i] > (113 + offset0));
			int t0_0_28 = rt0_0_28 * (2 + (input[i] > (114 + offset0)));
			t0_0_28 += (1 - rt0_0_28) * (input[i] > (112 + offset0));

			int rt0_0_29 = (input[i] > (117 + offset0));
			int t0_0_29 = rt0_0_29 * (2 + (input[i] > (118 + offset0)));
			t0_0_29 += (1 - rt0_0_29) * (input[i] > (116 + offset0));

			int rt0_0_30 = (input[i] > (121 + offset0));
			int t0_0_30 = rt0_0_30 * (2 + (input[i] > (122 + offset0)));
			t0_0_30 += (1 - rt0_0_30) * (input[i] > (120 + offset0));

			int rt0_0_31 = (input[i] > (125 + offset0));
			int t0_0_31 = rt0_0_31 * (2 + (input[i] > (126 + offset0)));
			t0_0_31 += (1 - rt0_0_31) * (input[i] > (124 + offset0));

			int rt0_1_0 = (input[i] > (3 + offset0));
			int t0_1_0 = rt0_1_0 * (4 + t0_0_1);
			t0_1_0 += (1 - rt0_1_0) * t0_0_0;

			int rt0_1_1 = (input[i] > (11 + offset0));
			int t0_1_1 = rt0_1_1 * (4 + t0_0_3);
			t0_1_1 += (1 - rt0_1_1) * t0_0_2;

			int rt0_1_2 = (input[i] > (19 + offset0));
			int t0_1_2 = rt0_1_2 * (4 + t0_0_5);
			t0_1_2 += (1 - rt0_1_2) * t0_0_4;

			int rt0_1_3 = (input[i] > (27 + offset0));
			int t0_1_3 = rt0_1_3 * (4 + t0_0_7);
			t0_1_3 += (1 - rt0_1_3) * t0_0_6;

			int rt0_1_4 = (input[i] > (35 + offset0));
			int t0_1_4 = rt0_1_4 * (4 + t0_0_9);
			t0_1_4 += (1 - rt0_1_4) * t0_0_8;

			int rt0_1_5 = (input[i] > (43 + offset0));
			int t0_1_5 = rt0_1_5 * (4 + t0_0_11);
			t0_1_5 += (1 - rt0_1_5) * t0_0_10;

			int rt0_1_6 = (input[i] > (51 + offset0));
			int t0_1_6 = rt0_1_6 * (4 + t0_0_13);
			t0_1_6 += (1 - rt0_1_6) * t0_0_12;

			int rt0_1_7 = (input[i] > (59 + offset0));
			int t0_1_7 = rt0_1_7 * (4 + t0_0_15);
			t0_1_7 += (1 - rt0_1_7) * t0_0_14;

			int rt0_1_8 = (input[i] > (67 + offset0));
			int t0_1_8 = rt0_1_8 * (4 + t0_0_17);
			t0_1_8 += (1 - rt0_1_8) * t0_0_16;

			int rt0_1_9 = (input[i] > (75 + offset0));
			int t0_1_9 = rt0_1_9 * (4 + t0_0_19);
			t0_1_9 += (1 - rt0_1_9) * t0_0_18;

			int rt0_1_10 = (input[i] > (83 + offset0));
			int t0_1_10 = rt0_1_10 * (4 + t0_0_21);
			t0_1_10 += (1 - rt0_1_10) * t0_0_20;

			int rt0_1_11 = (input[i] > (91 + offset0));
			int t0_1_11 = rt0_1_11 * (4 + t0_0_23);
			t0_1_11 += (1 - rt0_1_11) * t0_0_22;

			int rt0_1_12 = (input[i] > (99 + offset0));
			int t0_1_12 = rt0_1_12 * (4 + t0_0_25);
			t0_1_12 += (1 - rt0_1_12) * t0_0_24;

			int rt0_1_13 = (input[i] > (107 + offset0));
			int t0_1_13 = rt0_1_13 * (4 + t0_0_27);
			t0_1_13 += (1 - rt0_1_13) * t0_0_26;

			int rt0_1_14 = (input[i] > (115 + offset0));
			int t0_1_14 = rt0_1_14 * (4 + t0_0_29);
			t0_1_14 += (1 - rt0_1_14) * t0_0_28;

			int rt0_1_15 = (input[i] > (123 + offset0));
			int t0_1_15 = rt0_1_15 * (4 + t0_0_31);
			t0_1_15 += (1 - rt0_1_15) * t0_0_30;

			int rt0_2_0 = (input[i] > (7 + offset0));
			int t0_2_0 = rt0_2_0 * (8 + t0_1_1);
			t0_2_0 += (1 - rt0_2_0) * t0_1_0;

			int rt0_2_1 = (input[i] > (23 + offset0));
			int t0_2_1 = rt0_2_1 * (8 + t0_1_3);
			t0_2_1 += (1 - rt0_2_1) * t0_1_2;

			int rt0_2_2 = (input[i] > (39 + offset0));
			int t0_2_2 = rt0_2_2 * (8 + t0_1_5);
			t0_2_2 += (1 - rt0_2_2) * t0_1_4;

			int rt0_2_3 = (input[i] > (55 + offset0));
			int t0_2_3 = rt0_2_3 * (8 + t0_1_7);
			t0_2_3 += (1 - rt0_2_3) * t0_1_6;

			int rt0_2_4 = (input[i] > (71 + offset0));
			int t0_2_4 = rt0_2_4 * (8 + t0_1_9);
			t0_2_4 += (1 - rt0_2_4) * t0_1_8;

			int rt0_2_5 = (input[i] > (87 + offset0));
			int t0_2_5 = rt0_2_5 * (8 + t0_1_11);
			t0_2_5 += (1 - rt0_2_5) * t0_1_10;

			int rt0_2_6 = (input[i] > (103 + offset0));
			int t0_2_6 = rt0_2_6 * (8 + t0_1_13);
			t0_2_6 += (1 - rt0_2_6) * t0_1_12;

			int rt0_2_7 = (input[i] > (119 + offset0));
			int t0_2_7 = rt0_2_7 * (8 + t0_1_15);
			t0_2_7 += (1 - rt0_2_7) * t0_1_14;

			int rt0_3_0 = (input[i] > (15 + offset0));
			int t0_3_0 = rt0_3_0 * (16 + t0_2_1);
			t0_3_0 += (1 - rt0_3_0) * t0_2_0;

			int rt0_3_1 = (input[i] > (47 + offset0));
			int t0_3_1 = rt0_3_1 * (16 + t0_2_3);
			t0_3_1 += (1 - rt0_3_1) * t0_2_2;

			int rt0_3_2 = (input[i] > (79 + offset0));
			int t0_3_2 = rt0_3_2 * (16 + t0_2_5);
			t0_3_2 += (1 - rt0_3_2) * t0_2_4;

			int rt0_3_3 = (input[i] > (111 + offset0));
			int t0_3_3 = rt0_3_3 * (16 + t0_2_7);
			t0_3_3 += (1 - rt0_3_3) * t0_2_6;

			int rt0_4_0 = (input[i] > (31 + offset0));
			int t0_4_0 = rt0_4_0 * (32 + t0_3_1);
			t0_4_0 += (1 - rt0_4_0) * t0_3_0;

			int rt0_4_1 = (input[i] > (95 + offset0));
			int t0_4_1 = rt0_4_1 * (32 + t0_3_3);
			t0_4_1 += (1 - rt0_4_1) * t0_3_2;

			int rt0_5_0 = (input[i] > (63 + offset0));
			int t0_5_0 = rt0_5_0 * (64 + t0_4_1);
			t0_5_0 += (1 - rt0_5_0) * t0_4_0;

#if defined(_2TREE) || defined(_3TREE) || defined(_4TREE)
			int rt1_0_0 = (input[i] > (1 + offset1));
			int t1_0_0 = rt1_0_0 * (2 + (input[i] > (2 + offset1)));
			t1_0_0 += (1 - rt1_0_0) * (input[i] > (0 + offset1));

			int rt1_0_1 = (input[i] > (5 + offset1));
			int t1_0_1 = rt1_0_1 * (2 + (input[i] > (6 + offset1)));
			t1_0_1 += (1 - rt1_0_1) * (input[i] > (4 + offset1));

			int rt1_0_2 = (input[i] > (9 + offset1));
			int t1_0_2 = rt1_0_2 * (2 + (input[i] > (10 + offset1)));
			t1_0_2 += (1 - rt1_0_2) * (input[i] > (8 + offset1));

			int rt1_0_3 = (input[i] > (13 + offset1));
			int t1_0_3 = rt1_0_3 * (2 + (input[i] > (14 + offset1)));
			t1_0_3 += (1 - rt1_0_3) * (input[i] > (12 + offset1));

			int rt1_0_4 = (input[i] > (17 + offset1));
			int t1_0_4 = rt1_0_4 * (2 + (input[i] > (18 + offset1)));
			t1_0_4 += (1 - rt1_0_4) * (input[i] > (16 + offset1));

			int rt1_0_5 = (input[i] > (21 + offset1));
			int t1_0_5 = rt1_0_5 * (2 + (input[i] > (22 + offset1)));
			t1_0_5 += (1 - rt1_0_5) * (input[i] > (20 + offset1));

			int rt1_0_6 = (input[i] > (25 + offset1));
			int t1_0_6 = rt1_0_6 * (2 + (input[i] > (26 + offset1)));
			t1_0_6 += (1 - rt1_0_6) * (input[i] > (24 + offset1));

			int rt1_0_7 = (input[i] > (29 + offset1));
			int t1_0_7 = rt1_0_7 * (2 + (input[i] > (30 + offset1)));
			t1_0_7 += (1 - rt1_0_7) * (input[i] > (28 + offset1));

			int rt1_0_8 = (input[i] > (33 + offset1));
			int t1_0_8 = rt1_0_8 * (2 + (input[i] > (34 + offset1)));
			t1_0_8 += (1 - rt1_0_8) * (input[i] > (32 + offset1));

			int rt1_0_9 = (input[i] > (37 + offset1));
			int t1_0_9 = rt1_0_9 * (2 + (input[i] > (38 + offset1)));
			t1_0_9 += (1 - rt1_0_9) * (input[i] > (36 + offset1));

			int rt1_0_10 = (input[i] > (41 + offset1));
			int t1_0_10 = rt1_0_10 * (2 + (input[i] > (42 + offset1)));
			t1_0_10 += (1 - rt1_0_10) * (input[i] > (40 + offset1));

			int rt1_0_11 = (input[i] > (45 + offset1));
			int t1_0_11 = rt1_0_11 * (2 + (input[i] > (46 + offset1)));
			t1_0_11 += (1 - rt1_0_11) * (input[i] > (44 + offset1));

			int rt1_0_12 = (input[i] > (49 + offset1));
			int t1_0_12 = rt1_0_12 * (2 + (input[i] > (50 + offset1)));
			t1_0_12 += (1 - rt1_0_12) * (input[i] > (48 + offset1));

			int rt1_0_13 = (input[i] > (53 + offset1));
			int t1_0_13 = rt1_0_13 * (2 + (input[i] > (54 + offset1)));
			t1_0_13 += (1 - rt1_0_13) * (input[i] > (52 + offset1));

			int rt1_0_14 = (input[i] > (57 + offset1));
			int t1_0_14 = rt1_0_14 * (2 + (input[i] > (58 + offset1)));
			t1_0_14 += (1 - rt1_0_14) * (input[i] > (56 + offset1));

			int rt1_0_15 = (input[i] > (61 + offset1));
			int t1_0_15 = rt1_0_15 * (2 + (input[i] > (62 + offset1)));
			t1_0_15 += (1 - rt1_0_15) * (input[i] > (60 + offset1));

			int rt1_0_16 = (input[i] > (65 + offset1));
			int t1_0_16 = rt1_0_16 * (2 + (input[i] > (66 + offset1)));
			t1_0_16 += (1 - rt1_0_16) * (input[i] > (64 + offset1));

			int rt1_0_17 = (input[i] > (69 + offset1));
			int t1_0_17 = rt1_0_17 * (2 + (input[i] > (70 + offset1)));
			t1_0_17 += (1 - rt1_0_17) * (input[i] > (68 + offset1));

			int rt1_0_18 = (input[i] > (73 + offset1));
			int t1_0_18 = rt1_0_18 * (2 + (input[i] > (74 + offset1)));
			t1_0_18 += (1 - rt1_0_18) * (input[i] > (72 + offset1));

			int rt1_0_19 = (input[i] > (77 + offset1));
			int t1_0_19 = rt1_0_19 * (2 + (input[i] > (78 + offset1)));
			t1_0_19 += (1 - rt1_0_19) * (input[i] > (76 + offset1));

			int rt1_0_20 = (input[i] > (81 + offset1));
			int t1_0_20 = rt1_0_20 * (2 + (input[i] > (82 + offset1)));
			t1_0_20 += (1 - rt1_0_20) * (input[i] > (80 + offset1));

			int rt1_0_21 = (input[i] > (85 + offset1));
			int t1_0_21 = rt1_0_21 * (2 + (input[i] > (86 + offset1)));
			t1_0_21 += (1 - rt1_0_21) * (input[i] > (84 + offset1));

			int rt1_0_22 = (input[i] > (89 + offset1));
			int t1_0_22 = rt1_0_22 * (2 + (input[i] > (90 + offset1)));
			t1_0_22 += (1 - rt1_0_22) * (input[i] > (88 + offset1));

			int rt1_0_23 = (input[i] > (93 + offset1));
			int t1_0_23 = rt1_0_23 * (2 + (input[i] > (94 + offset1)));
			t1_0_23 += (1 - rt1_0_23) * (input[i] > (92 + offset1));

			int rt1_0_24 = (input[i] > (97 + offset1));
			int t1_0_24 = rt1_0_24 * (2 + (input[i] > (98 + offset1)));
			t1_0_24 += (1 - rt1_0_24) * (input[i] > (96 + offset1));

			int rt1_0_25 = (input[i] > (101 + offset1));
			int t1_0_25 = rt1_0_25 * (2 + (input[i] > (102 + offset1)));
			t1_0_25 += (1 - rt1_0_25) * (input[i] > (100 + offset1));

			int rt1_0_26 = (input[i] > (105 + offset1));
			int t1_0_26 = rt1_0_26 * (2 + (input[i] > (106 + offset1)));
			t1_0_26 += (1 - rt1_0_26) * (input[i] > (104 + offset1));

			int rt1_0_27 = (input[i] > (109 + offset1));
			int t1_0_27 = rt1_0_27 * (2 + (input[i] > (110 + offset1)));
			t1_0_27 += (1 - rt1_0_27) * (input[i] > (108 + offset1));

			int rt1_0_28 = (input[i] > (113 + offset1));
			int t1_0_28 = rt1_0_28 * (2 + (input[i] > (114 + offset1)));
			t1_0_28 += (1 - rt1_0_28) * (input[i] > (112 + offset1));

			int rt1_0_29 = (input[i] > (117 + offset1));
			int t1_0_29 = rt1_0_29 * (2 + (input[i] > (118 + offset1)));
			t1_0_29 += (1 - rt1_0_29) * (input[i] > (116 + offset1));

			int rt1_0_30 = (input[i] > (121 + offset1));
			int t1_0_30 = rt1_0_30 * (2 + (input[i] > (122 + offset1)));
			t1_0_30 += (1 - rt1_0_30) * (input[i] > (120 + offset1));

			int rt1_0_31 = (input[i] > (125 + offset1));
			int t1_0_31 = rt1_0_31 * (2 + (input[i] > (126 + offset1)));
			t1_0_31 += (1 - rt1_0_31) * (input[i] > (124 + offset1));

			int rt1_1_0 = (input[i] > (3 + offset1));
			int t1_1_0 = rt1_1_0 * (4 + t1_0_1);
			t1_1_0 += (1 - rt1_1_0) * t1_0_0;

			int rt1_1_1 = (input[i] > (11 + offset1));
			int t1_1_1 = rt1_1_1 * (4 + t1_0_3);
			t1_1_1 += (1 - rt1_1_1) * t1_0_2;

			int rt1_1_2 = (input[i] > (19 + offset1));
			int t1_1_2 = rt1_1_2 * (4 + t1_0_5);
			t1_1_2 += (1 - rt1_1_2) * t1_0_4;

			int rt1_1_3 = (input[i] > (27 + offset1));
			int t1_1_3 = rt1_1_3 * (4 + t1_0_7);
			t1_1_3 += (1 - rt1_1_3) * t1_0_6;

			int rt1_1_4 = (input[i] > (35 + offset1));
			int t1_1_4 = rt1_1_4 * (4 + t1_0_9);
			t1_1_4 += (1 - rt1_1_4) * t1_0_8;

			int rt1_1_5 = (input[i] > (43 + offset1));
			int t1_1_5 = rt1_1_5 * (4 + t1_0_11);
			t1_1_5 += (1 - rt1_1_5) * t1_0_10;

			int rt1_1_6 = (input[i] > (51 + offset1));
			int t1_1_6 = rt1_1_6 * (4 + t1_0_13);
			t1_1_6 += (1 - rt1_1_6) * t1_0_12;

			int rt1_1_7 = (input[i] > (59 + offset1));
			int t1_1_7 = rt1_1_7 * (4 + t1_0_15);
			t1_1_7 += (1 - rt1_1_7) * t1_0_14;

			int rt1_1_8 = (input[i] > (67 + offset1));
			int t1_1_8 = rt1_1_8 * (4 + t1_0_17);
			t1_1_8 += (1 - rt1_1_8) * t1_0_16;

			int rt1_1_9 = (input[i] > (75 + offset1));
			int t1_1_9 = rt1_1_9 * (4 + t1_0_19);
			t1_1_9 += (1 - rt1_1_9) * t1_0_18;

			int rt1_1_10 = (input[i] > (83 + offset1));
			int t1_1_10 = rt1_1_10 * (4 + t1_0_21);
			t1_1_10 += (1 - rt1_1_10) * t1_0_20;

			int rt1_1_11 = (input[i] > (91 + offset1));
			int t1_1_11 = rt1_1_11 * (4 + t1_0_23);
			t1_1_11 += (1 - rt1_1_11) * t1_0_22;

			int rt1_1_12 = (input[i] > (99 + offset1));
			int t1_1_12 = rt1_1_12 * (4 + t1_0_25);
			t1_1_12 += (1 - rt1_1_12) * t1_0_24;

			int rt1_1_13 = (input[i] > (107 + offset1));
			int t1_1_13 = rt1_1_13 * (4 + t1_0_27);
			t1_1_13 += (1 - rt1_1_13) * t1_0_26;

			int rt1_1_14 = (input[i] > (115 + offset1));
			int t1_1_14 = rt1_1_14 * (4 + t1_0_29);
			t1_1_14 += (1 - rt1_1_14) * t1_0_28;

			int rt1_1_15 = (input[i] > (123 + offset1));
			int t1_1_15 = rt1_1_15 * (4 + t1_0_31);
			t1_1_15 += (1 - rt1_1_15) * t1_0_30;

			int rt1_2_0 = (input[i] > (7 + offset1));
			int t1_2_0 = rt1_2_0 * (8 + t1_1_1);
			t1_2_0 += (1 - rt1_2_0) * t1_1_0;

			int rt1_2_1 = (input[i] > (23 + offset1));
			int t1_2_1 = rt1_2_1 * (8 + t1_1_3);
			t1_2_1 += (1 - rt1_2_1) * t1_1_2;

			int rt1_2_2 = (input[i] > (39 + offset1));
			int t1_2_2 = rt1_2_2 * (8 + t1_1_5);
			t1_2_2 += (1 - rt1_2_2) * t1_1_4;

			int rt1_2_3 = (input[i] > (55 + offset1));
			int t1_2_3 = rt1_2_3 * (8 + t1_1_7);
			t1_2_3 += (1 - rt1_2_3) * t1_1_6;

			int rt1_2_4 = (input[i] > (71 + offset1));
			int t1_2_4 = rt1_2_4 * (8 + t1_1_9);
			t1_2_4 += (1 - rt1_2_4) * t1_1_8;

			int rt1_2_5 = (input[i] > (87 + offset1));
			int t1_2_5 = rt1_2_5 * (8 + t1_1_11);
			t1_2_5 += (1 - rt1_2_5) * t1_1_10;

			int rt1_2_6 = (input[i] > (103 + offset1));
			int t1_2_6 = rt1_2_6 * (8 + t1_1_13);
			t1_2_6 += (1 - rt1_2_6) * t1_1_12;

			int rt1_2_7 = (input[i] > (119 + offset1));
			int t1_2_7 = rt1_2_7 * (8 + t1_1_15);
			t1_2_7 += (1 - rt1_2_7) * t1_1_14;

			int rt1_3_0 = (input[i] > (15 + offset1));
			int t1_3_0 = rt1_3_0 * (16 + t1_2_1);
			t1_3_0 += (1 - rt1_3_0) * t1_2_0;

			int rt1_3_1 = (input[i] > (47 + offset1));
			int t1_3_1 = rt1_3_1 * (16 + t1_2_3);
			t1_3_1 += (1 - rt1_3_1) * t1_2_2;

			int rt1_3_2 = (input[i] > (79 + offset1));
			int t1_3_2 = rt1_3_2 * (16 + t1_2_5);
			t1_3_2 += (1 - rt1_3_2) * t1_2_4;

			int rt1_3_3 = (input[i] > (111 + offset1));
			int t1_3_3 = rt1_3_3 * (16 + t1_2_7);
			t1_3_3 += (1 - rt1_3_3) * t1_2_6;

			int rt1_4_0 = (input[i] > (31 + offset1));
			int t1_4_0 = rt1_4_0 * (32 + t1_3_1);
			t1_4_0 += (1 - rt1_4_0) * t1_3_0;

			int rt1_4_1 = (input[i] > (95 + offset1));
			int t1_4_1 = rt1_4_1 * (32 + t1_3_3);
			t1_4_1 += (1 - rt1_4_1) * t1_3_2;

			int rt1_5_0 = (input[i] > (63 + offset1));
			int t1_5_0 = rt1_5_0 * (64 + t1_4_1);
			t1_5_0 += (1 - rt1_5_0) * t1_4_0;
#endif
#if defined(_3TREE) || defined(_4TREE)
			int rt2_0_0 = (input[i] > (1 + offset2));
			int t2_0_0 = rt2_0_0 * (2 + (input[i] > (2 + offset2)));
			t2_0_0 += (1 - rt2_0_0) * (input[i] > (0 + offset2));

			int rt2_0_1 = (input[i] > (5 + offset2));
			int t2_0_1 = rt2_0_1 * (2 + (input[i] > (6 + offset2)));
			t2_0_1 += (1 - rt2_0_1) * (input[i] > (4 + offset2));

			int rt2_0_2 = (input[i] > (9 + offset2));
			int t2_0_2 = rt2_0_2 * (2 + (input[i] > (10 + offset2)));
			t2_0_2 += (1 - rt2_0_2) * (input[i] > (8 + offset2));

			int rt2_0_3 = (input[i] > (13 + offset2));
			int t2_0_3 = rt2_0_3 * (2 + (input[i] > (14 + offset2)));
			t2_0_3 += (1 - rt2_0_3) * (input[i] > (12 + offset2));

			int rt2_0_4 = (input[i] > (17 + offset2));
			int t2_0_4 = rt2_0_4 * (2 + (input[i] > (18 + offset2)));
			t2_0_4 += (1 - rt2_0_4) * (input[i] > (16 + offset2));

			int rt2_0_5 = (input[i] > (21 + offset2));
			int t2_0_5 = rt2_0_5 * (2 + (input[i] > (22 + offset2)));
			t2_0_5 += (1 - rt2_0_5) * (input[i] > (20 + offset2));

			int rt2_0_6 = (input[i] > (25 + offset2));
			int t2_0_6 = rt2_0_6 * (2 + (input[i] > (26 + offset2)));
			t2_0_6 += (1 - rt2_0_6) * (input[i] > (24 + offset2));

			int rt2_0_7 = (input[i] > (29 + offset2));
			int t2_0_7 = rt2_0_7 * (2 + (input[i] > (30 + offset2)));
			t2_0_7 += (1 - rt2_0_7) * (input[i] > (28 + offset2));

			int rt2_0_8 = (input[i] > (33 + offset2));
			int t2_0_8 = rt2_0_8 * (2 + (input[i] > (34 + offset2)));
			t2_0_8 += (1 - rt2_0_8) * (input[i] > (32 + offset2));

			int rt2_0_9 = (input[i] > (37 + offset2));
			int t2_0_9 = rt2_0_9 * (2 + (input[i] > (38 + offset2)));
			t2_0_9 += (1 - rt2_0_9) * (input[i] > (36 + offset2));

			int rt2_0_10 = (input[i] > (41 + offset2));
			int t2_0_10 = rt2_0_10 * (2 + (input[i] > (42 + offset2)));
			t2_0_10 += (1 - rt2_0_10) * (input[i] > (40 + offset2));

			int rt2_0_11 = (input[i] > (45 + offset2));
			int t2_0_11 = rt2_0_11 * (2 + (input[i] > (46 + offset2)));
			t2_0_11 += (1 - rt2_0_11) * (input[i] > (44 + offset2));

			int rt2_0_12 = (input[i] > (49 + offset2));
			int t2_0_12 = rt2_0_12 * (2 + (input[i] > (50 + offset2)));
			t2_0_12 += (1 - rt2_0_12) * (input[i] > (48 + offset2));

			int rt2_0_13 = (input[i] > (53 + offset2));
			int t2_0_13 = rt2_0_13 * (2 + (input[i] > (54 + offset2)));
			t2_0_13 += (1 - rt2_0_13) * (input[i] > (52 + offset2));

			int rt2_0_14 = (input[i] > (57 + offset2));
			int t2_0_14 = rt2_0_14 * (2 + (input[i] > (58 + offset2)));
			t2_0_14 += (1 - rt2_0_14) * (input[i] > (56 + offset2));

			int rt2_0_15 = (input[i] > (61 + offset2));
			int t2_0_15 = rt2_0_15 * (2 + (input[i] > (62 + offset2)));
			t2_0_15 += (1 - rt2_0_15) * (input[i] > (60 + offset2));

			int rt2_0_16 = (input[i] > (65 + offset2));
			int t2_0_16 = rt2_0_16 * (2 + (input[i] > (66 + offset2)));
			t2_0_16 += (1 - rt2_0_16) * (input[i] > (64 + offset2));

			int rt2_0_17 = (input[i] > (69 + offset2));
			int t2_0_17 = rt2_0_17 * (2 + (input[i] > (70 + offset2)));
			t2_0_17 += (1 - rt2_0_17) * (input[i] > (68 + offset2));

			int rt2_0_18 = (input[i] > (73 + offset2));
			int t2_0_18 = rt2_0_18 * (2 + (input[i] > (74 + offset2)));
			t2_0_18 += (1 - rt2_0_18) * (input[i] > (72 + offset2));

			int rt2_0_19 = (input[i] > (77 + offset2));
			int t2_0_19 = rt2_0_19 * (2 + (input[i] > (78 + offset2)));
			t2_0_19 += (1 - rt2_0_19) * (input[i] > (76 + offset2));

			int rt2_0_20 = (input[i] > (81 + offset2));
			int t2_0_20 = rt2_0_20 * (2 + (input[i] > (82 + offset2)));
			t2_0_20 += (1 - rt2_0_20) * (input[i] > (80 + offset2));

			int rt2_0_21 = (input[i] > (85 + offset2));
			int t2_0_21 = rt2_0_21 * (2 + (input[i] > (86 + offset2)));
			t2_0_21 += (1 - rt2_0_21) * (input[i] > (84 + offset2));

			int rt2_0_22 = (input[i] > (89 + offset2));
			int t2_0_22 = rt2_0_22 * (2 + (input[i] > (90 + offset2)));
			t2_0_22 += (1 - rt2_0_22) * (input[i] > (88 + offset2));

			int rt2_0_23 = (input[i] > (93 + offset2));
			int t2_0_23 = rt2_0_23 * (2 + (input[i] > (94 + offset2)));
			t2_0_23 += (1 - rt2_0_23) * (input[i] > (92 + offset2));

			int rt2_0_24 = (input[i] > (97 + offset2));
			int t2_0_24 = rt2_0_24 * (2 + (input[i] > (98 + offset2)));
			t2_0_24 += (1 - rt2_0_24) * (input[i] > (96 + offset2));

			int rt2_0_25 = (input[i] > (101 + offset2));
			int t2_0_25 = rt2_0_25 * (2 + (input[i] > (102 + offset2)));
			t2_0_25 += (1 - rt2_0_25) * (input[i] > (100 + offset2));

			int rt2_0_26 = (input[i] > (105 + offset2));
			int t2_0_26 = rt2_0_26 * (2 + (input[i] > (106 + offset2)));
			t2_0_26 += (1 - rt2_0_26) * (input[i] > (104 + offset2));

			int rt2_0_27 = (input[i] > (109 + offset2));
			int t2_0_27 = rt2_0_27 * (2 + (input[i] > (110 + offset2)));
			t2_0_27 += (1 - rt2_0_27) * (input[i] > (108 + offset2));

			int rt2_0_28 = (input[i] > (113 + offset2));
			int t2_0_28 = rt2_0_28 * (2 + (input[i] > (114 + offset2)));
			t2_0_28 += (1 - rt2_0_28) * (input[i] > (112 + offset2));

			int rt2_0_29 = (input[i] > (117 + offset2));
			int t2_0_29 = rt2_0_29 * (2 + (input[i] > (118 + offset2)));
			t2_0_29 += (1 - rt2_0_29) * (input[i] > (116 + offset2));

			int rt2_0_30 = (input[i] > (121 + offset2));
			int t2_0_30 = rt2_0_30 * (2 + (input[i] > (122 + offset2)));
			t2_0_30 += (1 - rt2_0_30) * (input[i] > (120 + offset2));

			int rt2_0_31 = (input[i] > (125 + offset2));
			int t2_0_31 = rt2_0_31 * (2 + (input[i] > (126 + offset2)));
			t2_0_31 += (1 - rt2_0_31) * (input[i] > (124 + offset2));

			int rt2_1_0 = (input[i] > (3 + offset2));
			int t2_1_0 = rt2_1_0 * (4 + t2_0_1);
			t2_1_0 += (1 - rt2_1_0) * t2_0_0;

			int rt2_1_1 = (input[i] > (11 + offset2));
			int t2_1_1 = rt2_1_1 * (4 + t2_0_3);
			t2_1_1 += (1 - rt2_1_1) * t2_0_2;

			int rt2_1_2 = (input[i] > (19 + offset2));
			int t2_1_2 = rt2_1_2 * (4 + t2_0_5);
			t2_1_2 += (1 - rt2_1_2) * t2_0_4;

			int rt2_1_3 = (input[i] > (27 + offset2));
			int t2_1_3 = rt2_1_3 * (4 + t2_0_7);
			t2_1_3 += (1 - rt2_1_3) * t2_0_6;

			int rt2_1_4 = (input[i] > (35 + offset2));
			int t2_1_4 = rt2_1_4 * (4 + t2_0_9);
			t2_1_4 += (1 - rt2_1_4) * t2_0_8;

			int rt2_1_5 = (input[i] > (43 + offset2));
			int t2_1_5 = rt2_1_5 * (4 + t2_0_11);
			t2_1_5 += (1 - rt2_1_5) * t2_0_10;

			int rt2_1_6 = (input[i] > (51 + offset2));
			int t2_1_6 = rt2_1_6 * (4 + t2_0_13);
			t2_1_6 += (1 - rt2_1_6) * t2_0_12;

			int rt2_1_7 = (input[i] > (59 + offset2));
			int t2_1_7 = rt2_1_7 * (4 + t2_0_15);
			t2_1_7 += (1 - rt2_1_7) * t2_0_14;

			int rt2_1_8 = (input[i] > (67 + offset2));
			int t2_1_8 = rt2_1_8 * (4 + t2_0_17);
			t2_1_8 += (1 - rt2_1_8) * t2_0_16;

			int rt2_1_9 = (input[i] > (75 + offset2));
			int t2_1_9 = rt2_1_9 * (4 + t2_0_19);
			t2_1_9 += (1 - rt2_1_9) * t2_0_18;

			int rt2_1_10 = (input[i] > (83 + offset2));
			int t2_1_10 = rt2_1_10 * (4 + t2_0_21);
			t2_1_10 += (1 - rt2_1_10) * t2_0_20;

			int rt2_1_11 = (input[i] > (91 + offset2));
			int t2_1_11 = rt2_1_11 * (4 + t2_0_23);
			t2_1_11 += (1 - rt2_1_11) * t2_0_22;

			int rt2_1_12 = (input[i] > (99 + offset2));
			int t2_1_12 = rt2_1_12 * (4 + t2_0_25);
			t2_1_12 += (1 - rt2_1_12) * t2_0_24;

			int rt2_1_13 = (input[i] > (107 + offset2));
			int t2_1_13 = rt2_1_13 * (4 + t2_0_27);
			t2_1_13 += (1 - rt2_1_13) * t2_0_26;

			int rt2_1_14 = (input[i] > (115 + offset2));
			int t2_1_14 = rt2_1_14 * (4 + t2_0_29);
			t2_1_14 += (1 - rt2_1_14) * t2_0_28;

			int rt2_1_15 = (input[i] > (123 + offset2));
			int t2_1_15 = rt2_1_15 * (4 + t2_0_31);
			t2_1_15 += (1 - rt2_1_15) * t2_0_30;

			int rt2_2_0 = (input[i] > (7 + offset2));
			int t2_2_0 = rt2_2_0 * (8 + t2_1_1);
			t2_2_0 += (1 - rt2_2_0) * t2_1_0;

			int rt2_2_1 = (input[i] > (23 + offset2));
			int t2_2_1 = rt2_2_1 * (8 + t2_1_3);
			t2_2_1 += (1 - rt2_2_1) * t2_1_2;

			int rt2_2_2 = (input[i] > (39 + offset2));
			int t2_2_2 = rt2_2_2 * (8 + t2_1_5);
			t2_2_2 += (1 - rt2_2_2) * t2_1_4;

			int rt2_2_3 = (input[i] > (55 + offset2));
			int t2_2_3 = rt2_2_3 * (8 + t2_1_7);
			t2_2_3 += (1 - rt2_2_3) * t2_1_6;

			int rt2_2_4 = (input[i] > (71 + offset2));
			int t2_2_4 = rt2_2_4 * (8 + t2_1_9);
			t2_2_4 += (1 - rt2_2_4) * t2_1_8;

			int rt2_2_5 = (input[i] > (87 + offset2));
			int t2_2_5 = rt2_2_5 * (8 + t2_1_11);
			t2_2_5 += (1 - rt2_2_5) * t2_1_10;

			int rt2_2_6 = (input[i] > (103 + offset2));
			int t2_2_6 = rt2_2_6 * (8 + t2_1_13);
			t2_2_6 += (1 - rt2_2_6) * t2_1_12;

			int rt2_2_7 = (input[i] > (119 + offset2));
			int t2_2_7 = rt2_2_7 * (8 + t2_1_15);
			t2_2_7 += (1 - rt2_2_7) * t2_1_14;

			int rt2_3_0 = (input[i] > (15 + offset2));
			int t2_3_0 = rt2_3_0 * (16 + t2_2_1);
			t2_3_0 += (1 - rt2_3_0) * t2_2_0;

			int rt2_3_1 = (input[i] > (47 + offset2));
			int t2_3_1 = rt2_3_1 * (16 + t2_2_3);
			t2_3_1 += (1 - rt2_3_1) * t2_2_2;

			int rt2_3_2 = (input[i] > (79 + offset2));
			int t2_3_2 = rt2_3_2 * (16 + t2_2_5);
			t2_3_2 += (1 - rt2_3_2) * t2_2_4;

			int rt2_3_3 = (input[i] > (111 + offset2));
			int t2_3_3 = rt2_3_3 * (16 + t2_2_7);
			t2_3_3 += (1 - rt2_3_3) * t2_2_6;

			int rt2_4_0 = (input[i] > (31 + offset2));
			int t2_4_0 = rt2_4_0 * (32 + t2_3_1);
			t2_4_0 += (1 - rt2_4_0) * t2_3_0;

			int rt2_4_1 = (input[i] > (95 + offset2));
			int t2_4_1 = rt2_4_1 * (32 + t2_3_3);
			t2_4_1 += (1 - rt2_4_1) * t2_3_2;

			int rt2_5_0 = (input[i] > (63 + offset2));
			int t2_5_0 = rt2_5_0 * (64 + t2_4_1);
			t2_5_0 += (1 - rt2_5_0) * t2_4_0;

#endif
#if defined(_4TREE)
			int rt3_0_0 = (input[i] > (1 + offset3));
			int t3_0_0 = rt3_0_0 * (2 + (input[i] > (2 + offset3)));
			t3_0_0 += (1 - rt3_0_0) * (input[i] > (0 + offset3));

			int rt3_0_1 = (input[i] > (5 + offset3));
			int t3_0_1 = rt3_0_1 * (2 + (input[i] > (6 + offset3)));
			t3_0_1 += (1 - rt3_0_1) * (input[i] > (4 + offset3));

			int rt3_0_2 = (input[i] > (9 + offset3));
			int t3_0_2 = rt3_0_2 * (2 + (input[i] > (10 + offset3)));
			t3_0_2 += (1 - rt3_0_2) * (input[i] > (8 + offset3));

			int rt3_0_3 = (input[i] > (13 + offset3));
			int t3_0_3 = rt3_0_3 * (2 + (input[i] > (14 + offset3)));
			t3_0_3 += (1 - rt3_0_3) * (input[i] > (12 + offset3));

			int rt3_0_4 = (input[i] > (17 + offset3));
			int t3_0_4 = rt3_0_4 * (2 + (input[i] > (18 + offset3)));
			t3_0_4 += (1 - rt3_0_4) * (input[i] > (16 + offset3));

			int rt3_0_5 = (input[i] > (21 + offset3));
			int t3_0_5 = rt3_0_5 * (2 + (input[i] > (22 + offset3)));
			t3_0_5 += (1 - rt3_0_5) * (input[i] > (20 + offset3));

			int rt3_0_6 = (input[i] > (25 + offset3));
			int t3_0_6 = rt3_0_6 * (2 + (input[i] > (26 + offset3)));
			t3_0_6 += (1 - rt3_0_6) * (input[i] > (24 + offset3));

			int rt3_0_7 = (input[i] > (29 + offset3));
			int t3_0_7 = rt3_0_7 * (2 + (input[i] > (30 + offset3)));
			t3_0_7 += (1 - rt3_0_7) * (input[i] > (28 + offset3));

			int rt3_0_8 = (input[i] > (33 + offset3));
			int t3_0_8 = rt3_0_8 * (2 + (input[i] > (34 + offset3)));
			t3_0_8 += (1 - rt3_0_8) * (input[i] > (32 + offset3));

			int rt3_0_9 = (input[i] > (37 + offset3));
			int t3_0_9 = rt3_0_9 * (2 + (input[i] > (38 + offset3)));
			t3_0_9 += (1 - rt3_0_9) * (input[i] > (36 + offset3));

			int rt3_0_10 = (input[i] > (41 + offset3));
			int t3_0_10 = rt3_0_10 * (2 + (input[i] > (42 + offset3)));
			t3_0_10 += (1 - rt3_0_10) * (input[i] > (40 + offset3));

			int rt3_0_11 = (input[i] > (45 + offset3));
			int t3_0_11 = rt3_0_11 * (2 + (input[i] > (46 + offset3)));
			t3_0_11 += (1 - rt3_0_11) * (input[i] > (44 + offset3));

			int rt3_0_12 = (input[i] > (49 + offset3));
			int t3_0_12 = rt3_0_12 * (2 + (input[i] > (50 + offset3)));
			t3_0_12 += (1 - rt3_0_12) * (input[i] > (48 + offset3));

			int rt3_0_13 = (input[i] > (53 + offset3));
			int t3_0_13 = rt3_0_13 * (2 + (input[i] > (54 + offset3)));
			t3_0_13 += (1 - rt3_0_13) * (input[i] > (52 + offset3));

			int rt3_0_14 = (input[i] > (57 + offset3));
			int t3_0_14 = rt3_0_14 * (2 + (input[i] > (58 + offset3)));
			t3_0_14 += (1 - rt3_0_14) * (input[i] > (56 + offset3));

			int rt3_0_15 = (input[i] > (61 + offset3));
			int t3_0_15 = rt3_0_15 * (2 + (input[i] > (62 + offset3)));
			t3_0_15 += (1 - rt3_0_15) * (input[i] > (60 + offset3));

			int rt3_0_16 = (input[i] > (65 + offset3));
			int t3_0_16 = rt3_0_16 * (2 + (input[i] > (66 + offset3)));
			t3_0_16 += (1 - rt3_0_16) * (input[i] > (64 + offset3));

			int rt3_0_17 = (input[i] > (69 + offset3));
			int t3_0_17 = rt3_0_17 * (2 + (input[i] > (70 + offset3)));
			t3_0_17 += (1 - rt3_0_17) * (input[i] > (68 + offset3));

			int rt3_0_18 = (input[i] > (73 + offset3));
			int t3_0_18 = rt3_0_18 * (2 + (input[i] > (74 + offset3)));
			t3_0_18 += (1 - rt3_0_18) * (input[i] > (72 + offset3));

			int rt3_0_19 = (input[i] > (77 + offset3));
			int t3_0_19 = rt3_0_19 * (2 + (input[i] > (78 + offset3)));
			t3_0_19 += (1 - rt3_0_19) * (input[i] > (76 + offset3));

			int rt3_0_20 = (input[i] > (81 + offset3));
			int t3_0_20 = rt3_0_20 * (2 + (input[i] > (82 + offset3)));
			t3_0_20 += (1 - rt3_0_20) * (input[i] > (80 + offset3));

			int rt3_0_21 = (input[i] > (85 + offset3));
			int t3_0_21 = rt3_0_21 * (2 + (input[i] > (86 + offset3)));
			t3_0_21 += (1 - rt3_0_21) * (input[i] > (84 + offset3));

			int rt3_0_22 = (input[i] > (89 + offset3));
			int t3_0_22 = rt3_0_22 * (2 + (input[i] > (90 + offset3)));
			t3_0_22 += (1 - rt3_0_22) * (input[i] > (88 + offset3));

			int rt3_0_23 = (input[i] > (93 + offset3));
			int t3_0_23 = rt3_0_23 * (2 + (input[i] > (94 + offset3)));
			t3_0_23 += (1 - rt3_0_23) * (input[i] > (92 + offset3));

			int rt3_0_24 = (input[i] > (97 + offset3));
			int t3_0_24 = rt3_0_24 * (2 + (input[i] > (98 + offset3)));
			t3_0_24 += (1 - rt3_0_24) * (input[i] > (96 + offset3));

			int rt3_0_25 = (input[i] > (101 + offset3));
			int t3_0_25 = rt3_0_25 * (2 + (input[i] > (102 + offset3)));
			t3_0_25 += (1 - rt3_0_25) * (input[i] > (100 + offset3));

			int rt3_0_26 = (input[i] > (105 + offset3));
			int t3_0_26 = rt3_0_26 * (2 + (input[i] > (106 + offset3)));
			t3_0_26 += (1 - rt3_0_26) * (input[i] > (104 + offset3));

			int rt3_0_27 = (input[i] > (109 + offset3));
			int t3_0_27 = rt3_0_27 * (2 + (input[i] > (110 + offset3)));
			t3_0_27 += (1 - rt3_0_27) * (input[i] > (108 + offset3));

			int rt3_0_28 = (input[i] > (113 + offset3));
			int t3_0_28 = rt3_0_28 * (2 + (input[i] > (114 + offset3)));
			t3_0_28 += (1 - rt3_0_28) * (input[i] > (112 + offset3));

			int rt3_0_29 = (input[i] > (117 + offset3));
			int t3_0_29 = rt3_0_29 * (2 + (input[i] > (118 + offset3)));
			t3_0_29 += (1 - rt3_0_29) * (input[i] > (116 + offset3));

			int rt3_0_30 = (input[i] > (121 + offset3));
			int t3_0_30 = rt3_0_30 * (2 + (input[i] > (122 + offset3)));
			t3_0_30 += (1 - rt3_0_30) * (input[i] > (120 + offset3));

			int rt3_0_31 = (input[i] > (125 + offset3));
			int t3_0_31 = rt3_0_31 * (2 + (input[i] > (126 + offset3)));
			t3_0_31 += (1 - rt3_0_31) * (input[i] > (124 + offset3));

			int rt3_1_0 = (input[i] > (3 + offset3));
			int t3_1_0 = rt3_1_0 * (4 + t3_0_1);
			t3_1_0 += (1 - rt3_1_0) * t3_0_0;

			int rt3_1_1 = (input[i] > (11 + offset3));
			int t3_1_1 = rt3_1_1 * (4 + t3_0_3);
			t3_1_1 += (1 - rt3_1_1) * t3_0_2;

			int rt3_1_2 = (input[i] > (19 + offset3));
			int t3_1_2 = rt3_1_2 * (4 + t3_0_5);
			t3_1_2 += (1 - rt3_1_2) * t3_0_4;

			int rt3_1_3 = (input[i] > (27 + offset3));
			int t3_1_3 = rt3_1_3 * (4 + t3_0_7);
			t3_1_3 += (1 - rt3_1_3) * t3_0_6;

			int rt3_1_4 = (input[i] > (35 + offset3));
			int t3_1_4 = rt3_1_4 * (4 + t3_0_9);
			t3_1_4 += (1 - rt3_1_4) * t3_0_8;

			int rt3_1_5 = (input[i] > (43 + offset3));
			int t3_1_5 = rt3_1_5 * (4 + t3_0_11);
			t3_1_5 += (1 - rt3_1_5) * t3_0_10;

			int rt3_1_6 = (input[i] > (51 + offset3));
			int t3_1_6 = rt3_1_6 * (4 + t3_0_13);
			t3_1_6 += (1 - rt3_1_6) * t3_0_12;

			int rt3_1_7 = (input[i] > (59 + offset3));
			int t3_1_7 = rt3_1_7 * (4 + t3_0_15);
			t3_1_7 += (1 - rt3_1_7) * t3_0_14;

			int rt3_1_8 = (input[i] > (67 + offset3));
			int t3_1_8 = rt3_1_8 * (4 + t3_0_17);
			t3_1_8 += (1 - rt3_1_8) * t3_0_16;

			int rt3_1_9 = (input[i] > (75 + offset3));
			int t3_1_9 = rt3_1_9 * (4 + t3_0_19);
			t3_1_9 += (1 - rt3_1_9) * t3_0_18;

			int rt3_1_10 = (input[i] > (83 + offset3));
			int t3_1_10 = rt3_1_10 * (4 + t3_0_21);
			t3_1_10 += (1 - rt3_1_10) * t3_0_20;

			int rt3_1_11 = (input[i] > (91 + offset3));
			int t3_1_11 = rt3_1_11 * (4 + t3_0_23);
			t3_1_11 += (1 - rt3_1_11) * t3_0_22;

			int rt3_1_12 = (input[i] > (99 + offset3));
			int t3_1_12 = rt3_1_12 * (4 + t3_0_25);
			t3_1_12 += (1 - rt3_1_12) * t3_0_24;

			int rt3_1_13 = (input[i] > (107 + offset3));
			int t3_1_13 = rt3_1_13 * (4 + t3_0_27);
			t3_1_13 += (1 - rt3_1_13) * t3_0_26;

			int rt3_1_14 = (input[i] > (115 + offset3));
			int t3_1_14 = rt3_1_14 * (4 + t3_0_29);
			t3_1_14 += (1 - rt3_1_14) * t3_0_28;

			int rt3_1_15 = (input[i] > (123 + offset3));
			int t3_1_15 = rt3_1_15 * (4 + t3_0_31);
			t3_1_15 += (1 - rt3_1_15) * t3_0_30;

			int rt3_2_0 = (input[i] > (7 + offset3));
			int t3_2_0 = rt3_2_0 * (8 + t3_1_1);
			t3_2_0 += (1 - rt3_2_0) * t3_1_0;

			int rt3_2_1 = (input[i] > (23 + offset3));
			int t3_2_1 = rt3_2_1 * (8 + t3_1_3);
			t3_2_1 += (1 - rt3_2_1) * t3_1_2;

			int rt3_2_2 = (input[i] > (39 + offset3));
			int t3_2_2 = rt3_2_2 * (8 + t3_1_5);
			t3_2_2 += (1 - rt3_2_2) * t3_1_4;

			int rt3_2_3 = (input[i] > (55 + offset3));
			int t3_2_3 = rt3_2_3 * (8 + t3_1_7);
			t3_2_3 += (1 - rt3_2_3) * t3_1_6;

			int rt3_2_4 = (input[i] > (71 + offset3));
			int t3_2_4 = rt3_2_4 * (8 + t3_1_9);
			t3_2_4 += (1 - rt3_2_4) * t3_1_8;

			int rt3_2_5 = (input[i] > (87 + offset3));
			int t3_2_5 = rt3_2_5 * (8 + t3_1_11);
			t3_2_5 += (1 - rt3_2_5) * t3_1_10;

			int rt3_2_6 = (input[i] > (103 + offset3));
			int t3_2_6 = rt3_2_6 * (8 + t3_1_13);
			t3_2_6 += (1 - rt3_2_6) * t3_1_12;

			int rt3_2_7 = (input[i] > (119 + offset3));
			int t3_2_7 = rt3_2_7 * (8 + t3_1_15);
			t3_2_7 += (1 - rt3_2_7) * t3_1_14;

			int rt3_3_0 = (input[i] > (15 + offset3));
			int t3_3_0 = rt3_3_0 * (16 + t3_2_1);
			t3_3_0 += (1 - rt3_3_0) * t3_2_0;

			int rt3_3_1 = (input[i] > (47 + offset3));
			int t3_3_1 = rt3_3_1 * (16 + t3_2_3);
			t3_3_1 += (1 - rt3_3_1) * t3_2_2;

			int rt3_3_2 = (input[i] > (79 + offset3));
			int t3_3_2 = rt3_3_2 * (16 + t3_2_5);
			t3_3_2 += (1 - rt3_3_2) * t3_2_4;

			int rt3_3_3 = (input[i] > (111 + offset3));
			int t3_3_3 = rt3_3_3 * (16 + t3_2_7);
			t3_3_3 += (1 - rt3_3_3) * t3_2_6;

			int rt3_4_0 = (input[i] > (31 + offset3));
			int t3_4_0 = rt3_4_0 * (32 + t3_3_1);
			t3_4_0 += (1 - rt3_4_0) * t3_3_0;

			int rt3_4_1 = (input[i] > (95 + offset3));
			int t3_4_1 = rt3_4_1 * (32 + t3_3_3);
			t3_4_1 += (1 - rt3_4_1) * t3_3_2;

			int rt3_5_0 = (input[i] > (63 + offset3));
			int t3_5_0 = rt3_5_0 * (64 + t3_4_1);
			t3_5_0 += (1 - rt3_5_0) * t3_4_0;
#endif
			vR[i] = t0_5_0
#if defined(_2TREE) || defined(_3TREE) || defined(_4TREE)
					+ (t0_5_0 == t1_5_0)
#endif
#if defined(_3TREE) || defined(_4TREE)
					+ (t0_5_0 == t2_5_0)
#endif
#if defined(_4TREE)
					+ (t0_5_0 == t3_5_0)
#endif
				;
		}
	}
}

int main(int argc, char **argv)
{
	float elapsed_time;
	// set up device
	int dev = 0;
	printf("[OPENMP - Random Forest]: EXP %s\n", EXP_NAME);

	// set up data size of vectors
	int nElem = N_ELEM;
	printf("[OPENMP - Random Forest]: Vector Size %d\n", nElem);

	// malloc host memory
	size_t nBytes = nElem * sizeof(float);
	float *vR;
	vR = (float *)malloc(nBytes);
	float *input;
	input = (float *)malloc(nBytes);

	printf("[OPENMP - Random Forest]: Start Reading Dataset\n");
	initData(input, nElem);
	printf("[OPENMP - Random Forest]: Finished Reading Dataset\n");
	memset(vR, 0, nBytes);

	// record start event
	struct timeval stop, start;
	gettimeofday(&start, NULL);

	RF_kernel(input, nElem, 0, 0, 0, 0, vR);

	// calculate elapsed time
	gettimeofday(&stop, NULL);
	// printf("[OPENMP]: RF with IF - execution time = %lu us\n", (stop.tv_sec - start.tv_sec) * 1000000 + stop.tv_usec - start.tv_usec);
	elapsed_time = (stop.tv_sec - start.tv_sec) * 1000000 + stop.tv_usec - start.tv_usec;
	registerTime(elapsed_time);

	// Verify the answers
	char flag = 1;
	for (int i = 0; i < nElem; i++)
	{
		if (i < 32)
		{
			printf("%.3f ", vR[i]);
		}
		if (input[i] != vR[i])
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

	// free host memory
	free(input);
	free(vR);
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

void registerTime(unsigned long value)
{
	printf("[OPENMP - Random Forest]: Time spent: %lu.\n", value);
}
