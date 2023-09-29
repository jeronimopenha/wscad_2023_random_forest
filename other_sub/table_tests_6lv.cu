#include <sys/time.h>
#include <cuda_runtime.h>
#include <stdio.h>
#include <stdlib.h>
#include <stdbool.h>
#include <time.h>

#define TAM_TABLE 255
#define TAM_TH 127

#define N_ELEM 50000000
// #define N_ELEM 100000000

#define INDIRECT

#define _RF_TABLE_1TREE_CONST
// #define _RF_TABLE_2TREE_CONST
// #define _RF_TABLE_3TREE_CONST
// #define _RF_TABLE_4TREE_CONST

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

__constant__ int table[TAM_TABLE];
__constant__ float TH[TAM_TH];

#define _MOD 64

#if defined(_RF_TABLE_1TREE_CONST)
#define _1TREE
#define EXP_NAME "_RF_TABLE_1TREE_CONST"
#endif

#if defined(_RF_TABLE_2TREE_CONST)
#define _2TREE
#define EXP_NAME "_RF_TABLE_2TREE_CONST"
#endif

#if defined(_RF_TABLE_3TREE_CONST)
#define _3TREE
#define EXP_NAME "_RF_TABLE_3TREE_CONST"
#endif

#if defined(_RF_TABLE_4TREE_CONST)
#define _4TREE
#define EXP_NAME "_RF_TABLE_4TREE_CONST"
#endif
__global__ void RF_kernel(float *input, const int n, const int offset0, const int offset1, const int offset2, const int offset3, float *vR)
{
	int i = blockIdx.x * blockDim.x + threadIdx.x;
	int next, left, right;
	float th;

#ifdef INDIRECT
	int idx;
	int v[4];

	v[1] = 12;
	v[2] = 128;
	v[3] = 1;
#else
	int v;
#endif
	if (i < n)
	{

#ifdef INDIRECT
		v[0] = input[i];
#else
		v = input[i];
#endif
		next = 0;
#ifdef INDIRECT
		idx = table[next] & 0x3;
#endif
		left = (table[next] >> 2) & 0xff;
		right = (table[next] >> 10) & 0xff;
		th = TH[next];
#ifdef INDIRECT
		next = (v[idx] > (th + offset0)) ? left : right;
#else
		next = (v > (th + offset0)) ? left : right;
#endif

		// if (i == 2)
		//	printf("idx=%d, left=%d , right=%d , th=%f , next=%d \n", idx, left, right, th, next);

#ifdef INDIRECT
		idx = table[next] & 0x3;
#endif
		left = (table[next] >> 2) & 0xff;
		right = (table[next] >> 10) & 0xff;
		th = TH[next];
#ifdef INDIRECT
		next = (v[idx] > (th + offset0)) ? left : right;
#else
		next = (v > (th + offset0)) ? left : right;
#endif

		// if (i == 2)
		//	printf("idx=%d, left=%d , right=%d , th=%f , next=%d \n", idx, left, right, th, next);

#ifdef INDIRECT
		idx = table[next] & 0x3;
#endif
		left = (table[next] >> 2) & 0xff;
		right = (table[next] >> 10) & 0xff;
		th = TH[next];
#ifdef INDIRECT
		next = (v[idx] > (th + offset0)) ? left : right;
#else
		next = (v > (th + offset0)) ? left : right;
#endif

		// if (i == 2)
		//	printf("idx=%d, left=%d , right=%d , th=%f , next=%d \n", idx, left, right, th, next);

#ifdef INDIRECT
		idx = table[next] & 0x3;
#endif
		left = (table[next] >> 2) & 0xff;
		right = (table[next] >> 10) & 0xff;
		th = TH[next];
#ifdef INDIRECT
		next = (v[idx] > (th + offset0)) ? left : right;
#else
		next = (v > (th + offset0)) ? left : right;
#endif

		// if (i == 2)
		//	printf("idx=%d, left=%d , right=%d , th=%f , next=%d \n", idx, left, right, th, next);

#ifdef INDIRECT
		idx = table[next] & 0x3;
#endif
		left = (table[next] >> 2) & 0xff;
		right = (table[next] >> 10) & 0xff;
		th = TH[next];
#ifdef INDIRECT
		next = (v[idx] > (th + offset0)) ? left : right;
#else
		next = (v > (th + offset0)) ? left : right;
#endif

		// if (i == 2)
		//	printf("idx=%d, left=%d , right=%d , th=%f , next=%d \n", idx, left, right, th, next);

#ifdef INDIRECT
		idx = table[next] & 0x3;
#endif
		left = (table[next] >> 2) & 0xff;
		right = (table[next] >> 10) & 0xff;
		th = TH[next];
#ifdef INDIRECT
		next = (v[idx] > (th + offset0)) ? left : right;
#else
		next = (v > (th + offset0)) ? left : right;
#endif

		// if (i == 2)
		//	printf("idx=%d, left=%d , right=%d , th=%f , next=%d \n", idx, left, right, th, next);

		vR[i] = table[next] + offset0;

#if defined(_RF_TABLE_2TREE_CONST) || defined(_RF_TABLE_3TREE_CONST) || defined(_RF_TABLE_4TREE_CONST)
#ifdef INDIRECT
		v[0] = input[i];
#else
		v = input[i];
#endif
		next = 0;
#ifdef INDIRECT
		idx = table[next] & 0x3;
#endif
		left = (table[next] >> 2) & 0xff;
		right = (table[next] >> 10) & 0xff;
		th = TH[next];
#ifdef INDIRECT
		next = (v[idx] > (th + offset1)) ? left : right;
#else
		next = (v > (th + offset1)) ? left : right;
#endif

#ifdef INDIRECT
		idx = table[next] & 0x3;
#endif
		left = (table[next] >> 2) & 0xff;
		right = (table[next] >> 10) & 0xff;
		th = TH[next];
#ifdef INDIRECT
		next = (v[idx] > (th + offset1)) ? left : right;
#else
		next = (v > (th + offset1)) ? left : right;
#endif

#ifdef INDIRECT
		idx = table[next] & 0x3;
#endif
		left = (table[next] >> 2) & 0xff;
		right = (table[next] >> 10) & 0xff;
		th = TH[next];
#ifdef INDIRECT
		next = (v[idx] > (th + offset1)) ? left : right;
#else
		next = (v > (th + offset1)) ? left : right;
#endif

#ifdef INDIRECT
		idx = table[next] & 0x3;
#endif
		left = (table[next] >> 2) & 0xff;
		right = (table[next] >> 10) & 0xff;
		th = TH[next];
#ifdef INDIRECT
		next = (v[idx] > (th + offset1)) ? left : right;
#else
		next = (v > (th + offset1)) ? left : right;
#endif

#ifdef INDIRECT
		idx = table[next] & 0x3;
#endif
		left = (table[next] >> 2) & 0xff;
		right = (table[next] >> 10) & 0xff;
		th = TH[next];
#ifdef INDIRECT
		next = (v[idx] > (th + offset1)) ? left : right;
#else
		next = (v > (th + offset1)) ? left : right;
#endif

#ifdef INDIRECT
		idx = table[next] & 0x3;
#endif
		left = (table[next] >> 2) & 0xff;
		right = (table[next] >> 10) & 0xff;
		th = TH[next];
#ifdef INDIRECT
		next = (v[idx] > (th + offset1)) ? left : right;
#else
		next = (v > (th + offset1)) ? left : right;
#endif

		vR[i] = table[next] + offset1;
#endif

#if defined(_RF_TABLE_3TREE_CONST) || defined(_RF_TABLE_4TREE_CONST)
#ifdef INDIRECT
		v[0] = input[i];
#else
		v = input[i];
#endif
		next = 0;
#ifdef INDIRECT
		idx = table[next] & 0x3;
#endif
		left = (table[next] >> 2) & 0xff;
		right = (table[next] >> 10) & 0xff;
		th = TH[next];
#ifdef INDIRECT
		next = (v[idx] > (th + offset2)) ? left : right;
#else
		next = (v > (th + offset2)) ? left : right;
#endif

#ifdef INDIRECT
		idx = table[next] & 0x3;
#endif
		left = (table[next] >> 2) & 0xff;
		right = (table[next] >> 10) & 0xff;
		th = TH[next];
#ifdef INDIRECT
		next = (v[idx] > (th + offset2)) ? left : right;
#else
		next = (v > (th + offset2)) ? left : right;
#endif

#ifdef INDIRECT
		idx = table[next] & 0x3;
#endif
		left = (table[next] >> 2) & 0xff;
		right = (table[next] >> 10) & 0xff;
		th = TH[next];
#ifdef INDIRECT
		next = (v[idx] > (th + offset2)) ? left : right;
#else
		next = (v > (th + offset2)) ? left : right;
#endif

#ifdef INDIRECT
		idx = table[next] & 0x3;
#endif
		left = (table[next] >> 2) & 0xff;
		right = (table[next] >> 10) & 0xff;
		th = TH[next];
#ifdef INDIRECT
		next = (v[idx] > (th + offset2)) ? left : right;
#else
		next = (v > (th + offset2)) ? left : right;
#endif

#ifdef INDIRECT
		idx = table[next] & 0x3;
#endif
		left = (table[next] >> 2) & 0xff;
		right = (table[next] >> 10) & 0xff;
		th = TH[next];
#ifdef INDIRECT
		next = (v[idx] > (th + offset2)) ? left : right;
#else
		next = (v > (th + offset2)) ? left : right;
#endif

#ifdef INDIRECT
		idx = table[next] & 0x3;
#endif
		left = (table[next] >> 2) & 0xff;
		right = (table[next] >> 10) & 0xff;
		th = TH[next];
#ifdef INDIRECT
		next = (v[idx] > (th + offset2)) ? left : right;
#else
		next = (v > (th + offset2)) ? left : right;
#endif

		vR[i] = table[next] + offset2;
#endif

#if defined(_RF_TABLE_4TREE_CONST)
#ifdef INDIRECT
		v[0] = input[i];
#else
		v = input[i];
#endif
		next = 0;
#ifdef INDIRECT
		idx = table[next] & 0x3;
#endif
		left = (table[next] >> 2) & 0xff;
		right = (table[next] >> 10) & 0xff;
		th = TH[next];
#ifdef INDIRECT
		next = (v[idx] > (th + offset3)) ? left : right;
#else
		next = (v > (th + offset3)) ? left : right;
#endif

#ifdef INDIRECT
		idx = table[next] & 0x3;
#endif
		left = (table[next] >> 2) & 0xff;
		right = (table[next] >> 10) & 0xff;
		th = TH[next];
#ifdef INDIRECT
		next = (v[idx] > (th + offset3)) ? left : right;
#else
		next = (v > (th + offset3)) ? left : right;
#endif

#ifdef INDIRECT
		idx = table[next] & 0x3;
#endif
		left = (table[next] >> 2) & 0xff;
		right = (table[next] >> 10) & 0xff;
		th = TH[next];
#ifdef INDIRECT
		next = (v[idx] > (th + offset3)) ? left : right;
#else
		next = (v > (th + offset3)) ? left : right;
#endif

#ifdef INDIRECT
		idx = table[next] & 0x3;
#endif
		left = (table[next] >> 2) & 0xff;
		right = (table[next] >> 10) & 0xff;
		th = TH[next];
#ifdef INDIRECT
		next = (v[idx] > (th + offset3)) ? left : right;
#else
		next = (v > (th + offset3)) ? left : right;
#endif

#ifdef INDIRECT
		idx = table[next] & 0x3;
#endif
		left = (table[next] >> 2) & 0xff;
		right = (table[next] >> 10) & 0xff;
		th = TH[next];
#ifdef INDIRECT
		next = (v[idx] > (th + offset3)) ? left : right;
#else
		next = (v > (th + offset3)) ? left : right;
#endif

#ifdef INDIRECT
		idx = table[next] & 0x3;
#endif
		left = (table[next] >> 2) & 0xff;
		right = (table[next] >> 10) & 0xff;
		th = TH[next];
#ifdef INDIRECT
		next = (v[idx] > (th + offset3)) ? left : right;
#else
		next = (v > (th + offset3)) ? left : right;
#endif

		vR[i] = table[next] + offset3;
#endif
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
#ifdef INDIRECT
	printf("[CUDA - Random Forest]: INDIRECT\n");
#endif
	printf("[CUDA - Random Forest]: Using Device %d: %s\n", dev, deviceProp.name);
	CHECK(cudaSetDevice(dev));

	// set up data size of vectors
	int nElem = N_ELEM;
	int tamTable = TAM_TABLE;
	int tamTh = TAM_TH;
	printf("[CUDA - Random Forest]: Vector Size %d\n", nElem);

	// malloc host memory
	size_t nBytes = nElem * sizeof(float);
	size_t tableBytes = tamTable * sizeof(int);
	size_t thBytes = tamTh * sizeof(float);

	float *h_vR;
	h_vR = (float *)malloc(nBytes);
	float *h_input;
	h_input = (float *)malloc(nBytes);
	int *h_table;
	h_table = (int *)malloc(tableBytes);
	float *h_th;
	h_th = (float *)malloc(thBytes);
	{
		h_table[0] = (2 << 2) | (1 << 10);
		h_table[1] = (4 << 2) | (3 << 10);
		h_table[2] = (6 << 2) | (5 << 10);
		h_table[3] = (8 << 2) | (7 << 10);
		h_table[4] = (10 << 2) | (9 << 10);
		h_table[5] = (12 << 2) | (11 << 10);
		h_table[6] = (14 << 2) | (13 << 10);
		h_table[7] = (16 << 2) | (15 << 10);
		h_table[8] = (18 << 2) | (17 << 10);
		h_table[9] = (20 << 2) | (19 << 10);
		h_table[10] = (22 << 2) | (21 << 10);
		h_table[11] = (24 << 2) | (23 << 10);
		h_table[12] = (26 << 2) | (25 << 10);
		h_table[13] = (28 << 2) | (27 << 10);
		h_table[14] = (30 << 2) | (29 << 10);
		h_table[15] = (32 << 2) | (31 << 10);
		h_table[16] = (34 << 2) | (33 << 10);
		h_table[17] = (36 << 2) | (35 << 10);
		h_table[18] = (38 << 2) | (37 << 10);
		h_table[19] = (40 << 2) | (39 << 10);
		h_table[20] = (42 << 2) | (41 << 10);
		h_table[21] = (44 << 2) | (43 << 10);
		h_table[22] = (46 << 2) | (45 << 10);
		h_table[23] = (48 << 2) | (47 << 10);
		h_table[24] = (50 << 2) | (49 << 10);
		h_table[25] = (52 << 2) | (51 << 10);
		h_table[26] = (54 << 2) | (53 << 10);
		h_table[27] = (56 << 2) | (55 << 10);
		h_table[28] = (58 << 2) | (57 << 10);
		h_table[29] = (60 << 2) | (59 << 10);
		h_table[30] = (62 << 2) | (61 << 10);
		h_table[31] = (64 << 2) | (63 << 10);
		h_table[32] = (66 << 2) | (65 << 10);
		h_table[33] = (68 << 2) | (67 << 10);
		h_table[34] = (70 << 2) | (69 << 10);
		h_table[35] = (72 << 2) | (71 << 10);
		h_table[36] = (74 << 2) | (73 << 10);
		h_table[37] = (76 << 2) | (75 << 10);
		h_table[38] = (78 << 2) | (77 << 10);
		h_table[39] = (80 << 2) | (79 << 10);
		h_table[40] = (82 << 2) | (81 << 10);
		h_table[41] = (84 << 2) | (83 << 10);
		h_table[42] = (86 << 2) | (85 << 10);
		h_table[43] = (88 << 2) | (87 << 10);
		h_table[44] = (90 << 2) | (89 << 10);
		h_table[45] = (92 << 2) | (91 << 10);
		h_table[46] = (94 << 2) | (93 << 10);
		h_table[47] = (96 << 2) | (95 << 10);
		h_table[48] = (98 << 2) | (97 << 10);
		h_table[49] = (100 << 2) | (99 << 10);
		h_table[50] = (102 << 2) | (101 << 10);
		h_table[51] = (104 << 2) | (103 << 10);
		h_table[52] = (106 << 2) | (105 << 10);
		h_table[53] = (108 << 2) | (107 << 10);
		h_table[54] = (110 << 2) | (109 << 10);
		h_table[55] = (112 << 2) | (111 << 10);
		h_table[56] = (114 << 2) | (113 << 10);
		h_table[57] = (116 << 2) | (115 << 10);
		h_table[58] = (118 << 2) | (117 << 10);
		h_table[59] = (120 << 2) | (119 << 10);
		h_table[60] = (122 << 2) | (121 << 10);
		h_table[61] = (124 << 2) | (123 << 10);
		h_table[62] = (126 << 2) | (125 << 10);
		h_table[63] = (128 << 2) | (127 << 10);
		h_table[64] = (130 << 2) | (129 << 10);
		h_table[65] = (132 << 2) | (131 << 10);
		h_table[66] = (134 << 2) | (133 << 10);
		h_table[67] = (136 << 2) | (135 << 10);
		h_table[68] = (138 << 2) | (137 << 10);
		h_table[69] = (140 << 2) | (139 << 10);
		h_table[70] = (142 << 2) | (141 << 10);
		h_table[71] = (144 << 2) | (143 << 10);
		h_table[72] = (146 << 2) | (145 << 10);
		h_table[73] = (148 << 2) | (147 << 10);
		h_table[74] = (150 << 2) | (149 << 10);
		h_table[75] = (152 << 2) | (151 << 10);
		h_table[76] = (154 << 2) | (153 << 10);
		h_table[77] = (156 << 2) | (155 << 10);
		h_table[78] = (158 << 2) | (157 << 10);
		h_table[79] = (160 << 2) | (159 << 10);
		h_table[80] = (162 << 2) | (161 << 10);
		h_table[81] = (164 << 2) | (163 << 10);
		h_table[82] = (166 << 2) | (165 << 10);
		h_table[83] = (168 << 2) | (167 << 10);
		h_table[84] = (170 << 2) | (169 << 10);
		h_table[85] = (172 << 2) | (171 << 10);
		h_table[86] = (174 << 2) | (173 << 10);
		h_table[87] = (176 << 2) | (175 << 10);
		h_table[88] = (178 << 2) | (177 << 10);
		h_table[89] = (180 << 2) | (179 << 10);
		h_table[90] = (182 << 2) | (181 << 10);
		h_table[91] = (184 << 2) | (183 << 10);
		h_table[92] = (186 << 2) | (185 << 10);
		h_table[93] = (188 << 2) | (187 << 10);
		h_table[94] = (190 << 2) | (189 << 10);
		h_table[95] = (192 << 2) | (191 << 10);
		h_table[96] = (194 << 2) | (193 << 10);
		h_table[97] = (196 << 2) | (195 << 10);
		h_table[98] = (198 << 2) | (197 << 10);
		h_table[99] = (200 << 2) | (199 << 10);
		h_table[100] = (202 << 2) | (201 << 10);
		h_table[101] = (204 << 2) | (203 << 10);
		h_table[102] = (206 << 2) | (205 << 10);
		h_table[103] = (208 << 2) | (207 << 10);
		h_table[104] = (210 << 2) | (209 << 10);
		h_table[105] = (212 << 2) | (211 << 10);
		h_table[106] = (214 << 2) | (213 << 10);
		h_table[107] = (216 << 2) | (215 << 10);
		h_table[108] = (218 << 2) | (217 << 10);
		h_table[109] = (220 << 2) | (219 << 10);
		h_table[110] = (222 << 2) | (221 << 10);
		h_table[111] = (224 << 2) | (223 << 10);
		h_table[112] = (226 << 2) | (225 << 10);
		h_table[113] = (228 << 2) | (227 << 10);
		h_table[114] = (230 << 2) | (229 << 10);
		h_table[115] = (232 << 2) | (231 << 10);
		h_table[116] = (234 << 2) | (233 << 10);
		h_table[117] = (236 << 2) | (235 << 10);
		h_table[118] = (238 << 2) | (237 << 10);
		h_table[119] = (240 << 2) | (239 << 10);
		h_table[120] = (242 << 2) | (241 << 10);
		h_table[121] = (244 << 2) | (243 << 10);
		h_table[122] = (246 << 2) | (245 << 10);
		h_table[123] = (248 << 2) | (247 << 10);
		h_table[124] = (250 << 2) | (249 << 10);
		h_table[125] = (252 << 2) | (251 << 10);
		h_table[126] = (254 << 2) | (253 << 10);
		h_table[127] = 0;
		h_table[128] = 1;
		h_table[129] = 2;
		h_table[130] = 3;
		h_table[131] = 4;
		h_table[132] = 5;
		h_table[133] = 6;
		h_table[134] = 7;
		h_table[135] = 8;
		h_table[136] = 9;
		h_table[137] = 10;
		h_table[138] = 11;
		h_table[139] = 12;
		h_table[140] = 13;
		h_table[141] = 14;
		h_table[142] = 15;
		h_table[143] = 16;
		h_table[144] = 17;
		h_table[145] = 18;
		h_table[146] = 19;
		h_table[147] = 20;
		h_table[148] = 21;
		h_table[149] = 22;
		h_table[150] = 23;
		h_table[151] = 24;
		h_table[152] = 25;
		h_table[153] = 26;
		h_table[154] = 27;
		h_table[155] = 28;
		h_table[156] = 29;
		h_table[157] = 30;
		h_table[158] = 31;
		h_table[159] = 32;
		h_table[160] = 33;
		h_table[161] = 34;
		h_table[162] = 35;
		h_table[163] = 36;
		h_table[164] = 37;
		h_table[165] = 38;
		h_table[166] = 39;
		h_table[167] = 40;
		h_table[168] = 41;
		h_table[169] = 42;
		h_table[170] = 43;
		h_table[171] = 44;
		h_table[172] = 45;
		h_table[173] = 46;
		h_table[174] = 47;
		h_table[175] = 48;
		h_table[176] = 49;
		h_table[177] = 50;
		h_table[178] = 51;
		h_table[179] = 52;
		h_table[180] = 53;
		h_table[181] = 54;
		h_table[182] = 55;
		h_table[183] = 56;
		h_table[184] = 57;
		h_table[185] = 58;
		h_table[186] = 59;
		h_table[187] = 60;
		h_table[188] = 61;
		h_table[189] = 62;
		h_table[190] = 63;
		h_table[191] = 64;
		h_table[192] = 65;
		h_table[193] = 66;
		h_table[194] = 67;
		h_table[195] = 68;
		h_table[196] = 69;
		h_table[197] = 70;
		h_table[198] = 71;
		h_table[199] = 72;
		h_table[200] = 73;
		h_table[201] = 74;
		h_table[202] = 75;
		h_table[203] = 76;
		h_table[204] = 77;
		h_table[205] = 78;
		h_table[206] = 79;
		h_table[207] = 80;
		h_table[208] = 81;
		h_table[209] = 82;
		h_table[210] = 83;
		h_table[211] = 84;
		h_table[212] = 85;
		h_table[213] = 86;
		h_table[214] = 87;
		h_table[215] = 88;
		h_table[216] = 89;
		h_table[217] = 90;
		h_table[218] = 91;
		h_table[219] = 92;
		h_table[220] = 93;
		h_table[221] = 94;
		h_table[222] = 95;
		h_table[223] = 96;
		h_table[224] = 97;
		h_table[225] = 98;
		h_table[226] = 99;
		h_table[227] = 100;
		h_table[228] = 101;
		h_table[229] = 102;
		h_table[230] = 103;
		h_table[231] = 104;
		h_table[232] = 105;
		h_table[233] = 106;
		h_table[234] = 107;
		h_table[235] = 108;
		h_table[236] = 109;
		h_table[237] = 110;
		h_table[238] = 111;
		h_table[239] = 112;
		h_table[240] = 113;
		h_table[241] = 114;
		h_table[242] = 115;
		h_table[243] = 116;
		h_table[244] = 117;
		h_table[245] = 118;
		h_table[246] = 119;
		h_table[247] = 120;
		h_table[248] = 121;
		h_table[249] = 122;
		h_table[250] = 123;
		h_table[251] = 124;
		h_table[252] = 125;
		h_table[253] = 126;
		h_table[254] = 127;

		h_th[0] = 63;
		h_th[1] = 31;
		h_th[2] = 95;
		h_th[3] = 15;
		h_th[4] = 47;
		h_th[5] = 79;
		h_th[6] = 111;
		h_th[7] = 7;
		h_th[8] = 23;
		h_th[9] = 39;
		h_th[10] = 55;
		h_th[11] = 71;
		h_th[12] = 87;
		h_th[13] = 103;
		h_th[14] = 119;
		h_th[15] = 3;
		h_th[16] = 11;
		h_th[17] = 19;
		h_th[18] = 27;
		h_th[19] = 35;
		h_th[20] = 43;
		h_th[21] = 51;
		h_th[22] = 59;
		h_th[23] = 67;
		h_th[24] = 75;
		h_th[25] = 83;
		h_th[26] = 91;
		h_th[27] = 99;
		h_th[28] = 107;
		h_th[29] = 115;
		h_th[30] = 123;
		h_th[31] = 1;
		h_th[32] = 5;
		h_th[33] = 9;
		h_th[34] = 13;
		h_th[35] = 17;
		h_th[36] = 21;
		h_th[37] = 25;
		h_th[38] = 29;
		h_th[39] = 33;
		h_th[40] = 37;
		h_th[41] = 41;
		h_th[42] = 45;
		h_th[43] = 49;
		h_th[44] = 53;
		h_th[45] = 57;
		h_th[46] = 61;
		h_th[47] = 65;
		h_th[48] = 69;
		h_th[49] = 73;
		h_th[50] = 77;
		h_th[51] = 81;
		h_th[52] = 85;
		h_th[53] = 89;
		h_th[54] = 93;
		h_th[55] = 97;
		h_th[56] = 101;
		h_th[57] = 105;
		h_th[58] = 109;
		h_th[59] = 113;
		h_th[60] = 117;
		h_th[61] = 121;
		h_th[62] = 125;
		h_th[63] = 1;
		h_th[64] = 3;
		h_th[65] = 5;
		h_th[66] = 7;
		h_th[67] = 9;
		h_th[68] = 11;
		h_th[69] = 13;
		h_th[70] = 15;
		h_th[71] = 17;
		h_th[72] = 19;
		h_th[73] = 21;
		h_th[74] = 23;
		h_th[75] = 25;
		h_th[76] = 27;
		h_th[77] = 29;
		h_th[78] = 31;
		h_th[79] = 33;
		h_th[80] = 35;
		h_th[81] = 37;
		h_th[82] = 39;
		h_th[83] = 41;
		h_th[84] = 43;
		h_th[85] = 45;
		h_th[86] = 47;
		h_th[87] = 49;
		h_th[88] = 51;
		h_th[89] = 53;
		h_th[90] = 55;
		h_th[91] = 57;
		h_th[92] = 59;
		h_th[93] = 61;
		h_th[94] = 63;
		h_th[95] = 65;
		h_th[96] = 67;
		h_th[97] = 69;
		h_th[98] = 71;
		h_th[99] = 73;
		h_th[100] = 75;
		h_th[101] = 77;
		h_th[102] = 79;
		h_th[103] = 81;
		h_th[104] = 83;
		h_th[105] = 85;
		h_th[106] = 87;
		h_th[107] = 89;
		h_th[108] = 91;
		h_th[109] = 93;
		h_th[110] = 95;
		h_th[111] = 97;
		h_th[112] = 99;
		h_th[113] = 101;
		h_th[114] = 103;
		h_th[115] = 105;
		h_th[116] = 107;
		h_th[117] = 109;
		h_th[118] = 111;
		h_th[119] = 113;
		h_th[120] = 115;
		h_th[121] = 117;
		h_th[122] = 119;
		h_th[123] = 121;
		h_th[124] = 123;
		h_th[125] = 125;
		h_th[126] = 127;
	}
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

	CHECK(cudaMemcpyToSymbol(table, h_table, TAM_TABLE * sizeof(int)));
	CHECK(cudaMemcpyToSymbol(TH, h_th, TAM_TH * sizeof(float)));

	// invoke kernel at host side
	int iLen = 512;
	dim3 block(iLen);
	dim3 grid((nElem + block.x - 1) / block.x);
	cudaEvent_t start, stop;
	CHECK(cudaEventCreate(&start));
	CHECK(cudaEventCreate(&stop));

	// record start event
	CHECK(cudaEventRecord(start, 0));

	RF_kernel<<<grid, block>>>(d_input, nElem, 0, 0, 0, 0, d_vR);

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
		if (i < 32)
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

	// free host memory
	free(h_input);
	free(h_vR);
	free(h_th);
	free(h_table);
	return (0);
}

void initData(float *ip, int size)
{
	for (int i = 0; i < size; i++)
	{
		if (WARP_SIZE < _MOD)
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
