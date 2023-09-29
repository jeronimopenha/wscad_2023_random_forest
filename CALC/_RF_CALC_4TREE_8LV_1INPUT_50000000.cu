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

#define _MOD 256
#define _4TREE
#define EXP_NAME "_RF_CALC_4TREE_8LV_1INPUT_50000000"

// RF_with_if

__global__ void RF_kernel(float *input, const int n, const int offset0, const int offset1, const int offset2, const int offset3, float *vR)
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

int rt0_0_32 = (input[i] > (129+offset0));
int t0_0_32 = rt0_0_32 * (2 + (input[i] > (130+offset0)));
t0_0_32 += (1 - rt0_0_32) * (input[i] > (128+offset0));

int rt0_0_33 = (input[i] > (133+offset0));
int t0_0_33 = rt0_0_33 * (2 + (input[i] > (134+offset0)));
t0_0_33 += (1 - rt0_0_33) * (input[i] > (132+offset0));

int rt0_0_34 = (input[i] > (137+offset0));
int t0_0_34 = rt0_0_34 * (2 + (input[i] > (138+offset0)));
t0_0_34 += (1 - rt0_0_34) * (input[i] > (136+offset0));

int rt0_0_35 = (input[i] > (141+offset0));
int t0_0_35 = rt0_0_35 * (2 + (input[i] > (142+offset0)));
t0_0_35 += (1 - rt0_0_35) * (input[i] > (140+offset0));

int rt0_0_36 = (input[i] > (145+offset0));
int t0_0_36 = rt0_0_36 * (2 + (input[i] > (146+offset0)));
t0_0_36 += (1 - rt0_0_36) * (input[i] > (144+offset0));

int rt0_0_37 = (input[i] > (149+offset0));
int t0_0_37 = rt0_0_37 * (2 + (input[i] > (150+offset0)));
t0_0_37 += (1 - rt0_0_37) * (input[i] > (148+offset0));

int rt0_0_38 = (input[i] > (153+offset0));
int t0_0_38 = rt0_0_38 * (2 + (input[i] > (154+offset0)));
t0_0_38 += (1 - rt0_0_38) * (input[i] > (152+offset0));

int rt0_0_39 = (input[i] > (157+offset0));
int t0_0_39 = rt0_0_39 * (2 + (input[i] > (158+offset0)));
t0_0_39 += (1 - rt0_0_39) * (input[i] > (156+offset0));

int rt0_0_40 = (input[i] > (161+offset0));
int t0_0_40 = rt0_0_40 * (2 + (input[i] > (162+offset0)));
t0_0_40 += (1 - rt0_0_40) * (input[i] > (160+offset0));

int rt0_0_41 = (input[i] > (165+offset0));
int t0_0_41 = rt0_0_41 * (2 + (input[i] > (166+offset0)));
t0_0_41 += (1 - rt0_0_41) * (input[i] > (164+offset0));

int rt0_0_42 = (input[i] > (169+offset0));
int t0_0_42 = rt0_0_42 * (2 + (input[i] > (170+offset0)));
t0_0_42 += (1 - rt0_0_42) * (input[i] > (168+offset0));

int rt0_0_43 = (input[i] > (173+offset0));
int t0_0_43 = rt0_0_43 * (2 + (input[i] > (174+offset0)));
t0_0_43 += (1 - rt0_0_43) * (input[i] > (172+offset0));

int rt0_0_44 = (input[i] > (177+offset0));
int t0_0_44 = rt0_0_44 * (2 + (input[i] > (178+offset0)));
t0_0_44 += (1 - rt0_0_44) * (input[i] > (176+offset0));

int rt0_0_45 = (input[i] > (181+offset0));
int t0_0_45 = rt0_0_45 * (2 + (input[i] > (182+offset0)));
t0_0_45 += (1 - rt0_0_45) * (input[i] > (180+offset0));

int rt0_0_46 = (input[i] > (185+offset0));
int t0_0_46 = rt0_0_46 * (2 + (input[i] > (186+offset0)));
t0_0_46 += (1 - rt0_0_46) * (input[i] > (184+offset0));

int rt0_0_47 = (input[i] > (189+offset0));
int t0_0_47 = rt0_0_47 * (2 + (input[i] > (190+offset0)));
t0_0_47 += (1 - rt0_0_47) * (input[i] > (188+offset0));

int rt0_0_48 = (input[i] > (193+offset0));
int t0_0_48 = rt0_0_48 * (2 + (input[i] > (194+offset0)));
t0_0_48 += (1 - rt0_0_48) * (input[i] > (192+offset0));

int rt0_0_49 = (input[i] > (197+offset0));
int t0_0_49 = rt0_0_49 * (2 + (input[i] > (198+offset0)));
t0_0_49 += (1 - rt0_0_49) * (input[i] > (196+offset0));

int rt0_0_50 = (input[i] > (201+offset0));
int t0_0_50 = rt0_0_50 * (2 + (input[i] > (202+offset0)));
t0_0_50 += (1 - rt0_0_50) * (input[i] > (200+offset0));

int rt0_0_51 = (input[i] > (205+offset0));
int t0_0_51 = rt0_0_51 * (2 + (input[i] > (206+offset0)));
t0_0_51 += (1 - rt0_0_51) * (input[i] > (204+offset0));

int rt0_0_52 = (input[i] > (209+offset0));
int t0_0_52 = rt0_0_52 * (2 + (input[i] > (210+offset0)));
t0_0_52 += (1 - rt0_0_52) * (input[i] > (208+offset0));

int rt0_0_53 = (input[i] > (213+offset0));
int t0_0_53 = rt0_0_53 * (2 + (input[i] > (214+offset0)));
t0_0_53 += (1 - rt0_0_53) * (input[i] > (212+offset0));

int rt0_0_54 = (input[i] > (217+offset0));
int t0_0_54 = rt0_0_54 * (2 + (input[i] > (218+offset0)));
t0_0_54 += (1 - rt0_0_54) * (input[i] > (216+offset0));

int rt0_0_55 = (input[i] > (221+offset0));
int t0_0_55 = rt0_0_55 * (2 + (input[i] > (222+offset0)));
t0_0_55 += (1 - rt0_0_55) * (input[i] > (220+offset0));

int rt0_0_56 = (input[i] > (225+offset0));
int t0_0_56 = rt0_0_56 * (2 + (input[i] > (226+offset0)));
t0_0_56 += (1 - rt0_0_56) * (input[i] > (224+offset0));

int rt0_0_57 = (input[i] > (229+offset0));
int t0_0_57 = rt0_0_57 * (2 + (input[i] > (230+offset0)));
t0_0_57 += (1 - rt0_0_57) * (input[i] > (228+offset0));

int rt0_0_58 = (input[i] > (233+offset0));
int t0_0_58 = rt0_0_58 * (2 + (input[i] > (234+offset0)));
t0_0_58 += (1 - rt0_0_58) * (input[i] > (232+offset0));

int rt0_0_59 = (input[i] > (237+offset0));
int t0_0_59 = rt0_0_59 * (2 + (input[i] > (238+offset0)));
t0_0_59 += (1 - rt0_0_59) * (input[i] > (236+offset0));

int rt0_0_60 = (input[i] > (241+offset0));
int t0_0_60 = rt0_0_60 * (2 + (input[i] > (242+offset0)));
t0_0_60 += (1 - rt0_0_60) * (input[i] > (240+offset0));

int rt0_0_61 = (input[i] > (245+offset0));
int t0_0_61 = rt0_0_61 * (2 + (input[i] > (246+offset0)));
t0_0_61 += (1 - rt0_0_61) * (input[i] > (244+offset0));

int rt0_0_62 = (input[i] > (249+offset0));
int t0_0_62 = rt0_0_62 * (2 + (input[i] > (250+offset0)));
t0_0_62 += (1 - rt0_0_62) * (input[i] > (248+offset0));

int rt0_0_63 = (input[i] > (253+offset0));
int t0_0_63 = rt0_0_63 * (2 + (input[i] > (254+offset0)));
t0_0_63 += (1 - rt0_0_63) * (input[i] > (252+offset0));

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

int rt0_1_16 = (input[i] > (131+offset0));
int t0_1_16 = rt0_1_16 * (4 + t0_0_33);
t0_1_16 += (1 - rt0_1_16) * t0_0_32;

int rt0_1_17 = (input[i] > (139+offset0));
int t0_1_17 = rt0_1_17 * (4 + t0_0_35);
t0_1_17 += (1 - rt0_1_17) * t0_0_34;

int rt0_1_18 = (input[i] > (147+offset0));
int t0_1_18 = rt0_1_18 * (4 + t0_0_37);
t0_1_18 += (1 - rt0_1_18) * t0_0_36;

int rt0_1_19 = (input[i] > (155+offset0));
int t0_1_19 = rt0_1_19 * (4 + t0_0_39);
t0_1_19 += (1 - rt0_1_19) * t0_0_38;

int rt0_1_20 = (input[i] > (163+offset0));
int t0_1_20 = rt0_1_20 * (4 + t0_0_41);
t0_1_20 += (1 - rt0_1_20) * t0_0_40;

int rt0_1_21 = (input[i] > (171+offset0));
int t0_1_21 = rt0_1_21 * (4 + t0_0_43);
t0_1_21 += (1 - rt0_1_21) * t0_0_42;

int rt0_1_22 = (input[i] > (179+offset0));
int t0_1_22 = rt0_1_22 * (4 + t0_0_45);
t0_1_22 += (1 - rt0_1_22) * t0_0_44;

int rt0_1_23 = (input[i] > (187+offset0));
int t0_1_23 = rt0_1_23 * (4 + t0_0_47);
t0_1_23 += (1 - rt0_1_23) * t0_0_46;

int rt0_1_24 = (input[i] > (195+offset0));
int t0_1_24 = rt0_1_24 * (4 + t0_0_49);
t0_1_24 += (1 - rt0_1_24) * t0_0_48;

int rt0_1_25 = (input[i] > (203+offset0));
int t0_1_25 = rt0_1_25 * (4 + t0_0_51);
t0_1_25 += (1 - rt0_1_25) * t0_0_50;

int rt0_1_26 = (input[i] > (211+offset0));
int t0_1_26 = rt0_1_26 * (4 + t0_0_53);
t0_1_26 += (1 - rt0_1_26) * t0_0_52;

int rt0_1_27 = (input[i] > (219+offset0));
int t0_1_27 = rt0_1_27 * (4 + t0_0_55);
t0_1_27 += (1 - rt0_1_27) * t0_0_54;

int rt0_1_28 = (input[i] > (227+offset0));
int t0_1_28 = rt0_1_28 * (4 + t0_0_57);
t0_1_28 += (1 - rt0_1_28) * t0_0_56;

int rt0_1_29 = (input[i] > (235+offset0));
int t0_1_29 = rt0_1_29 * (4 + t0_0_59);
t0_1_29 += (1 - rt0_1_29) * t0_0_58;

int rt0_1_30 = (input[i] > (243+offset0));
int t0_1_30 = rt0_1_30 * (4 + t0_0_61);
t0_1_30 += (1 - rt0_1_30) * t0_0_60;

int rt0_1_31 = (input[i] > (251+offset0));
int t0_1_31 = rt0_1_31 * (4 + t0_0_63);
t0_1_31 += (1 - rt0_1_31) * t0_0_62;

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

int rt0_2_8 = (input[i] > (135+offset0));
int t0_2_8 = rt0_2_8 * (8 + t0_1_17);
t0_2_8 += (1 - rt0_2_8) * t0_1_16;

int rt0_2_9 = (input[i] > (151+offset0));
int t0_2_9 = rt0_2_9 * (8 + t0_1_19);
t0_2_9 += (1 - rt0_2_9) * t0_1_18;

int rt0_2_10 = (input[i] > (167+offset0));
int t0_2_10 = rt0_2_10 * (8 + t0_1_21);
t0_2_10 += (1 - rt0_2_10) * t0_1_20;

int rt0_2_11 = (input[i] > (183+offset0));
int t0_2_11 = rt0_2_11 * (8 + t0_1_23);
t0_2_11 += (1 - rt0_2_11) * t0_1_22;

int rt0_2_12 = (input[i] > (199+offset0));
int t0_2_12 = rt0_2_12 * (8 + t0_1_25);
t0_2_12 += (1 - rt0_2_12) * t0_1_24;

int rt0_2_13 = (input[i] > (215+offset0));
int t0_2_13 = rt0_2_13 * (8 + t0_1_27);
t0_2_13 += (1 - rt0_2_13) * t0_1_26;

int rt0_2_14 = (input[i] > (231+offset0));
int t0_2_14 = rt0_2_14 * (8 + t0_1_29);
t0_2_14 += (1 - rt0_2_14) * t0_1_28;

int rt0_2_15 = (input[i] > (247+offset0));
int t0_2_15 = rt0_2_15 * (8 + t0_1_31);
t0_2_15 += (1 - rt0_2_15) * t0_1_30;

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

int rt0_3_4 = (input[i] > (143+offset0));
int t0_3_4 = rt0_3_4 * (16 + t0_2_9);
t0_3_4 += (1 - rt0_3_4) * t0_2_8;

int rt0_3_5 = (input[i] > (175+offset0));
int t0_3_5 = rt0_3_5 * (16 + t0_2_11);
t0_3_5 += (1 - rt0_3_5) * t0_2_10;

int rt0_3_6 = (input[i] > (207+offset0));
int t0_3_6 = rt0_3_6 * (16 + t0_2_13);
t0_3_6 += (1 - rt0_3_6) * t0_2_12;

int rt0_3_7 = (input[i] > (239+offset0));
int t0_3_7 = rt0_3_7 * (16 + t0_2_15);
t0_3_7 += (1 - rt0_3_7) * t0_2_14;

int rt0_4_0 = (input[i] > (31+offset0));
int t0_4_0 = rt0_4_0 * (32 + t0_3_1);
t0_4_0 += (1 - rt0_4_0) * t0_3_0;

int rt0_4_1 = (input[i] > (95+offset0));
int t0_4_1 = rt0_4_1 * (32 + t0_3_3);
t0_4_1 += (1 - rt0_4_1) * t0_3_2;

int rt0_4_2 = (input[i] > (159+offset0));
int t0_4_2 = rt0_4_2 * (32 + t0_3_5);
t0_4_2 += (1 - rt0_4_2) * t0_3_4;

int rt0_4_3 = (input[i] > (223+offset0));
int t0_4_3 = rt0_4_3 * (32 + t0_3_7);
t0_4_3 += (1 - rt0_4_3) * t0_3_6;

int rt0_5_0 = (input[i] > (63+offset0));
int t0_5_0 = rt0_5_0 * (64 + t0_4_1);
t0_5_0 += (1 - rt0_5_0) * t0_4_0;

int rt0_5_1 = (input[i] > (191+offset0));
int t0_5_1 = rt0_5_1 * (64 + t0_4_3);
t0_5_1 += (1 - rt0_5_1) * t0_4_2;

int rt0_6_0 = (input[i] > (127+offset0));
int t0_6_0 = rt0_6_0 * (128 + t0_5_1);
t0_6_0 += (1 - rt0_6_0) * t0_5_0;

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

int rt1_0_32 = (input[i] > (129+offset1));
int t1_0_32 = rt1_0_32 * (2 + (input[i] > (130+offset1)));
t1_0_32 += (1 - rt1_0_32) * (input[i] > (128+offset1));

int rt1_0_33 = (input[i] > (133+offset1));
int t1_0_33 = rt1_0_33 * (2 + (input[i] > (134+offset1)));
t1_0_33 += (1 - rt1_0_33) * (input[i] > (132+offset1));

int rt1_0_34 = (input[i] > (137+offset1));
int t1_0_34 = rt1_0_34 * (2 + (input[i] > (138+offset1)));
t1_0_34 += (1 - rt1_0_34) * (input[i] > (136+offset1));

int rt1_0_35 = (input[i] > (141+offset1));
int t1_0_35 = rt1_0_35 * (2 + (input[i] > (142+offset1)));
t1_0_35 += (1 - rt1_0_35) * (input[i] > (140+offset1));

int rt1_0_36 = (input[i] > (145+offset1));
int t1_0_36 = rt1_0_36 * (2 + (input[i] > (146+offset1)));
t1_0_36 += (1 - rt1_0_36) * (input[i] > (144+offset1));

int rt1_0_37 = (input[i] > (149+offset1));
int t1_0_37 = rt1_0_37 * (2 + (input[i] > (150+offset1)));
t1_0_37 += (1 - rt1_0_37) * (input[i] > (148+offset1));

int rt1_0_38 = (input[i] > (153+offset1));
int t1_0_38 = rt1_0_38 * (2 + (input[i] > (154+offset1)));
t1_0_38 += (1 - rt1_0_38) * (input[i] > (152+offset1));

int rt1_0_39 = (input[i] > (157+offset1));
int t1_0_39 = rt1_0_39 * (2 + (input[i] > (158+offset1)));
t1_0_39 += (1 - rt1_0_39) * (input[i] > (156+offset1));

int rt1_0_40 = (input[i] > (161+offset1));
int t1_0_40 = rt1_0_40 * (2 + (input[i] > (162+offset1)));
t1_0_40 += (1 - rt1_0_40) * (input[i] > (160+offset1));

int rt1_0_41 = (input[i] > (165+offset1));
int t1_0_41 = rt1_0_41 * (2 + (input[i] > (166+offset1)));
t1_0_41 += (1 - rt1_0_41) * (input[i] > (164+offset1));

int rt1_0_42 = (input[i] > (169+offset1));
int t1_0_42 = rt1_0_42 * (2 + (input[i] > (170+offset1)));
t1_0_42 += (1 - rt1_0_42) * (input[i] > (168+offset1));

int rt1_0_43 = (input[i] > (173+offset1));
int t1_0_43 = rt1_0_43 * (2 + (input[i] > (174+offset1)));
t1_0_43 += (1 - rt1_0_43) * (input[i] > (172+offset1));

int rt1_0_44 = (input[i] > (177+offset1));
int t1_0_44 = rt1_0_44 * (2 + (input[i] > (178+offset1)));
t1_0_44 += (1 - rt1_0_44) * (input[i] > (176+offset1));

int rt1_0_45 = (input[i] > (181+offset1));
int t1_0_45 = rt1_0_45 * (2 + (input[i] > (182+offset1)));
t1_0_45 += (1 - rt1_0_45) * (input[i] > (180+offset1));

int rt1_0_46 = (input[i] > (185+offset1));
int t1_0_46 = rt1_0_46 * (2 + (input[i] > (186+offset1)));
t1_0_46 += (1 - rt1_0_46) * (input[i] > (184+offset1));

int rt1_0_47 = (input[i] > (189+offset1));
int t1_0_47 = rt1_0_47 * (2 + (input[i] > (190+offset1)));
t1_0_47 += (1 - rt1_0_47) * (input[i] > (188+offset1));

int rt1_0_48 = (input[i] > (193+offset1));
int t1_0_48 = rt1_0_48 * (2 + (input[i] > (194+offset1)));
t1_0_48 += (1 - rt1_0_48) * (input[i] > (192+offset1));

int rt1_0_49 = (input[i] > (197+offset1));
int t1_0_49 = rt1_0_49 * (2 + (input[i] > (198+offset1)));
t1_0_49 += (1 - rt1_0_49) * (input[i] > (196+offset1));

int rt1_0_50 = (input[i] > (201+offset1));
int t1_0_50 = rt1_0_50 * (2 + (input[i] > (202+offset1)));
t1_0_50 += (1 - rt1_0_50) * (input[i] > (200+offset1));

int rt1_0_51 = (input[i] > (205+offset1));
int t1_0_51 = rt1_0_51 * (2 + (input[i] > (206+offset1)));
t1_0_51 += (1 - rt1_0_51) * (input[i] > (204+offset1));

int rt1_0_52 = (input[i] > (209+offset1));
int t1_0_52 = rt1_0_52 * (2 + (input[i] > (210+offset1)));
t1_0_52 += (1 - rt1_0_52) * (input[i] > (208+offset1));

int rt1_0_53 = (input[i] > (213+offset1));
int t1_0_53 = rt1_0_53 * (2 + (input[i] > (214+offset1)));
t1_0_53 += (1 - rt1_0_53) * (input[i] > (212+offset1));

int rt1_0_54 = (input[i] > (217+offset1));
int t1_0_54 = rt1_0_54 * (2 + (input[i] > (218+offset1)));
t1_0_54 += (1 - rt1_0_54) * (input[i] > (216+offset1));

int rt1_0_55 = (input[i] > (221+offset1));
int t1_0_55 = rt1_0_55 * (2 + (input[i] > (222+offset1)));
t1_0_55 += (1 - rt1_0_55) * (input[i] > (220+offset1));

int rt1_0_56 = (input[i] > (225+offset1));
int t1_0_56 = rt1_0_56 * (2 + (input[i] > (226+offset1)));
t1_0_56 += (1 - rt1_0_56) * (input[i] > (224+offset1));

int rt1_0_57 = (input[i] > (229+offset1));
int t1_0_57 = rt1_0_57 * (2 + (input[i] > (230+offset1)));
t1_0_57 += (1 - rt1_0_57) * (input[i] > (228+offset1));

int rt1_0_58 = (input[i] > (233+offset1));
int t1_0_58 = rt1_0_58 * (2 + (input[i] > (234+offset1)));
t1_0_58 += (1 - rt1_0_58) * (input[i] > (232+offset1));

int rt1_0_59 = (input[i] > (237+offset1));
int t1_0_59 = rt1_0_59 * (2 + (input[i] > (238+offset1)));
t1_0_59 += (1 - rt1_0_59) * (input[i] > (236+offset1));

int rt1_0_60 = (input[i] > (241+offset1));
int t1_0_60 = rt1_0_60 * (2 + (input[i] > (242+offset1)));
t1_0_60 += (1 - rt1_0_60) * (input[i] > (240+offset1));

int rt1_0_61 = (input[i] > (245+offset1));
int t1_0_61 = rt1_0_61 * (2 + (input[i] > (246+offset1)));
t1_0_61 += (1 - rt1_0_61) * (input[i] > (244+offset1));

int rt1_0_62 = (input[i] > (249+offset1));
int t1_0_62 = rt1_0_62 * (2 + (input[i] > (250+offset1)));
t1_0_62 += (1 - rt1_0_62) * (input[i] > (248+offset1));

int rt1_0_63 = (input[i] > (253+offset1));
int t1_0_63 = rt1_0_63 * (2 + (input[i] > (254+offset1)));
t1_0_63 += (1 - rt1_0_63) * (input[i] > (252+offset1));

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

int rt1_1_16 = (input[i] > (131+offset1));
int t1_1_16 = rt1_1_16 * (4 + t1_0_33);
t1_1_16 += (1 - rt1_1_16) * t1_0_32;

int rt1_1_17 = (input[i] > (139+offset1));
int t1_1_17 = rt1_1_17 * (4 + t1_0_35);
t1_1_17 += (1 - rt1_1_17) * t1_0_34;

int rt1_1_18 = (input[i] > (147+offset1));
int t1_1_18 = rt1_1_18 * (4 + t1_0_37);
t1_1_18 += (1 - rt1_1_18) * t1_0_36;

int rt1_1_19 = (input[i] > (155+offset1));
int t1_1_19 = rt1_1_19 * (4 + t1_0_39);
t1_1_19 += (1 - rt1_1_19) * t1_0_38;

int rt1_1_20 = (input[i] > (163+offset1));
int t1_1_20 = rt1_1_20 * (4 + t1_0_41);
t1_1_20 += (1 - rt1_1_20) * t1_0_40;

int rt1_1_21 = (input[i] > (171+offset1));
int t1_1_21 = rt1_1_21 * (4 + t1_0_43);
t1_1_21 += (1 - rt1_1_21) * t1_0_42;

int rt1_1_22 = (input[i] > (179+offset1));
int t1_1_22 = rt1_1_22 * (4 + t1_0_45);
t1_1_22 += (1 - rt1_1_22) * t1_0_44;

int rt1_1_23 = (input[i] > (187+offset1));
int t1_1_23 = rt1_1_23 * (4 + t1_0_47);
t1_1_23 += (1 - rt1_1_23) * t1_0_46;

int rt1_1_24 = (input[i] > (195+offset1));
int t1_1_24 = rt1_1_24 * (4 + t1_0_49);
t1_1_24 += (1 - rt1_1_24) * t1_0_48;

int rt1_1_25 = (input[i] > (203+offset1));
int t1_1_25 = rt1_1_25 * (4 + t1_0_51);
t1_1_25 += (1 - rt1_1_25) * t1_0_50;

int rt1_1_26 = (input[i] > (211+offset1));
int t1_1_26 = rt1_1_26 * (4 + t1_0_53);
t1_1_26 += (1 - rt1_1_26) * t1_0_52;

int rt1_1_27 = (input[i] > (219+offset1));
int t1_1_27 = rt1_1_27 * (4 + t1_0_55);
t1_1_27 += (1 - rt1_1_27) * t1_0_54;

int rt1_1_28 = (input[i] > (227+offset1));
int t1_1_28 = rt1_1_28 * (4 + t1_0_57);
t1_1_28 += (1 - rt1_1_28) * t1_0_56;

int rt1_1_29 = (input[i] > (235+offset1));
int t1_1_29 = rt1_1_29 * (4 + t1_0_59);
t1_1_29 += (1 - rt1_1_29) * t1_0_58;

int rt1_1_30 = (input[i] > (243+offset1));
int t1_1_30 = rt1_1_30 * (4 + t1_0_61);
t1_1_30 += (1 - rt1_1_30) * t1_0_60;

int rt1_1_31 = (input[i] > (251+offset1));
int t1_1_31 = rt1_1_31 * (4 + t1_0_63);
t1_1_31 += (1 - rt1_1_31) * t1_0_62;

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

int rt1_2_8 = (input[i] > (135+offset1));
int t1_2_8 = rt1_2_8 * (8 + t1_1_17);
t1_2_8 += (1 - rt1_2_8) * t1_1_16;

int rt1_2_9 = (input[i] > (151+offset1));
int t1_2_9 = rt1_2_9 * (8 + t1_1_19);
t1_2_9 += (1 - rt1_2_9) * t1_1_18;

int rt1_2_10 = (input[i] > (167+offset1));
int t1_2_10 = rt1_2_10 * (8 + t1_1_21);
t1_2_10 += (1 - rt1_2_10) * t1_1_20;

int rt1_2_11 = (input[i] > (183+offset1));
int t1_2_11 = rt1_2_11 * (8 + t1_1_23);
t1_2_11 += (1 - rt1_2_11) * t1_1_22;

int rt1_2_12 = (input[i] > (199+offset1));
int t1_2_12 = rt1_2_12 * (8 + t1_1_25);
t1_2_12 += (1 - rt1_2_12) * t1_1_24;

int rt1_2_13 = (input[i] > (215+offset1));
int t1_2_13 = rt1_2_13 * (8 + t1_1_27);
t1_2_13 += (1 - rt1_2_13) * t1_1_26;

int rt1_2_14 = (input[i] > (231+offset1));
int t1_2_14 = rt1_2_14 * (8 + t1_1_29);
t1_2_14 += (1 - rt1_2_14) * t1_1_28;

int rt1_2_15 = (input[i] > (247+offset1));
int t1_2_15 = rt1_2_15 * (8 + t1_1_31);
t1_2_15 += (1 - rt1_2_15) * t1_1_30;

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

int rt1_3_4 = (input[i] > (143+offset1));
int t1_3_4 = rt1_3_4 * (16 + t1_2_9);
t1_3_4 += (1 - rt1_3_4) * t1_2_8;

int rt1_3_5 = (input[i] > (175+offset1));
int t1_3_5 = rt1_3_5 * (16 + t1_2_11);
t1_3_5 += (1 - rt1_3_5) * t1_2_10;

int rt1_3_6 = (input[i] > (207+offset1));
int t1_3_6 = rt1_3_6 * (16 + t1_2_13);
t1_3_6 += (1 - rt1_3_6) * t1_2_12;

int rt1_3_7 = (input[i] > (239+offset1));
int t1_3_7 = rt1_3_7 * (16 + t1_2_15);
t1_3_7 += (1 - rt1_3_7) * t1_2_14;

int rt1_4_0 = (input[i] > (31+offset1));
int t1_4_0 = rt1_4_0 * (32 + t1_3_1);
t1_4_0 += (1 - rt1_4_0) * t1_3_0;

int rt1_4_1 = (input[i] > (95+offset1));
int t1_4_1 = rt1_4_1 * (32 + t1_3_3);
t1_4_1 += (1 - rt1_4_1) * t1_3_2;

int rt1_4_2 = (input[i] > (159+offset1));
int t1_4_2 = rt1_4_2 * (32 + t1_3_5);
t1_4_2 += (1 - rt1_4_2) * t1_3_4;

int rt1_4_3 = (input[i] > (223+offset1));
int t1_4_3 = rt1_4_3 * (32 + t1_3_7);
t1_4_3 += (1 - rt1_4_3) * t1_3_6;

int rt1_5_0 = (input[i] > (63+offset1));
int t1_5_0 = rt1_5_0 * (64 + t1_4_1);
t1_5_0 += (1 - rt1_5_0) * t1_4_0;

int rt1_5_1 = (input[i] > (191+offset1));
int t1_5_1 = rt1_5_1 * (64 + t1_4_3);
t1_5_1 += (1 - rt1_5_1) * t1_4_2;

int rt1_6_0 = (input[i] > (127+offset1));
int t1_6_0 = rt1_6_0 * (128 + t1_5_1);
t1_6_0 += (1 - rt1_6_0) * t1_5_0;

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

int rt2_0_8 = (input[i] > (33+offset2));
int t2_0_8 = rt2_0_8 * (2 + (input[i] > (34+offset2)));
t2_0_8 += (1 - rt2_0_8) * (input[i] > (32+offset2));

int rt2_0_9 = (input[i] > (37+offset2));
int t2_0_9 = rt2_0_9 * (2 + (input[i] > (38+offset2)));
t2_0_9 += (1 - rt2_0_9) * (input[i] > (36+offset2));

int rt2_0_10 = (input[i] > (41+offset2));
int t2_0_10 = rt2_0_10 * (2 + (input[i] > (42+offset2)));
t2_0_10 += (1 - rt2_0_10) * (input[i] > (40+offset2));

int rt2_0_11 = (input[i] > (45+offset2));
int t2_0_11 = rt2_0_11 * (2 + (input[i] > (46+offset2)));
t2_0_11 += (1 - rt2_0_11) * (input[i] > (44+offset2));

int rt2_0_12 = (input[i] > (49+offset2));
int t2_0_12 = rt2_0_12 * (2 + (input[i] > (50+offset2)));
t2_0_12 += (1 - rt2_0_12) * (input[i] > (48+offset2));

int rt2_0_13 = (input[i] > (53+offset2));
int t2_0_13 = rt2_0_13 * (2 + (input[i] > (54+offset2)));
t2_0_13 += (1 - rt2_0_13) * (input[i] > (52+offset2));

int rt2_0_14 = (input[i] > (57+offset2));
int t2_0_14 = rt2_0_14 * (2 + (input[i] > (58+offset2)));
t2_0_14 += (1 - rt2_0_14) * (input[i] > (56+offset2));

int rt2_0_15 = (input[i] > (61+offset2));
int t2_0_15 = rt2_0_15 * (2 + (input[i] > (62+offset2)));
t2_0_15 += (1 - rt2_0_15) * (input[i] > (60+offset2));

int rt2_0_16 = (input[i] > (65+offset2));
int t2_0_16 = rt2_0_16 * (2 + (input[i] > (66+offset2)));
t2_0_16 += (1 - rt2_0_16) * (input[i] > (64+offset2));

int rt2_0_17 = (input[i] > (69+offset2));
int t2_0_17 = rt2_0_17 * (2 + (input[i] > (70+offset2)));
t2_0_17 += (1 - rt2_0_17) * (input[i] > (68+offset2));

int rt2_0_18 = (input[i] > (73+offset2));
int t2_0_18 = rt2_0_18 * (2 + (input[i] > (74+offset2)));
t2_0_18 += (1 - rt2_0_18) * (input[i] > (72+offset2));

int rt2_0_19 = (input[i] > (77+offset2));
int t2_0_19 = rt2_0_19 * (2 + (input[i] > (78+offset2)));
t2_0_19 += (1 - rt2_0_19) * (input[i] > (76+offset2));

int rt2_0_20 = (input[i] > (81+offset2));
int t2_0_20 = rt2_0_20 * (2 + (input[i] > (82+offset2)));
t2_0_20 += (1 - rt2_0_20) * (input[i] > (80+offset2));

int rt2_0_21 = (input[i] > (85+offset2));
int t2_0_21 = rt2_0_21 * (2 + (input[i] > (86+offset2)));
t2_0_21 += (1 - rt2_0_21) * (input[i] > (84+offset2));

int rt2_0_22 = (input[i] > (89+offset2));
int t2_0_22 = rt2_0_22 * (2 + (input[i] > (90+offset2)));
t2_0_22 += (1 - rt2_0_22) * (input[i] > (88+offset2));

int rt2_0_23 = (input[i] > (93+offset2));
int t2_0_23 = rt2_0_23 * (2 + (input[i] > (94+offset2)));
t2_0_23 += (1 - rt2_0_23) * (input[i] > (92+offset2));

int rt2_0_24 = (input[i] > (97+offset2));
int t2_0_24 = rt2_0_24 * (2 + (input[i] > (98+offset2)));
t2_0_24 += (1 - rt2_0_24) * (input[i] > (96+offset2));

int rt2_0_25 = (input[i] > (101+offset2));
int t2_0_25 = rt2_0_25 * (2 + (input[i] > (102+offset2)));
t2_0_25 += (1 - rt2_0_25) * (input[i] > (100+offset2));

int rt2_0_26 = (input[i] > (105+offset2));
int t2_0_26 = rt2_0_26 * (2 + (input[i] > (106+offset2)));
t2_0_26 += (1 - rt2_0_26) * (input[i] > (104+offset2));

int rt2_0_27 = (input[i] > (109+offset2));
int t2_0_27 = rt2_0_27 * (2 + (input[i] > (110+offset2)));
t2_0_27 += (1 - rt2_0_27) * (input[i] > (108+offset2));

int rt2_0_28 = (input[i] > (113+offset2));
int t2_0_28 = rt2_0_28 * (2 + (input[i] > (114+offset2)));
t2_0_28 += (1 - rt2_0_28) * (input[i] > (112+offset2));

int rt2_0_29 = (input[i] > (117+offset2));
int t2_0_29 = rt2_0_29 * (2 + (input[i] > (118+offset2)));
t2_0_29 += (1 - rt2_0_29) * (input[i] > (116+offset2));

int rt2_0_30 = (input[i] > (121+offset2));
int t2_0_30 = rt2_0_30 * (2 + (input[i] > (122+offset2)));
t2_0_30 += (1 - rt2_0_30) * (input[i] > (120+offset2));

int rt2_0_31 = (input[i] > (125+offset2));
int t2_0_31 = rt2_0_31 * (2 + (input[i] > (126+offset2)));
t2_0_31 += (1 - rt2_0_31) * (input[i] > (124+offset2));

int rt2_0_32 = (input[i] > (129+offset2));
int t2_0_32 = rt2_0_32 * (2 + (input[i] > (130+offset2)));
t2_0_32 += (1 - rt2_0_32) * (input[i] > (128+offset2));

int rt2_0_33 = (input[i] > (133+offset2));
int t2_0_33 = rt2_0_33 * (2 + (input[i] > (134+offset2)));
t2_0_33 += (1 - rt2_0_33) * (input[i] > (132+offset2));

int rt2_0_34 = (input[i] > (137+offset2));
int t2_0_34 = rt2_0_34 * (2 + (input[i] > (138+offset2)));
t2_0_34 += (1 - rt2_0_34) * (input[i] > (136+offset2));

int rt2_0_35 = (input[i] > (141+offset2));
int t2_0_35 = rt2_0_35 * (2 + (input[i] > (142+offset2)));
t2_0_35 += (1 - rt2_0_35) * (input[i] > (140+offset2));

int rt2_0_36 = (input[i] > (145+offset2));
int t2_0_36 = rt2_0_36 * (2 + (input[i] > (146+offset2)));
t2_0_36 += (1 - rt2_0_36) * (input[i] > (144+offset2));

int rt2_0_37 = (input[i] > (149+offset2));
int t2_0_37 = rt2_0_37 * (2 + (input[i] > (150+offset2)));
t2_0_37 += (1 - rt2_0_37) * (input[i] > (148+offset2));

int rt2_0_38 = (input[i] > (153+offset2));
int t2_0_38 = rt2_0_38 * (2 + (input[i] > (154+offset2)));
t2_0_38 += (1 - rt2_0_38) * (input[i] > (152+offset2));

int rt2_0_39 = (input[i] > (157+offset2));
int t2_0_39 = rt2_0_39 * (2 + (input[i] > (158+offset2)));
t2_0_39 += (1 - rt2_0_39) * (input[i] > (156+offset2));

int rt2_0_40 = (input[i] > (161+offset2));
int t2_0_40 = rt2_0_40 * (2 + (input[i] > (162+offset2)));
t2_0_40 += (1 - rt2_0_40) * (input[i] > (160+offset2));

int rt2_0_41 = (input[i] > (165+offset2));
int t2_0_41 = rt2_0_41 * (2 + (input[i] > (166+offset2)));
t2_0_41 += (1 - rt2_0_41) * (input[i] > (164+offset2));

int rt2_0_42 = (input[i] > (169+offset2));
int t2_0_42 = rt2_0_42 * (2 + (input[i] > (170+offset2)));
t2_0_42 += (1 - rt2_0_42) * (input[i] > (168+offset2));

int rt2_0_43 = (input[i] > (173+offset2));
int t2_0_43 = rt2_0_43 * (2 + (input[i] > (174+offset2)));
t2_0_43 += (1 - rt2_0_43) * (input[i] > (172+offset2));

int rt2_0_44 = (input[i] > (177+offset2));
int t2_0_44 = rt2_0_44 * (2 + (input[i] > (178+offset2)));
t2_0_44 += (1 - rt2_0_44) * (input[i] > (176+offset2));

int rt2_0_45 = (input[i] > (181+offset2));
int t2_0_45 = rt2_0_45 * (2 + (input[i] > (182+offset2)));
t2_0_45 += (1 - rt2_0_45) * (input[i] > (180+offset2));

int rt2_0_46 = (input[i] > (185+offset2));
int t2_0_46 = rt2_0_46 * (2 + (input[i] > (186+offset2)));
t2_0_46 += (1 - rt2_0_46) * (input[i] > (184+offset2));

int rt2_0_47 = (input[i] > (189+offset2));
int t2_0_47 = rt2_0_47 * (2 + (input[i] > (190+offset2)));
t2_0_47 += (1 - rt2_0_47) * (input[i] > (188+offset2));

int rt2_0_48 = (input[i] > (193+offset2));
int t2_0_48 = rt2_0_48 * (2 + (input[i] > (194+offset2)));
t2_0_48 += (1 - rt2_0_48) * (input[i] > (192+offset2));

int rt2_0_49 = (input[i] > (197+offset2));
int t2_0_49 = rt2_0_49 * (2 + (input[i] > (198+offset2)));
t2_0_49 += (1 - rt2_0_49) * (input[i] > (196+offset2));

int rt2_0_50 = (input[i] > (201+offset2));
int t2_0_50 = rt2_0_50 * (2 + (input[i] > (202+offset2)));
t2_0_50 += (1 - rt2_0_50) * (input[i] > (200+offset2));

int rt2_0_51 = (input[i] > (205+offset2));
int t2_0_51 = rt2_0_51 * (2 + (input[i] > (206+offset2)));
t2_0_51 += (1 - rt2_0_51) * (input[i] > (204+offset2));

int rt2_0_52 = (input[i] > (209+offset2));
int t2_0_52 = rt2_0_52 * (2 + (input[i] > (210+offset2)));
t2_0_52 += (1 - rt2_0_52) * (input[i] > (208+offset2));

int rt2_0_53 = (input[i] > (213+offset2));
int t2_0_53 = rt2_0_53 * (2 + (input[i] > (214+offset2)));
t2_0_53 += (1 - rt2_0_53) * (input[i] > (212+offset2));

int rt2_0_54 = (input[i] > (217+offset2));
int t2_0_54 = rt2_0_54 * (2 + (input[i] > (218+offset2)));
t2_0_54 += (1 - rt2_0_54) * (input[i] > (216+offset2));

int rt2_0_55 = (input[i] > (221+offset2));
int t2_0_55 = rt2_0_55 * (2 + (input[i] > (222+offset2)));
t2_0_55 += (1 - rt2_0_55) * (input[i] > (220+offset2));

int rt2_0_56 = (input[i] > (225+offset2));
int t2_0_56 = rt2_0_56 * (2 + (input[i] > (226+offset2)));
t2_0_56 += (1 - rt2_0_56) * (input[i] > (224+offset2));

int rt2_0_57 = (input[i] > (229+offset2));
int t2_0_57 = rt2_0_57 * (2 + (input[i] > (230+offset2)));
t2_0_57 += (1 - rt2_0_57) * (input[i] > (228+offset2));

int rt2_0_58 = (input[i] > (233+offset2));
int t2_0_58 = rt2_0_58 * (2 + (input[i] > (234+offset2)));
t2_0_58 += (1 - rt2_0_58) * (input[i] > (232+offset2));

int rt2_0_59 = (input[i] > (237+offset2));
int t2_0_59 = rt2_0_59 * (2 + (input[i] > (238+offset2)));
t2_0_59 += (1 - rt2_0_59) * (input[i] > (236+offset2));

int rt2_0_60 = (input[i] > (241+offset2));
int t2_0_60 = rt2_0_60 * (2 + (input[i] > (242+offset2)));
t2_0_60 += (1 - rt2_0_60) * (input[i] > (240+offset2));

int rt2_0_61 = (input[i] > (245+offset2));
int t2_0_61 = rt2_0_61 * (2 + (input[i] > (246+offset2)));
t2_0_61 += (1 - rt2_0_61) * (input[i] > (244+offset2));

int rt2_0_62 = (input[i] > (249+offset2));
int t2_0_62 = rt2_0_62 * (2 + (input[i] > (250+offset2)));
t2_0_62 += (1 - rt2_0_62) * (input[i] > (248+offset2));

int rt2_0_63 = (input[i] > (253+offset2));
int t2_0_63 = rt2_0_63 * (2 + (input[i] > (254+offset2)));
t2_0_63 += (1 - rt2_0_63) * (input[i] > (252+offset2));

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

int rt2_1_4 = (input[i] > (35+offset2));
int t2_1_4 = rt2_1_4 * (4 + t2_0_9);
t2_1_4 += (1 - rt2_1_4) * t2_0_8;

int rt2_1_5 = (input[i] > (43+offset2));
int t2_1_5 = rt2_1_5 * (4 + t2_0_11);
t2_1_5 += (1 - rt2_1_5) * t2_0_10;

int rt2_1_6 = (input[i] > (51+offset2));
int t2_1_6 = rt2_1_6 * (4 + t2_0_13);
t2_1_6 += (1 - rt2_1_6) * t2_0_12;

int rt2_1_7 = (input[i] > (59+offset2));
int t2_1_7 = rt2_1_7 * (4 + t2_0_15);
t2_1_7 += (1 - rt2_1_7) * t2_0_14;

int rt2_1_8 = (input[i] > (67+offset2));
int t2_1_8 = rt2_1_8 * (4 + t2_0_17);
t2_1_8 += (1 - rt2_1_8) * t2_0_16;

int rt2_1_9 = (input[i] > (75+offset2));
int t2_1_9 = rt2_1_9 * (4 + t2_0_19);
t2_1_9 += (1 - rt2_1_9) * t2_0_18;

int rt2_1_10 = (input[i] > (83+offset2));
int t2_1_10 = rt2_1_10 * (4 + t2_0_21);
t2_1_10 += (1 - rt2_1_10) * t2_0_20;

int rt2_1_11 = (input[i] > (91+offset2));
int t2_1_11 = rt2_1_11 * (4 + t2_0_23);
t2_1_11 += (1 - rt2_1_11) * t2_0_22;

int rt2_1_12 = (input[i] > (99+offset2));
int t2_1_12 = rt2_1_12 * (4 + t2_0_25);
t2_1_12 += (1 - rt2_1_12) * t2_0_24;

int rt2_1_13 = (input[i] > (107+offset2));
int t2_1_13 = rt2_1_13 * (4 + t2_0_27);
t2_1_13 += (1 - rt2_1_13) * t2_0_26;

int rt2_1_14 = (input[i] > (115+offset2));
int t2_1_14 = rt2_1_14 * (4 + t2_0_29);
t2_1_14 += (1 - rt2_1_14) * t2_0_28;

int rt2_1_15 = (input[i] > (123+offset2));
int t2_1_15 = rt2_1_15 * (4 + t2_0_31);
t2_1_15 += (1 - rt2_1_15) * t2_0_30;

int rt2_1_16 = (input[i] > (131+offset2));
int t2_1_16 = rt2_1_16 * (4 + t2_0_33);
t2_1_16 += (1 - rt2_1_16) * t2_0_32;

int rt2_1_17 = (input[i] > (139+offset2));
int t2_1_17 = rt2_1_17 * (4 + t2_0_35);
t2_1_17 += (1 - rt2_1_17) * t2_0_34;

int rt2_1_18 = (input[i] > (147+offset2));
int t2_1_18 = rt2_1_18 * (4 + t2_0_37);
t2_1_18 += (1 - rt2_1_18) * t2_0_36;

int rt2_1_19 = (input[i] > (155+offset2));
int t2_1_19 = rt2_1_19 * (4 + t2_0_39);
t2_1_19 += (1 - rt2_1_19) * t2_0_38;

int rt2_1_20 = (input[i] > (163+offset2));
int t2_1_20 = rt2_1_20 * (4 + t2_0_41);
t2_1_20 += (1 - rt2_1_20) * t2_0_40;

int rt2_1_21 = (input[i] > (171+offset2));
int t2_1_21 = rt2_1_21 * (4 + t2_0_43);
t2_1_21 += (1 - rt2_1_21) * t2_0_42;

int rt2_1_22 = (input[i] > (179+offset2));
int t2_1_22 = rt2_1_22 * (4 + t2_0_45);
t2_1_22 += (1 - rt2_1_22) * t2_0_44;

int rt2_1_23 = (input[i] > (187+offset2));
int t2_1_23 = rt2_1_23 * (4 + t2_0_47);
t2_1_23 += (1 - rt2_1_23) * t2_0_46;

int rt2_1_24 = (input[i] > (195+offset2));
int t2_1_24 = rt2_1_24 * (4 + t2_0_49);
t2_1_24 += (1 - rt2_1_24) * t2_0_48;

int rt2_1_25 = (input[i] > (203+offset2));
int t2_1_25 = rt2_1_25 * (4 + t2_0_51);
t2_1_25 += (1 - rt2_1_25) * t2_0_50;

int rt2_1_26 = (input[i] > (211+offset2));
int t2_1_26 = rt2_1_26 * (4 + t2_0_53);
t2_1_26 += (1 - rt2_1_26) * t2_0_52;

int rt2_1_27 = (input[i] > (219+offset2));
int t2_1_27 = rt2_1_27 * (4 + t2_0_55);
t2_1_27 += (1 - rt2_1_27) * t2_0_54;

int rt2_1_28 = (input[i] > (227+offset2));
int t2_1_28 = rt2_1_28 * (4 + t2_0_57);
t2_1_28 += (1 - rt2_1_28) * t2_0_56;

int rt2_1_29 = (input[i] > (235+offset2));
int t2_1_29 = rt2_1_29 * (4 + t2_0_59);
t2_1_29 += (1 - rt2_1_29) * t2_0_58;

int rt2_1_30 = (input[i] > (243+offset2));
int t2_1_30 = rt2_1_30 * (4 + t2_0_61);
t2_1_30 += (1 - rt2_1_30) * t2_0_60;

int rt2_1_31 = (input[i] > (251+offset2));
int t2_1_31 = rt2_1_31 * (4 + t2_0_63);
t2_1_31 += (1 - rt2_1_31) * t2_0_62;

int rt2_2_0 = (input[i] > (7+offset2));
int t2_2_0 = rt2_2_0 * (8 + t2_1_1);
t2_2_0 += (1 - rt2_2_0) * t2_1_0;

int rt2_2_1 = (input[i] > (23+offset2));
int t2_2_1 = rt2_2_1 * (8 + t2_1_3);
t2_2_1 += (1 - rt2_2_1) * t2_1_2;

int rt2_2_2 = (input[i] > (39+offset2));
int t2_2_2 = rt2_2_2 * (8 + t2_1_5);
t2_2_2 += (1 - rt2_2_2) * t2_1_4;

int rt2_2_3 = (input[i] > (55+offset2));
int t2_2_3 = rt2_2_3 * (8 + t2_1_7);
t2_2_3 += (1 - rt2_2_3) * t2_1_6;

int rt2_2_4 = (input[i] > (71+offset2));
int t2_2_4 = rt2_2_4 * (8 + t2_1_9);
t2_2_4 += (1 - rt2_2_4) * t2_1_8;

int rt2_2_5 = (input[i] > (87+offset2));
int t2_2_5 = rt2_2_5 * (8 + t2_1_11);
t2_2_5 += (1 - rt2_2_5) * t2_1_10;

int rt2_2_6 = (input[i] > (103+offset2));
int t2_2_6 = rt2_2_6 * (8 + t2_1_13);
t2_2_6 += (1 - rt2_2_6) * t2_1_12;

int rt2_2_7 = (input[i] > (119+offset2));
int t2_2_7 = rt2_2_7 * (8 + t2_1_15);
t2_2_7 += (1 - rt2_2_7) * t2_1_14;

int rt2_2_8 = (input[i] > (135+offset2));
int t2_2_8 = rt2_2_8 * (8 + t2_1_17);
t2_2_8 += (1 - rt2_2_8) * t2_1_16;

int rt2_2_9 = (input[i] > (151+offset2));
int t2_2_9 = rt2_2_9 * (8 + t2_1_19);
t2_2_9 += (1 - rt2_2_9) * t2_1_18;

int rt2_2_10 = (input[i] > (167+offset2));
int t2_2_10 = rt2_2_10 * (8 + t2_1_21);
t2_2_10 += (1 - rt2_2_10) * t2_1_20;

int rt2_2_11 = (input[i] > (183+offset2));
int t2_2_11 = rt2_2_11 * (8 + t2_1_23);
t2_2_11 += (1 - rt2_2_11) * t2_1_22;

int rt2_2_12 = (input[i] > (199+offset2));
int t2_2_12 = rt2_2_12 * (8 + t2_1_25);
t2_2_12 += (1 - rt2_2_12) * t2_1_24;

int rt2_2_13 = (input[i] > (215+offset2));
int t2_2_13 = rt2_2_13 * (8 + t2_1_27);
t2_2_13 += (1 - rt2_2_13) * t2_1_26;

int rt2_2_14 = (input[i] > (231+offset2));
int t2_2_14 = rt2_2_14 * (8 + t2_1_29);
t2_2_14 += (1 - rt2_2_14) * t2_1_28;

int rt2_2_15 = (input[i] > (247+offset2));
int t2_2_15 = rt2_2_15 * (8 + t2_1_31);
t2_2_15 += (1 - rt2_2_15) * t2_1_30;

int rt2_3_0 = (input[i] > (15+offset2));
int t2_3_0 = rt2_3_0 * (16 + t2_2_1);
t2_3_0 += (1 - rt2_3_0) * t2_2_0;

int rt2_3_1 = (input[i] > (47+offset2));
int t2_3_1 = rt2_3_1 * (16 + t2_2_3);
t2_3_1 += (1 - rt2_3_1) * t2_2_2;

int rt2_3_2 = (input[i] > (79+offset2));
int t2_3_2 = rt2_3_2 * (16 + t2_2_5);
t2_3_2 += (1 - rt2_3_2) * t2_2_4;

int rt2_3_3 = (input[i] > (111+offset2));
int t2_3_3 = rt2_3_3 * (16 + t2_2_7);
t2_3_3 += (1 - rt2_3_3) * t2_2_6;

int rt2_3_4 = (input[i] > (143+offset2));
int t2_3_4 = rt2_3_4 * (16 + t2_2_9);
t2_3_4 += (1 - rt2_3_4) * t2_2_8;

int rt2_3_5 = (input[i] > (175+offset2));
int t2_3_5 = rt2_3_5 * (16 + t2_2_11);
t2_3_5 += (1 - rt2_3_5) * t2_2_10;

int rt2_3_6 = (input[i] > (207+offset2));
int t2_3_6 = rt2_3_6 * (16 + t2_2_13);
t2_3_6 += (1 - rt2_3_6) * t2_2_12;

int rt2_3_7 = (input[i] > (239+offset2));
int t2_3_7 = rt2_3_7 * (16 + t2_2_15);
t2_3_7 += (1 - rt2_3_7) * t2_2_14;

int rt2_4_0 = (input[i] > (31+offset2));
int t2_4_0 = rt2_4_0 * (32 + t2_3_1);
t2_4_0 += (1 - rt2_4_0) * t2_3_0;

int rt2_4_1 = (input[i] > (95+offset2));
int t2_4_1 = rt2_4_1 * (32 + t2_3_3);
t2_4_1 += (1 - rt2_4_1) * t2_3_2;

int rt2_4_2 = (input[i] > (159+offset2));
int t2_4_2 = rt2_4_2 * (32 + t2_3_5);
t2_4_2 += (1 - rt2_4_2) * t2_3_4;

int rt2_4_3 = (input[i] > (223+offset2));
int t2_4_3 = rt2_4_3 * (32 + t2_3_7);
t2_4_3 += (1 - rt2_4_3) * t2_3_6;

int rt2_5_0 = (input[i] > (63+offset2));
int t2_5_0 = rt2_5_0 * (64 + t2_4_1);
t2_5_0 += (1 - rt2_5_0) * t2_4_0;

int rt2_5_1 = (input[i] > (191+offset2));
int t2_5_1 = rt2_5_1 * (64 + t2_4_3);
t2_5_1 += (1 - rt2_5_1) * t2_4_2;

int rt2_6_0 = (input[i] > (127+offset2));
int t2_6_0 = rt2_6_0 * (128 + t2_5_1);
t2_6_0 += (1 - rt2_6_0) * t2_5_0;

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

int rt3_0_8 = (input[i] > (33+offset3));
int t3_0_8 = rt3_0_8 * (2 + (input[i] > (34+offset3)));
t3_0_8 += (1 - rt3_0_8) * (input[i] > (32+offset3));

int rt3_0_9 = (input[i] > (37+offset3));
int t3_0_9 = rt3_0_9 * (2 + (input[i] > (38+offset3)));
t3_0_9 += (1 - rt3_0_9) * (input[i] > (36+offset3));

int rt3_0_10 = (input[i] > (41+offset3));
int t3_0_10 = rt3_0_10 * (2 + (input[i] > (42+offset3)));
t3_0_10 += (1 - rt3_0_10) * (input[i] > (40+offset3));

int rt3_0_11 = (input[i] > (45+offset3));
int t3_0_11 = rt3_0_11 * (2 + (input[i] > (46+offset3)));
t3_0_11 += (1 - rt3_0_11) * (input[i] > (44+offset3));

int rt3_0_12 = (input[i] > (49+offset3));
int t3_0_12 = rt3_0_12 * (2 + (input[i] > (50+offset3)));
t3_0_12 += (1 - rt3_0_12) * (input[i] > (48+offset3));

int rt3_0_13 = (input[i] > (53+offset3));
int t3_0_13 = rt3_0_13 * (2 + (input[i] > (54+offset3)));
t3_0_13 += (1 - rt3_0_13) * (input[i] > (52+offset3));

int rt3_0_14 = (input[i] > (57+offset3));
int t3_0_14 = rt3_0_14 * (2 + (input[i] > (58+offset3)));
t3_0_14 += (1 - rt3_0_14) * (input[i] > (56+offset3));

int rt3_0_15 = (input[i] > (61+offset3));
int t3_0_15 = rt3_0_15 * (2 + (input[i] > (62+offset3)));
t3_0_15 += (1 - rt3_0_15) * (input[i] > (60+offset3));

int rt3_0_16 = (input[i] > (65+offset3));
int t3_0_16 = rt3_0_16 * (2 + (input[i] > (66+offset3)));
t3_0_16 += (1 - rt3_0_16) * (input[i] > (64+offset3));

int rt3_0_17 = (input[i] > (69+offset3));
int t3_0_17 = rt3_0_17 * (2 + (input[i] > (70+offset3)));
t3_0_17 += (1 - rt3_0_17) * (input[i] > (68+offset3));

int rt3_0_18 = (input[i] > (73+offset3));
int t3_0_18 = rt3_0_18 * (2 + (input[i] > (74+offset3)));
t3_0_18 += (1 - rt3_0_18) * (input[i] > (72+offset3));

int rt3_0_19 = (input[i] > (77+offset3));
int t3_0_19 = rt3_0_19 * (2 + (input[i] > (78+offset3)));
t3_0_19 += (1 - rt3_0_19) * (input[i] > (76+offset3));

int rt3_0_20 = (input[i] > (81+offset3));
int t3_0_20 = rt3_0_20 * (2 + (input[i] > (82+offset3)));
t3_0_20 += (1 - rt3_0_20) * (input[i] > (80+offset3));

int rt3_0_21 = (input[i] > (85+offset3));
int t3_0_21 = rt3_0_21 * (2 + (input[i] > (86+offset3)));
t3_0_21 += (1 - rt3_0_21) * (input[i] > (84+offset3));

int rt3_0_22 = (input[i] > (89+offset3));
int t3_0_22 = rt3_0_22 * (2 + (input[i] > (90+offset3)));
t3_0_22 += (1 - rt3_0_22) * (input[i] > (88+offset3));

int rt3_0_23 = (input[i] > (93+offset3));
int t3_0_23 = rt3_0_23 * (2 + (input[i] > (94+offset3)));
t3_0_23 += (1 - rt3_0_23) * (input[i] > (92+offset3));

int rt3_0_24 = (input[i] > (97+offset3));
int t3_0_24 = rt3_0_24 * (2 + (input[i] > (98+offset3)));
t3_0_24 += (1 - rt3_0_24) * (input[i] > (96+offset3));

int rt3_0_25 = (input[i] > (101+offset3));
int t3_0_25 = rt3_0_25 * (2 + (input[i] > (102+offset3)));
t3_0_25 += (1 - rt3_0_25) * (input[i] > (100+offset3));

int rt3_0_26 = (input[i] > (105+offset3));
int t3_0_26 = rt3_0_26 * (2 + (input[i] > (106+offset3)));
t3_0_26 += (1 - rt3_0_26) * (input[i] > (104+offset3));

int rt3_0_27 = (input[i] > (109+offset3));
int t3_0_27 = rt3_0_27 * (2 + (input[i] > (110+offset3)));
t3_0_27 += (1 - rt3_0_27) * (input[i] > (108+offset3));

int rt3_0_28 = (input[i] > (113+offset3));
int t3_0_28 = rt3_0_28 * (2 + (input[i] > (114+offset3)));
t3_0_28 += (1 - rt3_0_28) * (input[i] > (112+offset3));

int rt3_0_29 = (input[i] > (117+offset3));
int t3_0_29 = rt3_0_29 * (2 + (input[i] > (118+offset3)));
t3_0_29 += (1 - rt3_0_29) * (input[i] > (116+offset3));

int rt3_0_30 = (input[i] > (121+offset3));
int t3_0_30 = rt3_0_30 * (2 + (input[i] > (122+offset3)));
t3_0_30 += (1 - rt3_0_30) * (input[i] > (120+offset3));

int rt3_0_31 = (input[i] > (125+offset3));
int t3_0_31 = rt3_0_31 * (2 + (input[i] > (126+offset3)));
t3_0_31 += (1 - rt3_0_31) * (input[i] > (124+offset3));

int rt3_0_32 = (input[i] > (129+offset3));
int t3_0_32 = rt3_0_32 * (2 + (input[i] > (130+offset3)));
t3_0_32 += (1 - rt3_0_32) * (input[i] > (128+offset3));

int rt3_0_33 = (input[i] > (133+offset3));
int t3_0_33 = rt3_0_33 * (2 + (input[i] > (134+offset3)));
t3_0_33 += (1 - rt3_0_33) * (input[i] > (132+offset3));

int rt3_0_34 = (input[i] > (137+offset3));
int t3_0_34 = rt3_0_34 * (2 + (input[i] > (138+offset3)));
t3_0_34 += (1 - rt3_0_34) * (input[i] > (136+offset3));

int rt3_0_35 = (input[i] > (141+offset3));
int t3_0_35 = rt3_0_35 * (2 + (input[i] > (142+offset3)));
t3_0_35 += (1 - rt3_0_35) * (input[i] > (140+offset3));

int rt3_0_36 = (input[i] > (145+offset3));
int t3_0_36 = rt3_0_36 * (2 + (input[i] > (146+offset3)));
t3_0_36 += (1 - rt3_0_36) * (input[i] > (144+offset3));

int rt3_0_37 = (input[i] > (149+offset3));
int t3_0_37 = rt3_0_37 * (2 + (input[i] > (150+offset3)));
t3_0_37 += (1 - rt3_0_37) * (input[i] > (148+offset3));

int rt3_0_38 = (input[i] > (153+offset3));
int t3_0_38 = rt3_0_38 * (2 + (input[i] > (154+offset3)));
t3_0_38 += (1 - rt3_0_38) * (input[i] > (152+offset3));

int rt3_0_39 = (input[i] > (157+offset3));
int t3_0_39 = rt3_0_39 * (2 + (input[i] > (158+offset3)));
t3_0_39 += (1 - rt3_0_39) * (input[i] > (156+offset3));

int rt3_0_40 = (input[i] > (161+offset3));
int t3_0_40 = rt3_0_40 * (2 + (input[i] > (162+offset3)));
t3_0_40 += (1 - rt3_0_40) * (input[i] > (160+offset3));

int rt3_0_41 = (input[i] > (165+offset3));
int t3_0_41 = rt3_0_41 * (2 + (input[i] > (166+offset3)));
t3_0_41 += (1 - rt3_0_41) * (input[i] > (164+offset3));

int rt3_0_42 = (input[i] > (169+offset3));
int t3_0_42 = rt3_0_42 * (2 + (input[i] > (170+offset3)));
t3_0_42 += (1 - rt3_0_42) * (input[i] > (168+offset3));

int rt3_0_43 = (input[i] > (173+offset3));
int t3_0_43 = rt3_0_43 * (2 + (input[i] > (174+offset3)));
t3_0_43 += (1 - rt3_0_43) * (input[i] > (172+offset3));

int rt3_0_44 = (input[i] > (177+offset3));
int t3_0_44 = rt3_0_44 * (2 + (input[i] > (178+offset3)));
t3_0_44 += (1 - rt3_0_44) * (input[i] > (176+offset3));

int rt3_0_45 = (input[i] > (181+offset3));
int t3_0_45 = rt3_0_45 * (2 + (input[i] > (182+offset3)));
t3_0_45 += (1 - rt3_0_45) * (input[i] > (180+offset3));

int rt3_0_46 = (input[i] > (185+offset3));
int t3_0_46 = rt3_0_46 * (2 + (input[i] > (186+offset3)));
t3_0_46 += (1 - rt3_0_46) * (input[i] > (184+offset3));

int rt3_0_47 = (input[i] > (189+offset3));
int t3_0_47 = rt3_0_47 * (2 + (input[i] > (190+offset3)));
t3_0_47 += (1 - rt3_0_47) * (input[i] > (188+offset3));

int rt3_0_48 = (input[i] > (193+offset3));
int t3_0_48 = rt3_0_48 * (2 + (input[i] > (194+offset3)));
t3_0_48 += (1 - rt3_0_48) * (input[i] > (192+offset3));

int rt3_0_49 = (input[i] > (197+offset3));
int t3_0_49 = rt3_0_49 * (2 + (input[i] > (198+offset3)));
t3_0_49 += (1 - rt3_0_49) * (input[i] > (196+offset3));

int rt3_0_50 = (input[i] > (201+offset3));
int t3_0_50 = rt3_0_50 * (2 + (input[i] > (202+offset3)));
t3_0_50 += (1 - rt3_0_50) * (input[i] > (200+offset3));

int rt3_0_51 = (input[i] > (205+offset3));
int t3_0_51 = rt3_0_51 * (2 + (input[i] > (206+offset3)));
t3_0_51 += (1 - rt3_0_51) * (input[i] > (204+offset3));

int rt3_0_52 = (input[i] > (209+offset3));
int t3_0_52 = rt3_0_52 * (2 + (input[i] > (210+offset3)));
t3_0_52 += (1 - rt3_0_52) * (input[i] > (208+offset3));

int rt3_0_53 = (input[i] > (213+offset3));
int t3_0_53 = rt3_0_53 * (2 + (input[i] > (214+offset3)));
t3_0_53 += (1 - rt3_0_53) * (input[i] > (212+offset3));

int rt3_0_54 = (input[i] > (217+offset3));
int t3_0_54 = rt3_0_54 * (2 + (input[i] > (218+offset3)));
t3_0_54 += (1 - rt3_0_54) * (input[i] > (216+offset3));

int rt3_0_55 = (input[i] > (221+offset3));
int t3_0_55 = rt3_0_55 * (2 + (input[i] > (222+offset3)));
t3_0_55 += (1 - rt3_0_55) * (input[i] > (220+offset3));

int rt3_0_56 = (input[i] > (225+offset3));
int t3_0_56 = rt3_0_56 * (2 + (input[i] > (226+offset3)));
t3_0_56 += (1 - rt3_0_56) * (input[i] > (224+offset3));

int rt3_0_57 = (input[i] > (229+offset3));
int t3_0_57 = rt3_0_57 * (2 + (input[i] > (230+offset3)));
t3_0_57 += (1 - rt3_0_57) * (input[i] > (228+offset3));

int rt3_0_58 = (input[i] > (233+offset3));
int t3_0_58 = rt3_0_58 * (2 + (input[i] > (234+offset3)));
t3_0_58 += (1 - rt3_0_58) * (input[i] > (232+offset3));

int rt3_0_59 = (input[i] > (237+offset3));
int t3_0_59 = rt3_0_59 * (2 + (input[i] > (238+offset3)));
t3_0_59 += (1 - rt3_0_59) * (input[i] > (236+offset3));

int rt3_0_60 = (input[i] > (241+offset3));
int t3_0_60 = rt3_0_60 * (2 + (input[i] > (242+offset3)));
t3_0_60 += (1 - rt3_0_60) * (input[i] > (240+offset3));

int rt3_0_61 = (input[i] > (245+offset3));
int t3_0_61 = rt3_0_61 * (2 + (input[i] > (246+offset3)));
t3_0_61 += (1 - rt3_0_61) * (input[i] > (244+offset3));

int rt3_0_62 = (input[i] > (249+offset3));
int t3_0_62 = rt3_0_62 * (2 + (input[i] > (250+offset3)));
t3_0_62 += (1 - rt3_0_62) * (input[i] > (248+offset3));

int rt3_0_63 = (input[i] > (253+offset3));
int t3_0_63 = rt3_0_63 * (2 + (input[i] > (254+offset3)));
t3_0_63 += (1 - rt3_0_63) * (input[i] > (252+offset3));

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

int rt3_1_4 = (input[i] > (35+offset3));
int t3_1_4 = rt3_1_4 * (4 + t3_0_9);
t3_1_4 += (1 - rt3_1_4) * t3_0_8;

int rt3_1_5 = (input[i] > (43+offset3));
int t3_1_5 = rt3_1_5 * (4 + t3_0_11);
t3_1_5 += (1 - rt3_1_5) * t3_0_10;

int rt3_1_6 = (input[i] > (51+offset3));
int t3_1_6 = rt3_1_6 * (4 + t3_0_13);
t3_1_6 += (1 - rt3_1_6) * t3_0_12;

int rt3_1_7 = (input[i] > (59+offset3));
int t3_1_7 = rt3_1_7 * (4 + t3_0_15);
t3_1_7 += (1 - rt3_1_7) * t3_0_14;

int rt3_1_8 = (input[i] > (67+offset3));
int t3_1_8 = rt3_1_8 * (4 + t3_0_17);
t3_1_8 += (1 - rt3_1_8) * t3_0_16;

int rt3_1_9 = (input[i] > (75+offset3));
int t3_1_9 = rt3_1_9 * (4 + t3_0_19);
t3_1_9 += (1 - rt3_1_9) * t3_0_18;

int rt3_1_10 = (input[i] > (83+offset3));
int t3_1_10 = rt3_1_10 * (4 + t3_0_21);
t3_1_10 += (1 - rt3_1_10) * t3_0_20;

int rt3_1_11 = (input[i] > (91+offset3));
int t3_1_11 = rt3_1_11 * (4 + t3_0_23);
t3_1_11 += (1 - rt3_1_11) * t3_0_22;

int rt3_1_12 = (input[i] > (99+offset3));
int t3_1_12 = rt3_1_12 * (4 + t3_0_25);
t3_1_12 += (1 - rt3_1_12) * t3_0_24;

int rt3_1_13 = (input[i] > (107+offset3));
int t3_1_13 = rt3_1_13 * (4 + t3_0_27);
t3_1_13 += (1 - rt3_1_13) * t3_0_26;

int rt3_1_14 = (input[i] > (115+offset3));
int t3_1_14 = rt3_1_14 * (4 + t3_0_29);
t3_1_14 += (1 - rt3_1_14) * t3_0_28;

int rt3_1_15 = (input[i] > (123+offset3));
int t3_1_15 = rt3_1_15 * (4 + t3_0_31);
t3_1_15 += (1 - rt3_1_15) * t3_0_30;

int rt3_1_16 = (input[i] > (131+offset3));
int t3_1_16 = rt3_1_16 * (4 + t3_0_33);
t3_1_16 += (1 - rt3_1_16) * t3_0_32;

int rt3_1_17 = (input[i] > (139+offset3));
int t3_1_17 = rt3_1_17 * (4 + t3_0_35);
t3_1_17 += (1 - rt3_1_17) * t3_0_34;

int rt3_1_18 = (input[i] > (147+offset3));
int t3_1_18 = rt3_1_18 * (4 + t3_0_37);
t3_1_18 += (1 - rt3_1_18) * t3_0_36;

int rt3_1_19 = (input[i] > (155+offset3));
int t3_1_19 = rt3_1_19 * (4 + t3_0_39);
t3_1_19 += (1 - rt3_1_19) * t3_0_38;

int rt3_1_20 = (input[i] > (163+offset3));
int t3_1_20 = rt3_1_20 * (4 + t3_0_41);
t3_1_20 += (1 - rt3_1_20) * t3_0_40;

int rt3_1_21 = (input[i] > (171+offset3));
int t3_1_21 = rt3_1_21 * (4 + t3_0_43);
t3_1_21 += (1 - rt3_1_21) * t3_0_42;

int rt3_1_22 = (input[i] > (179+offset3));
int t3_1_22 = rt3_1_22 * (4 + t3_0_45);
t3_1_22 += (1 - rt3_1_22) * t3_0_44;

int rt3_1_23 = (input[i] > (187+offset3));
int t3_1_23 = rt3_1_23 * (4 + t3_0_47);
t3_1_23 += (1 - rt3_1_23) * t3_0_46;

int rt3_1_24 = (input[i] > (195+offset3));
int t3_1_24 = rt3_1_24 * (4 + t3_0_49);
t3_1_24 += (1 - rt3_1_24) * t3_0_48;

int rt3_1_25 = (input[i] > (203+offset3));
int t3_1_25 = rt3_1_25 * (4 + t3_0_51);
t3_1_25 += (1 - rt3_1_25) * t3_0_50;

int rt3_1_26 = (input[i] > (211+offset3));
int t3_1_26 = rt3_1_26 * (4 + t3_0_53);
t3_1_26 += (1 - rt3_1_26) * t3_0_52;

int rt3_1_27 = (input[i] > (219+offset3));
int t3_1_27 = rt3_1_27 * (4 + t3_0_55);
t3_1_27 += (1 - rt3_1_27) * t3_0_54;

int rt3_1_28 = (input[i] > (227+offset3));
int t3_1_28 = rt3_1_28 * (4 + t3_0_57);
t3_1_28 += (1 - rt3_1_28) * t3_0_56;

int rt3_1_29 = (input[i] > (235+offset3));
int t3_1_29 = rt3_1_29 * (4 + t3_0_59);
t3_1_29 += (1 - rt3_1_29) * t3_0_58;

int rt3_1_30 = (input[i] > (243+offset3));
int t3_1_30 = rt3_1_30 * (4 + t3_0_61);
t3_1_30 += (1 - rt3_1_30) * t3_0_60;

int rt3_1_31 = (input[i] > (251+offset3));
int t3_1_31 = rt3_1_31 * (4 + t3_0_63);
t3_1_31 += (1 - rt3_1_31) * t3_0_62;

int rt3_2_0 = (input[i] > (7+offset3));
int t3_2_0 = rt3_2_0 * (8 + t3_1_1);
t3_2_0 += (1 - rt3_2_0) * t3_1_0;

int rt3_2_1 = (input[i] > (23+offset3));
int t3_2_1 = rt3_2_1 * (8 + t3_1_3);
t3_2_1 += (1 - rt3_2_1) * t3_1_2;

int rt3_2_2 = (input[i] > (39+offset3));
int t3_2_2 = rt3_2_2 * (8 + t3_1_5);
t3_2_2 += (1 - rt3_2_2) * t3_1_4;

int rt3_2_3 = (input[i] > (55+offset3));
int t3_2_3 = rt3_2_3 * (8 + t3_1_7);
t3_2_3 += (1 - rt3_2_3) * t3_1_6;

int rt3_2_4 = (input[i] > (71+offset3));
int t3_2_4 = rt3_2_4 * (8 + t3_1_9);
t3_2_4 += (1 - rt3_2_4) * t3_1_8;

int rt3_2_5 = (input[i] > (87+offset3));
int t3_2_5 = rt3_2_5 * (8 + t3_1_11);
t3_2_5 += (1 - rt3_2_5) * t3_1_10;

int rt3_2_6 = (input[i] > (103+offset3));
int t3_2_6 = rt3_2_6 * (8 + t3_1_13);
t3_2_6 += (1 - rt3_2_6) * t3_1_12;

int rt3_2_7 = (input[i] > (119+offset3));
int t3_2_7 = rt3_2_7 * (8 + t3_1_15);
t3_2_7 += (1 - rt3_2_7) * t3_1_14;

int rt3_2_8 = (input[i] > (135+offset3));
int t3_2_8 = rt3_2_8 * (8 + t3_1_17);
t3_2_8 += (1 - rt3_2_8) * t3_1_16;

int rt3_2_9 = (input[i] > (151+offset3));
int t3_2_9 = rt3_2_9 * (8 + t3_1_19);
t3_2_9 += (1 - rt3_2_9) * t3_1_18;

int rt3_2_10 = (input[i] > (167+offset3));
int t3_2_10 = rt3_2_10 * (8 + t3_1_21);
t3_2_10 += (1 - rt3_2_10) * t3_1_20;

int rt3_2_11 = (input[i] > (183+offset3));
int t3_2_11 = rt3_2_11 * (8 + t3_1_23);
t3_2_11 += (1 - rt3_2_11) * t3_1_22;

int rt3_2_12 = (input[i] > (199+offset3));
int t3_2_12 = rt3_2_12 * (8 + t3_1_25);
t3_2_12 += (1 - rt3_2_12) * t3_1_24;

int rt3_2_13 = (input[i] > (215+offset3));
int t3_2_13 = rt3_2_13 * (8 + t3_1_27);
t3_2_13 += (1 - rt3_2_13) * t3_1_26;

int rt3_2_14 = (input[i] > (231+offset3));
int t3_2_14 = rt3_2_14 * (8 + t3_1_29);
t3_2_14 += (1 - rt3_2_14) * t3_1_28;

int rt3_2_15 = (input[i] > (247+offset3));
int t3_2_15 = rt3_2_15 * (8 + t3_1_31);
t3_2_15 += (1 - rt3_2_15) * t3_1_30;

int rt3_3_0 = (input[i] > (15+offset3));
int t3_3_0 = rt3_3_0 * (16 + t3_2_1);
t3_3_0 += (1 - rt3_3_0) * t3_2_0;

int rt3_3_1 = (input[i] > (47+offset3));
int t3_3_1 = rt3_3_1 * (16 + t3_2_3);
t3_3_1 += (1 - rt3_3_1) * t3_2_2;

int rt3_3_2 = (input[i] > (79+offset3));
int t3_3_2 = rt3_3_2 * (16 + t3_2_5);
t3_3_2 += (1 - rt3_3_2) * t3_2_4;

int rt3_3_3 = (input[i] > (111+offset3));
int t3_3_3 = rt3_3_3 * (16 + t3_2_7);
t3_3_3 += (1 - rt3_3_3) * t3_2_6;

int rt3_3_4 = (input[i] > (143+offset3));
int t3_3_4 = rt3_3_4 * (16 + t3_2_9);
t3_3_4 += (1 - rt3_3_4) * t3_2_8;

int rt3_3_5 = (input[i] > (175+offset3));
int t3_3_5 = rt3_3_5 * (16 + t3_2_11);
t3_3_5 += (1 - rt3_3_5) * t3_2_10;

int rt3_3_6 = (input[i] > (207+offset3));
int t3_3_6 = rt3_3_6 * (16 + t3_2_13);
t3_3_6 += (1 - rt3_3_6) * t3_2_12;

int rt3_3_7 = (input[i] > (239+offset3));
int t3_3_7 = rt3_3_7 * (16 + t3_2_15);
t3_3_7 += (1 - rt3_3_7) * t3_2_14;

int rt3_4_0 = (input[i] > (31+offset3));
int t3_4_0 = rt3_4_0 * (32 + t3_3_1);
t3_4_0 += (1 - rt3_4_0) * t3_3_0;

int rt3_4_1 = (input[i] > (95+offset3));
int t3_4_1 = rt3_4_1 * (32 + t3_3_3);
t3_4_1 += (1 - rt3_4_1) * t3_3_2;

int rt3_4_2 = (input[i] > (159+offset3));
int t3_4_2 = rt3_4_2 * (32 + t3_3_5);
t3_4_2 += (1 - rt3_4_2) * t3_3_4;

int rt3_4_3 = (input[i] > (223+offset3));
int t3_4_3 = rt3_4_3 * (32 + t3_3_7);
t3_4_3 += (1 - rt3_4_3) * t3_3_6;

int rt3_5_0 = (input[i] > (63+offset3));
int t3_5_0 = rt3_5_0 * (64 + t3_4_1);
t3_5_0 += (1 - rt3_5_0) * t3_4_0;

int rt3_5_1 = (input[i] > (191+offset3));
int t3_5_1 = rt3_5_1 * (64 + t3_4_3);
t3_5_1 += (1 - rt3_5_1) * t3_4_2;

int rt3_6_0 = (input[i] > (127+offset3));
int t3_6_0 = rt3_6_0 * (128 + t3_5_1);
t3_6_0 += (1 - rt3_6_0) * t3_5_0;

vR[i] = t0_6_0+ (t0_6_0 == t1_6_0)+ (t0_6_0 == t2_6_0)+ (t0_6_0 == t3_6_0);
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
