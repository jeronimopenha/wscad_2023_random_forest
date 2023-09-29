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

#define _MOD 1024
#define _2TREE
#define EXP_NAME "_RF_CALC_2TREE_10LV_1INPUT_50000000"

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

int rt0_0_64 = (input[i] > (257+offset0));
int t0_0_64 = rt0_0_64 * (2 + (input[i] > (258+offset0)));
t0_0_64 += (1 - rt0_0_64) * (input[i] > (256+offset0));

int rt0_0_65 = (input[i] > (261+offset0));
int t0_0_65 = rt0_0_65 * (2 + (input[i] > (262+offset0)));
t0_0_65 += (1 - rt0_0_65) * (input[i] > (260+offset0));

int rt0_0_66 = (input[i] > (265+offset0));
int t0_0_66 = rt0_0_66 * (2 + (input[i] > (266+offset0)));
t0_0_66 += (1 - rt0_0_66) * (input[i] > (264+offset0));

int rt0_0_67 = (input[i] > (269+offset0));
int t0_0_67 = rt0_0_67 * (2 + (input[i] > (270+offset0)));
t0_0_67 += (1 - rt0_0_67) * (input[i] > (268+offset0));

int rt0_0_68 = (input[i] > (273+offset0));
int t0_0_68 = rt0_0_68 * (2 + (input[i] > (274+offset0)));
t0_0_68 += (1 - rt0_0_68) * (input[i] > (272+offset0));

int rt0_0_69 = (input[i] > (277+offset0));
int t0_0_69 = rt0_0_69 * (2 + (input[i] > (278+offset0)));
t0_0_69 += (1 - rt0_0_69) * (input[i] > (276+offset0));

int rt0_0_70 = (input[i] > (281+offset0));
int t0_0_70 = rt0_0_70 * (2 + (input[i] > (282+offset0)));
t0_0_70 += (1 - rt0_0_70) * (input[i] > (280+offset0));

int rt0_0_71 = (input[i] > (285+offset0));
int t0_0_71 = rt0_0_71 * (2 + (input[i] > (286+offset0)));
t0_0_71 += (1 - rt0_0_71) * (input[i] > (284+offset0));

int rt0_0_72 = (input[i] > (289+offset0));
int t0_0_72 = rt0_0_72 * (2 + (input[i] > (290+offset0)));
t0_0_72 += (1 - rt0_0_72) * (input[i] > (288+offset0));

int rt0_0_73 = (input[i] > (293+offset0));
int t0_0_73 = rt0_0_73 * (2 + (input[i] > (294+offset0)));
t0_0_73 += (1 - rt0_0_73) * (input[i] > (292+offset0));

int rt0_0_74 = (input[i] > (297+offset0));
int t0_0_74 = rt0_0_74 * (2 + (input[i] > (298+offset0)));
t0_0_74 += (1 - rt0_0_74) * (input[i] > (296+offset0));

int rt0_0_75 = (input[i] > (301+offset0));
int t0_0_75 = rt0_0_75 * (2 + (input[i] > (302+offset0)));
t0_0_75 += (1 - rt0_0_75) * (input[i] > (300+offset0));

int rt0_0_76 = (input[i] > (305+offset0));
int t0_0_76 = rt0_0_76 * (2 + (input[i] > (306+offset0)));
t0_0_76 += (1 - rt0_0_76) * (input[i] > (304+offset0));

int rt0_0_77 = (input[i] > (309+offset0));
int t0_0_77 = rt0_0_77 * (2 + (input[i] > (310+offset0)));
t0_0_77 += (1 - rt0_0_77) * (input[i] > (308+offset0));

int rt0_0_78 = (input[i] > (313+offset0));
int t0_0_78 = rt0_0_78 * (2 + (input[i] > (314+offset0)));
t0_0_78 += (1 - rt0_0_78) * (input[i] > (312+offset0));

int rt0_0_79 = (input[i] > (317+offset0));
int t0_0_79 = rt0_0_79 * (2 + (input[i] > (318+offset0)));
t0_0_79 += (1 - rt0_0_79) * (input[i] > (316+offset0));

int rt0_0_80 = (input[i] > (321+offset0));
int t0_0_80 = rt0_0_80 * (2 + (input[i] > (322+offset0)));
t0_0_80 += (1 - rt0_0_80) * (input[i] > (320+offset0));

int rt0_0_81 = (input[i] > (325+offset0));
int t0_0_81 = rt0_0_81 * (2 + (input[i] > (326+offset0)));
t0_0_81 += (1 - rt0_0_81) * (input[i] > (324+offset0));

int rt0_0_82 = (input[i] > (329+offset0));
int t0_0_82 = rt0_0_82 * (2 + (input[i] > (330+offset0)));
t0_0_82 += (1 - rt0_0_82) * (input[i] > (328+offset0));

int rt0_0_83 = (input[i] > (333+offset0));
int t0_0_83 = rt0_0_83 * (2 + (input[i] > (334+offset0)));
t0_0_83 += (1 - rt0_0_83) * (input[i] > (332+offset0));

int rt0_0_84 = (input[i] > (337+offset0));
int t0_0_84 = rt0_0_84 * (2 + (input[i] > (338+offset0)));
t0_0_84 += (1 - rt0_0_84) * (input[i] > (336+offset0));

int rt0_0_85 = (input[i] > (341+offset0));
int t0_0_85 = rt0_0_85 * (2 + (input[i] > (342+offset0)));
t0_0_85 += (1 - rt0_0_85) * (input[i] > (340+offset0));

int rt0_0_86 = (input[i] > (345+offset0));
int t0_0_86 = rt0_0_86 * (2 + (input[i] > (346+offset0)));
t0_0_86 += (1 - rt0_0_86) * (input[i] > (344+offset0));

int rt0_0_87 = (input[i] > (349+offset0));
int t0_0_87 = rt0_0_87 * (2 + (input[i] > (350+offset0)));
t0_0_87 += (1 - rt0_0_87) * (input[i] > (348+offset0));

int rt0_0_88 = (input[i] > (353+offset0));
int t0_0_88 = rt0_0_88 * (2 + (input[i] > (354+offset0)));
t0_0_88 += (1 - rt0_0_88) * (input[i] > (352+offset0));

int rt0_0_89 = (input[i] > (357+offset0));
int t0_0_89 = rt0_0_89 * (2 + (input[i] > (358+offset0)));
t0_0_89 += (1 - rt0_0_89) * (input[i] > (356+offset0));

int rt0_0_90 = (input[i] > (361+offset0));
int t0_0_90 = rt0_0_90 * (2 + (input[i] > (362+offset0)));
t0_0_90 += (1 - rt0_0_90) * (input[i] > (360+offset0));

int rt0_0_91 = (input[i] > (365+offset0));
int t0_0_91 = rt0_0_91 * (2 + (input[i] > (366+offset0)));
t0_0_91 += (1 - rt0_0_91) * (input[i] > (364+offset0));

int rt0_0_92 = (input[i] > (369+offset0));
int t0_0_92 = rt0_0_92 * (2 + (input[i] > (370+offset0)));
t0_0_92 += (1 - rt0_0_92) * (input[i] > (368+offset0));

int rt0_0_93 = (input[i] > (373+offset0));
int t0_0_93 = rt0_0_93 * (2 + (input[i] > (374+offset0)));
t0_0_93 += (1 - rt0_0_93) * (input[i] > (372+offset0));

int rt0_0_94 = (input[i] > (377+offset0));
int t0_0_94 = rt0_0_94 * (2 + (input[i] > (378+offset0)));
t0_0_94 += (1 - rt0_0_94) * (input[i] > (376+offset0));

int rt0_0_95 = (input[i] > (381+offset0));
int t0_0_95 = rt0_0_95 * (2 + (input[i] > (382+offset0)));
t0_0_95 += (1 - rt0_0_95) * (input[i] > (380+offset0));

int rt0_0_96 = (input[i] > (385+offset0));
int t0_0_96 = rt0_0_96 * (2 + (input[i] > (386+offset0)));
t0_0_96 += (1 - rt0_0_96) * (input[i] > (384+offset0));

int rt0_0_97 = (input[i] > (389+offset0));
int t0_0_97 = rt0_0_97 * (2 + (input[i] > (390+offset0)));
t0_0_97 += (1 - rt0_0_97) * (input[i] > (388+offset0));

int rt0_0_98 = (input[i] > (393+offset0));
int t0_0_98 = rt0_0_98 * (2 + (input[i] > (394+offset0)));
t0_0_98 += (1 - rt0_0_98) * (input[i] > (392+offset0));

int rt0_0_99 = (input[i] > (397+offset0));
int t0_0_99 = rt0_0_99 * (2 + (input[i] > (398+offset0)));
t0_0_99 += (1 - rt0_0_99) * (input[i] > (396+offset0));

int rt0_0_100 = (input[i] > (401+offset0));
int t0_0_100 = rt0_0_100 * (2 + (input[i] > (402+offset0)));
t0_0_100 += (1 - rt0_0_100) * (input[i] > (400+offset0));

int rt0_0_101 = (input[i] > (405+offset0));
int t0_0_101 = rt0_0_101 * (2 + (input[i] > (406+offset0)));
t0_0_101 += (1 - rt0_0_101) * (input[i] > (404+offset0));

int rt0_0_102 = (input[i] > (409+offset0));
int t0_0_102 = rt0_0_102 * (2 + (input[i] > (410+offset0)));
t0_0_102 += (1 - rt0_0_102) * (input[i] > (408+offset0));

int rt0_0_103 = (input[i] > (413+offset0));
int t0_0_103 = rt0_0_103 * (2 + (input[i] > (414+offset0)));
t0_0_103 += (1 - rt0_0_103) * (input[i] > (412+offset0));

int rt0_0_104 = (input[i] > (417+offset0));
int t0_0_104 = rt0_0_104 * (2 + (input[i] > (418+offset0)));
t0_0_104 += (1 - rt0_0_104) * (input[i] > (416+offset0));

int rt0_0_105 = (input[i] > (421+offset0));
int t0_0_105 = rt0_0_105 * (2 + (input[i] > (422+offset0)));
t0_0_105 += (1 - rt0_0_105) * (input[i] > (420+offset0));

int rt0_0_106 = (input[i] > (425+offset0));
int t0_0_106 = rt0_0_106 * (2 + (input[i] > (426+offset0)));
t0_0_106 += (1 - rt0_0_106) * (input[i] > (424+offset0));

int rt0_0_107 = (input[i] > (429+offset0));
int t0_0_107 = rt0_0_107 * (2 + (input[i] > (430+offset0)));
t0_0_107 += (1 - rt0_0_107) * (input[i] > (428+offset0));

int rt0_0_108 = (input[i] > (433+offset0));
int t0_0_108 = rt0_0_108 * (2 + (input[i] > (434+offset0)));
t0_0_108 += (1 - rt0_0_108) * (input[i] > (432+offset0));

int rt0_0_109 = (input[i] > (437+offset0));
int t0_0_109 = rt0_0_109 * (2 + (input[i] > (438+offset0)));
t0_0_109 += (1 - rt0_0_109) * (input[i] > (436+offset0));

int rt0_0_110 = (input[i] > (441+offset0));
int t0_0_110 = rt0_0_110 * (2 + (input[i] > (442+offset0)));
t0_0_110 += (1 - rt0_0_110) * (input[i] > (440+offset0));

int rt0_0_111 = (input[i] > (445+offset0));
int t0_0_111 = rt0_0_111 * (2 + (input[i] > (446+offset0)));
t0_0_111 += (1 - rt0_0_111) * (input[i] > (444+offset0));

int rt0_0_112 = (input[i] > (449+offset0));
int t0_0_112 = rt0_0_112 * (2 + (input[i] > (450+offset0)));
t0_0_112 += (1 - rt0_0_112) * (input[i] > (448+offset0));

int rt0_0_113 = (input[i] > (453+offset0));
int t0_0_113 = rt0_0_113 * (2 + (input[i] > (454+offset0)));
t0_0_113 += (1 - rt0_0_113) * (input[i] > (452+offset0));

int rt0_0_114 = (input[i] > (457+offset0));
int t0_0_114 = rt0_0_114 * (2 + (input[i] > (458+offset0)));
t0_0_114 += (1 - rt0_0_114) * (input[i] > (456+offset0));

int rt0_0_115 = (input[i] > (461+offset0));
int t0_0_115 = rt0_0_115 * (2 + (input[i] > (462+offset0)));
t0_0_115 += (1 - rt0_0_115) * (input[i] > (460+offset0));

int rt0_0_116 = (input[i] > (465+offset0));
int t0_0_116 = rt0_0_116 * (2 + (input[i] > (466+offset0)));
t0_0_116 += (1 - rt0_0_116) * (input[i] > (464+offset0));

int rt0_0_117 = (input[i] > (469+offset0));
int t0_0_117 = rt0_0_117 * (2 + (input[i] > (470+offset0)));
t0_0_117 += (1 - rt0_0_117) * (input[i] > (468+offset0));

int rt0_0_118 = (input[i] > (473+offset0));
int t0_0_118 = rt0_0_118 * (2 + (input[i] > (474+offset0)));
t0_0_118 += (1 - rt0_0_118) * (input[i] > (472+offset0));

int rt0_0_119 = (input[i] > (477+offset0));
int t0_0_119 = rt0_0_119 * (2 + (input[i] > (478+offset0)));
t0_0_119 += (1 - rt0_0_119) * (input[i] > (476+offset0));

int rt0_0_120 = (input[i] > (481+offset0));
int t0_0_120 = rt0_0_120 * (2 + (input[i] > (482+offset0)));
t0_0_120 += (1 - rt0_0_120) * (input[i] > (480+offset0));

int rt0_0_121 = (input[i] > (485+offset0));
int t0_0_121 = rt0_0_121 * (2 + (input[i] > (486+offset0)));
t0_0_121 += (1 - rt0_0_121) * (input[i] > (484+offset0));

int rt0_0_122 = (input[i] > (489+offset0));
int t0_0_122 = rt0_0_122 * (2 + (input[i] > (490+offset0)));
t0_0_122 += (1 - rt0_0_122) * (input[i] > (488+offset0));

int rt0_0_123 = (input[i] > (493+offset0));
int t0_0_123 = rt0_0_123 * (2 + (input[i] > (494+offset0)));
t0_0_123 += (1 - rt0_0_123) * (input[i] > (492+offset0));

int rt0_0_124 = (input[i] > (497+offset0));
int t0_0_124 = rt0_0_124 * (2 + (input[i] > (498+offset0)));
t0_0_124 += (1 - rt0_0_124) * (input[i] > (496+offset0));

int rt0_0_125 = (input[i] > (501+offset0));
int t0_0_125 = rt0_0_125 * (2 + (input[i] > (502+offset0)));
t0_0_125 += (1 - rt0_0_125) * (input[i] > (500+offset0));

int rt0_0_126 = (input[i] > (505+offset0));
int t0_0_126 = rt0_0_126 * (2 + (input[i] > (506+offset0)));
t0_0_126 += (1 - rt0_0_126) * (input[i] > (504+offset0));

int rt0_0_127 = (input[i] > (509+offset0));
int t0_0_127 = rt0_0_127 * (2 + (input[i] > (510+offset0)));
t0_0_127 += (1 - rt0_0_127) * (input[i] > (508+offset0));

int rt0_0_128 = (input[i] > (513+offset0));
int t0_0_128 = rt0_0_128 * (2 + (input[i] > (514+offset0)));
t0_0_128 += (1 - rt0_0_128) * (input[i] > (512+offset0));

int rt0_0_129 = (input[i] > (517+offset0));
int t0_0_129 = rt0_0_129 * (2 + (input[i] > (518+offset0)));
t0_0_129 += (1 - rt0_0_129) * (input[i] > (516+offset0));

int rt0_0_130 = (input[i] > (521+offset0));
int t0_0_130 = rt0_0_130 * (2 + (input[i] > (522+offset0)));
t0_0_130 += (1 - rt0_0_130) * (input[i] > (520+offset0));

int rt0_0_131 = (input[i] > (525+offset0));
int t0_0_131 = rt0_0_131 * (2 + (input[i] > (526+offset0)));
t0_0_131 += (1 - rt0_0_131) * (input[i] > (524+offset0));

int rt0_0_132 = (input[i] > (529+offset0));
int t0_0_132 = rt0_0_132 * (2 + (input[i] > (530+offset0)));
t0_0_132 += (1 - rt0_0_132) * (input[i] > (528+offset0));

int rt0_0_133 = (input[i] > (533+offset0));
int t0_0_133 = rt0_0_133 * (2 + (input[i] > (534+offset0)));
t0_0_133 += (1 - rt0_0_133) * (input[i] > (532+offset0));

int rt0_0_134 = (input[i] > (537+offset0));
int t0_0_134 = rt0_0_134 * (2 + (input[i] > (538+offset0)));
t0_0_134 += (1 - rt0_0_134) * (input[i] > (536+offset0));

int rt0_0_135 = (input[i] > (541+offset0));
int t0_0_135 = rt0_0_135 * (2 + (input[i] > (542+offset0)));
t0_0_135 += (1 - rt0_0_135) * (input[i] > (540+offset0));

int rt0_0_136 = (input[i] > (545+offset0));
int t0_0_136 = rt0_0_136 * (2 + (input[i] > (546+offset0)));
t0_0_136 += (1 - rt0_0_136) * (input[i] > (544+offset0));

int rt0_0_137 = (input[i] > (549+offset0));
int t0_0_137 = rt0_0_137 * (2 + (input[i] > (550+offset0)));
t0_0_137 += (1 - rt0_0_137) * (input[i] > (548+offset0));

int rt0_0_138 = (input[i] > (553+offset0));
int t0_0_138 = rt0_0_138 * (2 + (input[i] > (554+offset0)));
t0_0_138 += (1 - rt0_0_138) * (input[i] > (552+offset0));

int rt0_0_139 = (input[i] > (557+offset0));
int t0_0_139 = rt0_0_139 * (2 + (input[i] > (558+offset0)));
t0_0_139 += (1 - rt0_0_139) * (input[i] > (556+offset0));

int rt0_0_140 = (input[i] > (561+offset0));
int t0_0_140 = rt0_0_140 * (2 + (input[i] > (562+offset0)));
t0_0_140 += (1 - rt0_0_140) * (input[i] > (560+offset0));

int rt0_0_141 = (input[i] > (565+offset0));
int t0_0_141 = rt0_0_141 * (2 + (input[i] > (566+offset0)));
t0_0_141 += (1 - rt0_0_141) * (input[i] > (564+offset0));

int rt0_0_142 = (input[i] > (569+offset0));
int t0_0_142 = rt0_0_142 * (2 + (input[i] > (570+offset0)));
t0_0_142 += (1 - rt0_0_142) * (input[i] > (568+offset0));

int rt0_0_143 = (input[i] > (573+offset0));
int t0_0_143 = rt0_0_143 * (2 + (input[i] > (574+offset0)));
t0_0_143 += (1 - rt0_0_143) * (input[i] > (572+offset0));

int rt0_0_144 = (input[i] > (577+offset0));
int t0_0_144 = rt0_0_144 * (2 + (input[i] > (578+offset0)));
t0_0_144 += (1 - rt0_0_144) * (input[i] > (576+offset0));

int rt0_0_145 = (input[i] > (581+offset0));
int t0_0_145 = rt0_0_145 * (2 + (input[i] > (582+offset0)));
t0_0_145 += (1 - rt0_0_145) * (input[i] > (580+offset0));

int rt0_0_146 = (input[i] > (585+offset0));
int t0_0_146 = rt0_0_146 * (2 + (input[i] > (586+offset0)));
t0_0_146 += (1 - rt0_0_146) * (input[i] > (584+offset0));

int rt0_0_147 = (input[i] > (589+offset0));
int t0_0_147 = rt0_0_147 * (2 + (input[i] > (590+offset0)));
t0_0_147 += (1 - rt0_0_147) * (input[i] > (588+offset0));

int rt0_0_148 = (input[i] > (593+offset0));
int t0_0_148 = rt0_0_148 * (2 + (input[i] > (594+offset0)));
t0_0_148 += (1 - rt0_0_148) * (input[i] > (592+offset0));

int rt0_0_149 = (input[i] > (597+offset0));
int t0_0_149 = rt0_0_149 * (2 + (input[i] > (598+offset0)));
t0_0_149 += (1 - rt0_0_149) * (input[i] > (596+offset0));

int rt0_0_150 = (input[i] > (601+offset0));
int t0_0_150 = rt0_0_150 * (2 + (input[i] > (602+offset0)));
t0_0_150 += (1 - rt0_0_150) * (input[i] > (600+offset0));

int rt0_0_151 = (input[i] > (605+offset0));
int t0_0_151 = rt0_0_151 * (2 + (input[i] > (606+offset0)));
t0_0_151 += (1 - rt0_0_151) * (input[i] > (604+offset0));

int rt0_0_152 = (input[i] > (609+offset0));
int t0_0_152 = rt0_0_152 * (2 + (input[i] > (610+offset0)));
t0_0_152 += (1 - rt0_0_152) * (input[i] > (608+offset0));

int rt0_0_153 = (input[i] > (613+offset0));
int t0_0_153 = rt0_0_153 * (2 + (input[i] > (614+offset0)));
t0_0_153 += (1 - rt0_0_153) * (input[i] > (612+offset0));

int rt0_0_154 = (input[i] > (617+offset0));
int t0_0_154 = rt0_0_154 * (2 + (input[i] > (618+offset0)));
t0_0_154 += (1 - rt0_0_154) * (input[i] > (616+offset0));

int rt0_0_155 = (input[i] > (621+offset0));
int t0_0_155 = rt0_0_155 * (2 + (input[i] > (622+offset0)));
t0_0_155 += (1 - rt0_0_155) * (input[i] > (620+offset0));

int rt0_0_156 = (input[i] > (625+offset0));
int t0_0_156 = rt0_0_156 * (2 + (input[i] > (626+offset0)));
t0_0_156 += (1 - rt0_0_156) * (input[i] > (624+offset0));

int rt0_0_157 = (input[i] > (629+offset0));
int t0_0_157 = rt0_0_157 * (2 + (input[i] > (630+offset0)));
t0_0_157 += (1 - rt0_0_157) * (input[i] > (628+offset0));

int rt0_0_158 = (input[i] > (633+offset0));
int t0_0_158 = rt0_0_158 * (2 + (input[i] > (634+offset0)));
t0_0_158 += (1 - rt0_0_158) * (input[i] > (632+offset0));

int rt0_0_159 = (input[i] > (637+offset0));
int t0_0_159 = rt0_0_159 * (2 + (input[i] > (638+offset0)));
t0_0_159 += (1 - rt0_0_159) * (input[i] > (636+offset0));

int rt0_0_160 = (input[i] > (641+offset0));
int t0_0_160 = rt0_0_160 * (2 + (input[i] > (642+offset0)));
t0_0_160 += (1 - rt0_0_160) * (input[i] > (640+offset0));

int rt0_0_161 = (input[i] > (645+offset0));
int t0_0_161 = rt0_0_161 * (2 + (input[i] > (646+offset0)));
t0_0_161 += (1 - rt0_0_161) * (input[i] > (644+offset0));

int rt0_0_162 = (input[i] > (649+offset0));
int t0_0_162 = rt0_0_162 * (2 + (input[i] > (650+offset0)));
t0_0_162 += (1 - rt0_0_162) * (input[i] > (648+offset0));

int rt0_0_163 = (input[i] > (653+offset0));
int t0_0_163 = rt0_0_163 * (2 + (input[i] > (654+offset0)));
t0_0_163 += (1 - rt0_0_163) * (input[i] > (652+offset0));

int rt0_0_164 = (input[i] > (657+offset0));
int t0_0_164 = rt0_0_164 * (2 + (input[i] > (658+offset0)));
t0_0_164 += (1 - rt0_0_164) * (input[i] > (656+offset0));

int rt0_0_165 = (input[i] > (661+offset0));
int t0_0_165 = rt0_0_165 * (2 + (input[i] > (662+offset0)));
t0_0_165 += (1 - rt0_0_165) * (input[i] > (660+offset0));

int rt0_0_166 = (input[i] > (665+offset0));
int t0_0_166 = rt0_0_166 * (2 + (input[i] > (666+offset0)));
t0_0_166 += (1 - rt0_0_166) * (input[i] > (664+offset0));

int rt0_0_167 = (input[i] > (669+offset0));
int t0_0_167 = rt0_0_167 * (2 + (input[i] > (670+offset0)));
t0_0_167 += (1 - rt0_0_167) * (input[i] > (668+offset0));

int rt0_0_168 = (input[i] > (673+offset0));
int t0_0_168 = rt0_0_168 * (2 + (input[i] > (674+offset0)));
t0_0_168 += (1 - rt0_0_168) * (input[i] > (672+offset0));

int rt0_0_169 = (input[i] > (677+offset0));
int t0_0_169 = rt0_0_169 * (2 + (input[i] > (678+offset0)));
t0_0_169 += (1 - rt0_0_169) * (input[i] > (676+offset0));

int rt0_0_170 = (input[i] > (681+offset0));
int t0_0_170 = rt0_0_170 * (2 + (input[i] > (682+offset0)));
t0_0_170 += (1 - rt0_0_170) * (input[i] > (680+offset0));

int rt0_0_171 = (input[i] > (685+offset0));
int t0_0_171 = rt0_0_171 * (2 + (input[i] > (686+offset0)));
t0_0_171 += (1 - rt0_0_171) * (input[i] > (684+offset0));

int rt0_0_172 = (input[i] > (689+offset0));
int t0_0_172 = rt0_0_172 * (2 + (input[i] > (690+offset0)));
t0_0_172 += (1 - rt0_0_172) * (input[i] > (688+offset0));

int rt0_0_173 = (input[i] > (693+offset0));
int t0_0_173 = rt0_0_173 * (2 + (input[i] > (694+offset0)));
t0_0_173 += (1 - rt0_0_173) * (input[i] > (692+offset0));

int rt0_0_174 = (input[i] > (697+offset0));
int t0_0_174 = rt0_0_174 * (2 + (input[i] > (698+offset0)));
t0_0_174 += (1 - rt0_0_174) * (input[i] > (696+offset0));

int rt0_0_175 = (input[i] > (701+offset0));
int t0_0_175 = rt0_0_175 * (2 + (input[i] > (702+offset0)));
t0_0_175 += (1 - rt0_0_175) * (input[i] > (700+offset0));

int rt0_0_176 = (input[i] > (705+offset0));
int t0_0_176 = rt0_0_176 * (2 + (input[i] > (706+offset0)));
t0_0_176 += (1 - rt0_0_176) * (input[i] > (704+offset0));

int rt0_0_177 = (input[i] > (709+offset0));
int t0_0_177 = rt0_0_177 * (2 + (input[i] > (710+offset0)));
t0_0_177 += (1 - rt0_0_177) * (input[i] > (708+offset0));

int rt0_0_178 = (input[i] > (713+offset0));
int t0_0_178 = rt0_0_178 * (2 + (input[i] > (714+offset0)));
t0_0_178 += (1 - rt0_0_178) * (input[i] > (712+offset0));

int rt0_0_179 = (input[i] > (717+offset0));
int t0_0_179 = rt0_0_179 * (2 + (input[i] > (718+offset0)));
t0_0_179 += (1 - rt0_0_179) * (input[i] > (716+offset0));

int rt0_0_180 = (input[i] > (721+offset0));
int t0_0_180 = rt0_0_180 * (2 + (input[i] > (722+offset0)));
t0_0_180 += (1 - rt0_0_180) * (input[i] > (720+offset0));

int rt0_0_181 = (input[i] > (725+offset0));
int t0_0_181 = rt0_0_181 * (2 + (input[i] > (726+offset0)));
t0_0_181 += (1 - rt0_0_181) * (input[i] > (724+offset0));

int rt0_0_182 = (input[i] > (729+offset0));
int t0_0_182 = rt0_0_182 * (2 + (input[i] > (730+offset0)));
t0_0_182 += (1 - rt0_0_182) * (input[i] > (728+offset0));

int rt0_0_183 = (input[i] > (733+offset0));
int t0_0_183 = rt0_0_183 * (2 + (input[i] > (734+offset0)));
t0_0_183 += (1 - rt0_0_183) * (input[i] > (732+offset0));

int rt0_0_184 = (input[i] > (737+offset0));
int t0_0_184 = rt0_0_184 * (2 + (input[i] > (738+offset0)));
t0_0_184 += (1 - rt0_0_184) * (input[i] > (736+offset0));

int rt0_0_185 = (input[i] > (741+offset0));
int t0_0_185 = rt0_0_185 * (2 + (input[i] > (742+offset0)));
t0_0_185 += (1 - rt0_0_185) * (input[i] > (740+offset0));

int rt0_0_186 = (input[i] > (745+offset0));
int t0_0_186 = rt0_0_186 * (2 + (input[i] > (746+offset0)));
t0_0_186 += (1 - rt0_0_186) * (input[i] > (744+offset0));

int rt0_0_187 = (input[i] > (749+offset0));
int t0_0_187 = rt0_0_187 * (2 + (input[i] > (750+offset0)));
t0_0_187 += (1 - rt0_0_187) * (input[i] > (748+offset0));

int rt0_0_188 = (input[i] > (753+offset0));
int t0_0_188 = rt0_0_188 * (2 + (input[i] > (754+offset0)));
t0_0_188 += (1 - rt0_0_188) * (input[i] > (752+offset0));

int rt0_0_189 = (input[i] > (757+offset0));
int t0_0_189 = rt0_0_189 * (2 + (input[i] > (758+offset0)));
t0_0_189 += (1 - rt0_0_189) * (input[i] > (756+offset0));

int rt0_0_190 = (input[i] > (761+offset0));
int t0_0_190 = rt0_0_190 * (2 + (input[i] > (762+offset0)));
t0_0_190 += (1 - rt0_0_190) * (input[i] > (760+offset0));

int rt0_0_191 = (input[i] > (765+offset0));
int t0_0_191 = rt0_0_191 * (2 + (input[i] > (766+offset0)));
t0_0_191 += (1 - rt0_0_191) * (input[i] > (764+offset0));

int rt0_0_192 = (input[i] > (769+offset0));
int t0_0_192 = rt0_0_192 * (2 + (input[i] > (770+offset0)));
t0_0_192 += (1 - rt0_0_192) * (input[i] > (768+offset0));

int rt0_0_193 = (input[i] > (773+offset0));
int t0_0_193 = rt0_0_193 * (2 + (input[i] > (774+offset0)));
t0_0_193 += (1 - rt0_0_193) * (input[i] > (772+offset0));

int rt0_0_194 = (input[i] > (777+offset0));
int t0_0_194 = rt0_0_194 * (2 + (input[i] > (778+offset0)));
t0_0_194 += (1 - rt0_0_194) * (input[i] > (776+offset0));

int rt0_0_195 = (input[i] > (781+offset0));
int t0_0_195 = rt0_0_195 * (2 + (input[i] > (782+offset0)));
t0_0_195 += (1 - rt0_0_195) * (input[i] > (780+offset0));

int rt0_0_196 = (input[i] > (785+offset0));
int t0_0_196 = rt0_0_196 * (2 + (input[i] > (786+offset0)));
t0_0_196 += (1 - rt0_0_196) * (input[i] > (784+offset0));

int rt0_0_197 = (input[i] > (789+offset0));
int t0_0_197 = rt0_0_197 * (2 + (input[i] > (790+offset0)));
t0_0_197 += (1 - rt0_0_197) * (input[i] > (788+offset0));

int rt0_0_198 = (input[i] > (793+offset0));
int t0_0_198 = rt0_0_198 * (2 + (input[i] > (794+offset0)));
t0_0_198 += (1 - rt0_0_198) * (input[i] > (792+offset0));

int rt0_0_199 = (input[i] > (797+offset0));
int t0_0_199 = rt0_0_199 * (2 + (input[i] > (798+offset0)));
t0_0_199 += (1 - rt0_0_199) * (input[i] > (796+offset0));

int rt0_0_200 = (input[i] > (801+offset0));
int t0_0_200 = rt0_0_200 * (2 + (input[i] > (802+offset0)));
t0_0_200 += (1 - rt0_0_200) * (input[i] > (800+offset0));

int rt0_0_201 = (input[i] > (805+offset0));
int t0_0_201 = rt0_0_201 * (2 + (input[i] > (806+offset0)));
t0_0_201 += (1 - rt0_0_201) * (input[i] > (804+offset0));

int rt0_0_202 = (input[i] > (809+offset0));
int t0_0_202 = rt0_0_202 * (2 + (input[i] > (810+offset0)));
t0_0_202 += (1 - rt0_0_202) * (input[i] > (808+offset0));

int rt0_0_203 = (input[i] > (813+offset0));
int t0_0_203 = rt0_0_203 * (2 + (input[i] > (814+offset0)));
t0_0_203 += (1 - rt0_0_203) * (input[i] > (812+offset0));

int rt0_0_204 = (input[i] > (817+offset0));
int t0_0_204 = rt0_0_204 * (2 + (input[i] > (818+offset0)));
t0_0_204 += (1 - rt0_0_204) * (input[i] > (816+offset0));

int rt0_0_205 = (input[i] > (821+offset0));
int t0_0_205 = rt0_0_205 * (2 + (input[i] > (822+offset0)));
t0_0_205 += (1 - rt0_0_205) * (input[i] > (820+offset0));

int rt0_0_206 = (input[i] > (825+offset0));
int t0_0_206 = rt0_0_206 * (2 + (input[i] > (826+offset0)));
t0_0_206 += (1 - rt0_0_206) * (input[i] > (824+offset0));

int rt0_0_207 = (input[i] > (829+offset0));
int t0_0_207 = rt0_0_207 * (2 + (input[i] > (830+offset0)));
t0_0_207 += (1 - rt0_0_207) * (input[i] > (828+offset0));

int rt0_0_208 = (input[i] > (833+offset0));
int t0_0_208 = rt0_0_208 * (2 + (input[i] > (834+offset0)));
t0_0_208 += (1 - rt0_0_208) * (input[i] > (832+offset0));

int rt0_0_209 = (input[i] > (837+offset0));
int t0_0_209 = rt0_0_209 * (2 + (input[i] > (838+offset0)));
t0_0_209 += (1 - rt0_0_209) * (input[i] > (836+offset0));

int rt0_0_210 = (input[i] > (841+offset0));
int t0_0_210 = rt0_0_210 * (2 + (input[i] > (842+offset0)));
t0_0_210 += (1 - rt0_0_210) * (input[i] > (840+offset0));

int rt0_0_211 = (input[i] > (845+offset0));
int t0_0_211 = rt0_0_211 * (2 + (input[i] > (846+offset0)));
t0_0_211 += (1 - rt0_0_211) * (input[i] > (844+offset0));

int rt0_0_212 = (input[i] > (849+offset0));
int t0_0_212 = rt0_0_212 * (2 + (input[i] > (850+offset0)));
t0_0_212 += (1 - rt0_0_212) * (input[i] > (848+offset0));

int rt0_0_213 = (input[i] > (853+offset0));
int t0_0_213 = rt0_0_213 * (2 + (input[i] > (854+offset0)));
t0_0_213 += (1 - rt0_0_213) * (input[i] > (852+offset0));

int rt0_0_214 = (input[i] > (857+offset0));
int t0_0_214 = rt0_0_214 * (2 + (input[i] > (858+offset0)));
t0_0_214 += (1 - rt0_0_214) * (input[i] > (856+offset0));

int rt0_0_215 = (input[i] > (861+offset0));
int t0_0_215 = rt0_0_215 * (2 + (input[i] > (862+offset0)));
t0_0_215 += (1 - rt0_0_215) * (input[i] > (860+offset0));

int rt0_0_216 = (input[i] > (865+offset0));
int t0_0_216 = rt0_0_216 * (2 + (input[i] > (866+offset0)));
t0_0_216 += (1 - rt0_0_216) * (input[i] > (864+offset0));

int rt0_0_217 = (input[i] > (869+offset0));
int t0_0_217 = rt0_0_217 * (2 + (input[i] > (870+offset0)));
t0_0_217 += (1 - rt0_0_217) * (input[i] > (868+offset0));

int rt0_0_218 = (input[i] > (873+offset0));
int t0_0_218 = rt0_0_218 * (2 + (input[i] > (874+offset0)));
t0_0_218 += (1 - rt0_0_218) * (input[i] > (872+offset0));

int rt0_0_219 = (input[i] > (877+offset0));
int t0_0_219 = rt0_0_219 * (2 + (input[i] > (878+offset0)));
t0_0_219 += (1 - rt0_0_219) * (input[i] > (876+offset0));

int rt0_0_220 = (input[i] > (881+offset0));
int t0_0_220 = rt0_0_220 * (2 + (input[i] > (882+offset0)));
t0_0_220 += (1 - rt0_0_220) * (input[i] > (880+offset0));

int rt0_0_221 = (input[i] > (885+offset0));
int t0_0_221 = rt0_0_221 * (2 + (input[i] > (886+offset0)));
t0_0_221 += (1 - rt0_0_221) * (input[i] > (884+offset0));

int rt0_0_222 = (input[i] > (889+offset0));
int t0_0_222 = rt0_0_222 * (2 + (input[i] > (890+offset0)));
t0_0_222 += (1 - rt0_0_222) * (input[i] > (888+offset0));

int rt0_0_223 = (input[i] > (893+offset0));
int t0_0_223 = rt0_0_223 * (2 + (input[i] > (894+offset0)));
t0_0_223 += (1 - rt0_0_223) * (input[i] > (892+offset0));

int rt0_0_224 = (input[i] > (897+offset0));
int t0_0_224 = rt0_0_224 * (2 + (input[i] > (898+offset0)));
t0_0_224 += (1 - rt0_0_224) * (input[i] > (896+offset0));

int rt0_0_225 = (input[i] > (901+offset0));
int t0_0_225 = rt0_0_225 * (2 + (input[i] > (902+offset0)));
t0_0_225 += (1 - rt0_0_225) * (input[i] > (900+offset0));

int rt0_0_226 = (input[i] > (905+offset0));
int t0_0_226 = rt0_0_226 * (2 + (input[i] > (906+offset0)));
t0_0_226 += (1 - rt0_0_226) * (input[i] > (904+offset0));

int rt0_0_227 = (input[i] > (909+offset0));
int t0_0_227 = rt0_0_227 * (2 + (input[i] > (910+offset0)));
t0_0_227 += (1 - rt0_0_227) * (input[i] > (908+offset0));

int rt0_0_228 = (input[i] > (913+offset0));
int t0_0_228 = rt0_0_228 * (2 + (input[i] > (914+offset0)));
t0_0_228 += (1 - rt0_0_228) * (input[i] > (912+offset0));

int rt0_0_229 = (input[i] > (917+offset0));
int t0_0_229 = rt0_0_229 * (2 + (input[i] > (918+offset0)));
t0_0_229 += (1 - rt0_0_229) * (input[i] > (916+offset0));

int rt0_0_230 = (input[i] > (921+offset0));
int t0_0_230 = rt0_0_230 * (2 + (input[i] > (922+offset0)));
t0_0_230 += (1 - rt0_0_230) * (input[i] > (920+offset0));

int rt0_0_231 = (input[i] > (925+offset0));
int t0_0_231 = rt0_0_231 * (2 + (input[i] > (926+offset0)));
t0_0_231 += (1 - rt0_0_231) * (input[i] > (924+offset0));

int rt0_0_232 = (input[i] > (929+offset0));
int t0_0_232 = rt0_0_232 * (2 + (input[i] > (930+offset0)));
t0_0_232 += (1 - rt0_0_232) * (input[i] > (928+offset0));

int rt0_0_233 = (input[i] > (933+offset0));
int t0_0_233 = rt0_0_233 * (2 + (input[i] > (934+offset0)));
t0_0_233 += (1 - rt0_0_233) * (input[i] > (932+offset0));

int rt0_0_234 = (input[i] > (937+offset0));
int t0_0_234 = rt0_0_234 * (2 + (input[i] > (938+offset0)));
t0_0_234 += (1 - rt0_0_234) * (input[i] > (936+offset0));

int rt0_0_235 = (input[i] > (941+offset0));
int t0_0_235 = rt0_0_235 * (2 + (input[i] > (942+offset0)));
t0_0_235 += (1 - rt0_0_235) * (input[i] > (940+offset0));

int rt0_0_236 = (input[i] > (945+offset0));
int t0_0_236 = rt0_0_236 * (2 + (input[i] > (946+offset0)));
t0_0_236 += (1 - rt0_0_236) * (input[i] > (944+offset0));

int rt0_0_237 = (input[i] > (949+offset0));
int t0_0_237 = rt0_0_237 * (2 + (input[i] > (950+offset0)));
t0_0_237 += (1 - rt0_0_237) * (input[i] > (948+offset0));

int rt0_0_238 = (input[i] > (953+offset0));
int t0_0_238 = rt0_0_238 * (2 + (input[i] > (954+offset0)));
t0_0_238 += (1 - rt0_0_238) * (input[i] > (952+offset0));

int rt0_0_239 = (input[i] > (957+offset0));
int t0_0_239 = rt0_0_239 * (2 + (input[i] > (958+offset0)));
t0_0_239 += (1 - rt0_0_239) * (input[i] > (956+offset0));

int rt0_0_240 = (input[i] > (961+offset0));
int t0_0_240 = rt0_0_240 * (2 + (input[i] > (962+offset0)));
t0_0_240 += (1 - rt0_0_240) * (input[i] > (960+offset0));

int rt0_0_241 = (input[i] > (965+offset0));
int t0_0_241 = rt0_0_241 * (2 + (input[i] > (966+offset0)));
t0_0_241 += (1 - rt0_0_241) * (input[i] > (964+offset0));

int rt0_0_242 = (input[i] > (969+offset0));
int t0_0_242 = rt0_0_242 * (2 + (input[i] > (970+offset0)));
t0_0_242 += (1 - rt0_0_242) * (input[i] > (968+offset0));

int rt0_0_243 = (input[i] > (973+offset0));
int t0_0_243 = rt0_0_243 * (2 + (input[i] > (974+offset0)));
t0_0_243 += (1 - rt0_0_243) * (input[i] > (972+offset0));

int rt0_0_244 = (input[i] > (977+offset0));
int t0_0_244 = rt0_0_244 * (2 + (input[i] > (978+offset0)));
t0_0_244 += (1 - rt0_0_244) * (input[i] > (976+offset0));

int rt0_0_245 = (input[i] > (981+offset0));
int t0_0_245 = rt0_0_245 * (2 + (input[i] > (982+offset0)));
t0_0_245 += (1 - rt0_0_245) * (input[i] > (980+offset0));

int rt0_0_246 = (input[i] > (985+offset0));
int t0_0_246 = rt0_0_246 * (2 + (input[i] > (986+offset0)));
t0_0_246 += (1 - rt0_0_246) * (input[i] > (984+offset0));

int rt0_0_247 = (input[i] > (989+offset0));
int t0_0_247 = rt0_0_247 * (2 + (input[i] > (990+offset0)));
t0_0_247 += (1 - rt0_0_247) * (input[i] > (988+offset0));

int rt0_0_248 = (input[i] > (993+offset0));
int t0_0_248 = rt0_0_248 * (2 + (input[i] > (994+offset0)));
t0_0_248 += (1 - rt0_0_248) * (input[i] > (992+offset0));

int rt0_0_249 = (input[i] > (997+offset0));
int t0_0_249 = rt0_0_249 * (2 + (input[i] > (998+offset0)));
t0_0_249 += (1 - rt0_0_249) * (input[i] > (996+offset0));

int rt0_0_250 = (input[i] > (1001+offset0));
int t0_0_250 = rt0_0_250 * (2 + (input[i] > (1002+offset0)));
t0_0_250 += (1 - rt0_0_250) * (input[i] > (1000+offset0));

int rt0_0_251 = (input[i] > (1005+offset0));
int t0_0_251 = rt0_0_251 * (2 + (input[i] > (1006+offset0)));
t0_0_251 += (1 - rt0_0_251) * (input[i] > (1004+offset0));

int rt0_0_252 = (input[i] > (1009+offset0));
int t0_0_252 = rt0_0_252 * (2 + (input[i] > (1010+offset0)));
t0_0_252 += (1 - rt0_0_252) * (input[i] > (1008+offset0));

int rt0_0_253 = (input[i] > (1013+offset0));
int t0_0_253 = rt0_0_253 * (2 + (input[i] > (1014+offset0)));
t0_0_253 += (1 - rt0_0_253) * (input[i] > (1012+offset0));

int rt0_0_254 = (input[i] > (1017+offset0));
int t0_0_254 = rt0_0_254 * (2 + (input[i] > (1018+offset0)));
t0_0_254 += (1 - rt0_0_254) * (input[i] > (1016+offset0));

int rt0_0_255 = (input[i] > (1021+offset0));
int t0_0_255 = rt0_0_255 * (2 + (input[i] > (1022+offset0)));
t0_0_255 += (1 - rt0_0_255) * (input[i] > (1020+offset0));

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

int rt0_1_32 = (input[i] > (259+offset0));
int t0_1_32 = rt0_1_32 * (4 + t0_0_65);
t0_1_32 += (1 - rt0_1_32) * t0_0_64;

int rt0_1_33 = (input[i] > (267+offset0));
int t0_1_33 = rt0_1_33 * (4 + t0_0_67);
t0_1_33 += (1 - rt0_1_33) * t0_0_66;

int rt0_1_34 = (input[i] > (275+offset0));
int t0_1_34 = rt0_1_34 * (4 + t0_0_69);
t0_1_34 += (1 - rt0_1_34) * t0_0_68;

int rt0_1_35 = (input[i] > (283+offset0));
int t0_1_35 = rt0_1_35 * (4 + t0_0_71);
t0_1_35 += (1 - rt0_1_35) * t0_0_70;

int rt0_1_36 = (input[i] > (291+offset0));
int t0_1_36 = rt0_1_36 * (4 + t0_0_73);
t0_1_36 += (1 - rt0_1_36) * t0_0_72;

int rt0_1_37 = (input[i] > (299+offset0));
int t0_1_37 = rt0_1_37 * (4 + t0_0_75);
t0_1_37 += (1 - rt0_1_37) * t0_0_74;

int rt0_1_38 = (input[i] > (307+offset0));
int t0_1_38 = rt0_1_38 * (4 + t0_0_77);
t0_1_38 += (1 - rt0_1_38) * t0_0_76;

int rt0_1_39 = (input[i] > (315+offset0));
int t0_1_39 = rt0_1_39 * (4 + t0_0_79);
t0_1_39 += (1 - rt0_1_39) * t0_0_78;

int rt0_1_40 = (input[i] > (323+offset0));
int t0_1_40 = rt0_1_40 * (4 + t0_0_81);
t0_1_40 += (1 - rt0_1_40) * t0_0_80;

int rt0_1_41 = (input[i] > (331+offset0));
int t0_1_41 = rt0_1_41 * (4 + t0_0_83);
t0_1_41 += (1 - rt0_1_41) * t0_0_82;

int rt0_1_42 = (input[i] > (339+offset0));
int t0_1_42 = rt0_1_42 * (4 + t0_0_85);
t0_1_42 += (1 - rt0_1_42) * t0_0_84;

int rt0_1_43 = (input[i] > (347+offset0));
int t0_1_43 = rt0_1_43 * (4 + t0_0_87);
t0_1_43 += (1 - rt0_1_43) * t0_0_86;

int rt0_1_44 = (input[i] > (355+offset0));
int t0_1_44 = rt0_1_44 * (4 + t0_0_89);
t0_1_44 += (1 - rt0_1_44) * t0_0_88;

int rt0_1_45 = (input[i] > (363+offset0));
int t0_1_45 = rt0_1_45 * (4 + t0_0_91);
t0_1_45 += (1 - rt0_1_45) * t0_0_90;

int rt0_1_46 = (input[i] > (371+offset0));
int t0_1_46 = rt0_1_46 * (4 + t0_0_93);
t0_1_46 += (1 - rt0_1_46) * t0_0_92;

int rt0_1_47 = (input[i] > (379+offset0));
int t0_1_47 = rt0_1_47 * (4 + t0_0_95);
t0_1_47 += (1 - rt0_1_47) * t0_0_94;

int rt0_1_48 = (input[i] > (387+offset0));
int t0_1_48 = rt0_1_48 * (4 + t0_0_97);
t0_1_48 += (1 - rt0_1_48) * t0_0_96;

int rt0_1_49 = (input[i] > (395+offset0));
int t0_1_49 = rt0_1_49 * (4 + t0_0_99);
t0_1_49 += (1 - rt0_1_49) * t0_0_98;

int rt0_1_50 = (input[i] > (403+offset0));
int t0_1_50 = rt0_1_50 * (4 + t0_0_101);
t0_1_50 += (1 - rt0_1_50) * t0_0_100;

int rt0_1_51 = (input[i] > (411+offset0));
int t0_1_51 = rt0_1_51 * (4 + t0_0_103);
t0_1_51 += (1 - rt0_1_51) * t0_0_102;

int rt0_1_52 = (input[i] > (419+offset0));
int t0_1_52 = rt0_1_52 * (4 + t0_0_105);
t0_1_52 += (1 - rt0_1_52) * t0_0_104;

int rt0_1_53 = (input[i] > (427+offset0));
int t0_1_53 = rt0_1_53 * (4 + t0_0_107);
t0_1_53 += (1 - rt0_1_53) * t0_0_106;

int rt0_1_54 = (input[i] > (435+offset0));
int t0_1_54 = rt0_1_54 * (4 + t0_0_109);
t0_1_54 += (1 - rt0_1_54) * t0_0_108;

int rt0_1_55 = (input[i] > (443+offset0));
int t0_1_55 = rt0_1_55 * (4 + t0_0_111);
t0_1_55 += (1 - rt0_1_55) * t0_0_110;

int rt0_1_56 = (input[i] > (451+offset0));
int t0_1_56 = rt0_1_56 * (4 + t0_0_113);
t0_1_56 += (1 - rt0_1_56) * t0_0_112;

int rt0_1_57 = (input[i] > (459+offset0));
int t0_1_57 = rt0_1_57 * (4 + t0_0_115);
t0_1_57 += (1 - rt0_1_57) * t0_0_114;

int rt0_1_58 = (input[i] > (467+offset0));
int t0_1_58 = rt0_1_58 * (4 + t0_0_117);
t0_1_58 += (1 - rt0_1_58) * t0_0_116;

int rt0_1_59 = (input[i] > (475+offset0));
int t0_1_59 = rt0_1_59 * (4 + t0_0_119);
t0_1_59 += (1 - rt0_1_59) * t0_0_118;

int rt0_1_60 = (input[i] > (483+offset0));
int t0_1_60 = rt0_1_60 * (4 + t0_0_121);
t0_1_60 += (1 - rt0_1_60) * t0_0_120;

int rt0_1_61 = (input[i] > (491+offset0));
int t0_1_61 = rt0_1_61 * (4 + t0_0_123);
t0_1_61 += (1 - rt0_1_61) * t0_0_122;

int rt0_1_62 = (input[i] > (499+offset0));
int t0_1_62 = rt0_1_62 * (4 + t0_0_125);
t0_1_62 += (1 - rt0_1_62) * t0_0_124;

int rt0_1_63 = (input[i] > (507+offset0));
int t0_1_63 = rt0_1_63 * (4 + t0_0_127);
t0_1_63 += (1 - rt0_1_63) * t0_0_126;

int rt0_1_64 = (input[i] > (515+offset0));
int t0_1_64 = rt0_1_64 * (4 + t0_0_129);
t0_1_64 += (1 - rt0_1_64) * t0_0_128;

int rt0_1_65 = (input[i] > (523+offset0));
int t0_1_65 = rt0_1_65 * (4 + t0_0_131);
t0_1_65 += (1 - rt0_1_65) * t0_0_130;

int rt0_1_66 = (input[i] > (531+offset0));
int t0_1_66 = rt0_1_66 * (4 + t0_0_133);
t0_1_66 += (1 - rt0_1_66) * t0_0_132;

int rt0_1_67 = (input[i] > (539+offset0));
int t0_1_67 = rt0_1_67 * (4 + t0_0_135);
t0_1_67 += (1 - rt0_1_67) * t0_0_134;

int rt0_1_68 = (input[i] > (547+offset0));
int t0_1_68 = rt0_1_68 * (4 + t0_0_137);
t0_1_68 += (1 - rt0_1_68) * t0_0_136;

int rt0_1_69 = (input[i] > (555+offset0));
int t0_1_69 = rt0_1_69 * (4 + t0_0_139);
t0_1_69 += (1 - rt0_1_69) * t0_0_138;

int rt0_1_70 = (input[i] > (563+offset0));
int t0_1_70 = rt0_1_70 * (4 + t0_0_141);
t0_1_70 += (1 - rt0_1_70) * t0_0_140;

int rt0_1_71 = (input[i] > (571+offset0));
int t0_1_71 = rt0_1_71 * (4 + t0_0_143);
t0_1_71 += (1 - rt0_1_71) * t0_0_142;

int rt0_1_72 = (input[i] > (579+offset0));
int t0_1_72 = rt0_1_72 * (4 + t0_0_145);
t0_1_72 += (1 - rt0_1_72) * t0_0_144;

int rt0_1_73 = (input[i] > (587+offset0));
int t0_1_73 = rt0_1_73 * (4 + t0_0_147);
t0_1_73 += (1 - rt0_1_73) * t0_0_146;

int rt0_1_74 = (input[i] > (595+offset0));
int t0_1_74 = rt0_1_74 * (4 + t0_0_149);
t0_1_74 += (1 - rt0_1_74) * t0_0_148;

int rt0_1_75 = (input[i] > (603+offset0));
int t0_1_75 = rt0_1_75 * (4 + t0_0_151);
t0_1_75 += (1 - rt0_1_75) * t0_0_150;

int rt0_1_76 = (input[i] > (611+offset0));
int t0_1_76 = rt0_1_76 * (4 + t0_0_153);
t0_1_76 += (1 - rt0_1_76) * t0_0_152;

int rt0_1_77 = (input[i] > (619+offset0));
int t0_1_77 = rt0_1_77 * (4 + t0_0_155);
t0_1_77 += (1 - rt0_1_77) * t0_0_154;

int rt0_1_78 = (input[i] > (627+offset0));
int t0_1_78 = rt0_1_78 * (4 + t0_0_157);
t0_1_78 += (1 - rt0_1_78) * t0_0_156;

int rt0_1_79 = (input[i] > (635+offset0));
int t0_1_79 = rt0_1_79 * (4 + t0_0_159);
t0_1_79 += (1 - rt0_1_79) * t0_0_158;

int rt0_1_80 = (input[i] > (643+offset0));
int t0_1_80 = rt0_1_80 * (4 + t0_0_161);
t0_1_80 += (1 - rt0_1_80) * t0_0_160;

int rt0_1_81 = (input[i] > (651+offset0));
int t0_1_81 = rt0_1_81 * (4 + t0_0_163);
t0_1_81 += (1 - rt0_1_81) * t0_0_162;

int rt0_1_82 = (input[i] > (659+offset0));
int t0_1_82 = rt0_1_82 * (4 + t0_0_165);
t0_1_82 += (1 - rt0_1_82) * t0_0_164;

int rt0_1_83 = (input[i] > (667+offset0));
int t0_1_83 = rt0_1_83 * (4 + t0_0_167);
t0_1_83 += (1 - rt0_1_83) * t0_0_166;

int rt0_1_84 = (input[i] > (675+offset0));
int t0_1_84 = rt0_1_84 * (4 + t0_0_169);
t0_1_84 += (1 - rt0_1_84) * t0_0_168;

int rt0_1_85 = (input[i] > (683+offset0));
int t0_1_85 = rt0_1_85 * (4 + t0_0_171);
t0_1_85 += (1 - rt0_1_85) * t0_0_170;

int rt0_1_86 = (input[i] > (691+offset0));
int t0_1_86 = rt0_1_86 * (4 + t0_0_173);
t0_1_86 += (1 - rt0_1_86) * t0_0_172;

int rt0_1_87 = (input[i] > (699+offset0));
int t0_1_87 = rt0_1_87 * (4 + t0_0_175);
t0_1_87 += (1 - rt0_1_87) * t0_0_174;

int rt0_1_88 = (input[i] > (707+offset0));
int t0_1_88 = rt0_1_88 * (4 + t0_0_177);
t0_1_88 += (1 - rt0_1_88) * t0_0_176;

int rt0_1_89 = (input[i] > (715+offset0));
int t0_1_89 = rt0_1_89 * (4 + t0_0_179);
t0_1_89 += (1 - rt0_1_89) * t0_0_178;

int rt0_1_90 = (input[i] > (723+offset0));
int t0_1_90 = rt0_1_90 * (4 + t0_0_181);
t0_1_90 += (1 - rt0_1_90) * t0_0_180;

int rt0_1_91 = (input[i] > (731+offset0));
int t0_1_91 = rt0_1_91 * (4 + t0_0_183);
t0_1_91 += (1 - rt0_1_91) * t0_0_182;

int rt0_1_92 = (input[i] > (739+offset0));
int t0_1_92 = rt0_1_92 * (4 + t0_0_185);
t0_1_92 += (1 - rt0_1_92) * t0_0_184;

int rt0_1_93 = (input[i] > (747+offset0));
int t0_1_93 = rt0_1_93 * (4 + t0_0_187);
t0_1_93 += (1 - rt0_1_93) * t0_0_186;

int rt0_1_94 = (input[i] > (755+offset0));
int t0_1_94 = rt0_1_94 * (4 + t0_0_189);
t0_1_94 += (1 - rt0_1_94) * t0_0_188;

int rt0_1_95 = (input[i] > (763+offset0));
int t0_1_95 = rt0_1_95 * (4 + t0_0_191);
t0_1_95 += (1 - rt0_1_95) * t0_0_190;

int rt0_1_96 = (input[i] > (771+offset0));
int t0_1_96 = rt0_1_96 * (4 + t0_0_193);
t0_1_96 += (1 - rt0_1_96) * t0_0_192;

int rt0_1_97 = (input[i] > (779+offset0));
int t0_1_97 = rt0_1_97 * (4 + t0_0_195);
t0_1_97 += (1 - rt0_1_97) * t0_0_194;

int rt0_1_98 = (input[i] > (787+offset0));
int t0_1_98 = rt0_1_98 * (4 + t0_0_197);
t0_1_98 += (1 - rt0_1_98) * t0_0_196;

int rt0_1_99 = (input[i] > (795+offset0));
int t0_1_99 = rt0_1_99 * (4 + t0_0_199);
t0_1_99 += (1 - rt0_1_99) * t0_0_198;

int rt0_1_100 = (input[i] > (803+offset0));
int t0_1_100 = rt0_1_100 * (4 + t0_0_201);
t0_1_100 += (1 - rt0_1_100) * t0_0_200;

int rt0_1_101 = (input[i] > (811+offset0));
int t0_1_101 = rt0_1_101 * (4 + t0_0_203);
t0_1_101 += (1 - rt0_1_101) * t0_0_202;

int rt0_1_102 = (input[i] > (819+offset0));
int t0_1_102 = rt0_1_102 * (4 + t0_0_205);
t0_1_102 += (1 - rt0_1_102) * t0_0_204;

int rt0_1_103 = (input[i] > (827+offset0));
int t0_1_103 = rt0_1_103 * (4 + t0_0_207);
t0_1_103 += (1 - rt0_1_103) * t0_0_206;

int rt0_1_104 = (input[i] > (835+offset0));
int t0_1_104 = rt0_1_104 * (4 + t0_0_209);
t0_1_104 += (1 - rt0_1_104) * t0_0_208;

int rt0_1_105 = (input[i] > (843+offset0));
int t0_1_105 = rt0_1_105 * (4 + t0_0_211);
t0_1_105 += (1 - rt0_1_105) * t0_0_210;

int rt0_1_106 = (input[i] > (851+offset0));
int t0_1_106 = rt0_1_106 * (4 + t0_0_213);
t0_1_106 += (1 - rt0_1_106) * t0_0_212;

int rt0_1_107 = (input[i] > (859+offset0));
int t0_1_107 = rt0_1_107 * (4 + t0_0_215);
t0_1_107 += (1 - rt0_1_107) * t0_0_214;

int rt0_1_108 = (input[i] > (867+offset0));
int t0_1_108 = rt0_1_108 * (4 + t0_0_217);
t0_1_108 += (1 - rt0_1_108) * t0_0_216;

int rt0_1_109 = (input[i] > (875+offset0));
int t0_1_109 = rt0_1_109 * (4 + t0_0_219);
t0_1_109 += (1 - rt0_1_109) * t0_0_218;

int rt0_1_110 = (input[i] > (883+offset0));
int t0_1_110 = rt0_1_110 * (4 + t0_0_221);
t0_1_110 += (1 - rt0_1_110) * t0_0_220;

int rt0_1_111 = (input[i] > (891+offset0));
int t0_1_111 = rt0_1_111 * (4 + t0_0_223);
t0_1_111 += (1 - rt0_1_111) * t0_0_222;

int rt0_1_112 = (input[i] > (899+offset0));
int t0_1_112 = rt0_1_112 * (4 + t0_0_225);
t0_1_112 += (1 - rt0_1_112) * t0_0_224;

int rt0_1_113 = (input[i] > (907+offset0));
int t0_1_113 = rt0_1_113 * (4 + t0_0_227);
t0_1_113 += (1 - rt0_1_113) * t0_0_226;

int rt0_1_114 = (input[i] > (915+offset0));
int t0_1_114 = rt0_1_114 * (4 + t0_0_229);
t0_1_114 += (1 - rt0_1_114) * t0_0_228;

int rt0_1_115 = (input[i] > (923+offset0));
int t0_1_115 = rt0_1_115 * (4 + t0_0_231);
t0_1_115 += (1 - rt0_1_115) * t0_0_230;

int rt0_1_116 = (input[i] > (931+offset0));
int t0_1_116 = rt0_1_116 * (4 + t0_0_233);
t0_1_116 += (1 - rt0_1_116) * t0_0_232;

int rt0_1_117 = (input[i] > (939+offset0));
int t0_1_117 = rt0_1_117 * (4 + t0_0_235);
t0_1_117 += (1 - rt0_1_117) * t0_0_234;

int rt0_1_118 = (input[i] > (947+offset0));
int t0_1_118 = rt0_1_118 * (4 + t0_0_237);
t0_1_118 += (1 - rt0_1_118) * t0_0_236;

int rt0_1_119 = (input[i] > (955+offset0));
int t0_1_119 = rt0_1_119 * (4 + t0_0_239);
t0_1_119 += (1 - rt0_1_119) * t0_0_238;

int rt0_1_120 = (input[i] > (963+offset0));
int t0_1_120 = rt0_1_120 * (4 + t0_0_241);
t0_1_120 += (1 - rt0_1_120) * t0_0_240;

int rt0_1_121 = (input[i] > (971+offset0));
int t0_1_121 = rt0_1_121 * (4 + t0_0_243);
t0_1_121 += (1 - rt0_1_121) * t0_0_242;

int rt0_1_122 = (input[i] > (979+offset0));
int t0_1_122 = rt0_1_122 * (4 + t0_0_245);
t0_1_122 += (1 - rt0_1_122) * t0_0_244;

int rt0_1_123 = (input[i] > (987+offset0));
int t0_1_123 = rt0_1_123 * (4 + t0_0_247);
t0_1_123 += (1 - rt0_1_123) * t0_0_246;

int rt0_1_124 = (input[i] > (995+offset0));
int t0_1_124 = rt0_1_124 * (4 + t0_0_249);
t0_1_124 += (1 - rt0_1_124) * t0_0_248;

int rt0_1_125 = (input[i] > (1003+offset0));
int t0_1_125 = rt0_1_125 * (4 + t0_0_251);
t0_1_125 += (1 - rt0_1_125) * t0_0_250;

int rt0_1_126 = (input[i] > (1011+offset0));
int t0_1_126 = rt0_1_126 * (4 + t0_0_253);
t0_1_126 += (1 - rt0_1_126) * t0_0_252;

int rt0_1_127 = (input[i] > (1019+offset0));
int t0_1_127 = rt0_1_127 * (4 + t0_0_255);
t0_1_127 += (1 - rt0_1_127) * t0_0_254;

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

int rt0_2_16 = (input[i] > (263+offset0));
int t0_2_16 = rt0_2_16 * (8 + t0_1_33);
t0_2_16 += (1 - rt0_2_16) * t0_1_32;

int rt0_2_17 = (input[i] > (279+offset0));
int t0_2_17 = rt0_2_17 * (8 + t0_1_35);
t0_2_17 += (1 - rt0_2_17) * t0_1_34;

int rt0_2_18 = (input[i] > (295+offset0));
int t0_2_18 = rt0_2_18 * (8 + t0_1_37);
t0_2_18 += (1 - rt0_2_18) * t0_1_36;

int rt0_2_19 = (input[i] > (311+offset0));
int t0_2_19 = rt0_2_19 * (8 + t0_1_39);
t0_2_19 += (1 - rt0_2_19) * t0_1_38;

int rt0_2_20 = (input[i] > (327+offset0));
int t0_2_20 = rt0_2_20 * (8 + t0_1_41);
t0_2_20 += (1 - rt0_2_20) * t0_1_40;

int rt0_2_21 = (input[i] > (343+offset0));
int t0_2_21 = rt0_2_21 * (8 + t0_1_43);
t0_2_21 += (1 - rt0_2_21) * t0_1_42;

int rt0_2_22 = (input[i] > (359+offset0));
int t0_2_22 = rt0_2_22 * (8 + t0_1_45);
t0_2_22 += (1 - rt0_2_22) * t0_1_44;

int rt0_2_23 = (input[i] > (375+offset0));
int t0_2_23 = rt0_2_23 * (8 + t0_1_47);
t0_2_23 += (1 - rt0_2_23) * t0_1_46;

int rt0_2_24 = (input[i] > (391+offset0));
int t0_2_24 = rt0_2_24 * (8 + t0_1_49);
t0_2_24 += (1 - rt0_2_24) * t0_1_48;

int rt0_2_25 = (input[i] > (407+offset0));
int t0_2_25 = rt0_2_25 * (8 + t0_1_51);
t0_2_25 += (1 - rt0_2_25) * t0_1_50;

int rt0_2_26 = (input[i] > (423+offset0));
int t0_2_26 = rt0_2_26 * (8 + t0_1_53);
t0_2_26 += (1 - rt0_2_26) * t0_1_52;

int rt0_2_27 = (input[i] > (439+offset0));
int t0_2_27 = rt0_2_27 * (8 + t0_1_55);
t0_2_27 += (1 - rt0_2_27) * t0_1_54;

int rt0_2_28 = (input[i] > (455+offset0));
int t0_2_28 = rt0_2_28 * (8 + t0_1_57);
t0_2_28 += (1 - rt0_2_28) * t0_1_56;

int rt0_2_29 = (input[i] > (471+offset0));
int t0_2_29 = rt0_2_29 * (8 + t0_1_59);
t0_2_29 += (1 - rt0_2_29) * t0_1_58;

int rt0_2_30 = (input[i] > (487+offset0));
int t0_2_30 = rt0_2_30 * (8 + t0_1_61);
t0_2_30 += (1 - rt0_2_30) * t0_1_60;

int rt0_2_31 = (input[i] > (503+offset0));
int t0_2_31 = rt0_2_31 * (8 + t0_1_63);
t0_2_31 += (1 - rt0_2_31) * t0_1_62;

int rt0_2_32 = (input[i] > (519+offset0));
int t0_2_32 = rt0_2_32 * (8 + t0_1_65);
t0_2_32 += (1 - rt0_2_32) * t0_1_64;

int rt0_2_33 = (input[i] > (535+offset0));
int t0_2_33 = rt0_2_33 * (8 + t0_1_67);
t0_2_33 += (1 - rt0_2_33) * t0_1_66;

int rt0_2_34 = (input[i] > (551+offset0));
int t0_2_34 = rt0_2_34 * (8 + t0_1_69);
t0_2_34 += (1 - rt0_2_34) * t0_1_68;

int rt0_2_35 = (input[i] > (567+offset0));
int t0_2_35 = rt0_2_35 * (8 + t0_1_71);
t0_2_35 += (1 - rt0_2_35) * t0_1_70;

int rt0_2_36 = (input[i] > (583+offset0));
int t0_2_36 = rt0_2_36 * (8 + t0_1_73);
t0_2_36 += (1 - rt0_2_36) * t0_1_72;

int rt0_2_37 = (input[i] > (599+offset0));
int t0_2_37 = rt0_2_37 * (8 + t0_1_75);
t0_2_37 += (1 - rt0_2_37) * t0_1_74;

int rt0_2_38 = (input[i] > (615+offset0));
int t0_2_38 = rt0_2_38 * (8 + t0_1_77);
t0_2_38 += (1 - rt0_2_38) * t0_1_76;

int rt0_2_39 = (input[i] > (631+offset0));
int t0_2_39 = rt0_2_39 * (8 + t0_1_79);
t0_2_39 += (1 - rt0_2_39) * t0_1_78;

int rt0_2_40 = (input[i] > (647+offset0));
int t0_2_40 = rt0_2_40 * (8 + t0_1_81);
t0_2_40 += (1 - rt0_2_40) * t0_1_80;

int rt0_2_41 = (input[i] > (663+offset0));
int t0_2_41 = rt0_2_41 * (8 + t0_1_83);
t0_2_41 += (1 - rt0_2_41) * t0_1_82;

int rt0_2_42 = (input[i] > (679+offset0));
int t0_2_42 = rt0_2_42 * (8 + t0_1_85);
t0_2_42 += (1 - rt0_2_42) * t0_1_84;

int rt0_2_43 = (input[i] > (695+offset0));
int t0_2_43 = rt0_2_43 * (8 + t0_1_87);
t0_2_43 += (1 - rt0_2_43) * t0_1_86;

int rt0_2_44 = (input[i] > (711+offset0));
int t0_2_44 = rt0_2_44 * (8 + t0_1_89);
t0_2_44 += (1 - rt0_2_44) * t0_1_88;

int rt0_2_45 = (input[i] > (727+offset0));
int t0_2_45 = rt0_2_45 * (8 + t0_1_91);
t0_2_45 += (1 - rt0_2_45) * t0_1_90;

int rt0_2_46 = (input[i] > (743+offset0));
int t0_2_46 = rt0_2_46 * (8 + t0_1_93);
t0_2_46 += (1 - rt0_2_46) * t0_1_92;

int rt0_2_47 = (input[i] > (759+offset0));
int t0_2_47 = rt0_2_47 * (8 + t0_1_95);
t0_2_47 += (1 - rt0_2_47) * t0_1_94;

int rt0_2_48 = (input[i] > (775+offset0));
int t0_2_48 = rt0_2_48 * (8 + t0_1_97);
t0_2_48 += (1 - rt0_2_48) * t0_1_96;

int rt0_2_49 = (input[i] > (791+offset0));
int t0_2_49 = rt0_2_49 * (8 + t0_1_99);
t0_2_49 += (1 - rt0_2_49) * t0_1_98;

int rt0_2_50 = (input[i] > (807+offset0));
int t0_2_50 = rt0_2_50 * (8 + t0_1_101);
t0_2_50 += (1 - rt0_2_50) * t0_1_100;

int rt0_2_51 = (input[i] > (823+offset0));
int t0_2_51 = rt0_2_51 * (8 + t0_1_103);
t0_2_51 += (1 - rt0_2_51) * t0_1_102;

int rt0_2_52 = (input[i] > (839+offset0));
int t0_2_52 = rt0_2_52 * (8 + t0_1_105);
t0_2_52 += (1 - rt0_2_52) * t0_1_104;

int rt0_2_53 = (input[i] > (855+offset0));
int t0_2_53 = rt0_2_53 * (8 + t0_1_107);
t0_2_53 += (1 - rt0_2_53) * t0_1_106;

int rt0_2_54 = (input[i] > (871+offset0));
int t0_2_54 = rt0_2_54 * (8 + t0_1_109);
t0_2_54 += (1 - rt0_2_54) * t0_1_108;

int rt0_2_55 = (input[i] > (887+offset0));
int t0_2_55 = rt0_2_55 * (8 + t0_1_111);
t0_2_55 += (1 - rt0_2_55) * t0_1_110;

int rt0_2_56 = (input[i] > (903+offset0));
int t0_2_56 = rt0_2_56 * (8 + t0_1_113);
t0_2_56 += (1 - rt0_2_56) * t0_1_112;

int rt0_2_57 = (input[i] > (919+offset0));
int t0_2_57 = rt0_2_57 * (8 + t0_1_115);
t0_2_57 += (1 - rt0_2_57) * t0_1_114;

int rt0_2_58 = (input[i] > (935+offset0));
int t0_2_58 = rt0_2_58 * (8 + t0_1_117);
t0_2_58 += (1 - rt0_2_58) * t0_1_116;

int rt0_2_59 = (input[i] > (951+offset0));
int t0_2_59 = rt0_2_59 * (8 + t0_1_119);
t0_2_59 += (1 - rt0_2_59) * t0_1_118;

int rt0_2_60 = (input[i] > (967+offset0));
int t0_2_60 = rt0_2_60 * (8 + t0_1_121);
t0_2_60 += (1 - rt0_2_60) * t0_1_120;

int rt0_2_61 = (input[i] > (983+offset0));
int t0_2_61 = rt0_2_61 * (8 + t0_1_123);
t0_2_61 += (1 - rt0_2_61) * t0_1_122;

int rt0_2_62 = (input[i] > (999+offset0));
int t0_2_62 = rt0_2_62 * (8 + t0_1_125);
t0_2_62 += (1 - rt0_2_62) * t0_1_124;

int rt0_2_63 = (input[i] > (1015+offset0));
int t0_2_63 = rt0_2_63 * (8 + t0_1_127);
t0_2_63 += (1 - rt0_2_63) * t0_1_126;

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

int rt0_3_8 = (input[i] > (271+offset0));
int t0_3_8 = rt0_3_8 * (16 + t0_2_17);
t0_3_8 += (1 - rt0_3_8) * t0_2_16;

int rt0_3_9 = (input[i] > (303+offset0));
int t0_3_9 = rt0_3_9 * (16 + t0_2_19);
t0_3_9 += (1 - rt0_3_9) * t0_2_18;

int rt0_3_10 = (input[i] > (335+offset0));
int t0_3_10 = rt0_3_10 * (16 + t0_2_21);
t0_3_10 += (1 - rt0_3_10) * t0_2_20;

int rt0_3_11 = (input[i] > (367+offset0));
int t0_3_11 = rt0_3_11 * (16 + t0_2_23);
t0_3_11 += (1 - rt0_3_11) * t0_2_22;

int rt0_3_12 = (input[i] > (399+offset0));
int t0_3_12 = rt0_3_12 * (16 + t0_2_25);
t0_3_12 += (1 - rt0_3_12) * t0_2_24;

int rt0_3_13 = (input[i] > (431+offset0));
int t0_3_13 = rt0_3_13 * (16 + t0_2_27);
t0_3_13 += (1 - rt0_3_13) * t0_2_26;

int rt0_3_14 = (input[i] > (463+offset0));
int t0_3_14 = rt0_3_14 * (16 + t0_2_29);
t0_3_14 += (1 - rt0_3_14) * t0_2_28;

int rt0_3_15 = (input[i] > (495+offset0));
int t0_3_15 = rt0_3_15 * (16 + t0_2_31);
t0_3_15 += (1 - rt0_3_15) * t0_2_30;

int rt0_3_16 = (input[i] > (527+offset0));
int t0_3_16 = rt0_3_16 * (16 + t0_2_33);
t0_3_16 += (1 - rt0_3_16) * t0_2_32;

int rt0_3_17 = (input[i] > (559+offset0));
int t0_3_17 = rt0_3_17 * (16 + t0_2_35);
t0_3_17 += (1 - rt0_3_17) * t0_2_34;

int rt0_3_18 = (input[i] > (591+offset0));
int t0_3_18 = rt0_3_18 * (16 + t0_2_37);
t0_3_18 += (1 - rt0_3_18) * t0_2_36;

int rt0_3_19 = (input[i] > (623+offset0));
int t0_3_19 = rt0_3_19 * (16 + t0_2_39);
t0_3_19 += (1 - rt0_3_19) * t0_2_38;

int rt0_3_20 = (input[i] > (655+offset0));
int t0_3_20 = rt0_3_20 * (16 + t0_2_41);
t0_3_20 += (1 - rt0_3_20) * t0_2_40;

int rt0_3_21 = (input[i] > (687+offset0));
int t0_3_21 = rt0_3_21 * (16 + t0_2_43);
t0_3_21 += (1 - rt0_3_21) * t0_2_42;

int rt0_3_22 = (input[i] > (719+offset0));
int t0_3_22 = rt0_3_22 * (16 + t0_2_45);
t0_3_22 += (1 - rt0_3_22) * t0_2_44;

int rt0_3_23 = (input[i] > (751+offset0));
int t0_3_23 = rt0_3_23 * (16 + t0_2_47);
t0_3_23 += (1 - rt0_3_23) * t0_2_46;

int rt0_3_24 = (input[i] > (783+offset0));
int t0_3_24 = rt0_3_24 * (16 + t0_2_49);
t0_3_24 += (1 - rt0_3_24) * t0_2_48;

int rt0_3_25 = (input[i] > (815+offset0));
int t0_3_25 = rt0_3_25 * (16 + t0_2_51);
t0_3_25 += (1 - rt0_3_25) * t0_2_50;

int rt0_3_26 = (input[i] > (847+offset0));
int t0_3_26 = rt0_3_26 * (16 + t0_2_53);
t0_3_26 += (1 - rt0_3_26) * t0_2_52;

int rt0_3_27 = (input[i] > (879+offset0));
int t0_3_27 = rt0_3_27 * (16 + t0_2_55);
t0_3_27 += (1 - rt0_3_27) * t0_2_54;

int rt0_3_28 = (input[i] > (911+offset0));
int t0_3_28 = rt0_3_28 * (16 + t0_2_57);
t0_3_28 += (1 - rt0_3_28) * t0_2_56;

int rt0_3_29 = (input[i] > (943+offset0));
int t0_3_29 = rt0_3_29 * (16 + t0_2_59);
t0_3_29 += (1 - rt0_3_29) * t0_2_58;

int rt0_3_30 = (input[i] > (975+offset0));
int t0_3_30 = rt0_3_30 * (16 + t0_2_61);
t0_3_30 += (1 - rt0_3_30) * t0_2_60;

int rt0_3_31 = (input[i] > (1007+offset0));
int t0_3_31 = rt0_3_31 * (16 + t0_2_63);
t0_3_31 += (1 - rt0_3_31) * t0_2_62;

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

int rt0_4_4 = (input[i] > (287+offset0));
int t0_4_4 = rt0_4_4 * (32 + t0_3_9);
t0_4_4 += (1 - rt0_4_4) * t0_3_8;

int rt0_4_5 = (input[i] > (351+offset0));
int t0_4_5 = rt0_4_5 * (32 + t0_3_11);
t0_4_5 += (1 - rt0_4_5) * t0_3_10;

int rt0_4_6 = (input[i] > (415+offset0));
int t0_4_6 = rt0_4_6 * (32 + t0_3_13);
t0_4_6 += (1 - rt0_4_6) * t0_3_12;

int rt0_4_7 = (input[i] > (479+offset0));
int t0_4_7 = rt0_4_7 * (32 + t0_3_15);
t0_4_7 += (1 - rt0_4_7) * t0_3_14;

int rt0_4_8 = (input[i] > (543+offset0));
int t0_4_8 = rt0_4_8 * (32 + t0_3_17);
t0_4_8 += (1 - rt0_4_8) * t0_3_16;

int rt0_4_9 = (input[i] > (607+offset0));
int t0_4_9 = rt0_4_9 * (32 + t0_3_19);
t0_4_9 += (1 - rt0_4_9) * t0_3_18;

int rt0_4_10 = (input[i] > (671+offset0));
int t0_4_10 = rt0_4_10 * (32 + t0_3_21);
t0_4_10 += (1 - rt0_4_10) * t0_3_20;

int rt0_4_11 = (input[i] > (735+offset0));
int t0_4_11 = rt0_4_11 * (32 + t0_3_23);
t0_4_11 += (1 - rt0_4_11) * t0_3_22;

int rt0_4_12 = (input[i] > (799+offset0));
int t0_4_12 = rt0_4_12 * (32 + t0_3_25);
t0_4_12 += (1 - rt0_4_12) * t0_3_24;

int rt0_4_13 = (input[i] > (863+offset0));
int t0_4_13 = rt0_4_13 * (32 + t0_3_27);
t0_4_13 += (1 - rt0_4_13) * t0_3_26;

int rt0_4_14 = (input[i] > (927+offset0));
int t0_4_14 = rt0_4_14 * (32 + t0_3_29);
t0_4_14 += (1 - rt0_4_14) * t0_3_28;

int rt0_4_15 = (input[i] > (991+offset0));
int t0_4_15 = rt0_4_15 * (32 + t0_3_31);
t0_4_15 += (1 - rt0_4_15) * t0_3_30;

int rt0_5_0 = (input[i] > (63+offset0));
int t0_5_0 = rt0_5_0 * (64 + t0_4_1);
t0_5_0 += (1 - rt0_5_0) * t0_4_0;

int rt0_5_1 = (input[i] > (191+offset0));
int t0_5_1 = rt0_5_1 * (64 + t0_4_3);
t0_5_1 += (1 - rt0_5_1) * t0_4_2;

int rt0_5_2 = (input[i] > (319+offset0));
int t0_5_2 = rt0_5_2 * (64 + t0_4_5);
t0_5_2 += (1 - rt0_5_2) * t0_4_4;

int rt0_5_3 = (input[i] > (447+offset0));
int t0_5_3 = rt0_5_3 * (64 + t0_4_7);
t0_5_3 += (1 - rt0_5_3) * t0_4_6;

int rt0_5_4 = (input[i] > (575+offset0));
int t0_5_4 = rt0_5_4 * (64 + t0_4_9);
t0_5_4 += (1 - rt0_5_4) * t0_4_8;

int rt0_5_5 = (input[i] > (703+offset0));
int t0_5_5 = rt0_5_5 * (64 + t0_4_11);
t0_5_5 += (1 - rt0_5_5) * t0_4_10;

int rt0_5_6 = (input[i] > (831+offset0));
int t0_5_6 = rt0_5_6 * (64 + t0_4_13);
t0_5_6 += (1 - rt0_5_6) * t0_4_12;

int rt0_5_7 = (input[i] > (959+offset0));
int t0_5_7 = rt0_5_7 * (64 + t0_4_15);
t0_5_7 += (1 - rt0_5_7) * t0_4_14;

int rt0_6_0 = (input[i] > (127+offset0));
int t0_6_0 = rt0_6_0 * (128 + t0_5_1);
t0_6_0 += (1 - rt0_6_0) * t0_5_0;

int rt0_6_1 = (input[i] > (383+offset0));
int t0_6_1 = rt0_6_1 * (128 + t0_5_3);
t0_6_1 += (1 - rt0_6_1) * t0_5_2;

int rt0_6_2 = (input[i] > (639+offset0));
int t0_6_2 = rt0_6_2 * (128 + t0_5_5);
t0_6_2 += (1 - rt0_6_2) * t0_5_4;

int rt0_6_3 = (input[i] > (895+offset0));
int t0_6_3 = rt0_6_3 * (128 + t0_5_7);
t0_6_3 += (1 - rt0_6_3) * t0_5_6;

int rt0_7_0 = (input[i] > (255+offset0));
int t0_7_0 = rt0_7_0 * (256 + t0_6_1);
t0_7_0 += (1 - rt0_7_0) * t0_6_0;

int rt0_7_1 = (input[i] > (767+offset0));
int t0_7_1 = rt0_7_1 * (256 + t0_6_3);
t0_7_1 += (1 - rt0_7_1) * t0_6_2;

int rt0_8_0 = (input[i] > (511+offset0));
int t0_8_0 = rt0_8_0 * (512 + t0_7_1);
t0_8_0 += (1 - rt0_8_0) * t0_7_0;

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

int rt1_0_64 = (input[i] > (257+offset1));
int t1_0_64 = rt1_0_64 * (2 + (input[i] > (258+offset1)));
t1_0_64 += (1 - rt1_0_64) * (input[i] > (256+offset1));

int rt1_0_65 = (input[i] > (261+offset1));
int t1_0_65 = rt1_0_65 * (2 + (input[i] > (262+offset1)));
t1_0_65 += (1 - rt1_0_65) * (input[i] > (260+offset1));

int rt1_0_66 = (input[i] > (265+offset1));
int t1_0_66 = rt1_0_66 * (2 + (input[i] > (266+offset1)));
t1_0_66 += (1 - rt1_0_66) * (input[i] > (264+offset1));

int rt1_0_67 = (input[i] > (269+offset1));
int t1_0_67 = rt1_0_67 * (2 + (input[i] > (270+offset1)));
t1_0_67 += (1 - rt1_0_67) * (input[i] > (268+offset1));

int rt1_0_68 = (input[i] > (273+offset1));
int t1_0_68 = rt1_0_68 * (2 + (input[i] > (274+offset1)));
t1_0_68 += (1 - rt1_0_68) * (input[i] > (272+offset1));

int rt1_0_69 = (input[i] > (277+offset1));
int t1_0_69 = rt1_0_69 * (2 + (input[i] > (278+offset1)));
t1_0_69 += (1 - rt1_0_69) * (input[i] > (276+offset1));

int rt1_0_70 = (input[i] > (281+offset1));
int t1_0_70 = rt1_0_70 * (2 + (input[i] > (282+offset1)));
t1_0_70 += (1 - rt1_0_70) * (input[i] > (280+offset1));

int rt1_0_71 = (input[i] > (285+offset1));
int t1_0_71 = rt1_0_71 * (2 + (input[i] > (286+offset1)));
t1_0_71 += (1 - rt1_0_71) * (input[i] > (284+offset1));

int rt1_0_72 = (input[i] > (289+offset1));
int t1_0_72 = rt1_0_72 * (2 + (input[i] > (290+offset1)));
t1_0_72 += (1 - rt1_0_72) * (input[i] > (288+offset1));

int rt1_0_73 = (input[i] > (293+offset1));
int t1_0_73 = rt1_0_73 * (2 + (input[i] > (294+offset1)));
t1_0_73 += (1 - rt1_0_73) * (input[i] > (292+offset1));

int rt1_0_74 = (input[i] > (297+offset1));
int t1_0_74 = rt1_0_74 * (2 + (input[i] > (298+offset1)));
t1_0_74 += (1 - rt1_0_74) * (input[i] > (296+offset1));

int rt1_0_75 = (input[i] > (301+offset1));
int t1_0_75 = rt1_0_75 * (2 + (input[i] > (302+offset1)));
t1_0_75 += (1 - rt1_0_75) * (input[i] > (300+offset1));

int rt1_0_76 = (input[i] > (305+offset1));
int t1_0_76 = rt1_0_76 * (2 + (input[i] > (306+offset1)));
t1_0_76 += (1 - rt1_0_76) * (input[i] > (304+offset1));

int rt1_0_77 = (input[i] > (309+offset1));
int t1_0_77 = rt1_0_77 * (2 + (input[i] > (310+offset1)));
t1_0_77 += (1 - rt1_0_77) * (input[i] > (308+offset1));

int rt1_0_78 = (input[i] > (313+offset1));
int t1_0_78 = rt1_0_78 * (2 + (input[i] > (314+offset1)));
t1_0_78 += (1 - rt1_0_78) * (input[i] > (312+offset1));

int rt1_0_79 = (input[i] > (317+offset1));
int t1_0_79 = rt1_0_79 * (2 + (input[i] > (318+offset1)));
t1_0_79 += (1 - rt1_0_79) * (input[i] > (316+offset1));

int rt1_0_80 = (input[i] > (321+offset1));
int t1_0_80 = rt1_0_80 * (2 + (input[i] > (322+offset1)));
t1_0_80 += (1 - rt1_0_80) * (input[i] > (320+offset1));

int rt1_0_81 = (input[i] > (325+offset1));
int t1_0_81 = rt1_0_81 * (2 + (input[i] > (326+offset1)));
t1_0_81 += (1 - rt1_0_81) * (input[i] > (324+offset1));

int rt1_0_82 = (input[i] > (329+offset1));
int t1_0_82 = rt1_0_82 * (2 + (input[i] > (330+offset1)));
t1_0_82 += (1 - rt1_0_82) * (input[i] > (328+offset1));

int rt1_0_83 = (input[i] > (333+offset1));
int t1_0_83 = rt1_0_83 * (2 + (input[i] > (334+offset1)));
t1_0_83 += (1 - rt1_0_83) * (input[i] > (332+offset1));

int rt1_0_84 = (input[i] > (337+offset1));
int t1_0_84 = rt1_0_84 * (2 + (input[i] > (338+offset1)));
t1_0_84 += (1 - rt1_0_84) * (input[i] > (336+offset1));

int rt1_0_85 = (input[i] > (341+offset1));
int t1_0_85 = rt1_0_85 * (2 + (input[i] > (342+offset1)));
t1_0_85 += (1 - rt1_0_85) * (input[i] > (340+offset1));

int rt1_0_86 = (input[i] > (345+offset1));
int t1_0_86 = rt1_0_86 * (2 + (input[i] > (346+offset1)));
t1_0_86 += (1 - rt1_0_86) * (input[i] > (344+offset1));

int rt1_0_87 = (input[i] > (349+offset1));
int t1_0_87 = rt1_0_87 * (2 + (input[i] > (350+offset1)));
t1_0_87 += (1 - rt1_0_87) * (input[i] > (348+offset1));

int rt1_0_88 = (input[i] > (353+offset1));
int t1_0_88 = rt1_0_88 * (2 + (input[i] > (354+offset1)));
t1_0_88 += (1 - rt1_0_88) * (input[i] > (352+offset1));

int rt1_0_89 = (input[i] > (357+offset1));
int t1_0_89 = rt1_0_89 * (2 + (input[i] > (358+offset1)));
t1_0_89 += (1 - rt1_0_89) * (input[i] > (356+offset1));

int rt1_0_90 = (input[i] > (361+offset1));
int t1_0_90 = rt1_0_90 * (2 + (input[i] > (362+offset1)));
t1_0_90 += (1 - rt1_0_90) * (input[i] > (360+offset1));

int rt1_0_91 = (input[i] > (365+offset1));
int t1_0_91 = rt1_0_91 * (2 + (input[i] > (366+offset1)));
t1_0_91 += (1 - rt1_0_91) * (input[i] > (364+offset1));

int rt1_0_92 = (input[i] > (369+offset1));
int t1_0_92 = rt1_0_92 * (2 + (input[i] > (370+offset1)));
t1_0_92 += (1 - rt1_0_92) * (input[i] > (368+offset1));

int rt1_0_93 = (input[i] > (373+offset1));
int t1_0_93 = rt1_0_93 * (2 + (input[i] > (374+offset1)));
t1_0_93 += (1 - rt1_0_93) * (input[i] > (372+offset1));

int rt1_0_94 = (input[i] > (377+offset1));
int t1_0_94 = rt1_0_94 * (2 + (input[i] > (378+offset1)));
t1_0_94 += (1 - rt1_0_94) * (input[i] > (376+offset1));

int rt1_0_95 = (input[i] > (381+offset1));
int t1_0_95 = rt1_0_95 * (2 + (input[i] > (382+offset1)));
t1_0_95 += (1 - rt1_0_95) * (input[i] > (380+offset1));

int rt1_0_96 = (input[i] > (385+offset1));
int t1_0_96 = rt1_0_96 * (2 + (input[i] > (386+offset1)));
t1_0_96 += (1 - rt1_0_96) * (input[i] > (384+offset1));

int rt1_0_97 = (input[i] > (389+offset1));
int t1_0_97 = rt1_0_97 * (2 + (input[i] > (390+offset1)));
t1_0_97 += (1 - rt1_0_97) * (input[i] > (388+offset1));

int rt1_0_98 = (input[i] > (393+offset1));
int t1_0_98 = rt1_0_98 * (2 + (input[i] > (394+offset1)));
t1_0_98 += (1 - rt1_0_98) * (input[i] > (392+offset1));

int rt1_0_99 = (input[i] > (397+offset1));
int t1_0_99 = rt1_0_99 * (2 + (input[i] > (398+offset1)));
t1_0_99 += (1 - rt1_0_99) * (input[i] > (396+offset1));

int rt1_0_100 = (input[i] > (401+offset1));
int t1_0_100 = rt1_0_100 * (2 + (input[i] > (402+offset1)));
t1_0_100 += (1 - rt1_0_100) * (input[i] > (400+offset1));

int rt1_0_101 = (input[i] > (405+offset1));
int t1_0_101 = rt1_0_101 * (2 + (input[i] > (406+offset1)));
t1_0_101 += (1 - rt1_0_101) * (input[i] > (404+offset1));

int rt1_0_102 = (input[i] > (409+offset1));
int t1_0_102 = rt1_0_102 * (2 + (input[i] > (410+offset1)));
t1_0_102 += (1 - rt1_0_102) * (input[i] > (408+offset1));

int rt1_0_103 = (input[i] > (413+offset1));
int t1_0_103 = rt1_0_103 * (2 + (input[i] > (414+offset1)));
t1_0_103 += (1 - rt1_0_103) * (input[i] > (412+offset1));

int rt1_0_104 = (input[i] > (417+offset1));
int t1_0_104 = rt1_0_104 * (2 + (input[i] > (418+offset1)));
t1_0_104 += (1 - rt1_0_104) * (input[i] > (416+offset1));

int rt1_0_105 = (input[i] > (421+offset1));
int t1_0_105 = rt1_0_105 * (2 + (input[i] > (422+offset1)));
t1_0_105 += (1 - rt1_0_105) * (input[i] > (420+offset1));

int rt1_0_106 = (input[i] > (425+offset1));
int t1_0_106 = rt1_0_106 * (2 + (input[i] > (426+offset1)));
t1_0_106 += (1 - rt1_0_106) * (input[i] > (424+offset1));

int rt1_0_107 = (input[i] > (429+offset1));
int t1_0_107 = rt1_0_107 * (2 + (input[i] > (430+offset1)));
t1_0_107 += (1 - rt1_0_107) * (input[i] > (428+offset1));

int rt1_0_108 = (input[i] > (433+offset1));
int t1_0_108 = rt1_0_108 * (2 + (input[i] > (434+offset1)));
t1_0_108 += (1 - rt1_0_108) * (input[i] > (432+offset1));

int rt1_0_109 = (input[i] > (437+offset1));
int t1_0_109 = rt1_0_109 * (2 + (input[i] > (438+offset1)));
t1_0_109 += (1 - rt1_0_109) * (input[i] > (436+offset1));

int rt1_0_110 = (input[i] > (441+offset1));
int t1_0_110 = rt1_0_110 * (2 + (input[i] > (442+offset1)));
t1_0_110 += (1 - rt1_0_110) * (input[i] > (440+offset1));

int rt1_0_111 = (input[i] > (445+offset1));
int t1_0_111 = rt1_0_111 * (2 + (input[i] > (446+offset1)));
t1_0_111 += (1 - rt1_0_111) * (input[i] > (444+offset1));

int rt1_0_112 = (input[i] > (449+offset1));
int t1_0_112 = rt1_0_112 * (2 + (input[i] > (450+offset1)));
t1_0_112 += (1 - rt1_0_112) * (input[i] > (448+offset1));

int rt1_0_113 = (input[i] > (453+offset1));
int t1_0_113 = rt1_0_113 * (2 + (input[i] > (454+offset1)));
t1_0_113 += (1 - rt1_0_113) * (input[i] > (452+offset1));

int rt1_0_114 = (input[i] > (457+offset1));
int t1_0_114 = rt1_0_114 * (2 + (input[i] > (458+offset1)));
t1_0_114 += (1 - rt1_0_114) * (input[i] > (456+offset1));

int rt1_0_115 = (input[i] > (461+offset1));
int t1_0_115 = rt1_0_115 * (2 + (input[i] > (462+offset1)));
t1_0_115 += (1 - rt1_0_115) * (input[i] > (460+offset1));

int rt1_0_116 = (input[i] > (465+offset1));
int t1_0_116 = rt1_0_116 * (2 + (input[i] > (466+offset1)));
t1_0_116 += (1 - rt1_0_116) * (input[i] > (464+offset1));

int rt1_0_117 = (input[i] > (469+offset1));
int t1_0_117 = rt1_0_117 * (2 + (input[i] > (470+offset1)));
t1_0_117 += (1 - rt1_0_117) * (input[i] > (468+offset1));

int rt1_0_118 = (input[i] > (473+offset1));
int t1_0_118 = rt1_0_118 * (2 + (input[i] > (474+offset1)));
t1_0_118 += (1 - rt1_0_118) * (input[i] > (472+offset1));

int rt1_0_119 = (input[i] > (477+offset1));
int t1_0_119 = rt1_0_119 * (2 + (input[i] > (478+offset1)));
t1_0_119 += (1 - rt1_0_119) * (input[i] > (476+offset1));

int rt1_0_120 = (input[i] > (481+offset1));
int t1_0_120 = rt1_0_120 * (2 + (input[i] > (482+offset1)));
t1_0_120 += (1 - rt1_0_120) * (input[i] > (480+offset1));

int rt1_0_121 = (input[i] > (485+offset1));
int t1_0_121 = rt1_0_121 * (2 + (input[i] > (486+offset1)));
t1_0_121 += (1 - rt1_0_121) * (input[i] > (484+offset1));

int rt1_0_122 = (input[i] > (489+offset1));
int t1_0_122 = rt1_0_122 * (2 + (input[i] > (490+offset1)));
t1_0_122 += (1 - rt1_0_122) * (input[i] > (488+offset1));

int rt1_0_123 = (input[i] > (493+offset1));
int t1_0_123 = rt1_0_123 * (2 + (input[i] > (494+offset1)));
t1_0_123 += (1 - rt1_0_123) * (input[i] > (492+offset1));

int rt1_0_124 = (input[i] > (497+offset1));
int t1_0_124 = rt1_0_124 * (2 + (input[i] > (498+offset1)));
t1_0_124 += (1 - rt1_0_124) * (input[i] > (496+offset1));

int rt1_0_125 = (input[i] > (501+offset1));
int t1_0_125 = rt1_0_125 * (2 + (input[i] > (502+offset1)));
t1_0_125 += (1 - rt1_0_125) * (input[i] > (500+offset1));

int rt1_0_126 = (input[i] > (505+offset1));
int t1_0_126 = rt1_0_126 * (2 + (input[i] > (506+offset1)));
t1_0_126 += (1 - rt1_0_126) * (input[i] > (504+offset1));

int rt1_0_127 = (input[i] > (509+offset1));
int t1_0_127 = rt1_0_127 * (2 + (input[i] > (510+offset1)));
t1_0_127 += (1 - rt1_0_127) * (input[i] > (508+offset1));

int rt1_0_128 = (input[i] > (513+offset1));
int t1_0_128 = rt1_0_128 * (2 + (input[i] > (514+offset1)));
t1_0_128 += (1 - rt1_0_128) * (input[i] > (512+offset1));

int rt1_0_129 = (input[i] > (517+offset1));
int t1_0_129 = rt1_0_129 * (2 + (input[i] > (518+offset1)));
t1_0_129 += (1 - rt1_0_129) * (input[i] > (516+offset1));

int rt1_0_130 = (input[i] > (521+offset1));
int t1_0_130 = rt1_0_130 * (2 + (input[i] > (522+offset1)));
t1_0_130 += (1 - rt1_0_130) * (input[i] > (520+offset1));

int rt1_0_131 = (input[i] > (525+offset1));
int t1_0_131 = rt1_0_131 * (2 + (input[i] > (526+offset1)));
t1_0_131 += (1 - rt1_0_131) * (input[i] > (524+offset1));

int rt1_0_132 = (input[i] > (529+offset1));
int t1_0_132 = rt1_0_132 * (2 + (input[i] > (530+offset1)));
t1_0_132 += (1 - rt1_0_132) * (input[i] > (528+offset1));

int rt1_0_133 = (input[i] > (533+offset1));
int t1_0_133 = rt1_0_133 * (2 + (input[i] > (534+offset1)));
t1_0_133 += (1 - rt1_0_133) * (input[i] > (532+offset1));

int rt1_0_134 = (input[i] > (537+offset1));
int t1_0_134 = rt1_0_134 * (2 + (input[i] > (538+offset1)));
t1_0_134 += (1 - rt1_0_134) * (input[i] > (536+offset1));

int rt1_0_135 = (input[i] > (541+offset1));
int t1_0_135 = rt1_0_135 * (2 + (input[i] > (542+offset1)));
t1_0_135 += (1 - rt1_0_135) * (input[i] > (540+offset1));

int rt1_0_136 = (input[i] > (545+offset1));
int t1_0_136 = rt1_0_136 * (2 + (input[i] > (546+offset1)));
t1_0_136 += (1 - rt1_0_136) * (input[i] > (544+offset1));

int rt1_0_137 = (input[i] > (549+offset1));
int t1_0_137 = rt1_0_137 * (2 + (input[i] > (550+offset1)));
t1_0_137 += (1 - rt1_0_137) * (input[i] > (548+offset1));

int rt1_0_138 = (input[i] > (553+offset1));
int t1_0_138 = rt1_0_138 * (2 + (input[i] > (554+offset1)));
t1_0_138 += (1 - rt1_0_138) * (input[i] > (552+offset1));

int rt1_0_139 = (input[i] > (557+offset1));
int t1_0_139 = rt1_0_139 * (2 + (input[i] > (558+offset1)));
t1_0_139 += (1 - rt1_0_139) * (input[i] > (556+offset1));

int rt1_0_140 = (input[i] > (561+offset1));
int t1_0_140 = rt1_0_140 * (2 + (input[i] > (562+offset1)));
t1_0_140 += (1 - rt1_0_140) * (input[i] > (560+offset1));

int rt1_0_141 = (input[i] > (565+offset1));
int t1_0_141 = rt1_0_141 * (2 + (input[i] > (566+offset1)));
t1_0_141 += (1 - rt1_0_141) * (input[i] > (564+offset1));

int rt1_0_142 = (input[i] > (569+offset1));
int t1_0_142 = rt1_0_142 * (2 + (input[i] > (570+offset1)));
t1_0_142 += (1 - rt1_0_142) * (input[i] > (568+offset1));

int rt1_0_143 = (input[i] > (573+offset1));
int t1_0_143 = rt1_0_143 * (2 + (input[i] > (574+offset1)));
t1_0_143 += (1 - rt1_0_143) * (input[i] > (572+offset1));

int rt1_0_144 = (input[i] > (577+offset1));
int t1_0_144 = rt1_0_144 * (2 + (input[i] > (578+offset1)));
t1_0_144 += (1 - rt1_0_144) * (input[i] > (576+offset1));

int rt1_0_145 = (input[i] > (581+offset1));
int t1_0_145 = rt1_0_145 * (2 + (input[i] > (582+offset1)));
t1_0_145 += (1 - rt1_0_145) * (input[i] > (580+offset1));

int rt1_0_146 = (input[i] > (585+offset1));
int t1_0_146 = rt1_0_146 * (2 + (input[i] > (586+offset1)));
t1_0_146 += (1 - rt1_0_146) * (input[i] > (584+offset1));

int rt1_0_147 = (input[i] > (589+offset1));
int t1_0_147 = rt1_0_147 * (2 + (input[i] > (590+offset1)));
t1_0_147 += (1 - rt1_0_147) * (input[i] > (588+offset1));

int rt1_0_148 = (input[i] > (593+offset1));
int t1_0_148 = rt1_0_148 * (2 + (input[i] > (594+offset1)));
t1_0_148 += (1 - rt1_0_148) * (input[i] > (592+offset1));

int rt1_0_149 = (input[i] > (597+offset1));
int t1_0_149 = rt1_0_149 * (2 + (input[i] > (598+offset1)));
t1_0_149 += (1 - rt1_0_149) * (input[i] > (596+offset1));

int rt1_0_150 = (input[i] > (601+offset1));
int t1_0_150 = rt1_0_150 * (2 + (input[i] > (602+offset1)));
t1_0_150 += (1 - rt1_0_150) * (input[i] > (600+offset1));

int rt1_0_151 = (input[i] > (605+offset1));
int t1_0_151 = rt1_0_151 * (2 + (input[i] > (606+offset1)));
t1_0_151 += (1 - rt1_0_151) * (input[i] > (604+offset1));

int rt1_0_152 = (input[i] > (609+offset1));
int t1_0_152 = rt1_0_152 * (2 + (input[i] > (610+offset1)));
t1_0_152 += (1 - rt1_0_152) * (input[i] > (608+offset1));

int rt1_0_153 = (input[i] > (613+offset1));
int t1_0_153 = rt1_0_153 * (2 + (input[i] > (614+offset1)));
t1_0_153 += (1 - rt1_0_153) * (input[i] > (612+offset1));

int rt1_0_154 = (input[i] > (617+offset1));
int t1_0_154 = rt1_0_154 * (2 + (input[i] > (618+offset1)));
t1_0_154 += (1 - rt1_0_154) * (input[i] > (616+offset1));

int rt1_0_155 = (input[i] > (621+offset1));
int t1_0_155 = rt1_0_155 * (2 + (input[i] > (622+offset1)));
t1_0_155 += (1 - rt1_0_155) * (input[i] > (620+offset1));

int rt1_0_156 = (input[i] > (625+offset1));
int t1_0_156 = rt1_0_156 * (2 + (input[i] > (626+offset1)));
t1_0_156 += (1 - rt1_0_156) * (input[i] > (624+offset1));

int rt1_0_157 = (input[i] > (629+offset1));
int t1_0_157 = rt1_0_157 * (2 + (input[i] > (630+offset1)));
t1_0_157 += (1 - rt1_0_157) * (input[i] > (628+offset1));

int rt1_0_158 = (input[i] > (633+offset1));
int t1_0_158 = rt1_0_158 * (2 + (input[i] > (634+offset1)));
t1_0_158 += (1 - rt1_0_158) * (input[i] > (632+offset1));

int rt1_0_159 = (input[i] > (637+offset1));
int t1_0_159 = rt1_0_159 * (2 + (input[i] > (638+offset1)));
t1_0_159 += (1 - rt1_0_159) * (input[i] > (636+offset1));

int rt1_0_160 = (input[i] > (641+offset1));
int t1_0_160 = rt1_0_160 * (2 + (input[i] > (642+offset1)));
t1_0_160 += (1 - rt1_0_160) * (input[i] > (640+offset1));

int rt1_0_161 = (input[i] > (645+offset1));
int t1_0_161 = rt1_0_161 * (2 + (input[i] > (646+offset1)));
t1_0_161 += (1 - rt1_0_161) * (input[i] > (644+offset1));

int rt1_0_162 = (input[i] > (649+offset1));
int t1_0_162 = rt1_0_162 * (2 + (input[i] > (650+offset1)));
t1_0_162 += (1 - rt1_0_162) * (input[i] > (648+offset1));

int rt1_0_163 = (input[i] > (653+offset1));
int t1_0_163 = rt1_0_163 * (2 + (input[i] > (654+offset1)));
t1_0_163 += (1 - rt1_0_163) * (input[i] > (652+offset1));

int rt1_0_164 = (input[i] > (657+offset1));
int t1_0_164 = rt1_0_164 * (2 + (input[i] > (658+offset1)));
t1_0_164 += (1 - rt1_0_164) * (input[i] > (656+offset1));

int rt1_0_165 = (input[i] > (661+offset1));
int t1_0_165 = rt1_0_165 * (2 + (input[i] > (662+offset1)));
t1_0_165 += (1 - rt1_0_165) * (input[i] > (660+offset1));

int rt1_0_166 = (input[i] > (665+offset1));
int t1_0_166 = rt1_0_166 * (2 + (input[i] > (666+offset1)));
t1_0_166 += (1 - rt1_0_166) * (input[i] > (664+offset1));

int rt1_0_167 = (input[i] > (669+offset1));
int t1_0_167 = rt1_0_167 * (2 + (input[i] > (670+offset1)));
t1_0_167 += (1 - rt1_0_167) * (input[i] > (668+offset1));

int rt1_0_168 = (input[i] > (673+offset1));
int t1_0_168 = rt1_0_168 * (2 + (input[i] > (674+offset1)));
t1_0_168 += (1 - rt1_0_168) * (input[i] > (672+offset1));

int rt1_0_169 = (input[i] > (677+offset1));
int t1_0_169 = rt1_0_169 * (2 + (input[i] > (678+offset1)));
t1_0_169 += (1 - rt1_0_169) * (input[i] > (676+offset1));

int rt1_0_170 = (input[i] > (681+offset1));
int t1_0_170 = rt1_0_170 * (2 + (input[i] > (682+offset1)));
t1_0_170 += (1 - rt1_0_170) * (input[i] > (680+offset1));

int rt1_0_171 = (input[i] > (685+offset1));
int t1_0_171 = rt1_0_171 * (2 + (input[i] > (686+offset1)));
t1_0_171 += (1 - rt1_0_171) * (input[i] > (684+offset1));

int rt1_0_172 = (input[i] > (689+offset1));
int t1_0_172 = rt1_0_172 * (2 + (input[i] > (690+offset1)));
t1_0_172 += (1 - rt1_0_172) * (input[i] > (688+offset1));

int rt1_0_173 = (input[i] > (693+offset1));
int t1_0_173 = rt1_0_173 * (2 + (input[i] > (694+offset1)));
t1_0_173 += (1 - rt1_0_173) * (input[i] > (692+offset1));

int rt1_0_174 = (input[i] > (697+offset1));
int t1_0_174 = rt1_0_174 * (2 + (input[i] > (698+offset1)));
t1_0_174 += (1 - rt1_0_174) * (input[i] > (696+offset1));

int rt1_0_175 = (input[i] > (701+offset1));
int t1_0_175 = rt1_0_175 * (2 + (input[i] > (702+offset1)));
t1_0_175 += (1 - rt1_0_175) * (input[i] > (700+offset1));

int rt1_0_176 = (input[i] > (705+offset1));
int t1_0_176 = rt1_0_176 * (2 + (input[i] > (706+offset1)));
t1_0_176 += (1 - rt1_0_176) * (input[i] > (704+offset1));

int rt1_0_177 = (input[i] > (709+offset1));
int t1_0_177 = rt1_0_177 * (2 + (input[i] > (710+offset1)));
t1_0_177 += (1 - rt1_0_177) * (input[i] > (708+offset1));

int rt1_0_178 = (input[i] > (713+offset1));
int t1_0_178 = rt1_0_178 * (2 + (input[i] > (714+offset1)));
t1_0_178 += (1 - rt1_0_178) * (input[i] > (712+offset1));

int rt1_0_179 = (input[i] > (717+offset1));
int t1_0_179 = rt1_0_179 * (2 + (input[i] > (718+offset1)));
t1_0_179 += (1 - rt1_0_179) * (input[i] > (716+offset1));

int rt1_0_180 = (input[i] > (721+offset1));
int t1_0_180 = rt1_0_180 * (2 + (input[i] > (722+offset1)));
t1_0_180 += (1 - rt1_0_180) * (input[i] > (720+offset1));

int rt1_0_181 = (input[i] > (725+offset1));
int t1_0_181 = rt1_0_181 * (2 + (input[i] > (726+offset1)));
t1_0_181 += (1 - rt1_0_181) * (input[i] > (724+offset1));

int rt1_0_182 = (input[i] > (729+offset1));
int t1_0_182 = rt1_0_182 * (2 + (input[i] > (730+offset1)));
t1_0_182 += (1 - rt1_0_182) * (input[i] > (728+offset1));

int rt1_0_183 = (input[i] > (733+offset1));
int t1_0_183 = rt1_0_183 * (2 + (input[i] > (734+offset1)));
t1_0_183 += (1 - rt1_0_183) * (input[i] > (732+offset1));

int rt1_0_184 = (input[i] > (737+offset1));
int t1_0_184 = rt1_0_184 * (2 + (input[i] > (738+offset1)));
t1_0_184 += (1 - rt1_0_184) * (input[i] > (736+offset1));

int rt1_0_185 = (input[i] > (741+offset1));
int t1_0_185 = rt1_0_185 * (2 + (input[i] > (742+offset1)));
t1_0_185 += (1 - rt1_0_185) * (input[i] > (740+offset1));

int rt1_0_186 = (input[i] > (745+offset1));
int t1_0_186 = rt1_0_186 * (2 + (input[i] > (746+offset1)));
t1_0_186 += (1 - rt1_0_186) * (input[i] > (744+offset1));

int rt1_0_187 = (input[i] > (749+offset1));
int t1_0_187 = rt1_0_187 * (2 + (input[i] > (750+offset1)));
t1_0_187 += (1 - rt1_0_187) * (input[i] > (748+offset1));

int rt1_0_188 = (input[i] > (753+offset1));
int t1_0_188 = rt1_0_188 * (2 + (input[i] > (754+offset1)));
t1_0_188 += (1 - rt1_0_188) * (input[i] > (752+offset1));

int rt1_0_189 = (input[i] > (757+offset1));
int t1_0_189 = rt1_0_189 * (2 + (input[i] > (758+offset1)));
t1_0_189 += (1 - rt1_0_189) * (input[i] > (756+offset1));

int rt1_0_190 = (input[i] > (761+offset1));
int t1_0_190 = rt1_0_190 * (2 + (input[i] > (762+offset1)));
t1_0_190 += (1 - rt1_0_190) * (input[i] > (760+offset1));

int rt1_0_191 = (input[i] > (765+offset1));
int t1_0_191 = rt1_0_191 * (2 + (input[i] > (766+offset1)));
t1_0_191 += (1 - rt1_0_191) * (input[i] > (764+offset1));

int rt1_0_192 = (input[i] > (769+offset1));
int t1_0_192 = rt1_0_192 * (2 + (input[i] > (770+offset1)));
t1_0_192 += (1 - rt1_0_192) * (input[i] > (768+offset1));

int rt1_0_193 = (input[i] > (773+offset1));
int t1_0_193 = rt1_0_193 * (2 + (input[i] > (774+offset1)));
t1_0_193 += (1 - rt1_0_193) * (input[i] > (772+offset1));

int rt1_0_194 = (input[i] > (777+offset1));
int t1_0_194 = rt1_0_194 * (2 + (input[i] > (778+offset1)));
t1_0_194 += (1 - rt1_0_194) * (input[i] > (776+offset1));

int rt1_0_195 = (input[i] > (781+offset1));
int t1_0_195 = rt1_0_195 * (2 + (input[i] > (782+offset1)));
t1_0_195 += (1 - rt1_0_195) * (input[i] > (780+offset1));

int rt1_0_196 = (input[i] > (785+offset1));
int t1_0_196 = rt1_0_196 * (2 + (input[i] > (786+offset1)));
t1_0_196 += (1 - rt1_0_196) * (input[i] > (784+offset1));

int rt1_0_197 = (input[i] > (789+offset1));
int t1_0_197 = rt1_0_197 * (2 + (input[i] > (790+offset1)));
t1_0_197 += (1 - rt1_0_197) * (input[i] > (788+offset1));

int rt1_0_198 = (input[i] > (793+offset1));
int t1_0_198 = rt1_0_198 * (2 + (input[i] > (794+offset1)));
t1_0_198 += (1 - rt1_0_198) * (input[i] > (792+offset1));

int rt1_0_199 = (input[i] > (797+offset1));
int t1_0_199 = rt1_0_199 * (2 + (input[i] > (798+offset1)));
t1_0_199 += (1 - rt1_0_199) * (input[i] > (796+offset1));

int rt1_0_200 = (input[i] > (801+offset1));
int t1_0_200 = rt1_0_200 * (2 + (input[i] > (802+offset1)));
t1_0_200 += (1 - rt1_0_200) * (input[i] > (800+offset1));

int rt1_0_201 = (input[i] > (805+offset1));
int t1_0_201 = rt1_0_201 * (2 + (input[i] > (806+offset1)));
t1_0_201 += (1 - rt1_0_201) * (input[i] > (804+offset1));

int rt1_0_202 = (input[i] > (809+offset1));
int t1_0_202 = rt1_0_202 * (2 + (input[i] > (810+offset1)));
t1_0_202 += (1 - rt1_0_202) * (input[i] > (808+offset1));

int rt1_0_203 = (input[i] > (813+offset1));
int t1_0_203 = rt1_0_203 * (2 + (input[i] > (814+offset1)));
t1_0_203 += (1 - rt1_0_203) * (input[i] > (812+offset1));

int rt1_0_204 = (input[i] > (817+offset1));
int t1_0_204 = rt1_0_204 * (2 + (input[i] > (818+offset1)));
t1_0_204 += (1 - rt1_0_204) * (input[i] > (816+offset1));

int rt1_0_205 = (input[i] > (821+offset1));
int t1_0_205 = rt1_0_205 * (2 + (input[i] > (822+offset1)));
t1_0_205 += (1 - rt1_0_205) * (input[i] > (820+offset1));

int rt1_0_206 = (input[i] > (825+offset1));
int t1_0_206 = rt1_0_206 * (2 + (input[i] > (826+offset1)));
t1_0_206 += (1 - rt1_0_206) * (input[i] > (824+offset1));

int rt1_0_207 = (input[i] > (829+offset1));
int t1_0_207 = rt1_0_207 * (2 + (input[i] > (830+offset1)));
t1_0_207 += (1 - rt1_0_207) * (input[i] > (828+offset1));

int rt1_0_208 = (input[i] > (833+offset1));
int t1_0_208 = rt1_0_208 * (2 + (input[i] > (834+offset1)));
t1_0_208 += (1 - rt1_0_208) * (input[i] > (832+offset1));

int rt1_0_209 = (input[i] > (837+offset1));
int t1_0_209 = rt1_0_209 * (2 + (input[i] > (838+offset1)));
t1_0_209 += (1 - rt1_0_209) * (input[i] > (836+offset1));

int rt1_0_210 = (input[i] > (841+offset1));
int t1_0_210 = rt1_0_210 * (2 + (input[i] > (842+offset1)));
t1_0_210 += (1 - rt1_0_210) * (input[i] > (840+offset1));

int rt1_0_211 = (input[i] > (845+offset1));
int t1_0_211 = rt1_0_211 * (2 + (input[i] > (846+offset1)));
t1_0_211 += (1 - rt1_0_211) * (input[i] > (844+offset1));

int rt1_0_212 = (input[i] > (849+offset1));
int t1_0_212 = rt1_0_212 * (2 + (input[i] > (850+offset1)));
t1_0_212 += (1 - rt1_0_212) * (input[i] > (848+offset1));

int rt1_0_213 = (input[i] > (853+offset1));
int t1_0_213 = rt1_0_213 * (2 + (input[i] > (854+offset1)));
t1_0_213 += (1 - rt1_0_213) * (input[i] > (852+offset1));

int rt1_0_214 = (input[i] > (857+offset1));
int t1_0_214 = rt1_0_214 * (2 + (input[i] > (858+offset1)));
t1_0_214 += (1 - rt1_0_214) * (input[i] > (856+offset1));

int rt1_0_215 = (input[i] > (861+offset1));
int t1_0_215 = rt1_0_215 * (2 + (input[i] > (862+offset1)));
t1_0_215 += (1 - rt1_0_215) * (input[i] > (860+offset1));

int rt1_0_216 = (input[i] > (865+offset1));
int t1_0_216 = rt1_0_216 * (2 + (input[i] > (866+offset1)));
t1_0_216 += (1 - rt1_0_216) * (input[i] > (864+offset1));

int rt1_0_217 = (input[i] > (869+offset1));
int t1_0_217 = rt1_0_217 * (2 + (input[i] > (870+offset1)));
t1_0_217 += (1 - rt1_0_217) * (input[i] > (868+offset1));

int rt1_0_218 = (input[i] > (873+offset1));
int t1_0_218 = rt1_0_218 * (2 + (input[i] > (874+offset1)));
t1_0_218 += (1 - rt1_0_218) * (input[i] > (872+offset1));

int rt1_0_219 = (input[i] > (877+offset1));
int t1_0_219 = rt1_0_219 * (2 + (input[i] > (878+offset1)));
t1_0_219 += (1 - rt1_0_219) * (input[i] > (876+offset1));

int rt1_0_220 = (input[i] > (881+offset1));
int t1_0_220 = rt1_0_220 * (2 + (input[i] > (882+offset1)));
t1_0_220 += (1 - rt1_0_220) * (input[i] > (880+offset1));

int rt1_0_221 = (input[i] > (885+offset1));
int t1_0_221 = rt1_0_221 * (2 + (input[i] > (886+offset1)));
t1_0_221 += (1 - rt1_0_221) * (input[i] > (884+offset1));

int rt1_0_222 = (input[i] > (889+offset1));
int t1_0_222 = rt1_0_222 * (2 + (input[i] > (890+offset1)));
t1_0_222 += (1 - rt1_0_222) * (input[i] > (888+offset1));

int rt1_0_223 = (input[i] > (893+offset1));
int t1_0_223 = rt1_0_223 * (2 + (input[i] > (894+offset1)));
t1_0_223 += (1 - rt1_0_223) * (input[i] > (892+offset1));

int rt1_0_224 = (input[i] > (897+offset1));
int t1_0_224 = rt1_0_224 * (2 + (input[i] > (898+offset1)));
t1_0_224 += (1 - rt1_0_224) * (input[i] > (896+offset1));

int rt1_0_225 = (input[i] > (901+offset1));
int t1_0_225 = rt1_0_225 * (2 + (input[i] > (902+offset1)));
t1_0_225 += (1 - rt1_0_225) * (input[i] > (900+offset1));

int rt1_0_226 = (input[i] > (905+offset1));
int t1_0_226 = rt1_0_226 * (2 + (input[i] > (906+offset1)));
t1_0_226 += (1 - rt1_0_226) * (input[i] > (904+offset1));

int rt1_0_227 = (input[i] > (909+offset1));
int t1_0_227 = rt1_0_227 * (2 + (input[i] > (910+offset1)));
t1_0_227 += (1 - rt1_0_227) * (input[i] > (908+offset1));

int rt1_0_228 = (input[i] > (913+offset1));
int t1_0_228 = rt1_0_228 * (2 + (input[i] > (914+offset1)));
t1_0_228 += (1 - rt1_0_228) * (input[i] > (912+offset1));

int rt1_0_229 = (input[i] > (917+offset1));
int t1_0_229 = rt1_0_229 * (2 + (input[i] > (918+offset1)));
t1_0_229 += (1 - rt1_0_229) * (input[i] > (916+offset1));

int rt1_0_230 = (input[i] > (921+offset1));
int t1_0_230 = rt1_0_230 * (2 + (input[i] > (922+offset1)));
t1_0_230 += (1 - rt1_0_230) * (input[i] > (920+offset1));

int rt1_0_231 = (input[i] > (925+offset1));
int t1_0_231 = rt1_0_231 * (2 + (input[i] > (926+offset1)));
t1_0_231 += (1 - rt1_0_231) * (input[i] > (924+offset1));

int rt1_0_232 = (input[i] > (929+offset1));
int t1_0_232 = rt1_0_232 * (2 + (input[i] > (930+offset1)));
t1_0_232 += (1 - rt1_0_232) * (input[i] > (928+offset1));

int rt1_0_233 = (input[i] > (933+offset1));
int t1_0_233 = rt1_0_233 * (2 + (input[i] > (934+offset1)));
t1_0_233 += (1 - rt1_0_233) * (input[i] > (932+offset1));

int rt1_0_234 = (input[i] > (937+offset1));
int t1_0_234 = rt1_0_234 * (2 + (input[i] > (938+offset1)));
t1_0_234 += (1 - rt1_0_234) * (input[i] > (936+offset1));

int rt1_0_235 = (input[i] > (941+offset1));
int t1_0_235 = rt1_0_235 * (2 + (input[i] > (942+offset1)));
t1_0_235 += (1 - rt1_0_235) * (input[i] > (940+offset1));

int rt1_0_236 = (input[i] > (945+offset1));
int t1_0_236 = rt1_0_236 * (2 + (input[i] > (946+offset1)));
t1_0_236 += (1 - rt1_0_236) * (input[i] > (944+offset1));

int rt1_0_237 = (input[i] > (949+offset1));
int t1_0_237 = rt1_0_237 * (2 + (input[i] > (950+offset1)));
t1_0_237 += (1 - rt1_0_237) * (input[i] > (948+offset1));

int rt1_0_238 = (input[i] > (953+offset1));
int t1_0_238 = rt1_0_238 * (2 + (input[i] > (954+offset1)));
t1_0_238 += (1 - rt1_0_238) * (input[i] > (952+offset1));

int rt1_0_239 = (input[i] > (957+offset1));
int t1_0_239 = rt1_0_239 * (2 + (input[i] > (958+offset1)));
t1_0_239 += (1 - rt1_0_239) * (input[i] > (956+offset1));

int rt1_0_240 = (input[i] > (961+offset1));
int t1_0_240 = rt1_0_240 * (2 + (input[i] > (962+offset1)));
t1_0_240 += (1 - rt1_0_240) * (input[i] > (960+offset1));

int rt1_0_241 = (input[i] > (965+offset1));
int t1_0_241 = rt1_0_241 * (2 + (input[i] > (966+offset1)));
t1_0_241 += (1 - rt1_0_241) * (input[i] > (964+offset1));

int rt1_0_242 = (input[i] > (969+offset1));
int t1_0_242 = rt1_0_242 * (2 + (input[i] > (970+offset1)));
t1_0_242 += (1 - rt1_0_242) * (input[i] > (968+offset1));

int rt1_0_243 = (input[i] > (973+offset1));
int t1_0_243 = rt1_0_243 * (2 + (input[i] > (974+offset1)));
t1_0_243 += (1 - rt1_0_243) * (input[i] > (972+offset1));

int rt1_0_244 = (input[i] > (977+offset1));
int t1_0_244 = rt1_0_244 * (2 + (input[i] > (978+offset1)));
t1_0_244 += (1 - rt1_0_244) * (input[i] > (976+offset1));

int rt1_0_245 = (input[i] > (981+offset1));
int t1_0_245 = rt1_0_245 * (2 + (input[i] > (982+offset1)));
t1_0_245 += (1 - rt1_0_245) * (input[i] > (980+offset1));

int rt1_0_246 = (input[i] > (985+offset1));
int t1_0_246 = rt1_0_246 * (2 + (input[i] > (986+offset1)));
t1_0_246 += (1 - rt1_0_246) * (input[i] > (984+offset1));

int rt1_0_247 = (input[i] > (989+offset1));
int t1_0_247 = rt1_0_247 * (2 + (input[i] > (990+offset1)));
t1_0_247 += (1 - rt1_0_247) * (input[i] > (988+offset1));

int rt1_0_248 = (input[i] > (993+offset1));
int t1_0_248 = rt1_0_248 * (2 + (input[i] > (994+offset1)));
t1_0_248 += (1 - rt1_0_248) * (input[i] > (992+offset1));

int rt1_0_249 = (input[i] > (997+offset1));
int t1_0_249 = rt1_0_249 * (2 + (input[i] > (998+offset1)));
t1_0_249 += (1 - rt1_0_249) * (input[i] > (996+offset1));

int rt1_0_250 = (input[i] > (1001+offset1));
int t1_0_250 = rt1_0_250 * (2 + (input[i] > (1002+offset1)));
t1_0_250 += (1 - rt1_0_250) * (input[i] > (1000+offset1));

int rt1_0_251 = (input[i] > (1005+offset1));
int t1_0_251 = rt1_0_251 * (2 + (input[i] > (1006+offset1)));
t1_0_251 += (1 - rt1_0_251) * (input[i] > (1004+offset1));

int rt1_0_252 = (input[i] > (1009+offset1));
int t1_0_252 = rt1_0_252 * (2 + (input[i] > (1010+offset1)));
t1_0_252 += (1 - rt1_0_252) * (input[i] > (1008+offset1));

int rt1_0_253 = (input[i] > (1013+offset1));
int t1_0_253 = rt1_0_253 * (2 + (input[i] > (1014+offset1)));
t1_0_253 += (1 - rt1_0_253) * (input[i] > (1012+offset1));

int rt1_0_254 = (input[i] > (1017+offset1));
int t1_0_254 = rt1_0_254 * (2 + (input[i] > (1018+offset1)));
t1_0_254 += (1 - rt1_0_254) * (input[i] > (1016+offset1));

int rt1_0_255 = (input[i] > (1021+offset1));
int t1_0_255 = rt1_0_255 * (2 + (input[i] > (1022+offset1)));
t1_0_255 += (1 - rt1_0_255) * (input[i] > (1020+offset1));

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

int rt1_1_32 = (input[i] > (259+offset1));
int t1_1_32 = rt1_1_32 * (4 + t1_0_65);
t1_1_32 += (1 - rt1_1_32) * t1_0_64;

int rt1_1_33 = (input[i] > (267+offset1));
int t1_1_33 = rt1_1_33 * (4 + t1_0_67);
t1_1_33 += (1 - rt1_1_33) * t1_0_66;

int rt1_1_34 = (input[i] > (275+offset1));
int t1_1_34 = rt1_1_34 * (4 + t1_0_69);
t1_1_34 += (1 - rt1_1_34) * t1_0_68;

int rt1_1_35 = (input[i] > (283+offset1));
int t1_1_35 = rt1_1_35 * (4 + t1_0_71);
t1_1_35 += (1 - rt1_1_35) * t1_0_70;

int rt1_1_36 = (input[i] > (291+offset1));
int t1_1_36 = rt1_1_36 * (4 + t1_0_73);
t1_1_36 += (1 - rt1_1_36) * t1_0_72;

int rt1_1_37 = (input[i] > (299+offset1));
int t1_1_37 = rt1_1_37 * (4 + t1_0_75);
t1_1_37 += (1 - rt1_1_37) * t1_0_74;

int rt1_1_38 = (input[i] > (307+offset1));
int t1_1_38 = rt1_1_38 * (4 + t1_0_77);
t1_1_38 += (1 - rt1_1_38) * t1_0_76;

int rt1_1_39 = (input[i] > (315+offset1));
int t1_1_39 = rt1_1_39 * (4 + t1_0_79);
t1_1_39 += (1 - rt1_1_39) * t1_0_78;

int rt1_1_40 = (input[i] > (323+offset1));
int t1_1_40 = rt1_1_40 * (4 + t1_0_81);
t1_1_40 += (1 - rt1_1_40) * t1_0_80;

int rt1_1_41 = (input[i] > (331+offset1));
int t1_1_41 = rt1_1_41 * (4 + t1_0_83);
t1_1_41 += (1 - rt1_1_41) * t1_0_82;

int rt1_1_42 = (input[i] > (339+offset1));
int t1_1_42 = rt1_1_42 * (4 + t1_0_85);
t1_1_42 += (1 - rt1_1_42) * t1_0_84;

int rt1_1_43 = (input[i] > (347+offset1));
int t1_1_43 = rt1_1_43 * (4 + t1_0_87);
t1_1_43 += (1 - rt1_1_43) * t1_0_86;

int rt1_1_44 = (input[i] > (355+offset1));
int t1_1_44 = rt1_1_44 * (4 + t1_0_89);
t1_1_44 += (1 - rt1_1_44) * t1_0_88;

int rt1_1_45 = (input[i] > (363+offset1));
int t1_1_45 = rt1_1_45 * (4 + t1_0_91);
t1_1_45 += (1 - rt1_1_45) * t1_0_90;

int rt1_1_46 = (input[i] > (371+offset1));
int t1_1_46 = rt1_1_46 * (4 + t1_0_93);
t1_1_46 += (1 - rt1_1_46) * t1_0_92;

int rt1_1_47 = (input[i] > (379+offset1));
int t1_1_47 = rt1_1_47 * (4 + t1_0_95);
t1_1_47 += (1 - rt1_1_47) * t1_0_94;

int rt1_1_48 = (input[i] > (387+offset1));
int t1_1_48 = rt1_1_48 * (4 + t1_0_97);
t1_1_48 += (1 - rt1_1_48) * t1_0_96;

int rt1_1_49 = (input[i] > (395+offset1));
int t1_1_49 = rt1_1_49 * (4 + t1_0_99);
t1_1_49 += (1 - rt1_1_49) * t1_0_98;

int rt1_1_50 = (input[i] > (403+offset1));
int t1_1_50 = rt1_1_50 * (4 + t1_0_101);
t1_1_50 += (1 - rt1_1_50) * t1_0_100;

int rt1_1_51 = (input[i] > (411+offset1));
int t1_1_51 = rt1_1_51 * (4 + t1_0_103);
t1_1_51 += (1 - rt1_1_51) * t1_0_102;

int rt1_1_52 = (input[i] > (419+offset1));
int t1_1_52 = rt1_1_52 * (4 + t1_0_105);
t1_1_52 += (1 - rt1_1_52) * t1_0_104;

int rt1_1_53 = (input[i] > (427+offset1));
int t1_1_53 = rt1_1_53 * (4 + t1_0_107);
t1_1_53 += (1 - rt1_1_53) * t1_0_106;

int rt1_1_54 = (input[i] > (435+offset1));
int t1_1_54 = rt1_1_54 * (4 + t1_0_109);
t1_1_54 += (1 - rt1_1_54) * t1_0_108;

int rt1_1_55 = (input[i] > (443+offset1));
int t1_1_55 = rt1_1_55 * (4 + t1_0_111);
t1_1_55 += (1 - rt1_1_55) * t1_0_110;

int rt1_1_56 = (input[i] > (451+offset1));
int t1_1_56 = rt1_1_56 * (4 + t1_0_113);
t1_1_56 += (1 - rt1_1_56) * t1_0_112;

int rt1_1_57 = (input[i] > (459+offset1));
int t1_1_57 = rt1_1_57 * (4 + t1_0_115);
t1_1_57 += (1 - rt1_1_57) * t1_0_114;

int rt1_1_58 = (input[i] > (467+offset1));
int t1_1_58 = rt1_1_58 * (4 + t1_0_117);
t1_1_58 += (1 - rt1_1_58) * t1_0_116;

int rt1_1_59 = (input[i] > (475+offset1));
int t1_1_59 = rt1_1_59 * (4 + t1_0_119);
t1_1_59 += (1 - rt1_1_59) * t1_0_118;

int rt1_1_60 = (input[i] > (483+offset1));
int t1_1_60 = rt1_1_60 * (4 + t1_0_121);
t1_1_60 += (1 - rt1_1_60) * t1_0_120;

int rt1_1_61 = (input[i] > (491+offset1));
int t1_1_61 = rt1_1_61 * (4 + t1_0_123);
t1_1_61 += (1 - rt1_1_61) * t1_0_122;

int rt1_1_62 = (input[i] > (499+offset1));
int t1_1_62 = rt1_1_62 * (4 + t1_0_125);
t1_1_62 += (1 - rt1_1_62) * t1_0_124;

int rt1_1_63 = (input[i] > (507+offset1));
int t1_1_63 = rt1_1_63 * (4 + t1_0_127);
t1_1_63 += (1 - rt1_1_63) * t1_0_126;

int rt1_1_64 = (input[i] > (515+offset1));
int t1_1_64 = rt1_1_64 * (4 + t1_0_129);
t1_1_64 += (1 - rt1_1_64) * t1_0_128;

int rt1_1_65 = (input[i] > (523+offset1));
int t1_1_65 = rt1_1_65 * (4 + t1_0_131);
t1_1_65 += (1 - rt1_1_65) * t1_0_130;

int rt1_1_66 = (input[i] > (531+offset1));
int t1_1_66 = rt1_1_66 * (4 + t1_0_133);
t1_1_66 += (1 - rt1_1_66) * t1_0_132;

int rt1_1_67 = (input[i] > (539+offset1));
int t1_1_67 = rt1_1_67 * (4 + t1_0_135);
t1_1_67 += (1 - rt1_1_67) * t1_0_134;

int rt1_1_68 = (input[i] > (547+offset1));
int t1_1_68 = rt1_1_68 * (4 + t1_0_137);
t1_1_68 += (1 - rt1_1_68) * t1_0_136;

int rt1_1_69 = (input[i] > (555+offset1));
int t1_1_69 = rt1_1_69 * (4 + t1_0_139);
t1_1_69 += (1 - rt1_1_69) * t1_0_138;

int rt1_1_70 = (input[i] > (563+offset1));
int t1_1_70 = rt1_1_70 * (4 + t1_0_141);
t1_1_70 += (1 - rt1_1_70) * t1_0_140;

int rt1_1_71 = (input[i] > (571+offset1));
int t1_1_71 = rt1_1_71 * (4 + t1_0_143);
t1_1_71 += (1 - rt1_1_71) * t1_0_142;

int rt1_1_72 = (input[i] > (579+offset1));
int t1_1_72 = rt1_1_72 * (4 + t1_0_145);
t1_1_72 += (1 - rt1_1_72) * t1_0_144;

int rt1_1_73 = (input[i] > (587+offset1));
int t1_1_73 = rt1_1_73 * (4 + t1_0_147);
t1_1_73 += (1 - rt1_1_73) * t1_0_146;

int rt1_1_74 = (input[i] > (595+offset1));
int t1_1_74 = rt1_1_74 * (4 + t1_0_149);
t1_1_74 += (1 - rt1_1_74) * t1_0_148;

int rt1_1_75 = (input[i] > (603+offset1));
int t1_1_75 = rt1_1_75 * (4 + t1_0_151);
t1_1_75 += (1 - rt1_1_75) * t1_0_150;

int rt1_1_76 = (input[i] > (611+offset1));
int t1_1_76 = rt1_1_76 * (4 + t1_0_153);
t1_1_76 += (1 - rt1_1_76) * t1_0_152;

int rt1_1_77 = (input[i] > (619+offset1));
int t1_1_77 = rt1_1_77 * (4 + t1_0_155);
t1_1_77 += (1 - rt1_1_77) * t1_0_154;

int rt1_1_78 = (input[i] > (627+offset1));
int t1_1_78 = rt1_1_78 * (4 + t1_0_157);
t1_1_78 += (1 - rt1_1_78) * t1_0_156;

int rt1_1_79 = (input[i] > (635+offset1));
int t1_1_79 = rt1_1_79 * (4 + t1_0_159);
t1_1_79 += (1 - rt1_1_79) * t1_0_158;

int rt1_1_80 = (input[i] > (643+offset1));
int t1_1_80 = rt1_1_80 * (4 + t1_0_161);
t1_1_80 += (1 - rt1_1_80) * t1_0_160;

int rt1_1_81 = (input[i] > (651+offset1));
int t1_1_81 = rt1_1_81 * (4 + t1_0_163);
t1_1_81 += (1 - rt1_1_81) * t1_0_162;

int rt1_1_82 = (input[i] > (659+offset1));
int t1_1_82 = rt1_1_82 * (4 + t1_0_165);
t1_1_82 += (1 - rt1_1_82) * t1_0_164;

int rt1_1_83 = (input[i] > (667+offset1));
int t1_1_83 = rt1_1_83 * (4 + t1_0_167);
t1_1_83 += (1 - rt1_1_83) * t1_0_166;

int rt1_1_84 = (input[i] > (675+offset1));
int t1_1_84 = rt1_1_84 * (4 + t1_0_169);
t1_1_84 += (1 - rt1_1_84) * t1_0_168;

int rt1_1_85 = (input[i] > (683+offset1));
int t1_1_85 = rt1_1_85 * (4 + t1_0_171);
t1_1_85 += (1 - rt1_1_85) * t1_0_170;

int rt1_1_86 = (input[i] > (691+offset1));
int t1_1_86 = rt1_1_86 * (4 + t1_0_173);
t1_1_86 += (1 - rt1_1_86) * t1_0_172;

int rt1_1_87 = (input[i] > (699+offset1));
int t1_1_87 = rt1_1_87 * (4 + t1_0_175);
t1_1_87 += (1 - rt1_1_87) * t1_0_174;

int rt1_1_88 = (input[i] > (707+offset1));
int t1_1_88 = rt1_1_88 * (4 + t1_0_177);
t1_1_88 += (1 - rt1_1_88) * t1_0_176;

int rt1_1_89 = (input[i] > (715+offset1));
int t1_1_89 = rt1_1_89 * (4 + t1_0_179);
t1_1_89 += (1 - rt1_1_89) * t1_0_178;

int rt1_1_90 = (input[i] > (723+offset1));
int t1_1_90 = rt1_1_90 * (4 + t1_0_181);
t1_1_90 += (1 - rt1_1_90) * t1_0_180;

int rt1_1_91 = (input[i] > (731+offset1));
int t1_1_91 = rt1_1_91 * (4 + t1_0_183);
t1_1_91 += (1 - rt1_1_91) * t1_0_182;

int rt1_1_92 = (input[i] > (739+offset1));
int t1_1_92 = rt1_1_92 * (4 + t1_0_185);
t1_1_92 += (1 - rt1_1_92) * t1_0_184;

int rt1_1_93 = (input[i] > (747+offset1));
int t1_1_93 = rt1_1_93 * (4 + t1_0_187);
t1_1_93 += (1 - rt1_1_93) * t1_0_186;

int rt1_1_94 = (input[i] > (755+offset1));
int t1_1_94 = rt1_1_94 * (4 + t1_0_189);
t1_1_94 += (1 - rt1_1_94) * t1_0_188;

int rt1_1_95 = (input[i] > (763+offset1));
int t1_1_95 = rt1_1_95 * (4 + t1_0_191);
t1_1_95 += (1 - rt1_1_95) * t1_0_190;

int rt1_1_96 = (input[i] > (771+offset1));
int t1_1_96 = rt1_1_96 * (4 + t1_0_193);
t1_1_96 += (1 - rt1_1_96) * t1_0_192;

int rt1_1_97 = (input[i] > (779+offset1));
int t1_1_97 = rt1_1_97 * (4 + t1_0_195);
t1_1_97 += (1 - rt1_1_97) * t1_0_194;

int rt1_1_98 = (input[i] > (787+offset1));
int t1_1_98 = rt1_1_98 * (4 + t1_0_197);
t1_1_98 += (1 - rt1_1_98) * t1_0_196;

int rt1_1_99 = (input[i] > (795+offset1));
int t1_1_99 = rt1_1_99 * (4 + t1_0_199);
t1_1_99 += (1 - rt1_1_99) * t1_0_198;

int rt1_1_100 = (input[i] > (803+offset1));
int t1_1_100 = rt1_1_100 * (4 + t1_0_201);
t1_1_100 += (1 - rt1_1_100) * t1_0_200;

int rt1_1_101 = (input[i] > (811+offset1));
int t1_1_101 = rt1_1_101 * (4 + t1_0_203);
t1_1_101 += (1 - rt1_1_101) * t1_0_202;

int rt1_1_102 = (input[i] > (819+offset1));
int t1_1_102 = rt1_1_102 * (4 + t1_0_205);
t1_1_102 += (1 - rt1_1_102) * t1_0_204;

int rt1_1_103 = (input[i] > (827+offset1));
int t1_1_103 = rt1_1_103 * (4 + t1_0_207);
t1_1_103 += (1 - rt1_1_103) * t1_0_206;

int rt1_1_104 = (input[i] > (835+offset1));
int t1_1_104 = rt1_1_104 * (4 + t1_0_209);
t1_1_104 += (1 - rt1_1_104) * t1_0_208;

int rt1_1_105 = (input[i] > (843+offset1));
int t1_1_105 = rt1_1_105 * (4 + t1_0_211);
t1_1_105 += (1 - rt1_1_105) * t1_0_210;

int rt1_1_106 = (input[i] > (851+offset1));
int t1_1_106 = rt1_1_106 * (4 + t1_0_213);
t1_1_106 += (1 - rt1_1_106) * t1_0_212;

int rt1_1_107 = (input[i] > (859+offset1));
int t1_1_107 = rt1_1_107 * (4 + t1_0_215);
t1_1_107 += (1 - rt1_1_107) * t1_0_214;

int rt1_1_108 = (input[i] > (867+offset1));
int t1_1_108 = rt1_1_108 * (4 + t1_0_217);
t1_1_108 += (1 - rt1_1_108) * t1_0_216;

int rt1_1_109 = (input[i] > (875+offset1));
int t1_1_109 = rt1_1_109 * (4 + t1_0_219);
t1_1_109 += (1 - rt1_1_109) * t1_0_218;

int rt1_1_110 = (input[i] > (883+offset1));
int t1_1_110 = rt1_1_110 * (4 + t1_0_221);
t1_1_110 += (1 - rt1_1_110) * t1_0_220;

int rt1_1_111 = (input[i] > (891+offset1));
int t1_1_111 = rt1_1_111 * (4 + t1_0_223);
t1_1_111 += (1 - rt1_1_111) * t1_0_222;

int rt1_1_112 = (input[i] > (899+offset1));
int t1_1_112 = rt1_1_112 * (4 + t1_0_225);
t1_1_112 += (1 - rt1_1_112) * t1_0_224;

int rt1_1_113 = (input[i] > (907+offset1));
int t1_1_113 = rt1_1_113 * (4 + t1_0_227);
t1_1_113 += (1 - rt1_1_113) * t1_0_226;

int rt1_1_114 = (input[i] > (915+offset1));
int t1_1_114 = rt1_1_114 * (4 + t1_0_229);
t1_1_114 += (1 - rt1_1_114) * t1_0_228;

int rt1_1_115 = (input[i] > (923+offset1));
int t1_1_115 = rt1_1_115 * (4 + t1_0_231);
t1_1_115 += (1 - rt1_1_115) * t1_0_230;

int rt1_1_116 = (input[i] > (931+offset1));
int t1_1_116 = rt1_1_116 * (4 + t1_0_233);
t1_1_116 += (1 - rt1_1_116) * t1_0_232;

int rt1_1_117 = (input[i] > (939+offset1));
int t1_1_117 = rt1_1_117 * (4 + t1_0_235);
t1_1_117 += (1 - rt1_1_117) * t1_0_234;

int rt1_1_118 = (input[i] > (947+offset1));
int t1_1_118 = rt1_1_118 * (4 + t1_0_237);
t1_1_118 += (1 - rt1_1_118) * t1_0_236;

int rt1_1_119 = (input[i] > (955+offset1));
int t1_1_119 = rt1_1_119 * (4 + t1_0_239);
t1_1_119 += (1 - rt1_1_119) * t1_0_238;

int rt1_1_120 = (input[i] > (963+offset1));
int t1_1_120 = rt1_1_120 * (4 + t1_0_241);
t1_1_120 += (1 - rt1_1_120) * t1_0_240;

int rt1_1_121 = (input[i] > (971+offset1));
int t1_1_121 = rt1_1_121 * (4 + t1_0_243);
t1_1_121 += (1 - rt1_1_121) * t1_0_242;

int rt1_1_122 = (input[i] > (979+offset1));
int t1_1_122 = rt1_1_122 * (4 + t1_0_245);
t1_1_122 += (1 - rt1_1_122) * t1_0_244;

int rt1_1_123 = (input[i] > (987+offset1));
int t1_1_123 = rt1_1_123 * (4 + t1_0_247);
t1_1_123 += (1 - rt1_1_123) * t1_0_246;

int rt1_1_124 = (input[i] > (995+offset1));
int t1_1_124 = rt1_1_124 * (4 + t1_0_249);
t1_1_124 += (1 - rt1_1_124) * t1_0_248;

int rt1_1_125 = (input[i] > (1003+offset1));
int t1_1_125 = rt1_1_125 * (4 + t1_0_251);
t1_1_125 += (1 - rt1_1_125) * t1_0_250;

int rt1_1_126 = (input[i] > (1011+offset1));
int t1_1_126 = rt1_1_126 * (4 + t1_0_253);
t1_1_126 += (1 - rt1_1_126) * t1_0_252;

int rt1_1_127 = (input[i] > (1019+offset1));
int t1_1_127 = rt1_1_127 * (4 + t1_0_255);
t1_1_127 += (1 - rt1_1_127) * t1_0_254;

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

int rt1_2_16 = (input[i] > (263+offset1));
int t1_2_16 = rt1_2_16 * (8 + t1_1_33);
t1_2_16 += (1 - rt1_2_16) * t1_1_32;

int rt1_2_17 = (input[i] > (279+offset1));
int t1_2_17 = rt1_2_17 * (8 + t1_1_35);
t1_2_17 += (1 - rt1_2_17) * t1_1_34;

int rt1_2_18 = (input[i] > (295+offset1));
int t1_2_18 = rt1_2_18 * (8 + t1_1_37);
t1_2_18 += (1 - rt1_2_18) * t1_1_36;

int rt1_2_19 = (input[i] > (311+offset1));
int t1_2_19 = rt1_2_19 * (8 + t1_1_39);
t1_2_19 += (1 - rt1_2_19) * t1_1_38;

int rt1_2_20 = (input[i] > (327+offset1));
int t1_2_20 = rt1_2_20 * (8 + t1_1_41);
t1_2_20 += (1 - rt1_2_20) * t1_1_40;

int rt1_2_21 = (input[i] > (343+offset1));
int t1_2_21 = rt1_2_21 * (8 + t1_1_43);
t1_2_21 += (1 - rt1_2_21) * t1_1_42;

int rt1_2_22 = (input[i] > (359+offset1));
int t1_2_22 = rt1_2_22 * (8 + t1_1_45);
t1_2_22 += (1 - rt1_2_22) * t1_1_44;

int rt1_2_23 = (input[i] > (375+offset1));
int t1_2_23 = rt1_2_23 * (8 + t1_1_47);
t1_2_23 += (1 - rt1_2_23) * t1_1_46;

int rt1_2_24 = (input[i] > (391+offset1));
int t1_2_24 = rt1_2_24 * (8 + t1_1_49);
t1_2_24 += (1 - rt1_2_24) * t1_1_48;

int rt1_2_25 = (input[i] > (407+offset1));
int t1_2_25 = rt1_2_25 * (8 + t1_1_51);
t1_2_25 += (1 - rt1_2_25) * t1_1_50;

int rt1_2_26 = (input[i] > (423+offset1));
int t1_2_26 = rt1_2_26 * (8 + t1_1_53);
t1_2_26 += (1 - rt1_2_26) * t1_1_52;

int rt1_2_27 = (input[i] > (439+offset1));
int t1_2_27 = rt1_2_27 * (8 + t1_1_55);
t1_2_27 += (1 - rt1_2_27) * t1_1_54;

int rt1_2_28 = (input[i] > (455+offset1));
int t1_2_28 = rt1_2_28 * (8 + t1_1_57);
t1_2_28 += (1 - rt1_2_28) * t1_1_56;

int rt1_2_29 = (input[i] > (471+offset1));
int t1_2_29 = rt1_2_29 * (8 + t1_1_59);
t1_2_29 += (1 - rt1_2_29) * t1_1_58;

int rt1_2_30 = (input[i] > (487+offset1));
int t1_2_30 = rt1_2_30 * (8 + t1_1_61);
t1_2_30 += (1 - rt1_2_30) * t1_1_60;

int rt1_2_31 = (input[i] > (503+offset1));
int t1_2_31 = rt1_2_31 * (8 + t1_1_63);
t1_2_31 += (1 - rt1_2_31) * t1_1_62;

int rt1_2_32 = (input[i] > (519+offset1));
int t1_2_32 = rt1_2_32 * (8 + t1_1_65);
t1_2_32 += (1 - rt1_2_32) * t1_1_64;

int rt1_2_33 = (input[i] > (535+offset1));
int t1_2_33 = rt1_2_33 * (8 + t1_1_67);
t1_2_33 += (1 - rt1_2_33) * t1_1_66;

int rt1_2_34 = (input[i] > (551+offset1));
int t1_2_34 = rt1_2_34 * (8 + t1_1_69);
t1_2_34 += (1 - rt1_2_34) * t1_1_68;

int rt1_2_35 = (input[i] > (567+offset1));
int t1_2_35 = rt1_2_35 * (8 + t1_1_71);
t1_2_35 += (1 - rt1_2_35) * t1_1_70;

int rt1_2_36 = (input[i] > (583+offset1));
int t1_2_36 = rt1_2_36 * (8 + t1_1_73);
t1_2_36 += (1 - rt1_2_36) * t1_1_72;

int rt1_2_37 = (input[i] > (599+offset1));
int t1_2_37 = rt1_2_37 * (8 + t1_1_75);
t1_2_37 += (1 - rt1_2_37) * t1_1_74;

int rt1_2_38 = (input[i] > (615+offset1));
int t1_2_38 = rt1_2_38 * (8 + t1_1_77);
t1_2_38 += (1 - rt1_2_38) * t1_1_76;

int rt1_2_39 = (input[i] > (631+offset1));
int t1_2_39 = rt1_2_39 * (8 + t1_1_79);
t1_2_39 += (1 - rt1_2_39) * t1_1_78;

int rt1_2_40 = (input[i] > (647+offset1));
int t1_2_40 = rt1_2_40 * (8 + t1_1_81);
t1_2_40 += (1 - rt1_2_40) * t1_1_80;

int rt1_2_41 = (input[i] > (663+offset1));
int t1_2_41 = rt1_2_41 * (8 + t1_1_83);
t1_2_41 += (1 - rt1_2_41) * t1_1_82;

int rt1_2_42 = (input[i] > (679+offset1));
int t1_2_42 = rt1_2_42 * (8 + t1_1_85);
t1_2_42 += (1 - rt1_2_42) * t1_1_84;

int rt1_2_43 = (input[i] > (695+offset1));
int t1_2_43 = rt1_2_43 * (8 + t1_1_87);
t1_2_43 += (1 - rt1_2_43) * t1_1_86;

int rt1_2_44 = (input[i] > (711+offset1));
int t1_2_44 = rt1_2_44 * (8 + t1_1_89);
t1_2_44 += (1 - rt1_2_44) * t1_1_88;

int rt1_2_45 = (input[i] > (727+offset1));
int t1_2_45 = rt1_2_45 * (8 + t1_1_91);
t1_2_45 += (1 - rt1_2_45) * t1_1_90;

int rt1_2_46 = (input[i] > (743+offset1));
int t1_2_46 = rt1_2_46 * (8 + t1_1_93);
t1_2_46 += (1 - rt1_2_46) * t1_1_92;

int rt1_2_47 = (input[i] > (759+offset1));
int t1_2_47 = rt1_2_47 * (8 + t1_1_95);
t1_2_47 += (1 - rt1_2_47) * t1_1_94;

int rt1_2_48 = (input[i] > (775+offset1));
int t1_2_48 = rt1_2_48 * (8 + t1_1_97);
t1_2_48 += (1 - rt1_2_48) * t1_1_96;

int rt1_2_49 = (input[i] > (791+offset1));
int t1_2_49 = rt1_2_49 * (8 + t1_1_99);
t1_2_49 += (1 - rt1_2_49) * t1_1_98;

int rt1_2_50 = (input[i] > (807+offset1));
int t1_2_50 = rt1_2_50 * (8 + t1_1_101);
t1_2_50 += (1 - rt1_2_50) * t1_1_100;

int rt1_2_51 = (input[i] > (823+offset1));
int t1_2_51 = rt1_2_51 * (8 + t1_1_103);
t1_2_51 += (1 - rt1_2_51) * t1_1_102;

int rt1_2_52 = (input[i] > (839+offset1));
int t1_2_52 = rt1_2_52 * (8 + t1_1_105);
t1_2_52 += (1 - rt1_2_52) * t1_1_104;

int rt1_2_53 = (input[i] > (855+offset1));
int t1_2_53 = rt1_2_53 * (8 + t1_1_107);
t1_2_53 += (1 - rt1_2_53) * t1_1_106;

int rt1_2_54 = (input[i] > (871+offset1));
int t1_2_54 = rt1_2_54 * (8 + t1_1_109);
t1_2_54 += (1 - rt1_2_54) * t1_1_108;

int rt1_2_55 = (input[i] > (887+offset1));
int t1_2_55 = rt1_2_55 * (8 + t1_1_111);
t1_2_55 += (1 - rt1_2_55) * t1_1_110;

int rt1_2_56 = (input[i] > (903+offset1));
int t1_2_56 = rt1_2_56 * (8 + t1_1_113);
t1_2_56 += (1 - rt1_2_56) * t1_1_112;

int rt1_2_57 = (input[i] > (919+offset1));
int t1_2_57 = rt1_2_57 * (8 + t1_1_115);
t1_2_57 += (1 - rt1_2_57) * t1_1_114;

int rt1_2_58 = (input[i] > (935+offset1));
int t1_2_58 = rt1_2_58 * (8 + t1_1_117);
t1_2_58 += (1 - rt1_2_58) * t1_1_116;

int rt1_2_59 = (input[i] > (951+offset1));
int t1_2_59 = rt1_2_59 * (8 + t1_1_119);
t1_2_59 += (1 - rt1_2_59) * t1_1_118;

int rt1_2_60 = (input[i] > (967+offset1));
int t1_2_60 = rt1_2_60 * (8 + t1_1_121);
t1_2_60 += (1 - rt1_2_60) * t1_1_120;

int rt1_2_61 = (input[i] > (983+offset1));
int t1_2_61 = rt1_2_61 * (8 + t1_1_123);
t1_2_61 += (1 - rt1_2_61) * t1_1_122;

int rt1_2_62 = (input[i] > (999+offset1));
int t1_2_62 = rt1_2_62 * (8 + t1_1_125);
t1_2_62 += (1 - rt1_2_62) * t1_1_124;

int rt1_2_63 = (input[i] > (1015+offset1));
int t1_2_63 = rt1_2_63 * (8 + t1_1_127);
t1_2_63 += (1 - rt1_2_63) * t1_1_126;

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

int rt1_3_8 = (input[i] > (271+offset1));
int t1_3_8 = rt1_3_8 * (16 + t1_2_17);
t1_3_8 += (1 - rt1_3_8) * t1_2_16;

int rt1_3_9 = (input[i] > (303+offset1));
int t1_3_9 = rt1_3_9 * (16 + t1_2_19);
t1_3_9 += (1 - rt1_3_9) * t1_2_18;

int rt1_3_10 = (input[i] > (335+offset1));
int t1_3_10 = rt1_3_10 * (16 + t1_2_21);
t1_3_10 += (1 - rt1_3_10) * t1_2_20;

int rt1_3_11 = (input[i] > (367+offset1));
int t1_3_11 = rt1_3_11 * (16 + t1_2_23);
t1_3_11 += (1 - rt1_3_11) * t1_2_22;

int rt1_3_12 = (input[i] > (399+offset1));
int t1_3_12 = rt1_3_12 * (16 + t1_2_25);
t1_3_12 += (1 - rt1_3_12) * t1_2_24;

int rt1_3_13 = (input[i] > (431+offset1));
int t1_3_13 = rt1_3_13 * (16 + t1_2_27);
t1_3_13 += (1 - rt1_3_13) * t1_2_26;

int rt1_3_14 = (input[i] > (463+offset1));
int t1_3_14 = rt1_3_14 * (16 + t1_2_29);
t1_3_14 += (1 - rt1_3_14) * t1_2_28;

int rt1_3_15 = (input[i] > (495+offset1));
int t1_3_15 = rt1_3_15 * (16 + t1_2_31);
t1_3_15 += (1 - rt1_3_15) * t1_2_30;

int rt1_3_16 = (input[i] > (527+offset1));
int t1_3_16 = rt1_3_16 * (16 + t1_2_33);
t1_3_16 += (1 - rt1_3_16) * t1_2_32;

int rt1_3_17 = (input[i] > (559+offset1));
int t1_3_17 = rt1_3_17 * (16 + t1_2_35);
t1_3_17 += (1 - rt1_3_17) * t1_2_34;

int rt1_3_18 = (input[i] > (591+offset1));
int t1_3_18 = rt1_3_18 * (16 + t1_2_37);
t1_3_18 += (1 - rt1_3_18) * t1_2_36;

int rt1_3_19 = (input[i] > (623+offset1));
int t1_3_19 = rt1_3_19 * (16 + t1_2_39);
t1_3_19 += (1 - rt1_3_19) * t1_2_38;

int rt1_3_20 = (input[i] > (655+offset1));
int t1_3_20 = rt1_3_20 * (16 + t1_2_41);
t1_3_20 += (1 - rt1_3_20) * t1_2_40;

int rt1_3_21 = (input[i] > (687+offset1));
int t1_3_21 = rt1_3_21 * (16 + t1_2_43);
t1_3_21 += (1 - rt1_3_21) * t1_2_42;

int rt1_3_22 = (input[i] > (719+offset1));
int t1_3_22 = rt1_3_22 * (16 + t1_2_45);
t1_3_22 += (1 - rt1_3_22) * t1_2_44;

int rt1_3_23 = (input[i] > (751+offset1));
int t1_3_23 = rt1_3_23 * (16 + t1_2_47);
t1_3_23 += (1 - rt1_3_23) * t1_2_46;

int rt1_3_24 = (input[i] > (783+offset1));
int t1_3_24 = rt1_3_24 * (16 + t1_2_49);
t1_3_24 += (1 - rt1_3_24) * t1_2_48;

int rt1_3_25 = (input[i] > (815+offset1));
int t1_3_25 = rt1_3_25 * (16 + t1_2_51);
t1_3_25 += (1 - rt1_3_25) * t1_2_50;

int rt1_3_26 = (input[i] > (847+offset1));
int t1_3_26 = rt1_3_26 * (16 + t1_2_53);
t1_3_26 += (1 - rt1_3_26) * t1_2_52;

int rt1_3_27 = (input[i] > (879+offset1));
int t1_3_27 = rt1_3_27 * (16 + t1_2_55);
t1_3_27 += (1 - rt1_3_27) * t1_2_54;

int rt1_3_28 = (input[i] > (911+offset1));
int t1_3_28 = rt1_3_28 * (16 + t1_2_57);
t1_3_28 += (1 - rt1_3_28) * t1_2_56;

int rt1_3_29 = (input[i] > (943+offset1));
int t1_3_29 = rt1_3_29 * (16 + t1_2_59);
t1_3_29 += (1 - rt1_3_29) * t1_2_58;

int rt1_3_30 = (input[i] > (975+offset1));
int t1_3_30 = rt1_3_30 * (16 + t1_2_61);
t1_3_30 += (1 - rt1_3_30) * t1_2_60;

int rt1_3_31 = (input[i] > (1007+offset1));
int t1_3_31 = rt1_3_31 * (16 + t1_2_63);
t1_3_31 += (1 - rt1_3_31) * t1_2_62;

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

int rt1_4_4 = (input[i] > (287+offset1));
int t1_4_4 = rt1_4_4 * (32 + t1_3_9);
t1_4_4 += (1 - rt1_4_4) * t1_3_8;

int rt1_4_5 = (input[i] > (351+offset1));
int t1_4_5 = rt1_4_5 * (32 + t1_3_11);
t1_4_5 += (1 - rt1_4_5) * t1_3_10;

int rt1_4_6 = (input[i] > (415+offset1));
int t1_4_6 = rt1_4_6 * (32 + t1_3_13);
t1_4_6 += (1 - rt1_4_6) * t1_3_12;

int rt1_4_7 = (input[i] > (479+offset1));
int t1_4_7 = rt1_4_7 * (32 + t1_3_15);
t1_4_7 += (1 - rt1_4_7) * t1_3_14;

int rt1_4_8 = (input[i] > (543+offset1));
int t1_4_8 = rt1_4_8 * (32 + t1_3_17);
t1_4_8 += (1 - rt1_4_8) * t1_3_16;

int rt1_4_9 = (input[i] > (607+offset1));
int t1_4_9 = rt1_4_9 * (32 + t1_3_19);
t1_4_9 += (1 - rt1_4_9) * t1_3_18;

int rt1_4_10 = (input[i] > (671+offset1));
int t1_4_10 = rt1_4_10 * (32 + t1_3_21);
t1_4_10 += (1 - rt1_4_10) * t1_3_20;

int rt1_4_11 = (input[i] > (735+offset1));
int t1_4_11 = rt1_4_11 * (32 + t1_3_23);
t1_4_11 += (1 - rt1_4_11) * t1_3_22;

int rt1_4_12 = (input[i] > (799+offset1));
int t1_4_12 = rt1_4_12 * (32 + t1_3_25);
t1_4_12 += (1 - rt1_4_12) * t1_3_24;

int rt1_4_13 = (input[i] > (863+offset1));
int t1_4_13 = rt1_4_13 * (32 + t1_3_27);
t1_4_13 += (1 - rt1_4_13) * t1_3_26;

int rt1_4_14 = (input[i] > (927+offset1));
int t1_4_14 = rt1_4_14 * (32 + t1_3_29);
t1_4_14 += (1 - rt1_4_14) * t1_3_28;

int rt1_4_15 = (input[i] > (991+offset1));
int t1_4_15 = rt1_4_15 * (32 + t1_3_31);
t1_4_15 += (1 - rt1_4_15) * t1_3_30;

int rt1_5_0 = (input[i] > (63+offset1));
int t1_5_0 = rt1_5_0 * (64 + t1_4_1);
t1_5_0 += (1 - rt1_5_0) * t1_4_0;

int rt1_5_1 = (input[i] > (191+offset1));
int t1_5_1 = rt1_5_1 * (64 + t1_4_3);
t1_5_1 += (1 - rt1_5_1) * t1_4_2;

int rt1_5_2 = (input[i] > (319+offset1));
int t1_5_2 = rt1_5_2 * (64 + t1_4_5);
t1_5_2 += (1 - rt1_5_2) * t1_4_4;

int rt1_5_3 = (input[i] > (447+offset1));
int t1_5_3 = rt1_5_3 * (64 + t1_4_7);
t1_5_3 += (1 - rt1_5_3) * t1_4_6;

int rt1_5_4 = (input[i] > (575+offset1));
int t1_5_4 = rt1_5_4 * (64 + t1_4_9);
t1_5_4 += (1 - rt1_5_4) * t1_4_8;

int rt1_5_5 = (input[i] > (703+offset1));
int t1_5_5 = rt1_5_5 * (64 + t1_4_11);
t1_5_5 += (1 - rt1_5_5) * t1_4_10;

int rt1_5_6 = (input[i] > (831+offset1));
int t1_5_6 = rt1_5_6 * (64 + t1_4_13);
t1_5_6 += (1 - rt1_5_6) * t1_4_12;

int rt1_5_7 = (input[i] > (959+offset1));
int t1_5_7 = rt1_5_7 * (64 + t1_4_15);
t1_5_7 += (1 - rt1_5_7) * t1_4_14;

int rt1_6_0 = (input[i] > (127+offset1));
int t1_6_0 = rt1_6_0 * (128 + t1_5_1);
t1_6_0 += (1 - rt1_6_0) * t1_5_0;

int rt1_6_1 = (input[i] > (383+offset1));
int t1_6_1 = rt1_6_1 * (128 + t1_5_3);
t1_6_1 += (1 - rt1_6_1) * t1_5_2;

int rt1_6_2 = (input[i] > (639+offset1));
int t1_6_2 = rt1_6_2 * (128 + t1_5_5);
t1_6_2 += (1 - rt1_6_2) * t1_5_4;

int rt1_6_3 = (input[i] > (895+offset1));
int t1_6_3 = rt1_6_3 * (128 + t1_5_7);
t1_6_3 += (1 - rt1_6_3) * t1_5_6;

int rt1_7_0 = (input[i] > (255+offset1));
int t1_7_0 = rt1_7_0 * (256 + t1_6_1);
t1_7_0 += (1 - rt1_7_0) * t1_6_0;

int rt1_7_1 = (input[i] > (767+offset1));
int t1_7_1 = rt1_7_1 * (256 + t1_6_3);
t1_7_1 += (1 - rt1_7_1) * t1_6_2;

int rt1_8_0 = (input[i] > (511+offset1));
int t1_8_0 = rt1_8_0 * (512 + t1_7_1);
t1_8_0 += (1 - rt1_8_0) * t1_7_0;

vR[i] = t0_8_0+ (t0_8_0 == t1_8_0);
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
