#include <sys/time.h>
#include <cuda_runtime.h>
#include <stdio.h>
#include <stdlib.h>
#include <stdbool.h>
#include <time.h>

#define N_ELEM 100000000

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

#define _MOD 512
#define _1TREE
#define EXP_NAME "_RF_CALC_1TREE_9LV_1INPUT_100000000"

// RF_with_if

__global__ void RF_kernel(float *input, const int n, const int offset0, float *vR)
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

int rt0_6_0 = (input[i] > (127+offset0));
int t0_6_0 = rt0_6_0 * (128 + t0_5_1);
t0_6_0 += (1 - rt0_6_0) * t0_5_0;

int rt0_6_1 = (input[i] > (383+offset0));
int t0_6_1 = rt0_6_1 * (128 + t0_5_3);
t0_6_1 += (1 - rt0_6_1) * t0_5_2;

int rt0_7_0 = (input[i] > (255+offset0));
int t0_7_0 = rt0_7_0 * (256 + t0_6_1);
t0_7_0 += (1 - rt0_7_0) * t0_6_0;

vR[i] = t0_7_0;
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
