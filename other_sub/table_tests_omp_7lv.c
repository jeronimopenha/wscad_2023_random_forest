#include <sys/time.h>
#include <omp.h>
#include <stdio.h>
#include <stdlib.h>
#include <stdbool.h>
#include <time.h>
#include <string.h>

#define TAM_TABLE 255
#define TAM_TH 127

#define N_ELEM 50000000
// #define N_ELEM 100000000

#define INDIRECT
#define _MOD 128

 #define _RF_TABLE_1TREE_GLOBAL
//#define _RF_TABLE_2TREE_GLOBAL
// #define _RF_TABLE_3TREE_GLOBAL
//#define _RF_TABLE_4TREE_GLOBAL
// #define _RF_TABLE_4TREE_CONST

#ifdef _RF_TABLE_4TREE_CONST
const int table[] = {(2 << 2) | (1 << 10),
					 (4 << 2) | (3 << 10),
					 (6 << 2) | (5 << 10),
					 (8 << 2) | (7 << 10),
					 (10 << 2) | (9 << 10),
					 (12 << 2) | (11 << 10),
					 (14 << 2) | (13 << 10),
					 (16 << 2) | (15 << 10),
					 (18 << 2) | (17 << 10),
					 (20 << 2) | (19 << 10),
					 (22 << 2) | (21 << 10),
					 (24 << 2) | (23 << 10),
					 (26 << 2) | (25 << 10),
					 (28 << 2) | (27 << 10),
					 (30 << 2) | (29 << 10),
					 (32 << 2) | (31 << 10),
					 (34 << 2) | (33 << 10),
					 (36 << 2) | (35 << 10),
					 (38 << 2) | (37 << 10),
					 (40 << 2) | (39 << 10),
					 (42 << 2) | (41 << 10),
					 (44 << 2) | (43 << 10),
					 (46 << 2) | (45 << 10),
					 (48 << 2) | (47 << 10),
					 (50 << 2) | (49 << 10),
					 (52 << 2) | (51 << 10),
					 (54 << 2) | (53 << 10),
					 (56 << 2) | (55 << 10),
					 (58 << 2) | (57 << 10),
					 (60 << 2) | (59 << 10),
					 (62 << 2) | (61 << 10),
					 (64 << 2) | (63 << 10),
					 (66 << 2) | (65 << 10),
					 (68 << 2) | (67 << 10),
					 (70 << 2) | (69 << 10),
					 (72 << 2) | (71 << 10),
					 (74 << 2) | (73 << 10),
					 (76 << 2) | (75 << 10),
					 (78 << 2) | (77 << 10),
					 (80 << 2) | (79 << 10),
					 (82 << 2) | (81 << 10),
					 (84 << 2) | (83 << 10),
					 (86 << 2) | (85 << 10),
					 (88 << 2) | (87 << 10),
					 (90 << 2) | (89 << 10),
					 (92 << 2) | (91 << 10),
					 (94 << 2) | (93 << 10),
					 (96 << 2) | (95 << 10),
					 (98 << 2) | (97 << 10),
					 (100 << 2) | (99 << 10),
					 (102 << 2) | (101 << 10),
					 (104 << 2) | (103 << 10),
					 (106 << 2) | (105 << 10),
					 (108 << 2) | (107 << 10),
					 (110 << 2) | (109 << 10),
					 (112 << 2) | (111 << 10),
					 (114 << 2) | (113 << 10),
					 (116 << 2) | (115 << 10),
					 (118 << 2) | (117 << 10),
					 (120 << 2) | (119 << 10),
					 (122 << 2) | (121 << 10),
					 (124 << 2) | (123 << 10),
					 (126 << 2) | (125 << 10),
					 (128 << 2) | (127 << 10),
					 (130 << 2) | (129 << 10),
					 (132 << 2) | (131 << 10),
					 (134 << 2) | (133 << 10),
					 (136 << 2) | (135 << 10),
					 (138 << 2) | (137 << 10),
					 (140 << 2) | (139 << 10),
					 (142 << 2) | (141 << 10),
					 (144 << 2) | (143 << 10),
					 (146 << 2) | (145 << 10),
					 (148 << 2) | (147 << 10),
					 (150 << 2) | (149 << 10),
					 (152 << 2) | (151 << 10),
					 (154 << 2) | (153 << 10),
					 (156 << 2) | (155 << 10),
					 (158 << 2) | (157 << 10),
					 (160 << 2) | (159 << 10),
					 (162 << 2) | (161 << 10),
					 (164 << 2) | (163 << 10),
					 (166 << 2) | (165 << 10),
					 (168 << 2) | (167 << 10),
					 (170 << 2) | (169 << 10),
					 (172 << 2) | (171 << 10),
					 (174 << 2) | (173 << 10),
					 (176 << 2) | (175 << 10),
					 (178 << 2) | (177 << 10),
					 (180 << 2) | (179 << 10),
					 (182 << 2) | (181 << 10),
					 (184 << 2) | (183 << 10),
					 (186 << 2) | (185 << 10),
					 (188 << 2) | (187 << 10),
					 (190 << 2) | (189 << 10),
					 (192 << 2) | (191 << 10),
					 (194 << 2) | (193 << 10),
					 (196 << 2) | (195 << 10),
					 (198 << 2) | (197 << 10),
					 (200 << 2) | (199 << 10),
					 (202 << 2) | (201 << 10),
					 (204 << 2) | (203 << 10),
					 (206 << 2) | (205 << 10),
					 (208 << 2) | (207 << 10),
					 (210 << 2) | (209 << 10),
					 (212 << 2) | (211 << 10),
					 (214 << 2) | (213 << 10),
					 (216 << 2) | (215 << 10),
					 (218 << 2) | (217 << 10),
					 (220 << 2) | (219 << 10),
					 (222 << 2) | (221 << 10),
					 (224 << 2) | (223 << 10),
					 (226 << 2) | (225 << 10),
					 (228 << 2) | (227 << 10),
					 (230 << 2) | (229 << 10),
					 (232 << 2) | (231 << 10),
					 (234 << 2) | (233 << 10),
					 (236 << 2) | (235 << 10),
					 (238 << 2) | (237 << 10),
					 (240 << 2) | (239 << 10),
					 (242 << 2) | (241 << 10),
					 (244 << 2) | (243 << 10),
					 (246 << 2) | (245 << 10),
					 (248 << 2) | (247 << 10),
					 (250 << 2) | (249 << 10),
					 (252 << 2) | (251 << 10),
					 (254 << 2) | (253 << 10),
					 0,
					 1,
					 2,
					 3,
					 4,
					 5,
					 6,
					 7,
					 8,
					 9,
					 10,
					 11,
					 12,
					 13,
					 14,
					 15,
					 16,
					 17,
					 18,
					 19,
					 20,
					 21,
					 22,
					 23,
					 24,
					 25,
					 26,
					 27,
					 28,
					 29,
					 30,
					 31,
					 32,
					 33,
					 34,
					 35,
					 36,
					 37,
					 38,
					 39,
					 40,
					 41,
					 42,
					 43,
					 44,
					 45,
					 46,
					 47,
					 48,
					 49,
					 50,
					 51,
					 52,
					 53,
					 54,
					 55,
					 56,
					 57,
					 58,
					 59,
					 60,
					 61,
					 62,
					 63,
					 64,
					 65,
					 66,
					 67,
					 68,
					 69,
					 70,
					 71,
					 72,
					 73,
					 74,
					 75,
					 76,
					 77,
					 78,
					 79,
					 80,
					 81,
					 82,
					 83,
					 84,
					 85,
					 86,
					 87,
					 88,
					 89,
					 90,
					 91,
					 92,
					 93,
					 94,
					 95,
					 96,
					 97,
					 98,
					 99,
					 100,
					 101,
					 102,
					 103,
					 104,
					 105,
					 106,
					 107,
					 108,
					 109,
					 110,
					 111,
					 112,
					 113,
					 114,
					 115,
					 116,
					 117,
					 118,
					 119,
					 120,
					 121,
					 122,
					 123,
					 124,
					 125,
					 126,
					 127};
const float TH[] = {63,
					31,
					95,
					15,
					47,
					79,
					111,
					7,
					23,
					39,
					55,
					71,
					87,
					103,
					119,
					3,
					11,
					19,
					27,
					35,
					43,
					51,
					59,
					67,
					75,
					83,
					91,
					99,
					107,
					115,
					123,
					1,
					5,
					9,
					13,
					17,
					21,
					25,
					29,
					33,
					37,
					41,
					45,
					49,
					53,
					57,
					61,
					65,
					69,
					73,
					77,
					81,
					85,
					89,
					93,
					97,
					101,
					105,
					109,
					113,
					117,
					121,
					125,
					1,
					3,
					5,
					7,
					9,
					11,
					13,
					15,
					17,
					19,
					21,
					23,
					25,
					27,
					29,
					31,
					33,
					35,
					37,
					39,
					41,
					43,
					45,
					47,
					49,
					51,
					53,
					55,
					57,
					59,
					61,
					63,
					65,
					67,
					69,
					71,
					73,
					75,
					77,
					79,
					81,
					83,
					85,
					87,
					89,
					91,
					93,
					95,
					97,
					99,
					101,
					103,
					105,
					107,
					109,
					111,
					113,
					115,
					117,
					119,
					121,
					123,
					125,
					127};
#endif

#if defined(_RF_TABLE_1TREE_GLOBAL) || defined(_RF_TABLE_1TREE_CONST)
#define _1TREE
#elif defined(_RF_TABLE_2TREE_GLOBAL) || defined(_RF_TABLE_2TREE_CONST)
#define _2TREE
#elif defined(_RF_TABLE_3TREE_GLOBAL) || defined(_RF_TABLE_3TREE_CONST)
#define _3TREE
#elif defined(_RF_TABLE_4TREE_GLOBAL) || defined(_RF_TABLE_4TREE_CONST)
#define _4TREE
#endif

#if defined(_RF_TABLE_1TREE_GLOBAL)
#define EXP_NAME "_RF_TABLE_1TREE_GLOBAL"
void RF_kernel(float *input, const int n, const float *TH, const int *table, const int offset0, float *vR)
#elif defined(_RF_TABLE_2TREE_GLOBAL)
#define EXP_NAME "_RF_TABLE_2TREE_GLOBAL"
void RF_kernel(float *input, const int n, const float *TH, const int *table, const int offset0, const int offset1, float *vR)
#elif defined(_RF_TABLE_3TREE_GLOBAL)
#define EXP_NAME "_RF_TABLE_3TREE_GLOBAL"
void RF_kernel(float *input, const int n, const float *TH, const int *table, const int offset0, const int offset1, const int offset2, float *vR)
#elif defined(_RF_TABLE_4TREE_GLOBAL)
#define EXP_NAME "_RF_TABLE_4TREE_GLOBAL"
void RF_kernel(float *input, const int n, const float *TH, const int *table, const int offset0, const int offset1, const int offset2, const int offset3, float *vR)
#elif defined(_RF_TABLE_4TREE_CONST)
#define _CONST
#define EXP_NAME "_RF_TABLE_4TREE_CONST"
void RF_kernel(float *input, const int n, const int offset0, const int offset1, const int offset2, const int offset3, float *vR)
#endif
{
	int nCpu = 16;
	omp_set_num_threads(nCpu);
	printf("\n[OPENMP] Available CPUs %d.\n", nCpu);
#if defined(_RF_TABLE_1TREE_GLOBAL)
#pragma omp parallel shared(input, n, TH, table, offset0, vR)
#elif defined(_RF_TABLE_2TREE_GLOBAL)
#pragma omp parallel shared(input, n, TH, table, offset0, offset1, vR)
#elif defined(_RF_TABLE_3TREE_GLOBAL)
#pragma omp parallel shared(input, n, TH, table, offset0, offset1, offset2, vR)
#elif defined(_RF_TABLE_4TREE_GLOBAL)
#pragma omp parallel shared(input, n, TH, table, offset0, offset1, offset2, offset3, vR)
#elif defined(_RF_TABLE_4TREE_CONST)
#pragma omp parallel shared(input, n, TH, table, offset0, offset1, offset2, offset3, vR)
#endif
	{
		int thId = omp_get_thread_num();
		// printf("\nth%d\n", thId);
		int next = 0, left, right;
		float th;

		for (int i = thId; i < n; i += nCpu)
		{
			int v;
			v = input[i];
			// #define _TEST 1
			// if (i == _TEST)
			//	printf("v=%d \n", v);

			next = 0;

			left = (table[next] >> 2) & 0xff;
			right = (table[next] >> 10) & 0xff;
			th = TH[next];
			next = (v > (th + offset0)) ? left : right;

			// if (i == _TEST)
			//	printf("left=%d , right=%d , th=%f , next=%d \n", left, right, th, next);

			left = (table[next] >> 2) & 0xff;
			right = (table[next] >> 10) & 0xff;
			th = TH[next];
			next = (v > (th + offset0)) ? left : right;

			// if (i == _TEST)
			//	printf("left=%d , right=%d , th=%f , next=%d \n", left, right, th, next);

			left = (table[next] >> 2) & 0xff;
			right = (table[next] >> 10) & 0xff;
			th = TH[next];
			next = (v > (th + offset0)) ? left : right;

			// if (i == _TEST)
			//	printf("left=%d , right=%d , th=%f , next=%d \n", left, right, th, next);

			left = (table[next] >> 2) & 0xff;
			right = (table[next] >> 10) & 0xff;
			th = TH[next];
			next = (v > (th + offset0)) ? left : right;

			// if (i == _TEST)
			//	printf("left=%d , right=%d , th=%f , next=%d \n", left, right, th, next);

			left = (table[next] >> 2) & 0xff;
			right = (table[next] >> 10) & 0xff;
			th = TH[next];
			next = (v > (th + offset0)) ? left : right;

			// if (i == _TEST)
			//	printf("left=%d , right=%d , th=%f , next=%d \n", left, right, th, next);

			left = (table[next] >> 2) & 0xff;
			right = (table[next] >> 10) & 0xff;
			th = TH[next];
			next = (v > (th + offset0)) ? left : right;

			// if (i == _TEST)
			//	printf("left=%d , right=%d , th=%f , next=%d \n", left, right, th, next);

			left = (table[next] >> 2) & 0xff;
			right = (table[next] >> 10) & 0xff;
			th = TH[next];
			next = (v == (th + offset0)) ? left : right;

			// if (i == _TEST)
			//	printf("table[next]=%d", table[next]);

			vR[i] = table[next] + offset0;

#if defined(_2TREE) || defined(_3TREE) || defined(_4TREE)
			v = input[i];
			// if (i == _TEST)
			//	printf("v=%d \n", v);

			next = 0;

			left = (table[next] >> 2) & 0xff;
			right = (table[next] >> 10) & 0xff;
			th = TH[next];
			next = (v > (th + offset1)) ? left : right;

			// if (i == _TEST)
			//	printf("left=%d , right=%d , th=%f , next=%d \n", left, right, th, next);

			left = (table[next] >> 2) & 0xff;
			right = (table[next] >> 10) & 0xff;
			th = TH[next];
			next = (v > (th + offset1)) ? left : right;

			// if (i == _TEST)
			//	printf("left=%d , right=%d , th=%f , next=%d \n", left, right, th, next);

			left = (table[next] >> 2) & 0xff;
			right = (table[next] >> 10) & 0xff;
			th = TH[next];
			next = (v > (th + offset1)) ? left : right;

			// if (i == _TEST)
			//	printf("left=%d , right=%d , th=%f , next=%d \n", left, right, th, next);

			left = (table[next] >> 2) & 0xff;
			right = (table[next] >> 10) & 0xff;
			th = TH[next];
			next = (v > (th + offset1)) ? left : right;

			// if (i == _TEST)
			//	printf("left=%d , right=%d , th=%f , next=%d \n", left, right, th, next);

			left = (table[next] >> 2) & 0xff;
			right = (table[next] >> 10) & 0xff;
			th = TH[next];
			next = (v > (th + offset1)) ? left : right;

			// if (i == _TEST)
			//	printf("left=%d , right=%d , th=%f , next=%d \n", left, right, th, next);

			left = (table[next] >> 2) & 0xff;
			right = (table[next] >> 10) & 0xff;
			th = TH[next];
			next = (v > (th + offset1)) ? left : right;

			// if (i == _TEST)
			//	printf("left=%d , right=%d , th=%f , next=%d \n", left, right, th, next);

			left = (table[next] >> 2) & 0xff;
			right = (table[next] >> 10) & 0xff;
			th = TH[next];
			next = (v == (th + offset1)) ? left : right;

			// if (i == _TEST)
			//	printf("table[next]=%d", table[next]);

			vR[i] = table[next] + offset1;
#endif
#if defined(_3TREE) || defined(_4TREE)
			v = input[i];
			// if (i == _TEST)
			//	printf("v=%d \n", v);

			next = 0;

			left = (table[next] >> 2) & 0xff;
			right = (table[next] >> 10) & 0xff;
			th = TH[next];
			next = (v > (th + offset2)) ? left : right;

			// if (i == _TEST)
			//	printf("left=%d , right=%d , th=%f , next=%d \n", left, right, th, next);

			left = (table[next] >> 2) & 0xff;
			right = (table[next] >> 10) & 0xff;
			th = TH[next];
			next = (v > (th + offset2)) ? left : right;

			// if (i == _TEST)
			//	printf("left=%d , right=%d , th=%f , next=%d \n", left, right, th, next);

			left = (table[next] >> 2) & 0xff;
			right = (table[next] >> 10) & 0xff;
			th = TH[next];
			next = (v > (th + offset2)) ? left : right;

			// if (i == _TEST)
			//	printf("left=%d , right=%d , th=%f , next=%d \n", left, right, th, next);

			left = (table[next] >> 2) & 0xff;
			right = (table[next] >> 10) & 0xff;
			th = TH[next];
			next = (v > (th + offset2)) ? left : right;

			// if (i == _TEST)
			//	printf("left=%d , right=%d , th=%f , next=%d \n", left, right, th, next);

			left = (table[next] >> 2) & 0xff;
			right = (table[next] >> 10) & 0xff;
			th = TH[next];
			next = (v > (th + offset2)) ? left : right;

			// if (i == _TEST)
			//	printf("left=%d , right=%d , th=%f , next=%d \n", left, right, th, next);

			left = (table[next] >> 2) & 0xff;
			right = (table[next] >> 10) & 0xff;
			th = TH[next];
			next = (v > (th + offset2)) ? left : right;

			// if (i == _TEST)
			//	printf("left=%d , right=%d , th=%f , next=%d \n", left, right, th, next);

			left = (table[next] >> 2) & 0xff;
			right = (table[next] >> 10) & 0xff;
			th = TH[next];
			next = (v == (th + offset2)) ? left : right;

			// if (i == _TEST)
			//	printf("table[next]=%d", table[next]);

			vR[i] = table[next] + offset2;
#endif
#if defined(_4TREE)
			v = input[i];
			// if (i == _TEST)
			//	printf("v=%d \n", v);

			next = 0;

			left = (table[next] >> 2) & 0xff;
			right = (table[next] >> 10) & 0xff;
			th = TH[next];
			next = (v > (th + offset3)) ? left : right;

			// if (i == _TEST)
			//	printf("left=%d , right=%d , th=%f , next=%d \n", left, right, th, next);

			left = (table[next] >> 2) & 0xff;
			right = (table[next] >> 10) & 0xff;
			th = TH[next];
			next = (v > (th + offset3)) ? left : right;

			// if (i == _TEST)
			//	printf("left=%d , right=%d , th=%f , next=%d \n", left, right, th, next);

			left = (table[next] >> 2) & 0xff;
			right = (table[next] >> 10) & 0xff;
			th = TH[next];
			next = (v > (th + offset3)) ? left : right;

			// if (i == _TEST)
			//	printf("left=%d , right=%d , th=%f , next=%d \n", left, right, th, next);

			left = (table[next] >> 2) & 0xff;
			right = (table[next] >> 10) & 0xff;
			th = TH[next];
			next = (v > (th + offset3)) ? left : right;

			// if (i == _TEST)
			//	printf("left=%d , right=%d , th=%f , next=%d \n", left, right, th, next);

			left = (table[next] >> 2) & 0xff;
			right = (table[next] >> 10) & 0xff;
			th = TH[next];
			next = (v > (th + offset3)) ? left : right;

			// if (i == _TEST)
			//	printf("left=%d , right=%d , th=%f , next=%d \n", left, right, th, next);

			left = (table[next] >> 2) & 0xff;
			right = (table[next] >> 10) & 0xff;
			th = TH[next];
			next = (v > (th + offset3)) ? left : right;

			// if (i == _TEST)
			//	printf("left=%d , right=%d , th=%f , next=%d \n", left, right, th, next);

			left = (table[next] >> 2) & 0xff;
			right = (table[next] >> 10) & 0xff;
			th = TH[next];
			next = (v == (th + offset3)) ? left : right;

			// if (i == _TEST)
			//	printf("table[next]=%d", table[next]);

			vR[i] = table[next] + offset3;
#endif
		}
	}
}

void initData(float *ip, int size);
void registerTime(unsigned long int value);

int main(int argc, char **argv)
{
	unsigned long int elapsed_time;
	// set up device
	int dev = 0;
	printf("[OPENMP - Random Forest]: EXP %s\n", EXP_NAME);

	// set up data size of vectors
	int nElem = N_ELEM;

	int tamTable = TAM_TABLE;
	int tamTh = TAM_TH;

	printf("[OPENMP - Random Forest]: Vector Size %d\n", nElem);

	// malloc host memory
	size_t nBytes = nElem * sizeof(float);

	size_t tableBytes = tamTable * sizeof(int);
	size_t thBytes = tamTh * sizeof(float);

	float *vR;
	vR = (float *)malloc(nBytes);
	float *input;
	input = (float *)malloc(nBytes);

#ifndef _RF_TABLE_4TREE_CONST
	int *table;
	table = (int *)malloc(tableBytes);
	float *th;
	th = (float *)malloc(thBytes);

	{
		table[0] = (2 << 2) | (1 << 10);
		table[1] = (4 << 2) | (3 << 10);
		table[2] = (6 << 2) | (5 << 10);
		table[3] = (8 << 2) | (7 << 10);
		table[4] = (10 << 2) | (9 << 10);
		table[5] = (12 << 2) | (11 << 10);
		table[6] = (14 << 2) | (13 << 10);
		table[7] = (16 << 2) | (15 << 10);
		table[8] = (18 << 2) | (17 << 10);
		table[9] = (20 << 2) | (19 << 10);
		table[10] = (22 << 2) | (21 << 10);
		table[11] = (24 << 2) | (23 << 10);
		table[12] = (26 << 2) | (25 << 10);
		table[13] = (28 << 2) | (27 << 10);
		table[14] = (30 << 2) | (29 << 10);
		table[15] = (32 << 2) | (31 << 10);
		table[16] = (34 << 2) | (33 << 10);
		table[17] = (36 << 2) | (35 << 10);
		table[18] = (38 << 2) | (37 << 10);
		table[19] = (40 << 2) | (39 << 10);
		table[20] = (42 << 2) | (41 << 10);
		table[21] = (44 << 2) | (43 << 10);
		table[22] = (46 << 2) | (45 << 10);
		table[23] = (48 << 2) | (47 << 10);
		table[24] = (50 << 2) | (49 << 10);
		table[25] = (52 << 2) | (51 << 10);
		table[26] = (54 << 2) | (53 << 10);
		table[27] = (56 << 2) | (55 << 10);
		table[28] = (58 << 2) | (57 << 10);
		table[29] = (60 << 2) | (59 << 10);
		table[30] = (62 << 2) | (61 << 10);
		table[31] = (64 << 2) | (63 << 10);
		table[32] = (66 << 2) | (65 << 10);
		table[33] = (68 << 2) | (67 << 10);
		table[34] = (70 << 2) | (69 << 10);
		table[35] = (72 << 2) | (71 << 10);
		table[36] = (74 << 2) | (73 << 10);
		table[37] = (76 << 2) | (75 << 10);
		table[38] = (78 << 2) | (77 << 10);
		table[39] = (80 << 2) | (79 << 10);
		table[40] = (82 << 2) | (81 << 10);
		table[41] = (84 << 2) | (83 << 10);
		table[42] = (86 << 2) | (85 << 10);
		table[43] = (88 << 2) | (87 << 10);
		table[44] = (90 << 2) | (89 << 10);
		table[45] = (92 << 2) | (91 << 10);
		table[46] = (94 << 2) | (93 << 10);
		table[47] = (96 << 2) | (95 << 10);
		table[48] = (98 << 2) | (97 << 10);
		table[49] = (100 << 2) | (99 << 10);
		table[50] = (102 << 2) | (101 << 10);
		table[51] = (104 << 2) | (103 << 10);
		table[52] = (106 << 2) | (105 << 10);
		table[53] = (108 << 2) | (107 << 10);
		table[54] = (110 << 2) | (109 << 10);
		table[55] = (112 << 2) | (111 << 10);
		table[56] = (114 << 2) | (113 << 10);
		table[57] = (116 << 2) | (115 << 10);
		table[58] = (118 << 2) | (117 << 10);
		table[59] = (120 << 2) | (119 << 10);
		table[60] = (122 << 2) | (121 << 10);
		table[61] = (124 << 2) | (123 << 10);
		table[62] = (126 << 2) | (125 << 10);
		table[63] = (128 << 2) | (127 << 10);
		table[64] = (130 << 2) | (129 << 10);
		table[65] = (132 << 2) | (131 << 10);
		table[66] = (134 << 2) | (133 << 10);
		table[67] = (136 << 2) | (135 << 10);
		table[68] = (138 << 2) | (137 << 10);
		table[69] = (140 << 2) | (139 << 10);
		table[70] = (142 << 2) | (141 << 10);
		table[71] = (144 << 2) | (143 << 10);
		table[72] = (146 << 2) | (145 << 10);
		table[73] = (148 << 2) | (147 << 10);
		table[74] = (150 << 2) | (149 << 10);
		table[75] = (152 << 2) | (151 << 10);
		table[76] = (154 << 2) | (153 << 10);
		table[77] = (156 << 2) | (155 << 10);
		table[78] = (158 << 2) | (157 << 10);
		table[79] = (160 << 2) | (159 << 10);
		table[80] = (162 << 2) | (161 << 10);
		table[81] = (164 << 2) | (163 << 10);
		table[82] = (166 << 2) | (165 << 10);
		table[83] = (168 << 2) | (167 << 10);
		table[84] = (170 << 2) | (169 << 10);
		table[85] = (172 << 2) | (171 << 10);
		table[86] = (174 << 2) | (173 << 10);
		table[87] = (176 << 2) | (175 << 10);
		table[88] = (178 << 2) | (177 << 10);
		table[89] = (180 << 2) | (179 << 10);
		table[90] = (182 << 2) | (181 << 10);
		table[91] = (184 << 2) | (183 << 10);
		table[92] = (186 << 2) | (185 << 10);
		table[93] = (188 << 2) | (187 << 10);
		table[94] = (190 << 2) | (189 << 10);
		table[95] = (192 << 2) | (191 << 10);
		table[96] = (194 << 2) | (193 << 10);
		table[97] = (196 << 2) | (195 << 10);
		table[98] = (198 << 2) | (197 << 10);
		table[99] = (200 << 2) | (199 << 10);
		table[100] = (202 << 2) | (201 << 10);
		table[101] = (204 << 2) | (203 << 10);
		table[102] = (206 << 2) | (205 << 10);
		table[103] = (208 << 2) | (207 << 10);
		table[104] = (210 << 2) | (209 << 10);
		table[105] = (212 << 2) | (211 << 10);
		table[106] = (214 << 2) | (213 << 10);
		table[107] = (216 << 2) | (215 << 10);
		table[108] = (218 << 2) | (217 << 10);
		table[109] = (220 << 2) | (219 << 10);
		table[110] = (222 << 2) | (221 << 10);
		table[111] = (224 << 2) | (223 << 10);
		table[112] = (226 << 2) | (225 << 10);
		table[113] = (228 << 2) | (227 << 10);
		table[114] = (230 << 2) | (229 << 10);
		table[115] = (232 << 2) | (231 << 10);
		table[116] = (234 << 2) | (233 << 10);
		table[117] = (236 << 2) | (235 << 10);
		table[118] = (238 << 2) | (237 << 10);
		table[119] = (240 << 2) | (239 << 10);
		table[120] = (242 << 2) | (241 << 10);
		table[121] = (244 << 2) | (243 << 10);
		table[122] = (246 << 2) | (245 << 10);
		table[123] = (248 << 2) | (247 << 10);
		table[124] = (250 << 2) | (249 << 10);
		table[125] = (252 << 2) | (251 << 10);
		table[126] = (254 << 2) | (253 << 10);
		table[127] = 0;
		table[128] = 1;
		table[129] = 2;
		table[130] = 3;
		table[131] = 4;
		table[132] = 5;
		table[133] = 6;
		table[134] = 7;
		table[135] = 8;
		table[136] = 9;
		table[137] = 10;
		table[138] = 11;
		table[139] = 12;
		table[140] = 13;
		table[141] = 14;
		table[142] = 15;
		table[143] = 16;
		table[144] = 17;
		table[145] = 18;
		table[146] = 19;
		table[147] = 20;
		table[148] = 21;
		table[149] = 22;
		table[150] = 23;
		table[151] = 24;
		table[152] = 25;
		table[153] = 26;
		table[154] = 27;
		table[155] = 28;
		table[156] = 29;
		table[157] = 30;
		table[158] = 31;
		table[159] = 32;
		table[160] = 33;
		table[161] = 34;
		table[162] = 35;
		table[163] = 36;
		table[164] = 37;
		table[165] = 38;
		table[166] = 39;
		table[167] = 40;
		table[168] = 41;
		table[169] = 42;
		table[170] = 43;
		table[171] = 44;
		table[172] = 45;
		table[173] = 46;
		table[174] = 47;
		table[175] = 48;
		table[176] = 49;
		table[177] = 50;
		table[178] = 51;
		table[179] = 52;
		table[180] = 53;
		table[181] = 54;
		table[182] = 55;
		table[183] = 56;
		table[184] = 57;
		table[185] = 58;
		table[186] = 59;
		table[187] = 60;
		table[188] = 61;
		table[189] = 62;
		table[190] = 63;
		table[191] = 64;
		table[192] = 65;
		table[193] = 66;
		table[194] = 67;
		table[195] = 68;
		table[196] = 69;
		table[197] = 70;
		table[198] = 71;
		table[199] = 72;
		table[200] = 73;
		table[201] = 74;
		table[202] = 75;
		table[203] = 76;
		table[204] = 77;
		table[205] = 78;
		table[206] = 79;
		table[207] = 80;
		table[208] = 81;
		table[209] = 82;
		table[210] = 83;
		table[211] = 84;
		table[212] = 85;
		table[213] = 86;
		table[214] = 87;
		table[215] = 88;
		table[216] = 89;
		table[217] = 90;
		table[218] = 91;
		table[219] = 92;
		table[220] = 93;
		table[221] = 94;
		table[222] = 95;
		table[223] = 96;
		table[224] = 97;
		table[225] = 98;
		table[226] = 99;
		table[227] = 100;
		table[228] = 101;
		table[229] = 102;
		table[230] = 103;
		table[231] = 104;
		table[232] = 105;
		table[233] = 106;
		table[234] = 107;
		table[235] = 108;
		table[236] = 109;
		table[237] = 110;
		table[238] = 111;
		table[239] = 112;
		table[240] = 113;
		table[241] = 114;
		table[242] = 115;
		table[243] = 116;
		table[244] = 117;
		table[245] = 118;
		table[246] = 119;
		table[247] = 120;
		table[248] = 121;
		table[249] = 122;
		table[250] = 123;
		table[251] = 124;
		table[252] = 125;
		table[253] = 126;
		table[254] = 127;

		th[0] = 63;
		th[1] = 31;
		th[2] = 95;
		th[3] = 15;
		th[4] = 47;
		th[5] = 79;
		th[6] = 111;
		th[7] = 7;
		th[8] = 23;
		th[9] = 39;
		th[10] = 55;
		th[11] = 71;
		th[12] = 87;
		th[13] = 103;
		th[14] = 119;
		th[15] = 3;
		th[16] = 11;
		th[17] = 19;
		th[18] = 27;
		th[19] = 35;
		th[20] = 43;
		th[21] = 51;
		th[22] = 59;
		th[23] = 67;
		th[24] = 75;
		th[25] = 83;
		th[26] = 91;
		th[27] = 99;
		th[28] = 107;
		th[29] = 115;
		th[30] = 123;
		th[31] = 1;
		th[32] = 5;
		th[33] = 9;
		th[34] = 13;
		th[35] = 17;
		th[36] = 21;
		th[37] = 25;
		th[38] = 29;
		th[39] = 33;
		th[40] = 37;
		th[41] = 41;
		th[42] = 45;
		th[43] = 49;
		th[44] = 53;
		th[45] = 57;
		th[46] = 61;
		th[47] = 65;
		th[48] = 69;
		th[49] = 73;
		th[50] = 77;
		th[51] = 81;
		th[52] = 85;
		th[53] = 89;
		th[54] = 93;
		th[55] = 97;
		th[56] = 101;
		th[57] = 105;
		th[58] = 109;
		th[59] = 113;
		th[60] = 117;
		th[61] = 121;
		th[62] = 125;
		th[63] = 1;
		th[64] = 3;
		th[65] = 5;
		th[66] = 7;
		th[67] = 9;
		th[68] = 11;
		th[69] = 13;
		th[70] = 15;
		th[71] = 17;
		th[72] = 19;
		th[73] = 21;
		th[74] = 23;
		th[75] = 25;
		th[76] = 27;
		th[77] = 29;
		th[78] = 31;
		th[79] = 33;
		th[80] = 35;
		th[81] = 37;
		th[82] = 39;
		th[83] = 41;
		th[84] = 43;
		th[85] = 45;
		th[86] = 47;
		th[87] = 49;
		th[88] = 51;
		th[89] = 53;
		th[90] = 55;
		th[91] = 57;
		th[92] = 59;
		th[93] = 61;
		th[94] = 63;
		th[95] = 65;
		th[96] = 67;
		th[97] = 69;
		th[98] = 71;
		th[99] = 73;
		th[100] = 75;
		th[101] = 77;
		th[102] = 79;
		th[103] = 81;
		th[104] = 83;
		th[105] = 85;
		th[106] = 87;
		th[107] = 89;
		th[108] = 91;
		th[109] = 93;
		th[110] = 95;
		th[111] = 97;
		th[112] = 99;
		th[113] = 101;
		th[114] = 103;
		th[115] = 105;
		th[116] = 107;
		th[117] = 109;
		th[118] = 111;
		th[119] = 113;
		th[120] = 115;
		th[121] = 117;
		th[122] = 119;
		th[123] = 121;
		th[124] = 123;
		th[125] = 125;
		th[126] = 127;
	}
#endif
	printf("[OPENMP - Random Forest]: Start Reading Dataset\n");
	initData(input, nElem);
	printf("[OPENMP - Random Forest]: Finished Reading Dataset\n");
	memset(vR, 0, nBytes);

	// record start event
	struct timeval stop, start;
	gettimeofday(&start, NULL);
#if defined(_2TREE)
	RF_kernel(input, nElem, th, table, 0, 0, vR);
#elif defined(_3TREE)
	RF_kernel(input, nElem, th, table, 0, 0, 0, vR);
#elif defined(_4TREE)
#ifdef _CONST
	RF_kernel(input, nElem, 0, 0, 0, 0, vR);
#else
	RF_kernel(input, nElem, th, table, 0, 0, 0, 0, vR);
#endif
#else
	RF_kernel(input, nElem, th, table, 0, vR);
#endif
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

	// free host memory
	free(input);
	free(vR);
	return (0);
}

void initData(float *ip, int size)
{
	int numProcs = omp_get_num_procs();
	for (int i = 0; i < size; i++)
	{
		ip[i] = (float)(i % _MOD);
		// if (i < 32)
		// printf("%.2f ", ip[i]);
	}
	return;
}

void registerTime(unsigned long int value)
{
	printf("[OPENMP - Random Forest]: Time spent: %lu.\n", value);
}
