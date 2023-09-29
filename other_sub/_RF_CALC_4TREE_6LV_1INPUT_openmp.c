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
 #define _RF_CALC_3TREE_GLOBAL
//#define _RF_CALC_4TREE_GLOBAL

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

			int rt0_3_0 = (input[i] > (15 + offset0));
			int t0_3_0 = rt0_3_0 * (16 + t0_2_1);
			t0_3_0 += (1 - rt0_3_0) * t0_2_0;

			int rt0_3_1 = (input[i] > (47 + offset0));
			int t0_3_1 = rt0_3_1 * (16 + t0_2_3);
			t0_3_1 += (1 - rt0_3_1) * t0_2_2;

			int rt0_4_0 = (input[i] > (31 + offset0));
			int t0_4_0 = rt0_4_0 * (32 + t0_3_1);
			t0_4_0 += (1 - rt0_4_0) * t0_3_0;

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

			int rt1_3_0 = (input[i] > (15 + offset1));
			int t1_3_0 = rt1_3_0 * (16 + t1_2_1);
			t1_3_0 += (1 - rt1_3_0) * t1_2_0;

			int rt1_3_1 = (input[i] > (47 + offset1));
			int t1_3_1 = rt1_3_1 * (16 + t1_2_3);
			t1_3_1 += (1 - rt1_3_1) * t1_2_2;

			int rt1_4_0 = (input[i] > (31 + offset1));
			int t1_4_0 = rt1_4_0 * (32 + t1_3_1);
			t1_4_0 += (1 - rt1_4_0) * t1_3_0;

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

			int rt2_3_0 = (input[i] > (15 + offset2));
			int t2_3_0 = rt2_3_0 * (16 + t2_2_1);
			t2_3_0 += (1 - rt2_3_0) * t2_2_0;

			int rt2_3_1 = (input[i] > (47 + offset2));
			int t2_3_1 = rt2_3_1 * (16 + t2_2_3);
			t2_3_1 += (1 - rt2_3_1) * t2_2_2;

			int rt2_4_0 = (input[i] > (31 + offset2));
			int t2_4_0 = rt2_4_0 * (32 + t2_3_1);
			t2_4_0 += (1 - rt2_4_0) * t2_3_0;

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

			int rt3_3_0 = (input[i] > (15 + offset3));
			int t3_3_0 = rt3_3_0 * (16 + t3_2_1);
			t3_3_0 += (1 - rt3_3_0) * t3_2_0;

			int rt3_3_1 = (input[i] > (47 + offset3));
			int t3_3_1 = rt3_3_1 * (16 + t3_2_3);
			t3_3_1 += (1 - rt3_3_1) * t3_2_2;

			int rt3_4_0 = (input[i] > (31 + offset3));
			int t3_4_0 = rt3_4_0 * (32 + t3_3_1);
			t3_4_0 += (1 - rt3_4_0) * t3_3_0;

#endif
			vR[i] = t0_4_0
#if defined(_2TREE) || defined(_3TREE) || defined(_4TREE)
					+ (t0_4_0 == t1_4_0)
#endif
#if defined(_3TREE) || defined(_4TREE)
					+ (t0_4_0 == t2_4_0)
#endif
#if defined(_4TREE)
					+ (t0_4_0 == t3_4_0)
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
