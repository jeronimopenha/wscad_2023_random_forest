#include <sys/time.h>
#include <cuda_runtime.h>
#include <stdio.h>
#include <stdlib.h>
#include <stdbool.h>
#include <time.h>

#define _WORST
#define TIMES 10
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

#define _MOD 16384
#define _1TREE
#define EXP_NAME "_RF_16383IF_1TREE_1INPUT__WORST_50000000"

// RF_with_if

__global__ void RF_kernel(float *input, const int n, const int offset0, float *vR)
{
	int i = blockIdx.x * blockDim.x + threadIdx.x;
	if (i < n)
	{
if(input[i]>(8191+offset0))
{
	if(input[i]>(12287+offset0))
{
	if(input[i]>(14335+offset0))
{
	if(input[i]>(15359+offset0))
{
	if(input[i]>(15871+offset0))
{
	if(input[i]>(16127+offset0))
{
	if(input[i]>(16255+offset0))
{
	if(input[i]>(16319+offset0))
{
	if(input[i]>(16351+offset0))
{
	if(input[i]>(16367+offset0))
{
	if(input[i]>(16375+offset0))
{
	if(input[i]>(16379+offset0))
{
	if(input[i]>(16381+offset0))
{
	if(input[i]==(16383+offset0))
{
	vR[i] = 16383;
}
else
{
	vR[i] = 16382;
}

}
else
{
	if(input[i]==(16381+offset0))
{
	vR[i] = 16381;
}
else
{
	vR[i] = 16380;
}

}

}
else
{
	if(input[i]>(16377+offset0))
{
	if(input[i]==(16379+offset0))
{
	vR[i] = 16379;
}
else
{
	vR[i] = 16378;
}

}
else
{
	if(input[i]==(16377+offset0))
{
	vR[i] = 16377;
}
else
{
	vR[i] = 16376;
}

}

}

}
else
{
	if(input[i]>(16371+offset0))
{
	if(input[i]>(16373+offset0))
{
	if(input[i]==(16375+offset0))
{
	vR[i] = 16375;
}
else
{
	vR[i] = 16374;
}

}
else
{
	if(input[i]==(16373+offset0))
{
	vR[i] = 16373;
}
else
{
	vR[i] = 16372;
}

}

}
else
{
	if(input[i]>(16369+offset0))
{
	if(input[i]==(16371+offset0))
{
	vR[i] = 16371;
}
else
{
	vR[i] = 16370;
}

}
else
{
	if(input[i]==(16369+offset0))
{
	vR[i] = 16369;
}
else
{
	vR[i] = 16368;
}

}

}

}

}
else
{
	if(input[i]>(16359+offset0))
{
	if(input[i]>(16363+offset0))
{
	if(input[i]>(16365+offset0))
{
	if(input[i]==(16367+offset0))
{
	vR[i] = 16367;
}
else
{
	vR[i] = 16366;
}

}
else
{
	if(input[i]==(16365+offset0))
{
	vR[i] = 16365;
}
else
{
	vR[i] = 16364;
}

}

}
else
{
	if(input[i]>(16361+offset0))
{
	if(input[i]==(16363+offset0))
{
	vR[i] = 16363;
}
else
{
	vR[i] = 16362;
}

}
else
{
	if(input[i]==(16361+offset0))
{
	vR[i] = 16361;
}
else
{
	vR[i] = 16360;
}

}

}

}
else
{
	if(input[i]>(16355+offset0))
{
	if(input[i]>(16357+offset0))
{
	if(input[i]==(16359+offset0))
{
	vR[i] = 16359;
}
else
{
	vR[i] = 16358;
}

}
else
{
	if(input[i]==(16357+offset0))
{
	vR[i] = 16357;
}
else
{
	vR[i] = 16356;
}

}

}
else
{
	if(input[i]>(16353+offset0))
{
	if(input[i]==(16355+offset0))
{
	vR[i] = 16355;
}
else
{
	vR[i] = 16354;
}

}
else
{
	if(input[i]==(16353+offset0))
{
	vR[i] = 16353;
}
else
{
	vR[i] = 16352;
}

}

}

}

}

}
else
{
	if(input[i]>(16335+offset0))
{
	if(input[i]>(16343+offset0))
{
	if(input[i]>(16347+offset0))
{
	if(input[i]>(16349+offset0))
{
	if(input[i]==(16351+offset0))
{
	vR[i] = 16351;
}
else
{
	vR[i] = 16350;
}

}
else
{
	if(input[i]==(16349+offset0))
{
	vR[i] = 16349;
}
else
{
	vR[i] = 16348;
}

}

}
else
{
	if(input[i]>(16345+offset0))
{
	if(input[i]==(16347+offset0))
{
	vR[i] = 16347;
}
else
{
	vR[i] = 16346;
}

}
else
{
	if(input[i]==(16345+offset0))
{
	vR[i] = 16345;
}
else
{
	vR[i] = 16344;
}

}

}

}
else
{
	if(input[i]>(16339+offset0))
{
	if(input[i]>(16341+offset0))
{
	if(input[i]==(16343+offset0))
{
	vR[i] = 16343;
}
else
{
	vR[i] = 16342;
}

}
else
{
	if(input[i]==(16341+offset0))
{
	vR[i] = 16341;
}
else
{
	vR[i] = 16340;
}

}

}
else
{
	if(input[i]>(16337+offset0))
{
	if(input[i]==(16339+offset0))
{
	vR[i] = 16339;
}
else
{
	vR[i] = 16338;
}

}
else
{
	if(input[i]==(16337+offset0))
{
	vR[i] = 16337;
}
else
{
	vR[i] = 16336;
}

}

}

}

}
else
{
	if(input[i]>(16327+offset0))
{
	if(input[i]>(16331+offset0))
{
	if(input[i]>(16333+offset0))
{
	if(input[i]==(16335+offset0))
{
	vR[i] = 16335;
}
else
{
	vR[i] = 16334;
}

}
else
{
	if(input[i]==(16333+offset0))
{
	vR[i] = 16333;
}
else
{
	vR[i] = 16332;
}

}

}
else
{
	if(input[i]>(16329+offset0))
{
	if(input[i]==(16331+offset0))
{
	vR[i] = 16331;
}
else
{
	vR[i] = 16330;
}

}
else
{
	if(input[i]==(16329+offset0))
{
	vR[i] = 16329;
}
else
{
	vR[i] = 16328;
}

}

}

}
else
{
	if(input[i]>(16323+offset0))
{
	if(input[i]>(16325+offset0))
{
	if(input[i]==(16327+offset0))
{
	vR[i] = 16327;
}
else
{
	vR[i] = 16326;
}

}
else
{
	if(input[i]==(16325+offset0))
{
	vR[i] = 16325;
}
else
{
	vR[i] = 16324;
}

}

}
else
{
	if(input[i]>(16321+offset0))
{
	if(input[i]==(16323+offset0))
{
	vR[i] = 16323;
}
else
{
	vR[i] = 16322;
}

}
else
{
	if(input[i]==(16321+offset0))
{
	vR[i] = 16321;
}
else
{
	vR[i] = 16320;
}

}

}

}

}

}

}
else
{
	if(input[i]>(16287+offset0))
{
	if(input[i]>(16303+offset0))
{
	if(input[i]>(16311+offset0))
{
	if(input[i]>(16315+offset0))
{
	if(input[i]>(16317+offset0))
{
	if(input[i]==(16319+offset0))
{
	vR[i] = 16319;
}
else
{
	vR[i] = 16318;
}

}
else
{
	if(input[i]==(16317+offset0))
{
	vR[i] = 16317;
}
else
{
	vR[i] = 16316;
}

}

}
else
{
	if(input[i]>(16313+offset0))
{
	if(input[i]==(16315+offset0))
{
	vR[i] = 16315;
}
else
{
	vR[i] = 16314;
}

}
else
{
	if(input[i]==(16313+offset0))
{
	vR[i] = 16313;
}
else
{
	vR[i] = 16312;
}

}

}

}
else
{
	if(input[i]>(16307+offset0))
{
	if(input[i]>(16309+offset0))
{
	if(input[i]==(16311+offset0))
{
	vR[i] = 16311;
}
else
{
	vR[i] = 16310;
}

}
else
{
	if(input[i]==(16309+offset0))
{
	vR[i] = 16309;
}
else
{
	vR[i] = 16308;
}

}

}
else
{
	if(input[i]>(16305+offset0))
{
	if(input[i]==(16307+offset0))
{
	vR[i] = 16307;
}
else
{
	vR[i] = 16306;
}

}
else
{
	if(input[i]==(16305+offset0))
{
	vR[i] = 16305;
}
else
{
	vR[i] = 16304;
}

}

}

}

}
else
{
	if(input[i]>(16295+offset0))
{
	if(input[i]>(16299+offset0))
{
	if(input[i]>(16301+offset0))
{
	if(input[i]==(16303+offset0))
{
	vR[i] = 16303;
}
else
{
	vR[i] = 16302;
}

}
else
{
	if(input[i]==(16301+offset0))
{
	vR[i] = 16301;
}
else
{
	vR[i] = 16300;
}

}

}
else
{
	if(input[i]>(16297+offset0))
{
	if(input[i]==(16299+offset0))
{
	vR[i] = 16299;
}
else
{
	vR[i] = 16298;
}

}
else
{
	if(input[i]==(16297+offset0))
{
	vR[i] = 16297;
}
else
{
	vR[i] = 16296;
}

}

}

}
else
{
	if(input[i]>(16291+offset0))
{
	if(input[i]>(16293+offset0))
{
	if(input[i]==(16295+offset0))
{
	vR[i] = 16295;
}
else
{
	vR[i] = 16294;
}

}
else
{
	if(input[i]==(16293+offset0))
{
	vR[i] = 16293;
}
else
{
	vR[i] = 16292;
}

}

}
else
{
	if(input[i]>(16289+offset0))
{
	if(input[i]==(16291+offset0))
{
	vR[i] = 16291;
}
else
{
	vR[i] = 16290;
}

}
else
{
	if(input[i]==(16289+offset0))
{
	vR[i] = 16289;
}
else
{
	vR[i] = 16288;
}

}

}

}

}

}
else
{
	if(input[i]>(16271+offset0))
{
	if(input[i]>(16279+offset0))
{
	if(input[i]>(16283+offset0))
{
	if(input[i]>(16285+offset0))
{
	if(input[i]==(16287+offset0))
{
	vR[i] = 16287;
}
else
{
	vR[i] = 16286;
}

}
else
{
	if(input[i]==(16285+offset0))
{
	vR[i] = 16285;
}
else
{
	vR[i] = 16284;
}

}

}
else
{
	if(input[i]>(16281+offset0))
{
	if(input[i]==(16283+offset0))
{
	vR[i] = 16283;
}
else
{
	vR[i] = 16282;
}

}
else
{
	if(input[i]==(16281+offset0))
{
	vR[i] = 16281;
}
else
{
	vR[i] = 16280;
}

}

}

}
else
{
	if(input[i]>(16275+offset0))
{
	if(input[i]>(16277+offset0))
{
	if(input[i]==(16279+offset0))
{
	vR[i] = 16279;
}
else
{
	vR[i] = 16278;
}

}
else
{
	if(input[i]==(16277+offset0))
{
	vR[i] = 16277;
}
else
{
	vR[i] = 16276;
}

}

}
else
{
	if(input[i]>(16273+offset0))
{
	if(input[i]==(16275+offset0))
{
	vR[i] = 16275;
}
else
{
	vR[i] = 16274;
}

}
else
{
	if(input[i]==(16273+offset0))
{
	vR[i] = 16273;
}
else
{
	vR[i] = 16272;
}

}

}

}

}
else
{
	if(input[i]>(16263+offset0))
{
	if(input[i]>(16267+offset0))
{
	if(input[i]>(16269+offset0))
{
	if(input[i]==(16271+offset0))
{
	vR[i] = 16271;
}
else
{
	vR[i] = 16270;
}

}
else
{
	if(input[i]==(16269+offset0))
{
	vR[i] = 16269;
}
else
{
	vR[i] = 16268;
}

}

}
else
{
	if(input[i]>(16265+offset0))
{
	if(input[i]==(16267+offset0))
{
	vR[i] = 16267;
}
else
{
	vR[i] = 16266;
}

}
else
{
	if(input[i]==(16265+offset0))
{
	vR[i] = 16265;
}
else
{
	vR[i] = 16264;
}

}

}

}
else
{
	if(input[i]>(16259+offset0))
{
	if(input[i]>(16261+offset0))
{
	if(input[i]==(16263+offset0))
{
	vR[i] = 16263;
}
else
{
	vR[i] = 16262;
}

}
else
{
	if(input[i]==(16261+offset0))
{
	vR[i] = 16261;
}
else
{
	vR[i] = 16260;
}

}

}
else
{
	if(input[i]>(16257+offset0))
{
	if(input[i]==(16259+offset0))
{
	vR[i] = 16259;
}
else
{
	vR[i] = 16258;
}

}
else
{
	if(input[i]==(16257+offset0))
{
	vR[i] = 16257;
}
else
{
	vR[i] = 16256;
}

}

}

}

}

}

}

}
else
{
	if(input[i]>(16191+offset0))
{
	if(input[i]>(16223+offset0))
{
	if(input[i]>(16239+offset0))
{
	if(input[i]>(16247+offset0))
{
	if(input[i]>(16251+offset0))
{
	if(input[i]>(16253+offset0))
{
	if(input[i]==(16255+offset0))
{
	vR[i] = 16255;
}
else
{
	vR[i] = 16254;
}

}
else
{
	if(input[i]==(16253+offset0))
{
	vR[i] = 16253;
}
else
{
	vR[i] = 16252;
}

}

}
else
{
	if(input[i]>(16249+offset0))
{
	if(input[i]==(16251+offset0))
{
	vR[i] = 16251;
}
else
{
	vR[i] = 16250;
}

}
else
{
	if(input[i]==(16249+offset0))
{
	vR[i] = 16249;
}
else
{
	vR[i] = 16248;
}

}

}

}
else
{
	if(input[i]>(16243+offset0))
{
	if(input[i]>(16245+offset0))
{
	if(input[i]==(16247+offset0))
{
	vR[i] = 16247;
}
else
{
	vR[i] = 16246;
}

}
else
{
	if(input[i]==(16245+offset0))
{
	vR[i] = 16245;
}
else
{
	vR[i] = 16244;
}

}

}
else
{
	if(input[i]>(16241+offset0))
{
	if(input[i]==(16243+offset0))
{
	vR[i] = 16243;
}
else
{
	vR[i] = 16242;
}

}
else
{
	if(input[i]==(16241+offset0))
{
	vR[i] = 16241;
}
else
{
	vR[i] = 16240;
}

}

}

}

}
else
{
	if(input[i]>(16231+offset0))
{
	if(input[i]>(16235+offset0))
{
	if(input[i]>(16237+offset0))
{
	if(input[i]==(16239+offset0))
{
	vR[i] = 16239;
}
else
{
	vR[i] = 16238;
}

}
else
{
	if(input[i]==(16237+offset0))
{
	vR[i] = 16237;
}
else
{
	vR[i] = 16236;
}

}

}
else
{
	if(input[i]>(16233+offset0))
{
	if(input[i]==(16235+offset0))
{
	vR[i] = 16235;
}
else
{
	vR[i] = 16234;
}

}
else
{
	if(input[i]==(16233+offset0))
{
	vR[i] = 16233;
}
else
{
	vR[i] = 16232;
}

}

}

}
else
{
	if(input[i]>(16227+offset0))
{
	if(input[i]>(16229+offset0))
{
	if(input[i]==(16231+offset0))
{
	vR[i] = 16231;
}
else
{
	vR[i] = 16230;
}

}
else
{
	if(input[i]==(16229+offset0))
{
	vR[i] = 16229;
}
else
{
	vR[i] = 16228;
}

}

}
else
{
	if(input[i]>(16225+offset0))
{
	if(input[i]==(16227+offset0))
{
	vR[i] = 16227;
}
else
{
	vR[i] = 16226;
}

}
else
{
	if(input[i]==(16225+offset0))
{
	vR[i] = 16225;
}
else
{
	vR[i] = 16224;
}

}

}

}

}

}
else
{
	if(input[i]>(16207+offset0))
{
	if(input[i]>(16215+offset0))
{
	if(input[i]>(16219+offset0))
{
	if(input[i]>(16221+offset0))
{
	if(input[i]==(16223+offset0))
{
	vR[i] = 16223;
}
else
{
	vR[i] = 16222;
}

}
else
{
	if(input[i]==(16221+offset0))
{
	vR[i] = 16221;
}
else
{
	vR[i] = 16220;
}

}

}
else
{
	if(input[i]>(16217+offset0))
{
	if(input[i]==(16219+offset0))
{
	vR[i] = 16219;
}
else
{
	vR[i] = 16218;
}

}
else
{
	if(input[i]==(16217+offset0))
{
	vR[i] = 16217;
}
else
{
	vR[i] = 16216;
}

}

}

}
else
{
	if(input[i]>(16211+offset0))
{
	if(input[i]>(16213+offset0))
{
	if(input[i]==(16215+offset0))
{
	vR[i] = 16215;
}
else
{
	vR[i] = 16214;
}

}
else
{
	if(input[i]==(16213+offset0))
{
	vR[i] = 16213;
}
else
{
	vR[i] = 16212;
}

}

}
else
{
	if(input[i]>(16209+offset0))
{
	if(input[i]==(16211+offset0))
{
	vR[i] = 16211;
}
else
{
	vR[i] = 16210;
}

}
else
{
	if(input[i]==(16209+offset0))
{
	vR[i] = 16209;
}
else
{
	vR[i] = 16208;
}

}

}

}

}
else
{
	if(input[i]>(16199+offset0))
{
	if(input[i]>(16203+offset0))
{
	if(input[i]>(16205+offset0))
{
	if(input[i]==(16207+offset0))
{
	vR[i] = 16207;
}
else
{
	vR[i] = 16206;
}

}
else
{
	if(input[i]==(16205+offset0))
{
	vR[i] = 16205;
}
else
{
	vR[i] = 16204;
}

}

}
else
{
	if(input[i]>(16201+offset0))
{
	if(input[i]==(16203+offset0))
{
	vR[i] = 16203;
}
else
{
	vR[i] = 16202;
}

}
else
{
	if(input[i]==(16201+offset0))
{
	vR[i] = 16201;
}
else
{
	vR[i] = 16200;
}

}

}

}
else
{
	if(input[i]>(16195+offset0))
{
	if(input[i]>(16197+offset0))
{
	if(input[i]==(16199+offset0))
{
	vR[i] = 16199;
}
else
{
	vR[i] = 16198;
}

}
else
{
	if(input[i]==(16197+offset0))
{
	vR[i] = 16197;
}
else
{
	vR[i] = 16196;
}

}

}
else
{
	if(input[i]>(16193+offset0))
{
	if(input[i]==(16195+offset0))
{
	vR[i] = 16195;
}
else
{
	vR[i] = 16194;
}

}
else
{
	if(input[i]==(16193+offset0))
{
	vR[i] = 16193;
}
else
{
	vR[i] = 16192;
}

}

}

}

}

}

}
else
{
	if(input[i]>(16159+offset0))
{
	if(input[i]>(16175+offset0))
{
	if(input[i]>(16183+offset0))
{
	if(input[i]>(16187+offset0))
{
	if(input[i]>(16189+offset0))
{
	if(input[i]==(16191+offset0))
{
	vR[i] = 16191;
}
else
{
	vR[i] = 16190;
}

}
else
{
	if(input[i]==(16189+offset0))
{
	vR[i] = 16189;
}
else
{
	vR[i] = 16188;
}

}

}
else
{
	if(input[i]>(16185+offset0))
{
	if(input[i]==(16187+offset0))
{
	vR[i] = 16187;
}
else
{
	vR[i] = 16186;
}

}
else
{
	if(input[i]==(16185+offset0))
{
	vR[i] = 16185;
}
else
{
	vR[i] = 16184;
}

}

}

}
else
{
	if(input[i]>(16179+offset0))
{
	if(input[i]>(16181+offset0))
{
	if(input[i]==(16183+offset0))
{
	vR[i] = 16183;
}
else
{
	vR[i] = 16182;
}

}
else
{
	if(input[i]==(16181+offset0))
{
	vR[i] = 16181;
}
else
{
	vR[i] = 16180;
}

}

}
else
{
	if(input[i]>(16177+offset0))
{
	if(input[i]==(16179+offset0))
{
	vR[i] = 16179;
}
else
{
	vR[i] = 16178;
}

}
else
{
	if(input[i]==(16177+offset0))
{
	vR[i] = 16177;
}
else
{
	vR[i] = 16176;
}

}

}

}

}
else
{
	if(input[i]>(16167+offset0))
{
	if(input[i]>(16171+offset0))
{
	if(input[i]>(16173+offset0))
{
	if(input[i]==(16175+offset0))
{
	vR[i] = 16175;
}
else
{
	vR[i] = 16174;
}

}
else
{
	if(input[i]==(16173+offset0))
{
	vR[i] = 16173;
}
else
{
	vR[i] = 16172;
}

}

}
else
{
	if(input[i]>(16169+offset0))
{
	if(input[i]==(16171+offset0))
{
	vR[i] = 16171;
}
else
{
	vR[i] = 16170;
}

}
else
{
	if(input[i]==(16169+offset0))
{
	vR[i] = 16169;
}
else
{
	vR[i] = 16168;
}

}

}

}
else
{
	if(input[i]>(16163+offset0))
{
	if(input[i]>(16165+offset0))
{
	if(input[i]==(16167+offset0))
{
	vR[i] = 16167;
}
else
{
	vR[i] = 16166;
}

}
else
{
	if(input[i]==(16165+offset0))
{
	vR[i] = 16165;
}
else
{
	vR[i] = 16164;
}

}

}
else
{
	if(input[i]>(16161+offset0))
{
	if(input[i]==(16163+offset0))
{
	vR[i] = 16163;
}
else
{
	vR[i] = 16162;
}

}
else
{
	if(input[i]==(16161+offset0))
{
	vR[i] = 16161;
}
else
{
	vR[i] = 16160;
}

}

}

}

}

}
else
{
	if(input[i]>(16143+offset0))
{
	if(input[i]>(16151+offset0))
{
	if(input[i]>(16155+offset0))
{
	if(input[i]>(16157+offset0))
{
	if(input[i]==(16159+offset0))
{
	vR[i] = 16159;
}
else
{
	vR[i] = 16158;
}

}
else
{
	if(input[i]==(16157+offset0))
{
	vR[i] = 16157;
}
else
{
	vR[i] = 16156;
}

}

}
else
{
	if(input[i]>(16153+offset0))
{
	if(input[i]==(16155+offset0))
{
	vR[i] = 16155;
}
else
{
	vR[i] = 16154;
}

}
else
{
	if(input[i]==(16153+offset0))
{
	vR[i] = 16153;
}
else
{
	vR[i] = 16152;
}

}

}

}
else
{
	if(input[i]>(16147+offset0))
{
	if(input[i]>(16149+offset0))
{
	if(input[i]==(16151+offset0))
{
	vR[i] = 16151;
}
else
{
	vR[i] = 16150;
}

}
else
{
	if(input[i]==(16149+offset0))
{
	vR[i] = 16149;
}
else
{
	vR[i] = 16148;
}

}

}
else
{
	if(input[i]>(16145+offset0))
{
	if(input[i]==(16147+offset0))
{
	vR[i] = 16147;
}
else
{
	vR[i] = 16146;
}

}
else
{
	if(input[i]==(16145+offset0))
{
	vR[i] = 16145;
}
else
{
	vR[i] = 16144;
}

}

}

}

}
else
{
	if(input[i]>(16135+offset0))
{
	if(input[i]>(16139+offset0))
{
	if(input[i]>(16141+offset0))
{
	if(input[i]==(16143+offset0))
{
	vR[i] = 16143;
}
else
{
	vR[i] = 16142;
}

}
else
{
	if(input[i]==(16141+offset0))
{
	vR[i] = 16141;
}
else
{
	vR[i] = 16140;
}

}

}
else
{
	if(input[i]>(16137+offset0))
{
	if(input[i]==(16139+offset0))
{
	vR[i] = 16139;
}
else
{
	vR[i] = 16138;
}

}
else
{
	if(input[i]==(16137+offset0))
{
	vR[i] = 16137;
}
else
{
	vR[i] = 16136;
}

}

}

}
else
{
	if(input[i]>(16131+offset0))
{
	if(input[i]>(16133+offset0))
{
	if(input[i]==(16135+offset0))
{
	vR[i] = 16135;
}
else
{
	vR[i] = 16134;
}

}
else
{
	if(input[i]==(16133+offset0))
{
	vR[i] = 16133;
}
else
{
	vR[i] = 16132;
}

}

}
else
{
	if(input[i]>(16129+offset0))
{
	if(input[i]==(16131+offset0))
{
	vR[i] = 16131;
}
else
{
	vR[i] = 16130;
}

}
else
{
	if(input[i]==(16129+offset0))
{
	vR[i] = 16129;
}
else
{
	vR[i] = 16128;
}

}

}

}

}

}

}

}

}
else
{
	if(input[i]>(15999+offset0))
{
	if(input[i]>(16063+offset0))
{
	if(input[i]>(16095+offset0))
{
	if(input[i]>(16111+offset0))
{
	if(input[i]>(16119+offset0))
{
	if(input[i]>(16123+offset0))
{
	if(input[i]>(16125+offset0))
{
	if(input[i]==(16127+offset0))
{
	vR[i] = 16127;
}
else
{
	vR[i] = 16126;
}

}
else
{
	if(input[i]==(16125+offset0))
{
	vR[i] = 16125;
}
else
{
	vR[i] = 16124;
}

}

}
else
{
	if(input[i]>(16121+offset0))
{
	if(input[i]==(16123+offset0))
{
	vR[i] = 16123;
}
else
{
	vR[i] = 16122;
}

}
else
{
	if(input[i]==(16121+offset0))
{
	vR[i] = 16121;
}
else
{
	vR[i] = 16120;
}

}

}

}
else
{
	if(input[i]>(16115+offset0))
{
	if(input[i]>(16117+offset0))
{
	if(input[i]==(16119+offset0))
{
	vR[i] = 16119;
}
else
{
	vR[i] = 16118;
}

}
else
{
	if(input[i]==(16117+offset0))
{
	vR[i] = 16117;
}
else
{
	vR[i] = 16116;
}

}

}
else
{
	if(input[i]>(16113+offset0))
{
	if(input[i]==(16115+offset0))
{
	vR[i] = 16115;
}
else
{
	vR[i] = 16114;
}

}
else
{
	if(input[i]==(16113+offset0))
{
	vR[i] = 16113;
}
else
{
	vR[i] = 16112;
}

}

}

}

}
else
{
	if(input[i]>(16103+offset0))
{
	if(input[i]>(16107+offset0))
{
	if(input[i]>(16109+offset0))
{
	if(input[i]==(16111+offset0))
{
	vR[i] = 16111;
}
else
{
	vR[i] = 16110;
}

}
else
{
	if(input[i]==(16109+offset0))
{
	vR[i] = 16109;
}
else
{
	vR[i] = 16108;
}

}

}
else
{
	if(input[i]>(16105+offset0))
{
	if(input[i]==(16107+offset0))
{
	vR[i] = 16107;
}
else
{
	vR[i] = 16106;
}

}
else
{
	if(input[i]==(16105+offset0))
{
	vR[i] = 16105;
}
else
{
	vR[i] = 16104;
}

}

}

}
else
{
	if(input[i]>(16099+offset0))
{
	if(input[i]>(16101+offset0))
{
	if(input[i]==(16103+offset0))
{
	vR[i] = 16103;
}
else
{
	vR[i] = 16102;
}

}
else
{
	if(input[i]==(16101+offset0))
{
	vR[i] = 16101;
}
else
{
	vR[i] = 16100;
}

}

}
else
{
	if(input[i]>(16097+offset0))
{
	if(input[i]==(16099+offset0))
{
	vR[i] = 16099;
}
else
{
	vR[i] = 16098;
}

}
else
{
	if(input[i]==(16097+offset0))
{
	vR[i] = 16097;
}
else
{
	vR[i] = 16096;
}

}

}

}

}

}
else
{
	if(input[i]>(16079+offset0))
{
	if(input[i]>(16087+offset0))
{
	if(input[i]>(16091+offset0))
{
	if(input[i]>(16093+offset0))
{
	if(input[i]==(16095+offset0))
{
	vR[i] = 16095;
}
else
{
	vR[i] = 16094;
}

}
else
{
	if(input[i]==(16093+offset0))
{
	vR[i] = 16093;
}
else
{
	vR[i] = 16092;
}

}

}
else
{
	if(input[i]>(16089+offset0))
{
	if(input[i]==(16091+offset0))
{
	vR[i] = 16091;
}
else
{
	vR[i] = 16090;
}

}
else
{
	if(input[i]==(16089+offset0))
{
	vR[i] = 16089;
}
else
{
	vR[i] = 16088;
}

}

}

}
else
{
	if(input[i]>(16083+offset0))
{
	if(input[i]>(16085+offset0))
{
	if(input[i]==(16087+offset0))
{
	vR[i] = 16087;
}
else
{
	vR[i] = 16086;
}

}
else
{
	if(input[i]==(16085+offset0))
{
	vR[i] = 16085;
}
else
{
	vR[i] = 16084;
}

}

}
else
{
	if(input[i]>(16081+offset0))
{
	if(input[i]==(16083+offset0))
{
	vR[i] = 16083;
}
else
{
	vR[i] = 16082;
}

}
else
{
	if(input[i]==(16081+offset0))
{
	vR[i] = 16081;
}
else
{
	vR[i] = 16080;
}

}

}

}

}
else
{
	if(input[i]>(16071+offset0))
{
	if(input[i]>(16075+offset0))
{
	if(input[i]>(16077+offset0))
{
	if(input[i]==(16079+offset0))
{
	vR[i] = 16079;
}
else
{
	vR[i] = 16078;
}

}
else
{
	if(input[i]==(16077+offset0))
{
	vR[i] = 16077;
}
else
{
	vR[i] = 16076;
}

}

}
else
{
	if(input[i]>(16073+offset0))
{
	if(input[i]==(16075+offset0))
{
	vR[i] = 16075;
}
else
{
	vR[i] = 16074;
}

}
else
{
	if(input[i]==(16073+offset0))
{
	vR[i] = 16073;
}
else
{
	vR[i] = 16072;
}

}

}

}
else
{
	if(input[i]>(16067+offset0))
{
	if(input[i]>(16069+offset0))
{
	if(input[i]==(16071+offset0))
{
	vR[i] = 16071;
}
else
{
	vR[i] = 16070;
}

}
else
{
	if(input[i]==(16069+offset0))
{
	vR[i] = 16069;
}
else
{
	vR[i] = 16068;
}

}

}
else
{
	if(input[i]>(16065+offset0))
{
	if(input[i]==(16067+offset0))
{
	vR[i] = 16067;
}
else
{
	vR[i] = 16066;
}

}
else
{
	if(input[i]==(16065+offset0))
{
	vR[i] = 16065;
}
else
{
	vR[i] = 16064;
}

}

}

}

}

}

}
else
{
	if(input[i]>(16031+offset0))
{
	if(input[i]>(16047+offset0))
{
	if(input[i]>(16055+offset0))
{
	if(input[i]>(16059+offset0))
{
	if(input[i]>(16061+offset0))
{
	if(input[i]==(16063+offset0))
{
	vR[i] = 16063;
}
else
{
	vR[i] = 16062;
}

}
else
{
	if(input[i]==(16061+offset0))
{
	vR[i] = 16061;
}
else
{
	vR[i] = 16060;
}

}

}
else
{
	if(input[i]>(16057+offset0))
{
	if(input[i]==(16059+offset0))
{
	vR[i] = 16059;
}
else
{
	vR[i] = 16058;
}

}
else
{
	if(input[i]==(16057+offset0))
{
	vR[i] = 16057;
}
else
{
	vR[i] = 16056;
}

}

}

}
else
{
	if(input[i]>(16051+offset0))
{
	if(input[i]>(16053+offset0))
{
	if(input[i]==(16055+offset0))
{
	vR[i] = 16055;
}
else
{
	vR[i] = 16054;
}

}
else
{
	if(input[i]==(16053+offset0))
{
	vR[i] = 16053;
}
else
{
	vR[i] = 16052;
}

}

}
else
{
	if(input[i]>(16049+offset0))
{
	if(input[i]==(16051+offset0))
{
	vR[i] = 16051;
}
else
{
	vR[i] = 16050;
}

}
else
{
	if(input[i]==(16049+offset0))
{
	vR[i] = 16049;
}
else
{
	vR[i] = 16048;
}

}

}

}

}
else
{
	if(input[i]>(16039+offset0))
{
	if(input[i]>(16043+offset0))
{
	if(input[i]>(16045+offset0))
{
	if(input[i]==(16047+offset0))
{
	vR[i] = 16047;
}
else
{
	vR[i] = 16046;
}

}
else
{
	if(input[i]==(16045+offset0))
{
	vR[i] = 16045;
}
else
{
	vR[i] = 16044;
}

}

}
else
{
	if(input[i]>(16041+offset0))
{
	if(input[i]==(16043+offset0))
{
	vR[i] = 16043;
}
else
{
	vR[i] = 16042;
}

}
else
{
	if(input[i]==(16041+offset0))
{
	vR[i] = 16041;
}
else
{
	vR[i] = 16040;
}

}

}

}
else
{
	if(input[i]>(16035+offset0))
{
	if(input[i]>(16037+offset0))
{
	if(input[i]==(16039+offset0))
{
	vR[i] = 16039;
}
else
{
	vR[i] = 16038;
}

}
else
{
	if(input[i]==(16037+offset0))
{
	vR[i] = 16037;
}
else
{
	vR[i] = 16036;
}

}

}
else
{
	if(input[i]>(16033+offset0))
{
	if(input[i]==(16035+offset0))
{
	vR[i] = 16035;
}
else
{
	vR[i] = 16034;
}

}
else
{
	if(input[i]==(16033+offset0))
{
	vR[i] = 16033;
}
else
{
	vR[i] = 16032;
}

}

}

}

}

}
else
{
	if(input[i]>(16015+offset0))
{
	if(input[i]>(16023+offset0))
{
	if(input[i]>(16027+offset0))
{
	if(input[i]>(16029+offset0))
{
	if(input[i]==(16031+offset0))
{
	vR[i] = 16031;
}
else
{
	vR[i] = 16030;
}

}
else
{
	if(input[i]==(16029+offset0))
{
	vR[i] = 16029;
}
else
{
	vR[i] = 16028;
}

}

}
else
{
	if(input[i]>(16025+offset0))
{
	if(input[i]==(16027+offset0))
{
	vR[i] = 16027;
}
else
{
	vR[i] = 16026;
}

}
else
{
	if(input[i]==(16025+offset0))
{
	vR[i] = 16025;
}
else
{
	vR[i] = 16024;
}

}

}

}
else
{
	if(input[i]>(16019+offset0))
{
	if(input[i]>(16021+offset0))
{
	if(input[i]==(16023+offset0))
{
	vR[i] = 16023;
}
else
{
	vR[i] = 16022;
}

}
else
{
	if(input[i]==(16021+offset0))
{
	vR[i] = 16021;
}
else
{
	vR[i] = 16020;
}

}

}
else
{
	if(input[i]>(16017+offset0))
{
	if(input[i]==(16019+offset0))
{
	vR[i] = 16019;
}
else
{
	vR[i] = 16018;
}

}
else
{
	if(input[i]==(16017+offset0))
{
	vR[i] = 16017;
}
else
{
	vR[i] = 16016;
}

}

}

}

}
else
{
	if(input[i]>(16007+offset0))
{
	if(input[i]>(16011+offset0))
{
	if(input[i]>(16013+offset0))
{
	if(input[i]==(16015+offset0))
{
	vR[i] = 16015;
}
else
{
	vR[i] = 16014;
}

}
else
{
	if(input[i]==(16013+offset0))
{
	vR[i] = 16013;
}
else
{
	vR[i] = 16012;
}

}

}
else
{
	if(input[i]>(16009+offset0))
{
	if(input[i]==(16011+offset0))
{
	vR[i] = 16011;
}
else
{
	vR[i] = 16010;
}

}
else
{
	if(input[i]==(16009+offset0))
{
	vR[i] = 16009;
}
else
{
	vR[i] = 16008;
}

}

}

}
else
{
	if(input[i]>(16003+offset0))
{
	if(input[i]>(16005+offset0))
{
	if(input[i]==(16007+offset0))
{
	vR[i] = 16007;
}
else
{
	vR[i] = 16006;
}

}
else
{
	if(input[i]==(16005+offset0))
{
	vR[i] = 16005;
}
else
{
	vR[i] = 16004;
}

}

}
else
{
	if(input[i]>(16001+offset0))
{
	if(input[i]==(16003+offset0))
{
	vR[i] = 16003;
}
else
{
	vR[i] = 16002;
}

}
else
{
	if(input[i]==(16001+offset0))
{
	vR[i] = 16001;
}
else
{
	vR[i] = 16000;
}

}

}

}

}

}

}

}
else
{
	if(input[i]>(15935+offset0))
{
	if(input[i]>(15967+offset0))
{
	if(input[i]>(15983+offset0))
{
	if(input[i]>(15991+offset0))
{
	if(input[i]>(15995+offset0))
{
	if(input[i]>(15997+offset0))
{
	if(input[i]==(15999+offset0))
{
	vR[i] = 15999;
}
else
{
	vR[i] = 15998;
}

}
else
{
	if(input[i]==(15997+offset0))
{
	vR[i] = 15997;
}
else
{
	vR[i] = 15996;
}

}

}
else
{
	if(input[i]>(15993+offset0))
{
	if(input[i]==(15995+offset0))
{
	vR[i] = 15995;
}
else
{
	vR[i] = 15994;
}

}
else
{
	if(input[i]==(15993+offset0))
{
	vR[i] = 15993;
}
else
{
	vR[i] = 15992;
}

}

}

}
else
{
	if(input[i]>(15987+offset0))
{
	if(input[i]>(15989+offset0))
{
	if(input[i]==(15991+offset0))
{
	vR[i] = 15991;
}
else
{
	vR[i] = 15990;
}

}
else
{
	if(input[i]==(15989+offset0))
{
	vR[i] = 15989;
}
else
{
	vR[i] = 15988;
}

}

}
else
{
	if(input[i]>(15985+offset0))
{
	if(input[i]==(15987+offset0))
{
	vR[i] = 15987;
}
else
{
	vR[i] = 15986;
}

}
else
{
	if(input[i]==(15985+offset0))
{
	vR[i] = 15985;
}
else
{
	vR[i] = 15984;
}

}

}

}

}
else
{
	if(input[i]>(15975+offset0))
{
	if(input[i]>(15979+offset0))
{
	if(input[i]>(15981+offset0))
{
	if(input[i]==(15983+offset0))
{
	vR[i] = 15983;
}
else
{
	vR[i] = 15982;
}

}
else
{
	if(input[i]==(15981+offset0))
{
	vR[i] = 15981;
}
else
{
	vR[i] = 15980;
}

}

}
else
{
	if(input[i]>(15977+offset0))
{
	if(input[i]==(15979+offset0))
{
	vR[i] = 15979;
}
else
{
	vR[i] = 15978;
}

}
else
{
	if(input[i]==(15977+offset0))
{
	vR[i] = 15977;
}
else
{
	vR[i] = 15976;
}

}

}

}
else
{
	if(input[i]>(15971+offset0))
{
	if(input[i]>(15973+offset0))
{
	if(input[i]==(15975+offset0))
{
	vR[i] = 15975;
}
else
{
	vR[i] = 15974;
}

}
else
{
	if(input[i]==(15973+offset0))
{
	vR[i] = 15973;
}
else
{
	vR[i] = 15972;
}

}

}
else
{
	if(input[i]>(15969+offset0))
{
	if(input[i]==(15971+offset0))
{
	vR[i] = 15971;
}
else
{
	vR[i] = 15970;
}

}
else
{
	if(input[i]==(15969+offset0))
{
	vR[i] = 15969;
}
else
{
	vR[i] = 15968;
}

}

}

}

}

}
else
{
	if(input[i]>(15951+offset0))
{
	if(input[i]>(15959+offset0))
{
	if(input[i]>(15963+offset0))
{
	if(input[i]>(15965+offset0))
{
	if(input[i]==(15967+offset0))
{
	vR[i] = 15967;
}
else
{
	vR[i] = 15966;
}

}
else
{
	if(input[i]==(15965+offset0))
{
	vR[i] = 15965;
}
else
{
	vR[i] = 15964;
}

}

}
else
{
	if(input[i]>(15961+offset0))
{
	if(input[i]==(15963+offset0))
{
	vR[i] = 15963;
}
else
{
	vR[i] = 15962;
}

}
else
{
	if(input[i]==(15961+offset0))
{
	vR[i] = 15961;
}
else
{
	vR[i] = 15960;
}

}

}

}
else
{
	if(input[i]>(15955+offset0))
{
	if(input[i]>(15957+offset0))
{
	if(input[i]==(15959+offset0))
{
	vR[i] = 15959;
}
else
{
	vR[i] = 15958;
}

}
else
{
	if(input[i]==(15957+offset0))
{
	vR[i] = 15957;
}
else
{
	vR[i] = 15956;
}

}

}
else
{
	if(input[i]>(15953+offset0))
{
	if(input[i]==(15955+offset0))
{
	vR[i] = 15955;
}
else
{
	vR[i] = 15954;
}

}
else
{
	if(input[i]==(15953+offset0))
{
	vR[i] = 15953;
}
else
{
	vR[i] = 15952;
}

}

}

}

}
else
{
	if(input[i]>(15943+offset0))
{
	if(input[i]>(15947+offset0))
{
	if(input[i]>(15949+offset0))
{
	if(input[i]==(15951+offset0))
{
	vR[i] = 15951;
}
else
{
	vR[i] = 15950;
}

}
else
{
	if(input[i]==(15949+offset0))
{
	vR[i] = 15949;
}
else
{
	vR[i] = 15948;
}

}

}
else
{
	if(input[i]>(15945+offset0))
{
	if(input[i]==(15947+offset0))
{
	vR[i] = 15947;
}
else
{
	vR[i] = 15946;
}

}
else
{
	if(input[i]==(15945+offset0))
{
	vR[i] = 15945;
}
else
{
	vR[i] = 15944;
}

}

}

}
else
{
	if(input[i]>(15939+offset0))
{
	if(input[i]>(15941+offset0))
{
	if(input[i]==(15943+offset0))
{
	vR[i] = 15943;
}
else
{
	vR[i] = 15942;
}

}
else
{
	if(input[i]==(15941+offset0))
{
	vR[i] = 15941;
}
else
{
	vR[i] = 15940;
}

}

}
else
{
	if(input[i]>(15937+offset0))
{
	if(input[i]==(15939+offset0))
{
	vR[i] = 15939;
}
else
{
	vR[i] = 15938;
}

}
else
{
	if(input[i]==(15937+offset0))
{
	vR[i] = 15937;
}
else
{
	vR[i] = 15936;
}

}

}

}

}

}

}
else
{
	if(input[i]>(15903+offset0))
{
	if(input[i]>(15919+offset0))
{
	if(input[i]>(15927+offset0))
{
	if(input[i]>(15931+offset0))
{
	if(input[i]>(15933+offset0))
{
	if(input[i]==(15935+offset0))
{
	vR[i] = 15935;
}
else
{
	vR[i] = 15934;
}

}
else
{
	if(input[i]==(15933+offset0))
{
	vR[i] = 15933;
}
else
{
	vR[i] = 15932;
}

}

}
else
{
	if(input[i]>(15929+offset0))
{
	if(input[i]==(15931+offset0))
{
	vR[i] = 15931;
}
else
{
	vR[i] = 15930;
}

}
else
{
	if(input[i]==(15929+offset0))
{
	vR[i] = 15929;
}
else
{
	vR[i] = 15928;
}

}

}

}
else
{
	if(input[i]>(15923+offset0))
{
	if(input[i]>(15925+offset0))
{
	if(input[i]==(15927+offset0))
{
	vR[i] = 15927;
}
else
{
	vR[i] = 15926;
}

}
else
{
	if(input[i]==(15925+offset0))
{
	vR[i] = 15925;
}
else
{
	vR[i] = 15924;
}

}

}
else
{
	if(input[i]>(15921+offset0))
{
	if(input[i]==(15923+offset0))
{
	vR[i] = 15923;
}
else
{
	vR[i] = 15922;
}

}
else
{
	if(input[i]==(15921+offset0))
{
	vR[i] = 15921;
}
else
{
	vR[i] = 15920;
}

}

}

}

}
else
{
	if(input[i]>(15911+offset0))
{
	if(input[i]>(15915+offset0))
{
	if(input[i]>(15917+offset0))
{
	if(input[i]==(15919+offset0))
{
	vR[i] = 15919;
}
else
{
	vR[i] = 15918;
}

}
else
{
	if(input[i]==(15917+offset0))
{
	vR[i] = 15917;
}
else
{
	vR[i] = 15916;
}

}

}
else
{
	if(input[i]>(15913+offset0))
{
	if(input[i]==(15915+offset0))
{
	vR[i] = 15915;
}
else
{
	vR[i] = 15914;
}

}
else
{
	if(input[i]==(15913+offset0))
{
	vR[i] = 15913;
}
else
{
	vR[i] = 15912;
}

}

}

}
else
{
	if(input[i]>(15907+offset0))
{
	if(input[i]>(15909+offset0))
{
	if(input[i]==(15911+offset0))
{
	vR[i] = 15911;
}
else
{
	vR[i] = 15910;
}

}
else
{
	if(input[i]==(15909+offset0))
{
	vR[i] = 15909;
}
else
{
	vR[i] = 15908;
}

}

}
else
{
	if(input[i]>(15905+offset0))
{
	if(input[i]==(15907+offset0))
{
	vR[i] = 15907;
}
else
{
	vR[i] = 15906;
}

}
else
{
	if(input[i]==(15905+offset0))
{
	vR[i] = 15905;
}
else
{
	vR[i] = 15904;
}

}

}

}

}

}
else
{
	if(input[i]>(15887+offset0))
{
	if(input[i]>(15895+offset0))
{
	if(input[i]>(15899+offset0))
{
	if(input[i]>(15901+offset0))
{
	if(input[i]==(15903+offset0))
{
	vR[i] = 15903;
}
else
{
	vR[i] = 15902;
}

}
else
{
	if(input[i]==(15901+offset0))
{
	vR[i] = 15901;
}
else
{
	vR[i] = 15900;
}

}

}
else
{
	if(input[i]>(15897+offset0))
{
	if(input[i]==(15899+offset0))
{
	vR[i] = 15899;
}
else
{
	vR[i] = 15898;
}

}
else
{
	if(input[i]==(15897+offset0))
{
	vR[i] = 15897;
}
else
{
	vR[i] = 15896;
}

}

}

}
else
{
	if(input[i]>(15891+offset0))
{
	if(input[i]>(15893+offset0))
{
	if(input[i]==(15895+offset0))
{
	vR[i] = 15895;
}
else
{
	vR[i] = 15894;
}

}
else
{
	if(input[i]==(15893+offset0))
{
	vR[i] = 15893;
}
else
{
	vR[i] = 15892;
}

}

}
else
{
	if(input[i]>(15889+offset0))
{
	if(input[i]==(15891+offset0))
{
	vR[i] = 15891;
}
else
{
	vR[i] = 15890;
}

}
else
{
	if(input[i]==(15889+offset0))
{
	vR[i] = 15889;
}
else
{
	vR[i] = 15888;
}

}

}

}

}
else
{
	if(input[i]>(15879+offset0))
{
	if(input[i]>(15883+offset0))
{
	if(input[i]>(15885+offset0))
{
	if(input[i]==(15887+offset0))
{
	vR[i] = 15887;
}
else
{
	vR[i] = 15886;
}

}
else
{
	if(input[i]==(15885+offset0))
{
	vR[i] = 15885;
}
else
{
	vR[i] = 15884;
}

}

}
else
{
	if(input[i]>(15881+offset0))
{
	if(input[i]==(15883+offset0))
{
	vR[i] = 15883;
}
else
{
	vR[i] = 15882;
}

}
else
{
	if(input[i]==(15881+offset0))
{
	vR[i] = 15881;
}
else
{
	vR[i] = 15880;
}

}

}

}
else
{
	if(input[i]>(15875+offset0))
{
	if(input[i]>(15877+offset0))
{
	if(input[i]==(15879+offset0))
{
	vR[i] = 15879;
}
else
{
	vR[i] = 15878;
}

}
else
{
	if(input[i]==(15877+offset0))
{
	vR[i] = 15877;
}
else
{
	vR[i] = 15876;
}

}

}
else
{
	if(input[i]>(15873+offset0))
{
	if(input[i]==(15875+offset0))
{
	vR[i] = 15875;
}
else
{
	vR[i] = 15874;
}

}
else
{
	if(input[i]==(15873+offset0))
{
	vR[i] = 15873;
}
else
{
	vR[i] = 15872;
}

}

}

}

}

}

}

}

}

}
else
{
	if(input[i]>(15615+offset0))
{
	if(input[i]>(15743+offset0))
{
	if(input[i]>(15807+offset0))
{
	if(input[i]>(15839+offset0))
{
	if(input[i]>(15855+offset0))
{
	if(input[i]>(15863+offset0))
{
	if(input[i]>(15867+offset0))
{
	if(input[i]>(15869+offset0))
{
	if(input[i]==(15871+offset0))
{
	vR[i] = 15871;
}
else
{
	vR[i] = 15870;
}

}
else
{
	if(input[i]==(15869+offset0))
{
	vR[i] = 15869;
}
else
{
	vR[i] = 15868;
}

}

}
else
{
	if(input[i]>(15865+offset0))
{
	if(input[i]==(15867+offset0))
{
	vR[i] = 15867;
}
else
{
	vR[i] = 15866;
}

}
else
{
	if(input[i]==(15865+offset0))
{
	vR[i] = 15865;
}
else
{
	vR[i] = 15864;
}

}

}

}
else
{
	if(input[i]>(15859+offset0))
{
	if(input[i]>(15861+offset0))
{
	if(input[i]==(15863+offset0))
{
	vR[i] = 15863;
}
else
{
	vR[i] = 15862;
}

}
else
{
	if(input[i]==(15861+offset0))
{
	vR[i] = 15861;
}
else
{
	vR[i] = 15860;
}

}

}
else
{
	if(input[i]>(15857+offset0))
{
	if(input[i]==(15859+offset0))
{
	vR[i] = 15859;
}
else
{
	vR[i] = 15858;
}

}
else
{
	if(input[i]==(15857+offset0))
{
	vR[i] = 15857;
}
else
{
	vR[i] = 15856;
}

}

}

}

}
else
{
	if(input[i]>(15847+offset0))
{
	if(input[i]>(15851+offset0))
{
	if(input[i]>(15853+offset0))
{
	if(input[i]==(15855+offset0))
{
	vR[i] = 15855;
}
else
{
	vR[i] = 15854;
}

}
else
{
	if(input[i]==(15853+offset0))
{
	vR[i] = 15853;
}
else
{
	vR[i] = 15852;
}

}

}
else
{
	if(input[i]>(15849+offset0))
{
	if(input[i]==(15851+offset0))
{
	vR[i] = 15851;
}
else
{
	vR[i] = 15850;
}

}
else
{
	if(input[i]==(15849+offset0))
{
	vR[i] = 15849;
}
else
{
	vR[i] = 15848;
}

}

}

}
else
{
	if(input[i]>(15843+offset0))
{
	if(input[i]>(15845+offset0))
{
	if(input[i]==(15847+offset0))
{
	vR[i] = 15847;
}
else
{
	vR[i] = 15846;
}

}
else
{
	if(input[i]==(15845+offset0))
{
	vR[i] = 15845;
}
else
{
	vR[i] = 15844;
}

}

}
else
{
	if(input[i]>(15841+offset0))
{
	if(input[i]==(15843+offset0))
{
	vR[i] = 15843;
}
else
{
	vR[i] = 15842;
}

}
else
{
	if(input[i]==(15841+offset0))
{
	vR[i] = 15841;
}
else
{
	vR[i] = 15840;
}

}

}

}

}

}
else
{
	if(input[i]>(15823+offset0))
{
	if(input[i]>(15831+offset0))
{
	if(input[i]>(15835+offset0))
{
	if(input[i]>(15837+offset0))
{
	if(input[i]==(15839+offset0))
{
	vR[i] = 15839;
}
else
{
	vR[i] = 15838;
}

}
else
{
	if(input[i]==(15837+offset0))
{
	vR[i] = 15837;
}
else
{
	vR[i] = 15836;
}

}

}
else
{
	if(input[i]>(15833+offset0))
{
	if(input[i]==(15835+offset0))
{
	vR[i] = 15835;
}
else
{
	vR[i] = 15834;
}

}
else
{
	if(input[i]==(15833+offset0))
{
	vR[i] = 15833;
}
else
{
	vR[i] = 15832;
}

}

}

}
else
{
	if(input[i]>(15827+offset0))
{
	if(input[i]>(15829+offset0))
{
	if(input[i]==(15831+offset0))
{
	vR[i] = 15831;
}
else
{
	vR[i] = 15830;
}

}
else
{
	if(input[i]==(15829+offset0))
{
	vR[i] = 15829;
}
else
{
	vR[i] = 15828;
}

}

}
else
{
	if(input[i]>(15825+offset0))
{
	if(input[i]==(15827+offset0))
{
	vR[i] = 15827;
}
else
{
	vR[i] = 15826;
}

}
else
{
	if(input[i]==(15825+offset0))
{
	vR[i] = 15825;
}
else
{
	vR[i] = 15824;
}

}

}

}

}
else
{
	if(input[i]>(15815+offset0))
{
	if(input[i]>(15819+offset0))
{
	if(input[i]>(15821+offset0))
{
	if(input[i]==(15823+offset0))
{
	vR[i] = 15823;
}
else
{
	vR[i] = 15822;
}

}
else
{
	if(input[i]==(15821+offset0))
{
	vR[i] = 15821;
}
else
{
	vR[i] = 15820;
}

}

}
else
{
	if(input[i]>(15817+offset0))
{
	if(input[i]==(15819+offset0))
{
	vR[i] = 15819;
}
else
{
	vR[i] = 15818;
}

}
else
{
	if(input[i]==(15817+offset0))
{
	vR[i] = 15817;
}
else
{
	vR[i] = 15816;
}

}

}

}
else
{
	if(input[i]>(15811+offset0))
{
	if(input[i]>(15813+offset0))
{
	if(input[i]==(15815+offset0))
{
	vR[i] = 15815;
}
else
{
	vR[i] = 15814;
}

}
else
{
	if(input[i]==(15813+offset0))
{
	vR[i] = 15813;
}
else
{
	vR[i] = 15812;
}

}

}
else
{
	if(input[i]>(15809+offset0))
{
	if(input[i]==(15811+offset0))
{
	vR[i] = 15811;
}
else
{
	vR[i] = 15810;
}

}
else
{
	if(input[i]==(15809+offset0))
{
	vR[i] = 15809;
}
else
{
	vR[i] = 15808;
}

}

}

}

}

}

}
else
{
	if(input[i]>(15775+offset0))
{
	if(input[i]>(15791+offset0))
{
	if(input[i]>(15799+offset0))
{
	if(input[i]>(15803+offset0))
{
	if(input[i]>(15805+offset0))
{
	if(input[i]==(15807+offset0))
{
	vR[i] = 15807;
}
else
{
	vR[i] = 15806;
}

}
else
{
	if(input[i]==(15805+offset0))
{
	vR[i] = 15805;
}
else
{
	vR[i] = 15804;
}

}

}
else
{
	if(input[i]>(15801+offset0))
{
	if(input[i]==(15803+offset0))
{
	vR[i] = 15803;
}
else
{
	vR[i] = 15802;
}

}
else
{
	if(input[i]==(15801+offset0))
{
	vR[i] = 15801;
}
else
{
	vR[i] = 15800;
}

}

}

}
else
{
	if(input[i]>(15795+offset0))
{
	if(input[i]>(15797+offset0))
{
	if(input[i]==(15799+offset0))
{
	vR[i] = 15799;
}
else
{
	vR[i] = 15798;
}

}
else
{
	if(input[i]==(15797+offset0))
{
	vR[i] = 15797;
}
else
{
	vR[i] = 15796;
}

}

}
else
{
	if(input[i]>(15793+offset0))
{
	if(input[i]==(15795+offset0))
{
	vR[i] = 15795;
}
else
{
	vR[i] = 15794;
}

}
else
{
	if(input[i]==(15793+offset0))
{
	vR[i] = 15793;
}
else
{
	vR[i] = 15792;
}

}

}

}

}
else
{
	if(input[i]>(15783+offset0))
{
	if(input[i]>(15787+offset0))
{
	if(input[i]>(15789+offset0))
{
	if(input[i]==(15791+offset0))
{
	vR[i] = 15791;
}
else
{
	vR[i] = 15790;
}

}
else
{
	if(input[i]==(15789+offset0))
{
	vR[i] = 15789;
}
else
{
	vR[i] = 15788;
}

}

}
else
{
	if(input[i]>(15785+offset0))
{
	if(input[i]==(15787+offset0))
{
	vR[i] = 15787;
}
else
{
	vR[i] = 15786;
}

}
else
{
	if(input[i]==(15785+offset0))
{
	vR[i] = 15785;
}
else
{
	vR[i] = 15784;
}

}

}

}
else
{
	if(input[i]>(15779+offset0))
{
	if(input[i]>(15781+offset0))
{
	if(input[i]==(15783+offset0))
{
	vR[i] = 15783;
}
else
{
	vR[i] = 15782;
}

}
else
{
	if(input[i]==(15781+offset0))
{
	vR[i] = 15781;
}
else
{
	vR[i] = 15780;
}

}

}
else
{
	if(input[i]>(15777+offset0))
{
	if(input[i]==(15779+offset0))
{
	vR[i] = 15779;
}
else
{
	vR[i] = 15778;
}

}
else
{
	if(input[i]==(15777+offset0))
{
	vR[i] = 15777;
}
else
{
	vR[i] = 15776;
}

}

}

}

}

}
else
{
	if(input[i]>(15759+offset0))
{
	if(input[i]>(15767+offset0))
{
	if(input[i]>(15771+offset0))
{
	if(input[i]>(15773+offset0))
{
	if(input[i]==(15775+offset0))
{
	vR[i] = 15775;
}
else
{
	vR[i] = 15774;
}

}
else
{
	if(input[i]==(15773+offset0))
{
	vR[i] = 15773;
}
else
{
	vR[i] = 15772;
}

}

}
else
{
	if(input[i]>(15769+offset0))
{
	if(input[i]==(15771+offset0))
{
	vR[i] = 15771;
}
else
{
	vR[i] = 15770;
}

}
else
{
	if(input[i]==(15769+offset0))
{
	vR[i] = 15769;
}
else
{
	vR[i] = 15768;
}

}

}

}
else
{
	if(input[i]>(15763+offset0))
{
	if(input[i]>(15765+offset0))
{
	if(input[i]==(15767+offset0))
{
	vR[i] = 15767;
}
else
{
	vR[i] = 15766;
}

}
else
{
	if(input[i]==(15765+offset0))
{
	vR[i] = 15765;
}
else
{
	vR[i] = 15764;
}

}

}
else
{
	if(input[i]>(15761+offset0))
{
	if(input[i]==(15763+offset0))
{
	vR[i] = 15763;
}
else
{
	vR[i] = 15762;
}

}
else
{
	if(input[i]==(15761+offset0))
{
	vR[i] = 15761;
}
else
{
	vR[i] = 15760;
}

}

}

}

}
else
{
	if(input[i]>(15751+offset0))
{
	if(input[i]>(15755+offset0))
{
	if(input[i]>(15757+offset0))
{
	if(input[i]==(15759+offset0))
{
	vR[i] = 15759;
}
else
{
	vR[i] = 15758;
}

}
else
{
	if(input[i]==(15757+offset0))
{
	vR[i] = 15757;
}
else
{
	vR[i] = 15756;
}

}

}
else
{
	if(input[i]>(15753+offset0))
{
	if(input[i]==(15755+offset0))
{
	vR[i] = 15755;
}
else
{
	vR[i] = 15754;
}

}
else
{
	if(input[i]==(15753+offset0))
{
	vR[i] = 15753;
}
else
{
	vR[i] = 15752;
}

}

}

}
else
{
	if(input[i]>(15747+offset0))
{
	if(input[i]>(15749+offset0))
{
	if(input[i]==(15751+offset0))
{
	vR[i] = 15751;
}
else
{
	vR[i] = 15750;
}

}
else
{
	if(input[i]==(15749+offset0))
{
	vR[i] = 15749;
}
else
{
	vR[i] = 15748;
}

}

}
else
{
	if(input[i]>(15745+offset0))
{
	if(input[i]==(15747+offset0))
{
	vR[i] = 15747;
}
else
{
	vR[i] = 15746;
}

}
else
{
	if(input[i]==(15745+offset0))
{
	vR[i] = 15745;
}
else
{
	vR[i] = 15744;
}

}

}

}

}

}

}

}
else
{
	if(input[i]>(15679+offset0))
{
	if(input[i]>(15711+offset0))
{
	if(input[i]>(15727+offset0))
{
	if(input[i]>(15735+offset0))
{
	if(input[i]>(15739+offset0))
{
	if(input[i]>(15741+offset0))
{
	if(input[i]==(15743+offset0))
{
	vR[i] = 15743;
}
else
{
	vR[i] = 15742;
}

}
else
{
	if(input[i]==(15741+offset0))
{
	vR[i] = 15741;
}
else
{
	vR[i] = 15740;
}

}

}
else
{
	if(input[i]>(15737+offset0))
{
	if(input[i]==(15739+offset0))
{
	vR[i] = 15739;
}
else
{
	vR[i] = 15738;
}

}
else
{
	if(input[i]==(15737+offset0))
{
	vR[i] = 15737;
}
else
{
	vR[i] = 15736;
}

}

}

}
else
{
	if(input[i]>(15731+offset0))
{
	if(input[i]>(15733+offset0))
{
	if(input[i]==(15735+offset0))
{
	vR[i] = 15735;
}
else
{
	vR[i] = 15734;
}

}
else
{
	if(input[i]==(15733+offset0))
{
	vR[i] = 15733;
}
else
{
	vR[i] = 15732;
}

}

}
else
{
	if(input[i]>(15729+offset0))
{
	if(input[i]==(15731+offset0))
{
	vR[i] = 15731;
}
else
{
	vR[i] = 15730;
}

}
else
{
	if(input[i]==(15729+offset0))
{
	vR[i] = 15729;
}
else
{
	vR[i] = 15728;
}

}

}

}

}
else
{
	if(input[i]>(15719+offset0))
{
	if(input[i]>(15723+offset0))
{
	if(input[i]>(15725+offset0))
{
	if(input[i]==(15727+offset0))
{
	vR[i] = 15727;
}
else
{
	vR[i] = 15726;
}

}
else
{
	if(input[i]==(15725+offset0))
{
	vR[i] = 15725;
}
else
{
	vR[i] = 15724;
}

}

}
else
{
	if(input[i]>(15721+offset0))
{
	if(input[i]==(15723+offset0))
{
	vR[i] = 15723;
}
else
{
	vR[i] = 15722;
}

}
else
{
	if(input[i]==(15721+offset0))
{
	vR[i] = 15721;
}
else
{
	vR[i] = 15720;
}

}

}

}
else
{
	if(input[i]>(15715+offset0))
{
	if(input[i]>(15717+offset0))
{
	if(input[i]==(15719+offset0))
{
	vR[i] = 15719;
}
else
{
	vR[i] = 15718;
}

}
else
{
	if(input[i]==(15717+offset0))
{
	vR[i] = 15717;
}
else
{
	vR[i] = 15716;
}

}

}
else
{
	if(input[i]>(15713+offset0))
{
	if(input[i]==(15715+offset0))
{
	vR[i] = 15715;
}
else
{
	vR[i] = 15714;
}

}
else
{
	if(input[i]==(15713+offset0))
{
	vR[i] = 15713;
}
else
{
	vR[i] = 15712;
}

}

}

}

}

}
else
{
	if(input[i]>(15695+offset0))
{
	if(input[i]>(15703+offset0))
{
	if(input[i]>(15707+offset0))
{
	if(input[i]>(15709+offset0))
{
	if(input[i]==(15711+offset0))
{
	vR[i] = 15711;
}
else
{
	vR[i] = 15710;
}

}
else
{
	if(input[i]==(15709+offset0))
{
	vR[i] = 15709;
}
else
{
	vR[i] = 15708;
}

}

}
else
{
	if(input[i]>(15705+offset0))
{
	if(input[i]==(15707+offset0))
{
	vR[i] = 15707;
}
else
{
	vR[i] = 15706;
}

}
else
{
	if(input[i]==(15705+offset0))
{
	vR[i] = 15705;
}
else
{
	vR[i] = 15704;
}

}

}

}
else
{
	if(input[i]>(15699+offset0))
{
	if(input[i]>(15701+offset0))
{
	if(input[i]==(15703+offset0))
{
	vR[i] = 15703;
}
else
{
	vR[i] = 15702;
}

}
else
{
	if(input[i]==(15701+offset0))
{
	vR[i] = 15701;
}
else
{
	vR[i] = 15700;
}

}

}
else
{
	if(input[i]>(15697+offset0))
{
	if(input[i]==(15699+offset0))
{
	vR[i] = 15699;
}
else
{
	vR[i] = 15698;
}

}
else
{
	if(input[i]==(15697+offset0))
{
	vR[i] = 15697;
}
else
{
	vR[i] = 15696;
}

}

}

}

}
else
{
	if(input[i]>(15687+offset0))
{
	if(input[i]>(15691+offset0))
{
	if(input[i]>(15693+offset0))
{
	if(input[i]==(15695+offset0))
{
	vR[i] = 15695;
}
else
{
	vR[i] = 15694;
}

}
else
{
	if(input[i]==(15693+offset0))
{
	vR[i] = 15693;
}
else
{
	vR[i] = 15692;
}

}

}
else
{
	if(input[i]>(15689+offset0))
{
	if(input[i]==(15691+offset0))
{
	vR[i] = 15691;
}
else
{
	vR[i] = 15690;
}

}
else
{
	if(input[i]==(15689+offset0))
{
	vR[i] = 15689;
}
else
{
	vR[i] = 15688;
}

}

}

}
else
{
	if(input[i]>(15683+offset0))
{
	if(input[i]>(15685+offset0))
{
	if(input[i]==(15687+offset0))
{
	vR[i] = 15687;
}
else
{
	vR[i] = 15686;
}

}
else
{
	if(input[i]==(15685+offset0))
{
	vR[i] = 15685;
}
else
{
	vR[i] = 15684;
}

}

}
else
{
	if(input[i]>(15681+offset0))
{
	if(input[i]==(15683+offset0))
{
	vR[i] = 15683;
}
else
{
	vR[i] = 15682;
}

}
else
{
	if(input[i]==(15681+offset0))
{
	vR[i] = 15681;
}
else
{
	vR[i] = 15680;
}

}

}

}

}

}

}
else
{
	if(input[i]>(15647+offset0))
{
	if(input[i]>(15663+offset0))
{
	if(input[i]>(15671+offset0))
{
	if(input[i]>(15675+offset0))
{
	if(input[i]>(15677+offset0))
{
	if(input[i]==(15679+offset0))
{
	vR[i] = 15679;
}
else
{
	vR[i] = 15678;
}

}
else
{
	if(input[i]==(15677+offset0))
{
	vR[i] = 15677;
}
else
{
	vR[i] = 15676;
}

}

}
else
{
	if(input[i]>(15673+offset0))
{
	if(input[i]==(15675+offset0))
{
	vR[i] = 15675;
}
else
{
	vR[i] = 15674;
}

}
else
{
	if(input[i]==(15673+offset0))
{
	vR[i] = 15673;
}
else
{
	vR[i] = 15672;
}

}

}

}
else
{
	if(input[i]>(15667+offset0))
{
	if(input[i]>(15669+offset0))
{
	if(input[i]==(15671+offset0))
{
	vR[i] = 15671;
}
else
{
	vR[i] = 15670;
}

}
else
{
	if(input[i]==(15669+offset0))
{
	vR[i] = 15669;
}
else
{
	vR[i] = 15668;
}

}

}
else
{
	if(input[i]>(15665+offset0))
{
	if(input[i]==(15667+offset0))
{
	vR[i] = 15667;
}
else
{
	vR[i] = 15666;
}

}
else
{
	if(input[i]==(15665+offset0))
{
	vR[i] = 15665;
}
else
{
	vR[i] = 15664;
}

}

}

}

}
else
{
	if(input[i]>(15655+offset0))
{
	if(input[i]>(15659+offset0))
{
	if(input[i]>(15661+offset0))
{
	if(input[i]==(15663+offset0))
{
	vR[i] = 15663;
}
else
{
	vR[i] = 15662;
}

}
else
{
	if(input[i]==(15661+offset0))
{
	vR[i] = 15661;
}
else
{
	vR[i] = 15660;
}

}

}
else
{
	if(input[i]>(15657+offset0))
{
	if(input[i]==(15659+offset0))
{
	vR[i] = 15659;
}
else
{
	vR[i] = 15658;
}

}
else
{
	if(input[i]==(15657+offset0))
{
	vR[i] = 15657;
}
else
{
	vR[i] = 15656;
}

}

}

}
else
{
	if(input[i]>(15651+offset0))
{
	if(input[i]>(15653+offset0))
{
	if(input[i]==(15655+offset0))
{
	vR[i] = 15655;
}
else
{
	vR[i] = 15654;
}

}
else
{
	if(input[i]==(15653+offset0))
{
	vR[i] = 15653;
}
else
{
	vR[i] = 15652;
}

}

}
else
{
	if(input[i]>(15649+offset0))
{
	if(input[i]==(15651+offset0))
{
	vR[i] = 15651;
}
else
{
	vR[i] = 15650;
}

}
else
{
	if(input[i]==(15649+offset0))
{
	vR[i] = 15649;
}
else
{
	vR[i] = 15648;
}

}

}

}

}

}
else
{
	if(input[i]>(15631+offset0))
{
	if(input[i]>(15639+offset0))
{
	if(input[i]>(15643+offset0))
{
	if(input[i]>(15645+offset0))
{
	if(input[i]==(15647+offset0))
{
	vR[i] = 15647;
}
else
{
	vR[i] = 15646;
}

}
else
{
	if(input[i]==(15645+offset0))
{
	vR[i] = 15645;
}
else
{
	vR[i] = 15644;
}

}

}
else
{
	if(input[i]>(15641+offset0))
{
	if(input[i]==(15643+offset0))
{
	vR[i] = 15643;
}
else
{
	vR[i] = 15642;
}

}
else
{
	if(input[i]==(15641+offset0))
{
	vR[i] = 15641;
}
else
{
	vR[i] = 15640;
}

}

}

}
else
{
	if(input[i]>(15635+offset0))
{
	if(input[i]>(15637+offset0))
{
	if(input[i]==(15639+offset0))
{
	vR[i] = 15639;
}
else
{
	vR[i] = 15638;
}

}
else
{
	if(input[i]==(15637+offset0))
{
	vR[i] = 15637;
}
else
{
	vR[i] = 15636;
}

}

}
else
{
	if(input[i]>(15633+offset0))
{
	if(input[i]==(15635+offset0))
{
	vR[i] = 15635;
}
else
{
	vR[i] = 15634;
}

}
else
{
	if(input[i]==(15633+offset0))
{
	vR[i] = 15633;
}
else
{
	vR[i] = 15632;
}

}

}

}

}
else
{
	if(input[i]>(15623+offset0))
{
	if(input[i]>(15627+offset0))
{
	if(input[i]>(15629+offset0))
{
	if(input[i]==(15631+offset0))
{
	vR[i] = 15631;
}
else
{
	vR[i] = 15630;
}

}
else
{
	if(input[i]==(15629+offset0))
{
	vR[i] = 15629;
}
else
{
	vR[i] = 15628;
}

}

}
else
{
	if(input[i]>(15625+offset0))
{
	if(input[i]==(15627+offset0))
{
	vR[i] = 15627;
}
else
{
	vR[i] = 15626;
}

}
else
{
	if(input[i]==(15625+offset0))
{
	vR[i] = 15625;
}
else
{
	vR[i] = 15624;
}

}

}

}
else
{
	if(input[i]>(15619+offset0))
{
	if(input[i]>(15621+offset0))
{
	if(input[i]==(15623+offset0))
{
	vR[i] = 15623;
}
else
{
	vR[i] = 15622;
}

}
else
{
	if(input[i]==(15621+offset0))
{
	vR[i] = 15621;
}
else
{
	vR[i] = 15620;
}

}

}
else
{
	if(input[i]>(15617+offset0))
{
	if(input[i]==(15619+offset0))
{
	vR[i] = 15619;
}
else
{
	vR[i] = 15618;
}

}
else
{
	if(input[i]==(15617+offset0))
{
	vR[i] = 15617;
}
else
{
	vR[i] = 15616;
}

}

}

}

}

}

}

}

}
else
{
	if(input[i]>(15487+offset0))
{
	if(input[i]>(15551+offset0))
{
	if(input[i]>(15583+offset0))
{
	if(input[i]>(15599+offset0))
{
	if(input[i]>(15607+offset0))
{
	if(input[i]>(15611+offset0))
{
	if(input[i]>(15613+offset0))
{
	if(input[i]==(15615+offset0))
{
	vR[i] = 15615;
}
else
{
	vR[i] = 15614;
}

}
else
{
	if(input[i]==(15613+offset0))
{
	vR[i] = 15613;
}
else
{
	vR[i] = 15612;
}

}

}
else
{
	if(input[i]>(15609+offset0))
{
	if(input[i]==(15611+offset0))
{
	vR[i] = 15611;
}
else
{
	vR[i] = 15610;
}

}
else
{
	if(input[i]==(15609+offset0))
{
	vR[i] = 15609;
}
else
{
	vR[i] = 15608;
}

}

}

}
else
{
	if(input[i]>(15603+offset0))
{
	if(input[i]>(15605+offset0))
{
	if(input[i]==(15607+offset0))
{
	vR[i] = 15607;
}
else
{
	vR[i] = 15606;
}

}
else
{
	if(input[i]==(15605+offset0))
{
	vR[i] = 15605;
}
else
{
	vR[i] = 15604;
}

}

}
else
{
	if(input[i]>(15601+offset0))
{
	if(input[i]==(15603+offset0))
{
	vR[i] = 15603;
}
else
{
	vR[i] = 15602;
}

}
else
{
	if(input[i]==(15601+offset0))
{
	vR[i] = 15601;
}
else
{
	vR[i] = 15600;
}

}

}

}

}
else
{
	if(input[i]>(15591+offset0))
{
	if(input[i]>(15595+offset0))
{
	if(input[i]>(15597+offset0))
{
	if(input[i]==(15599+offset0))
{
	vR[i] = 15599;
}
else
{
	vR[i] = 15598;
}

}
else
{
	if(input[i]==(15597+offset0))
{
	vR[i] = 15597;
}
else
{
	vR[i] = 15596;
}

}

}
else
{
	if(input[i]>(15593+offset0))
{
	if(input[i]==(15595+offset0))
{
	vR[i] = 15595;
}
else
{
	vR[i] = 15594;
}

}
else
{
	if(input[i]==(15593+offset0))
{
	vR[i] = 15593;
}
else
{
	vR[i] = 15592;
}

}

}

}
else
{
	if(input[i]>(15587+offset0))
{
	if(input[i]>(15589+offset0))
{
	if(input[i]==(15591+offset0))
{
	vR[i] = 15591;
}
else
{
	vR[i] = 15590;
}

}
else
{
	if(input[i]==(15589+offset0))
{
	vR[i] = 15589;
}
else
{
	vR[i] = 15588;
}

}

}
else
{
	if(input[i]>(15585+offset0))
{
	if(input[i]==(15587+offset0))
{
	vR[i] = 15587;
}
else
{
	vR[i] = 15586;
}

}
else
{
	if(input[i]==(15585+offset0))
{
	vR[i] = 15585;
}
else
{
	vR[i] = 15584;
}

}

}

}

}

}
else
{
	if(input[i]>(15567+offset0))
{
	if(input[i]>(15575+offset0))
{
	if(input[i]>(15579+offset0))
{
	if(input[i]>(15581+offset0))
{
	if(input[i]==(15583+offset0))
{
	vR[i] = 15583;
}
else
{
	vR[i] = 15582;
}

}
else
{
	if(input[i]==(15581+offset0))
{
	vR[i] = 15581;
}
else
{
	vR[i] = 15580;
}

}

}
else
{
	if(input[i]>(15577+offset0))
{
	if(input[i]==(15579+offset0))
{
	vR[i] = 15579;
}
else
{
	vR[i] = 15578;
}

}
else
{
	if(input[i]==(15577+offset0))
{
	vR[i] = 15577;
}
else
{
	vR[i] = 15576;
}

}

}

}
else
{
	if(input[i]>(15571+offset0))
{
	if(input[i]>(15573+offset0))
{
	if(input[i]==(15575+offset0))
{
	vR[i] = 15575;
}
else
{
	vR[i] = 15574;
}

}
else
{
	if(input[i]==(15573+offset0))
{
	vR[i] = 15573;
}
else
{
	vR[i] = 15572;
}

}

}
else
{
	if(input[i]>(15569+offset0))
{
	if(input[i]==(15571+offset0))
{
	vR[i] = 15571;
}
else
{
	vR[i] = 15570;
}

}
else
{
	if(input[i]==(15569+offset0))
{
	vR[i] = 15569;
}
else
{
	vR[i] = 15568;
}

}

}

}

}
else
{
	if(input[i]>(15559+offset0))
{
	if(input[i]>(15563+offset0))
{
	if(input[i]>(15565+offset0))
{
	if(input[i]==(15567+offset0))
{
	vR[i] = 15567;
}
else
{
	vR[i] = 15566;
}

}
else
{
	if(input[i]==(15565+offset0))
{
	vR[i] = 15565;
}
else
{
	vR[i] = 15564;
}

}

}
else
{
	if(input[i]>(15561+offset0))
{
	if(input[i]==(15563+offset0))
{
	vR[i] = 15563;
}
else
{
	vR[i] = 15562;
}

}
else
{
	if(input[i]==(15561+offset0))
{
	vR[i] = 15561;
}
else
{
	vR[i] = 15560;
}

}

}

}
else
{
	if(input[i]>(15555+offset0))
{
	if(input[i]>(15557+offset0))
{
	if(input[i]==(15559+offset0))
{
	vR[i] = 15559;
}
else
{
	vR[i] = 15558;
}

}
else
{
	if(input[i]==(15557+offset0))
{
	vR[i] = 15557;
}
else
{
	vR[i] = 15556;
}

}

}
else
{
	if(input[i]>(15553+offset0))
{
	if(input[i]==(15555+offset0))
{
	vR[i] = 15555;
}
else
{
	vR[i] = 15554;
}

}
else
{
	if(input[i]==(15553+offset0))
{
	vR[i] = 15553;
}
else
{
	vR[i] = 15552;
}

}

}

}

}

}

}
else
{
	if(input[i]>(15519+offset0))
{
	if(input[i]>(15535+offset0))
{
	if(input[i]>(15543+offset0))
{
	if(input[i]>(15547+offset0))
{
	if(input[i]>(15549+offset0))
{
	if(input[i]==(15551+offset0))
{
	vR[i] = 15551;
}
else
{
	vR[i] = 15550;
}

}
else
{
	if(input[i]==(15549+offset0))
{
	vR[i] = 15549;
}
else
{
	vR[i] = 15548;
}

}

}
else
{
	if(input[i]>(15545+offset0))
{
	if(input[i]==(15547+offset0))
{
	vR[i] = 15547;
}
else
{
	vR[i] = 15546;
}

}
else
{
	if(input[i]==(15545+offset0))
{
	vR[i] = 15545;
}
else
{
	vR[i] = 15544;
}

}

}

}
else
{
	if(input[i]>(15539+offset0))
{
	if(input[i]>(15541+offset0))
{
	if(input[i]==(15543+offset0))
{
	vR[i] = 15543;
}
else
{
	vR[i] = 15542;
}

}
else
{
	if(input[i]==(15541+offset0))
{
	vR[i] = 15541;
}
else
{
	vR[i] = 15540;
}

}

}
else
{
	if(input[i]>(15537+offset0))
{
	if(input[i]==(15539+offset0))
{
	vR[i] = 15539;
}
else
{
	vR[i] = 15538;
}

}
else
{
	if(input[i]==(15537+offset0))
{
	vR[i] = 15537;
}
else
{
	vR[i] = 15536;
}

}

}

}

}
else
{
	if(input[i]>(15527+offset0))
{
	if(input[i]>(15531+offset0))
{
	if(input[i]>(15533+offset0))
{
	if(input[i]==(15535+offset0))
{
	vR[i] = 15535;
}
else
{
	vR[i] = 15534;
}

}
else
{
	if(input[i]==(15533+offset0))
{
	vR[i] = 15533;
}
else
{
	vR[i] = 15532;
}

}

}
else
{
	if(input[i]>(15529+offset0))
{
	if(input[i]==(15531+offset0))
{
	vR[i] = 15531;
}
else
{
	vR[i] = 15530;
}

}
else
{
	if(input[i]==(15529+offset0))
{
	vR[i] = 15529;
}
else
{
	vR[i] = 15528;
}

}

}

}
else
{
	if(input[i]>(15523+offset0))
{
	if(input[i]>(15525+offset0))
{
	if(input[i]==(15527+offset0))
{
	vR[i] = 15527;
}
else
{
	vR[i] = 15526;
}

}
else
{
	if(input[i]==(15525+offset0))
{
	vR[i] = 15525;
}
else
{
	vR[i] = 15524;
}

}

}
else
{
	if(input[i]>(15521+offset0))
{
	if(input[i]==(15523+offset0))
{
	vR[i] = 15523;
}
else
{
	vR[i] = 15522;
}

}
else
{
	if(input[i]==(15521+offset0))
{
	vR[i] = 15521;
}
else
{
	vR[i] = 15520;
}

}

}

}

}

}
else
{
	if(input[i]>(15503+offset0))
{
	if(input[i]>(15511+offset0))
{
	if(input[i]>(15515+offset0))
{
	if(input[i]>(15517+offset0))
{
	if(input[i]==(15519+offset0))
{
	vR[i] = 15519;
}
else
{
	vR[i] = 15518;
}

}
else
{
	if(input[i]==(15517+offset0))
{
	vR[i] = 15517;
}
else
{
	vR[i] = 15516;
}

}

}
else
{
	if(input[i]>(15513+offset0))
{
	if(input[i]==(15515+offset0))
{
	vR[i] = 15515;
}
else
{
	vR[i] = 15514;
}

}
else
{
	if(input[i]==(15513+offset0))
{
	vR[i] = 15513;
}
else
{
	vR[i] = 15512;
}

}

}

}
else
{
	if(input[i]>(15507+offset0))
{
	if(input[i]>(15509+offset0))
{
	if(input[i]==(15511+offset0))
{
	vR[i] = 15511;
}
else
{
	vR[i] = 15510;
}

}
else
{
	if(input[i]==(15509+offset0))
{
	vR[i] = 15509;
}
else
{
	vR[i] = 15508;
}

}

}
else
{
	if(input[i]>(15505+offset0))
{
	if(input[i]==(15507+offset0))
{
	vR[i] = 15507;
}
else
{
	vR[i] = 15506;
}

}
else
{
	if(input[i]==(15505+offset0))
{
	vR[i] = 15505;
}
else
{
	vR[i] = 15504;
}

}

}

}

}
else
{
	if(input[i]>(15495+offset0))
{
	if(input[i]>(15499+offset0))
{
	if(input[i]>(15501+offset0))
{
	if(input[i]==(15503+offset0))
{
	vR[i] = 15503;
}
else
{
	vR[i] = 15502;
}

}
else
{
	if(input[i]==(15501+offset0))
{
	vR[i] = 15501;
}
else
{
	vR[i] = 15500;
}

}

}
else
{
	if(input[i]>(15497+offset0))
{
	if(input[i]==(15499+offset0))
{
	vR[i] = 15499;
}
else
{
	vR[i] = 15498;
}

}
else
{
	if(input[i]==(15497+offset0))
{
	vR[i] = 15497;
}
else
{
	vR[i] = 15496;
}

}

}

}
else
{
	if(input[i]>(15491+offset0))
{
	if(input[i]>(15493+offset0))
{
	if(input[i]==(15495+offset0))
{
	vR[i] = 15495;
}
else
{
	vR[i] = 15494;
}

}
else
{
	if(input[i]==(15493+offset0))
{
	vR[i] = 15493;
}
else
{
	vR[i] = 15492;
}

}

}
else
{
	if(input[i]>(15489+offset0))
{
	if(input[i]==(15491+offset0))
{
	vR[i] = 15491;
}
else
{
	vR[i] = 15490;
}

}
else
{
	if(input[i]==(15489+offset0))
{
	vR[i] = 15489;
}
else
{
	vR[i] = 15488;
}

}

}

}

}

}

}

}
else
{
	if(input[i]>(15423+offset0))
{
	if(input[i]>(15455+offset0))
{
	if(input[i]>(15471+offset0))
{
	if(input[i]>(15479+offset0))
{
	if(input[i]>(15483+offset0))
{
	if(input[i]>(15485+offset0))
{
	if(input[i]==(15487+offset0))
{
	vR[i] = 15487;
}
else
{
	vR[i] = 15486;
}

}
else
{
	if(input[i]==(15485+offset0))
{
	vR[i] = 15485;
}
else
{
	vR[i] = 15484;
}

}

}
else
{
	if(input[i]>(15481+offset0))
{
	if(input[i]==(15483+offset0))
{
	vR[i] = 15483;
}
else
{
	vR[i] = 15482;
}

}
else
{
	if(input[i]==(15481+offset0))
{
	vR[i] = 15481;
}
else
{
	vR[i] = 15480;
}

}

}

}
else
{
	if(input[i]>(15475+offset0))
{
	if(input[i]>(15477+offset0))
{
	if(input[i]==(15479+offset0))
{
	vR[i] = 15479;
}
else
{
	vR[i] = 15478;
}

}
else
{
	if(input[i]==(15477+offset0))
{
	vR[i] = 15477;
}
else
{
	vR[i] = 15476;
}

}

}
else
{
	if(input[i]>(15473+offset0))
{
	if(input[i]==(15475+offset0))
{
	vR[i] = 15475;
}
else
{
	vR[i] = 15474;
}

}
else
{
	if(input[i]==(15473+offset0))
{
	vR[i] = 15473;
}
else
{
	vR[i] = 15472;
}

}

}

}

}
else
{
	if(input[i]>(15463+offset0))
{
	if(input[i]>(15467+offset0))
{
	if(input[i]>(15469+offset0))
{
	if(input[i]==(15471+offset0))
{
	vR[i] = 15471;
}
else
{
	vR[i] = 15470;
}

}
else
{
	if(input[i]==(15469+offset0))
{
	vR[i] = 15469;
}
else
{
	vR[i] = 15468;
}

}

}
else
{
	if(input[i]>(15465+offset0))
{
	if(input[i]==(15467+offset0))
{
	vR[i] = 15467;
}
else
{
	vR[i] = 15466;
}

}
else
{
	if(input[i]==(15465+offset0))
{
	vR[i] = 15465;
}
else
{
	vR[i] = 15464;
}

}

}

}
else
{
	if(input[i]>(15459+offset0))
{
	if(input[i]>(15461+offset0))
{
	if(input[i]==(15463+offset0))
{
	vR[i] = 15463;
}
else
{
	vR[i] = 15462;
}

}
else
{
	if(input[i]==(15461+offset0))
{
	vR[i] = 15461;
}
else
{
	vR[i] = 15460;
}

}

}
else
{
	if(input[i]>(15457+offset0))
{
	if(input[i]==(15459+offset0))
{
	vR[i] = 15459;
}
else
{
	vR[i] = 15458;
}

}
else
{
	if(input[i]==(15457+offset0))
{
	vR[i] = 15457;
}
else
{
	vR[i] = 15456;
}

}

}

}

}

}
else
{
	if(input[i]>(15439+offset0))
{
	if(input[i]>(15447+offset0))
{
	if(input[i]>(15451+offset0))
{
	if(input[i]>(15453+offset0))
{
	if(input[i]==(15455+offset0))
{
	vR[i] = 15455;
}
else
{
	vR[i] = 15454;
}

}
else
{
	if(input[i]==(15453+offset0))
{
	vR[i] = 15453;
}
else
{
	vR[i] = 15452;
}

}

}
else
{
	if(input[i]>(15449+offset0))
{
	if(input[i]==(15451+offset0))
{
	vR[i] = 15451;
}
else
{
	vR[i] = 15450;
}

}
else
{
	if(input[i]==(15449+offset0))
{
	vR[i] = 15449;
}
else
{
	vR[i] = 15448;
}

}

}

}
else
{
	if(input[i]>(15443+offset0))
{
	if(input[i]>(15445+offset0))
{
	if(input[i]==(15447+offset0))
{
	vR[i] = 15447;
}
else
{
	vR[i] = 15446;
}

}
else
{
	if(input[i]==(15445+offset0))
{
	vR[i] = 15445;
}
else
{
	vR[i] = 15444;
}

}

}
else
{
	if(input[i]>(15441+offset0))
{
	if(input[i]==(15443+offset0))
{
	vR[i] = 15443;
}
else
{
	vR[i] = 15442;
}

}
else
{
	if(input[i]==(15441+offset0))
{
	vR[i] = 15441;
}
else
{
	vR[i] = 15440;
}

}

}

}

}
else
{
	if(input[i]>(15431+offset0))
{
	if(input[i]>(15435+offset0))
{
	if(input[i]>(15437+offset0))
{
	if(input[i]==(15439+offset0))
{
	vR[i] = 15439;
}
else
{
	vR[i] = 15438;
}

}
else
{
	if(input[i]==(15437+offset0))
{
	vR[i] = 15437;
}
else
{
	vR[i] = 15436;
}

}

}
else
{
	if(input[i]>(15433+offset0))
{
	if(input[i]==(15435+offset0))
{
	vR[i] = 15435;
}
else
{
	vR[i] = 15434;
}

}
else
{
	if(input[i]==(15433+offset0))
{
	vR[i] = 15433;
}
else
{
	vR[i] = 15432;
}

}

}

}
else
{
	if(input[i]>(15427+offset0))
{
	if(input[i]>(15429+offset0))
{
	if(input[i]==(15431+offset0))
{
	vR[i] = 15431;
}
else
{
	vR[i] = 15430;
}

}
else
{
	if(input[i]==(15429+offset0))
{
	vR[i] = 15429;
}
else
{
	vR[i] = 15428;
}

}

}
else
{
	if(input[i]>(15425+offset0))
{
	if(input[i]==(15427+offset0))
{
	vR[i] = 15427;
}
else
{
	vR[i] = 15426;
}

}
else
{
	if(input[i]==(15425+offset0))
{
	vR[i] = 15425;
}
else
{
	vR[i] = 15424;
}

}

}

}

}

}

}
else
{
	if(input[i]>(15391+offset0))
{
	if(input[i]>(15407+offset0))
{
	if(input[i]>(15415+offset0))
{
	if(input[i]>(15419+offset0))
{
	if(input[i]>(15421+offset0))
{
	if(input[i]==(15423+offset0))
{
	vR[i] = 15423;
}
else
{
	vR[i] = 15422;
}

}
else
{
	if(input[i]==(15421+offset0))
{
	vR[i] = 15421;
}
else
{
	vR[i] = 15420;
}

}

}
else
{
	if(input[i]>(15417+offset0))
{
	if(input[i]==(15419+offset0))
{
	vR[i] = 15419;
}
else
{
	vR[i] = 15418;
}

}
else
{
	if(input[i]==(15417+offset0))
{
	vR[i] = 15417;
}
else
{
	vR[i] = 15416;
}

}

}

}
else
{
	if(input[i]>(15411+offset0))
{
	if(input[i]>(15413+offset0))
{
	if(input[i]==(15415+offset0))
{
	vR[i] = 15415;
}
else
{
	vR[i] = 15414;
}

}
else
{
	if(input[i]==(15413+offset0))
{
	vR[i] = 15413;
}
else
{
	vR[i] = 15412;
}

}

}
else
{
	if(input[i]>(15409+offset0))
{
	if(input[i]==(15411+offset0))
{
	vR[i] = 15411;
}
else
{
	vR[i] = 15410;
}

}
else
{
	if(input[i]==(15409+offset0))
{
	vR[i] = 15409;
}
else
{
	vR[i] = 15408;
}

}

}

}

}
else
{
	if(input[i]>(15399+offset0))
{
	if(input[i]>(15403+offset0))
{
	if(input[i]>(15405+offset0))
{
	if(input[i]==(15407+offset0))
{
	vR[i] = 15407;
}
else
{
	vR[i] = 15406;
}

}
else
{
	if(input[i]==(15405+offset0))
{
	vR[i] = 15405;
}
else
{
	vR[i] = 15404;
}

}

}
else
{
	if(input[i]>(15401+offset0))
{
	if(input[i]==(15403+offset0))
{
	vR[i] = 15403;
}
else
{
	vR[i] = 15402;
}

}
else
{
	if(input[i]==(15401+offset0))
{
	vR[i] = 15401;
}
else
{
	vR[i] = 15400;
}

}

}

}
else
{
	if(input[i]>(15395+offset0))
{
	if(input[i]>(15397+offset0))
{
	if(input[i]==(15399+offset0))
{
	vR[i] = 15399;
}
else
{
	vR[i] = 15398;
}

}
else
{
	if(input[i]==(15397+offset0))
{
	vR[i] = 15397;
}
else
{
	vR[i] = 15396;
}

}

}
else
{
	if(input[i]>(15393+offset0))
{
	if(input[i]==(15395+offset0))
{
	vR[i] = 15395;
}
else
{
	vR[i] = 15394;
}

}
else
{
	if(input[i]==(15393+offset0))
{
	vR[i] = 15393;
}
else
{
	vR[i] = 15392;
}

}

}

}

}

}
else
{
	if(input[i]>(15375+offset0))
{
	if(input[i]>(15383+offset0))
{
	if(input[i]>(15387+offset0))
{
	if(input[i]>(15389+offset0))
{
	if(input[i]==(15391+offset0))
{
	vR[i] = 15391;
}
else
{
	vR[i] = 15390;
}

}
else
{
	if(input[i]==(15389+offset0))
{
	vR[i] = 15389;
}
else
{
	vR[i] = 15388;
}

}

}
else
{
	if(input[i]>(15385+offset0))
{
	if(input[i]==(15387+offset0))
{
	vR[i] = 15387;
}
else
{
	vR[i] = 15386;
}

}
else
{
	if(input[i]==(15385+offset0))
{
	vR[i] = 15385;
}
else
{
	vR[i] = 15384;
}

}

}

}
else
{
	if(input[i]>(15379+offset0))
{
	if(input[i]>(15381+offset0))
{
	if(input[i]==(15383+offset0))
{
	vR[i] = 15383;
}
else
{
	vR[i] = 15382;
}

}
else
{
	if(input[i]==(15381+offset0))
{
	vR[i] = 15381;
}
else
{
	vR[i] = 15380;
}

}

}
else
{
	if(input[i]>(15377+offset0))
{
	if(input[i]==(15379+offset0))
{
	vR[i] = 15379;
}
else
{
	vR[i] = 15378;
}

}
else
{
	if(input[i]==(15377+offset0))
{
	vR[i] = 15377;
}
else
{
	vR[i] = 15376;
}

}

}

}

}
else
{
	if(input[i]>(15367+offset0))
{
	if(input[i]>(15371+offset0))
{
	if(input[i]>(15373+offset0))
{
	if(input[i]==(15375+offset0))
{
	vR[i] = 15375;
}
else
{
	vR[i] = 15374;
}

}
else
{
	if(input[i]==(15373+offset0))
{
	vR[i] = 15373;
}
else
{
	vR[i] = 15372;
}

}

}
else
{
	if(input[i]>(15369+offset0))
{
	if(input[i]==(15371+offset0))
{
	vR[i] = 15371;
}
else
{
	vR[i] = 15370;
}

}
else
{
	if(input[i]==(15369+offset0))
{
	vR[i] = 15369;
}
else
{
	vR[i] = 15368;
}

}

}

}
else
{
	if(input[i]>(15363+offset0))
{
	if(input[i]>(15365+offset0))
{
	if(input[i]==(15367+offset0))
{
	vR[i] = 15367;
}
else
{
	vR[i] = 15366;
}

}
else
{
	if(input[i]==(15365+offset0))
{
	vR[i] = 15365;
}
else
{
	vR[i] = 15364;
}

}

}
else
{
	if(input[i]>(15361+offset0))
{
	if(input[i]==(15363+offset0))
{
	vR[i] = 15363;
}
else
{
	vR[i] = 15362;
}

}
else
{
	if(input[i]==(15361+offset0))
{
	vR[i] = 15361;
}
else
{
	vR[i] = 15360;
}

}

}

}

}

}

}

}

}

}

}
else
{
	if(input[i]>(14847+offset0))
{
	if(input[i]>(15103+offset0))
{
	if(input[i]>(15231+offset0))
{
	if(input[i]>(15295+offset0))
{
	if(input[i]>(15327+offset0))
{
	if(input[i]>(15343+offset0))
{
	if(input[i]>(15351+offset0))
{
	if(input[i]>(15355+offset0))
{
	if(input[i]>(15357+offset0))
{
	if(input[i]==(15359+offset0))
{
	vR[i] = 15359;
}
else
{
	vR[i] = 15358;
}

}
else
{
	if(input[i]==(15357+offset0))
{
	vR[i] = 15357;
}
else
{
	vR[i] = 15356;
}

}

}
else
{
	if(input[i]>(15353+offset0))
{
	if(input[i]==(15355+offset0))
{
	vR[i] = 15355;
}
else
{
	vR[i] = 15354;
}

}
else
{
	if(input[i]==(15353+offset0))
{
	vR[i] = 15353;
}
else
{
	vR[i] = 15352;
}

}

}

}
else
{
	if(input[i]>(15347+offset0))
{
	if(input[i]>(15349+offset0))
{
	if(input[i]==(15351+offset0))
{
	vR[i] = 15351;
}
else
{
	vR[i] = 15350;
}

}
else
{
	if(input[i]==(15349+offset0))
{
	vR[i] = 15349;
}
else
{
	vR[i] = 15348;
}

}

}
else
{
	if(input[i]>(15345+offset0))
{
	if(input[i]==(15347+offset0))
{
	vR[i] = 15347;
}
else
{
	vR[i] = 15346;
}

}
else
{
	if(input[i]==(15345+offset0))
{
	vR[i] = 15345;
}
else
{
	vR[i] = 15344;
}

}

}

}

}
else
{
	if(input[i]>(15335+offset0))
{
	if(input[i]>(15339+offset0))
{
	if(input[i]>(15341+offset0))
{
	if(input[i]==(15343+offset0))
{
	vR[i] = 15343;
}
else
{
	vR[i] = 15342;
}

}
else
{
	if(input[i]==(15341+offset0))
{
	vR[i] = 15341;
}
else
{
	vR[i] = 15340;
}

}

}
else
{
	if(input[i]>(15337+offset0))
{
	if(input[i]==(15339+offset0))
{
	vR[i] = 15339;
}
else
{
	vR[i] = 15338;
}

}
else
{
	if(input[i]==(15337+offset0))
{
	vR[i] = 15337;
}
else
{
	vR[i] = 15336;
}

}

}

}
else
{
	if(input[i]>(15331+offset0))
{
	if(input[i]>(15333+offset0))
{
	if(input[i]==(15335+offset0))
{
	vR[i] = 15335;
}
else
{
	vR[i] = 15334;
}

}
else
{
	if(input[i]==(15333+offset0))
{
	vR[i] = 15333;
}
else
{
	vR[i] = 15332;
}

}

}
else
{
	if(input[i]>(15329+offset0))
{
	if(input[i]==(15331+offset0))
{
	vR[i] = 15331;
}
else
{
	vR[i] = 15330;
}

}
else
{
	if(input[i]==(15329+offset0))
{
	vR[i] = 15329;
}
else
{
	vR[i] = 15328;
}

}

}

}

}

}
else
{
	if(input[i]>(15311+offset0))
{
	if(input[i]>(15319+offset0))
{
	if(input[i]>(15323+offset0))
{
	if(input[i]>(15325+offset0))
{
	if(input[i]==(15327+offset0))
{
	vR[i] = 15327;
}
else
{
	vR[i] = 15326;
}

}
else
{
	if(input[i]==(15325+offset0))
{
	vR[i] = 15325;
}
else
{
	vR[i] = 15324;
}

}

}
else
{
	if(input[i]>(15321+offset0))
{
	if(input[i]==(15323+offset0))
{
	vR[i] = 15323;
}
else
{
	vR[i] = 15322;
}

}
else
{
	if(input[i]==(15321+offset0))
{
	vR[i] = 15321;
}
else
{
	vR[i] = 15320;
}

}

}

}
else
{
	if(input[i]>(15315+offset0))
{
	if(input[i]>(15317+offset0))
{
	if(input[i]==(15319+offset0))
{
	vR[i] = 15319;
}
else
{
	vR[i] = 15318;
}

}
else
{
	if(input[i]==(15317+offset0))
{
	vR[i] = 15317;
}
else
{
	vR[i] = 15316;
}

}

}
else
{
	if(input[i]>(15313+offset0))
{
	if(input[i]==(15315+offset0))
{
	vR[i] = 15315;
}
else
{
	vR[i] = 15314;
}

}
else
{
	if(input[i]==(15313+offset0))
{
	vR[i] = 15313;
}
else
{
	vR[i] = 15312;
}

}

}

}

}
else
{
	if(input[i]>(15303+offset0))
{
	if(input[i]>(15307+offset0))
{
	if(input[i]>(15309+offset0))
{
	if(input[i]==(15311+offset0))
{
	vR[i] = 15311;
}
else
{
	vR[i] = 15310;
}

}
else
{
	if(input[i]==(15309+offset0))
{
	vR[i] = 15309;
}
else
{
	vR[i] = 15308;
}

}

}
else
{
	if(input[i]>(15305+offset0))
{
	if(input[i]==(15307+offset0))
{
	vR[i] = 15307;
}
else
{
	vR[i] = 15306;
}

}
else
{
	if(input[i]==(15305+offset0))
{
	vR[i] = 15305;
}
else
{
	vR[i] = 15304;
}

}

}

}
else
{
	if(input[i]>(15299+offset0))
{
	if(input[i]>(15301+offset0))
{
	if(input[i]==(15303+offset0))
{
	vR[i] = 15303;
}
else
{
	vR[i] = 15302;
}

}
else
{
	if(input[i]==(15301+offset0))
{
	vR[i] = 15301;
}
else
{
	vR[i] = 15300;
}

}

}
else
{
	if(input[i]>(15297+offset0))
{
	if(input[i]==(15299+offset0))
{
	vR[i] = 15299;
}
else
{
	vR[i] = 15298;
}

}
else
{
	if(input[i]==(15297+offset0))
{
	vR[i] = 15297;
}
else
{
	vR[i] = 15296;
}

}

}

}

}

}

}
else
{
	if(input[i]>(15263+offset0))
{
	if(input[i]>(15279+offset0))
{
	if(input[i]>(15287+offset0))
{
	if(input[i]>(15291+offset0))
{
	if(input[i]>(15293+offset0))
{
	if(input[i]==(15295+offset0))
{
	vR[i] = 15295;
}
else
{
	vR[i] = 15294;
}

}
else
{
	if(input[i]==(15293+offset0))
{
	vR[i] = 15293;
}
else
{
	vR[i] = 15292;
}

}

}
else
{
	if(input[i]>(15289+offset0))
{
	if(input[i]==(15291+offset0))
{
	vR[i] = 15291;
}
else
{
	vR[i] = 15290;
}

}
else
{
	if(input[i]==(15289+offset0))
{
	vR[i] = 15289;
}
else
{
	vR[i] = 15288;
}

}

}

}
else
{
	if(input[i]>(15283+offset0))
{
	if(input[i]>(15285+offset0))
{
	if(input[i]==(15287+offset0))
{
	vR[i] = 15287;
}
else
{
	vR[i] = 15286;
}

}
else
{
	if(input[i]==(15285+offset0))
{
	vR[i] = 15285;
}
else
{
	vR[i] = 15284;
}

}

}
else
{
	if(input[i]>(15281+offset0))
{
	if(input[i]==(15283+offset0))
{
	vR[i] = 15283;
}
else
{
	vR[i] = 15282;
}

}
else
{
	if(input[i]==(15281+offset0))
{
	vR[i] = 15281;
}
else
{
	vR[i] = 15280;
}

}

}

}

}
else
{
	if(input[i]>(15271+offset0))
{
	if(input[i]>(15275+offset0))
{
	if(input[i]>(15277+offset0))
{
	if(input[i]==(15279+offset0))
{
	vR[i] = 15279;
}
else
{
	vR[i] = 15278;
}

}
else
{
	if(input[i]==(15277+offset0))
{
	vR[i] = 15277;
}
else
{
	vR[i] = 15276;
}

}

}
else
{
	if(input[i]>(15273+offset0))
{
	if(input[i]==(15275+offset0))
{
	vR[i] = 15275;
}
else
{
	vR[i] = 15274;
}

}
else
{
	if(input[i]==(15273+offset0))
{
	vR[i] = 15273;
}
else
{
	vR[i] = 15272;
}

}

}

}
else
{
	if(input[i]>(15267+offset0))
{
	if(input[i]>(15269+offset0))
{
	if(input[i]==(15271+offset0))
{
	vR[i] = 15271;
}
else
{
	vR[i] = 15270;
}

}
else
{
	if(input[i]==(15269+offset0))
{
	vR[i] = 15269;
}
else
{
	vR[i] = 15268;
}

}

}
else
{
	if(input[i]>(15265+offset0))
{
	if(input[i]==(15267+offset0))
{
	vR[i] = 15267;
}
else
{
	vR[i] = 15266;
}

}
else
{
	if(input[i]==(15265+offset0))
{
	vR[i] = 15265;
}
else
{
	vR[i] = 15264;
}

}

}

}

}

}
else
{
	if(input[i]>(15247+offset0))
{
	if(input[i]>(15255+offset0))
{
	if(input[i]>(15259+offset0))
{
	if(input[i]>(15261+offset0))
{
	if(input[i]==(15263+offset0))
{
	vR[i] = 15263;
}
else
{
	vR[i] = 15262;
}

}
else
{
	if(input[i]==(15261+offset0))
{
	vR[i] = 15261;
}
else
{
	vR[i] = 15260;
}

}

}
else
{
	if(input[i]>(15257+offset0))
{
	if(input[i]==(15259+offset0))
{
	vR[i] = 15259;
}
else
{
	vR[i] = 15258;
}

}
else
{
	if(input[i]==(15257+offset0))
{
	vR[i] = 15257;
}
else
{
	vR[i] = 15256;
}

}

}

}
else
{
	if(input[i]>(15251+offset0))
{
	if(input[i]>(15253+offset0))
{
	if(input[i]==(15255+offset0))
{
	vR[i] = 15255;
}
else
{
	vR[i] = 15254;
}

}
else
{
	if(input[i]==(15253+offset0))
{
	vR[i] = 15253;
}
else
{
	vR[i] = 15252;
}

}

}
else
{
	if(input[i]>(15249+offset0))
{
	if(input[i]==(15251+offset0))
{
	vR[i] = 15251;
}
else
{
	vR[i] = 15250;
}

}
else
{
	if(input[i]==(15249+offset0))
{
	vR[i] = 15249;
}
else
{
	vR[i] = 15248;
}

}

}

}

}
else
{
	if(input[i]>(15239+offset0))
{
	if(input[i]>(15243+offset0))
{
	if(input[i]>(15245+offset0))
{
	if(input[i]==(15247+offset0))
{
	vR[i] = 15247;
}
else
{
	vR[i] = 15246;
}

}
else
{
	if(input[i]==(15245+offset0))
{
	vR[i] = 15245;
}
else
{
	vR[i] = 15244;
}

}

}
else
{
	if(input[i]>(15241+offset0))
{
	if(input[i]==(15243+offset0))
{
	vR[i] = 15243;
}
else
{
	vR[i] = 15242;
}

}
else
{
	if(input[i]==(15241+offset0))
{
	vR[i] = 15241;
}
else
{
	vR[i] = 15240;
}

}

}

}
else
{
	if(input[i]>(15235+offset0))
{
	if(input[i]>(15237+offset0))
{
	if(input[i]==(15239+offset0))
{
	vR[i] = 15239;
}
else
{
	vR[i] = 15238;
}

}
else
{
	if(input[i]==(15237+offset0))
{
	vR[i] = 15237;
}
else
{
	vR[i] = 15236;
}

}

}
else
{
	if(input[i]>(15233+offset0))
{
	if(input[i]==(15235+offset0))
{
	vR[i] = 15235;
}
else
{
	vR[i] = 15234;
}

}
else
{
	if(input[i]==(15233+offset0))
{
	vR[i] = 15233;
}
else
{
	vR[i] = 15232;
}

}

}

}

}

}

}

}
else
{
	if(input[i]>(15167+offset0))
{
	if(input[i]>(15199+offset0))
{
	if(input[i]>(15215+offset0))
{
	if(input[i]>(15223+offset0))
{
	if(input[i]>(15227+offset0))
{
	if(input[i]>(15229+offset0))
{
	if(input[i]==(15231+offset0))
{
	vR[i] = 15231;
}
else
{
	vR[i] = 15230;
}

}
else
{
	if(input[i]==(15229+offset0))
{
	vR[i] = 15229;
}
else
{
	vR[i] = 15228;
}

}

}
else
{
	if(input[i]>(15225+offset0))
{
	if(input[i]==(15227+offset0))
{
	vR[i] = 15227;
}
else
{
	vR[i] = 15226;
}

}
else
{
	if(input[i]==(15225+offset0))
{
	vR[i] = 15225;
}
else
{
	vR[i] = 15224;
}

}

}

}
else
{
	if(input[i]>(15219+offset0))
{
	if(input[i]>(15221+offset0))
{
	if(input[i]==(15223+offset0))
{
	vR[i] = 15223;
}
else
{
	vR[i] = 15222;
}

}
else
{
	if(input[i]==(15221+offset0))
{
	vR[i] = 15221;
}
else
{
	vR[i] = 15220;
}

}

}
else
{
	if(input[i]>(15217+offset0))
{
	if(input[i]==(15219+offset0))
{
	vR[i] = 15219;
}
else
{
	vR[i] = 15218;
}

}
else
{
	if(input[i]==(15217+offset0))
{
	vR[i] = 15217;
}
else
{
	vR[i] = 15216;
}

}

}

}

}
else
{
	if(input[i]>(15207+offset0))
{
	if(input[i]>(15211+offset0))
{
	if(input[i]>(15213+offset0))
{
	if(input[i]==(15215+offset0))
{
	vR[i] = 15215;
}
else
{
	vR[i] = 15214;
}

}
else
{
	if(input[i]==(15213+offset0))
{
	vR[i] = 15213;
}
else
{
	vR[i] = 15212;
}

}

}
else
{
	if(input[i]>(15209+offset0))
{
	if(input[i]==(15211+offset0))
{
	vR[i] = 15211;
}
else
{
	vR[i] = 15210;
}

}
else
{
	if(input[i]==(15209+offset0))
{
	vR[i] = 15209;
}
else
{
	vR[i] = 15208;
}

}

}

}
else
{
	if(input[i]>(15203+offset0))
{
	if(input[i]>(15205+offset0))
{
	if(input[i]==(15207+offset0))
{
	vR[i] = 15207;
}
else
{
	vR[i] = 15206;
}

}
else
{
	if(input[i]==(15205+offset0))
{
	vR[i] = 15205;
}
else
{
	vR[i] = 15204;
}

}

}
else
{
	if(input[i]>(15201+offset0))
{
	if(input[i]==(15203+offset0))
{
	vR[i] = 15203;
}
else
{
	vR[i] = 15202;
}

}
else
{
	if(input[i]==(15201+offset0))
{
	vR[i] = 15201;
}
else
{
	vR[i] = 15200;
}

}

}

}

}

}
else
{
	if(input[i]>(15183+offset0))
{
	if(input[i]>(15191+offset0))
{
	if(input[i]>(15195+offset0))
{
	if(input[i]>(15197+offset0))
{
	if(input[i]==(15199+offset0))
{
	vR[i] = 15199;
}
else
{
	vR[i] = 15198;
}

}
else
{
	if(input[i]==(15197+offset0))
{
	vR[i] = 15197;
}
else
{
	vR[i] = 15196;
}

}

}
else
{
	if(input[i]>(15193+offset0))
{
	if(input[i]==(15195+offset0))
{
	vR[i] = 15195;
}
else
{
	vR[i] = 15194;
}

}
else
{
	if(input[i]==(15193+offset0))
{
	vR[i] = 15193;
}
else
{
	vR[i] = 15192;
}

}

}

}
else
{
	if(input[i]>(15187+offset0))
{
	if(input[i]>(15189+offset0))
{
	if(input[i]==(15191+offset0))
{
	vR[i] = 15191;
}
else
{
	vR[i] = 15190;
}

}
else
{
	if(input[i]==(15189+offset0))
{
	vR[i] = 15189;
}
else
{
	vR[i] = 15188;
}

}

}
else
{
	if(input[i]>(15185+offset0))
{
	if(input[i]==(15187+offset0))
{
	vR[i] = 15187;
}
else
{
	vR[i] = 15186;
}

}
else
{
	if(input[i]==(15185+offset0))
{
	vR[i] = 15185;
}
else
{
	vR[i] = 15184;
}

}

}

}

}
else
{
	if(input[i]>(15175+offset0))
{
	if(input[i]>(15179+offset0))
{
	if(input[i]>(15181+offset0))
{
	if(input[i]==(15183+offset0))
{
	vR[i] = 15183;
}
else
{
	vR[i] = 15182;
}

}
else
{
	if(input[i]==(15181+offset0))
{
	vR[i] = 15181;
}
else
{
	vR[i] = 15180;
}

}

}
else
{
	if(input[i]>(15177+offset0))
{
	if(input[i]==(15179+offset0))
{
	vR[i] = 15179;
}
else
{
	vR[i] = 15178;
}

}
else
{
	if(input[i]==(15177+offset0))
{
	vR[i] = 15177;
}
else
{
	vR[i] = 15176;
}

}

}

}
else
{
	if(input[i]>(15171+offset0))
{
	if(input[i]>(15173+offset0))
{
	if(input[i]==(15175+offset0))
{
	vR[i] = 15175;
}
else
{
	vR[i] = 15174;
}

}
else
{
	if(input[i]==(15173+offset0))
{
	vR[i] = 15173;
}
else
{
	vR[i] = 15172;
}

}

}
else
{
	if(input[i]>(15169+offset0))
{
	if(input[i]==(15171+offset0))
{
	vR[i] = 15171;
}
else
{
	vR[i] = 15170;
}

}
else
{
	if(input[i]==(15169+offset0))
{
	vR[i] = 15169;
}
else
{
	vR[i] = 15168;
}

}

}

}

}

}

}
else
{
	if(input[i]>(15135+offset0))
{
	if(input[i]>(15151+offset0))
{
	if(input[i]>(15159+offset0))
{
	if(input[i]>(15163+offset0))
{
	if(input[i]>(15165+offset0))
{
	if(input[i]==(15167+offset0))
{
	vR[i] = 15167;
}
else
{
	vR[i] = 15166;
}

}
else
{
	if(input[i]==(15165+offset0))
{
	vR[i] = 15165;
}
else
{
	vR[i] = 15164;
}

}

}
else
{
	if(input[i]>(15161+offset0))
{
	if(input[i]==(15163+offset0))
{
	vR[i] = 15163;
}
else
{
	vR[i] = 15162;
}

}
else
{
	if(input[i]==(15161+offset0))
{
	vR[i] = 15161;
}
else
{
	vR[i] = 15160;
}

}

}

}
else
{
	if(input[i]>(15155+offset0))
{
	if(input[i]>(15157+offset0))
{
	if(input[i]==(15159+offset0))
{
	vR[i] = 15159;
}
else
{
	vR[i] = 15158;
}

}
else
{
	if(input[i]==(15157+offset0))
{
	vR[i] = 15157;
}
else
{
	vR[i] = 15156;
}

}

}
else
{
	if(input[i]>(15153+offset0))
{
	if(input[i]==(15155+offset0))
{
	vR[i] = 15155;
}
else
{
	vR[i] = 15154;
}

}
else
{
	if(input[i]==(15153+offset0))
{
	vR[i] = 15153;
}
else
{
	vR[i] = 15152;
}

}

}

}

}
else
{
	if(input[i]>(15143+offset0))
{
	if(input[i]>(15147+offset0))
{
	if(input[i]>(15149+offset0))
{
	if(input[i]==(15151+offset0))
{
	vR[i] = 15151;
}
else
{
	vR[i] = 15150;
}

}
else
{
	if(input[i]==(15149+offset0))
{
	vR[i] = 15149;
}
else
{
	vR[i] = 15148;
}

}

}
else
{
	if(input[i]>(15145+offset0))
{
	if(input[i]==(15147+offset0))
{
	vR[i] = 15147;
}
else
{
	vR[i] = 15146;
}

}
else
{
	if(input[i]==(15145+offset0))
{
	vR[i] = 15145;
}
else
{
	vR[i] = 15144;
}

}

}

}
else
{
	if(input[i]>(15139+offset0))
{
	if(input[i]>(15141+offset0))
{
	if(input[i]==(15143+offset0))
{
	vR[i] = 15143;
}
else
{
	vR[i] = 15142;
}

}
else
{
	if(input[i]==(15141+offset0))
{
	vR[i] = 15141;
}
else
{
	vR[i] = 15140;
}

}

}
else
{
	if(input[i]>(15137+offset0))
{
	if(input[i]==(15139+offset0))
{
	vR[i] = 15139;
}
else
{
	vR[i] = 15138;
}

}
else
{
	if(input[i]==(15137+offset0))
{
	vR[i] = 15137;
}
else
{
	vR[i] = 15136;
}

}

}

}

}

}
else
{
	if(input[i]>(15119+offset0))
{
	if(input[i]>(15127+offset0))
{
	if(input[i]>(15131+offset0))
{
	if(input[i]>(15133+offset0))
{
	if(input[i]==(15135+offset0))
{
	vR[i] = 15135;
}
else
{
	vR[i] = 15134;
}

}
else
{
	if(input[i]==(15133+offset0))
{
	vR[i] = 15133;
}
else
{
	vR[i] = 15132;
}

}

}
else
{
	if(input[i]>(15129+offset0))
{
	if(input[i]==(15131+offset0))
{
	vR[i] = 15131;
}
else
{
	vR[i] = 15130;
}

}
else
{
	if(input[i]==(15129+offset0))
{
	vR[i] = 15129;
}
else
{
	vR[i] = 15128;
}

}

}

}
else
{
	if(input[i]>(15123+offset0))
{
	if(input[i]>(15125+offset0))
{
	if(input[i]==(15127+offset0))
{
	vR[i] = 15127;
}
else
{
	vR[i] = 15126;
}

}
else
{
	if(input[i]==(15125+offset0))
{
	vR[i] = 15125;
}
else
{
	vR[i] = 15124;
}

}

}
else
{
	if(input[i]>(15121+offset0))
{
	if(input[i]==(15123+offset0))
{
	vR[i] = 15123;
}
else
{
	vR[i] = 15122;
}

}
else
{
	if(input[i]==(15121+offset0))
{
	vR[i] = 15121;
}
else
{
	vR[i] = 15120;
}

}

}

}

}
else
{
	if(input[i]>(15111+offset0))
{
	if(input[i]>(15115+offset0))
{
	if(input[i]>(15117+offset0))
{
	if(input[i]==(15119+offset0))
{
	vR[i] = 15119;
}
else
{
	vR[i] = 15118;
}

}
else
{
	if(input[i]==(15117+offset0))
{
	vR[i] = 15117;
}
else
{
	vR[i] = 15116;
}

}

}
else
{
	if(input[i]>(15113+offset0))
{
	if(input[i]==(15115+offset0))
{
	vR[i] = 15115;
}
else
{
	vR[i] = 15114;
}

}
else
{
	if(input[i]==(15113+offset0))
{
	vR[i] = 15113;
}
else
{
	vR[i] = 15112;
}

}

}

}
else
{
	if(input[i]>(15107+offset0))
{
	if(input[i]>(15109+offset0))
{
	if(input[i]==(15111+offset0))
{
	vR[i] = 15111;
}
else
{
	vR[i] = 15110;
}

}
else
{
	if(input[i]==(15109+offset0))
{
	vR[i] = 15109;
}
else
{
	vR[i] = 15108;
}

}

}
else
{
	if(input[i]>(15105+offset0))
{
	if(input[i]==(15107+offset0))
{
	vR[i] = 15107;
}
else
{
	vR[i] = 15106;
}

}
else
{
	if(input[i]==(15105+offset0))
{
	vR[i] = 15105;
}
else
{
	vR[i] = 15104;
}

}

}

}

}

}

}

}

}
else
{
	if(input[i]>(14975+offset0))
{
	if(input[i]>(15039+offset0))
{
	if(input[i]>(15071+offset0))
{
	if(input[i]>(15087+offset0))
{
	if(input[i]>(15095+offset0))
{
	if(input[i]>(15099+offset0))
{
	if(input[i]>(15101+offset0))
{
	if(input[i]==(15103+offset0))
{
	vR[i] = 15103;
}
else
{
	vR[i] = 15102;
}

}
else
{
	if(input[i]==(15101+offset0))
{
	vR[i] = 15101;
}
else
{
	vR[i] = 15100;
}

}

}
else
{
	if(input[i]>(15097+offset0))
{
	if(input[i]==(15099+offset0))
{
	vR[i] = 15099;
}
else
{
	vR[i] = 15098;
}

}
else
{
	if(input[i]==(15097+offset0))
{
	vR[i] = 15097;
}
else
{
	vR[i] = 15096;
}

}

}

}
else
{
	if(input[i]>(15091+offset0))
{
	if(input[i]>(15093+offset0))
{
	if(input[i]==(15095+offset0))
{
	vR[i] = 15095;
}
else
{
	vR[i] = 15094;
}

}
else
{
	if(input[i]==(15093+offset0))
{
	vR[i] = 15093;
}
else
{
	vR[i] = 15092;
}

}

}
else
{
	if(input[i]>(15089+offset0))
{
	if(input[i]==(15091+offset0))
{
	vR[i] = 15091;
}
else
{
	vR[i] = 15090;
}

}
else
{
	if(input[i]==(15089+offset0))
{
	vR[i] = 15089;
}
else
{
	vR[i] = 15088;
}

}

}

}

}
else
{
	if(input[i]>(15079+offset0))
{
	if(input[i]>(15083+offset0))
{
	if(input[i]>(15085+offset0))
{
	if(input[i]==(15087+offset0))
{
	vR[i] = 15087;
}
else
{
	vR[i] = 15086;
}

}
else
{
	if(input[i]==(15085+offset0))
{
	vR[i] = 15085;
}
else
{
	vR[i] = 15084;
}

}

}
else
{
	if(input[i]>(15081+offset0))
{
	if(input[i]==(15083+offset0))
{
	vR[i] = 15083;
}
else
{
	vR[i] = 15082;
}

}
else
{
	if(input[i]==(15081+offset0))
{
	vR[i] = 15081;
}
else
{
	vR[i] = 15080;
}

}

}

}
else
{
	if(input[i]>(15075+offset0))
{
	if(input[i]>(15077+offset0))
{
	if(input[i]==(15079+offset0))
{
	vR[i] = 15079;
}
else
{
	vR[i] = 15078;
}

}
else
{
	if(input[i]==(15077+offset0))
{
	vR[i] = 15077;
}
else
{
	vR[i] = 15076;
}

}

}
else
{
	if(input[i]>(15073+offset0))
{
	if(input[i]==(15075+offset0))
{
	vR[i] = 15075;
}
else
{
	vR[i] = 15074;
}

}
else
{
	if(input[i]==(15073+offset0))
{
	vR[i] = 15073;
}
else
{
	vR[i] = 15072;
}

}

}

}

}

}
else
{
	if(input[i]>(15055+offset0))
{
	if(input[i]>(15063+offset0))
{
	if(input[i]>(15067+offset0))
{
	if(input[i]>(15069+offset0))
{
	if(input[i]==(15071+offset0))
{
	vR[i] = 15071;
}
else
{
	vR[i] = 15070;
}

}
else
{
	if(input[i]==(15069+offset0))
{
	vR[i] = 15069;
}
else
{
	vR[i] = 15068;
}

}

}
else
{
	if(input[i]>(15065+offset0))
{
	if(input[i]==(15067+offset0))
{
	vR[i] = 15067;
}
else
{
	vR[i] = 15066;
}

}
else
{
	if(input[i]==(15065+offset0))
{
	vR[i] = 15065;
}
else
{
	vR[i] = 15064;
}

}

}

}
else
{
	if(input[i]>(15059+offset0))
{
	if(input[i]>(15061+offset0))
{
	if(input[i]==(15063+offset0))
{
	vR[i] = 15063;
}
else
{
	vR[i] = 15062;
}

}
else
{
	if(input[i]==(15061+offset0))
{
	vR[i] = 15061;
}
else
{
	vR[i] = 15060;
}

}

}
else
{
	if(input[i]>(15057+offset0))
{
	if(input[i]==(15059+offset0))
{
	vR[i] = 15059;
}
else
{
	vR[i] = 15058;
}

}
else
{
	if(input[i]==(15057+offset0))
{
	vR[i] = 15057;
}
else
{
	vR[i] = 15056;
}

}

}

}

}
else
{
	if(input[i]>(15047+offset0))
{
	if(input[i]>(15051+offset0))
{
	if(input[i]>(15053+offset0))
{
	if(input[i]==(15055+offset0))
{
	vR[i] = 15055;
}
else
{
	vR[i] = 15054;
}

}
else
{
	if(input[i]==(15053+offset0))
{
	vR[i] = 15053;
}
else
{
	vR[i] = 15052;
}

}

}
else
{
	if(input[i]>(15049+offset0))
{
	if(input[i]==(15051+offset0))
{
	vR[i] = 15051;
}
else
{
	vR[i] = 15050;
}

}
else
{
	if(input[i]==(15049+offset0))
{
	vR[i] = 15049;
}
else
{
	vR[i] = 15048;
}

}

}

}
else
{
	if(input[i]>(15043+offset0))
{
	if(input[i]>(15045+offset0))
{
	if(input[i]==(15047+offset0))
{
	vR[i] = 15047;
}
else
{
	vR[i] = 15046;
}

}
else
{
	if(input[i]==(15045+offset0))
{
	vR[i] = 15045;
}
else
{
	vR[i] = 15044;
}

}

}
else
{
	if(input[i]>(15041+offset0))
{
	if(input[i]==(15043+offset0))
{
	vR[i] = 15043;
}
else
{
	vR[i] = 15042;
}

}
else
{
	if(input[i]==(15041+offset0))
{
	vR[i] = 15041;
}
else
{
	vR[i] = 15040;
}

}

}

}

}

}

}
else
{
	if(input[i]>(15007+offset0))
{
	if(input[i]>(15023+offset0))
{
	if(input[i]>(15031+offset0))
{
	if(input[i]>(15035+offset0))
{
	if(input[i]>(15037+offset0))
{
	if(input[i]==(15039+offset0))
{
	vR[i] = 15039;
}
else
{
	vR[i] = 15038;
}

}
else
{
	if(input[i]==(15037+offset0))
{
	vR[i] = 15037;
}
else
{
	vR[i] = 15036;
}

}

}
else
{
	if(input[i]>(15033+offset0))
{
	if(input[i]==(15035+offset0))
{
	vR[i] = 15035;
}
else
{
	vR[i] = 15034;
}

}
else
{
	if(input[i]==(15033+offset0))
{
	vR[i] = 15033;
}
else
{
	vR[i] = 15032;
}

}

}

}
else
{
	if(input[i]>(15027+offset0))
{
	if(input[i]>(15029+offset0))
{
	if(input[i]==(15031+offset0))
{
	vR[i] = 15031;
}
else
{
	vR[i] = 15030;
}

}
else
{
	if(input[i]==(15029+offset0))
{
	vR[i] = 15029;
}
else
{
	vR[i] = 15028;
}

}

}
else
{
	if(input[i]>(15025+offset0))
{
	if(input[i]==(15027+offset0))
{
	vR[i] = 15027;
}
else
{
	vR[i] = 15026;
}

}
else
{
	if(input[i]==(15025+offset0))
{
	vR[i] = 15025;
}
else
{
	vR[i] = 15024;
}

}

}

}

}
else
{
	if(input[i]>(15015+offset0))
{
	if(input[i]>(15019+offset0))
{
	if(input[i]>(15021+offset0))
{
	if(input[i]==(15023+offset0))
{
	vR[i] = 15023;
}
else
{
	vR[i] = 15022;
}

}
else
{
	if(input[i]==(15021+offset0))
{
	vR[i] = 15021;
}
else
{
	vR[i] = 15020;
}

}

}
else
{
	if(input[i]>(15017+offset0))
{
	if(input[i]==(15019+offset0))
{
	vR[i] = 15019;
}
else
{
	vR[i] = 15018;
}

}
else
{
	if(input[i]==(15017+offset0))
{
	vR[i] = 15017;
}
else
{
	vR[i] = 15016;
}

}

}

}
else
{
	if(input[i]>(15011+offset0))
{
	if(input[i]>(15013+offset0))
{
	if(input[i]==(15015+offset0))
{
	vR[i] = 15015;
}
else
{
	vR[i] = 15014;
}

}
else
{
	if(input[i]==(15013+offset0))
{
	vR[i] = 15013;
}
else
{
	vR[i] = 15012;
}

}

}
else
{
	if(input[i]>(15009+offset0))
{
	if(input[i]==(15011+offset0))
{
	vR[i] = 15011;
}
else
{
	vR[i] = 15010;
}

}
else
{
	if(input[i]==(15009+offset0))
{
	vR[i] = 15009;
}
else
{
	vR[i] = 15008;
}

}

}

}

}

}
else
{
	if(input[i]>(14991+offset0))
{
	if(input[i]>(14999+offset0))
{
	if(input[i]>(15003+offset0))
{
	if(input[i]>(15005+offset0))
{
	if(input[i]==(15007+offset0))
{
	vR[i] = 15007;
}
else
{
	vR[i] = 15006;
}

}
else
{
	if(input[i]==(15005+offset0))
{
	vR[i] = 15005;
}
else
{
	vR[i] = 15004;
}

}

}
else
{
	if(input[i]>(15001+offset0))
{
	if(input[i]==(15003+offset0))
{
	vR[i] = 15003;
}
else
{
	vR[i] = 15002;
}

}
else
{
	if(input[i]==(15001+offset0))
{
	vR[i] = 15001;
}
else
{
	vR[i] = 15000;
}

}

}

}
else
{
	if(input[i]>(14995+offset0))
{
	if(input[i]>(14997+offset0))
{
	if(input[i]==(14999+offset0))
{
	vR[i] = 14999;
}
else
{
	vR[i] = 14998;
}

}
else
{
	if(input[i]==(14997+offset0))
{
	vR[i] = 14997;
}
else
{
	vR[i] = 14996;
}

}

}
else
{
	if(input[i]>(14993+offset0))
{
	if(input[i]==(14995+offset0))
{
	vR[i] = 14995;
}
else
{
	vR[i] = 14994;
}

}
else
{
	if(input[i]==(14993+offset0))
{
	vR[i] = 14993;
}
else
{
	vR[i] = 14992;
}

}

}

}

}
else
{
	if(input[i]>(14983+offset0))
{
	if(input[i]>(14987+offset0))
{
	if(input[i]>(14989+offset0))
{
	if(input[i]==(14991+offset0))
{
	vR[i] = 14991;
}
else
{
	vR[i] = 14990;
}

}
else
{
	if(input[i]==(14989+offset0))
{
	vR[i] = 14989;
}
else
{
	vR[i] = 14988;
}

}

}
else
{
	if(input[i]>(14985+offset0))
{
	if(input[i]==(14987+offset0))
{
	vR[i] = 14987;
}
else
{
	vR[i] = 14986;
}

}
else
{
	if(input[i]==(14985+offset0))
{
	vR[i] = 14985;
}
else
{
	vR[i] = 14984;
}

}

}

}
else
{
	if(input[i]>(14979+offset0))
{
	if(input[i]>(14981+offset0))
{
	if(input[i]==(14983+offset0))
{
	vR[i] = 14983;
}
else
{
	vR[i] = 14982;
}

}
else
{
	if(input[i]==(14981+offset0))
{
	vR[i] = 14981;
}
else
{
	vR[i] = 14980;
}

}

}
else
{
	if(input[i]>(14977+offset0))
{
	if(input[i]==(14979+offset0))
{
	vR[i] = 14979;
}
else
{
	vR[i] = 14978;
}

}
else
{
	if(input[i]==(14977+offset0))
{
	vR[i] = 14977;
}
else
{
	vR[i] = 14976;
}

}

}

}

}

}

}

}
else
{
	if(input[i]>(14911+offset0))
{
	if(input[i]>(14943+offset0))
{
	if(input[i]>(14959+offset0))
{
	if(input[i]>(14967+offset0))
{
	if(input[i]>(14971+offset0))
{
	if(input[i]>(14973+offset0))
{
	if(input[i]==(14975+offset0))
{
	vR[i] = 14975;
}
else
{
	vR[i] = 14974;
}

}
else
{
	if(input[i]==(14973+offset0))
{
	vR[i] = 14973;
}
else
{
	vR[i] = 14972;
}

}

}
else
{
	if(input[i]>(14969+offset0))
{
	if(input[i]==(14971+offset0))
{
	vR[i] = 14971;
}
else
{
	vR[i] = 14970;
}

}
else
{
	if(input[i]==(14969+offset0))
{
	vR[i] = 14969;
}
else
{
	vR[i] = 14968;
}

}

}

}
else
{
	if(input[i]>(14963+offset0))
{
	if(input[i]>(14965+offset0))
{
	if(input[i]==(14967+offset0))
{
	vR[i] = 14967;
}
else
{
	vR[i] = 14966;
}

}
else
{
	if(input[i]==(14965+offset0))
{
	vR[i] = 14965;
}
else
{
	vR[i] = 14964;
}

}

}
else
{
	if(input[i]>(14961+offset0))
{
	if(input[i]==(14963+offset0))
{
	vR[i] = 14963;
}
else
{
	vR[i] = 14962;
}

}
else
{
	if(input[i]==(14961+offset0))
{
	vR[i] = 14961;
}
else
{
	vR[i] = 14960;
}

}

}

}

}
else
{
	if(input[i]>(14951+offset0))
{
	if(input[i]>(14955+offset0))
{
	if(input[i]>(14957+offset0))
{
	if(input[i]==(14959+offset0))
{
	vR[i] = 14959;
}
else
{
	vR[i] = 14958;
}

}
else
{
	if(input[i]==(14957+offset0))
{
	vR[i] = 14957;
}
else
{
	vR[i] = 14956;
}

}

}
else
{
	if(input[i]>(14953+offset0))
{
	if(input[i]==(14955+offset0))
{
	vR[i] = 14955;
}
else
{
	vR[i] = 14954;
}

}
else
{
	if(input[i]==(14953+offset0))
{
	vR[i] = 14953;
}
else
{
	vR[i] = 14952;
}

}

}

}
else
{
	if(input[i]>(14947+offset0))
{
	if(input[i]>(14949+offset0))
{
	if(input[i]==(14951+offset0))
{
	vR[i] = 14951;
}
else
{
	vR[i] = 14950;
}

}
else
{
	if(input[i]==(14949+offset0))
{
	vR[i] = 14949;
}
else
{
	vR[i] = 14948;
}

}

}
else
{
	if(input[i]>(14945+offset0))
{
	if(input[i]==(14947+offset0))
{
	vR[i] = 14947;
}
else
{
	vR[i] = 14946;
}

}
else
{
	if(input[i]==(14945+offset0))
{
	vR[i] = 14945;
}
else
{
	vR[i] = 14944;
}

}

}

}

}

}
else
{
	if(input[i]>(14927+offset0))
{
	if(input[i]>(14935+offset0))
{
	if(input[i]>(14939+offset0))
{
	if(input[i]>(14941+offset0))
{
	if(input[i]==(14943+offset0))
{
	vR[i] = 14943;
}
else
{
	vR[i] = 14942;
}

}
else
{
	if(input[i]==(14941+offset0))
{
	vR[i] = 14941;
}
else
{
	vR[i] = 14940;
}

}

}
else
{
	if(input[i]>(14937+offset0))
{
	if(input[i]==(14939+offset0))
{
	vR[i] = 14939;
}
else
{
	vR[i] = 14938;
}

}
else
{
	if(input[i]==(14937+offset0))
{
	vR[i] = 14937;
}
else
{
	vR[i] = 14936;
}

}

}

}
else
{
	if(input[i]>(14931+offset0))
{
	if(input[i]>(14933+offset0))
{
	if(input[i]==(14935+offset0))
{
	vR[i] = 14935;
}
else
{
	vR[i] = 14934;
}

}
else
{
	if(input[i]==(14933+offset0))
{
	vR[i] = 14933;
}
else
{
	vR[i] = 14932;
}

}

}
else
{
	if(input[i]>(14929+offset0))
{
	if(input[i]==(14931+offset0))
{
	vR[i] = 14931;
}
else
{
	vR[i] = 14930;
}

}
else
{
	if(input[i]==(14929+offset0))
{
	vR[i] = 14929;
}
else
{
	vR[i] = 14928;
}

}

}

}

}
else
{
	if(input[i]>(14919+offset0))
{
	if(input[i]>(14923+offset0))
{
	if(input[i]>(14925+offset0))
{
	if(input[i]==(14927+offset0))
{
	vR[i] = 14927;
}
else
{
	vR[i] = 14926;
}

}
else
{
	if(input[i]==(14925+offset0))
{
	vR[i] = 14925;
}
else
{
	vR[i] = 14924;
}

}

}
else
{
	if(input[i]>(14921+offset0))
{
	if(input[i]==(14923+offset0))
{
	vR[i] = 14923;
}
else
{
	vR[i] = 14922;
}

}
else
{
	if(input[i]==(14921+offset0))
{
	vR[i] = 14921;
}
else
{
	vR[i] = 14920;
}

}

}

}
else
{
	if(input[i]>(14915+offset0))
{
	if(input[i]>(14917+offset0))
{
	if(input[i]==(14919+offset0))
{
	vR[i] = 14919;
}
else
{
	vR[i] = 14918;
}

}
else
{
	if(input[i]==(14917+offset0))
{
	vR[i] = 14917;
}
else
{
	vR[i] = 14916;
}

}

}
else
{
	if(input[i]>(14913+offset0))
{
	if(input[i]==(14915+offset0))
{
	vR[i] = 14915;
}
else
{
	vR[i] = 14914;
}

}
else
{
	if(input[i]==(14913+offset0))
{
	vR[i] = 14913;
}
else
{
	vR[i] = 14912;
}

}

}

}

}

}

}
else
{
	if(input[i]>(14879+offset0))
{
	if(input[i]>(14895+offset0))
{
	if(input[i]>(14903+offset0))
{
	if(input[i]>(14907+offset0))
{
	if(input[i]>(14909+offset0))
{
	if(input[i]==(14911+offset0))
{
	vR[i] = 14911;
}
else
{
	vR[i] = 14910;
}

}
else
{
	if(input[i]==(14909+offset0))
{
	vR[i] = 14909;
}
else
{
	vR[i] = 14908;
}

}

}
else
{
	if(input[i]>(14905+offset0))
{
	if(input[i]==(14907+offset0))
{
	vR[i] = 14907;
}
else
{
	vR[i] = 14906;
}

}
else
{
	if(input[i]==(14905+offset0))
{
	vR[i] = 14905;
}
else
{
	vR[i] = 14904;
}

}

}

}
else
{
	if(input[i]>(14899+offset0))
{
	if(input[i]>(14901+offset0))
{
	if(input[i]==(14903+offset0))
{
	vR[i] = 14903;
}
else
{
	vR[i] = 14902;
}

}
else
{
	if(input[i]==(14901+offset0))
{
	vR[i] = 14901;
}
else
{
	vR[i] = 14900;
}

}

}
else
{
	if(input[i]>(14897+offset0))
{
	if(input[i]==(14899+offset0))
{
	vR[i] = 14899;
}
else
{
	vR[i] = 14898;
}

}
else
{
	if(input[i]==(14897+offset0))
{
	vR[i] = 14897;
}
else
{
	vR[i] = 14896;
}

}

}

}

}
else
{
	if(input[i]>(14887+offset0))
{
	if(input[i]>(14891+offset0))
{
	if(input[i]>(14893+offset0))
{
	if(input[i]==(14895+offset0))
{
	vR[i] = 14895;
}
else
{
	vR[i] = 14894;
}

}
else
{
	if(input[i]==(14893+offset0))
{
	vR[i] = 14893;
}
else
{
	vR[i] = 14892;
}

}

}
else
{
	if(input[i]>(14889+offset0))
{
	if(input[i]==(14891+offset0))
{
	vR[i] = 14891;
}
else
{
	vR[i] = 14890;
}

}
else
{
	if(input[i]==(14889+offset0))
{
	vR[i] = 14889;
}
else
{
	vR[i] = 14888;
}

}

}

}
else
{
	if(input[i]>(14883+offset0))
{
	if(input[i]>(14885+offset0))
{
	if(input[i]==(14887+offset0))
{
	vR[i] = 14887;
}
else
{
	vR[i] = 14886;
}

}
else
{
	if(input[i]==(14885+offset0))
{
	vR[i] = 14885;
}
else
{
	vR[i] = 14884;
}

}

}
else
{
	if(input[i]>(14881+offset0))
{
	if(input[i]==(14883+offset0))
{
	vR[i] = 14883;
}
else
{
	vR[i] = 14882;
}

}
else
{
	if(input[i]==(14881+offset0))
{
	vR[i] = 14881;
}
else
{
	vR[i] = 14880;
}

}

}

}

}

}
else
{
	if(input[i]>(14863+offset0))
{
	if(input[i]>(14871+offset0))
{
	if(input[i]>(14875+offset0))
{
	if(input[i]>(14877+offset0))
{
	if(input[i]==(14879+offset0))
{
	vR[i] = 14879;
}
else
{
	vR[i] = 14878;
}

}
else
{
	if(input[i]==(14877+offset0))
{
	vR[i] = 14877;
}
else
{
	vR[i] = 14876;
}

}

}
else
{
	if(input[i]>(14873+offset0))
{
	if(input[i]==(14875+offset0))
{
	vR[i] = 14875;
}
else
{
	vR[i] = 14874;
}

}
else
{
	if(input[i]==(14873+offset0))
{
	vR[i] = 14873;
}
else
{
	vR[i] = 14872;
}

}

}

}
else
{
	if(input[i]>(14867+offset0))
{
	if(input[i]>(14869+offset0))
{
	if(input[i]==(14871+offset0))
{
	vR[i] = 14871;
}
else
{
	vR[i] = 14870;
}

}
else
{
	if(input[i]==(14869+offset0))
{
	vR[i] = 14869;
}
else
{
	vR[i] = 14868;
}

}

}
else
{
	if(input[i]>(14865+offset0))
{
	if(input[i]==(14867+offset0))
{
	vR[i] = 14867;
}
else
{
	vR[i] = 14866;
}

}
else
{
	if(input[i]==(14865+offset0))
{
	vR[i] = 14865;
}
else
{
	vR[i] = 14864;
}

}

}

}

}
else
{
	if(input[i]>(14855+offset0))
{
	if(input[i]>(14859+offset0))
{
	if(input[i]>(14861+offset0))
{
	if(input[i]==(14863+offset0))
{
	vR[i] = 14863;
}
else
{
	vR[i] = 14862;
}

}
else
{
	if(input[i]==(14861+offset0))
{
	vR[i] = 14861;
}
else
{
	vR[i] = 14860;
}

}

}
else
{
	if(input[i]>(14857+offset0))
{
	if(input[i]==(14859+offset0))
{
	vR[i] = 14859;
}
else
{
	vR[i] = 14858;
}

}
else
{
	if(input[i]==(14857+offset0))
{
	vR[i] = 14857;
}
else
{
	vR[i] = 14856;
}

}

}

}
else
{
	if(input[i]>(14851+offset0))
{
	if(input[i]>(14853+offset0))
{
	if(input[i]==(14855+offset0))
{
	vR[i] = 14855;
}
else
{
	vR[i] = 14854;
}

}
else
{
	if(input[i]==(14853+offset0))
{
	vR[i] = 14853;
}
else
{
	vR[i] = 14852;
}

}

}
else
{
	if(input[i]>(14849+offset0))
{
	if(input[i]==(14851+offset0))
{
	vR[i] = 14851;
}
else
{
	vR[i] = 14850;
}

}
else
{
	if(input[i]==(14849+offset0))
{
	vR[i] = 14849;
}
else
{
	vR[i] = 14848;
}

}

}

}

}

}

}

}

}

}
else
{
	if(input[i]>(14591+offset0))
{
	if(input[i]>(14719+offset0))
{
	if(input[i]>(14783+offset0))
{
	if(input[i]>(14815+offset0))
{
	if(input[i]>(14831+offset0))
{
	if(input[i]>(14839+offset0))
{
	if(input[i]>(14843+offset0))
{
	if(input[i]>(14845+offset0))
{
	if(input[i]==(14847+offset0))
{
	vR[i] = 14847;
}
else
{
	vR[i] = 14846;
}

}
else
{
	if(input[i]==(14845+offset0))
{
	vR[i] = 14845;
}
else
{
	vR[i] = 14844;
}

}

}
else
{
	if(input[i]>(14841+offset0))
{
	if(input[i]==(14843+offset0))
{
	vR[i] = 14843;
}
else
{
	vR[i] = 14842;
}

}
else
{
	if(input[i]==(14841+offset0))
{
	vR[i] = 14841;
}
else
{
	vR[i] = 14840;
}

}

}

}
else
{
	if(input[i]>(14835+offset0))
{
	if(input[i]>(14837+offset0))
{
	if(input[i]==(14839+offset0))
{
	vR[i] = 14839;
}
else
{
	vR[i] = 14838;
}

}
else
{
	if(input[i]==(14837+offset0))
{
	vR[i] = 14837;
}
else
{
	vR[i] = 14836;
}

}

}
else
{
	if(input[i]>(14833+offset0))
{
	if(input[i]==(14835+offset0))
{
	vR[i] = 14835;
}
else
{
	vR[i] = 14834;
}

}
else
{
	if(input[i]==(14833+offset0))
{
	vR[i] = 14833;
}
else
{
	vR[i] = 14832;
}

}

}

}

}
else
{
	if(input[i]>(14823+offset0))
{
	if(input[i]>(14827+offset0))
{
	if(input[i]>(14829+offset0))
{
	if(input[i]==(14831+offset0))
{
	vR[i] = 14831;
}
else
{
	vR[i] = 14830;
}

}
else
{
	if(input[i]==(14829+offset0))
{
	vR[i] = 14829;
}
else
{
	vR[i] = 14828;
}

}

}
else
{
	if(input[i]>(14825+offset0))
{
	if(input[i]==(14827+offset0))
{
	vR[i] = 14827;
}
else
{
	vR[i] = 14826;
}

}
else
{
	if(input[i]==(14825+offset0))
{
	vR[i] = 14825;
}
else
{
	vR[i] = 14824;
}

}

}

}
else
{
	if(input[i]>(14819+offset0))
{
	if(input[i]>(14821+offset0))
{
	if(input[i]==(14823+offset0))
{
	vR[i] = 14823;
}
else
{
	vR[i] = 14822;
}

}
else
{
	if(input[i]==(14821+offset0))
{
	vR[i] = 14821;
}
else
{
	vR[i] = 14820;
}

}

}
else
{
	if(input[i]>(14817+offset0))
{
	if(input[i]==(14819+offset0))
{
	vR[i] = 14819;
}
else
{
	vR[i] = 14818;
}

}
else
{
	if(input[i]==(14817+offset0))
{
	vR[i] = 14817;
}
else
{
	vR[i] = 14816;
}

}

}

}

}

}
else
{
	if(input[i]>(14799+offset0))
{
	if(input[i]>(14807+offset0))
{
	if(input[i]>(14811+offset0))
{
	if(input[i]>(14813+offset0))
{
	if(input[i]==(14815+offset0))
{
	vR[i] = 14815;
}
else
{
	vR[i] = 14814;
}

}
else
{
	if(input[i]==(14813+offset0))
{
	vR[i] = 14813;
}
else
{
	vR[i] = 14812;
}

}

}
else
{
	if(input[i]>(14809+offset0))
{
	if(input[i]==(14811+offset0))
{
	vR[i] = 14811;
}
else
{
	vR[i] = 14810;
}

}
else
{
	if(input[i]==(14809+offset0))
{
	vR[i] = 14809;
}
else
{
	vR[i] = 14808;
}

}

}

}
else
{
	if(input[i]>(14803+offset0))
{
	if(input[i]>(14805+offset0))
{
	if(input[i]==(14807+offset0))
{
	vR[i] = 14807;
}
else
{
	vR[i] = 14806;
}

}
else
{
	if(input[i]==(14805+offset0))
{
	vR[i] = 14805;
}
else
{
	vR[i] = 14804;
}

}

}
else
{
	if(input[i]>(14801+offset0))
{
	if(input[i]==(14803+offset0))
{
	vR[i] = 14803;
}
else
{
	vR[i] = 14802;
}

}
else
{
	if(input[i]==(14801+offset0))
{
	vR[i] = 14801;
}
else
{
	vR[i] = 14800;
}

}

}

}

}
else
{
	if(input[i]>(14791+offset0))
{
	if(input[i]>(14795+offset0))
{
	if(input[i]>(14797+offset0))
{
	if(input[i]==(14799+offset0))
{
	vR[i] = 14799;
}
else
{
	vR[i] = 14798;
}

}
else
{
	if(input[i]==(14797+offset0))
{
	vR[i] = 14797;
}
else
{
	vR[i] = 14796;
}

}

}
else
{
	if(input[i]>(14793+offset0))
{
	if(input[i]==(14795+offset0))
{
	vR[i] = 14795;
}
else
{
	vR[i] = 14794;
}

}
else
{
	if(input[i]==(14793+offset0))
{
	vR[i] = 14793;
}
else
{
	vR[i] = 14792;
}

}

}

}
else
{
	if(input[i]>(14787+offset0))
{
	if(input[i]>(14789+offset0))
{
	if(input[i]==(14791+offset0))
{
	vR[i] = 14791;
}
else
{
	vR[i] = 14790;
}

}
else
{
	if(input[i]==(14789+offset0))
{
	vR[i] = 14789;
}
else
{
	vR[i] = 14788;
}

}

}
else
{
	if(input[i]>(14785+offset0))
{
	if(input[i]==(14787+offset0))
{
	vR[i] = 14787;
}
else
{
	vR[i] = 14786;
}

}
else
{
	if(input[i]==(14785+offset0))
{
	vR[i] = 14785;
}
else
{
	vR[i] = 14784;
}

}

}

}

}

}

}
else
{
	if(input[i]>(14751+offset0))
{
	if(input[i]>(14767+offset0))
{
	if(input[i]>(14775+offset0))
{
	if(input[i]>(14779+offset0))
{
	if(input[i]>(14781+offset0))
{
	if(input[i]==(14783+offset0))
{
	vR[i] = 14783;
}
else
{
	vR[i] = 14782;
}

}
else
{
	if(input[i]==(14781+offset0))
{
	vR[i] = 14781;
}
else
{
	vR[i] = 14780;
}

}

}
else
{
	if(input[i]>(14777+offset0))
{
	if(input[i]==(14779+offset0))
{
	vR[i] = 14779;
}
else
{
	vR[i] = 14778;
}

}
else
{
	if(input[i]==(14777+offset0))
{
	vR[i] = 14777;
}
else
{
	vR[i] = 14776;
}

}

}

}
else
{
	if(input[i]>(14771+offset0))
{
	if(input[i]>(14773+offset0))
{
	if(input[i]==(14775+offset0))
{
	vR[i] = 14775;
}
else
{
	vR[i] = 14774;
}

}
else
{
	if(input[i]==(14773+offset0))
{
	vR[i] = 14773;
}
else
{
	vR[i] = 14772;
}

}

}
else
{
	if(input[i]>(14769+offset0))
{
	if(input[i]==(14771+offset0))
{
	vR[i] = 14771;
}
else
{
	vR[i] = 14770;
}

}
else
{
	if(input[i]==(14769+offset0))
{
	vR[i] = 14769;
}
else
{
	vR[i] = 14768;
}

}

}

}

}
else
{
	if(input[i]>(14759+offset0))
{
	if(input[i]>(14763+offset0))
{
	if(input[i]>(14765+offset0))
{
	if(input[i]==(14767+offset0))
{
	vR[i] = 14767;
}
else
{
	vR[i] = 14766;
}

}
else
{
	if(input[i]==(14765+offset0))
{
	vR[i] = 14765;
}
else
{
	vR[i] = 14764;
}

}

}
else
{
	if(input[i]>(14761+offset0))
{
	if(input[i]==(14763+offset0))
{
	vR[i] = 14763;
}
else
{
	vR[i] = 14762;
}

}
else
{
	if(input[i]==(14761+offset0))
{
	vR[i] = 14761;
}
else
{
	vR[i] = 14760;
}

}

}

}
else
{
	if(input[i]>(14755+offset0))
{
	if(input[i]>(14757+offset0))
{
	if(input[i]==(14759+offset0))
{
	vR[i] = 14759;
}
else
{
	vR[i] = 14758;
}

}
else
{
	if(input[i]==(14757+offset0))
{
	vR[i] = 14757;
}
else
{
	vR[i] = 14756;
}

}

}
else
{
	if(input[i]>(14753+offset0))
{
	if(input[i]==(14755+offset0))
{
	vR[i] = 14755;
}
else
{
	vR[i] = 14754;
}

}
else
{
	if(input[i]==(14753+offset0))
{
	vR[i] = 14753;
}
else
{
	vR[i] = 14752;
}

}

}

}

}

}
else
{
	if(input[i]>(14735+offset0))
{
	if(input[i]>(14743+offset0))
{
	if(input[i]>(14747+offset0))
{
	if(input[i]>(14749+offset0))
{
	if(input[i]==(14751+offset0))
{
	vR[i] = 14751;
}
else
{
	vR[i] = 14750;
}

}
else
{
	if(input[i]==(14749+offset0))
{
	vR[i] = 14749;
}
else
{
	vR[i] = 14748;
}

}

}
else
{
	if(input[i]>(14745+offset0))
{
	if(input[i]==(14747+offset0))
{
	vR[i] = 14747;
}
else
{
	vR[i] = 14746;
}

}
else
{
	if(input[i]==(14745+offset0))
{
	vR[i] = 14745;
}
else
{
	vR[i] = 14744;
}

}

}

}
else
{
	if(input[i]>(14739+offset0))
{
	if(input[i]>(14741+offset0))
{
	if(input[i]==(14743+offset0))
{
	vR[i] = 14743;
}
else
{
	vR[i] = 14742;
}

}
else
{
	if(input[i]==(14741+offset0))
{
	vR[i] = 14741;
}
else
{
	vR[i] = 14740;
}

}

}
else
{
	if(input[i]>(14737+offset0))
{
	if(input[i]==(14739+offset0))
{
	vR[i] = 14739;
}
else
{
	vR[i] = 14738;
}

}
else
{
	if(input[i]==(14737+offset0))
{
	vR[i] = 14737;
}
else
{
	vR[i] = 14736;
}

}

}

}

}
else
{
	if(input[i]>(14727+offset0))
{
	if(input[i]>(14731+offset0))
{
	if(input[i]>(14733+offset0))
{
	if(input[i]==(14735+offset0))
{
	vR[i] = 14735;
}
else
{
	vR[i] = 14734;
}

}
else
{
	if(input[i]==(14733+offset0))
{
	vR[i] = 14733;
}
else
{
	vR[i] = 14732;
}

}

}
else
{
	if(input[i]>(14729+offset0))
{
	if(input[i]==(14731+offset0))
{
	vR[i] = 14731;
}
else
{
	vR[i] = 14730;
}

}
else
{
	if(input[i]==(14729+offset0))
{
	vR[i] = 14729;
}
else
{
	vR[i] = 14728;
}

}

}

}
else
{
	if(input[i]>(14723+offset0))
{
	if(input[i]>(14725+offset0))
{
	if(input[i]==(14727+offset0))
{
	vR[i] = 14727;
}
else
{
	vR[i] = 14726;
}

}
else
{
	if(input[i]==(14725+offset0))
{
	vR[i] = 14725;
}
else
{
	vR[i] = 14724;
}

}

}
else
{
	if(input[i]>(14721+offset0))
{
	if(input[i]==(14723+offset0))
{
	vR[i] = 14723;
}
else
{
	vR[i] = 14722;
}

}
else
{
	if(input[i]==(14721+offset0))
{
	vR[i] = 14721;
}
else
{
	vR[i] = 14720;
}

}

}

}

}

}

}

}
else
{
	if(input[i]>(14655+offset0))
{
	if(input[i]>(14687+offset0))
{
	if(input[i]>(14703+offset0))
{
	if(input[i]>(14711+offset0))
{
	if(input[i]>(14715+offset0))
{
	if(input[i]>(14717+offset0))
{
	if(input[i]==(14719+offset0))
{
	vR[i] = 14719;
}
else
{
	vR[i] = 14718;
}

}
else
{
	if(input[i]==(14717+offset0))
{
	vR[i] = 14717;
}
else
{
	vR[i] = 14716;
}

}

}
else
{
	if(input[i]>(14713+offset0))
{
	if(input[i]==(14715+offset0))
{
	vR[i] = 14715;
}
else
{
	vR[i] = 14714;
}

}
else
{
	if(input[i]==(14713+offset0))
{
	vR[i] = 14713;
}
else
{
	vR[i] = 14712;
}

}

}

}
else
{
	if(input[i]>(14707+offset0))
{
	if(input[i]>(14709+offset0))
{
	if(input[i]==(14711+offset0))
{
	vR[i] = 14711;
}
else
{
	vR[i] = 14710;
}

}
else
{
	if(input[i]==(14709+offset0))
{
	vR[i] = 14709;
}
else
{
	vR[i] = 14708;
}

}

}
else
{
	if(input[i]>(14705+offset0))
{
	if(input[i]==(14707+offset0))
{
	vR[i] = 14707;
}
else
{
	vR[i] = 14706;
}

}
else
{
	if(input[i]==(14705+offset0))
{
	vR[i] = 14705;
}
else
{
	vR[i] = 14704;
}

}

}

}

}
else
{
	if(input[i]>(14695+offset0))
{
	if(input[i]>(14699+offset0))
{
	if(input[i]>(14701+offset0))
{
	if(input[i]==(14703+offset0))
{
	vR[i] = 14703;
}
else
{
	vR[i] = 14702;
}

}
else
{
	if(input[i]==(14701+offset0))
{
	vR[i] = 14701;
}
else
{
	vR[i] = 14700;
}

}

}
else
{
	if(input[i]>(14697+offset0))
{
	if(input[i]==(14699+offset0))
{
	vR[i] = 14699;
}
else
{
	vR[i] = 14698;
}

}
else
{
	if(input[i]==(14697+offset0))
{
	vR[i] = 14697;
}
else
{
	vR[i] = 14696;
}

}

}

}
else
{
	if(input[i]>(14691+offset0))
{
	if(input[i]>(14693+offset0))
{
	if(input[i]==(14695+offset0))
{
	vR[i] = 14695;
}
else
{
	vR[i] = 14694;
}

}
else
{
	if(input[i]==(14693+offset0))
{
	vR[i] = 14693;
}
else
{
	vR[i] = 14692;
}

}

}
else
{
	if(input[i]>(14689+offset0))
{
	if(input[i]==(14691+offset0))
{
	vR[i] = 14691;
}
else
{
	vR[i] = 14690;
}

}
else
{
	if(input[i]==(14689+offset0))
{
	vR[i] = 14689;
}
else
{
	vR[i] = 14688;
}

}

}

}

}

}
else
{
	if(input[i]>(14671+offset0))
{
	if(input[i]>(14679+offset0))
{
	if(input[i]>(14683+offset0))
{
	if(input[i]>(14685+offset0))
{
	if(input[i]==(14687+offset0))
{
	vR[i] = 14687;
}
else
{
	vR[i] = 14686;
}

}
else
{
	if(input[i]==(14685+offset0))
{
	vR[i] = 14685;
}
else
{
	vR[i] = 14684;
}

}

}
else
{
	if(input[i]>(14681+offset0))
{
	if(input[i]==(14683+offset0))
{
	vR[i] = 14683;
}
else
{
	vR[i] = 14682;
}

}
else
{
	if(input[i]==(14681+offset0))
{
	vR[i] = 14681;
}
else
{
	vR[i] = 14680;
}

}

}

}
else
{
	if(input[i]>(14675+offset0))
{
	if(input[i]>(14677+offset0))
{
	if(input[i]==(14679+offset0))
{
	vR[i] = 14679;
}
else
{
	vR[i] = 14678;
}

}
else
{
	if(input[i]==(14677+offset0))
{
	vR[i] = 14677;
}
else
{
	vR[i] = 14676;
}

}

}
else
{
	if(input[i]>(14673+offset0))
{
	if(input[i]==(14675+offset0))
{
	vR[i] = 14675;
}
else
{
	vR[i] = 14674;
}

}
else
{
	if(input[i]==(14673+offset0))
{
	vR[i] = 14673;
}
else
{
	vR[i] = 14672;
}

}

}

}

}
else
{
	if(input[i]>(14663+offset0))
{
	if(input[i]>(14667+offset0))
{
	if(input[i]>(14669+offset0))
{
	if(input[i]==(14671+offset0))
{
	vR[i] = 14671;
}
else
{
	vR[i] = 14670;
}

}
else
{
	if(input[i]==(14669+offset0))
{
	vR[i] = 14669;
}
else
{
	vR[i] = 14668;
}

}

}
else
{
	if(input[i]>(14665+offset0))
{
	if(input[i]==(14667+offset0))
{
	vR[i] = 14667;
}
else
{
	vR[i] = 14666;
}

}
else
{
	if(input[i]==(14665+offset0))
{
	vR[i] = 14665;
}
else
{
	vR[i] = 14664;
}

}

}

}
else
{
	if(input[i]>(14659+offset0))
{
	if(input[i]>(14661+offset0))
{
	if(input[i]==(14663+offset0))
{
	vR[i] = 14663;
}
else
{
	vR[i] = 14662;
}

}
else
{
	if(input[i]==(14661+offset0))
{
	vR[i] = 14661;
}
else
{
	vR[i] = 14660;
}

}

}
else
{
	if(input[i]>(14657+offset0))
{
	if(input[i]==(14659+offset0))
{
	vR[i] = 14659;
}
else
{
	vR[i] = 14658;
}

}
else
{
	if(input[i]==(14657+offset0))
{
	vR[i] = 14657;
}
else
{
	vR[i] = 14656;
}

}

}

}

}

}

}
else
{
	if(input[i]>(14623+offset0))
{
	if(input[i]>(14639+offset0))
{
	if(input[i]>(14647+offset0))
{
	if(input[i]>(14651+offset0))
{
	if(input[i]>(14653+offset0))
{
	if(input[i]==(14655+offset0))
{
	vR[i] = 14655;
}
else
{
	vR[i] = 14654;
}

}
else
{
	if(input[i]==(14653+offset0))
{
	vR[i] = 14653;
}
else
{
	vR[i] = 14652;
}

}

}
else
{
	if(input[i]>(14649+offset0))
{
	if(input[i]==(14651+offset0))
{
	vR[i] = 14651;
}
else
{
	vR[i] = 14650;
}

}
else
{
	if(input[i]==(14649+offset0))
{
	vR[i] = 14649;
}
else
{
	vR[i] = 14648;
}

}

}

}
else
{
	if(input[i]>(14643+offset0))
{
	if(input[i]>(14645+offset0))
{
	if(input[i]==(14647+offset0))
{
	vR[i] = 14647;
}
else
{
	vR[i] = 14646;
}

}
else
{
	if(input[i]==(14645+offset0))
{
	vR[i] = 14645;
}
else
{
	vR[i] = 14644;
}

}

}
else
{
	if(input[i]>(14641+offset0))
{
	if(input[i]==(14643+offset0))
{
	vR[i] = 14643;
}
else
{
	vR[i] = 14642;
}

}
else
{
	if(input[i]==(14641+offset0))
{
	vR[i] = 14641;
}
else
{
	vR[i] = 14640;
}

}

}

}

}
else
{
	if(input[i]>(14631+offset0))
{
	if(input[i]>(14635+offset0))
{
	if(input[i]>(14637+offset0))
{
	if(input[i]==(14639+offset0))
{
	vR[i] = 14639;
}
else
{
	vR[i] = 14638;
}

}
else
{
	if(input[i]==(14637+offset0))
{
	vR[i] = 14637;
}
else
{
	vR[i] = 14636;
}

}

}
else
{
	if(input[i]>(14633+offset0))
{
	if(input[i]==(14635+offset0))
{
	vR[i] = 14635;
}
else
{
	vR[i] = 14634;
}

}
else
{
	if(input[i]==(14633+offset0))
{
	vR[i] = 14633;
}
else
{
	vR[i] = 14632;
}

}

}

}
else
{
	if(input[i]>(14627+offset0))
{
	if(input[i]>(14629+offset0))
{
	if(input[i]==(14631+offset0))
{
	vR[i] = 14631;
}
else
{
	vR[i] = 14630;
}

}
else
{
	if(input[i]==(14629+offset0))
{
	vR[i] = 14629;
}
else
{
	vR[i] = 14628;
}

}

}
else
{
	if(input[i]>(14625+offset0))
{
	if(input[i]==(14627+offset0))
{
	vR[i] = 14627;
}
else
{
	vR[i] = 14626;
}

}
else
{
	if(input[i]==(14625+offset0))
{
	vR[i] = 14625;
}
else
{
	vR[i] = 14624;
}

}

}

}

}

}
else
{
	if(input[i]>(14607+offset0))
{
	if(input[i]>(14615+offset0))
{
	if(input[i]>(14619+offset0))
{
	if(input[i]>(14621+offset0))
{
	if(input[i]==(14623+offset0))
{
	vR[i] = 14623;
}
else
{
	vR[i] = 14622;
}

}
else
{
	if(input[i]==(14621+offset0))
{
	vR[i] = 14621;
}
else
{
	vR[i] = 14620;
}

}

}
else
{
	if(input[i]>(14617+offset0))
{
	if(input[i]==(14619+offset0))
{
	vR[i] = 14619;
}
else
{
	vR[i] = 14618;
}

}
else
{
	if(input[i]==(14617+offset0))
{
	vR[i] = 14617;
}
else
{
	vR[i] = 14616;
}

}

}

}
else
{
	if(input[i]>(14611+offset0))
{
	if(input[i]>(14613+offset0))
{
	if(input[i]==(14615+offset0))
{
	vR[i] = 14615;
}
else
{
	vR[i] = 14614;
}

}
else
{
	if(input[i]==(14613+offset0))
{
	vR[i] = 14613;
}
else
{
	vR[i] = 14612;
}

}

}
else
{
	if(input[i]>(14609+offset0))
{
	if(input[i]==(14611+offset0))
{
	vR[i] = 14611;
}
else
{
	vR[i] = 14610;
}

}
else
{
	if(input[i]==(14609+offset0))
{
	vR[i] = 14609;
}
else
{
	vR[i] = 14608;
}

}

}

}

}
else
{
	if(input[i]>(14599+offset0))
{
	if(input[i]>(14603+offset0))
{
	if(input[i]>(14605+offset0))
{
	if(input[i]==(14607+offset0))
{
	vR[i] = 14607;
}
else
{
	vR[i] = 14606;
}

}
else
{
	if(input[i]==(14605+offset0))
{
	vR[i] = 14605;
}
else
{
	vR[i] = 14604;
}

}

}
else
{
	if(input[i]>(14601+offset0))
{
	if(input[i]==(14603+offset0))
{
	vR[i] = 14603;
}
else
{
	vR[i] = 14602;
}

}
else
{
	if(input[i]==(14601+offset0))
{
	vR[i] = 14601;
}
else
{
	vR[i] = 14600;
}

}

}

}
else
{
	if(input[i]>(14595+offset0))
{
	if(input[i]>(14597+offset0))
{
	if(input[i]==(14599+offset0))
{
	vR[i] = 14599;
}
else
{
	vR[i] = 14598;
}

}
else
{
	if(input[i]==(14597+offset0))
{
	vR[i] = 14597;
}
else
{
	vR[i] = 14596;
}

}

}
else
{
	if(input[i]>(14593+offset0))
{
	if(input[i]==(14595+offset0))
{
	vR[i] = 14595;
}
else
{
	vR[i] = 14594;
}

}
else
{
	if(input[i]==(14593+offset0))
{
	vR[i] = 14593;
}
else
{
	vR[i] = 14592;
}

}

}

}

}

}

}

}

}
else
{
	if(input[i]>(14463+offset0))
{
	if(input[i]>(14527+offset0))
{
	if(input[i]>(14559+offset0))
{
	if(input[i]>(14575+offset0))
{
	if(input[i]>(14583+offset0))
{
	if(input[i]>(14587+offset0))
{
	if(input[i]>(14589+offset0))
{
	if(input[i]==(14591+offset0))
{
	vR[i] = 14591;
}
else
{
	vR[i] = 14590;
}

}
else
{
	if(input[i]==(14589+offset0))
{
	vR[i] = 14589;
}
else
{
	vR[i] = 14588;
}

}

}
else
{
	if(input[i]>(14585+offset0))
{
	if(input[i]==(14587+offset0))
{
	vR[i] = 14587;
}
else
{
	vR[i] = 14586;
}

}
else
{
	if(input[i]==(14585+offset0))
{
	vR[i] = 14585;
}
else
{
	vR[i] = 14584;
}

}

}

}
else
{
	if(input[i]>(14579+offset0))
{
	if(input[i]>(14581+offset0))
{
	if(input[i]==(14583+offset0))
{
	vR[i] = 14583;
}
else
{
	vR[i] = 14582;
}

}
else
{
	if(input[i]==(14581+offset0))
{
	vR[i] = 14581;
}
else
{
	vR[i] = 14580;
}

}

}
else
{
	if(input[i]>(14577+offset0))
{
	if(input[i]==(14579+offset0))
{
	vR[i] = 14579;
}
else
{
	vR[i] = 14578;
}

}
else
{
	if(input[i]==(14577+offset0))
{
	vR[i] = 14577;
}
else
{
	vR[i] = 14576;
}

}

}

}

}
else
{
	if(input[i]>(14567+offset0))
{
	if(input[i]>(14571+offset0))
{
	if(input[i]>(14573+offset0))
{
	if(input[i]==(14575+offset0))
{
	vR[i] = 14575;
}
else
{
	vR[i] = 14574;
}

}
else
{
	if(input[i]==(14573+offset0))
{
	vR[i] = 14573;
}
else
{
	vR[i] = 14572;
}

}

}
else
{
	if(input[i]>(14569+offset0))
{
	if(input[i]==(14571+offset0))
{
	vR[i] = 14571;
}
else
{
	vR[i] = 14570;
}

}
else
{
	if(input[i]==(14569+offset0))
{
	vR[i] = 14569;
}
else
{
	vR[i] = 14568;
}

}

}

}
else
{
	if(input[i]>(14563+offset0))
{
	if(input[i]>(14565+offset0))
{
	if(input[i]==(14567+offset0))
{
	vR[i] = 14567;
}
else
{
	vR[i] = 14566;
}

}
else
{
	if(input[i]==(14565+offset0))
{
	vR[i] = 14565;
}
else
{
	vR[i] = 14564;
}

}

}
else
{
	if(input[i]>(14561+offset0))
{
	if(input[i]==(14563+offset0))
{
	vR[i] = 14563;
}
else
{
	vR[i] = 14562;
}

}
else
{
	if(input[i]==(14561+offset0))
{
	vR[i] = 14561;
}
else
{
	vR[i] = 14560;
}

}

}

}

}

}
else
{
	if(input[i]>(14543+offset0))
{
	if(input[i]>(14551+offset0))
{
	if(input[i]>(14555+offset0))
{
	if(input[i]>(14557+offset0))
{
	if(input[i]==(14559+offset0))
{
	vR[i] = 14559;
}
else
{
	vR[i] = 14558;
}

}
else
{
	if(input[i]==(14557+offset0))
{
	vR[i] = 14557;
}
else
{
	vR[i] = 14556;
}

}

}
else
{
	if(input[i]>(14553+offset0))
{
	if(input[i]==(14555+offset0))
{
	vR[i] = 14555;
}
else
{
	vR[i] = 14554;
}

}
else
{
	if(input[i]==(14553+offset0))
{
	vR[i] = 14553;
}
else
{
	vR[i] = 14552;
}

}

}

}
else
{
	if(input[i]>(14547+offset0))
{
	if(input[i]>(14549+offset0))
{
	if(input[i]==(14551+offset0))
{
	vR[i] = 14551;
}
else
{
	vR[i] = 14550;
}

}
else
{
	if(input[i]==(14549+offset0))
{
	vR[i] = 14549;
}
else
{
	vR[i] = 14548;
}

}

}
else
{
	if(input[i]>(14545+offset0))
{
	if(input[i]==(14547+offset0))
{
	vR[i] = 14547;
}
else
{
	vR[i] = 14546;
}

}
else
{
	if(input[i]==(14545+offset0))
{
	vR[i] = 14545;
}
else
{
	vR[i] = 14544;
}

}

}

}

}
else
{
	if(input[i]>(14535+offset0))
{
	if(input[i]>(14539+offset0))
{
	if(input[i]>(14541+offset0))
{
	if(input[i]==(14543+offset0))
{
	vR[i] = 14543;
}
else
{
	vR[i] = 14542;
}

}
else
{
	if(input[i]==(14541+offset0))
{
	vR[i] = 14541;
}
else
{
	vR[i] = 14540;
}

}

}
else
{
	if(input[i]>(14537+offset0))
{
	if(input[i]==(14539+offset0))
{
	vR[i] = 14539;
}
else
{
	vR[i] = 14538;
}

}
else
{
	if(input[i]==(14537+offset0))
{
	vR[i] = 14537;
}
else
{
	vR[i] = 14536;
}

}

}

}
else
{
	if(input[i]>(14531+offset0))
{
	if(input[i]>(14533+offset0))
{
	if(input[i]==(14535+offset0))
{
	vR[i] = 14535;
}
else
{
	vR[i] = 14534;
}

}
else
{
	if(input[i]==(14533+offset0))
{
	vR[i] = 14533;
}
else
{
	vR[i] = 14532;
}

}

}
else
{
	if(input[i]>(14529+offset0))
{
	if(input[i]==(14531+offset0))
{
	vR[i] = 14531;
}
else
{
	vR[i] = 14530;
}

}
else
{
	if(input[i]==(14529+offset0))
{
	vR[i] = 14529;
}
else
{
	vR[i] = 14528;
}

}

}

}

}

}

}
else
{
	if(input[i]>(14495+offset0))
{
	if(input[i]>(14511+offset0))
{
	if(input[i]>(14519+offset0))
{
	if(input[i]>(14523+offset0))
{
	if(input[i]>(14525+offset0))
{
	if(input[i]==(14527+offset0))
{
	vR[i] = 14527;
}
else
{
	vR[i] = 14526;
}

}
else
{
	if(input[i]==(14525+offset0))
{
	vR[i] = 14525;
}
else
{
	vR[i] = 14524;
}

}

}
else
{
	if(input[i]>(14521+offset0))
{
	if(input[i]==(14523+offset0))
{
	vR[i] = 14523;
}
else
{
	vR[i] = 14522;
}

}
else
{
	if(input[i]==(14521+offset0))
{
	vR[i] = 14521;
}
else
{
	vR[i] = 14520;
}

}

}

}
else
{
	if(input[i]>(14515+offset0))
{
	if(input[i]>(14517+offset0))
{
	if(input[i]==(14519+offset0))
{
	vR[i] = 14519;
}
else
{
	vR[i] = 14518;
}

}
else
{
	if(input[i]==(14517+offset0))
{
	vR[i] = 14517;
}
else
{
	vR[i] = 14516;
}

}

}
else
{
	if(input[i]>(14513+offset0))
{
	if(input[i]==(14515+offset0))
{
	vR[i] = 14515;
}
else
{
	vR[i] = 14514;
}

}
else
{
	if(input[i]==(14513+offset0))
{
	vR[i] = 14513;
}
else
{
	vR[i] = 14512;
}

}

}

}

}
else
{
	if(input[i]>(14503+offset0))
{
	if(input[i]>(14507+offset0))
{
	if(input[i]>(14509+offset0))
{
	if(input[i]==(14511+offset0))
{
	vR[i] = 14511;
}
else
{
	vR[i] = 14510;
}

}
else
{
	if(input[i]==(14509+offset0))
{
	vR[i] = 14509;
}
else
{
	vR[i] = 14508;
}

}

}
else
{
	if(input[i]>(14505+offset0))
{
	if(input[i]==(14507+offset0))
{
	vR[i] = 14507;
}
else
{
	vR[i] = 14506;
}

}
else
{
	if(input[i]==(14505+offset0))
{
	vR[i] = 14505;
}
else
{
	vR[i] = 14504;
}

}

}

}
else
{
	if(input[i]>(14499+offset0))
{
	if(input[i]>(14501+offset0))
{
	if(input[i]==(14503+offset0))
{
	vR[i] = 14503;
}
else
{
	vR[i] = 14502;
}

}
else
{
	if(input[i]==(14501+offset0))
{
	vR[i] = 14501;
}
else
{
	vR[i] = 14500;
}

}

}
else
{
	if(input[i]>(14497+offset0))
{
	if(input[i]==(14499+offset0))
{
	vR[i] = 14499;
}
else
{
	vR[i] = 14498;
}

}
else
{
	if(input[i]==(14497+offset0))
{
	vR[i] = 14497;
}
else
{
	vR[i] = 14496;
}

}

}

}

}

}
else
{
	if(input[i]>(14479+offset0))
{
	if(input[i]>(14487+offset0))
{
	if(input[i]>(14491+offset0))
{
	if(input[i]>(14493+offset0))
{
	if(input[i]==(14495+offset0))
{
	vR[i] = 14495;
}
else
{
	vR[i] = 14494;
}

}
else
{
	if(input[i]==(14493+offset0))
{
	vR[i] = 14493;
}
else
{
	vR[i] = 14492;
}

}

}
else
{
	if(input[i]>(14489+offset0))
{
	if(input[i]==(14491+offset0))
{
	vR[i] = 14491;
}
else
{
	vR[i] = 14490;
}

}
else
{
	if(input[i]==(14489+offset0))
{
	vR[i] = 14489;
}
else
{
	vR[i] = 14488;
}

}

}

}
else
{
	if(input[i]>(14483+offset0))
{
	if(input[i]>(14485+offset0))
{
	if(input[i]==(14487+offset0))
{
	vR[i] = 14487;
}
else
{
	vR[i] = 14486;
}

}
else
{
	if(input[i]==(14485+offset0))
{
	vR[i] = 14485;
}
else
{
	vR[i] = 14484;
}

}

}
else
{
	if(input[i]>(14481+offset0))
{
	if(input[i]==(14483+offset0))
{
	vR[i] = 14483;
}
else
{
	vR[i] = 14482;
}

}
else
{
	if(input[i]==(14481+offset0))
{
	vR[i] = 14481;
}
else
{
	vR[i] = 14480;
}

}

}

}

}
else
{
	if(input[i]>(14471+offset0))
{
	if(input[i]>(14475+offset0))
{
	if(input[i]>(14477+offset0))
{
	if(input[i]==(14479+offset0))
{
	vR[i] = 14479;
}
else
{
	vR[i] = 14478;
}

}
else
{
	if(input[i]==(14477+offset0))
{
	vR[i] = 14477;
}
else
{
	vR[i] = 14476;
}

}

}
else
{
	if(input[i]>(14473+offset0))
{
	if(input[i]==(14475+offset0))
{
	vR[i] = 14475;
}
else
{
	vR[i] = 14474;
}

}
else
{
	if(input[i]==(14473+offset0))
{
	vR[i] = 14473;
}
else
{
	vR[i] = 14472;
}

}

}

}
else
{
	if(input[i]>(14467+offset0))
{
	if(input[i]>(14469+offset0))
{
	if(input[i]==(14471+offset0))
{
	vR[i] = 14471;
}
else
{
	vR[i] = 14470;
}

}
else
{
	if(input[i]==(14469+offset0))
{
	vR[i] = 14469;
}
else
{
	vR[i] = 14468;
}

}

}
else
{
	if(input[i]>(14465+offset0))
{
	if(input[i]==(14467+offset0))
{
	vR[i] = 14467;
}
else
{
	vR[i] = 14466;
}

}
else
{
	if(input[i]==(14465+offset0))
{
	vR[i] = 14465;
}
else
{
	vR[i] = 14464;
}

}

}

}

}

}

}

}
else
{
	if(input[i]>(14399+offset0))
{
	if(input[i]>(14431+offset0))
{
	if(input[i]>(14447+offset0))
{
	if(input[i]>(14455+offset0))
{
	if(input[i]>(14459+offset0))
{
	if(input[i]>(14461+offset0))
{
	if(input[i]==(14463+offset0))
{
	vR[i] = 14463;
}
else
{
	vR[i] = 14462;
}

}
else
{
	if(input[i]==(14461+offset0))
{
	vR[i] = 14461;
}
else
{
	vR[i] = 14460;
}

}

}
else
{
	if(input[i]>(14457+offset0))
{
	if(input[i]==(14459+offset0))
{
	vR[i] = 14459;
}
else
{
	vR[i] = 14458;
}

}
else
{
	if(input[i]==(14457+offset0))
{
	vR[i] = 14457;
}
else
{
	vR[i] = 14456;
}

}

}

}
else
{
	if(input[i]>(14451+offset0))
{
	if(input[i]>(14453+offset0))
{
	if(input[i]==(14455+offset0))
{
	vR[i] = 14455;
}
else
{
	vR[i] = 14454;
}

}
else
{
	if(input[i]==(14453+offset0))
{
	vR[i] = 14453;
}
else
{
	vR[i] = 14452;
}

}

}
else
{
	if(input[i]>(14449+offset0))
{
	if(input[i]==(14451+offset0))
{
	vR[i] = 14451;
}
else
{
	vR[i] = 14450;
}

}
else
{
	if(input[i]==(14449+offset0))
{
	vR[i] = 14449;
}
else
{
	vR[i] = 14448;
}

}

}

}

}
else
{
	if(input[i]>(14439+offset0))
{
	if(input[i]>(14443+offset0))
{
	if(input[i]>(14445+offset0))
{
	if(input[i]==(14447+offset0))
{
	vR[i] = 14447;
}
else
{
	vR[i] = 14446;
}

}
else
{
	if(input[i]==(14445+offset0))
{
	vR[i] = 14445;
}
else
{
	vR[i] = 14444;
}

}

}
else
{
	if(input[i]>(14441+offset0))
{
	if(input[i]==(14443+offset0))
{
	vR[i] = 14443;
}
else
{
	vR[i] = 14442;
}

}
else
{
	if(input[i]==(14441+offset0))
{
	vR[i] = 14441;
}
else
{
	vR[i] = 14440;
}

}

}

}
else
{
	if(input[i]>(14435+offset0))
{
	if(input[i]>(14437+offset0))
{
	if(input[i]==(14439+offset0))
{
	vR[i] = 14439;
}
else
{
	vR[i] = 14438;
}

}
else
{
	if(input[i]==(14437+offset0))
{
	vR[i] = 14437;
}
else
{
	vR[i] = 14436;
}

}

}
else
{
	if(input[i]>(14433+offset0))
{
	if(input[i]==(14435+offset0))
{
	vR[i] = 14435;
}
else
{
	vR[i] = 14434;
}

}
else
{
	if(input[i]==(14433+offset0))
{
	vR[i] = 14433;
}
else
{
	vR[i] = 14432;
}

}

}

}

}

}
else
{
	if(input[i]>(14415+offset0))
{
	if(input[i]>(14423+offset0))
{
	if(input[i]>(14427+offset0))
{
	if(input[i]>(14429+offset0))
{
	if(input[i]==(14431+offset0))
{
	vR[i] = 14431;
}
else
{
	vR[i] = 14430;
}

}
else
{
	if(input[i]==(14429+offset0))
{
	vR[i] = 14429;
}
else
{
	vR[i] = 14428;
}

}

}
else
{
	if(input[i]>(14425+offset0))
{
	if(input[i]==(14427+offset0))
{
	vR[i] = 14427;
}
else
{
	vR[i] = 14426;
}

}
else
{
	if(input[i]==(14425+offset0))
{
	vR[i] = 14425;
}
else
{
	vR[i] = 14424;
}

}

}

}
else
{
	if(input[i]>(14419+offset0))
{
	if(input[i]>(14421+offset0))
{
	if(input[i]==(14423+offset0))
{
	vR[i] = 14423;
}
else
{
	vR[i] = 14422;
}

}
else
{
	if(input[i]==(14421+offset0))
{
	vR[i] = 14421;
}
else
{
	vR[i] = 14420;
}

}

}
else
{
	if(input[i]>(14417+offset0))
{
	if(input[i]==(14419+offset0))
{
	vR[i] = 14419;
}
else
{
	vR[i] = 14418;
}

}
else
{
	if(input[i]==(14417+offset0))
{
	vR[i] = 14417;
}
else
{
	vR[i] = 14416;
}

}

}

}

}
else
{
	if(input[i]>(14407+offset0))
{
	if(input[i]>(14411+offset0))
{
	if(input[i]>(14413+offset0))
{
	if(input[i]==(14415+offset0))
{
	vR[i] = 14415;
}
else
{
	vR[i] = 14414;
}

}
else
{
	if(input[i]==(14413+offset0))
{
	vR[i] = 14413;
}
else
{
	vR[i] = 14412;
}

}

}
else
{
	if(input[i]>(14409+offset0))
{
	if(input[i]==(14411+offset0))
{
	vR[i] = 14411;
}
else
{
	vR[i] = 14410;
}

}
else
{
	if(input[i]==(14409+offset0))
{
	vR[i] = 14409;
}
else
{
	vR[i] = 14408;
}

}

}

}
else
{
	if(input[i]>(14403+offset0))
{
	if(input[i]>(14405+offset0))
{
	if(input[i]==(14407+offset0))
{
	vR[i] = 14407;
}
else
{
	vR[i] = 14406;
}

}
else
{
	if(input[i]==(14405+offset0))
{
	vR[i] = 14405;
}
else
{
	vR[i] = 14404;
}

}

}
else
{
	if(input[i]>(14401+offset0))
{
	if(input[i]==(14403+offset0))
{
	vR[i] = 14403;
}
else
{
	vR[i] = 14402;
}

}
else
{
	if(input[i]==(14401+offset0))
{
	vR[i] = 14401;
}
else
{
	vR[i] = 14400;
}

}

}

}

}

}

}
else
{
	if(input[i]>(14367+offset0))
{
	if(input[i]>(14383+offset0))
{
	if(input[i]>(14391+offset0))
{
	if(input[i]>(14395+offset0))
{
	if(input[i]>(14397+offset0))
{
	if(input[i]==(14399+offset0))
{
	vR[i] = 14399;
}
else
{
	vR[i] = 14398;
}

}
else
{
	if(input[i]==(14397+offset0))
{
	vR[i] = 14397;
}
else
{
	vR[i] = 14396;
}

}

}
else
{
	if(input[i]>(14393+offset0))
{
	if(input[i]==(14395+offset0))
{
	vR[i] = 14395;
}
else
{
	vR[i] = 14394;
}

}
else
{
	if(input[i]==(14393+offset0))
{
	vR[i] = 14393;
}
else
{
	vR[i] = 14392;
}

}

}

}
else
{
	if(input[i]>(14387+offset0))
{
	if(input[i]>(14389+offset0))
{
	if(input[i]==(14391+offset0))
{
	vR[i] = 14391;
}
else
{
	vR[i] = 14390;
}

}
else
{
	if(input[i]==(14389+offset0))
{
	vR[i] = 14389;
}
else
{
	vR[i] = 14388;
}

}

}
else
{
	if(input[i]>(14385+offset0))
{
	if(input[i]==(14387+offset0))
{
	vR[i] = 14387;
}
else
{
	vR[i] = 14386;
}

}
else
{
	if(input[i]==(14385+offset0))
{
	vR[i] = 14385;
}
else
{
	vR[i] = 14384;
}

}

}

}

}
else
{
	if(input[i]>(14375+offset0))
{
	if(input[i]>(14379+offset0))
{
	if(input[i]>(14381+offset0))
{
	if(input[i]==(14383+offset0))
{
	vR[i] = 14383;
}
else
{
	vR[i] = 14382;
}

}
else
{
	if(input[i]==(14381+offset0))
{
	vR[i] = 14381;
}
else
{
	vR[i] = 14380;
}

}

}
else
{
	if(input[i]>(14377+offset0))
{
	if(input[i]==(14379+offset0))
{
	vR[i] = 14379;
}
else
{
	vR[i] = 14378;
}

}
else
{
	if(input[i]==(14377+offset0))
{
	vR[i] = 14377;
}
else
{
	vR[i] = 14376;
}

}

}

}
else
{
	if(input[i]>(14371+offset0))
{
	if(input[i]>(14373+offset0))
{
	if(input[i]==(14375+offset0))
{
	vR[i] = 14375;
}
else
{
	vR[i] = 14374;
}

}
else
{
	if(input[i]==(14373+offset0))
{
	vR[i] = 14373;
}
else
{
	vR[i] = 14372;
}

}

}
else
{
	if(input[i]>(14369+offset0))
{
	if(input[i]==(14371+offset0))
{
	vR[i] = 14371;
}
else
{
	vR[i] = 14370;
}

}
else
{
	if(input[i]==(14369+offset0))
{
	vR[i] = 14369;
}
else
{
	vR[i] = 14368;
}

}

}

}

}

}
else
{
	if(input[i]>(14351+offset0))
{
	if(input[i]>(14359+offset0))
{
	if(input[i]>(14363+offset0))
{
	if(input[i]>(14365+offset0))
{
	if(input[i]==(14367+offset0))
{
	vR[i] = 14367;
}
else
{
	vR[i] = 14366;
}

}
else
{
	if(input[i]==(14365+offset0))
{
	vR[i] = 14365;
}
else
{
	vR[i] = 14364;
}

}

}
else
{
	if(input[i]>(14361+offset0))
{
	if(input[i]==(14363+offset0))
{
	vR[i] = 14363;
}
else
{
	vR[i] = 14362;
}

}
else
{
	if(input[i]==(14361+offset0))
{
	vR[i] = 14361;
}
else
{
	vR[i] = 14360;
}

}

}

}
else
{
	if(input[i]>(14355+offset0))
{
	if(input[i]>(14357+offset0))
{
	if(input[i]==(14359+offset0))
{
	vR[i] = 14359;
}
else
{
	vR[i] = 14358;
}

}
else
{
	if(input[i]==(14357+offset0))
{
	vR[i] = 14357;
}
else
{
	vR[i] = 14356;
}

}

}
else
{
	if(input[i]>(14353+offset0))
{
	if(input[i]==(14355+offset0))
{
	vR[i] = 14355;
}
else
{
	vR[i] = 14354;
}

}
else
{
	if(input[i]==(14353+offset0))
{
	vR[i] = 14353;
}
else
{
	vR[i] = 14352;
}

}

}

}

}
else
{
	if(input[i]>(14343+offset0))
{
	if(input[i]>(14347+offset0))
{
	if(input[i]>(14349+offset0))
{
	if(input[i]==(14351+offset0))
{
	vR[i] = 14351;
}
else
{
	vR[i] = 14350;
}

}
else
{
	if(input[i]==(14349+offset0))
{
	vR[i] = 14349;
}
else
{
	vR[i] = 14348;
}

}

}
else
{
	if(input[i]>(14345+offset0))
{
	if(input[i]==(14347+offset0))
{
	vR[i] = 14347;
}
else
{
	vR[i] = 14346;
}

}
else
{
	if(input[i]==(14345+offset0))
{
	vR[i] = 14345;
}
else
{
	vR[i] = 14344;
}

}

}

}
else
{
	if(input[i]>(14339+offset0))
{
	if(input[i]>(14341+offset0))
{
	if(input[i]==(14343+offset0))
{
	vR[i] = 14343;
}
else
{
	vR[i] = 14342;
}

}
else
{
	if(input[i]==(14341+offset0))
{
	vR[i] = 14341;
}
else
{
	vR[i] = 14340;
}

}

}
else
{
	if(input[i]>(14337+offset0))
{
	if(input[i]==(14339+offset0))
{
	vR[i] = 14339;
}
else
{
	vR[i] = 14338;
}

}
else
{
	if(input[i]==(14337+offset0))
{
	vR[i] = 14337;
}
else
{
	vR[i] = 14336;
}

}

}

}

}

}

}

}

}

}

}

}
else
{
	if(input[i]>(13311+offset0))
{
	if(input[i]>(13823+offset0))
{
	if(input[i]>(14079+offset0))
{
	if(input[i]>(14207+offset0))
{
	if(input[i]>(14271+offset0))
{
	if(input[i]>(14303+offset0))
{
	if(input[i]>(14319+offset0))
{
	if(input[i]>(14327+offset0))
{
	if(input[i]>(14331+offset0))
{
	if(input[i]>(14333+offset0))
{
	if(input[i]==(14335+offset0))
{
	vR[i] = 14335;
}
else
{
	vR[i] = 14334;
}

}
else
{
	if(input[i]==(14333+offset0))
{
	vR[i] = 14333;
}
else
{
	vR[i] = 14332;
}

}

}
else
{
	if(input[i]>(14329+offset0))
{
	if(input[i]==(14331+offset0))
{
	vR[i] = 14331;
}
else
{
	vR[i] = 14330;
}

}
else
{
	if(input[i]==(14329+offset0))
{
	vR[i] = 14329;
}
else
{
	vR[i] = 14328;
}

}

}

}
else
{
	if(input[i]>(14323+offset0))
{
	if(input[i]>(14325+offset0))
{
	if(input[i]==(14327+offset0))
{
	vR[i] = 14327;
}
else
{
	vR[i] = 14326;
}

}
else
{
	if(input[i]==(14325+offset0))
{
	vR[i] = 14325;
}
else
{
	vR[i] = 14324;
}

}

}
else
{
	if(input[i]>(14321+offset0))
{
	if(input[i]==(14323+offset0))
{
	vR[i] = 14323;
}
else
{
	vR[i] = 14322;
}

}
else
{
	if(input[i]==(14321+offset0))
{
	vR[i] = 14321;
}
else
{
	vR[i] = 14320;
}

}

}

}

}
else
{
	if(input[i]>(14311+offset0))
{
	if(input[i]>(14315+offset0))
{
	if(input[i]>(14317+offset0))
{
	if(input[i]==(14319+offset0))
{
	vR[i] = 14319;
}
else
{
	vR[i] = 14318;
}

}
else
{
	if(input[i]==(14317+offset0))
{
	vR[i] = 14317;
}
else
{
	vR[i] = 14316;
}

}

}
else
{
	if(input[i]>(14313+offset0))
{
	if(input[i]==(14315+offset0))
{
	vR[i] = 14315;
}
else
{
	vR[i] = 14314;
}

}
else
{
	if(input[i]==(14313+offset0))
{
	vR[i] = 14313;
}
else
{
	vR[i] = 14312;
}

}

}

}
else
{
	if(input[i]>(14307+offset0))
{
	if(input[i]>(14309+offset0))
{
	if(input[i]==(14311+offset0))
{
	vR[i] = 14311;
}
else
{
	vR[i] = 14310;
}

}
else
{
	if(input[i]==(14309+offset0))
{
	vR[i] = 14309;
}
else
{
	vR[i] = 14308;
}

}

}
else
{
	if(input[i]>(14305+offset0))
{
	if(input[i]==(14307+offset0))
{
	vR[i] = 14307;
}
else
{
	vR[i] = 14306;
}

}
else
{
	if(input[i]==(14305+offset0))
{
	vR[i] = 14305;
}
else
{
	vR[i] = 14304;
}

}

}

}

}

}
else
{
	if(input[i]>(14287+offset0))
{
	if(input[i]>(14295+offset0))
{
	if(input[i]>(14299+offset0))
{
	if(input[i]>(14301+offset0))
{
	if(input[i]==(14303+offset0))
{
	vR[i] = 14303;
}
else
{
	vR[i] = 14302;
}

}
else
{
	if(input[i]==(14301+offset0))
{
	vR[i] = 14301;
}
else
{
	vR[i] = 14300;
}

}

}
else
{
	if(input[i]>(14297+offset0))
{
	if(input[i]==(14299+offset0))
{
	vR[i] = 14299;
}
else
{
	vR[i] = 14298;
}

}
else
{
	if(input[i]==(14297+offset0))
{
	vR[i] = 14297;
}
else
{
	vR[i] = 14296;
}

}

}

}
else
{
	if(input[i]>(14291+offset0))
{
	if(input[i]>(14293+offset0))
{
	if(input[i]==(14295+offset0))
{
	vR[i] = 14295;
}
else
{
	vR[i] = 14294;
}

}
else
{
	if(input[i]==(14293+offset0))
{
	vR[i] = 14293;
}
else
{
	vR[i] = 14292;
}

}

}
else
{
	if(input[i]>(14289+offset0))
{
	if(input[i]==(14291+offset0))
{
	vR[i] = 14291;
}
else
{
	vR[i] = 14290;
}

}
else
{
	if(input[i]==(14289+offset0))
{
	vR[i] = 14289;
}
else
{
	vR[i] = 14288;
}

}

}

}

}
else
{
	if(input[i]>(14279+offset0))
{
	if(input[i]>(14283+offset0))
{
	if(input[i]>(14285+offset0))
{
	if(input[i]==(14287+offset0))
{
	vR[i] = 14287;
}
else
{
	vR[i] = 14286;
}

}
else
{
	if(input[i]==(14285+offset0))
{
	vR[i] = 14285;
}
else
{
	vR[i] = 14284;
}

}

}
else
{
	if(input[i]>(14281+offset0))
{
	if(input[i]==(14283+offset0))
{
	vR[i] = 14283;
}
else
{
	vR[i] = 14282;
}

}
else
{
	if(input[i]==(14281+offset0))
{
	vR[i] = 14281;
}
else
{
	vR[i] = 14280;
}

}

}

}
else
{
	if(input[i]>(14275+offset0))
{
	if(input[i]>(14277+offset0))
{
	if(input[i]==(14279+offset0))
{
	vR[i] = 14279;
}
else
{
	vR[i] = 14278;
}

}
else
{
	if(input[i]==(14277+offset0))
{
	vR[i] = 14277;
}
else
{
	vR[i] = 14276;
}

}

}
else
{
	if(input[i]>(14273+offset0))
{
	if(input[i]==(14275+offset0))
{
	vR[i] = 14275;
}
else
{
	vR[i] = 14274;
}

}
else
{
	if(input[i]==(14273+offset0))
{
	vR[i] = 14273;
}
else
{
	vR[i] = 14272;
}

}

}

}

}

}

}
else
{
	if(input[i]>(14239+offset0))
{
	if(input[i]>(14255+offset0))
{
	if(input[i]>(14263+offset0))
{
	if(input[i]>(14267+offset0))
{
	if(input[i]>(14269+offset0))
{
	if(input[i]==(14271+offset0))
{
	vR[i] = 14271;
}
else
{
	vR[i] = 14270;
}

}
else
{
	if(input[i]==(14269+offset0))
{
	vR[i] = 14269;
}
else
{
	vR[i] = 14268;
}

}

}
else
{
	if(input[i]>(14265+offset0))
{
	if(input[i]==(14267+offset0))
{
	vR[i] = 14267;
}
else
{
	vR[i] = 14266;
}

}
else
{
	if(input[i]==(14265+offset0))
{
	vR[i] = 14265;
}
else
{
	vR[i] = 14264;
}

}

}

}
else
{
	if(input[i]>(14259+offset0))
{
	if(input[i]>(14261+offset0))
{
	if(input[i]==(14263+offset0))
{
	vR[i] = 14263;
}
else
{
	vR[i] = 14262;
}

}
else
{
	if(input[i]==(14261+offset0))
{
	vR[i] = 14261;
}
else
{
	vR[i] = 14260;
}

}

}
else
{
	if(input[i]>(14257+offset0))
{
	if(input[i]==(14259+offset0))
{
	vR[i] = 14259;
}
else
{
	vR[i] = 14258;
}

}
else
{
	if(input[i]==(14257+offset0))
{
	vR[i] = 14257;
}
else
{
	vR[i] = 14256;
}

}

}

}

}
else
{
	if(input[i]>(14247+offset0))
{
	if(input[i]>(14251+offset0))
{
	if(input[i]>(14253+offset0))
{
	if(input[i]==(14255+offset0))
{
	vR[i] = 14255;
}
else
{
	vR[i] = 14254;
}

}
else
{
	if(input[i]==(14253+offset0))
{
	vR[i] = 14253;
}
else
{
	vR[i] = 14252;
}

}

}
else
{
	if(input[i]>(14249+offset0))
{
	if(input[i]==(14251+offset0))
{
	vR[i] = 14251;
}
else
{
	vR[i] = 14250;
}

}
else
{
	if(input[i]==(14249+offset0))
{
	vR[i] = 14249;
}
else
{
	vR[i] = 14248;
}

}

}

}
else
{
	if(input[i]>(14243+offset0))
{
	if(input[i]>(14245+offset0))
{
	if(input[i]==(14247+offset0))
{
	vR[i] = 14247;
}
else
{
	vR[i] = 14246;
}

}
else
{
	if(input[i]==(14245+offset0))
{
	vR[i] = 14245;
}
else
{
	vR[i] = 14244;
}

}

}
else
{
	if(input[i]>(14241+offset0))
{
	if(input[i]==(14243+offset0))
{
	vR[i] = 14243;
}
else
{
	vR[i] = 14242;
}

}
else
{
	if(input[i]==(14241+offset0))
{
	vR[i] = 14241;
}
else
{
	vR[i] = 14240;
}

}

}

}

}

}
else
{
	if(input[i]>(14223+offset0))
{
	if(input[i]>(14231+offset0))
{
	if(input[i]>(14235+offset0))
{
	if(input[i]>(14237+offset0))
{
	if(input[i]==(14239+offset0))
{
	vR[i] = 14239;
}
else
{
	vR[i] = 14238;
}

}
else
{
	if(input[i]==(14237+offset0))
{
	vR[i] = 14237;
}
else
{
	vR[i] = 14236;
}

}

}
else
{
	if(input[i]>(14233+offset0))
{
	if(input[i]==(14235+offset0))
{
	vR[i] = 14235;
}
else
{
	vR[i] = 14234;
}

}
else
{
	if(input[i]==(14233+offset0))
{
	vR[i] = 14233;
}
else
{
	vR[i] = 14232;
}

}

}

}
else
{
	if(input[i]>(14227+offset0))
{
	if(input[i]>(14229+offset0))
{
	if(input[i]==(14231+offset0))
{
	vR[i] = 14231;
}
else
{
	vR[i] = 14230;
}

}
else
{
	if(input[i]==(14229+offset0))
{
	vR[i] = 14229;
}
else
{
	vR[i] = 14228;
}

}

}
else
{
	if(input[i]>(14225+offset0))
{
	if(input[i]==(14227+offset0))
{
	vR[i] = 14227;
}
else
{
	vR[i] = 14226;
}

}
else
{
	if(input[i]==(14225+offset0))
{
	vR[i] = 14225;
}
else
{
	vR[i] = 14224;
}

}

}

}

}
else
{
	if(input[i]>(14215+offset0))
{
	if(input[i]>(14219+offset0))
{
	if(input[i]>(14221+offset0))
{
	if(input[i]==(14223+offset0))
{
	vR[i] = 14223;
}
else
{
	vR[i] = 14222;
}

}
else
{
	if(input[i]==(14221+offset0))
{
	vR[i] = 14221;
}
else
{
	vR[i] = 14220;
}

}

}
else
{
	if(input[i]>(14217+offset0))
{
	if(input[i]==(14219+offset0))
{
	vR[i] = 14219;
}
else
{
	vR[i] = 14218;
}

}
else
{
	if(input[i]==(14217+offset0))
{
	vR[i] = 14217;
}
else
{
	vR[i] = 14216;
}

}

}

}
else
{
	if(input[i]>(14211+offset0))
{
	if(input[i]>(14213+offset0))
{
	if(input[i]==(14215+offset0))
{
	vR[i] = 14215;
}
else
{
	vR[i] = 14214;
}

}
else
{
	if(input[i]==(14213+offset0))
{
	vR[i] = 14213;
}
else
{
	vR[i] = 14212;
}

}

}
else
{
	if(input[i]>(14209+offset0))
{
	if(input[i]==(14211+offset0))
{
	vR[i] = 14211;
}
else
{
	vR[i] = 14210;
}

}
else
{
	if(input[i]==(14209+offset0))
{
	vR[i] = 14209;
}
else
{
	vR[i] = 14208;
}

}

}

}

}

}

}

}
else
{
	if(input[i]>(14143+offset0))
{
	if(input[i]>(14175+offset0))
{
	if(input[i]>(14191+offset0))
{
	if(input[i]>(14199+offset0))
{
	if(input[i]>(14203+offset0))
{
	if(input[i]>(14205+offset0))
{
	if(input[i]==(14207+offset0))
{
	vR[i] = 14207;
}
else
{
	vR[i] = 14206;
}

}
else
{
	if(input[i]==(14205+offset0))
{
	vR[i] = 14205;
}
else
{
	vR[i] = 14204;
}

}

}
else
{
	if(input[i]>(14201+offset0))
{
	if(input[i]==(14203+offset0))
{
	vR[i] = 14203;
}
else
{
	vR[i] = 14202;
}

}
else
{
	if(input[i]==(14201+offset0))
{
	vR[i] = 14201;
}
else
{
	vR[i] = 14200;
}

}

}

}
else
{
	if(input[i]>(14195+offset0))
{
	if(input[i]>(14197+offset0))
{
	if(input[i]==(14199+offset0))
{
	vR[i] = 14199;
}
else
{
	vR[i] = 14198;
}

}
else
{
	if(input[i]==(14197+offset0))
{
	vR[i] = 14197;
}
else
{
	vR[i] = 14196;
}

}

}
else
{
	if(input[i]>(14193+offset0))
{
	if(input[i]==(14195+offset0))
{
	vR[i] = 14195;
}
else
{
	vR[i] = 14194;
}

}
else
{
	if(input[i]==(14193+offset0))
{
	vR[i] = 14193;
}
else
{
	vR[i] = 14192;
}

}

}

}

}
else
{
	if(input[i]>(14183+offset0))
{
	if(input[i]>(14187+offset0))
{
	if(input[i]>(14189+offset0))
{
	if(input[i]==(14191+offset0))
{
	vR[i] = 14191;
}
else
{
	vR[i] = 14190;
}

}
else
{
	if(input[i]==(14189+offset0))
{
	vR[i] = 14189;
}
else
{
	vR[i] = 14188;
}

}

}
else
{
	if(input[i]>(14185+offset0))
{
	if(input[i]==(14187+offset0))
{
	vR[i] = 14187;
}
else
{
	vR[i] = 14186;
}

}
else
{
	if(input[i]==(14185+offset0))
{
	vR[i] = 14185;
}
else
{
	vR[i] = 14184;
}

}

}

}
else
{
	if(input[i]>(14179+offset0))
{
	if(input[i]>(14181+offset0))
{
	if(input[i]==(14183+offset0))
{
	vR[i] = 14183;
}
else
{
	vR[i] = 14182;
}

}
else
{
	if(input[i]==(14181+offset0))
{
	vR[i] = 14181;
}
else
{
	vR[i] = 14180;
}

}

}
else
{
	if(input[i]>(14177+offset0))
{
	if(input[i]==(14179+offset0))
{
	vR[i] = 14179;
}
else
{
	vR[i] = 14178;
}

}
else
{
	if(input[i]==(14177+offset0))
{
	vR[i] = 14177;
}
else
{
	vR[i] = 14176;
}

}

}

}

}

}
else
{
	if(input[i]>(14159+offset0))
{
	if(input[i]>(14167+offset0))
{
	if(input[i]>(14171+offset0))
{
	if(input[i]>(14173+offset0))
{
	if(input[i]==(14175+offset0))
{
	vR[i] = 14175;
}
else
{
	vR[i] = 14174;
}

}
else
{
	if(input[i]==(14173+offset0))
{
	vR[i] = 14173;
}
else
{
	vR[i] = 14172;
}

}

}
else
{
	if(input[i]>(14169+offset0))
{
	if(input[i]==(14171+offset0))
{
	vR[i] = 14171;
}
else
{
	vR[i] = 14170;
}

}
else
{
	if(input[i]==(14169+offset0))
{
	vR[i] = 14169;
}
else
{
	vR[i] = 14168;
}

}

}

}
else
{
	if(input[i]>(14163+offset0))
{
	if(input[i]>(14165+offset0))
{
	if(input[i]==(14167+offset0))
{
	vR[i] = 14167;
}
else
{
	vR[i] = 14166;
}

}
else
{
	if(input[i]==(14165+offset0))
{
	vR[i] = 14165;
}
else
{
	vR[i] = 14164;
}

}

}
else
{
	if(input[i]>(14161+offset0))
{
	if(input[i]==(14163+offset0))
{
	vR[i] = 14163;
}
else
{
	vR[i] = 14162;
}

}
else
{
	if(input[i]==(14161+offset0))
{
	vR[i] = 14161;
}
else
{
	vR[i] = 14160;
}

}

}

}

}
else
{
	if(input[i]>(14151+offset0))
{
	if(input[i]>(14155+offset0))
{
	if(input[i]>(14157+offset0))
{
	if(input[i]==(14159+offset0))
{
	vR[i] = 14159;
}
else
{
	vR[i] = 14158;
}

}
else
{
	if(input[i]==(14157+offset0))
{
	vR[i] = 14157;
}
else
{
	vR[i] = 14156;
}

}

}
else
{
	if(input[i]>(14153+offset0))
{
	if(input[i]==(14155+offset0))
{
	vR[i] = 14155;
}
else
{
	vR[i] = 14154;
}

}
else
{
	if(input[i]==(14153+offset0))
{
	vR[i] = 14153;
}
else
{
	vR[i] = 14152;
}

}

}

}
else
{
	if(input[i]>(14147+offset0))
{
	if(input[i]>(14149+offset0))
{
	if(input[i]==(14151+offset0))
{
	vR[i] = 14151;
}
else
{
	vR[i] = 14150;
}

}
else
{
	if(input[i]==(14149+offset0))
{
	vR[i] = 14149;
}
else
{
	vR[i] = 14148;
}

}

}
else
{
	if(input[i]>(14145+offset0))
{
	if(input[i]==(14147+offset0))
{
	vR[i] = 14147;
}
else
{
	vR[i] = 14146;
}

}
else
{
	if(input[i]==(14145+offset0))
{
	vR[i] = 14145;
}
else
{
	vR[i] = 14144;
}

}

}

}

}

}

}
else
{
	if(input[i]>(14111+offset0))
{
	if(input[i]>(14127+offset0))
{
	if(input[i]>(14135+offset0))
{
	if(input[i]>(14139+offset0))
{
	if(input[i]>(14141+offset0))
{
	if(input[i]==(14143+offset0))
{
	vR[i] = 14143;
}
else
{
	vR[i] = 14142;
}

}
else
{
	if(input[i]==(14141+offset0))
{
	vR[i] = 14141;
}
else
{
	vR[i] = 14140;
}

}

}
else
{
	if(input[i]>(14137+offset0))
{
	if(input[i]==(14139+offset0))
{
	vR[i] = 14139;
}
else
{
	vR[i] = 14138;
}

}
else
{
	if(input[i]==(14137+offset0))
{
	vR[i] = 14137;
}
else
{
	vR[i] = 14136;
}

}

}

}
else
{
	if(input[i]>(14131+offset0))
{
	if(input[i]>(14133+offset0))
{
	if(input[i]==(14135+offset0))
{
	vR[i] = 14135;
}
else
{
	vR[i] = 14134;
}

}
else
{
	if(input[i]==(14133+offset0))
{
	vR[i] = 14133;
}
else
{
	vR[i] = 14132;
}

}

}
else
{
	if(input[i]>(14129+offset0))
{
	if(input[i]==(14131+offset0))
{
	vR[i] = 14131;
}
else
{
	vR[i] = 14130;
}

}
else
{
	if(input[i]==(14129+offset0))
{
	vR[i] = 14129;
}
else
{
	vR[i] = 14128;
}

}

}

}

}
else
{
	if(input[i]>(14119+offset0))
{
	if(input[i]>(14123+offset0))
{
	if(input[i]>(14125+offset0))
{
	if(input[i]==(14127+offset0))
{
	vR[i] = 14127;
}
else
{
	vR[i] = 14126;
}

}
else
{
	if(input[i]==(14125+offset0))
{
	vR[i] = 14125;
}
else
{
	vR[i] = 14124;
}

}

}
else
{
	if(input[i]>(14121+offset0))
{
	if(input[i]==(14123+offset0))
{
	vR[i] = 14123;
}
else
{
	vR[i] = 14122;
}

}
else
{
	if(input[i]==(14121+offset0))
{
	vR[i] = 14121;
}
else
{
	vR[i] = 14120;
}

}

}

}
else
{
	if(input[i]>(14115+offset0))
{
	if(input[i]>(14117+offset0))
{
	if(input[i]==(14119+offset0))
{
	vR[i] = 14119;
}
else
{
	vR[i] = 14118;
}

}
else
{
	if(input[i]==(14117+offset0))
{
	vR[i] = 14117;
}
else
{
	vR[i] = 14116;
}

}

}
else
{
	if(input[i]>(14113+offset0))
{
	if(input[i]==(14115+offset0))
{
	vR[i] = 14115;
}
else
{
	vR[i] = 14114;
}

}
else
{
	if(input[i]==(14113+offset0))
{
	vR[i] = 14113;
}
else
{
	vR[i] = 14112;
}

}

}

}

}

}
else
{
	if(input[i]>(14095+offset0))
{
	if(input[i]>(14103+offset0))
{
	if(input[i]>(14107+offset0))
{
	if(input[i]>(14109+offset0))
{
	if(input[i]==(14111+offset0))
{
	vR[i] = 14111;
}
else
{
	vR[i] = 14110;
}

}
else
{
	if(input[i]==(14109+offset0))
{
	vR[i] = 14109;
}
else
{
	vR[i] = 14108;
}

}

}
else
{
	if(input[i]>(14105+offset0))
{
	if(input[i]==(14107+offset0))
{
	vR[i] = 14107;
}
else
{
	vR[i] = 14106;
}

}
else
{
	if(input[i]==(14105+offset0))
{
	vR[i] = 14105;
}
else
{
	vR[i] = 14104;
}

}

}

}
else
{
	if(input[i]>(14099+offset0))
{
	if(input[i]>(14101+offset0))
{
	if(input[i]==(14103+offset0))
{
	vR[i] = 14103;
}
else
{
	vR[i] = 14102;
}

}
else
{
	if(input[i]==(14101+offset0))
{
	vR[i] = 14101;
}
else
{
	vR[i] = 14100;
}

}

}
else
{
	if(input[i]>(14097+offset0))
{
	if(input[i]==(14099+offset0))
{
	vR[i] = 14099;
}
else
{
	vR[i] = 14098;
}

}
else
{
	if(input[i]==(14097+offset0))
{
	vR[i] = 14097;
}
else
{
	vR[i] = 14096;
}

}

}

}

}
else
{
	if(input[i]>(14087+offset0))
{
	if(input[i]>(14091+offset0))
{
	if(input[i]>(14093+offset0))
{
	if(input[i]==(14095+offset0))
{
	vR[i] = 14095;
}
else
{
	vR[i] = 14094;
}

}
else
{
	if(input[i]==(14093+offset0))
{
	vR[i] = 14093;
}
else
{
	vR[i] = 14092;
}

}

}
else
{
	if(input[i]>(14089+offset0))
{
	if(input[i]==(14091+offset0))
{
	vR[i] = 14091;
}
else
{
	vR[i] = 14090;
}

}
else
{
	if(input[i]==(14089+offset0))
{
	vR[i] = 14089;
}
else
{
	vR[i] = 14088;
}

}

}

}
else
{
	if(input[i]>(14083+offset0))
{
	if(input[i]>(14085+offset0))
{
	if(input[i]==(14087+offset0))
{
	vR[i] = 14087;
}
else
{
	vR[i] = 14086;
}

}
else
{
	if(input[i]==(14085+offset0))
{
	vR[i] = 14085;
}
else
{
	vR[i] = 14084;
}

}

}
else
{
	if(input[i]>(14081+offset0))
{
	if(input[i]==(14083+offset0))
{
	vR[i] = 14083;
}
else
{
	vR[i] = 14082;
}

}
else
{
	if(input[i]==(14081+offset0))
{
	vR[i] = 14081;
}
else
{
	vR[i] = 14080;
}

}

}

}

}

}

}

}

}
else
{
	if(input[i]>(13951+offset0))
{
	if(input[i]>(14015+offset0))
{
	if(input[i]>(14047+offset0))
{
	if(input[i]>(14063+offset0))
{
	if(input[i]>(14071+offset0))
{
	if(input[i]>(14075+offset0))
{
	if(input[i]>(14077+offset0))
{
	if(input[i]==(14079+offset0))
{
	vR[i] = 14079;
}
else
{
	vR[i] = 14078;
}

}
else
{
	if(input[i]==(14077+offset0))
{
	vR[i] = 14077;
}
else
{
	vR[i] = 14076;
}

}

}
else
{
	if(input[i]>(14073+offset0))
{
	if(input[i]==(14075+offset0))
{
	vR[i] = 14075;
}
else
{
	vR[i] = 14074;
}

}
else
{
	if(input[i]==(14073+offset0))
{
	vR[i] = 14073;
}
else
{
	vR[i] = 14072;
}

}

}

}
else
{
	if(input[i]>(14067+offset0))
{
	if(input[i]>(14069+offset0))
{
	if(input[i]==(14071+offset0))
{
	vR[i] = 14071;
}
else
{
	vR[i] = 14070;
}

}
else
{
	if(input[i]==(14069+offset0))
{
	vR[i] = 14069;
}
else
{
	vR[i] = 14068;
}

}

}
else
{
	if(input[i]>(14065+offset0))
{
	if(input[i]==(14067+offset0))
{
	vR[i] = 14067;
}
else
{
	vR[i] = 14066;
}

}
else
{
	if(input[i]==(14065+offset0))
{
	vR[i] = 14065;
}
else
{
	vR[i] = 14064;
}

}

}

}

}
else
{
	if(input[i]>(14055+offset0))
{
	if(input[i]>(14059+offset0))
{
	if(input[i]>(14061+offset0))
{
	if(input[i]==(14063+offset0))
{
	vR[i] = 14063;
}
else
{
	vR[i] = 14062;
}

}
else
{
	if(input[i]==(14061+offset0))
{
	vR[i] = 14061;
}
else
{
	vR[i] = 14060;
}

}

}
else
{
	if(input[i]>(14057+offset0))
{
	if(input[i]==(14059+offset0))
{
	vR[i] = 14059;
}
else
{
	vR[i] = 14058;
}

}
else
{
	if(input[i]==(14057+offset0))
{
	vR[i] = 14057;
}
else
{
	vR[i] = 14056;
}

}

}

}
else
{
	if(input[i]>(14051+offset0))
{
	if(input[i]>(14053+offset0))
{
	if(input[i]==(14055+offset0))
{
	vR[i] = 14055;
}
else
{
	vR[i] = 14054;
}

}
else
{
	if(input[i]==(14053+offset0))
{
	vR[i] = 14053;
}
else
{
	vR[i] = 14052;
}

}

}
else
{
	if(input[i]>(14049+offset0))
{
	if(input[i]==(14051+offset0))
{
	vR[i] = 14051;
}
else
{
	vR[i] = 14050;
}

}
else
{
	if(input[i]==(14049+offset0))
{
	vR[i] = 14049;
}
else
{
	vR[i] = 14048;
}

}

}

}

}

}
else
{
	if(input[i]>(14031+offset0))
{
	if(input[i]>(14039+offset0))
{
	if(input[i]>(14043+offset0))
{
	if(input[i]>(14045+offset0))
{
	if(input[i]==(14047+offset0))
{
	vR[i] = 14047;
}
else
{
	vR[i] = 14046;
}

}
else
{
	if(input[i]==(14045+offset0))
{
	vR[i] = 14045;
}
else
{
	vR[i] = 14044;
}

}

}
else
{
	if(input[i]>(14041+offset0))
{
	if(input[i]==(14043+offset0))
{
	vR[i] = 14043;
}
else
{
	vR[i] = 14042;
}

}
else
{
	if(input[i]==(14041+offset0))
{
	vR[i] = 14041;
}
else
{
	vR[i] = 14040;
}

}

}

}
else
{
	if(input[i]>(14035+offset0))
{
	if(input[i]>(14037+offset0))
{
	if(input[i]==(14039+offset0))
{
	vR[i] = 14039;
}
else
{
	vR[i] = 14038;
}

}
else
{
	if(input[i]==(14037+offset0))
{
	vR[i] = 14037;
}
else
{
	vR[i] = 14036;
}

}

}
else
{
	if(input[i]>(14033+offset0))
{
	if(input[i]==(14035+offset0))
{
	vR[i] = 14035;
}
else
{
	vR[i] = 14034;
}

}
else
{
	if(input[i]==(14033+offset0))
{
	vR[i] = 14033;
}
else
{
	vR[i] = 14032;
}

}

}

}

}
else
{
	if(input[i]>(14023+offset0))
{
	if(input[i]>(14027+offset0))
{
	if(input[i]>(14029+offset0))
{
	if(input[i]==(14031+offset0))
{
	vR[i] = 14031;
}
else
{
	vR[i] = 14030;
}

}
else
{
	if(input[i]==(14029+offset0))
{
	vR[i] = 14029;
}
else
{
	vR[i] = 14028;
}

}

}
else
{
	if(input[i]>(14025+offset0))
{
	if(input[i]==(14027+offset0))
{
	vR[i] = 14027;
}
else
{
	vR[i] = 14026;
}

}
else
{
	if(input[i]==(14025+offset0))
{
	vR[i] = 14025;
}
else
{
	vR[i] = 14024;
}

}

}

}
else
{
	if(input[i]>(14019+offset0))
{
	if(input[i]>(14021+offset0))
{
	if(input[i]==(14023+offset0))
{
	vR[i] = 14023;
}
else
{
	vR[i] = 14022;
}

}
else
{
	if(input[i]==(14021+offset0))
{
	vR[i] = 14021;
}
else
{
	vR[i] = 14020;
}

}

}
else
{
	if(input[i]>(14017+offset0))
{
	if(input[i]==(14019+offset0))
{
	vR[i] = 14019;
}
else
{
	vR[i] = 14018;
}

}
else
{
	if(input[i]==(14017+offset0))
{
	vR[i] = 14017;
}
else
{
	vR[i] = 14016;
}

}

}

}

}

}

}
else
{
	if(input[i]>(13983+offset0))
{
	if(input[i]>(13999+offset0))
{
	if(input[i]>(14007+offset0))
{
	if(input[i]>(14011+offset0))
{
	if(input[i]>(14013+offset0))
{
	if(input[i]==(14015+offset0))
{
	vR[i] = 14015;
}
else
{
	vR[i] = 14014;
}

}
else
{
	if(input[i]==(14013+offset0))
{
	vR[i] = 14013;
}
else
{
	vR[i] = 14012;
}

}

}
else
{
	if(input[i]>(14009+offset0))
{
	if(input[i]==(14011+offset0))
{
	vR[i] = 14011;
}
else
{
	vR[i] = 14010;
}

}
else
{
	if(input[i]==(14009+offset0))
{
	vR[i] = 14009;
}
else
{
	vR[i] = 14008;
}

}

}

}
else
{
	if(input[i]>(14003+offset0))
{
	if(input[i]>(14005+offset0))
{
	if(input[i]==(14007+offset0))
{
	vR[i] = 14007;
}
else
{
	vR[i] = 14006;
}

}
else
{
	if(input[i]==(14005+offset0))
{
	vR[i] = 14005;
}
else
{
	vR[i] = 14004;
}

}

}
else
{
	if(input[i]>(14001+offset0))
{
	if(input[i]==(14003+offset0))
{
	vR[i] = 14003;
}
else
{
	vR[i] = 14002;
}

}
else
{
	if(input[i]==(14001+offset0))
{
	vR[i] = 14001;
}
else
{
	vR[i] = 14000;
}

}

}

}

}
else
{
	if(input[i]>(13991+offset0))
{
	if(input[i]>(13995+offset0))
{
	if(input[i]>(13997+offset0))
{
	if(input[i]==(13999+offset0))
{
	vR[i] = 13999;
}
else
{
	vR[i] = 13998;
}

}
else
{
	if(input[i]==(13997+offset0))
{
	vR[i] = 13997;
}
else
{
	vR[i] = 13996;
}

}

}
else
{
	if(input[i]>(13993+offset0))
{
	if(input[i]==(13995+offset0))
{
	vR[i] = 13995;
}
else
{
	vR[i] = 13994;
}

}
else
{
	if(input[i]==(13993+offset0))
{
	vR[i] = 13993;
}
else
{
	vR[i] = 13992;
}

}

}

}
else
{
	if(input[i]>(13987+offset0))
{
	if(input[i]>(13989+offset0))
{
	if(input[i]==(13991+offset0))
{
	vR[i] = 13991;
}
else
{
	vR[i] = 13990;
}

}
else
{
	if(input[i]==(13989+offset0))
{
	vR[i] = 13989;
}
else
{
	vR[i] = 13988;
}

}

}
else
{
	if(input[i]>(13985+offset0))
{
	if(input[i]==(13987+offset0))
{
	vR[i] = 13987;
}
else
{
	vR[i] = 13986;
}

}
else
{
	if(input[i]==(13985+offset0))
{
	vR[i] = 13985;
}
else
{
	vR[i] = 13984;
}

}

}

}

}

}
else
{
	if(input[i]>(13967+offset0))
{
	if(input[i]>(13975+offset0))
{
	if(input[i]>(13979+offset0))
{
	if(input[i]>(13981+offset0))
{
	if(input[i]==(13983+offset0))
{
	vR[i] = 13983;
}
else
{
	vR[i] = 13982;
}

}
else
{
	if(input[i]==(13981+offset0))
{
	vR[i] = 13981;
}
else
{
	vR[i] = 13980;
}

}

}
else
{
	if(input[i]>(13977+offset0))
{
	if(input[i]==(13979+offset0))
{
	vR[i] = 13979;
}
else
{
	vR[i] = 13978;
}

}
else
{
	if(input[i]==(13977+offset0))
{
	vR[i] = 13977;
}
else
{
	vR[i] = 13976;
}

}

}

}
else
{
	if(input[i]>(13971+offset0))
{
	if(input[i]>(13973+offset0))
{
	if(input[i]==(13975+offset0))
{
	vR[i] = 13975;
}
else
{
	vR[i] = 13974;
}

}
else
{
	if(input[i]==(13973+offset0))
{
	vR[i] = 13973;
}
else
{
	vR[i] = 13972;
}

}

}
else
{
	if(input[i]>(13969+offset0))
{
	if(input[i]==(13971+offset0))
{
	vR[i] = 13971;
}
else
{
	vR[i] = 13970;
}

}
else
{
	if(input[i]==(13969+offset0))
{
	vR[i] = 13969;
}
else
{
	vR[i] = 13968;
}

}

}

}

}
else
{
	if(input[i]>(13959+offset0))
{
	if(input[i]>(13963+offset0))
{
	if(input[i]>(13965+offset0))
{
	if(input[i]==(13967+offset0))
{
	vR[i] = 13967;
}
else
{
	vR[i] = 13966;
}

}
else
{
	if(input[i]==(13965+offset0))
{
	vR[i] = 13965;
}
else
{
	vR[i] = 13964;
}

}

}
else
{
	if(input[i]>(13961+offset0))
{
	if(input[i]==(13963+offset0))
{
	vR[i] = 13963;
}
else
{
	vR[i] = 13962;
}

}
else
{
	if(input[i]==(13961+offset0))
{
	vR[i] = 13961;
}
else
{
	vR[i] = 13960;
}

}

}

}
else
{
	if(input[i]>(13955+offset0))
{
	if(input[i]>(13957+offset0))
{
	if(input[i]==(13959+offset0))
{
	vR[i] = 13959;
}
else
{
	vR[i] = 13958;
}

}
else
{
	if(input[i]==(13957+offset0))
{
	vR[i] = 13957;
}
else
{
	vR[i] = 13956;
}

}

}
else
{
	if(input[i]>(13953+offset0))
{
	if(input[i]==(13955+offset0))
{
	vR[i] = 13955;
}
else
{
	vR[i] = 13954;
}

}
else
{
	if(input[i]==(13953+offset0))
{
	vR[i] = 13953;
}
else
{
	vR[i] = 13952;
}

}

}

}

}

}

}

}
else
{
	if(input[i]>(13887+offset0))
{
	if(input[i]>(13919+offset0))
{
	if(input[i]>(13935+offset0))
{
	if(input[i]>(13943+offset0))
{
	if(input[i]>(13947+offset0))
{
	if(input[i]>(13949+offset0))
{
	if(input[i]==(13951+offset0))
{
	vR[i] = 13951;
}
else
{
	vR[i] = 13950;
}

}
else
{
	if(input[i]==(13949+offset0))
{
	vR[i] = 13949;
}
else
{
	vR[i] = 13948;
}

}

}
else
{
	if(input[i]>(13945+offset0))
{
	if(input[i]==(13947+offset0))
{
	vR[i] = 13947;
}
else
{
	vR[i] = 13946;
}

}
else
{
	if(input[i]==(13945+offset0))
{
	vR[i] = 13945;
}
else
{
	vR[i] = 13944;
}

}

}

}
else
{
	if(input[i]>(13939+offset0))
{
	if(input[i]>(13941+offset0))
{
	if(input[i]==(13943+offset0))
{
	vR[i] = 13943;
}
else
{
	vR[i] = 13942;
}

}
else
{
	if(input[i]==(13941+offset0))
{
	vR[i] = 13941;
}
else
{
	vR[i] = 13940;
}

}

}
else
{
	if(input[i]>(13937+offset0))
{
	if(input[i]==(13939+offset0))
{
	vR[i] = 13939;
}
else
{
	vR[i] = 13938;
}

}
else
{
	if(input[i]==(13937+offset0))
{
	vR[i] = 13937;
}
else
{
	vR[i] = 13936;
}

}

}

}

}
else
{
	if(input[i]>(13927+offset0))
{
	if(input[i]>(13931+offset0))
{
	if(input[i]>(13933+offset0))
{
	if(input[i]==(13935+offset0))
{
	vR[i] = 13935;
}
else
{
	vR[i] = 13934;
}

}
else
{
	if(input[i]==(13933+offset0))
{
	vR[i] = 13933;
}
else
{
	vR[i] = 13932;
}

}

}
else
{
	if(input[i]>(13929+offset0))
{
	if(input[i]==(13931+offset0))
{
	vR[i] = 13931;
}
else
{
	vR[i] = 13930;
}

}
else
{
	if(input[i]==(13929+offset0))
{
	vR[i] = 13929;
}
else
{
	vR[i] = 13928;
}

}

}

}
else
{
	if(input[i]>(13923+offset0))
{
	if(input[i]>(13925+offset0))
{
	if(input[i]==(13927+offset0))
{
	vR[i] = 13927;
}
else
{
	vR[i] = 13926;
}

}
else
{
	if(input[i]==(13925+offset0))
{
	vR[i] = 13925;
}
else
{
	vR[i] = 13924;
}

}

}
else
{
	if(input[i]>(13921+offset0))
{
	if(input[i]==(13923+offset0))
{
	vR[i] = 13923;
}
else
{
	vR[i] = 13922;
}

}
else
{
	if(input[i]==(13921+offset0))
{
	vR[i] = 13921;
}
else
{
	vR[i] = 13920;
}

}

}

}

}

}
else
{
	if(input[i]>(13903+offset0))
{
	if(input[i]>(13911+offset0))
{
	if(input[i]>(13915+offset0))
{
	if(input[i]>(13917+offset0))
{
	if(input[i]==(13919+offset0))
{
	vR[i] = 13919;
}
else
{
	vR[i] = 13918;
}

}
else
{
	if(input[i]==(13917+offset0))
{
	vR[i] = 13917;
}
else
{
	vR[i] = 13916;
}

}

}
else
{
	if(input[i]>(13913+offset0))
{
	if(input[i]==(13915+offset0))
{
	vR[i] = 13915;
}
else
{
	vR[i] = 13914;
}

}
else
{
	if(input[i]==(13913+offset0))
{
	vR[i] = 13913;
}
else
{
	vR[i] = 13912;
}

}

}

}
else
{
	if(input[i]>(13907+offset0))
{
	if(input[i]>(13909+offset0))
{
	if(input[i]==(13911+offset0))
{
	vR[i] = 13911;
}
else
{
	vR[i] = 13910;
}

}
else
{
	if(input[i]==(13909+offset0))
{
	vR[i] = 13909;
}
else
{
	vR[i] = 13908;
}

}

}
else
{
	if(input[i]>(13905+offset0))
{
	if(input[i]==(13907+offset0))
{
	vR[i] = 13907;
}
else
{
	vR[i] = 13906;
}

}
else
{
	if(input[i]==(13905+offset0))
{
	vR[i] = 13905;
}
else
{
	vR[i] = 13904;
}

}

}

}

}
else
{
	if(input[i]>(13895+offset0))
{
	if(input[i]>(13899+offset0))
{
	if(input[i]>(13901+offset0))
{
	if(input[i]==(13903+offset0))
{
	vR[i] = 13903;
}
else
{
	vR[i] = 13902;
}

}
else
{
	if(input[i]==(13901+offset0))
{
	vR[i] = 13901;
}
else
{
	vR[i] = 13900;
}

}

}
else
{
	if(input[i]>(13897+offset0))
{
	if(input[i]==(13899+offset0))
{
	vR[i] = 13899;
}
else
{
	vR[i] = 13898;
}

}
else
{
	if(input[i]==(13897+offset0))
{
	vR[i] = 13897;
}
else
{
	vR[i] = 13896;
}

}

}

}
else
{
	if(input[i]>(13891+offset0))
{
	if(input[i]>(13893+offset0))
{
	if(input[i]==(13895+offset0))
{
	vR[i] = 13895;
}
else
{
	vR[i] = 13894;
}

}
else
{
	if(input[i]==(13893+offset0))
{
	vR[i] = 13893;
}
else
{
	vR[i] = 13892;
}

}

}
else
{
	if(input[i]>(13889+offset0))
{
	if(input[i]==(13891+offset0))
{
	vR[i] = 13891;
}
else
{
	vR[i] = 13890;
}

}
else
{
	if(input[i]==(13889+offset0))
{
	vR[i] = 13889;
}
else
{
	vR[i] = 13888;
}

}

}

}

}

}

}
else
{
	if(input[i]>(13855+offset0))
{
	if(input[i]>(13871+offset0))
{
	if(input[i]>(13879+offset0))
{
	if(input[i]>(13883+offset0))
{
	if(input[i]>(13885+offset0))
{
	if(input[i]==(13887+offset0))
{
	vR[i] = 13887;
}
else
{
	vR[i] = 13886;
}

}
else
{
	if(input[i]==(13885+offset0))
{
	vR[i] = 13885;
}
else
{
	vR[i] = 13884;
}

}

}
else
{
	if(input[i]>(13881+offset0))
{
	if(input[i]==(13883+offset0))
{
	vR[i] = 13883;
}
else
{
	vR[i] = 13882;
}

}
else
{
	if(input[i]==(13881+offset0))
{
	vR[i] = 13881;
}
else
{
	vR[i] = 13880;
}

}

}

}
else
{
	if(input[i]>(13875+offset0))
{
	if(input[i]>(13877+offset0))
{
	if(input[i]==(13879+offset0))
{
	vR[i] = 13879;
}
else
{
	vR[i] = 13878;
}

}
else
{
	if(input[i]==(13877+offset0))
{
	vR[i] = 13877;
}
else
{
	vR[i] = 13876;
}

}

}
else
{
	if(input[i]>(13873+offset0))
{
	if(input[i]==(13875+offset0))
{
	vR[i] = 13875;
}
else
{
	vR[i] = 13874;
}

}
else
{
	if(input[i]==(13873+offset0))
{
	vR[i] = 13873;
}
else
{
	vR[i] = 13872;
}

}

}

}

}
else
{
	if(input[i]>(13863+offset0))
{
	if(input[i]>(13867+offset0))
{
	if(input[i]>(13869+offset0))
{
	if(input[i]==(13871+offset0))
{
	vR[i] = 13871;
}
else
{
	vR[i] = 13870;
}

}
else
{
	if(input[i]==(13869+offset0))
{
	vR[i] = 13869;
}
else
{
	vR[i] = 13868;
}

}

}
else
{
	if(input[i]>(13865+offset0))
{
	if(input[i]==(13867+offset0))
{
	vR[i] = 13867;
}
else
{
	vR[i] = 13866;
}

}
else
{
	if(input[i]==(13865+offset0))
{
	vR[i] = 13865;
}
else
{
	vR[i] = 13864;
}

}

}

}
else
{
	if(input[i]>(13859+offset0))
{
	if(input[i]>(13861+offset0))
{
	if(input[i]==(13863+offset0))
{
	vR[i] = 13863;
}
else
{
	vR[i] = 13862;
}

}
else
{
	if(input[i]==(13861+offset0))
{
	vR[i] = 13861;
}
else
{
	vR[i] = 13860;
}

}

}
else
{
	if(input[i]>(13857+offset0))
{
	if(input[i]==(13859+offset0))
{
	vR[i] = 13859;
}
else
{
	vR[i] = 13858;
}

}
else
{
	if(input[i]==(13857+offset0))
{
	vR[i] = 13857;
}
else
{
	vR[i] = 13856;
}

}

}

}

}

}
else
{
	if(input[i]>(13839+offset0))
{
	if(input[i]>(13847+offset0))
{
	if(input[i]>(13851+offset0))
{
	if(input[i]>(13853+offset0))
{
	if(input[i]==(13855+offset0))
{
	vR[i] = 13855;
}
else
{
	vR[i] = 13854;
}

}
else
{
	if(input[i]==(13853+offset0))
{
	vR[i] = 13853;
}
else
{
	vR[i] = 13852;
}

}

}
else
{
	if(input[i]>(13849+offset0))
{
	if(input[i]==(13851+offset0))
{
	vR[i] = 13851;
}
else
{
	vR[i] = 13850;
}

}
else
{
	if(input[i]==(13849+offset0))
{
	vR[i] = 13849;
}
else
{
	vR[i] = 13848;
}

}

}

}
else
{
	if(input[i]>(13843+offset0))
{
	if(input[i]>(13845+offset0))
{
	if(input[i]==(13847+offset0))
{
	vR[i] = 13847;
}
else
{
	vR[i] = 13846;
}

}
else
{
	if(input[i]==(13845+offset0))
{
	vR[i] = 13845;
}
else
{
	vR[i] = 13844;
}

}

}
else
{
	if(input[i]>(13841+offset0))
{
	if(input[i]==(13843+offset0))
{
	vR[i] = 13843;
}
else
{
	vR[i] = 13842;
}

}
else
{
	if(input[i]==(13841+offset0))
{
	vR[i] = 13841;
}
else
{
	vR[i] = 13840;
}

}

}

}

}
else
{
	if(input[i]>(13831+offset0))
{
	if(input[i]>(13835+offset0))
{
	if(input[i]>(13837+offset0))
{
	if(input[i]==(13839+offset0))
{
	vR[i] = 13839;
}
else
{
	vR[i] = 13838;
}

}
else
{
	if(input[i]==(13837+offset0))
{
	vR[i] = 13837;
}
else
{
	vR[i] = 13836;
}

}

}
else
{
	if(input[i]>(13833+offset0))
{
	if(input[i]==(13835+offset0))
{
	vR[i] = 13835;
}
else
{
	vR[i] = 13834;
}

}
else
{
	if(input[i]==(13833+offset0))
{
	vR[i] = 13833;
}
else
{
	vR[i] = 13832;
}

}

}

}
else
{
	if(input[i]>(13827+offset0))
{
	if(input[i]>(13829+offset0))
{
	if(input[i]==(13831+offset0))
{
	vR[i] = 13831;
}
else
{
	vR[i] = 13830;
}

}
else
{
	if(input[i]==(13829+offset0))
{
	vR[i] = 13829;
}
else
{
	vR[i] = 13828;
}

}

}
else
{
	if(input[i]>(13825+offset0))
{
	if(input[i]==(13827+offset0))
{
	vR[i] = 13827;
}
else
{
	vR[i] = 13826;
}

}
else
{
	if(input[i]==(13825+offset0))
{
	vR[i] = 13825;
}
else
{
	vR[i] = 13824;
}

}

}

}

}

}

}

}

}

}
else
{
	if(input[i]>(13567+offset0))
{
	if(input[i]>(13695+offset0))
{
	if(input[i]>(13759+offset0))
{
	if(input[i]>(13791+offset0))
{
	if(input[i]>(13807+offset0))
{
	if(input[i]>(13815+offset0))
{
	if(input[i]>(13819+offset0))
{
	if(input[i]>(13821+offset0))
{
	if(input[i]==(13823+offset0))
{
	vR[i] = 13823;
}
else
{
	vR[i] = 13822;
}

}
else
{
	if(input[i]==(13821+offset0))
{
	vR[i] = 13821;
}
else
{
	vR[i] = 13820;
}

}

}
else
{
	if(input[i]>(13817+offset0))
{
	if(input[i]==(13819+offset0))
{
	vR[i] = 13819;
}
else
{
	vR[i] = 13818;
}

}
else
{
	if(input[i]==(13817+offset0))
{
	vR[i] = 13817;
}
else
{
	vR[i] = 13816;
}

}

}

}
else
{
	if(input[i]>(13811+offset0))
{
	if(input[i]>(13813+offset0))
{
	if(input[i]==(13815+offset0))
{
	vR[i] = 13815;
}
else
{
	vR[i] = 13814;
}

}
else
{
	if(input[i]==(13813+offset0))
{
	vR[i] = 13813;
}
else
{
	vR[i] = 13812;
}

}

}
else
{
	if(input[i]>(13809+offset0))
{
	if(input[i]==(13811+offset0))
{
	vR[i] = 13811;
}
else
{
	vR[i] = 13810;
}

}
else
{
	if(input[i]==(13809+offset0))
{
	vR[i] = 13809;
}
else
{
	vR[i] = 13808;
}

}

}

}

}
else
{
	if(input[i]>(13799+offset0))
{
	if(input[i]>(13803+offset0))
{
	if(input[i]>(13805+offset0))
{
	if(input[i]==(13807+offset0))
{
	vR[i] = 13807;
}
else
{
	vR[i] = 13806;
}

}
else
{
	if(input[i]==(13805+offset0))
{
	vR[i] = 13805;
}
else
{
	vR[i] = 13804;
}

}

}
else
{
	if(input[i]>(13801+offset0))
{
	if(input[i]==(13803+offset0))
{
	vR[i] = 13803;
}
else
{
	vR[i] = 13802;
}

}
else
{
	if(input[i]==(13801+offset0))
{
	vR[i] = 13801;
}
else
{
	vR[i] = 13800;
}

}

}

}
else
{
	if(input[i]>(13795+offset0))
{
	if(input[i]>(13797+offset0))
{
	if(input[i]==(13799+offset0))
{
	vR[i] = 13799;
}
else
{
	vR[i] = 13798;
}

}
else
{
	if(input[i]==(13797+offset0))
{
	vR[i] = 13797;
}
else
{
	vR[i] = 13796;
}

}

}
else
{
	if(input[i]>(13793+offset0))
{
	if(input[i]==(13795+offset0))
{
	vR[i] = 13795;
}
else
{
	vR[i] = 13794;
}

}
else
{
	if(input[i]==(13793+offset0))
{
	vR[i] = 13793;
}
else
{
	vR[i] = 13792;
}

}

}

}

}

}
else
{
	if(input[i]>(13775+offset0))
{
	if(input[i]>(13783+offset0))
{
	if(input[i]>(13787+offset0))
{
	if(input[i]>(13789+offset0))
{
	if(input[i]==(13791+offset0))
{
	vR[i] = 13791;
}
else
{
	vR[i] = 13790;
}

}
else
{
	if(input[i]==(13789+offset0))
{
	vR[i] = 13789;
}
else
{
	vR[i] = 13788;
}

}

}
else
{
	if(input[i]>(13785+offset0))
{
	if(input[i]==(13787+offset0))
{
	vR[i] = 13787;
}
else
{
	vR[i] = 13786;
}

}
else
{
	if(input[i]==(13785+offset0))
{
	vR[i] = 13785;
}
else
{
	vR[i] = 13784;
}

}

}

}
else
{
	if(input[i]>(13779+offset0))
{
	if(input[i]>(13781+offset0))
{
	if(input[i]==(13783+offset0))
{
	vR[i] = 13783;
}
else
{
	vR[i] = 13782;
}

}
else
{
	if(input[i]==(13781+offset0))
{
	vR[i] = 13781;
}
else
{
	vR[i] = 13780;
}

}

}
else
{
	if(input[i]>(13777+offset0))
{
	if(input[i]==(13779+offset0))
{
	vR[i] = 13779;
}
else
{
	vR[i] = 13778;
}

}
else
{
	if(input[i]==(13777+offset0))
{
	vR[i] = 13777;
}
else
{
	vR[i] = 13776;
}

}

}

}

}
else
{
	if(input[i]>(13767+offset0))
{
	if(input[i]>(13771+offset0))
{
	if(input[i]>(13773+offset0))
{
	if(input[i]==(13775+offset0))
{
	vR[i] = 13775;
}
else
{
	vR[i] = 13774;
}

}
else
{
	if(input[i]==(13773+offset0))
{
	vR[i] = 13773;
}
else
{
	vR[i] = 13772;
}

}

}
else
{
	if(input[i]>(13769+offset0))
{
	if(input[i]==(13771+offset0))
{
	vR[i] = 13771;
}
else
{
	vR[i] = 13770;
}

}
else
{
	if(input[i]==(13769+offset0))
{
	vR[i] = 13769;
}
else
{
	vR[i] = 13768;
}

}

}

}
else
{
	if(input[i]>(13763+offset0))
{
	if(input[i]>(13765+offset0))
{
	if(input[i]==(13767+offset0))
{
	vR[i] = 13767;
}
else
{
	vR[i] = 13766;
}

}
else
{
	if(input[i]==(13765+offset0))
{
	vR[i] = 13765;
}
else
{
	vR[i] = 13764;
}

}

}
else
{
	if(input[i]>(13761+offset0))
{
	if(input[i]==(13763+offset0))
{
	vR[i] = 13763;
}
else
{
	vR[i] = 13762;
}

}
else
{
	if(input[i]==(13761+offset0))
{
	vR[i] = 13761;
}
else
{
	vR[i] = 13760;
}

}

}

}

}

}

}
else
{
	if(input[i]>(13727+offset0))
{
	if(input[i]>(13743+offset0))
{
	if(input[i]>(13751+offset0))
{
	if(input[i]>(13755+offset0))
{
	if(input[i]>(13757+offset0))
{
	if(input[i]==(13759+offset0))
{
	vR[i] = 13759;
}
else
{
	vR[i] = 13758;
}

}
else
{
	if(input[i]==(13757+offset0))
{
	vR[i] = 13757;
}
else
{
	vR[i] = 13756;
}

}

}
else
{
	if(input[i]>(13753+offset0))
{
	if(input[i]==(13755+offset0))
{
	vR[i] = 13755;
}
else
{
	vR[i] = 13754;
}

}
else
{
	if(input[i]==(13753+offset0))
{
	vR[i] = 13753;
}
else
{
	vR[i] = 13752;
}

}

}

}
else
{
	if(input[i]>(13747+offset0))
{
	if(input[i]>(13749+offset0))
{
	if(input[i]==(13751+offset0))
{
	vR[i] = 13751;
}
else
{
	vR[i] = 13750;
}

}
else
{
	if(input[i]==(13749+offset0))
{
	vR[i] = 13749;
}
else
{
	vR[i] = 13748;
}

}

}
else
{
	if(input[i]>(13745+offset0))
{
	if(input[i]==(13747+offset0))
{
	vR[i] = 13747;
}
else
{
	vR[i] = 13746;
}

}
else
{
	if(input[i]==(13745+offset0))
{
	vR[i] = 13745;
}
else
{
	vR[i] = 13744;
}

}

}

}

}
else
{
	if(input[i]>(13735+offset0))
{
	if(input[i]>(13739+offset0))
{
	if(input[i]>(13741+offset0))
{
	if(input[i]==(13743+offset0))
{
	vR[i] = 13743;
}
else
{
	vR[i] = 13742;
}

}
else
{
	if(input[i]==(13741+offset0))
{
	vR[i] = 13741;
}
else
{
	vR[i] = 13740;
}

}

}
else
{
	if(input[i]>(13737+offset0))
{
	if(input[i]==(13739+offset0))
{
	vR[i] = 13739;
}
else
{
	vR[i] = 13738;
}

}
else
{
	if(input[i]==(13737+offset0))
{
	vR[i] = 13737;
}
else
{
	vR[i] = 13736;
}

}

}

}
else
{
	if(input[i]>(13731+offset0))
{
	if(input[i]>(13733+offset0))
{
	if(input[i]==(13735+offset0))
{
	vR[i] = 13735;
}
else
{
	vR[i] = 13734;
}

}
else
{
	if(input[i]==(13733+offset0))
{
	vR[i] = 13733;
}
else
{
	vR[i] = 13732;
}

}

}
else
{
	if(input[i]>(13729+offset0))
{
	if(input[i]==(13731+offset0))
{
	vR[i] = 13731;
}
else
{
	vR[i] = 13730;
}

}
else
{
	if(input[i]==(13729+offset0))
{
	vR[i] = 13729;
}
else
{
	vR[i] = 13728;
}

}

}

}

}

}
else
{
	if(input[i]>(13711+offset0))
{
	if(input[i]>(13719+offset0))
{
	if(input[i]>(13723+offset0))
{
	if(input[i]>(13725+offset0))
{
	if(input[i]==(13727+offset0))
{
	vR[i] = 13727;
}
else
{
	vR[i] = 13726;
}

}
else
{
	if(input[i]==(13725+offset0))
{
	vR[i] = 13725;
}
else
{
	vR[i] = 13724;
}

}

}
else
{
	if(input[i]>(13721+offset0))
{
	if(input[i]==(13723+offset0))
{
	vR[i] = 13723;
}
else
{
	vR[i] = 13722;
}

}
else
{
	if(input[i]==(13721+offset0))
{
	vR[i] = 13721;
}
else
{
	vR[i] = 13720;
}

}

}

}
else
{
	if(input[i]>(13715+offset0))
{
	if(input[i]>(13717+offset0))
{
	if(input[i]==(13719+offset0))
{
	vR[i] = 13719;
}
else
{
	vR[i] = 13718;
}

}
else
{
	if(input[i]==(13717+offset0))
{
	vR[i] = 13717;
}
else
{
	vR[i] = 13716;
}

}

}
else
{
	if(input[i]>(13713+offset0))
{
	if(input[i]==(13715+offset0))
{
	vR[i] = 13715;
}
else
{
	vR[i] = 13714;
}

}
else
{
	if(input[i]==(13713+offset0))
{
	vR[i] = 13713;
}
else
{
	vR[i] = 13712;
}

}

}

}

}
else
{
	if(input[i]>(13703+offset0))
{
	if(input[i]>(13707+offset0))
{
	if(input[i]>(13709+offset0))
{
	if(input[i]==(13711+offset0))
{
	vR[i] = 13711;
}
else
{
	vR[i] = 13710;
}

}
else
{
	if(input[i]==(13709+offset0))
{
	vR[i] = 13709;
}
else
{
	vR[i] = 13708;
}

}

}
else
{
	if(input[i]>(13705+offset0))
{
	if(input[i]==(13707+offset0))
{
	vR[i] = 13707;
}
else
{
	vR[i] = 13706;
}

}
else
{
	if(input[i]==(13705+offset0))
{
	vR[i] = 13705;
}
else
{
	vR[i] = 13704;
}

}

}

}
else
{
	if(input[i]>(13699+offset0))
{
	if(input[i]>(13701+offset0))
{
	if(input[i]==(13703+offset0))
{
	vR[i] = 13703;
}
else
{
	vR[i] = 13702;
}

}
else
{
	if(input[i]==(13701+offset0))
{
	vR[i] = 13701;
}
else
{
	vR[i] = 13700;
}

}

}
else
{
	if(input[i]>(13697+offset0))
{
	if(input[i]==(13699+offset0))
{
	vR[i] = 13699;
}
else
{
	vR[i] = 13698;
}

}
else
{
	if(input[i]==(13697+offset0))
{
	vR[i] = 13697;
}
else
{
	vR[i] = 13696;
}

}

}

}

}

}

}

}
else
{
	if(input[i]>(13631+offset0))
{
	if(input[i]>(13663+offset0))
{
	if(input[i]>(13679+offset0))
{
	if(input[i]>(13687+offset0))
{
	if(input[i]>(13691+offset0))
{
	if(input[i]>(13693+offset0))
{
	if(input[i]==(13695+offset0))
{
	vR[i] = 13695;
}
else
{
	vR[i] = 13694;
}

}
else
{
	if(input[i]==(13693+offset0))
{
	vR[i] = 13693;
}
else
{
	vR[i] = 13692;
}

}

}
else
{
	if(input[i]>(13689+offset0))
{
	if(input[i]==(13691+offset0))
{
	vR[i] = 13691;
}
else
{
	vR[i] = 13690;
}

}
else
{
	if(input[i]==(13689+offset0))
{
	vR[i] = 13689;
}
else
{
	vR[i] = 13688;
}

}

}

}
else
{
	if(input[i]>(13683+offset0))
{
	if(input[i]>(13685+offset0))
{
	if(input[i]==(13687+offset0))
{
	vR[i] = 13687;
}
else
{
	vR[i] = 13686;
}

}
else
{
	if(input[i]==(13685+offset0))
{
	vR[i] = 13685;
}
else
{
	vR[i] = 13684;
}

}

}
else
{
	if(input[i]>(13681+offset0))
{
	if(input[i]==(13683+offset0))
{
	vR[i] = 13683;
}
else
{
	vR[i] = 13682;
}

}
else
{
	if(input[i]==(13681+offset0))
{
	vR[i] = 13681;
}
else
{
	vR[i] = 13680;
}

}

}

}

}
else
{
	if(input[i]>(13671+offset0))
{
	if(input[i]>(13675+offset0))
{
	if(input[i]>(13677+offset0))
{
	if(input[i]==(13679+offset0))
{
	vR[i] = 13679;
}
else
{
	vR[i] = 13678;
}

}
else
{
	if(input[i]==(13677+offset0))
{
	vR[i] = 13677;
}
else
{
	vR[i] = 13676;
}

}

}
else
{
	if(input[i]>(13673+offset0))
{
	if(input[i]==(13675+offset0))
{
	vR[i] = 13675;
}
else
{
	vR[i] = 13674;
}

}
else
{
	if(input[i]==(13673+offset0))
{
	vR[i] = 13673;
}
else
{
	vR[i] = 13672;
}

}

}

}
else
{
	if(input[i]>(13667+offset0))
{
	if(input[i]>(13669+offset0))
{
	if(input[i]==(13671+offset0))
{
	vR[i] = 13671;
}
else
{
	vR[i] = 13670;
}

}
else
{
	if(input[i]==(13669+offset0))
{
	vR[i] = 13669;
}
else
{
	vR[i] = 13668;
}

}

}
else
{
	if(input[i]>(13665+offset0))
{
	if(input[i]==(13667+offset0))
{
	vR[i] = 13667;
}
else
{
	vR[i] = 13666;
}

}
else
{
	if(input[i]==(13665+offset0))
{
	vR[i] = 13665;
}
else
{
	vR[i] = 13664;
}

}

}

}

}

}
else
{
	if(input[i]>(13647+offset0))
{
	if(input[i]>(13655+offset0))
{
	if(input[i]>(13659+offset0))
{
	if(input[i]>(13661+offset0))
{
	if(input[i]==(13663+offset0))
{
	vR[i] = 13663;
}
else
{
	vR[i] = 13662;
}

}
else
{
	if(input[i]==(13661+offset0))
{
	vR[i] = 13661;
}
else
{
	vR[i] = 13660;
}

}

}
else
{
	if(input[i]>(13657+offset0))
{
	if(input[i]==(13659+offset0))
{
	vR[i] = 13659;
}
else
{
	vR[i] = 13658;
}

}
else
{
	if(input[i]==(13657+offset0))
{
	vR[i] = 13657;
}
else
{
	vR[i] = 13656;
}

}

}

}
else
{
	if(input[i]>(13651+offset0))
{
	if(input[i]>(13653+offset0))
{
	if(input[i]==(13655+offset0))
{
	vR[i] = 13655;
}
else
{
	vR[i] = 13654;
}

}
else
{
	if(input[i]==(13653+offset0))
{
	vR[i] = 13653;
}
else
{
	vR[i] = 13652;
}

}

}
else
{
	if(input[i]>(13649+offset0))
{
	if(input[i]==(13651+offset0))
{
	vR[i] = 13651;
}
else
{
	vR[i] = 13650;
}

}
else
{
	if(input[i]==(13649+offset0))
{
	vR[i] = 13649;
}
else
{
	vR[i] = 13648;
}

}

}

}

}
else
{
	if(input[i]>(13639+offset0))
{
	if(input[i]>(13643+offset0))
{
	if(input[i]>(13645+offset0))
{
	if(input[i]==(13647+offset0))
{
	vR[i] = 13647;
}
else
{
	vR[i] = 13646;
}

}
else
{
	if(input[i]==(13645+offset0))
{
	vR[i] = 13645;
}
else
{
	vR[i] = 13644;
}

}

}
else
{
	if(input[i]>(13641+offset0))
{
	if(input[i]==(13643+offset0))
{
	vR[i] = 13643;
}
else
{
	vR[i] = 13642;
}

}
else
{
	if(input[i]==(13641+offset0))
{
	vR[i] = 13641;
}
else
{
	vR[i] = 13640;
}

}

}

}
else
{
	if(input[i]>(13635+offset0))
{
	if(input[i]>(13637+offset0))
{
	if(input[i]==(13639+offset0))
{
	vR[i] = 13639;
}
else
{
	vR[i] = 13638;
}

}
else
{
	if(input[i]==(13637+offset0))
{
	vR[i] = 13637;
}
else
{
	vR[i] = 13636;
}

}

}
else
{
	if(input[i]>(13633+offset0))
{
	if(input[i]==(13635+offset0))
{
	vR[i] = 13635;
}
else
{
	vR[i] = 13634;
}

}
else
{
	if(input[i]==(13633+offset0))
{
	vR[i] = 13633;
}
else
{
	vR[i] = 13632;
}

}

}

}

}

}

}
else
{
	if(input[i]>(13599+offset0))
{
	if(input[i]>(13615+offset0))
{
	if(input[i]>(13623+offset0))
{
	if(input[i]>(13627+offset0))
{
	if(input[i]>(13629+offset0))
{
	if(input[i]==(13631+offset0))
{
	vR[i] = 13631;
}
else
{
	vR[i] = 13630;
}

}
else
{
	if(input[i]==(13629+offset0))
{
	vR[i] = 13629;
}
else
{
	vR[i] = 13628;
}

}

}
else
{
	if(input[i]>(13625+offset0))
{
	if(input[i]==(13627+offset0))
{
	vR[i] = 13627;
}
else
{
	vR[i] = 13626;
}

}
else
{
	if(input[i]==(13625+offset0))
{
	vR[i] = 13625;
}
else
{
	vR[i] = 13624;
}

}

}

}
else
{
	if(input[i]>(13619+offset0))
{
	if(input[i]>(13621+offset0))
{
	if(input[i]==(13623+offset0))
{
	vR[i] = 13623;
}
else
{
	vR[i] = 13622;
}

}
else
{
	if(input[i]==(13621+offset0))
{
	vR[i] = 13621;
}
else
{
	vR[i] = 13620;
}

}

}
else
{
	if(input[i]>(13617+offset0))
{
	if(input[i]==(13619+offset0))
{
	vR[i] = 13619;
}
else
{
	vR[i] = 13618;
}

}
else
{
	if(input[i]==(13617+offset0))
{
	vR[i] = 13617;
}
else
{
	vR[i] = 13616;
}

}

}

}

}
else
{
	if(input[i]>(13607+offset0))
{
	if(input[i]>(13611+offset0))
{
	if(input[i]>(13613+offset0))
{
	if(input[i]==(13615+offset0))
{
	vR[i] = 13615;
}
else
{
	vR[i] = 13614;
}

}
else
{
	if(input[i]==(13613+offset0))
{
	vR[i] = 13613;
}
else
{
	vR[i] = 13612;
}

}

}
else
{
	if(input[i]>(13609+offset0))
{
	if(input[i]==(13611+offset0))
{
	vR[i] = 13611;
}
else
{
	vR[i] = 13610;
}

}
else
{
	if(input[i]==(13609+offset0))
{
	vR[i] = 13609;
}
else
{
	vR[i] = 13608;
}

}

}

}
else
{
	if(input[i]>(13603+offset0))
{
	if(input[i]>(13605+offset0))
{
	if(input[i]==(13607+offset0))
{
	vR[i] = 13607;
}
else
{
	vR[i] = 13606;
}

}
else
{
	if(input[i]==(13605+offset0))
{
	vR[i] = 13605;
}
else
{
	vR[i] = 13604;
}

}

}
else
{
	if(input[i]>(13601+offset0))
{
	if(input[i]==(13603+offset0))
{
	vR[i] = 13603;
}
else
{
	vR[i] = 13602;
}

}
else
{
	if(input[i]==(13601+offset0))
{
	vR[i] = 13601;
}
else
{
	vR[i] = 13600;
}

}

}

}

}

}
else
{
	if(input[i]>(13583+offset0))
{
	if(input[i]>(13591+offset0))
{
	if(input[i]>(13595+offset0))
{
	if(input[i]>(13597+offset0))
{
	if(input[i]==(13599+offset0))
{
	vR[i] = 13599;
}
else
{
	vR[i] = 13598;
}

}
else
{
	if(input[i]==(13597+offset0))
{
	vR[i] = 13597;
}
else
{
	vR[i] = 13596;
}

}

}
else
{
	if(input[i]>(13593+offset0))
{
	if(input[i]==(13595+offset0))
{
	vR[i] = 13595;
}
else
{
	vR[i] = 13594;
}

}
else
{
	if(input[i]==(13593+offset0))
{
	vR[i] = 13593;
}
else
{
	vR[i] = 13592;
}

}

}

}
else
{
	if(input[i]>(13587+offset0))
{
	if(input[i]>(13589+offset0))
{
	if(input[i]==(13591+offset0))
{
	vR[i] = 13591;
}
else
{
	vR[i] = 13590;
}

}
else
{
	if(input[i]==(13589+offset0))
{
	vR[i] = 13589;
}
else
{
	vR[i] = 13588;
}

}

}
else
{
	if(input[i]>(13585+offset0))
{
	if(input[i]==(13587+offset0))
{
	vR[i] = 13587;
}
else
{
	vR[i] = 13586;
}

}
else
{
	if(input[i]==(13585+offset0))
{
	vR[i] = 13585;
}
else
{
	vR[i] = 13584;
}

}

}

}

}
else
{
	if(input[i]>(13575+offset0))
{
	if(input[i]>(13579+offset0))
{
	if(input[i]>(13581+offset0))
{
	if(input[i]==(13583+offset0))
{
	vR[i] = 13583;
}
else
{
	vR[i] = 13582;
}

}
else
{
	if(input[i]==(13581+offset0))
{
	vR[i] = 13581;
}
else
{
	vR[i] = 13580;
}

}

}
else
{
	if(input[i]>(13577+offset0))
{
	if(input[i]==(13579+offset0))
{
	vR[i] = 13579;
}
else
{
	vR[i] = 13578;
}

}
else
{
	if(input[i]==(13577+offset0))
{
	vR[i] = 13577;
}
else
{
	vR[i] = 13576;
}

}

}

}
else
{
	if(input[i]>(13571+offset0))
{
	if(input[i]>(13573+offset0))
{
	if(input[i]==(13575+offset0))
{
	vR[i] = 13575;
}
else
{
	vR[i] = 13574;
}

}
else
{
	if(input[i]==(13573+offset0))
{
	vR[i] = 13573;
}
else
{
	vR[i] = 13572;
}

}

}
else
{
	if(input[i]>(13569+offset0))
{
	if(input[i]==(13571+offset0))
{
	vR[i] = 13571;
}
else
{
	vR[i] = 13570;
}

}
else
{
	if(input[i]==(13569+offset0))
{
	vR[i] = 13569;
}
else
{
	vR[i] = 13568;
}

}

}

}

}

}

}

}

}
else
{
	if(input[i]>(13439+offset0))
{
	if(input[i]>(13503+offset0))
{
	if(input[i]>(13535+offset0))
{
	if(input[i]>(13551+offset0))
{
	if(input[i]>(13559+offset0))
{
	if(input[i]>(13563+offset0))
{
	if(input[i]>(13565+offset0))
{
	if(input[i]==(13567+offset0))
{
	vR[i] = 13567;
}
else
{
	vR[i] = 13566;
}

}
else
{
	if(input[i]==(13565+offset0))
{
	vR[i] = 13565;
}
else
{
	vR[i] = 13564;
}

}

}
else
{
	if(input[i]>(13561+offset0))
{
	if(input[i]==(13563+offset0))
{
	vR[i] = 13563;
}
else
{
	vR[i] = 13562;
}

}
else
{
	if(input[i]==(13561+offset0))
{
	vR[i] = 13561;
}
else
{
	vR[i] = 13560;
}

}

}

}
else
{
	if(input[i]>(13555+offset0))
{
	if(input[i]>(13557+offset0))
{
	if(input[i]==(13559+offset0))
{
	vR[i] = 13559;
}
else
{
	vR[i] = 13558;
}

}
else
{
	if(input[i]==(13557+offset0))
{
	vR[i] = 13557;
}
else
{
	vR[i] = 13556;
}

}

}
else
{
	if(input[i]>(13553+offset0))
{
	if(input[i]==(13555+offset0))
{
	vR[i] = 13555;
}
else
{
	vR[i] = 13554;
}

}
else
{
	if(input[i]==(13553+offset0))
{
	vR[i] = 13553;
}
else
{
	vR[i] = 13552;
}

}

}

}

}
else
{
	if(input[i]>(13543+offset0))
{
	if(input[i]>(13547+offset0))
{
	if(input[i]>(13549+offset0))
{
	if(input[i]==(13551+offset0))
{
	vR[i] = 13551;
}
else
{
	vR[i] = 13550;
}

}
else
{
	if(input[i]==(13549+offset0))
{
	vR[i] = 13549;
}
else
{
	vR[i] = 13548;
}

}

}
else
{
	if(input[i]>(13545+offset0))
{
	if(input[i]==(13547+offset0))
{
	vR[i] = 13547;
}
else
{
	vR[i] = 13546;
}

}
else
{
	if(input[i]==(13545+offset0))
{
	vR[i] = 13545;
}
else
{
	vR[i] = 13544;
}

}

}

}
else
{
	if(input[i]>(13539+offset0))
{
	if(input[i]>(13541+offset0))
{
	if(input[i]==(13543+offset0))
{
	vR[i] = 13543;
}
else
{
	vR[i] = 13542;
}

}
else
{
	if(input[i]==(13541+offset0))
{
	vR[i] = 13541;
}
else
{
	vR[i] = 13540;
}

}

}
else
{
	if(input[i]>(13537+offset0))
{
	if(input[i]==(13539+offset0))
{
	vR[i] = 13539;
}
else
{
	vR[i] = 13538;
}

}
else
{
	if(input[i]==(13537+offset0))
{
	vR[i] = 13537;
}
else
{
	vR[i] = 13536;
}

}

}

}

}

}
else
{
	if(input[i]>(13519+offset0))
{
	if(input[i]>(13527+offset0))
{
	if(input[i]>(13531+offset0))
{
	if(input[i]>(13533+offset0))
{
	if(input[i]==(13535+offset0))
{
	vR[i] = 13535;
}
else
{
	vR[i] = 13534;
}

}
else
{
	if(input[i]==(13533+offset0))
{
	vR[i] = 13533;
}
else
{
	vR[i] = 13532;
}

}

}
else
{
	if(input[i]>(13529+offset0))
{
	if(input[i]==(13531+offset0))
{
	vR[i] = 13531;
}
else
{
	vR[i] = 13530;
}

}
else
{
	if(input[i]==(13529+offset0))
{
	vR[i] = 13529;
}
else
{
	vR[i] = 13528;
}

}

}

}
else
{
	if(input[i]>(13523+offset0))
{
	if(input[i]>(13525+offset0))
{
	if(input[i]==(13527+offset0))
{
	vR[i] = 13527;
}
else
{
	vR[i] = 13526;
}

}
else
{
	if(input[i]==(13525+offset0))
{
	vR[i] = 13525;
}
else
{
	vR[i] = 13524;
}

}

}
else
{
	if(input[i]>(13521+offset0))
{
	if(input[i]==(13523+offset0))
{
	vR[i] = 13523;
}
else
{
	vR[i] = 13522;
}

}
else
{
	if(input[i]==(13521+offset0))
{
	vR[i] = 13521;
}
else
{
	vR[i] = 13520;
}

}

}

}

}
else
{
	if(input[i]>(13511+offset0))
{
	if(input[i]>(13515+offset0))
{
	if(input[i]>(13517+offset0))
{
	if(input[i]==(13519+offset0))
{
	vR[i] = 13519;
}
else
{
	vR[i] = 13518;
}

}
else
{
	if(input[i]==(13517+offset0))
{
	vR[i] = 13517;
}
else
{
	vR[i] = 13516;
}

}

}
else
{
	if(input[i]>(13513+offset0))
{
	if(input[i]==(13515+offset0))
{
	vR[i] = 13515;
}
else
{
	vR[i] = 13514;
}

}
else
{
	if(input[i]==(13513+offset0))
{
	vR[i] = 13513;
}
else
{
	vR[i] = 13512;
}

}

}

}
else
{
	if(input[i]>(13507+offset0))
{
	if(input[i]>(13509+offset0))
{
	if(input[i]==(13511+offset0))
{
	vR[i] = 13511;
}
else
{
	vR[i] = 13510;
}

}
else
{
	if(input[i]==(13509+offset0))
{
	vR[i] = 13509;
}
else
{
	vR[i] = 13508;
}

}

}
else
{
	if(input[i]>(13505+offset0))
{
	if(input[i]==(13507+offset0))
{
	vR[i] = 13507;
}
else
{
	vR[i] = 13506;
}

}
else
{
	if(input[i]==(13505+offset0))
{
	vR[i] = 13505;
}
else
{
	vR[i] = 13504;
}

}

}

}

}

}

}
else
{
	if(input[i]>(13471+offset0))
{
	if(input[i]>(13487+offset0))
{
	if(input[i]>(13495+offset0))
{
	if(input[i]>(13499+offset0))
{
	if(input[i]>(13501+offset0))
{
	if(input[i]==(13503+offset0))
{
	vR[i] = 13503;
}
else
{
	vR[i] = 13502;
}

}
else
{
	if(input[i]==(13501+offset0))
{
	vR[i] = 13501;
}
else
{
	vR[i] = 13500;
}

}

}
else
{
	if(input[i]>(13497+offset0))
{
	if(input[i]==(13499+offset0))
{
	vR[i] = 13499;
}
else
{
	vR[i] = 13498;
}

}
else
{
	if(input[i]==(13497+offset0))
{
	vR[i] = 13497;
}
else
{
	vR[i] = 13496;
}

}

}

}
else
{
	if(input[i]>(13491+offset0))
{
	if(input[i]>(13493+offset0))
{
	if(input[i]==(13495+offset0))
{
	vR[i] = 13495;
}
else
{
	vR[i] = 13494;
}

}
else
{
	if(input[i]==(13493+offset0))
{
	vR[i] = 13493;
}
else
{
	vR[i] = 13492;
}

}

}
else
{
	if(input[i]>(13489+offset0))
{
	if(input[i]==(13491+offset0))
{
	vR[i] = 13491;
}
else
{
	vR[i] = 13490;
}

}
else
{
	if(input[i]==(13489+offset0))
{
	vR[i] = 13489;
}
else
{
	vR[i] = 13488;
}

}

}

}

}
else
{
	if(input[i]>(13479+offset0))
{
	if(input[i]>(13483+offset0))
{
	if(input[i]>(13485+offset0))
{
	if(input[i]==(13487+offset0))
{
	vR[i] = 13487;
}
else
{
	vR[i] = 13486;
}

}
else
{
	if(input[i]==(13485+offset0))
{
	vR[i] = 13485;
}
else
{
	vR[i] = 13484;
}

}

}
else
{
	if(input[i]>(13481+offset0))
{
	if(input[i]==(13483+offset0))
{
	vR[i] = 13483;
}
else
{
	vR[i] = 13482;
}

}
else
{
	if(input[i]==(13481+offset0))
{
	vR[i] = 13481;
}
else
{
	vR[i] = 13480;
}

}

}

}
else
{
	if(input[i]>(13475+offset0))
{
	if(input[i]>(13477+offset0))
{
	if(input[i]==(13479+offset0))
{
	vR[i] = 13479;
}
else
{
	vR[i] = 13478;
}

}
else
{
	if(input[i]==(13477+offset0))
{
	vR[i] = 13477;
}
else
{
	vR[i] = 13476;
}

}

}
else
{
	if(input[i]>(13473+offset0))
{
	if(input[i]==(13475+offset0))
{
	vR[i] = 13475;
}
else
{
	vR[i] = 13474;
}

}
else
{
	if(input[i]==(13473+offset0))
{
	vR[i] = 13473;
}
else
{
	vR[i] = 13472;
}

}

}

}

}

}
else
{
	if(input[i]>(13455+offset0))
{
	if(input[i]>(13463+offset0))
{
	if(input[i]>(13467+offset0))
{
	if(input[i]>(13469+offset0))
{
	if(input[i]==(13471+offset0))
{
	vR[i] = 13471;
}
else
{
	vR[i] = 13470;
}

}
else
{
	if(input[i]==(13469+offset0))
{
	vR[i] = 13469;
}
else
{
	vR[i] = 13468;
}

}

}
else
{
	if(input[i]>(13465+offset0))
{
	if(input[i]==(13467+offset0))
{
	vR[i] = 13467;
}
else
{
	vR[i] = 13466;
}

}
else
{
	if(input[i]==(13465+offset0))
{
	vR[i] = 13465;
}
else
{
	vR[i] = 13464;
}

}

}

}
else
{
	if(input[i]>(13459+offset0))
{
	if(input[i]>(13461+offset0))
{
	if(input[i]==(13463+offset0))
{
	vR[i] = 13463;
}
else
{
	vR[i] = 13462;
}

}
else
{
	if(input[i]==(13461+offset0))
{
	vR[i] = 13461;
}
else
{
	vR[i] = 13460;
}

}

}
else
{
	if(input[i]>(13457+offset0))
{
	if(input[i]==(13459+offset0))
{
	vR[i] = 13459;
}
else
{
	vR[i] = 13458;
}

}
else
{
	if(input[i]==(13457+offset0))
{
	vR[i] = 13457;
}
else
{
	vR[i] = 13456;
}

}

}

}

}
else
{
	if(input[i]>(13447+offset0))
{
	if(input[i]>(13451+offset0))
{
	if(input[i]>(13453+offset0))
{
	if(input[i]==(13455+offset0))
{
	vR[i] = 13455;
}
else
{
	vR[i] = 13454;
}

}
else
{
	if(input[i]==(13453+offset0))
{
	vR[i] = 13453;
}
else
{
	vR[i] = 13452;
}

}

}
else
{
	if(input[i]>(13449+offset0))
{
	if(input[i]==(13451+offset0))
{
	vR[i] = 13451;
}
else
{
	vR[i] = 13450;
}

}
else
{
	if(input[i]==(13449+offset0))
{
	vR[i] = 13449;
}
else
{
	vR[i] = 13448;
}

}

}

}
else
{
	if(input[i]>(13443+offset0))
{
	if(input[i]>(13445+offset0))
{
	if(input[i]==(13447+offset0))
{
	vR[i] = 13447;
}
else
{
	vR[i] = 13446;
}

}
else
{
	if(input[i]==(13445+offset0))
{
	vR[i] = 13445;
}
else
{
	vR[i] = 13444;
}

}

}
else
{
	if(input[i]>(13441+offset0))
{
	if(input[i]==(13443+offset0))
{
	vR[i] = 13443;
}
else
{
	vR[i] = 13442;
}

}
else
{
	if(input[i]==(13441+offset0))
{
	vR[i] = 13441;
}
else
{
	vR[i] = 13440;
}

}

}

}

}

}

}

}
else
{
	if(input[i]>(13375+offset0))
{
	if(input[i]>(13407+offset0))
{
	if(input[i]>(13423+offset0))
{
	if(input[i]>(13431+offset0))
{
	if(input[i]>(13435+offset0))
{
	if(input[i]>(13437+offset0))
{
	if(input[i]==(13439+offset0))
{
	vR[i] = 13439;
}
else
{
	vR[i] = 13438;
}

}
else
{
	if(input[i]==(13437+offset0))
{
	vR[i] = 13437;
}
else
{
	vR[i] = 13436;
}

}

}
else
{
	if(input[i]>(13433+offset0))
{
	if(input[i]==(13435+offset0))
{
	vR[i] = 13435;
}
else
{
	vR[i] = 13434;
}

}
else
{
	if(input[i]==(13433+offset0))
{
	vR[i] = 13433;
}
else
{
	vR[i] = 13432;
}

}

}

}
else
{
	if(input[i]>(13427+offset0))
{
	if(input[i]>(13429+offset0))
{
	if(input[i]==(13431+offset0))
{
	vR[i] = 13431;
}
else
{
	vR[i] = 13430;
}

}
else
{
	if(input[i]==(13429+offset0))
{
	vR[i] = 13429;
}
else
{
	vR[i] = 13428;
}

}

}
else
{
	if(input[i]>(13425+offset0))
{
	if(input[i]==(13427+offset0))
{
	vR[i] = 13427;
}
else
{
	vR[i] = 13426;
}

}
else
{
	if(input[i]==(13425+offset0))
{
	vR[i] = 13425;
}
else
{
	vR[i] = 13424;
}

}

}

}

}
else
{
	if(input[i]>(13415+offset0))
{
	if(input[i]>(13419+offset0))
{
	if(input[i]>(13421+offset0))
{
	if(input[i]==(13423+offset0))
{
	vR[i] = 13423;
}
else
{
	vR[i] = 13422;
}

}
else
{
	if(input[i]==(13421+offset0))
{
	vR[i] = 13421;
}
else
{
	vR[i] = 13420;
}

}

}
else
{
	if(input[i]>(13417+offset0))
{
	if(input[i]==(13419+offset0))
{
	vR[i] = 13419;
}
else
{
	vR[i] = 13418;
}

}
else
{
	if(input[i]==(13417+offset0))
{
	vR[i] = 13417;
}
else
{
	vR[i] = 13416;
}

}

}

}
else
{
	if(input[i]>(13411+offset0))
{
	if(input[i]>(13413+offset0))
{
	if(input[i]==(13415+offset0))
{
	vR[i] = 13415;
}
else
{
	vR[i] = 13414;
}

}
else
{
	if(input[i]==(13413+offset0))
{
	vR[i] = 13413;
}
else
{
	vR[i] = 13412;
}

}

}
else
{
	if(input[i]>(13409+offset0))
{
	if(input[i]==(13411+offset0))
{
	vR[i] = 13411;
}
else
{
	vR[i] = 13410;
}

}
else
{
	if(input[i]==(13409+offset0))
{
	vR[i] = 13409;
}
else
{
	vR[i] = 13408;
}

}

}

}

}

}
else
{
	if(input[i]>(13391+offset0))
{
	if(input[i]>(13399+offset0))
{
	if(input[i]>(13403+offset0))
{
	if(input[i]>(13405+offset0))
{
	if(input[i]==(13407+offset0))
{
	vR[i] = 13407;
}
else
{
	vR[i] = 13406;
}

}
else
{
	if(input[i]==(13405+offset0))
{
	vR[i] = 13405;
}
else
{
	vR[i] = 13404;
}

}

}
else
{
	if(input[i]>(13401+offset0))
{
	if(input[i]==(13403+offset0))
{
	vR[i] = 13403;
}
else
{
	vR[i] = 13402;
}

}
else
{
	if(input[i]==(13401+offset0))
{
	vR[i] = 13401;
}
else
{
	vR[i] = 13400;
}

}

}

}
else
{
	if(input[i]>(13395+offset0))
{
	if(input[i]>(13397+offset0))
{
	if(input[i]==(13399+offset0))
{
	vR[i] = 13399;
}
else
{
	vR[i] = 13398;
}

}
else
{
	if(input[i]==(13397+offset0))
{
	vR[i] = 13397;
}
else
{
	vR[i] = 13396;
}

}

}
else
{
	if(input[i]>(13393+offset0))
{
	if(input[i]==(13395+offset0))
{
	vR[i] = 13395;
}
else
{
	vR[i] = 13394;
}

}
else
{
	if(input[i]==(13393+offset0))
{
	vR[i] = 13393;
}
else
{
	vR[i] = 13392;
}

}

}

}

}
else
{
	if(input[i]>(13383+offset0))
{
	if(input[i]>(13387+offset0))
{
	if(input[i]>(13389+offset0))
{
	if(input[i]==(13391+offset0))
{
	vR[i] = 13391;
}
else
{
	vR[i] = 13390;
}

}
else
{
	if(input[i]==(13389+offset0))
{
	vR[i] = 13389;
}
else
{
	vR[i] = 13388;
}

}

}
else
{
	if(input[i]>(13385+offset0))
{
	if(input[i]==(13387+offset0))
{
	vR[i] = 13387;
}
else
{
	vR[i] = 13386;
}

}
else
{
	if(input[i]==(13385+offset0))
{
	vR[i] = 13385;
}
else
{
	vR[i] = 13384;
}

}

}

}
else
{
	if(input[i]>(13379+offset0))
{
	if(input[i]>(13381+offset0))
{
	if(input[i]==(13383+offset0))
{
	vR[i] = 13383;
}
else
{
	vR[i] = 13382;
}

}
else
{
	if(input[i]==(13381+offset0))
{
	vR[i] = 13381;
}
else
{
	vR[i] = 13380;
}

}

}
else
{
	if(input[i]>(13377+offset0))
{
	if(input[i]==(13379+offset0))
{
	vR[i] = 13379;
}
else
{
	vR[i] = 13378;
}

}
else
{
	if(input[i]==(13377+offset0))
{
	vR[i] = 13377;
}
else
{
	vR[i] = 13376;
}

}

}

}

}

}

}
else
{
	if(input[i]>(13343+offset0))
{
	if(input[i]>(13359+offset0))
{
	if(input[i]>(13367+offset0))
{
	if(input[i]>(13371+offset0))
{
	if(input[i]>(13373+offset0))
{
	if(input[i]==(13375+offset0))
{
	vR[i] = 13375;
}
else
{
	vR[i] = 13374;
}

}
else
{
	if(input[i]==(13373+offset0))
{
	vR[i] = 13373;
}
else
{
	vR[i] = 13372;
}

}

}
else
{
	if(input[i]>(13369+offset0))
{
	if(input[i]==(13371+offset0))
{
	vR[i] = 13371;
}
else
{
	vR[i] = 13370;
}

}
else
{
	if(input[i]==(13369+offset0))
{
	vR[i] = 13369;
}
else
{
	vR[i] = 13368;
}

}

}

}
else
{
	if(input[i]>(13363+offset0))
{
	if(input[i]>(13365+offset0))
{
	if(input[i]==(13367+offset0))
{
	vR[i] = 13367;
}
else
{
	vR[i] = 13366;
}

}
else
{
	if(input[i]==(13365+offset0))
{
	vR[i] = 13365;
}
else
{
	vR[i] = 13364;
}

}

}
else
{
	if(input[i]>(13361+offset0))
{
	if(input[i]==(13363+offset0))
{
	vR[i] = 13363;
}
else
{
	vR[i] = 13362;
}

}
else
{
	if(input[i]==(13361+offset0))
{
	vR[i] = 13361;
}
else
{
	vR[i] = 13360;
}

}

}

}

}
else
{
	if(input[i]>(13351+offset0))
{
	if(input[i]>(13355+offset0))
{
	if(input[i]>(13357+offset0))
{
	if(input[i]==(13359+offset0))
{
	vR[i] = 13359;
}
else
{
	vR[i] = 13358;
}

}
else
{
	if(input[i]==(13357+offset0))
{
	vR[i] = 13357;
}
else
{
	vR[i] = 13356;
}

}

}
else
{
	if(input[i]>(13353+offset0))
{
	if(input[i]==(13355+offset0))
{
	vR[i] = 13355;
}
else
{
	vR[i] = 13354;
}

}
else
{
	if(input[i]==(13353+offset0))
{
	vR[i] = 13353;
}
else
{
	vR[i] = 13352;
}

}

}

}
else
{
	if(input[i]>(13347+offset0))
{
	if(input[i]>(13349+offset0))
{
	if(input[i]==(13351+offset0))
{
	vR[i] = 13351;
}
else
{
	vR[i] = 13350;
}

}
else
{
	if(input[i]==(13349+offset0))
{
	vR[i] = 13349;
}
else
{
	vR[i] = 13348;
}

}

}
else
{
	if(input[i]>(13345+offset0))
{
	if(input[i]==(13347+offset0))
{
	vR[i] = 13347;
}
else
{
	vR[i] = 13346;
}

}
else
{
	if(input[i]==(13345+offset0))
{
	vR[i] = 13345;
}
else
{
	vR[i] = 13344;
}

}

}

}

}

}
else
{
	if(input[i]>(13327+offset0))
{
	if(input[i]>(13335+offset0))
{
	if(input[i]>(13339+offset0))
{
	if(input[i]>(13341+offset0))
{
	if(input[i]==(13343+offset0))
{
	vR[i] = 13343;
}
else
{
	vR[i] = 13342;
}

}
else
{
	if(input[i]==(13341+offset0))
{
	vR[i] = 13341;
}
else
{
	vR[i] = 13340;
}

}

}
else
{
	if(input[i]>(13337+offset0))
{
	if(input[i]==(13339+offset0))
{
	vR[i] = 13339;
}
else
{
	vR[i] = 13338;
}

}
else
{
	if(input[i]==(13337+offset0))
{
	vR[i] = 13337;
}
else
{
	vR[i] = 13336;
}

}

}

}
else
{
	if(input[i]>(13331+offset0))
{
	if(input[i]>(13333+offset0))
{
	if(input[i]==(13335+offset0))
{
	vR[i] = 13335;
}
else
{
	vR[i] = 13334;
}

}
else
{
	if(input[i]==(13333+offset0))
{
	vR[i] = 13333;
}
else
{
	vR[i] = 13332;
}

}

}
else
{
	if(input[i]>(13329+offset0))
{
	if(input[i]==(13331+offset0))
{
	vR[i] = 13331;
}
else
{
	vR[i] = 13330;
}

}
else
{
	if(input[i]==(13329+offset0))
{
	vR[i] = 13329;
}
else
{
	vR[i] = 13328;
}

}

}

}

}
else
{
	if(input[i]>(13319+offset0))
{
	if(input[i]>(13323+offset0))
{
	if(input[i]>(13325+offset0))
{
	if(input[i]==(13327+offset0))
{
	vR[i] = 13327;
}
else
{
	vR[i] = 13326;
}

}
else
{
	if(input[i]==(13325+offset0))
{
	vR[i] = 13325;
}
else
{
	vR[i] = 13324;
}

}

}
else
{
	if(input[i]>(13321+offset0))
{
	if(input[i]==(13323+offset0))
{
	vR[i] = 13323;
}
else
{
	vR[i] = 13322;
}

}
else
{
	if(input[i]==(13321+offset0))
{
	vR[i] = 13321;
}
else
{
	vR[i] = 13320;
}

}

}

}
else
{
	if(input[i]>(13315+offset0))
{
	if(input[i]>(13317+offset0))
{
	if(input[i]==(13319+offset0))
{
	vR[i] = 13319;
}
else
{
	vR[i] = 13318;
}

}
else
{
	if(input[i]==(13317+offset0))
{
	vR[i] = 13317;
}
else
{
	vR[i] = 13316;
}

}

}
else
{
	if(input[i]>(13313+offset0))
{
	if(input[i]==(13315+offset0))
{
	vR[i] = 13315;
}
else
{
	vR[i] = 13314;
}

}
else
{
	if(input[i]==(13313+offset0))
{
	vR[i] = 13313;
}
else
{
	vR[i] = 13312;
}

}

}

}

}

}

}

}

}

}

}
else
{
	if(input[i]>(12799+offset0))
{
	if(input[i]>(13055+offset0))
{
	if(input[i]>(13183+offset0))
{
	if(input[i]>(13247+offset0))
{
	if(input[i]>(13279+offset0))
{
	if(input[i]>(13295+offset0))
{
	if(input[i]>(13303+offset0))
{
	if(input[i]>(13307+offset0))
{
	if(input[i]>(13309+offset0))
{
	if(input[i]==(13311+offset0))
{
	vR[i] = 13311;
}
else
{
	vR[i] = 13310;
}

}
else
{
	if(input[i]==(13309+offset0))
{
	vR[i] = 13309;
}
else
{
	vR[i] = 13308;
}

}

}
else
{
	if(input[i]>(13305+offset0))
{
	if(input[i]==(13307+offset0))
{
	vR[i] = 13307;
}
else
{
	vR[i] = 13306;
}

}
else
{
	if(input[i]==(13305+offset0))
{
	vR[i] = 13305;
}
else
{
	vR[i] = 13304;
}

}

}

}
else
{
	if(input[i]>(13299+offset0))
{
	if(input[i]>(13301+offset0))
{
	if(input[i]==(13303+offset0))
{
	vR[i] = 13303;
}
else
{
	vR[i] = 13302;
}

}
else
{
	if(input[i]==(13301+offset0))
{
	vR[i] = 13301;
}
else
{
	vR[i] = 13300;
}

}

}
else
{
	if(input[i]>(13297+offset0))
{
	if(input[i]==(13299+offset0))
{
	vR[i] = 13299;
}
else
{
	vR[i] = 13298;
}

}
else
{
	if(input[i]==(13297+offset0))
{
	vR[i] = 13297;
}
else
{
	vR[i] = 13296;
}

}

}

}

}
else
{
	if(input[i]>(13287+offset0))
{
	if(input[i]>(13291+offset0))
{
	if(input[i]>(13293+offset0))
{
	if(input[i]==(13295+offset0))
{
	vR[i] = 13295;
}
else
{
	vR[i] = 13294;
}

}
else
{
	if(input[i]==(13293+offset0))
{
	vR[i] = 13293;
}
else
{
	vR[i] = 13292;
}

}

}
else
{
	if(input[i]>(13289+offset0))
{
	if(input[i]==(13291+offset0))
{
	vR[i] = 13291;
}
else
{
	vR[i] = 13290;
}

}
else
{
	if(input[i]==(13289+offset0))
{
	vR[i] = 13289;
}
else
{
	vR[i] = 13288;
}

}

}

}
else
{
	if(input[i]>(13283+offset0))
{
	if(input[i]>(13285+offset0))
{
	if(input[i]==(13287+offset0))
{
	vR[i] = 13287;
}
else
{
	vR[i] = 13286;
}

}
else
{
	if(input[i]==(13285+offset0))
{
	vR[i] = 13285;
}
else
{
	vR[i] = 13284;
}

}

}
else
{
	if(input[i]>(13281+offset0))
{
	if(input[i]==(13283+offset0))
{
	vR[i] = 13283;
}
else
{
	vR[i] = 13282;
}

}
else
{
	if(input[i]==(13281+offset0))
{
	vR[i] = 13281;
}
else
{
	vR[i] = 13280;
}

}

}

}

}

}
else
{
	if(input[i]>(13263+offset0))
{
	if(input[i]>(13271+offset0))
{
	if(input[i]>(13275+offset0))
{
	if(input[i]>(13277+offset0))
{
	if(input[i]==(13279+offset0))
{
	vR[i] = 13279;
}
else
{
	vR[i] = 13278;
}

}
else
{
	if(input[i]==(13277+offset0))
{
	vR[i] = 13277;
}
else
{
	vR[i] = 13276;
}

}

}
else
{
	if(input[i]>(13273+offset0))
{
	if(input[i]==(13275+offset0))
{
	vR[i] = 13275;
}
else
{
	vR[i] = 13274;
}

}
else
{
	if(input[i]==(13273+offset0))
{
	vR[i] = 13273;
}
else
{
	vR[i] = 13272;
}

}

}

}
else
{
	if(input[i]>(13267+offset0))
{
	if(input[i]>(13269+offset0))
{
	if(input[i]==(13271+offset0))
{
	vR[i] = 13271;
}
else
{
	vR[i] = 13270;
}

}
else
{
	if(input[i]==(13269+offset0))
{
	vR[i] = 13269;
}
else
{
	vR[i] = 13268;
}

}

}
else
{
	if(input[i]>(13265+offset0))
{
	if(input[i]==(13267+offset0))
{
	vR[i] = 13267;
}
else
{
	vR[i] = 13266;
}

}
else
{
	if(input[i]==(13265+offset0))
{
	vR[i] = 13265;
}
else
{
	vR[i] = 13264;
}

}

}

}

}
else
{
	if(input[i]>(13255+offset0))
{
	if(input[i]>(13259+offset0))
{
	if(input[i]>(13261+offset0))
{
	if(input[i]==(13263+offset0))
{
	vR[i] = 13263;
}
else
{
	vR[i] = 13262;
}

}
else
{
	if(input[i]==(13261+offset0))
{
	vR[i] = 13261;
}
else
{
	vR[i] = 13260;
}

}

}
else
{
	if(input[i]>(13257+offset0))
{
	if(input[i]==(13259+offset0))
{
	vR[i] = 13259;
}
else
{
	vR[i] = 13258;
}

}
else
{
	if(input[i]==(13257+offset0))
{
	vR[i] = 13257;
}
else
{
	vR[i] = 13256;
}

}

}

}
else
{
	if(input[i]>(13251+offset0))
{
	if(input[i]>(13253+offset0))
{
	if(input[i]==(13255+offset0))
{
	vR[i] = 13255;
}
else
{
	vR[i] = 13254;
}

}
else
{
	if(input[i]==(13253+offset0))
{
	vR[i] = 13253;
}
else
{
	vR[i] = 13252;
}

}

}
else
{
	if(input[i]>(13249+offset0))
{
	if(input[i]==(13251+offset0))
{
	vR[i] = 13251;
}
else
{
	vR[i] = 13250;
}

}
else
{
	if(input[i]==(13249+offset0))
{
	vR[i] = 13249;
}
else
{
	vR[i] = 13248;
}

}

}

}

}

}

}
else
{
	if(input[i]>(13215+offset0))
{
	if(input[i]>(13231+offset0))
{
	if(input[i]>(13239+offset0))
{
	if(input[i]>(13243+offset0))
{
	if(input[i]>(13245+offset0))
{
	if(input[i]==(13247+offset0))
{
	vR[i] = 13247;
}
else
{
	vR[i] = 13246;
}

}
else
{
	if(input[i]==(13245+offset0))
{
	vR[i] = 13245;
}
else
{
	vR[i] = 13244;
}

}

}
else
{
	if(input[i]>(13241+offset0))
{
	if(input[i]==(13243+offset0))
{
	vR[i] = 13243;
}
else
{
	vR[i] = 13242;
}

}
else
{
	if(input[i]==(13241+offset0))
{
	vR[i] = 13241;
}
else
{
	vR[i] = 13240;
}

}

}

}
else
{
	if(input[i]>(13235+offset0))
{
	if(input[i]>(13237+offset0))
{
	if(input[i]==(13239+offset0))
{
	vR[i] = 13239;
}
else
{
	vR[i] = 13238;
}

}
else
{
	if(input[i]==(13237+offset0))
{
	vR[i] = 13237;
}
else
{
	vR[i] = 13236;
}

}

}
else
{
	if(input[i]>(13233+offset0))
{
	if(input[i]==(13235+offset0))
{
	vR[i] = 13235;
}
else
{
	vR[i] = 13234;
}

}
else
{
	if(input[i]==(13233+offset0))
{
	vR[i] = 13233;
}
else
{
	vR[i] = 13232;
}

}

}

}

}
else
{
	if(input[i]>(13223+offset0))
{
	if(input[i]>(13227+offset0))
{
	if(input[i]>(13229+offset0))
{
	if(input[i]==(13231+offset0))
{
	vR[i] = 13231;
}
else
{
	vR[i] = 13230;
}

}
else
{
	if(input[i]==(13229+offset0))
{
	vR[i] = 13229;
}
else
{
	vR[i] = 13228;
}

}

}
else
{
	if(input[i]>(13225+offset0))
{
	if(input[i]==(13227+offset0))
{
	vR[i] = 13227;
}
else
{
	vR[i] = 13226;
}

}
else
{
	if(input[i]==(13225+offset0))
{
	vR[i] = 13225;
}
else
{
	vR[i] = 13224;
}

}

}

}
else
{
	if(input[i]>(13219+offset0))
{
	if(input[i]>(13221+offset0))
{
	if(input[i]==(13223+offset0))
{
	vR[i] = 13223;
}
else
{
	vR[i] = 13222;
}

}
else
{
	if(input[i]==(13221+offset0))
{
	vR[i] = 13221;
}
else
{
	vR[i] = 13220;
}

}

}
else
{
	if(input[i]>(13217+offset0))
{
	if(input[i]==(13219+offset0))
{
	vR[i] = 13219;
}
else
{
	vR[i] = 13218;
}

}
else
{
	if(input[i]==(13217+offset0))
{
	vR[i] = 13217;
}
else
{
	vR[i] = 13216;
}

}

}

}

}

}
else
{
	if(input[i]>(13199+offset0))
{
	if(input[i]>(13207+offset0))
{
	if(input[i]>(13211+offset0))
{
	if(input[i]>(13213+offset0))
{
	if(input[i]==(13215+offset0))
{
	vR[i] = 13215;
}
else
{
	vR[i] = 13214;
}

}
else
{
	if(input[i]==(13213+offset0))
{
	vR[i] = 13213;
}
else
{
	vR[i] = 13212;
}

}

}
else
{
	if(input[i]>(13209+offset0))
{
	if(input[i]==(13211+offset0))
{
	vR[i] = 13211;
}
else
{
	vR[i] = 13210;
}

}
else
{
	if(input[i]==(13209+offset0))
{
	vR[i] = 13209;
}
else
{
	vR[i] = 13208;
}

}

}

}
else
{
	if(input[i]>(13203+offset0))
{
	if(input[i]>(13205+offset0))
{
	if(input[i]==(13207+offset0))
{
	vR[i] = 13207;
}
else
{
	vR[i] = 13206;
}

}
else
{
	if(input[i]==(13205+offset0))
{
	vR[i] = 13205;
}
else
{
	vR[i] = 13204;
}

}

}
else
{
	if(input[i]>(13201+offset0))
{
	if(input[i]==(13203+offset0))
{
	vR[i] = 13203;
}
else
{
	vR[i] = 13202;
}

}
else
{
	if(input[i]==(13201+offset0))
{
	vR[i] = 13201;
}
else
{
	vR[i] = 13200;
}

}

}

}

}
else
{
	if(input[i]>(13191+offset0))
{
	if(input[i]>(13195+offset0))
{
	if(input[i]>(13197+offset0))
{
	if(input[i]==(13199+offset0))
{
	vR[i] = 13199;
}
else
{
	vR[i] = 13198;
}

}
else
{
	if(input[i]==(13197+offset0))
{
	vR[i] = 13197;
}
else
{
	vR[i] = 13196;
}

}

}
else
{
	if(input[i]>(13193+offset0))
{
	if(input[i]==(13195+offset0))
{
	vR[i] = 13195;
}
else
{
	vR[i] = 13194;
}

}
else
{
	if(input[i]==(13193+offset0))
{
	vR[i] = 13193;
}
else
{
	vR[i] = 13192;
}

}

}

}
else
{
	if(input[i]>(13187+offset0))
{
	if(input[i]>(13189+offset0))
{
	if(input[i]==(13191+offset0))
{
	vR[i] = 13191;
}
else
{
	vR[i] = 13190;
}

}
else
{
	if(input[i]==(13189+offset0))
{
	vR[i] = 13189;
}
else
{
	vR[i] = 13188;
}

}

}
else
{
	if(input[i]>(13185+offset0))
{
	if(input[i]==(13187+offset0))
{
	vR[i] = 13187;
}
else
{
	vR[i] = 13186;
}

}
else
{
	if(input[i]==(13185+offset0))
{
	vR[i] = 13185;
}
else
{
	vR[i] = 13184;
}

}

}

}

}

}

}

}
else
{
	if(input[i]>(13119+offset0))
{
	if(input[i]>(13151+offset0))
{
	if(input[i]>(13167+offset0))
{
	if(input[i]>(13175+offset0))
{
	if(input[i]>(13179+offset0))
{
	if(input[i]>(13181+offset0))
{
	if(input[i]==(13183+offset0))
{
	vR[i] = 13183;
}
else
{
	vR[i] = 13182;
}

}
else
{
	if(input[i]==(13181+offset0))
{
	vR[i] = 13181;
}
else
{
	vR[i] = 13180;
}

}

}
else
{
	if(input[i]>(13177+offset0))
{
	if(input[i]==(13179+offset0))
{
	vR[i] = 13179;
}
else
{
	vR[i] = 13178;
}

}
else
{
	if(input[i]==(13177+offset0))
{
	vR[i] = 13177;
}
else
{
	vR[i] = 13176;
}

}

}

}
else
{
	if(input[i]>(13171+offset0))
{
	if(input[i]>(13173+offset0))
{
	if(input[i]==(13175+offset0))
{
	vR[i] = 13175;
}
else
{
	vR[i] = 13174;
}

}
else
{
	if(input[i]==(13173+offset0))
{
	vR[i] = 13173;
}
else
{
	vR[i] = 13172;
}

}

}
else
{
	if(input[i]>(13169+offset0))
{
	if(input[i]==(13171+offset0))
{
	vR[i] = 13171;
}
else
{
	vR[i] = 13170;
}

}
else
{
	if(input[i]==(13169+offset0))
{
	vR[i] = 13169;
}
else
{
	vR[i] = 13168;
}

}

}

}

}
else
{
	if(input[i]>(13159+offset0))
{
	if(input[i]>(13163+offset0))
{
	if(input[i]>(13165+offset0))
{
	if(input[i]==(13167+offset0))
{
	vR[i] = 13167;
}
else
{
	vR[i] = 13166;
}

}
else
{
	if(input[i]==(13165+offset0))
{
	vR[i] = 13165;
}
else
{
	vR[i] = 13164;
}

}

}
else
{
	if(input[i]>(13161+offset0))
{
	if(input[i]==(13163+offset0))
{
	vR[i] = 13163;
}
else
{
	vR[i] = 13162;
}

}
else
{
	if(input[i]==(13161+offset0))
{
	vR[i] = 13161;
}
else
{
	vR[i] = 13160;
}

}

}

}
else
{
	if(input[i]>(13155+offset0))
{
	if(input[i]>(13157+offset0))
{
	if(input[i]==(13159+offset0))
{
	vR[i] = 13159;
}
else
{
	vR[i] = 13158;
}

}
else
{
	if(input[i]==(13157+offset0))
{
	vR[i] = 13157;
}
else
{
	vR[i] = 13156;
}

}

}
else
{
	if(input[i]>(13153+offset0))
{
	if(input[i]==(13155+offset0))
{
	vR[i] = 13155;
}
else
{
	vR[i] = 13154;
}

}
else
{
	if(input[i]==(13153+offset0))
{
	vR[i] = 13153;
}
else
{
	vR[i] = 13152;
}

}

}

}

}

}
else
{
	if(input[i]>(13135+offset0))
{
	if(input[i]>(13143+offset0))
{
	if(input[i]>(13147+offset0))
{
	if(input[i]>(13149+offset0))
{
	if(input[i]==(13151+offset0))
{
	vR[i] = 13151;
}
else
{
	vR[i] = 13150;
}

}
else
{
	if(input[i]==(13149+offset0))
{
	vR[i] = 13149;
}
else
{
	vR[i] = 13148;
}

}

}
else
{
	if(input[i]>(13145+offset0))
{
	if(input[i]==(13147+offset0))
{
	vR[i] = 13147;
}
else
{
	vR[i] = 13146;
}

}
else
{
	if(input[i]==(13145+offset0))
{
	vR[i] = 13145;
}
else
{
	vR[i] = 13144;
}

}

}

}
else
{
	if(input[i]>(13139+offset0))
{
	if(input[i]>(13141+offset0))
{
	if(input[i]==(13143+offset0))
{
	vR[i] = 13143;
}
else
{
	vR[i] = 13142;
}

}
else
{
	if(input[i]==(13141+offset0))
{
	vR[i] = 13141;
}
else
{
	vR[i] = 13140;
}

}

}
else
{
	if(input[i]>(13137+offset0))
{
	if(input[i]==(13139+offset0))
{
	vR[i] = 13139;
}
else
{
	vR[i] = 13138;
}

}
else
{
	if(input[i]==(13137+offset0))
{
	vR[i] = 13137;
}
else
{
	vR[i] = 13136;
}

}

}

}

}
else
{
	if(input[i]>(13127+offset0))
{
	if(input[i]>(13131+offset0))
{
	if(input[i]>(13133+offset0))
{
	if(input[i]==(13135+offset0))
{
	vR[i] = 13135;
}
else
{
	vR[i] = 13134;
}

}
else
{
	if(input[i]==(13133+offset0))
{
	vR[i] = 13133;
}
else
{
	vR[i] = 13132;
}

}

}
else
{
	if(input[i]>(13129+offset0))
{
	if(input[i]==(13131+offset0))
{
	vR[i] = 13131;
}
else
{
	vR[i] = 13130;
}

}
else
{
	if(input[i]==(13129+offset0))
{
	vR[i] = 13129;
}
else
{
	vR[i] = 13128;
}

}

}

}
else
{
	if(input[i]>(13123+offset0))
{
	if(input[i]>(13125+offset0))
{
	if(input[i]==(13127+offset0))
{
	vR[i] = 13127;
}
else
{
	vR[i] = 13126;
}

}
else
{
	if(input[i]==(13125+offset0))
{
	vR[i] = 13125;
}
else
{
	vR[i] = 13124;
}

}

}
else
{
	if(input[i]>(13121+offset0))
{
	if(input[i]==(13123+offset0))
{
	vR[i] = 13123;
}
else
{
	vR[i] = 13122;
}

}
else
{
	if(input[i]==(13121+offset0))
{
	vR[i] = 13121;
}
else
{
	vR[i] = 13120;
}

}

}

}

}

}

}
else
{
	if(input[i]>(13087+offset0))
{
	if(input[i]>(13103+offset0))
{
	if(input[i]>(13111+offset0))
{
	if(input[i]>(13115+offset0))
{
	if(input[i]>(13117+offset0))
{
	if(input[i]==(13119+offset0))
{
	vR[i] = 13119;
}
else
{
	vR[i] = 13118;
}

}
else
{
	if(input[i]==(13117+offset0))
{
	vR[i] = 13117;
}
else
{
	vR[i] = 13116;
}

}

}
else
{
	if(input[i]>(13113+offset0))
{
	if(input[i]==(13115+offset0))
{
	vR[i] = 13115;
}
else
{
	vR[i] = 13114;
}

}
else
{
	if(input[i]==(13113+offset0))
{
	vR[i] = 13113;
}
else
{
	vR[i] = 13112;
}

}

}

}
else
{
	if(input[i]>(13107+offset0))
{
	if(input[i]>(13109+offset0))
{
	if(input[i]==(13111+offset0))
{
	vR[i] = 13111;
}
else
{
	vR[i] = 13110;
}

}
else
{
	if(input[i]==(13109+offset0))
{
	vR[i] = 13109;
}
else
{
	vR[i] = 13108;
}

}

}
else
{
	if(input[i]>(13105+offset0))
{
	if(input[i]==(13107+offset0))
{
	vR[i] = 13107;
}
else
{
	vR[i] = 13106;
}

}
else
{
	if(input[i]==(13105+offset0))
{
	vR[i] = 13105;
}
else
{
	vR[i] = 13104;
}

}

}

}

}
else
{
	if(input[i]>(13095+offset0))
{
	if(input[i]>(13099+offset0))
{
	if(input[i]>(13101+offset0))
{
	if(input[i]==(13103+offset0))
{
	vR[i] = 13103;
}
else
{
	vR[i] = 13102;
}

}
else
{
	if(input[i]==(13101+offset0))
{
	vR[i] = 13101;
}
else
{
	vR[i] = 13100;
}

}

}
else
{
	if(input[i]>(13097+offset0))
{
	if(input[i]==(13099+offset0))
{
	vR[i] = 13099;
}
else
{
	vR[i] = 13098;
}

}
else
{
	if(input[i]==(13097+offset0))
{
	vR[i] = 13097;
}
else
{
	vR[i] = 13096;
}

}

}

}
else
{
	if(input[i]>(13091+offset0))
{
	if(input[i]>(13093+offset0))
{
	if(input[i]==(13095+offset0))
{
	vR[i] = 13095;
}
else
{
	vR[i] = 13094;
}

}
else
{
	if(input[i]==(13093+offset0))
{
	vR[i] = 13093;
}
else
{
	vR[i] = 13092;
}

}

}
else
{
	if(input[i]>(13089+offset0))
{
	if(input[i]==(13091+offset0))
{
	vR[i] = 13091;
}
else
{
	vR[i] = 13090;
}

}
else
{
	if(input[i]==(13089+offset0))
{
	vR[i] = 13089;
}
else
{
	vR[i] = 13088;
}

}

}

}

}

}
else
{
	if(input[i]>(13071+offset0))
{
	if(input[i]>(13079+offset0))
{
	if(input[i]>(13083+offset0))
{
	if(input[i]>(13085+offset0))
{
	if(input[i]==(13087+offset0))
{
	vR[i] = 13087;
}
else
{
	vR[i] = 13086;
}

}
else
{
	if(input[i]==(13085+offset0))
{
	vR[i] = 13085;
}
else
{
	vR[i] = 13084;
}

}

}
else
{
	if(input[i]>(13081+offset0))
{
	if(input[i]==(13083+offset0))
{
	vR[i] = 13083;
}
else
{
	vR[i] = 13082;
}

}
else
{
	if(input[i]==(13081+offset0))
{
	vR[i] = 13081;
}
else
{
	vR[i] = 13080;
}

}

}

}
else
{
	if(input[i]>(13075+offset0))
{
	if(input[i]>(13077+offset0))
{
	if(input[i]==(13079+offset0))
{
	vR[i] = 13079;
}
else
{
	vR[i] = 13078;
}

}
else
{
	if(input[i]==(13077+offset0))
{
	vR[i] = 13077;
}
else
{
	vR[i] = 13076;
}

}

}
else
{
	if(input[i]>(13073+offset0))
{
	if(input[i]==(13075+offset0))
{
	vR[i] = 13075;
}
else
{
	vR[i] = 13074;
}

}
else
{
	if(input[i]==(13073+offset0))
{
	vR[i] = 13073;
}
else
{
	vR[i] = 13072;
}

}

}

}

}
else
{
	if(input[i]>(13063+offset0))
{
	if(input[i]>(13067+offset0))
{
	if(input[i]>(13069+offset0))
{
	if(input[i]==(13071+offset0))
{
	vR[i] = 13071;
}
else
{
	vR[i] = 13070;
}

}
else
{
	if(input[i]==(13069+offset0))
{
	vR[i] = 13069;
}
else
{
	vR[i] = 13068;
}

}

}
else
{
	if(input[i]>(13065+offset0))
{
	if(input[i]==(13067+offset0))
{
	vR[i] = 13067;
}
else
{
	vR[i] = 13066;
}

}
else
{
	if(input[i]==(13065+offset0))
{
	vR[i] = 13065;
}
else
{
	vR[i] = 13064;
}

}

}

}
else
{
	if(input[i]>(13059+offset0))
{
	if(input[i]>(13061+offset0))
{
	if(input[i]==(13063+offset0))
{
	vR[i] = 13063;
}
else
{
	vR[i] = 13062;
}

}
else
{
	if(input[i]==(13061+offset0))
{
	vR[i] = 13061;
}
else
{
	vR[i] = 13060;
}

}

}
else
{
	if(input[i]>(13057+offset0))
{
	if(input[i]==(13059+offset0))
{
	vR[i] = 13059;
}
else
{
	vR[i] = 13058;
}

}
else
{
	if(input[i]==(13057+offset0))
{
	vR[i] = 13057;
}
else
{
	vR[i] = 13056;
}

}

}

}

}

}

}

}

}
else
{
	if(input[i]>(12927+offset0))
{
	if(input[i]>(12991+offset0))
{
	if(input[i]>(13023+offset0))
{
	if(input[i]>(13039+offset0))
{
	if(input[i]>(13047+offset0))
{
	if(input[i]>(13051+offset0))
{
	if(input[i]>(13053+offset0))
{
	if(input[i]==(13055+offset0))
{
	vR[i] = 13055;
}
else
{
	vR[i] = 13054;
}

}
else
{
	if(input[i]==(13053+offset0))
{
	vR[i] = 13053;
}
else
{
	vR[i] = 13052;
}

}

}
else
{
	if(input[i]>(13049+offset0))
{
	if(input[i]==(13051+offset0))
{
	vR[i] = 13051;
}
else
{
	vR[i] = 13050;
}

}
else
{
	if(input[i]==(13049+offset0))
{
	vR[i] = 13049;
}
else
{
	vR[i] = 13048;
}

}

}

}
else
{
	if(input[i]>(13043+offset0))
{
	if(input[i]>(13045+offset0))
{
	if(input[i]==(13047+offset0))
{
	vR[i] = 13047;
}
else
{
	vR[i] = 13046;
}

}
else
{
	if(input[i]==(13045+offset0))
{
	vR[i] = 13045;
}
else
{
	vR[i] = 13044;
}

}

}
else
{
	if(input[i]>(13041+offset0))
{
	if(input[i]==(13043+offset0))
{
	vR[i] = 13043;
}
else
{
	vR[i] = 13042;
}

}
else
{
	if(input[i]==(13041+offset0))
{
	vR[i] = 13041;
}
else
{
	vR[i] = 13040;
}

}

}

}

}
else
{
	if(input[i]>(13031+offset0))
{
	if(input[i]>(13035+offset0))
{
	if(input[i]>(13037+offset0))
{
	if(input[i]==(13039+offset0))
{
	vR[i] = 13039;
}
else
{
	vR[i] = 13038;
}

}
else
{
	if(input[i]==(13037+offset0))
{
	vR[i] = 13037;
}
else
{
	vR[i] = 13036;
}

}

}
else
{
	if(input[i]>(13033+offset0))
{
	if(input[i]==(13035+offset0))
{
	vR[i] = 13035;
}
else
{
	vR[i] = 13034;
}

}
else
{
	if(input[i]==(13033+offset0))
{
	vR[i] = 13033;
}
else
{
	vR[i] = 13032;
}

}

}

}
else
{
	if(input[i]>(13027+offset0))
{
	if(input[i]>(13029+offset0))
{
	if(input[i]==(13031+offset0))
{
	vR[i] = 13031;
}
else
{
	vR[i] = 13030;
}

}
else
{
	if(input[i]==(13029+offset0))
{
	vR[i] = 13029;
}
else
{
	vR[i] = 13028;
}

}

}
else
{
	if(input[i]>(13025+offset0))
{
	if(input[i]==(13027+offset0))
{
	vR[i] = 13027;
}
else
{
	vR[i] = 13026;
}

}
else
{
	if(input[i]==(13025+offset0))
{
	vR[i] = 13025;
}
else
{
	vR[i] = 13024;
}

}

}

}

}

}
else
{
	if(input[i]>(13007+offset0))
{
	if(input[i]>(13015+offset0))
{
	if(input[i]>(13019+offset0))
{
	if(input[i]>(13021+offset0))
{
	if(input[i]==(13023+offset0))
{
	vR[i] = 13023;
}
else
{
	vR[i] = 13022;
}

}
else
{
	if(input[i]==(13021+offset0))
{
	vR[i] = 13021;
}
else
{
	vR[i] = 13020;
}

}

}
else
{
	if(input[i]>(13017+offset0))
{
	if(input[i]==(13019+offset0))
{
	vR[i] = 13019;
}
else
{
	vR[i] = 13018;
}

}
else
{
	if(input[i]==(13017+offset0))
{
	vR[i] = 13017;
}
else
{
	vR[i] = 13016;
}

}

}

}
else
{
	if(input[i]>(13011+offset0))
{
	if(input[i]>(13013+offset0))
{
	if(input[i]==(13015+offset0))
{
	vR[i] = 13015;
}
else
{
	vR[i] = 13014;
}

}
else
{
	if(input[i]==(13013+offset0))
{
	vR[i] = 13013;
}
else
{
	vR[i] = 13012;
}

}

}
else
{
	if(input[i]>(13009+offset0))
{
	if(input[i]==(13011+offset0))
{
	vR[i] = 13011;
}
else
{
	vR[i] = 13010;
}

}
else
{
	if(input[i]==(13009+offset0))
{
	vR[i] = 13009;
}
else
{
	vR[i] = 13008;
}

}

}

}

}
else
{
	if(input[i]>(12999+offset0))
{
	if(input[i]>(13003+offset0))
{
	if(input[i]>(13005+offset0))
{
	if(input[i]==(13007+offset0))
{
	vR[i] = 13007;
}
else
{
	vR[i] = 13006;
}

}
else
{
	if(input[i]==(13005+offset0))
{
	vR[i] = 13005;
}
else
{
	vR[i] = 13004;
}

}

}
else
{
	if(input[i]>(13001+offset0))
{
	if(input[i]==(13003+offset0))
{
	vR[i] = 13003;
}
else
{
	vR[i] = 13002;
}

}
else
{
	if(input[i]==(13001+offset0))
{
	vR[i] = 13001;
}
else
{
	vR[i] = 13000;
}

}

}

}
else
{
	if(input[i]>(12995+offset0))
{
	if(input[i]>(12997+offset0))
{
	if(input[i]==(12999+offset0))
{
	vR[i] = 12999;
}
else
{
	vR[i] = 12998;
}

}
else
{
	if(input[i]==(12997+offset0))
{
	vR[i] = 12997;
}
else
{
	vR[i] = 12996;
}

}

}
else
{
	if(input[i]>(12993+offset0))
{
	if(input[i]==(12995+offset0))
{
	vR[i] = 12995;
}
else
{
	vR[i] = 12994;
}

}
else
{
	if(input[i]==(12993+offset0))
{
	vR[i] = 12993;
}
else
{
	vR[i] = 12992;
}

}

}

}

}

}

}
else
{
	if(input[i]>(12959+offset0))
{
	if(input[i]>(12975+offset0))
{
	if(input[i]>(12983+offset0))
{
	if(input[i]>(12987+offset0))
{
	if(input[i]>(12989+offset0))
{
	if(input[i]==(12991+offset0))
{
	vR[i] = 12991;
}
else
{
	vR[i] = 12990;
}

}
else
{
	if(input[i]==(12989+offset0))
{
	vR[i] = 12989;
}
else
{
	vR[i] = 12988;
}

}

}
else
{
	if(input[i]>(12985+offset0))
{
	if(input[i]==(12987+offset0))
{
	vR[i] = 12987;
}
else
{
	vR[i] = 12986;
}

}
else
{
	if(input[i]==(12985+offset0))
{
	vR[i] = 12985;
}
else
{
	vR[i] = 12984;
}

}

}

}
else
{
	if(input[i]>(12979+offset0))
{
	if(input[i]>(12981+offset0))
{
	if(input[i]==(12983+offset0))
{
	vR[i] = 12983;
}
else
{
	vR[i] = 12982;
}

}
else
{
	if(input[i]==(12981+offset0))
{
	vR[i] = 12981;
}
else
{
	vR[i] = 12980;
}

}

}
else
{
	if(input[i]>(12977+offset0))
{
	if(input[i]==(12979+offset0))
{
	vR[i] = 12979;
}
else
{
	vR[i] = 12978;
}

}
else
{
	if(input[i]==(12977+offset0))
{
	vR[i] = 12977;
}
else
{
	vR[i] = 12976;
}

}

}

}

}
else
{
	if(input[i]>(12967+offset0))
{
	if(input[i]>(12971+offset0))
{
	if(input[i]>(12973+offset0))
{
	if(input[i]==(12975+offset0))
{
	vR[i] = 12975;
}
else
{
	vR[i] = 12974;
}

}
else
{
	if(input[i]==(12973+offset0))
{
	vR[i] = 12973;
}
else
{
	vR[i] = 12972;
}

}

}
else
{
	if(input[i]>(12969+offset0))
{
	if(input[i]==(12971+offset0))
{
	vR[i] = 12971;
}
else
{
	vR[i] = 12970;
}

}
else
{
	if(input[i]==(12969+offset0))
{
	vR[i] = 12969;
}
else
{
	vR[i] = 12968;
}

}

}

}
else
{
	if(input[i]>(12963+offset0))
{
	if(input[i]>(12965+offset0))
{
	if(input[i]==(12967+offset0))
{
	vR[i] = 12967;
}
else
{
	vR[i] = 12966;
}

}
else
{
	if(input[i]==(12965+offset0))
{
	vR[i] = 12965;
}
else
{
	vR[i] = 12964;
}

}

}
else
{
	if(input[i]>(12961+offset0))
{
	if(input[i]==(12963+offset0))
{
	vR[i] = 12963;
}
else
{
	vR[i] = 12962;
}

}
else
{
	if(input[i]==(12961+offset0))
{
	vR[i] = 12961;
}
else
{
	vR[i] = 12960;
}

}

}

}

}

}
else
{
	if(input[i]>(12943+offset0))
{
	if(input[i]>(12951+offset0))
{
	if(input[i]>(12955+offset0))
{
	if(input[i]>(12957+offset0))
{
	if(input[i]==(12959+offset0))
{
	vR[i] = 12959;
}
else
{
	vR[i] = 12958;
}

}
else
{
	if(input[i]==(12957+offset0))
{
	vR[i] = 12957;
}
else
{
	vR[i] = 12956;
}

}

}
else
{
	if(input[i]>(12953+offset0))
{
	if(input[i]==(12955+offset0))
{
	vR[i] = 12955;
}
else
{
	vR[i] = 12954;
}

}
else
{
	if(input[i]==(12953+offset0))
{
	vR[i] = 12953;
}
else
{
	vR[i] = 12952;
}

}

}

}
else
{
	if(input[i]>(12947+offset0))
{
	if(input[i]>(12949+offset0))
{
	if(input[i]==(12951+offset0))
{
	vR[i] = 12951;
}
else
{
	vR[i] = 12950;
}

}
else
{
	if(input[i]==(12949+offset0))
{
	vR[i] = 12949;
}
else
{
	vR[i] = 12948;
}

}

}
else
{
	if(input[i]>(12945+offset0))
{
	if(input[i]==(12947+offset0))
{
	vR[i] = 12947;
}
else
{
	vR[i] = 12946;
}

}
else
{
	if(input[i]==(12945+offset0))
{
	vR[i] = 12945;
}
else
{
	vR[i] = 12944;
}

}

}

}

}
else
{
	if(input[i]>(12935+offset0))
{
	if(input[i]>(12939+offset0))
{
	if(input[i]>(12941+offset0))
{
	if(input[i]==(12943+offset0))
{
	vR[i] = 12943;
}
else
{
	vR[i] = 12942;
}

}
else
{
	if(input[i]==(12941+offset0))
{
	vR[i] = 12941;
}
else
{
	vR[i] = 12940;
}

}

}
else
{
	if(input[i]>(12937+offset0))
{
	if(input[i]==(12939+offset0))
{
	vR[i] = 12939;
}
else
{
	vR[i] = 12938;
}

}
else
{
	if(input[i]==(12937+offset0))
{
	vR[i] = 12937;
}
else
{
	vR[i] = 12936;
}

}

}

}
else
{
	if(input[i]>(12931+offset0))
{
	if(input[i]>(12933+offset0))
{
	if(input[i]==(12935+offset0))
{
	vR[i] = 12935;
}
else
{
	vR[i] = 12934;
}

}
else
{
	if(input[i]==(12933+offset0))
{
	vR[i] = 12933;
}
else
{
	vR[i] = 12932;
}

}

}
else
{
	if(input[i]>(12929+offset0))
{
	if(input[i]==(12931+offset0))
{
	vR[i] = 12931;
}
else
{
	vR[i] = 12930;
}

}
else
{
	if(input[i]==(12929+offset0))
{
	vR[i] = 12929;
}
else
{
	vR[i] = 12928;
}

}

}

}

}

}

}

}
else
{
	if(input[i]>(12863+offset0))
{
	if(input[i]>(12895+offset0))
{
	if(input[i]>(12911+offset0))
{
	if(input[i]>(12919+offset0))
{
	if(input[i]>(12923+offset0))
{
	if(input[i]>(12925+offset0))
{
	if(input[i]==(12927+offset0))
{
	vR[i] = 12927;
}
else
{
	vR[i] = 12926;
}

}
else
{
	if(input[i]==(12925+offset0))
{
	vR[i] = 12925;
}
else
{
	vR[i] = 12924;
}

}

}
else
{
	if(input[i]>(12921+offset0))
{
	if(input[i]==(12923+offset0))
{
	vR[i] = 12923;
}
else
{
	vR[i] = 12922;
}

}
else
{
	if(input[i]==(12921+offset0))
{
	vR[i] = 12921;
}
else
{
	vR[i] = 12920;
}

}

}

}
else
{
	if(input[i]>(12915+offset0))
{
	if(input[i]>(12917+offset0))
{
	if(input[i]==(12919+offset0))
{
	vR[i] = 12919;
}
else
{
	vR[i] = 12918;
}

}
else
{
	if(input[i]==(12917+offset0))
{
	vR[i] = 12917;
}
else
{
	vR[i] = 12916;
}

}

}
else
{
	if(input[i]>(12913+offset0))
{
	if(input[i]==(12915+offset0))
{
	vR[i] = 12915;
}
else
{
	vR[i] = 12914;
}

}
else
{
	if(input[i]==(12913+offset0))
{
	vR[i] = 12913;
}
else
{
	vR[i] = 12912;
}

}

}

}

}
else
{
	if(input[i]>(12903+offset0))
{
	if(input[i]>(12907+offset0))
{
	if(input[i]>(12909+offset0))
{
	if(input[i]==(12911+offset0))
{
	vR[i] = 12911;
}
else
{
	vR[i] = 12910;
}

}
else
{
	if(input[i]==(12909+offset0))
{
	vR[i] = 12909;
}
else
{
	vR[i] = 12908;
}

}

}
else
{
	if(input[i]>(12905+offset0))
{
	if(input[i]==(12907+offset0))
{
	vR[i] = 12907;
}
else
{
	vR[i] = 12906;
}

}
else
{
	if(input[i]==(12905+offset0))
{
	vR[i] = 12905;
}
else
{
	vR[i] = 12904;
}

}

}

}
else
{
	if(input[i]>(12899+offset0))
{
	if(input[i]>(12901+offset0))
{
	if(input[i]==(12903+offset0))
{
	vR[i] = 12903;
}
else
{
	vR[i] = 12902;
}

}
else
{
	if(input[i]==(12901+offset0))
{
	vR[i] = 12901;
}
else
{
	vR[i] = 12900;
}

}

}
else
{
	if(input[i]>(12897+offset0))
{
	if(input[i]==(12899+offset0))
{
	vR[i] = 12899;
}
else
{
	vR[i] = 12898;
}

}
else
{
	if(input[i]==(12897+offset0))
{
	vR[i] = 12897;
}
else
{
	vR[i] = 12896;
}

}

}

}

}

}
else
{
	if(input[i]>(12879+offset0))
{
	if(input[i]>(12887+offset0))
{
	if(input[i]>(12891+offset0))
{
	if(input[i]>(12893+offset0))
{
	if(input[i]==(12895+offset0))
{
	vR[i] = 12895;
}
else
{
	vR[i] = 12894;
}

}
else
{
	if(input[i]==(12893+offset0))
{
	vR[i] = 12893;
}
else
{
	vR[i] = 12892;
}

}

}
else
{
	if(input[i]>(12889+offset0))
{
	if(input[i]==(12891+offset0))
{
	vR[i] = 12891;
}
else
{
	vR[i] = 12890;
}

}
else
{
	if(input[i]==(12889+offset0))
{
	vR[i] = 12889;
}
else
{
	vR[i] = 12888;
}

}

}

}
else
{
	if(input[i]>(12883+offset0))
{
	if(input[i]>(12885+offset0))
{
	if(input[i]==(12887+offset0))
{
	vR[i] = 12887;
}
else
{
	vR[i] = 12886;
}

}
else
{
	if(input[i]==(12885+offset0))
{
	vR[i] = 12885;
}
else
{
	vR[i] = 12884;
}

}

}
else
{
	if(input[i]>(12881+offset0))
{
	if(input[i]==(12883+offset0))
{
	vR[i] = 12883;
}
else
{
	vR[i] = 12882;
}

}
else
{
	if(input[i]==(12881+offset0))
{
	vR[i] = 12881;
}
else
{
	vR[i] = 12880;
}

}

}

}

}
else
{
	if(input[i]>(12871+offset0))
{
	if(input[i]>(12875+offset0))
{
	if(input[i]>(12877+offset0))
{
	if(input[i]==(12879+offset0))
{
	vR[i] = 12879;
}
else
{
	vR[i] = 12878;
}

}
else
{
	if(input[i]==(12877+offset0))
{
	vR[i] = 12877;
}
else
{
	vR[i] = 12876;
}

}

}
else
{
	if(input[i]>(12873+offset0))
{
	if(input[i]==(12875+offset0))
{
	vR[i] = 12875;
}
else
{
	vR[i] = 12874;
}

}
else
{
	if(input[i]==(12873+offset0))
{
	vR[i] = 12873;
}
else
{
	vR[i] = 12872;
}

}

}

}
else
{
	if(input[i]>(12867+offset0))
{
	if(input[i]>(12869+offset0))
{
	if(input[i]==(12871+offset0))
{
	vR[i] = 12871;
}
else
{
	vR[i] = 12870;
}

}
else
{
	if(input[i]==(12869+offset0))
{
	vR[i] = 12869;
}
else
{
	vR[i] = 12868;
}

}

}
else
{
	if(input[i]>(12865+offset0))
{
	if(input[i]==(12867+offset0))
{
	vR[i] = 12867;
}
else
{
	vR[i] = 12866;
}

}
else
{
	if(input[i]==(12865+offset0))
{
	vR[i] = 12865;
}
else
{
	vR[i] = 12864;
}

}

}

}

}

}

}
else
{
	if(input[i]>(12831+offset0))
{
	if(input[i]>(12847+offset0))
{
	if(input[i]>(12855+offset0))
{
	if(input[i]>(12859+offset0))
{
	if(input[i]>(12861+offset0))
{
	if(input[i]==(12863+offset0))
{
	vR[i] = 12863;
}
else
{
	vR[i] = 12862;
}

}
else
{
	if(input[i]==(12861+offset0))
{
	vR[i] = 12861;
}
else
{
	vR[i] = 12860;
}

}

}
else
{
	if(input[i]>(12857+offset0))
{
	if(input[i]==(12859+offset0))
{
	vR[i] = 12859;
}
else
{
	vR[i] = 12858;
}

}
else
{
	if(input[i]==(12857+offset0))
{
	vR[i] = 12857;
}
else
{
	vR[i] = 12856;
}

}

}

}
else
{
	if(input[i]>(12851+offset0))
{
	if(input[i]>(12853+offset0))
{
	if(input[i]==(12855+offset0))
{
	vR[i] = 12855;
}
else
{
	vR[i] = 12854;
}

}
else
{
	if(input[i]==(12853+offset0))
{
	vR[i] = 12853;
}
else
{
	vR[i] = 12852;
}

}

}
else
{
	if(input[i]>(12849+offset0))
{
	if(input[i]==(12851+offset0))
{
	vR[i] = 12851;
}
else
{
	vR[i] = 12850;
}

}
else
{
	if(input[i]==(12849+offset0))
{
	vR[i] = 12849;
}
else
{
	vR[i] = 12848;
}

}

}

}

}
else
{
	if(input[i]>(12839+offset0))
{
	if(input[i]>(12843+offset0))
{
	if(input[i]>(12845+offset0))
{
	if(input[i]==(12847+offset0))
{
	vR[i] = 12847;
}
else
{
	vR[i] = 12846;
}

}
else
{
	if(input[i]==(12845+offset0))
{
	vR[i] = 12845;
}
else
{
	vR[i] = 12844;
}

}

}
else
{
	if(input[i]>(12841+offset0))
{
	if(input[i]==(12843+offset0))
{
	vR[i] = 12843;
}
else
{
	vR[i] = 12842;
}

}
else
{
	if(input[i]==(12841+offset0))
{
	vR[i] = 12841;
}
else
{
	vR[i] = 12840;
}

}

}

}
else
{
	if(input[i]>(12835+offset0))
{
	if(input[i]>(12837+offset0))
{
	if(input[i]==(12839+offset0))
{
	vR[i] = 12839;
}
else
{
	vR[i] = 12838;
}

}
else
{
	if(input[i]==(12837+offset0))
{
	vR[i] = 12837;
}
else
{
	vR[i] = 12836;
}

}

}
else
{
	if(input[i]>(12833+offset0))
{
	if(input[i]==(12835+offset0))
{
	vR[i] = 12835;
}
else
{
	vR[i] = 12834;
}

}
else
{
	if(input[i]==(12833+offset0))
{
	vR[i] = 12833;
}
else
{
	vR[i] = 12832;
}

}

}

}

}

}
else
{
	if(input[i]>(12815+offset0))
{
	if(input[i]>(12823+offset0))
{
	if(input[i]>(12827+offset0))
{
	if(input[i]>(12829+offset0))
{
	if(input[i]==(12831+offset0))
{
	vR[i] = 12831;
}
else
{
	vR[i] = 12830;
}

}
else
{
	if(input[i]==(12829+offset0))
{
	vR[i] = 12829;
}
else
{
	vR[i] = 12828;
}

}

}
else
{
	if(input[i]>(12825+offset0))
{
	if(input[i]==(12827+offset0))
{
	vR[i] = 12827;
}
else
{
	vR[i] = 12826;
}

}
else
{
	if(input[i]==(12825+offset0))
{
	vR[i] = 12825;
}
else
{
	vR[i] = 12824;
}

}

}

}
else
{
	if(input[i]>(12819+offset0))
{
	if(input[i]>(12821+offset0))
{
	if(input[i]==(12823+offset0))
{
	vR[i] = 12823;
}
else
{
	vR[i] = 12822;
}

}
else
{
	if(input[i]==(12821+offset0))
{
	vR[i] = 12821;
}
else
{
	vR[i] = 12820;
}

}

}
else
{
	if(input[i]>(12817+offset0))
{
	if(input[i]==(12819+offset0))
{
	vR[i] = 12819;
}
else
{
	vR[i] = 12818;
}

}
else
{
	if(input[i]==(12817+offset0))
{
	vR[i] = 12817;
}
else
{
	vR[i] = 12816;
}

}

}

}

}
else
{
	if(input[i]>(12807+offset0))
{
	if(input[i]>(12811+offset0))
{
	if(input[i]>(12813+offset0))
{
	if(input[i]==(12815+offset0))
{
	vR[i] = 12815;
}
else
{
	vR[i] = 12814;
}

}
else
{
	if(input[i]==(12813+offset0))
{
	vR[i] = 12813;
}
else
{
	vR[i] = 12812;
}

}

}
else
{
	if(input[i]>(12809+offset0))
{
	if(input[i]==(12811+offset0))
{
	vR[i] = 12811;
}
else
{
	vR[i] = 12810;
}

}
else
{
	if(input[i]==(12809+offset0))
{
	vR[i] = 12809;
}
else
{
	vR[i] = 12808;
}

}

}

}
else
{
	if(input[i]>(12803+offset0))
{
	if(input[i]>(12805+offset0))
{
	if(input[i]==(12807+offset0))
{
	vR[i] = 12807;
}
else
{
	vR[i] = 12806;
}

}
else
{
	if(input[i]==(12805+offset0))
{
	vR[i] = 12805;
}
else
{
	vR[i] = 12804;
}

}

}
else
{
	if(input[i]>(12801+offset0))
{
	if(input[i]==(12803+offset0))
{
	vR[i] = 12803;
}
else
{
	vR[i] = 12802;
}

}
else
{
	if(input[i]==(12801+offset0))
{
	vR[i] = 12801;
}
else
{
	vR[i] = 12800;
}

}

}

}

}

}

}

}

}

}
else
{
	if(input[i]>(12543+offset0))
{
	if(input[i]>(12671+offset0))
{
	if(input[i]>(12735+offset0))
{
	if(input[i]>(12767+offset0))
{
	if(input[i]>(12783+offset0))
{
	if(input[i]>(12791+offset0))
{
	if(input[i]>(12795+offset0))
{
	if(input[i]>(12797+offset0))
{
	if(input[i]==(12799+offset0))
{
	vR[i] = 12799;
}
else
{
	vR[i] = 12798;
}

}
else
{
	if(input[i]==(12797+offset0))
{
	vR[i] = 12797;
}
else
{
	vR[i] = 12796;
}

}

}
else
{
	if(input[i]>(12793+offset0))
{
	if(input[i]==(12795+offset0))
{
	vR[i] = 12795;
}
else
{
	vR[i] = 12794;
}

}
else
{
	if(input[i]==(12793+offset0))
{
	vR[i] = 12793;
}
else
{
	vR[i] = 12792;
}

}

}

}
else
{
	if(input[i]>(12787+offset0))
{
	if(input[i]>(12789+offset0))
{
	if(input[i]==(12791+offset0))
{
	vR[i] = 12791;
}
else
{
	vR[i] = 12790;
}

}
else
{
	if(input[i]==(12789+offset0))
{
	vR[i] = 12789;
}
else
{
	vR[i] = 12788;
}

}

}
else
{
	if(input[i]>(12785+offset0))
{
	if(input[i]==(12787+offset0))
{
	vR[i] = 12787;
}
else
{
	vR[i] = 12786;
}

}
else
{
	if(input[i]==(12785+offset0))
{
	vR[i] = 12785;
}
else
{
	vR[i] = 12784;
}

}

}

}

}
else
{
	if(input[i]>(12775+offset0))
{
	if(input[i]>(12779+offset0))
{
	if(input[i]>(12781+offset0))
{
	if(input[i]==(12783+offset0))
{
	vR[i] = 12783;
}
else
{
	vR[i] = 12782;
}

}
else
{
	if(input[i]==(12781+offset0))
{
	vR[i] = 12781;
}
else
{
	vR[i] = 12780;
}

}

}
else
{
	if(input[i]>(12777+offset0))
{
	if(input[i]==(12779+offset0))
{
	vR[i] = 12779;
}
else
{
	vR[i] = 12778;
}

}
else
{
	if(input[i]==(12777+offset0))
{
	vR[i] = 12777;
}
else
{
	vR[i] = 12776;
}

}

}

}
else
{
	if(input[i]>(12771+offset0))
{
	if(input[i]>(12773+offset0))
{
	if(input[i]==(12775+offset0))
{
	vR[i] = 12775;
}
else
{
	vR[i] = 12774;
}

}
else
{
	if(input[i]==(12773+offset0))
{
	vR[i] = 12773;
}
else
{
	vR[i] = 12772;
}

}

}
else
{
	if(input[i]>(12769+offset0))
{
	if(input[i]==(12771+offset0))
{
	vR[i] = 12771;
}
else
{
	vR[i] = 12770;
}

}
else
{
	if(input[i]==(12769+offset0))
{
	vR[i] = 12769;
}
else
{
	vR[i] = 12768;
}

}

}

}

}

}
else
{
	if(input[i]>(12751+offset0))
{
	if(input[i]>(12759+offset0))
{
	if(input[i]>(12763+offset0))
{
	if(input[i]>(12765+offset0))
{
	if(input[i]==(12767+offset0))
{
	vR[i] = 12767;
}
else
{
	vR[i] = 12766;
}

}
else
{
	if(input[i]==(12765+offset0))
{
	vR[i] = 12765;
}
else
{
	vR[i] = 12764;
}

}

}
else
{
	if(input[i]>(12761+offset0))
{
	if(input[i]==(12763+offset0))
{
	vR[i] = 12763;
}
else
{
	vR[i] = 12762;
}

}
else
{
	if(input[i]==(12761+offset0))
{
	vR[i] = 12761;
}
else
{
	vR[i] = 12760;
}

}

}

}
else
{
	if(input[i]>(12755+offset0))
{
	if(input[i]>(12757+offset0))
{
	if(input[i]==(12759+offset0))
{
	vR[i] = 12759;
}
else
{
	vR[i] = 12758;
}

}
else
{
	if(input[i]==(12757+offset0))
{
	vR[i] = 12757;
}
else
{
	vR[i] = 12756;
}

}

}
else
{
	if(input[i]>(12753+offset0))
{
	if(input[i]==(12755+offset0))
{
	vR[i] = 12755;
}
else
{
	vR[i] = 12754;
}

}
else
{
	if(input[i]==(12753+offset0))
{
	vR[i] = 12753;
}
else
{
	vR[i] = 12752;
}

}

}

}

}
else
{
	if(input[i]>(12743+offset0))
{
	if(input[i]>(12747+offset0))
{
	if(input[i]>(12749+offset0))
{
	if(input[i]==(12751+offset0))
{
	vR[i] = 12751;
}
else
{
	vR[i] = 12750;
}

}
else
{
	if(input[i]==(12749+offset0))
{
	vR[i] = 12749;
}
else
{
	vR[i] = 12748;
}

}

}
else
{
	if(input[i]>(12745+offset0))
{
	if(input[i]==(12747+offset0))
{
	vR[i] = 12747;
}
else
{
	vR[i] = 12746;
}

}
else
{
	if(input[i]==(12745+offset0))
{
	vR[i] = 12745;
}
else
{
	vR[i] = 12744;
}

}

}

}
else
{
	if(input[i]>(12739+offset0))
{
	if(input[i]>(12741+offset0))
{
	if(input[i]==(12743+offset0))
{
	vR[i] = 12743;
}
else
{
	vR[i] = 12742;
}

}
else
{
	if(input[i]==(12741+offset0))
{
	vR[i] = 12741;
}
else
{
	vR[i] = 12740;
}

}

}
else
{
	if(input[i]>(12737+offset0))
{
	if(input[i]==(12739+offset0))
{
	vR[i] = 12739;
}
else
{
	vR[i] = 12738;
}

}
else
{
	if(input[i]==(12737+offset0))
{
	vR[i] = 12737;
}
else
{
	vR[i] = 12736;
}

}

}

}

}

}

}
else
{
	if(input[i]>(12703+offset0))
{
	if(input[i]>(12719+offset0))
{
	if(input[i]>(12727+offset0))
{
	if(input[i]>(12731+offset0))
{
	if(input[i]>(12733+offset0))
{
	if(input[i]==(12735+offset0))
{
	vR[i] = 12735;
}
else
{
	vR[i] = 12734;
}

}
else
{
	if(input[i]==(12733+offset0))
{
	vR[i] = 12733;
}
else
{
	vR[i] = 12732;
}

}

}
else
{
	if(input[i]>(12729+offset0))
{
	if(input[i]==(12731+offset0))
{
	vR[i] = 12731;
}
else
{
	vR[i] = 12730;
}

}
else
{
	if(input[i]==(12729+offset0))
{
	vR[i] = 12729;
}
else
{
	vR[i] = 12728;
}

}

}

}
else
{
	if(input[i]>(12723+offset0))
{
	if(input[i]>(12725+offset0))
{
	if(input[i]==(12727+offset0))
{
	vR[i] = 12727;
}
else
{
	vR[i] = 12726;
}

}
else
{
	if(input[i]==(12725+offset0))
{
	vR[i] = 12725;
}
else
{
	vR[i] = 12724;
}

}

}
else
{
	if(input[i]>(12721+offset0))
{
	if(input[i]==(12723+offset0))
{
	vR[i] = 12723;
}
else
{
	vR[i] = 12722;
}

}
else
{
	if(input[i]==(12721+offset0))
{
	vR[i] = 12721;
}
else
{
	vR[i] = 12720;
}

}

}

}

}
else
{
	if(input[i]>(12711+offset0))
{
	if(input[i]>(12715+offset0))
{
	if(input[i]>(12717+offset0))
{
	if(input[i]==(12719+offset0))
{
	vR[i] = 12719;
}
else
{
	vR[i] = 12718;
}

}
else
{
	if(input[i]==(12717+offset0))
{
	vR[i] = 12717;
}
else
{
	vR[i] = 12716;
}

}

}
else
{
	if(input[i]>(12713+offset0))
{
	if(input[i]==(12715+offset0))
{
	vR[i] = 12715;
}
else
{
	vR[i] = 12714;
}

}
else
{
	if(input[i]==(12713+offset0))
{
	vR[i] = 12713;
}
else
{
	vR[i] = 12712;
}

}

}

}
else
{
	if(input[i]>(12707+offset0))
{
	if(input[i]>(12709+offset0))
{
	if(input[i]==(12711+offset0))
{
	vR[i] = 12711;
}
else
{
	vR[i] = 12710;
}

}
else
{
	if(input[i]==(12709+offset0))
{
	vR[i] = 12709;
}
else
{
	vR[i] = 12708;
}

}

}
else
{
	if(input[i]>(12705+offset0))
{
	if(input[i]==(12707+offset0))
{
	vR[i] = 12707;
}
else
{
	vR[i] = 12706;
}

}
else
{
	if(input[i]==(12705+offset0))
{
	vR[i] = 12705;
}
else
{
	vR[i] = 12704;
}

}

}

}

}

}
else
{
	if(input[i]>(12687+offset0))
{
	if(input[i]>(12695+offset0))
{
	if(input[i]>(12699+offset0))
{
	if(input[i]>(12701+offset0))
{
	if(input[i]==(12703+offset0))
{
	vR[i] = 12703;
}
else
{
	vR[i] = 12702;
}

}
else
{
	if(input[i]==(12701+offset0))
{
	vR[i] = 12701;
}
else
{
	vR[i] = 12700;
}

}

}
else
{
	if(input[i]>(12697+offset0))
{
	if(input[i]==(12699+offset0))
{
	vR[i] = 12699;
}
else
{
	vR[i] = 12698;
}

}
else
{
	if(input[i]==(12697+offset0))
{
	vR[i] = 12697;
}
else
{
	vR[i] = 12696;
}

}

}

}
else
{
	if(input[i]>(12691+offset0))
{
	if(input[i]>(12693+offset0))
{
	if(input[i]==(12695+offset0))
{
	vR[i] = 12695;
}
else
{
	vR[i] = 12694;
}

}
else
{
	if(input[i]==(12693+offset0))
{
	vR[i] = 12693;
}
else
{
	vR[i] = 12692;
}

}

}
else
{
	if(input[i]>(12689+offset0))
{
	if(input[i]==(12691+offset0))
{
	vR[i] = 12691;
}
else
{
	vR[i] = 12690;
}

}
else
{
	if(input[i]==(12689+offset0))
{
	vR[i] = 12689;
}
else
{
	vR[i] = 12688;
}

}

}

}

}
else
{
	if(input[i]>(12679+offset0))
{
	if(input[i]>(12683+offset0))
{
	if(input[i]>(12685+offset0))
{
	if(input[i]==(12687+offset0))
{
	vR[i] = 12687;
}
else
{
	vR[i] = 12686;
}

}
else
{
	if(input[i]==(12685+offset0))
{
	vR[i] = 12685;
}
else
{
	vR[i] = 12684;
}

}

}
else
{
	if(input[i]>(12681+offset0))
{
	if(input[i]==(12683+offset0))
{
	vR[i] = 12683;
}
else
{
	vR[i] = 12682;
}

}
else
{
	if(input[i]==(12681+offset0))
{
	vR[i] = 12681;
}
else
{
	vR[i] = 12680;
}

}

}

}
else
{
	if(input[i]>(12675+offset0))
{
	if(input[i]>(12677+offset0))
{
	if(input[i]==(12679+offset0))
{
	vR[i] = 12679;
}
else
{
	vR[i] = 12678;
}

}
else
{
	if(input[i]==(12677+offset0))
{
	vR[i] = 12677;
}
else
{
	vR[i] = 12676;
}

}

}
else
{
	if(input[i]>(12673+offset0))
{
	if(input[i]==(12675+offset0))
{
	vR[i] = 12675;
}
else
{
	vR[i] = 12674;
}

}
else
{
	if(input[i]==(12673+offset0))
{
	vR[i] = 12673;
}
else
{
	vR[i] = 12672;
}

}

}

}

}

}

}

}
else
{
	if(input[i]>(12607+offset0))
{
	if(input[i]>(12639+offset0))
{
	if(input[i]>(12655+offset0))
{
	if(input[i]>(12663+offset0))
{
	if(input[i]>(12667+offset0))
{
	if(input[i]>(12669+offset0))
{
	if(input[i]==(12671+offset0))
{
	vR[i] = 12671;
}
else
{
	vR[i] = 12670;
}

}
else
{
	if(input[i]==(12669+offset0))
{
	vR[i] = 12669;
}
else
{
	vR[i] = 12668;
}

}

}
else
{
	if(input[i]>(12665+offset0))
{
	if(input[i]==(12667+offset0))
{
	vR[i] = 12667;
}
else
{
	vR[i] = 12666;
}

}
else
{
	if(input[i]==(12665+offset0))
{
	vR[i] = 12665;
}
else
{
	vR[i] = 12664;
}

}

}

}
else
{
	if(input[i]>(12659+offset0))
{
	if(input[i]>(12661+offset0))
{
	if(input[i]==(12663+offset0))
{
	vR[i] = 12663;
}
else
{
	vR[i] = 12662;
}

}
else
{
	if(input[i]==(12661+offset0))
{
	vR[i] = 12661;
}
else
{
	vR[i] = 12660;
}

}

}
else
{
	if(input[i]>(12657+offset0))
{
	if(input[i]==(12659+offset0))
{
	vR[i] = 12659;
}
else
{
	vR[i] = 12658;
}

}
else
{
	if(input[i]==(12657+offset0))
{
	vR[i] = 12657;
}
else
{
	vR[i] = 12656;
}

}

}

}

}
else
{
	if(input[i]>(12647+offset0))
{
	if(input[i]>(12651+offset0))
{
	if(input[i]>(12653+offset0))
{
	if(input[i]==(12655+offset0))
{
	vR[i] = 12655;
}
else
{
	vR[i] = 12654;
}

}
else
{
	if(input[i]==(12653+offset0))
{
	vR[i] = 12653;
}
else
{
	vR[i] = 12652;
}

}

}
else
{
	if(input[i]>(12649+offset0))
{
	if(input[i]==(12651+offset0))
{
	vR[i] = 12651;
}
else
{
	vR[i] = 12650;
}

}
else
{
	if(input[i]==(12649+offset0))
{
	vR[i] = 12649;
}
else
{
	vR[i] = 12648;
}

}

}

}
else
{
	if(input[i]>(12643+offset0))
{
	if(input[i]>(12645+offset0))
{
	if(input[i]==(12647+offset0))
{
	vR[i] = 12647;
}
else
{
	vR[i] = 12646;
}

}
else
{
	if(input[i]==(12645+offset0))
{
	vR[i] = 12645;
}
else
{
	vR[i] = 12644;
}

}

}
else
{
	if(input[i]>(12641+offset0))
{
	if(input[i]==(12643+offset0))
{
	vR[i] = 12643;
}
else
{
	vR[i] = 12642;
}

}
else
{
	if(input[i]==(12641+offset0))
{
	vR[i] = 12641;
}
else
{
	vR[i] = 12640;
}

}

}

}

}

}
else
{
	if(input[i]>(12623+offset0))
{
	if(input[i]>(12631+offset0))
{
	if(input[i]>(12635+offset0))
{
	if(input[i]>(12637+offset0))
{
	if(input[i]==(12639+offset0))
{
	vR[i] = 12639;
}
else
{
	vR[i] = 12638;
}

}
else
{
	if(input[i]==(12637+offset0))
{
	vR[i] = 12637;
}
else
{
	vR[i] = 12636;
}

}

}
else
{
	if(input[i]>(12633+offset0))
{
	if(input[i]==(12635+offset0))
{
	vR[i] = 12635;
}
else
{
	vR[i] = 12634;
}

}
else
{
	if(input[i]==(12633+offset0))
{
	vR[i] = 12633;
}
else
{
	vR[i] = 12632;
}

}

}

}
else
{
	if(input[i]>(12627+offset0))
{
	if(input[i]>(12629+offset0))
{
	if(input[i]==(12631+offset0))
{
	vR[i] = 12631;
}
else
{
	vR[i] = 12630;
}

}
else
{
	if(input[i]==(12629+offset0))
{
	vR[i] = 12629;
}
else
{
	vR[i] = 12628;
}

}

}
else
{
	if(input[i]>(12625+offset0))
{
	if(input[i]==(12627+offset0))
{
	vR[i] = 12627;
}
else
{
	vR[i] = 12626;
}

}
else
{
	if(input[i]==(12625+offset0))
{
	vR[i] = 12625;
}
else
{
	vR[i] = 12624;
}

}

}

}

}
else
{
	if(input[i]>(12615+offset0))
{
	if(input[i]>(12619+offset0))
{
	if(input[i]>(12621+offset0))
{
	if(input[i]==(12623+offset0))
{
	vR[i] = 12623;
}
else
{
	vR[i] = 12622;
}

}
else
{
	if(input[i]==(12621+offset0))
{
	vR[i] = 12621;
}
else
{
	vR[i] = 12620;
}

}

}
else
{
	if(input[i]>(12617+offset0))
{
	if(input[i]==(12619+offset0))
{
	vR[i] = 12619;
}
else
{
	vR[i] = 12618;
}

}
else
{
	if(input[i]==(12617+offset0))
{
	vR[i] = 12617;
}
else
{
	vR[i] = 12616;
}

}

}

}
else
{
	if(input[i]>(12611+offset0))
{
	if(input[i]>(12613+offset0))
{
	if(input[i]==(12615+offset0))
{
	vR[i] = 12615;
}
else
{
	vR[i] = 12614;
}

}
else
{
	if(input[i]==(12613+offset0))
{
	vR[i] = 12613;
}
else
{
	vR[i] = 12612;
}

}

}
else
{
	if(input[i]>(12609+offset0))
{
	if(input[i]==(12611+offset0))
{
	vR[i] = 12611;
}
else
{
	vR[i] = 12610;
}

}
else
{
	if(input[i]==(12609+offset0))
{
	vR[i] = 12609;
}
else
{
	vR[i] = 12608;
}

}

}

}

}

}

}
else
{
	if(input[i]>(12575+offset0))
{
	if(input[i]>(12591+offset0))
{
	if(input[i]>(12599+offset0))
{
	if(input[i]>(12603+offset0))
{
	if(input[i]>(12605+offset0))
{
	if(input[i]==(12607+offset0))
{
	vR[i] = 12607;
}
else
{
	vR[i] = 12606;
}

}
else
{
	if(input[i]==(12605+offset0))
{
	vR[i] = 12605;
}
else
{
	vR[i] = 12604;
}

}

}
else
{
	if(input[i]>(12601+offset0))
{
	if(input[i]==(12603+offset0))
{
	vR[i] = 12603;
}
else
{
	vR[i] = 12602;
}

}
else
{
	if(input[i]==(12601+offset0))
{
	vR[i] = 12601;
}
else
{
	vR[i] = 12600;
}

}

}

}
else
{
	if(input[i]>(12595+offset0))
{
	if(input[i]>(12597+offset0))
{
	if(input[i]==(12599+offset0))
{
	vR[i] = 12599;
}
else
{
	vR[i] = 12598;
}

}
else
{
	if(input[i]==(12597+offset0))
{
	vR[i] = 12597;
}
else
{
	vR[i] = 12596;
}

}

}
else
{
	if(input[i]>(12593+offset0))
{
	if(input[i]==(12595+offset0))
{
	vR[i] = 12595;
}
else
{
	vR[i] = 12594;
}

}
else
{
	if(input[i]==(12593+offset0))
{
	vR[i] = 12593;
}
else
{
	vR[i] = 12592;
}

}

}

}

}
else
{
	if(input[i]>(12583+offset0))
{
	if(input[i]>(12587+offset0))
{
	if(input[i]>(12589+offset0))
{
	if(input[i]==(12591+offset0))
{
	vR[i] = 12591;
}
else
{
	vR[i] = 12590;
}

}
else
{
	if(input[i]==(12589+offset0))
{
	vR[i] = 12589;
}
else
{
	vR[i] = 12588;
}

}

}
else
{
	if(input[i]>(12585+offset0))
{
	if(input[i]==(12587+offset0))
{
	vR[i] = 12587;
}
else
{
	vR[i] = 12586;
}

}
else
{
	if(input[i]==(12585+offset0))
{
	vR[i] = 12585;
}
else
{
	vR[i] = 12584;
}

}

}

}
else
{
	if(input[i]>(12579+offset0))
{
	if(input[i]>(12581+offset0))
{
	if(input[i]==(12583+offset0))
{
	vR[i] = 12583;
}
else
{
	vR[i] = 12582;
}

}
else
{
	if(input[i]==(12581+offset0))
{
	vR[i] = 12581;
}
else
{
	vR[i] = 12580;
}

}

}
else
{
	if(input[i]>(12577+offset0))
{
	if(input[i]==(12579+offset0))
{
	vR[i] = 12579;
}
else
{
	vR[i] = 12578;
}

}
else
{
	if(input[i]==(12577+offset0))
{
	vR[i] = 12577;
}
else
{
	vR[i] = 12576;
}

}

}

}

}

}
else
{
	if(input[i]>(12559+offset0))
{
	if(input[i]>(12567+offset0))
{
	if(input[i]>(12571+offset0))
{
	if(input[i]>(12573+offset0))
{
	if(input[i]==(12575+offset0))
{
	vR[i] = 12575;
}
else
{
	vR[i] = 12574;
}

}
else
{
	if(input[i]==(12573+offset0))
{
	vR[i] = 12573;
}
else
{
	vR[i] = 12572;
}

}

}
else
{
	if(input[i]>(12569+offset0))
{
	if(input[i]==(12571+offset0))
{
	vR[i] = 12571;
}
else
{
	vR[i] = 12570;
}

}
else
{
	if(input[i]==(12569+offset0))
{
	vR[i] = 12569;
}
else
{
	vR[i] = 12568;
}

}

}

}
else
{
	if(input[i]>(12563+offset0))
{
	if(input[i]>(12565+offset0))
{
	if(input[i]==(12567+offset0))
{
	vR[i] = 12567;
}
else
{
	vR[i] = 12566;
}

}
else
{
	if(input[i]==(12565+offset0))
{
	vR[i] = 12565;
}
else
{
	vR[i] = 12564;
}

}

}
else
{
	if(input[i]>(12561+offset0))
{
	if(input[i]==(12563+offset0))
{
	vR[i] = 12563;
}
else
{
	vR[i] = 12562;
}

}
else
{
	if(input[i]==(12561+offset0))
{
	vR[i] = 12561;
}
else
{
	vR[i] = 12560;
}

}

}

}

}
else
{
	if(input[i]>(12551+offset0))
{
	if(input[i]>(12555+offset0))
{
	if(input[i]>(12557+offset0))
{
	if(input[i]==(12559+offset0))
{
	vR[i] = 12559;
}
else
{
	vR[i] = 12558;
}

}
else
{
	if(input[i]==(12557+offset0))
{
	vR[i] = 12557;
}
else
{
	vR[i] = 12556;
}

}

}
else
{
	if(input[i]>(12553+offset0))
{
	if(input[i]==(12555+offset0))
{
	vR[i] = 12555;
}
else
{
	vR[i] = 12554;
}

}
else
{
	if(input[i]==(12553+offset0))
{
	vR[i] = 12553;
}
else
{
	vR[i] = 12552;
}

}

}

}
else
{
	if(input[i]>(12547+offset0))
{
	if(input[i]>(12549+offset0))
{
	if(input[i]==(12551+offset0))
{
	vR[i] = 12551;
}
else
{
	vR[i] = 12550;
}

}
else
{
	if(input[i]==(12549+offset0))
{
	vR[i] = 12549;
}
else
{
	vR[i] = 12548;
}

}

}
else
{
	if(input[i]>(12545+offset0))
{
	if(input[i]==(12547+offset0))
{
	vR[i] = 12547;
}
else
{
	vR[i] = 12546;
}

}
else
{
	if(input[i]==(12545+offset0))
{
	vR[i] = 12545;
}
else
{
	vR[i] = 12544;
}

}

}

}

}

}

}

}

}
else
{
	if(input[i]>(12415+offset0))
{
	if(input[i]>(12479+offset0))
{
	if(input[i]>(12511+offset0))
{
	if(input[i]>(12527+offset0))
{
	if(input[i]>(12535+offset0))
{
	if(input[i]>(12539+offset0))
{
	if(input[i]>(12541+offset0))
{
	if(input[i]==(12543+offset0))
{
	vR[i] = 12543;
}
else
{
	vR[i] = 12542;
}

}
else
{
	if(input[i]==(12541+offset0))
{
	vR[i] = 12541;
}
else
{
	vR[i] = 12540;
}

}

}
else
{
	if(input[i]>(12537+offset0))
{
	if(input[i]==(12539+offset0))
{
	vR[i] = 12539;
}
else
{
	vR[i] = 12538;
}

}
else
{
	if(input[i]==(12537+offset0))
{
	vR[i] = 12537;
}
else
{
	vR[i] = 12536;
}

}

}

}
else
{
	if(input[i]>(12531+offset0))
{
	if(input[i]>(12533+offset0))
{
	if(input[i]==(12535+offset0))
{
	vR[i] = 12535;
}
else
{
	vR[i] = 12534;
}

}
else
{
	if(input[i]==(12533+offset0))
{
	vR[i] = 12533;
}
else
{
	vR[i] = 12532;
}

}

}
else
{
	if(input[i]>(12529+offset0))
{
	if(input[i]==(12531+offset0))
{
	vR[i] = 12531;
}
else
{
	vR[i] = 12530;
}

}
else
{
	if(input[i]==(12529+offset0))
{
	vR[i] = 12529;
}
else
{
	vR[i] = 12528;
}

}

}

}

}
else
{
	if(input[i]>(12519+offset0))
{
	if(input[i]>(12523+offset0))
{
	if(input[i]>(12525+offset0))
{
	if(input[i]==(12527+offset0))
{
	vR[i] = 12527;
}
else
{
	vR[i] = 12526;
}

}
else
{
	if(input[i]==(12525+offset0))
{
	vR[i] = 12525;
}
else
{
	vR[i] = 12524;
}

}

}
else
{
	if(input[i]>(12521+offset0))
{
	if(input[i]==(12523+offset0))
{
	vR[i] = 12523;
}
else
{
	vR[i] = 12522;
}

}
else
{
	if(input[i]==(12521+offset0))
{
	vR[i] = 12521;
}
else
{
	vR[i] = 12520;
}

}

}

}
else
{
	if(input[i]>(12515+offset0))
{
	if(input[i]>(12517+offset0))
{
	if(input[i]==(12519+offset0))
{
	vR[i] = 12519;
}
else
{
	vR[i] = 12518;
}

}
else
{
	if(input[i]==(12517+offset0))
{
	vR[i] = 12517;
}
else
{
	vR[i] = 12516;
}

}

}
else
{
	if(input[i]>(12513+offset0))
{
	if(input[i]==(12515+offset0))
{
	vR[i] = 12515;
}
else
{
	vR[i] = 12514;
}

}
else
{
	if(input[i]==(12513+offset0))
{
	vR[i] = 12513;
}
else
{
	vR[i] = 12512;
}

}

}

}

}

}
else
{
	if(input[i]>(12495+offset0))
{
	if(input[i]>(12503+offset0))
{
	if(input[i]>(12507+offset0))
{
	if(input[i]>(12509+offset0))
{
	if(input[i]==(12511+offset0))
{
	vR[i] = 12511;
}
else
{
	vR[i] = 12510;
}

}
else
{
	if(input[i]==(12509+offset0))
{
	vR[i] = 12509;
}
else
{
	vR[i] = 12508;
}

}

}
else
{
	if(input[i]>(12505+offset0))
{
	if(input[i]==(12507+offset0))
{
	vR[i] = 12507;
}
else
{
	vR[i] = 12506;
}

}
else
{
	if(input[i]==(12505+offset0))
{
	vR[i] = 12505;
}
else
{
	vR[i] = 12504;
}

}

}

}
else
{
	if(input[i]>(12499+offset0))
{
	if(input[i]>(12501+offset0))
{
	if(input[i]==(12503+offset0))
{
	vR[i] = 12503;
}
else
{
	vR[i] = 12502;
}

}
else
{
	if(input[i]==(12501+offset0))
{
	vR[i] = 12501;
}
else
{
	vR[i] = 12500;
}

}

}
else
{
	if(input[i]>(12497+offset0))
{
	if(input[i]==(12499+offset0))
{
	vR[i] = 12499;
}
else
{
	vR[i] = 12498;
}

}
else
{
	if(input[i]==(12497+offset0))
{
	vR[i] = 12497;
}
else
{
	vR[i] = 12496;
}

}

}

}

}
else
{
	if(input[i]>(12487+offset0))
{
	if(input[i]>(12491+offset0))
{
	if(input[i]>(12493+offset0))
{
	if(input[i]==(12495+offset0))
{
	vR[i] = 12495;
}
else
{
	vR[i] = 12494;
}

}
else
{
	if(input[i]==(12493+offset0))
{
	vR[i] = 12493;
}
else
{
	vR[i] = 12492;
}

}

}
else
{
	if(input[i]>(12489+offset0))
{
	if(input[i]==(12491+offset0))
{
	vR[i] = 12491;
}
else
{
	vR[i] = 12490;
}

}
else
{
	if(input[i]==(12489+offset0))
{
	vR[i] = 12489;
}
else
{
	vR[i] = 12488;
}

}

}

}
else
{
	if(input[i]>(12483+offset0))
{
	if(input[i]>(12485+offset0))
{
	if(input[i]==(12487+offset0))
{
	vR[i] = 12487;
}
else
{
	vR[i] = 12486;
}

}
else
{
	if(input[i]==(12485+offset0))
{
	vR[i] = 12485;
}
else
{
	vR[i] = 12484;
}

}

}
else
{
	if(input[i]>(12481+offset0))
{
	if(input[i]==(12483+offset0))
{
	vR[i] = 12483;
}
else
{
	vR[i] = 12482;
}

}
else
{
	if(input[i]==(12481+offset0))
{
	vR[i] = 12481;
}
else
{
	vR[i] = 12480;
}

}

}

}

}

}

}
else
{
	if(input[i]>(12447+offset0))
{
	if(input[i]>(12463+offset0))
{
	if(input[i]>(12471+offset0))
{
	if(input[i]>(12475+offset0))
{
	if(input[i]>(12477+offset0))
{
	if(input[i]==(12479+offset0))
{
	vR[i] = 12479;
}
else
{
	vR[i] = 12478;
}

}
else
{
	if(input[i]==(12477+offset0))
{
	vR[i] = 12477;
}
else
{
	vR[i] = 12476;
}

}

}
else
{
	if(input[i]>(12473+offset0))
{
	if(input[i]==(12475+offset0))
{
	vR[i] = 12475;
}
else
{
	vR[i] = 12474;
}

}
else
{
	if(input[i]==(12473+offset0))
{
	vR[i] = 12473;
}
else
{
	vR[i] = 12472;
}

}

}

}
else
{
	if(input[i]>(12467+offset0))
{
	if(input[i]>(12469+offset0))
{
	if(input[i]==(12471+offset0))
{
	vR[i] = 12471;
}
else
{
	vR[i] = 12470;
}

}
else
{
	if(input[i]==(12469+offset0))
{
	vR[i] = 12469;
}
else
{
	vR[i] = 12468;
}

}

}
else
{
	if(input[i]>(12465+offset0))
{
	if(input[i]==(12467+offset0))
{
	vR[i] = 12467;
}
else
{
	vR[i] = 12466;
}

}
else
{
	if(input[i]==(12465+offset0))
{
	vR[i] = 12465;
}
else
{
	vR[i] = 12464;
}

}

}

}

}
else
{
	if(input[i]>(12455+offset0))
{
	if(input[i]>(12459+offset0))
{
	if(input[i]>(12461+offset0))
{
	if(input[i]==(12463+offset0))
{
	vR[i] = 12463;
}
else
{
	vR[i] = 12462;
}

}
else
{
	if(input[i]==(12461+offset0))
{
	vR[i] = 12461;
}
else
{
	vR[i] = 12460;
}

}

}
else
{
	if(input[i]>(12457+offset0))
{
	if(input[i]==(12459+offset0))
{
	vR[i] = 12459;
}
else
{
	vR[i] = 12458;
}

}
else
{
	if(input[i]==(12457+offset0))
{
	vR[i] = 12457;
}
else
{
	vR[i] = 12456;
}

}

}

}
else
{
	if(input[i]>(12451+offset0))
{
	if(input[i]>(12453+offset0))
{
	if(input[i]==(12455+offset0))
{
	vR[i] = 12455;
}
else
{
	vR[i] = 12454;
}

}
else
{
	if(input[i]==(12453+offset0))
{
	vR[i] = 12453;
}
else
{
	vR[i] = 12452;
}

}

}
else
{
	if(input[i]>(12449+offset0))
{
	if(input[i]==(12451+offset0))
{
	vR[i] = 12451;
}
else
{
	vR[i] = 12450;
}

}
else
{
	if(input[i]==(12449+offset0))
{
	vR[i] = 12449;
}
else
{
	vR[i] = 12448;
}

}

}

}

}

}
else
{
	if(input[i]>(12431+offset0))
{
	if(input[i]>(12439+offset0))
{
	if(input[i]>(12443+offset0))
{
	if(input[i]>(12445+offset0))
{
	if(input[i]==(12447+offset0))
{
	vR[i] = 12447;
}
else
{
	vR[i] = 12446;
}

}
else
{
	if(input[i]==(12445+offset0))
{
	vR[i] = 12445;
}
else
{
	vR[i] = 12444;
}

}

}
else
{
	if(input[i]>(12441+offset0))
{
	if(input[i]==(12443+offset0))
{
	vR[i] = 12443;
}
else
{
	vR[i] = 12442;
}

}
else
{
	if(input[i]==(12441+offset0))
{
	vR[i] = 12441;
}
else
{
	vR[i] = 12440;
}

}

}

}
else
{
	if(input[i]>(12435+offset0))
{
	if(input[i]>(12437+offset0))
{
	if(input[i]==(12439+offset0))
{
	vR[i] = 12439;
}
else
{
	vR[i] = 12438;
}

}
else
{
	if(input[i]==(12437+offset0))
{
	vR[i] = 12437;
}
else
{
	vR[i] = 12436;
}

}

}
else
{
	if(input[i]>(12433+offset0))
{
	if(input[i]==(12435+offset0))
{
	vR[i] = 12435;
}
else
{
	vR[i] = 12434;
}

}
else
{
	if(input[i]==(12433+offset0))
{
	vR[i] = 12433;
}
else
{
	vR[i] = 12432;
}

}

}

}

}
else
{
	if(input[i]>(12423+offset0))
{
	if(input[i]>(12427+offset0))
{
	if(input[i]>(12429+offset0))
{
	if(input[i]==(12431+offset0))
{
	vR[i] = 12431;
}
else
{
	vR[i] = 12430;
}

}
else
{
	if(input[i]==(12429+offset0))
{
	vR[i] = 12429;
}
else
{
	vR[i] = 12428;
}

}

}
else
{
	if(input[i]>(12425+offset0))
{
	if(input[i]==(12427+offset0))
{
	vR[i] = 12427;
}
else
{
	vR[i] = 12426;
}

}
else
{
	if(input[i]==(12425+offset0))
{
	vR[i] = 12425;
}
else
{
	vR[i] = 12424;
}

}

}

}
else
{
	if(input[i]>(12419+offset0))
{
	if(input[i]>(12421+offset0))
{
	if(input[i]==(12423+offset0))
{
	vR[i] = 12423;
}
else
{
	vR[i] = 12422;
}

}
else
{
	if(input[i]==(12421+offset0))
{
	vR[i] = 12421;
}
else
{
	vR[i] = 12420;
}

}

}
else
{
	if(input[i]>(12417+offset0))
{
	if(input[i]==(12419+offset0))
{
	vR[i] = 12419;
}
else
{
	vR[i] = 12418;
}

}
else
{
	if(input[i]==(12417+offset0))
{
	vR[i] = 12417;
}
else
{
	vR[i] = 12416;
}

}

}

}

}

}

}

}
else
{
	if(input[i]>(12351+offset0))
{
	if(input[i]>(12383+offset0))
{
	if(input[i]>(12399+offset0))
{
	if(input[i]>(12407+offset0))
{
	if(input[i]>(12411+offset0))
{
	if(input[i]>(12413+offset0))
{
	if(input[i]==(12415+offset0))
{
	vR[i] = 12415;
}
else
{
	vR[i] = 12414;
}

}
else
{
	if(input[i]==(12413+offset0))
{
	vR[i] = 12413;
}
else
{
	vR[i] = 12412;
}

}

}
else
{
	if(input[i]>(12409+offset0))
{
	if(input[i]==(12411+offset0))
{
	vR[i] = 12411;
}
else
{
	vR[i] = 12410;
}

}
else
{
	if(input[i]==(12409+offset0))
{
	vR[i] = 12409;
}
else
{
	vR[i] = 12408;
}

}

}

}
else
{
	if(input[i]>(12403+offset0))
{
	if(input[i]>(12405+offset0))
{
	if(input[i]==(12407+offset0))
{
	vR[i] = 12407;
}
else
{
	vR[i] = 12406;
}

}
else
{
	if(input[i]==(12405+offset0))
{
	vR[i] = 12405;
}
else
{
	vR[i] = 12404;
}

}

}
else
{
	if(input[i]>(12401+offset0))
{
	if(input[i]==(12403+offset0))
{
	vR[i] = 12403;
}
else
{
	vR[i] = 12402;
}

}
else
{
	if(input[i]==(12401+offset0))
{
	vR[i] = 12401;
}
else
{
	vR[i] = 12400;
}

}

}

}

}
else
{
	if(input[i]>(12391+offset0))
{
	if(input[i]>(12395+offset0))
{
	if(input[i]>(12397+offset0))
{
	if(input[i]==(12399+offset0))
{
	vR[i] = 12399;
}
else
{
	vR[i] = 12398;
}

}
else
{
	if(input[i]==(12397+offset0))
{
	vR[i] = 12397;
}
else
{
	vR[i] = 12396;
}

}

}
else
{
	if(input[i]>(12393+offset0))
{
	if(input[i]==(12395+offset0))
{
	vR[i] = 12395;
}
else
{
	vR[i] = 12394;
}

}
else
{
	if(input[i]==(12393+offset0))
{
	vR[i] = 12393;
}
else
{
	vR[i] = 12392;
}

}

}

}
else
{
	if(input[i]>(12387+offset0))
{
	if(input[i]>(12389+offset0))
{
	if(input[i]==(12391+offset0))
{
	vR[i] = 12391;
}
else
{
	vR[i] = 12390;
}

}
else
{
	if(input[i]==(12389+offset0))
{
	vR[i] = 12389;
}
else
{
	vR[i] = 12388;
}

}

}
else
{
	if(input[i]>(12385+offset0))
{
	if(input[i]==(12387+offset0))
{
	vR[i] = 12387;
}
else
{
	vR[i] = 12386;
}

}
else
{
	if(input[i]==(12385+offset0))
{
	vR[i] = 12385;
}
else
{
	vR[i] = 12384;
}

}

}

}

}

}
else
{
	if(input[i]>(12367+offset0))
{
	if(input[i]>(12375+offset0))
{
	if(input[i]>(12379+offset0))
{
	if(input[i]>(12381+offset0))
{
	if(input[i]==(12383+offset0))
{
	vR[i] = 12383;
}
else
{
	vR[i] = 12382;
}

}
else
{
	if(input[i]==(12381+offset0))
{
	vR[i] = 12381;
}
else
{
	vR[i] = 12380;
}

}

}
else
{
	if(input[i]>(12377+offset0))
{
	if(input[i]==(12379+offset0))
{
	vR[i] = 12379;
}
else
{
	vR[i] = 12378;
}

}
else
{
	if(input[i]==(12377+offset0))
{
	vR[i] = 12377;
}
else
{
	vR[i] = 12376;
}

}

}

}
else
{
	if(input[i]>(12371+offset0))
{
	if(input[i]>(12373+offset0))
{
	if(input[i]==(12375+offset0))
{
	vR[i] = 12375;
}
else
{
	vR[i] = 12374;
}

}
else
{
	if(input[i]==(12373+offset0))
{
	vR[i] = 12373;
}
else
{
	vR[i] = 12372;
}

}

}
else
{
	if(input[i]>(12369+offset0))
{
	if(input[i]==(12371+offset0))
{
	vR[i] = 12371;
}
else
{
	vR[i] = 12370;
}

}
else
{
	if(input[i]==(12369+offset0))
{
	vR[i] = 12369;
}
else
{
	vR[i] = 12368;
}

}

}

}

}
else
{
	if(input[i]>(12359+offset0))
{
	if(input[i]>(12363+offset0))
{
	if(input[i]>(12365+offset0))
{
	if(input[i]==(12367+offset0))
{
	vR[i] = 12367;
}
else
{
	vR[i] = 12366;
}

}
else
{
	if(input[i]==(12365+offset0))
{
	vR[i] = 12365;
}
else
{
	vR[i] = 12364;
}

}

}
else
{
	if(input[i]>(12361+offset0))
{
	if(input[i]==(12363+offset0))
{
	vR[i] = 12363;
}
else
{
	vR[i] = 12362;
}

}
else
{
	if(input[i]==(12361+offset0))
{
	vR[i] = 12361;
}
else
{
	vR[i] = 12360;
}

}

}

}
else
{
	if(input[i]>(12355+offset0))
{
	if(input[i]>(12357+offset0))
{
	if(input[i]==(12359+offset0))
{
	vR[i] = 12359;
}
else
{
	vR[i] = 12358;
}

}
else
{
	if(input[i]==(12357+offset0))
{
	vR[i] = 12357;
}
else
{
	vR[i] = 12356;
}

}

}
else
{
	if(input[i]>(12353+offset0))
{
	if(input[i]==(12355+offset0))
{
	vR[i] = 12355;
}
else
{
	vR[i] = 12354;
}

}
else
{
	if(input[i]==(12353+offset0))
{
	vR[i] = 12353;
}
else
{
	vR[i] = 12352;
}

}

}

}

}

}

}
else
{
	if(input[i]>(12319+offset0))
{
	if(input[i]>(12335+offset0))
{
	if(input[i]>(12343+offset0))
{
	if(input[i]>(12347+offset0))
{
	if(input[i]>(12349+offset0))
{
	if(input[i]==(12351+offset0))
{
	vR[i] = 12351;
}
else
{
	vR[i] = 12350;
}

}
else
{
	if(input[i]==(12349+offset0))
{
	vR[i] = 12349;
}
else
{
	vR[i] = 12348;
}

}

}
else
{
	if(input[i]>(12345+offset0))
{
	if(input[i]==(12347+offset0))
{
	vR[i] = 12347;
}
else
{
	vR[i] = 12346;
}

}
else
{
	if(input[i]==(12345+offset0))
{
	vR[i] = 12345;
}
else
{
	vR[i] = 12344;
}

}

}

}
else
{
	if(input[i]>(12339+offset0))
{
	if(input[i]>(12341+offset0))
{
	if(input[i]==(12343+offset0))
{
	vR[i] = 12343;
}
else
{
	vR[i] = 12342;
}

}
else
{
	if(input[i]==(12341+offset0))
{
	vR[i] = 12341;
}
else
{
	vR[i] = 12340;
}

}

}
else
{
	if(input[i]>(12337+offset0))
{
	if(input[i]==(12339+offset0))
{
	vR[i] = 12339;
}
else
{
	vR[i] = 12338;
}

}
else
{
	if(input[i]==(12337+offset0))
{
	vR[i] = 12337;
}
else
{
	vR[i] = 12336;
}

}

}

}

}
else
{
	if(input[i]>(12327+offset0))
{
	if(input[i]>(12331+offset0))
{
	if(input[i]>(12333+offset0))
{
	if(input[i]==(12335+offset0))
{
	vR[i] = 12335;
}
else
{
	vR[i] = 12334;
}

}
else
{
	if(input[i]==(12333+offset0))
{
	vR[i] = 12333;
}
else
{
	vR[i] = 12332;
}

}

}
else
{
	if(input[i]>(12329+offset0))
{
	if(input[i]==(12331+offset0))
{
	vR[i] = 12331;
}
else
{
	vR[i] = 12330;
}

}
else
{
	if(input[i]==(12329+offset0))
{
	vR[i] = 12329;
}
else
{
	vR[i] = 12328;
}

}

}

}
else
{
	if(input[i]>(12323+offset0))
{
	if(input[i]>(12325+offset0))
{
	if(input[i]==(12327+offset0))
{
	vR[i] = 12327;
}
else
{
	vR[i] = 12326;
}

}
else
{
	if(input[i]==(12325+offset0))
{
	vR[i] = 12325;
}
else
{
	vR[i] = 12324;
}

}

}
else
{
	if(input[i]>(12321+offset0))
{
	if(input[i]==(12323+offset0))
{
	vR[i] = 12323;
}
else
{
	vR[i] = 12322;
}

}
else
{
	if(input[i]==(12321+offset0))
{
	vR[i] = 12321;
}
else
{
	vR[i] = 12320;
}

}

}

}

}

}
else
{
	if(input[i]>(12303+offset0))
{
	if(input[i]>(12311+offset0))
{
	if(input[i]>(12315+offset0))
{
	if(input[i]>(12317+offset0))
{
	if(input[i]==(12319+offset0))
{
	vR[i] = 12319;
}
else
{
	vR[i] = 12318;
}

}
else
{
	if(input[i]==(12317+offset0))
{
	vR[i] = 12317;
}
else
{
	vR[i] = 12316;
}

}

}
else
{
	if(input[i]>(12313+offset0))
{
	if(input[i]==(12315+offset0))
{
	vR[i] = 12315;
}
else
{
	vR[i] = 12314;
}

}
else
{
	if(input[i]==(12313+offset0))
{
	vR[i] = 12313;
}
else
{
	vR[i] = 12312;
}

}

}

}
else
{
	if(input[i]>(12307+offset0))
{
	if(input[i]>(12309+offset0))
{
	if(input[i]==(12311+offset0))
{
	vR[i] = 12311;
}
else
{
	vR[i] = 12310;
}

}
else
{
	if(input[i]==(12309+offset0))
{
	vR[i] = 12309;
}
else
{
	vR[i] = 12308;
}

}

}
else
{
	if(input[i]>(12305+offset0))
{
	if(input[i]==(12307+offset0))
{
	vR[i] = 12307;
}
else
{
	vR[i] = 12306;
}

}
else
{
	if(input[i]==(12305+offset0))
{
	vR[i] = 12305;
}
else
{
	vR[i] = 12304;
}

}

}

}

}
else
{
	if(input[i]>(12295+offset0))
{
	if(input[i]>(12299+offset0))
{
	if(input[i]>(12301+offset0))
{
	if(input[i]==(12303+offset0))
{
	vR[i] = 12303;
}
else
{
	vR[i] = 12302;
}

}
else
{
	if(input[i]==(12301+offset0))
{
	vR[i] = 12301;
}
else
{
	vR[i] = 12300;
}

}

}
else
{
	if(input[i]>(12297+offset0))
{
	if(input[i]==(12299+offset0))
{
	vR[i] = 12299;
}
else
{
	vR[i] = 12298;
}

}
else
{
	if(input[i]==(12297+offset0))
{
	vR[i] = 12297;
}
else
{
	vR[i] = 12296;
}

}

}

}
else
{
	if(input[i]>(12291+offset0))
{
	if(input[i]>(12293+offset0))
{
	if(input[i]==(12295+offset0))
{
	vR[i] = 12295;
}
else
{
	vR[i] = 12294;
}

}
else
{
	if(input[i]==(12293+offset0))
{
	vR[i] = 12293;
}
else
{
	vR[i] = 12292;
}

}

}
else
{
	if(input[i]>(12289+offset0))
{
	if(input[i]==(12291+offset0))
{
	vR[i] = 12291;
}
else
{
	vR[i] = 12290;
}

}
else
{
	if(input[i]==(12289+offset0))
{
	vR[i] = 12289;
}
else
{
	vR[i] = 12288;
}

}

}

}

}

}

}

}

}

}

}

}

}
else
{
	if(input[i]>(10239+offset0))
{
	if(input[i]>(11263+offset0))
{
	if(input[i]>(11775+offset0))
{
	if(input[i]>(12031+offset0))
{
	if(input[i]>(12159+offset0))
{
	if(input[i]>(12223+offset0))
{
	if(input[i]>(12255+offset0))
{
	if(input[i]>(12271+offset0))
{
	if(input[i]>(12279+offset0))
{
	if(input[i]>(12283+offset0))
{
	if(input[i]>(12285+offset0))
{
	if(input[i]==(12287+offset0))
{
	vR[i] = 12287;
}
else
{
	vR[i] = 12286;
}

}
else
{
	if(input[i]==(12285+offset0))
{
	vR[i] = 12285;
}
else
{
	vR[i] = 12284;
}

}

}
else
{
	if(input[i]>(12281+offset0))
{
	if(input[i]==(12283+offset0))
{
	vR[i] = 12283;
}
else
{
	vR[i] = 12282;
}

}
else
{
	if(input[i]==(12281+offset0))
{
	vR[i] = 12281;
}
else
{
	vR[i] = 12280;
}

}

}

}
else
{
	if(input[i]>(12275+offset0))
{
	if(input[i]>(12277+offset0))
{
	if(input[i]==(12279+offset0))
{
	vR[i] = 12279;
}
else
{
	vR[i] = 12278;
}

}
else
{
	if(input[i]==(12277+offset0))
{
	vR[i] = 12277;
}
else
{
	vR[i] = 12276;
}

}

}
else
{
	if(input[i]>(12273+offset0))
{
	if(input[i]==(12275+offset0))
{
	vR[i] = 12275;
}
else
{
	vR[i] = 12274;
}

}
else
{
	if(input[i]==(12273+offset0))
{
	vR[i] = 12273;
}
else
{
	vR[i] = 12272;
}

}

}

}

}
else
{
	if(input[i]>(12263+offset0))
{
	if(input[i]>(12267+offset0))
{
	if(input[i]>(12269+offset0))
{
	if(input[i]==(12271+offset0))
{
	vR[i] = 12271;
}
else
{
	vR[i] = 12270;
}

}
else
{
	if(input[i]==(12269+offset0))
{
	vR[i] = 12269;
}
else
{
	vR[i] = 12268;
}

}

}
else
{
	if(input[i]>(12265+offset0))
{
	if(input[i]==(12267+offset0))
{
	vR[i] = 12267;
}
else
{
	vR[i] = 12266;
}

}
else
{
	if(input[i]==(12265+offset0))
{
	vR[i] = 12265;
}
else
{
	vR[i] = 12264;
}

}

}

}
else
{
	if(input[i]>(12259+offset0))
{
	if(input[i]>(12261+offset0))
{
	if(input[i]==(12263+offset0))
{
	vR[i] = 12263;
}
else
{
	vR[i] = 12262;
}

}
else
{
	if(input[i]==(12261+offset0))
{
	vR[i] = 12261;
}
else
{
	vR[i] = 12260;
}

}

}
else
{
	if(input[i]>(12257+offset0))
{
	if(input[i]==(12259+offset0))
{
	vR[i] = 12259;
}
else
{
	vR[i] = 12258;
}

}
else
{
	if(input[i]==(12257+offset0))
{
	vR[i] = 12257;
}
else
{
	vR[i] = 12256;
}

}

}

}

}

}
else
{
	if(input[i]>(12239+offset0))
{
	if(input[i]>(12247+offset0))
{
	if(input[i]>(12251+offset0))
{
	if(input[i]>(12253+offset0))
{
	if(input[i]==(12255+offset0))
{
	vR[i] = 12255;
}
else
{
	vR[i] = 12254;
}

}
else
{
	if(input[i]==(12253+offset0))
{
	vR[i] = 12253;
}
else
{
	vR[i] = 12252;
}

}

}
else
{
	if(input[i]>(12249+offset0))
{
	if(input[i]==(12251+offset0))
{
	vR[i] = 12251;
}
else
{
	vR[i] = 12250;
}

}
else
{
	if(input[i]==(12249+offset0))
{
	vR[i] = 12249;
}
else
{
	vR[i] = 12248;
}

}

}

}
else
{
	if(input[i]>(12243+offset0))
{
	if(input[i]>(12245+offset0))
{
	if(input[i]==(12247+offset0))
{
	vR[i] = 12247;
}
else
{
	vR[i] = 12246;
}

}
else
{
	if(input[i]==(12245+offset0))
{
	vR[i] = 12245;
}
else
{
	vR[i] = 12244;
}

}

}
else
{
	if(input[i]>(12241+offset0))
{
	if(input[i]==(12243+offset0))
{
	vR[i] = 12243;
}
else
{
	vR[i] = 12242;
}

}
else
{
	if(input[i]==(12241+offset0))
{
	vR[i] = 12241;
}
else
{
	vR[i] = 12240;
}

}

}

}

}
else
{
	if(input[i]>(12231+offset0))
{
	if(input[i]>(12235+offset0))
{
	if(input[i]>(12237+offset0))
{
	if(input[i]==(12239+offset0))
{
	vR[i] = 12239;
}
else
{
	vR[i] = 12238;
}

}
else
{
	if(input[i]==(12237+offset0))
{
	vR[i] = 12237;
}
else
{
	vR[i] = 12236;
}

}

}
else
{
	if(input[i]>(12233+offset0))
{
	if(input[i]==(12235+offset0))
{
	vR[i] = 12235;
}
else
{
	vR[i] = 12234;
}

}
else
{
	if(input[i]==(12233+offset0))
{
	vR[i] = 12233;
}
else
{
	vR[i] = 12232;
}

}

}

}
else
{
	if(input[i]>(12227+offset0))
{
	if(input[i]>(12229+offset0))
{
	if(input[i]==(12231+offset0))
{
	vR[i] = 12231;
}
else
{
	vR[i] = 12230;
}

}
else
{
	if(input[i]==(12229+offset0))
{
	vR[i] = 12229;
}
else
{
	vR[i] = 12228;
}

}

}
else
{
	if(input[i]>(12225+offset0))
{
	if(input[i]==(12227+offset0))
{
	vR[i] = 12227;
}
else
{
	vR[i] = 12226;
}

}
else
{
	if(input[i]==(12225+offset0))
{
	vR[i] = 12225;
}
else
{
	vR[i] = 12224;
}

}

}

}

}

}

}
else
{
	if(input[i]>(12191+offset0))
{
	if(input[i]>(12207+offset0))
{
	if(input[i]>(12215+offset0))
{
	if(input[i]>(12219+offset0))
{
	if(input[i]>(12221+offset0))
{
	if(input[i]==(12223+offset0))
{
	vR[i] = 12223;
}
else
{
	vR[i] = 12222;
}

}
else
{
	if(input[i]==(12221+offset0))
{
	vR[i] = 12221;
}
else
{
	vR[i] = 12220;
}

}

}
else
{
	if(input[i]>(12217+offset0))
{
	if(input[i]==(12219+offset0))
{
	vR[i] = 12219;
}
else
{
	vR[i] = 12218;
}

}
else
{
	if(input[i]==(12217+offset0))
{
	vR[i] = 12217;
}
else
{
	vR[i] = 12216;
}

}

}

}
else
{
	if(input[i]>(12211+offset0))
{
	if(input[i]>(12213+offset0))
{
	if(input[i]==(12215+offset0))
{
	vR[i] = 12215;
}
else
{
	vR[i] = 12214;
}

}
else
{
	if(input[i]==(12213+offset0))
{
	vR[i] = 12213;
}
else
{
	vR[i] = 12212;
}

}

}
else
{
	if(input[i]>(12209+offset0))
{
	if(input[i]==(12211+offset0))
{
	vR[i] = 12211;
}
else
{
	vR[i] = 12210;
}

}
else
{
	if(input[i]==(12209+offset0))
{
	vR[i] = 12209;
}
else
{
	vR[i] = 12208;
}

}

}

}

}
else
{
	if(input[i]>(12199+offset0))
{
	if(input[i]>(12203+offset0))
{
	if(input[i]>(12205+offset0))
{
	if(input[i]==(12207+offset0))
{
	vR[i] = 12207;
}
else
{
	vR[i] = 12206;
}

}
else
{
	if(input[i]==(12205+offset0))
{
	vR[i] = 12205;
}
else
{
	vR[i] = 12204;
}

}

}
else
{
	if(input[i]>(12201+offset0))
{
	if(input[i]==(12203+offset0))
{
	vR[i] = 12203;
}
else
{
	vR[i] = 12202;
}

}
else
{
	if(input[i]==(12201+offset0))
{
	vR[i] = 12201;
}
else
{
	vR[i] = 12200;
}

}

}

}
else
{
	if(input[i]>(12195+offset0))
{
	if(input[i]>(12197+offset0))
{
	if(input[i]==(12199+offset0))
{
	vR[i] = 12199;
}
else
{
	vR[i] = 12198;
}

}
else
{
	if(input[i]==(12197+offset0))
{
	vR[i] = 12197;
}
else
{
	vR[i] = 12196;
}

}

}
else
{
	if(input[i]>(12193+offset0))
{
	if(input[i]==(12195+offset0))
{
	vR[i] = 12195;
}
else
{
	vR[i] = 12194;
}

}
else
{
	if(input[i]==(12193+offset0))
{
	vR[i] = 12193;
}
else
{
	vR[i] = 12192;
}

}

}

}

}

}
else
{
	if(input[i]>(12175+offset0))
{
	if(input[i]>(12183+offset0))
{
	if(input[i]>(12187+offset0))
{
	if(input[i]>(12189+offset0))
{
	if(input[i]==(12191+offset0))
{
	vR[i] = 12191;
}
else
{
	vR[i] = 12190;
}

}
else
{
	if(input[i]==(12189+offset0))
{
	vR[i] = 12189;
}
else
{
	vR[i] = 12188;
}

}

}
else
{
	if(input[i]>(12185+offset0))
{
	if(input[i]==(12187+offset0))
{
	vR[i] = 12187;
}
else
{
	vR[i] = 12186;
}

}
else
{
	if(input[i]==(12185+offset0))
{
	vR[i] = 12185;
}
else
{
	vR[i] = 12184;
}

}

}

}
else
{
	if(input[i]>(12179+offset0))
{
	if(input[i]>(12181+offset0))
{
	if(input[i]==(12183+offset0))
{
	vR[i] = 12183;
}
else
{
	vR[i] = 12182;
}

}
else
{
	if(input[i]==(12181+offset0))
{
	vR[i] = 12181;
}
else
{
	vR[i] = 12180;
}

}

}
else
{
	if(input[i]>(12177+offset0))
{
	if(input[i]==(12179+offset0))
{
	vR[i] = 12179;
}
else
{
	vR[i] = 12178;
}

}
else
{
	if(input[i]==(12177+offset0))
{
	vR[i] = 12177;
}
else
{
	vR[i] = 12176;
}

}

}

}

}
else
{
	if(input[i]>(12167+offset0))
{
	if(input[i]>(12171+offset0))
{
	if(input[i]>(12173+offset0))
{
	if(input[i]==(12175+offset0))
{
	vR[i] = 12175;
}
else
{
	vR[i] = 12174;
}

}
else
{
	if(input[i]==(12173+offset0))
{
	vR[i] = 12173;
}
else
{
	vR[i] = 12172;
}

}

}
else
{
	if(input[i]>(12169+offset0))
{
	if(input[i]==(12171+offset0))
{
	vR[i] = 12171;
}
else
{
	vR[i] = 12170;
}

}
else
{
	if(input[i]==(12169+offset0))
{
	vR[i] = 12169;
}
else
{
	vR[i] = 12168;
}

}

}

}
else
{
	if(input[i]>(12163+offset0))
{
	if(input[i]>(12165+offset0))
{
	if(input[i]==(12167+offset0))
{
	vR[i] = 12167;
}
else
{
	vR[i] = 12166;
}

}
else
{
	if(input[i]==(12165+offset0))
{
	vR[i] = 12165;
}
else
{
	vR[i] = 12164;
}

}

}
else
{
	if(input[i]>(12161+offset0))
{
	if(input[i]==(12163+offset0))
{
	vR[i] = 12163;
}
else
{
	vR[i] = 12162;
}

}
else
{
	if(input[i]==(12161+offset0))
{
	vR[i] = 12161;
}
else
{
	vR[i] = 12160;
}

}

}

}

}

}

}

}
else
{
	if(input[i]>(12095+offset0))
{
	if(input[i]>(12127+offset0))
{
	if(input[i]>(12143+offset0))
{
	if(input[i]>(12151+offset0))
{
	if(input[i]>(12155+offset0))
{
	if(input[i]>(12157+offset0))
{
	if(input[i]==(12159+offset0))
{
	vR[i] = 12159;
}
else
{
	vR[i] = 12158;
}

}
else
{
	if(input[i]==(12157+offset0))
{
	vR[i] = 12157;
}
else
{
	vR[i] = 12156;
}

}

}
else
{
	if(input[i]>(12153+offset0))
{
	if(input[i]==(12155+offset0))
{
	vR[i] = 12155;
}
else
{
	vR[i] = 12154;
}

}
else
{
	if(input[i]==(12153+offset0))
{
	vR[i] = 12153;
}
else
{
	vR[i] = 12152;
}

}

}

}
else
{
	if(input[i]>(12147+offset0))
{
	if(input[i]>(12149+offset0))
{
	if(input[i]==(12151+offset0))
{
	vR[i] = 12151;
}
else
{
	vR[i] = 12150;
}

}
else
{
	if(input[i]==(12149+offset0))
{
	vR[i] = 12149;
}
else
{
	vR[i] = 12148;
}

}

}
else
{
	if(input[i]>(12145+offset0))
{
	if(input[i]==(12147+offset0))
{
	vR[i] = 12147;
}
else
{
	vR[i] = 12146;
}

}
else
{
	if(input[i]==(12145+offset0))
{
	vR[i] = 12145;
}
else
{
	vR[i] = 12144;
}

}

}

}

}
else
{
	if(input[i]>(12135+offset0))
{
	if(input[i]>(12139+offset0))
{
	if(input[i]>(12141+offset0))
{
	if(input[i]==(12143+offset0))
{
	vR[i] = 12143;
}
else
{
	vR[i] = 12142;
}

}
else
{
	if(input[i]==(12141+offset0))
{
	vR[i] = 12141;
}
else
{
	vR[i] = 12140;
}

}

}
else
{
	if(input[i]>(12137+offset0))
{
	if(input[i]==(12139+offset0))
{
	vR[i] = 12139;
}
else
{
	vR[i] = 12138;
}

}
else
{
	if(input[i]==(12137+offset0))
{
	vR[i] = 12137;
}
else
{
	vR[i] = 12136;
}

}

}

}
else
{
	if(input[i]>(12131+offset0))
{
	if(input[i]>(12133+offset0))
{
	if(input[i]==(12135+offset0))
{
	vR[i] = 12135;
}
else
{
	vR[i] = 12134;
}

}
else
{
	if(input[i]==(12133+offset0))
{
	vR[i] = 12133;
}
else
{
	vR[i] = 12132;
}

}

}
else
{
	if(input[i]>(12129+offset0))
{
	if(input[i]==(12131+offset0))
{
	vR[i] = 12131;
}
else
{
	vR[i] = 12130;
}

}
else
{
	if(input[i]==(12129+offset0))
{
	vR[i] = 12129;
}
else
{
	vR[i] = 12128;
}

}

}

}

}

}
else
{
	if(input[i]>(12111+offset0))
{
	if(input[i]>(12119+offset0))
{
	if(input[i]>(12123+offset0))
{
	if(input[i]>(12125+offset0))
{
	if(input[i]==(12127+offset0))
{
	vR[i] = 12127;
}
else
{
	vR[i] = 12126;
}

}
else
{
	if(input[i]==(12125+offset0))
{
	vR[i] = 12125;
}
else
{
	vR[i] = 12124;
}

}

}
else
{
	if(input[i]>(12121+offset0))
{
	if(input[i]==(12123+offset0))
{
	vR[i] = 12123;
}
else
{
	vR[i] = 12122;
}

}
else
{
	if(input[i]==(12121+offset0))
{
	vR[i] = 12121;
}
else
{
	vR[i] = 12120;
}

}

}

}
else
{
	if(input[i]>(12115+offset0))
{
	if(input[i]>(12117+offset0))
{
	if(input[i]==(12119+offset0))
{
	vR[i] = 12119;
}
else
{
	vR[i] = 12118;
}

}
else
{
	if(input[i]==(12117+offset0))
{
	vR[i] = 12117;
}
else
{
	vR[i] = 12116;
}

}

}
else
{
	if(input[i]>(12113+offset0))
{
	if(input[i]==(12115+offset0))
{
	vR[i] = 12115;
}
else
{
	vR[i] = 12114;
}

}
else
{
	if(input[i]==(12113+offset0))
{
	vR[i] = 12113;
}
else
{
	vR[i] = 12112;
}

}

}

}

}
else
{
	if(input[i]>(12103+offset0))
{
	if(input[i]>(12107+offset0))
{
	if(input[i]>(12109+offset0))
{
	if(input[i]==(12111+offset0))
{
	vR[i] = 12111;
}
else
{
	vR[i] = 12110;
}

}
else
{
	if(input[i]==(12109+offset0))
{
	vR[i] = 12109;
}
else
{
	vR[i] = 12108;
}

}

}
else
{
	if(input[i]>(12105+offset0))
{
	if(input[i]==(12107+offset0))
{
	vR[i] = 12107;
}
else
{
	vR[i] = 12106;
}

}
else
{
	if(input[i]==(12105+offset0))
{
	vR[i] = 12105;
}
else
{
	vR[i] = 12104;
}

}

}

}
else
{
	if(input[i]>(12099+offset0))
{
	if(input[i]>(12101+offset0))
{
	if(input[i]==(12103+offset0))
{
	vR[i] = 12103;
}
else
{
	vR[i] = 12102;
}

}
else
{
	if(input[i]==(12101+offset0))
{
	vR[i] = 12101;
}
else
{
	vR[i] = 12100;
}

}

}
else
{
	if(input[i]>(12097+offset0))
{
	if(input[i]==(12099+offset0))
{
	vR[i] = 12099;
}
else
{
	vR[i] = 12098;
}

}
else
{
	if(input[i]==(12097+offset0))
{
	vR[i] = 12097;
}
else
{
	vR[i] = 12096;
}

}

}

}

}

}

}
else
{
	if(input[i]>(12063+offset0))
{
	if(input[i]>(12079+offset0))
{
	if(input[i]>(12087+offset0))
{
	if(input[i]>(12091+offset0))
{
	if(input[i]>(12093+offset0))
{
	if(input[i]==(12095+offset0))
{
	vR[i] = 12095;
}
else
{
	vR[i] = 12094;
}

}
else
{
	if(input[i]==(12093+offset0))
{
	vR[i] = 12093;
}
else
{
	vR[i] = 12092;
}

}

}
else
{
	if(input[i]>(12089+offset0))
{
	if(input[i]==(12091+offset0))
{
	vR[i] = 12091;
}
else
{
	vR[i] = 12090;
}

}
else
{
	if(input[i]==(12089+offset0))
{
	vR[i] = 12089;
}
else
{
	vR[i] = 12088;
}

}

}

}
else
{
	if(input[i]>(12083+offset0))
{
	if(input[i]>(12085+offset0))
{
	if(input[i]==(12087+offset0))
{
	vR[i] = 12087;
}
else
{
	vR[i] = 12086;
}

}
else
{
	if(input[i]==(12085+offset0))
{
	vR[i] = 12085;
}
else
{
	vR[i] = 12084;
}

}

}
else
{
	if(input[i]>(12081+offset0))
{
	if(input[i]==(12083+offset0))
{
	vR[i] = 12083;
}
else
{
	vR[i] = 12082;
}

}
else
{
	if(input[i]==(12081+offset0))
{
	vR[i] = 12081;
}
else
{
	vR[i] = 12080;
}

}

}

}

}
else
{
	if(input[i]>(12071+offset0))
{
	if(input[i]>(12075+offset0))
{
	if(input[i]>(12077+offset0))
{
	if(input[i]==(12079+offset0))
{
	vR[i] = 12079;
}
else
{
	vR[i] = 12078;
}

}
else
{
	if(input[i]==(12077+offset0))
{
	vR[i] = 12077;
}
else
{
	vR[i] = 12076;
}

}

}
else
{
	if(input[i]>(12073+offset0))
{
	if(input[i]==(12075+offset0))
{
	vR[i] = 12075;
}
else
{
	vR[i] = 12074;
}

}
else
{
	if(input[i]==(12073+offset0))
{
	vR[i] = 12073;
}
else
{
	vR[i] = 12072;
}

}

}

}
else
{
	if(input[i]>(12067+offset0))
{
	if(input[i]>(12069+offset0))
{
	if(input[i]==(12071+offset0))
{
	vR[i] = 12071;
}
else
{
	vR[i] = 12070;
}

}
else
{
	if(input[i]==(12069+offset0))
{
	vR[i] = 12069;
}
else
{
	vR[i] = 12068;
}

}

}
else
{
	if(input[i]>(12065+offset0))
{
	if(input[i]==(12067+offset0))
{
	vR[i] = 12067;
}
else
{
	vR[i] = 12066;
}

}
else
{
	if(input[i]==(12065+offset0))
{
	vR[i] = 12065;
}
else
{
	vR[i] = 12064;
}

}

}

}

}

}
else
{
	if(input[i]>(12047+offset0))
{
	if(input[i]>(12055+offset0))
{
	if(input[i]>(12059+offset0))
{
	if(input[i]>(12061+offset0))
{
	if(input[i]==(12063+offset0))
{
	vR[i] = 12063;
}
else
{
	vR[i] = 12062;
}

}
else
{
	if(input[i]==(12061+offset0))
{
	vR[i] = 12061;
}
else
{
	vR[i] = 12060;
}

}

}
else
{
	if(input[i]>(12057+offset0))
{
	if(input[i]==(12059+offset0))
{
	vR[i] = 12059;
}
else
{
	vR[i] = 12058;
}

}
else
{
	if(input[i]==(12057+offset0))
{
	vR[i] = 12057;
}
else
{
	vR[i] = 12056;
}

}

}

}
else
{
	if(input[i]>(12051+offset0))
{
	if(input[i]>(12053+offset0))
{
	if(input[i]==(12055+offset0))
{
	vR[i] = 12055;
}
else
{
	vR[i] = 12054;
}

}
else
{
	if(input[i]==(12053+offset0))
{
	vR[i] = 12053;
}
else
{
	vR[i] = 12052;
}

}

}
else
{
	if(input[i]>(12049+offset0))
{
	if(input[i]==(12051+offset0))
{
	vR[i] = 12051;
}
else
{
	vR[i] = 12050;
}

}
else
{
	if(input[i]==(12049+offset0))
{
	vR[i] = 12049;
}
else
{
	vR[i] = 12048;
}

}

}

}

}
else
{
	if(input[i]>(12039+offset0))
{
	if(input[i]>(12043+offset0))
{
	if(input[i]>(12045+offset0))
{
	if(input[i]==(12047+offset0))
{
	vR[i] = 12047;
}
else
{
	vR[i] = 12046;
}

}
else
{
	if(input[i]==(12045+offset0))
{
	vR[i] = 12045;
}
else
{
	vR[i] = 12044;
}

}

}
else
{
	if(input[i]>(12041+offset0))
{
	if(input[i]==(12043+offset0))
{
	vR[i] = 12043;
}
else
{
	vR[i] = 12042;
}

}
else
{
	if(input[i]==(12041+offset0))
{
	vR[i] = 12041;
}
else
{
	vR[i] = 12040;
}

}

}

}
else
{
	if(input[i]>(12035+offset0))
{
	if(input[i]>(12037+offset0))
{
	if(input[i]==(12039+offset0))
{
	vR[i] = 12039;
}
else
{
	vR[i] = 12038;
}

}
else
{
	if(input[i]==(12037+offset0))
{
	vR[i] = 12037;
}
else
{
	vR[i] = 12036;
}

}

}
else
{
	if(input[i]>(12033+offset0))
{
	if(input[i]==(12035+offset0))
{
	vR[i] = 12035;
}
else
{
	vR[i] = 12034;
}

}
else
{
	if(input[i]==(12033+offset0))
{
	vR[i] = 12033;
}
else
{
	vR[i] = 12032;
}

}

}

}

}

}

}

}

}
else
{
	if(input[i]>(11903+offset0))
{
	if(input[i]>(11967+offset0))
{
	if(input[i]>(11999+offset0))
{
	if(input[i]>(12015+offset0))
{
	if(input[i]>(12023+offset0))
{
	if(input[i]>(12027+offset0))
{
	if(input[i]>(12029+offset0))
{
	if(input[i]==(12031+offset0))
{
	vR[i] = 12031;
}
else
{
	vR[i] = 12030;
}

}
else
{
	if(input[i]==(12029+offset0))
{
	vR[i] = 12029;
}
else
{
	vR[i] = 12028;
}

}

}
else
{
	if(input[i]>(12025+offset0))
{
	if(input[i]==(12027+offset0))
{
	vR[i] = 12027;
}
else
{
	vR[i] = 12026;
}

}
else
{
	if(input[i]==(12025+offset0))
{
	vR[i] = 12025;
}
else
{
	vR[i] = 12024;
}

}

}

}
else
{
	if(input[i]>(12019+offset0))
{
	if(input[i]>(12021+offset0))
{
	if(input[i]==(12023+offset0))
{
	vR[i] = 12023;
}
else
{
	vR[i] = 12022;
}

}
else
{
	if(input[i]==(12021+offset0))
{
	vR[i] = 12021;
}
else
{
	vR[i] = 12020;
}

}

}
else
{
	if(input[i]>(12017+offset0))
{
	if(input[i]==(12019+offset0))
{
	vR[i] = 12019;
}
else
{
	vR[i] = 12018;
}

}
else
{
	if(input[i]==(12017+offset0))
{
	vR[i] = 12017;
}
else
{
	vR[i] = 12016;
}

}

}

}

}
else
{
	if(input[i]>(12007+offset0))
{
	if(input[i]>(12011+offset0))
{
	if(input[i]>(12013+offset0))
{
	if(input[i]==(12015+offset0))
{
	vR[i] = 12015;
}
else
{
	vR[i] = 12014;
}

}
else
{
	if(input[i]==(12013+offset0))
{
	vR[i] = 12013;
}
else
{
	vR[i] = 12012;
}

}

}
else
{
	if(input[i]>(12009+offset0))
{
	if(input[i]==(12011+offset0))
{
	vR[i] = 12011;
}
else
{
	vR[i] = 12010;
}

}
else
{
	if(input[i]==(12009+offset0))
{
	vR[i] = 12009;
}
else
{
	vR[i] = 12008;
}

}

}

}
else
{
	if(input[i]>(12003+offset0))
{
	if(input[i]>(12005+offset0))
{
	if(input[i]==(12007+offset0))
{
	vR[i] = 12007;
}
else
{
	vR[i] = 12006;
}

}
else
{
	if(input[i]==(12005+offset0))
{
	vR[i] = 12005;
}
else
{
	vR[i] = 12004;
}

}

}
else
{
	if(input[i]>(12001+offset0))
{
	if(input[i]==(12003+offset0))
{
	vR[i] = 12003;
}
else
{
	vR[i] = 12002;
}

}
else
{
	if(input[i]==(12001+offset0))
{
	vR[i] = 12001;
}
else
{
	vR[i] = 12000;
}

}

}

}

}

}
else
{
	if(input[i]>(11983+offset0))
{
	if(input[i]>(11991+offset0))
{
	if(input[i]>(11995+offset0))
{
	if(input[i]>(11997+offset0))
{
	if(input[i]==(11999+offset0))
{
	vR[i] = 11999;
}
else
{
	vR[i] = 11998;
}

}
else
{
	if(input[i]==(11997+offset0))
{
	vR[i] = 11997;
}
else
{
	vR[i] = 11996;
}

}

}
else
{
	if(input[i]>(11993+offset0))
{
	if(input[i]==(11995+offset0))
{
	vR[i] = 11995;
}
else
{
	vR[i] = 11994;
}

}
else
{
	if(input[i]==(11993+offset0))
{
	vR[i] = 11993;
}
else
{
	vR[i] = 11992;
}

}

}

}
else
{
	if(input[i]>(11987+offset0))
{
	if(input[i]>(11989+offset0))
{
	if(input[i]==(11991+offset0))
{
	vR[i] = 11991;
}
else
{
	vR[i] = 11990;
}

}
else
{
	if(input[i]==(11989+offset0))
{
	vR[i] = 11989;
}
else
{
	vR[i] = 11988;
}

}

}
else
{
	if(input[i]>(11985+offset0))
{
	if(input[i]==(11987+offset0))
{
	vR[i] = 11987;
}
else
{
	vR[i] = 11986;
}

}
else
{
	if(input[i]==(11985+offset0))
{
	vR[i] = 11985;
}
else
{
	vR[i] = 11984;
}

}

}

}

}
else
{
	if(input[i]>(11975+offset0))
{
	if(input[i]>(11979+offset0))
{
	if(input[i]>(11981+offset0))
{
	if(input[i]==(11983+offset0))
{
	vR[i] = 11983;
}
else
{
	vR[i] = 11982;
}

}
else
{
	if(input[i]==(11981+offset0))
{
	vR[i] = 11981;
}
else
{
	vR[i] = 11980;
}

}

}
else
{
	if(input[i]>(11977+offset0))
{
	if(input[i]==(11979+offset0))
{
	vR[i] = 11979;
}
else
{
	vR[i] = 11978;
}

}
else
{
	if(input[i]==(11977+offset0))
{
	vR[i] = 11977;
}
else
{
	vR[i] = 11976;
}

}

}

}
else
{
	if(input[i]>(11971+offset0))
{
	if(input[i]>(11973+offset0))
{
	if(input[i]==(11975+offset0))
{
	vR[i] = 11975;
}
else
{
	vR[i] = 11974;
}

}
else
{
	if(input[i]==(11973+offset0))
{
	vR[i] = 11973;
}
else
{
	vR[i] = 11972;
}

}

}
else
{
	if(input[i]>(11969+offset0))
{
	if(input[i]==(11971+offset0))
{
	vR[i] = 11971;
}
else
{
	vR[i] = 11970;
}

}
else
{
	if(input[i]==(11969+offset0))
{
	vR[i] = 11969;
}
else
{
	vR[i] = 11968;
}

}

}

}

}

}

}
else
{
	if(input[i]>(11935+offset0))
{
	if(input[i]>(11951+offset0))
{
	if(input[i]>(11959+offset0))
{
	if(input[i]>(11963+offset0))
{
	if(input[i]>(11965+offset0))
{
	if(input[i]==(11967+offset0))
{
	vR[i] = 11967;
}
else
{
	vR[i] = 11966;
}

}
else
{
	if(input[i]==(11965+offset0))
{
	vR[i] = 11965;
}
else
{
	vR[i] = 11964;
}

}

}
else
{
	if(input[i]>(11961+offset0))
{
	if(input[i]==(11963+offset0))
{
	vR[i] = 11963;
}
else
{
	vR[i] = 11962;
}

}
else
{
	if(input[i]==(11961+offset0))
{
	vR[i] = 11961;
}
else
{
	vR[i] = 11960;
}

}

}

}
else
{
	if(input[i]>(11955+offset0))
{
	if(input[i]>(11957+offset0))
{
	if(input[i]==(11959+offset0))
{
	vR[i] = 11959;
}
else
{
	vR[i] = 11958;
}

}
else
{
	if(input[i]==(11957+offset0))
{
	vR[i] = 11957;
}
else
{
	vR[i] = 11956;
}

}

}
else
{
	if(input[i]>(11953+offset0))
{
	if(input[i]==(11955+offset0))
{
	vR[i] = 11955;
}
else
{
	vR[i] = 11954;
}

}
else
{
	if(input[i]==(11953+offset0))
{
	vR[i] = 11953;
}
else
{
	vR[i] = 11952;
}

}

}

}

}
else
{
	if(input[i]>(11943+offset0))
{
	if(input[i]>(11947+offset0))
{
	if(input[i]>(11949+offset0))
{
	if(input[i]==(11951+offset0))
{
	vR[i] = 11951;
}
else
{
	vR[i] = 11950;
}

}
else
{
	if(input[i]==(11949+offset0))
{
	vR[i] = 11949;
}
else
{
	vR[i] = 11948;
}

}

}
else
{
	if(input[i]>(11945+offset0))
{
	if(input[i]==(11947+offset0))
{
	vR[i] = 11947;
}
else
{
	vR[i] = 11946;
}

}
else
{
	if(input[i]==(11945+offset0))
{
	vR[i] = 11945;
}
else
{
	vR[i] = 11944;
}

}

}

}
else
{
	if(input[i]>(11939+offset0))
{
	if(input[i]>(11941+offset0))
{
	if(input[i]==(11943+offset0))
{
	vR[i] = 11943;
}
else
{
	vR[i] = 11942;
}

}
else
{
	if(input[i]==(11941+offset0))
{
	vR[i] = 11941;
}
else
{
	vR[i] = 11940;
}

}

}
else
{
	if(input[i]>(11937+offset0))
{
	if(input[i]==(11939+offset0))
{
	vR[i] = 11939;
}
else
{
	vR[i] = 11938;
}

}
else
{
	if(input[i]==(11937+offset0))
{
	vR[i] = 11937;
}
else
{
	vR[i] = 11936;
}

}

}

}

}

}
else
{
	if(input[i]>(11919+offset0))
{
	if(input[i]>(11927+offset0))
{
	if(input[i]>(11931+offset0))
{
	if(input[i]>(11933+offset0))
{
	if(input[i]==(11935+offset0))
{
	vR[i] = 11935;
}
else
{
	vR[i] = 11934;
}

}
else
{
	if(input[i]==(11933+offset0))
{
	vR[i] = 11933;
}
else
{
	vR[i] = 11932;
}

}

}
else
{
	if(input[i]>(11929+offset0))
{
	if(input[i]==(11931+offset0))
{
	vR[i] = 11931;
}
else
{
	vR[i] = 11930;
}

}
else
{
	if(input[i]==(11929+offset0))
{
	vR[i] = 11929;
}
else
{
	vR[i] = 11928;
}

}

}

}
else
{
	if(input[i]>(11923+offset0))
{
	if(input[i]>(11925+offset0))
{
	if(input[i]==(11927+offset0))
{
	vR[i] = 11927;
}
else
{
	vR[i] = 11926;
}

}
else
{
	if(input[i]==(11925+offset0))
{
	vR[i] = 11925;
}
else
{
	vR[i] = 11924;
}

}

}
else
{
	if(input[i]>(11921+offset0))
{
	if(input[i]==(11923+offset0))
{
	vR[i] = 11923;
}
else
{
	vR[i] = 11922;
}

}
else
{
	if(input[i]==(11921+offset0))
{
	vR[i] = 11921;
}
else
{
	vR[i] = 11920;
}

}

}

}

}
else
{
	if(input[i]>(11911+offset0))
{
	if(input[i]>(11915+offset0))
{
	if(input[i]>(11917+offset0))
{
	if(input[i]==(11919+offset0))
{
	vR[i] = 11919;
}
else
{
	vR[i] = 11918;
}

}
else
{
	if(input[i]==(11917+offset0))
{
	vR[i] = 11917;
}
else
{
	vR[i] = 11916;
}

}

}
else
{
	if(input[i]>(11913+offset0))
{
	if(input[i]==(11915+offset0))
{
	vR[i] = 11915;
}
else
{
	vR[i] = 11914;
}

}
else
{
	if(input[i]==(11913+offset0))
{
	vR[i] = 11913;
}
else
{
	vR[i] = 11912;
}

}

}

}
else
{
	if(input[i]>(11907+offset0))
{
	if(input[i]>(11909+offset0))
{
	if(input[i]==(11911+offset0))
{
	vR[i] = 11911;
}
else
{
	vR[i] = 11910;
}

}
else
{
	if(input[i]==(11909+offset0))
{
	vR[i] = 11909;
}
else
{
	vR[i] = 11908;
}

}

}
else
{
	if(input[i]>(11905+offset0))
{
	if(input[i]==(11907+offset0))
{
	vR[i] = 11907;
}
else
{
	vR[i] = 11906;
}

}
else
{
	if(input[i]==(11905+offset0))
{
	vR[i] = 11905;
}
else
{
	vR[i] = 11904;
}

}

}

}

}

}

}

}
else
{
	if(input[i]>(11839+offset0))
{
	if(input[i]>(11871+offset0))
{
	if(input[i]>(11887+offset0))
{
	if(input[i]>(11895+offset0))
{
	if(input[i]>(11899+offset0))
{
	if(input[i]>(11901+offset0))
{
	if(input[i]==(11903+offset0))
{
	vR[i] = 11903;
}
else
{
	vR[i] = 11902;
}

}
else
{
	if(input[i]==(11901+offset0))
{
	vR[i] = 11901;
}
else
{
	vR[i] = 11900;
}

}

}
else
{
	if(input[i]>(11897+offset0))
{
	if(input[i]==(11899+offset0))
{
	vR[i] = 11899;
}
else
{
	vR[i] = 11898;
}

}
else
{
	if(input[i]==(11897+offset0))
{
	vR[i] = 11897;
}
else
{
	vR[i] = 11896;
}

}

}

}
else
{
	if(input[i]>(11891+offset0))
{
	if(input[i]>(11893+offset0))
{
	if(input[i]==(11895+offset0))
{
	vR[i] = 11895;
}
else
{
	vR[i] = 11894;
}

}
else
{
	if(input[i]==(11893+offset0))
{
	vR[i] = 11893;
}
else
{
	vR[i] = 11892;
}

}

}
else
{
	if(input[i]>(11889+offset0))
{
	if(input[i]==(11891+offset0))
{
	vR[i] = 11891;
}
else
{
	vR[i] = 11890;
}

}
else
{
	if(input[i]==(11889+offset0))
{
	vR[i] = 11889;
}
else
{
	vR[i] = 11888;
}

}

}

}

}
else
{
	if(input[i]>(11879+offset0))
{
	if(input[i]>(11883+offset0))
{
	if(input[i]>(11885+offset0))
{
	if(input[i]==(11887+offset0))
{
	vR[i] = 11887;
}
else
{
	vR[i] = 11886;
}

}
else
{
	if(input[i]==(11885+offset0))
{
	vR[i] = 11885;
}
else
{
	vR[i] = 11884;
}

}

}
else
{
	if(input[i]>(11881+offset0))
{
	if(input[i]==(11883+offset0))
{
	vR[i] = 11883;
}
else
{
	vR[i] = 11882;
}

}
else
{
	if(input[i]==(11881+offset0))
{
	vR[i] = 11881;
}
else
{
	vR[i] = 11880;
}

}

}

}
else
{
	if(input[i]>(11875+offset0))
{
	if(input[i]>(11877+offset0))
{
	if(input[i]==(11879+offset0))
{
	vR[i] = 11879;
}
else
{
	vR[i] = 11878;
}

}
else
{
	if(input[i]==(11877+offset0))
{
	vR[i] = 11877;
}
else
{
	vR[i] = 11876;
}

}

}
else
{
	if(input[i]>(11873+offset0))
{
	if(input[i]==(11875+offset0))
{
	vR[i] = 11875;
}
else
{
	vR[i] = 11874;
}

}
else
{
	if(input[i]==(11873+offset0))
{
	vR[i] = 11873;
}
else
{
	vR[i] = 11872;
}

}

}

}

}

}
else
{
	if(input[i]>(11855+offset0))
{
	if(input[i]>(11863+offset0))
{
	if(input[i]>(11867+offset0))
{
	if(input[i]>(11869+offset0))
{
	if(input[i]==(11871+offset0))
{
	vR[i] = 11871;
}
else
{
	vR[i] = 11870;
}

}
else
{
	if(input[i]==(11869+offset0))
{
	vR[i] = 11869;
}
else
{
	vR[i] = 11868;
}

}

}
else
{
	if(input[i]>(11865+offset0))
{
	if(input[i]==(11867+offset0))
{
	vR[i] = 11867;
}
else
{
	vR[i] = 11866;
}

}
else
{
	if(input[i]==(11865+offset0))
{
	vR[i] = 11865;
}
else
{
	vR[i] = 11864;
}

}

}

}
else
{
	if(input[i]>(11859+offset0))
{
	if(input[i]>(11861+offset0))
{
	if(input[i]==(11863+offset0))
{
	vR[i] = 11863;
}
else
{
	vR[i] = 11862;
}

}
else
{
	if(input[i]==(11861+offset0))
{
	vR[i] = 11861;
}
else
{
	vR[i] = 11860;
}

}

}
else
{
	if(input[i]>(11857+offset0))
{
	if(input[i]==(11859+offset0))
{
	vR[i] = 11859;
}
else
{
	vR[i] = 11858;
}

}
else
{
	if(input[i]==(11857+offset0))
{
	vR[i] = 11857;
}
else
{
	vR[i] = 11856;
}

}

}

}

}
else
{
	if(input[i]>(11847+offset0))
{
	if(input[i]>(11851+offset0))
{
	if(input[i]>(11853+offset0))
{
	if(input[i]==(11855+offset0))
{
	vR[i] = 11855;
}
else
{
	vR[i] = 11854;
}

}
else
{
	if(input[i]==(11853+offset0))
{
	vR[i] = 11853;
}
else
{
	vR[i] = 11852;
}

}

}
else
{
	if(input[i]>(11849+offset0))
{
	if(input[i]==(11851+offset0))
{
	vR[i] = 11851;
}
else
{
	vR[i] = 11850;
}

}
else
{
	if(input[i]==(11849+offset0))
{
	vR[i] = 11849;
}
else
{
	vR[i] = 11848;
}

}

}

}
else
{
	if(input[i]>(11843+offset0))
{
	if(input[i]>(11845+offset0))
{
	if(input[i]==(11847+offset0))
{
	vR[i] = 11847;
}
else
{
	vR[i] = 11846;
}

}
else
{
	if(input[i]==(11845+offset0))
{
	vR[i] = 11845;
}
else
{
	vR[i] = 11844;
}

}

}
else
{
	if(input[i]>(11841+offset0))
{
	if(input[i]==(11843+offset0))
{
	vR[i] = 11843;
}
else
{
	vR[i] = 11842;
}

}
else
{
	if(input[i]==(11841+offset0))
{
	vR[i] = 11841;
}
else
{
	vR[i] = 11840;
}

}

}

}

}

}

}
else
{
	if(input[i]>(11807+offset0))
{
	if(input[i]>(11823+offset0))
{
	if(input[i]>(11831+offset0))
{
	if(input[i]>(11835+offset0))
{
	if(input[i]>(11837+offset0))
{
	if(input[i]==(11839+offset0))
{
	vR[i] = 11839;
}
else
{
	vR[i] = 11838;
}

}
else
{
	if(input[i]==(11837+offset0))
{
	vR[i] = 11837;
}
else
{
	vR[i] = 11836;
}

}

}
else
{
	if(input[i]>(11833+offset0))
{
	if(input[i]==(11835+offset0))
{
	vR[i] = 11835;
}
else
{
	vR[i] = 11834;
}

}
else
{
	if(input[i]==(11833+offset0))
{
	vR[i] = 11833;
}
else
{
	vR[i] = 11832;
}

}

}

}
else
{
	if(input[i]>(11827+offset0))
{
	if(input[i]>(11829+offset0))
{
	if(input[i]==(11831+offset0))
{
	vR[i] = 11831;
}
else
{
	vR[i] = 11830;
}

}
else
{
	if(input[i]==(11829+offset0))
{
	vR[i] = 11829;
}
else
{
	vR[i] = 11828;
}

}

}
else
{
	if(input[i]>(11825+offset0))
{
	if(input[i]==(11827+offset0))
{
	vR[i] = 11827;
}
else
{
	vR[i] = 11826;
}

}
else
{
	if(input[i]==(11825+offset0))
{
	vR[i] = 11825;
}
else
{
	vR[i] = 11824;
}

}

}

}

}
else
{
	if(input[i]>(11815+offset0))
{
	if(input[i]>(11819+offset0))
{
	if(input[i]>(11821+offset0))
{
	if(input[i]==(11823+offset0))
{
	vR[i] = 11823;
}
else
{
	vR[i] = 11822;
}

}
else
{
	if(input[i]==(11821+offset0))
{
	vR[i] = 11821;
}
else
{
	vR[i] = 11820;
}

}

}
else
{
	if(input[i]>(11817+offset0))
{
	if(input[i]==(11819+offset0))
{
	vR[i] = 11819;
}
else
{
	vR[i] = 11818;
}

}
else
{
	if(input[i]==(11817+offset0))
{
	vR[i] = 11817;
}
else
{
	vR[i] = 11816;
}

}

}

}
else
{
	if(input[i]>(11811+offset0))
{
	if(input[i]>(11813+offset0))
{
	if(input[i]==(11815+offset0))
{
	vR[i] = 11815;
}
else
{
	vR[i] = 11814;
}

}
else
{
	if(input[i]==(11813+offset0))
{
	vR[i] = 11813;
}
else
{
	vR[i] = 11812;
}

}

}
else
{
	if(input[i]>(11809+offset0))
{
	if(input[i]==(11811+offset0))
{
	vR[i] = 11811;
}
else
{
	vR[i] = 11810;
}

}
else
{
	if(input[i]==(11809+offset0))
{
	vR[i] = 11809;
}
else
{
	vR[i] = 11808;
}

}

}

}

}

}
else
{
	if(input[i]>(11791+offset0))
{
	if(input[i]>(11799+offset0))
{
	if(input[i]>(11803+offset0))
{
	if(input[i]>(11805+offset0))
{
	if(input[i]==(11807+offset0))
{
	vR[i] = 11807;
}
else
{
	vR[i] = 11806;
}

}
else
{
	if(input[i]==(11805+offset0))
{
	vR[i] = 11805;
}
else
{
	vR[i] = 11804;
}

}

}
else
{
	if(input[i]>(11801+offset0))
{
	if(input[i]==(11803+offset0))
{
	vR[i] = 11803;
}
else
{
	vR[i] = 11802;
}

}
else
{
	if(input[i]==(11801+offset0))
{
	vR[i] = 11801;
}
else
{
	vR[i] = 11800;
}

}

}

}
else
{
	if(input[i]>(11795+offset0))
{
	if(input[i]>(11797+offset0))
{
	if(input[i]==(11799+offset0))
{
	vR[i] = 11799;
}
else
{
	vR[i] = 11798;
}

}
else
{
	if(input[i]==(11797+offset0))
{
	vR[i] = 11797;
}
else
{
	vR[i] = 11796;
}

}

}
else
{
	if(input[i]>(11793+offset0))
{
	if(input[i]==(11795+offset0))
{
	vR[i] = 11795;
}
else
{
	vR[i] = 11794;
}

}
else
{
	if(input[i]==(11793+offset0))
{
	vR[i] = 11793;
}
else
{
	vR[i] = 11792;
}

}

}

}

}
else
{
	if(input[i]>(11783+offset0))
{
	if(input[i]>(11787+offset0))
{
	if(input[i]>(11789+offset0))
{
	if(input[i]==(11791+offset0))
{
	vR[i] = 11791;
}
else
{
	vR[i] = 11790;
}

}
else
{
	if(input[i]==(11789+offset0))
{
	vR[i] = 11789;
}
else
{
	vR[i] = 11788;
}

}

}
else
{
	if(input[i]>(11785+offset0))
{
	if(input[i]==(11787+offset0))
{
	vR[i] = 11787;
}
else
{
	vR[i] = 11786;
}

}
else
{
	if(input[i]==(11785+offset0))
{
	vR[i] = 11785;
}
else
{
	vR[i] = 11784;
}

}

}

}
else
{
	if(input[i]>(11779+offset0))
{
	if(input[i]>(11781+offset0))
{
	if(input[i]==(11783+offset0))
{
	vR[i] = 11783;
}
else
{
	vR[i] = 11782;
}

}
else
{
	if(input[i]==(11781+offset0))
{
	vR[i] = 11781;
}
else
{
	vR[i] = 11780;
}

}

}
else
{
	if(input[i]>(11777+offset0))
{
	if(input[i]==(11779+offset0))
{
	vR[i] = 11779;
}
else
{
	vR[i] = 11778;
}

}
else
{
	if(input[i]==(11777+offset0))
{
	vR[i] = 11777;
}
else
{
	vR[i] = 11776;
}

}

}

}

}

}

}

}

}

}
else
{
	if(input[i]>(11519+offset0))
{
	if(input[i]>(11647+offset0))
{
	if(input[i]>(11711+offset0))
{
	if(input[i]>(11743+offset0))
{
	if(input[i]>(11759+offset0))
{
	if(input[i]>(11767+offset0))
{
	if(input[i]>(11771+offset0))
{
	if(input[i]>(11773+offset0))
{
	if(input[i]==(11775+offset0))
{
	vR[i] = 11775;
}
else
{
	vR[i] = 11774;
}

}
else
{
	if(input[i]==(11773+offset0))
{
	vR[i] = 11773;
}
else
{
	vR[i] = 11772;
}

}

}
else
{
	if(input[i]>(11769+offset0))
{
	if(input[i]==(11771+offset0))
{
	vR[i] = 11771;
}
else
{
	vR[i] = 11770;
}

}
else
{
	if(input[i]==(11769+offset0))
{
	vR[i] = 11769;
}
else
{
	vR[i] = 11768;
}

}

}

}
else
{
	if(input[i]>(11763+offset0))
{
	if(input[i]>(11765+offset0))
{
	if(input[i]==(11767+offset0))
{
	vR[i] = 11767;
}
else
{
	vR[i] = 11766;
}

}
else
{
	if(input[i]==(11765+offset0))
{
	vR[i] = 11765;
}
else
{
	vR[i] = 11764;
}

}

}
else
{
	if(input[i]>(11761+offset0))
{
	if(input[i]==(11763+offset0))
{
	vR[i] = 11763;
}
else
{
	vR[i] = 11762;
}

}
else
{
	if(input[i]==(11761+offset0))
{
	vR[i] = 11761;
}
else
{
	vR[i] = 11760;
}

}

}

}

}
else
{
	if(input[i]>(11751+offset0))
{
	if(input[i]>(11755+offset0))
{
	if(input[i]>(11757+offset0))
{
	if(input[i]==(11759+offset0))
{
	vR[i] = 11759;
}
else
{
	vR[i] = 11758;
}

}
else
{
	if(input[i]==(11757+offset0))
{
	vR[i] = 11757;
}
else
{
	vR[i] = 11756;
}

}

}
else
{
	if(input[i]>(11753+offset0))
{
	if(input[i]==(11755+offset0))
{
	vR[i] = 11755;
}
else
{
	vR[i] = 11754;
}

}
else
{
	if(input[i]==(11753+offset0))
{
	vR[i] = 11753;
}
else
{
	vR[i] = 11752;
}

}

}

}
else
{
	if(input[i]>(11747+offset0))
{
	if(input[i]>(11749+offset0))
{
	if(input[i]==(11751+offset0))
{
	vR[i] = 11751;
}
else
{
	vR[i] = 11750;
}

}
else
{
	if(input[i]==(11749+offset0))
{
	vR[i] = 11749;
}
else
{
	vR[i] = 11748;
}

}

}
else
{
	if(input[i]>(11745+offset0))
{
	if(input[i]==(11747+offset0))
{
	vR[i] = 11747;
}
else
{
	vR[i] = 11746;
}

}
else
{
	if(input[i]==(11745+offset0))
{
	vR[i] = 11745;
}
else
{
	vR[i] = 11744;
}

}

}

}

}

}
else
{
	if(input[i]>(11727+offset0))
{
	if(input[i]>(11735+offset0))
{
	if(input[i]>(11739+offset0))
{
	if(input[i]>(11741+offset0))
{
	if(input[i]==(11743+offset0))
{
	vR[i] = 11743;
}
else
{
	vR[i] = 11742;
}

}
else
{
	if(input[i]==(11741+offset0))
{
	vR[i] = 11741;
}
else
{
	vR[i] = 11740;
}

}

}
else
{
	if(input[i]>(11737+offset0))
{
	if(input[i]==(11739+offset0))
{
	vR[i] = 11739;
}
else
{
	vR[i] = 11738;
}

}
else
{
	if(input[i]==(11737+offset0))
{
	vR[i] = 11737;
}
else
{
	vR[i] = 11736;
}

}

}

}
else
{
	if(input[i]>(11731+offset0))
{
	if(input[i]>(11733+offset0))
{
	if(input[i]==(11735+offset0))
{
	vR[i] = 11735;
}
else
{
	vR[i] = 11734;
}

}
else
{
	if(input[i]==(11733+offset0))
{
	vR[i] = 11733;
}
else
{
	vR[i] = 11732;
}

}

}
else
{
	if(input[i]>(11729+offset0))
{
	if(input[i]==(11731+offset0))
{
	vR[i] = 11731;
}
else
{
	vR[i] = 11730;
}

}
else
{
	if(input[i]==(11729+offset0))
{
	vR[i] = 11729;
}
else
{
	vR[i] = 11728;
}

}

}

}

}
else
{
	if(input[i]>(11719+offset0))
{
	if(input[i]>(11723+offset0))
{
	if(input[i]>(11725+offset0))
{
	if(input[i]==(11727+offset0))
{
	vR[i] = 11727;
}
else
{
	vR[i] = 11726;
}

}
else
{
	if(input[i]==(11725+offset0))
{
	vR[i] = 11725;
}
else
{
	vR[i] = 11724;
}

}

}
else
{
	if(input[i]>(11721+offset0))
{
	if(input[i]==(11723+offset0))
{
	vR[i] = 11723;
}
else
{
	vR[i] = 11722;
}

}
else
{
	if(input[i]==(11721+offset0))
{
	vR[i] = 11721;
}
else
{
	vR[i] = 11720;
}

}

}

}
else
{
	if(input[i]>(11715+offset0))
{
	if(input[i]>(11717+offset0))
{
	if(input[i]==(11719+offset0))
{
	vR[i] = 11719;
}
else
{
	vR[i] = 11718;
}

}
else
{
	if(input[i]==(11717+offset0))
{
	vR[i] = 11717;
}
else
{
	vR[i] = 11716;
}

}

}
else
{
	if(input[i]>(11713+offset0))
{
	if(input[i]==(11715+offset0))
{
	vR[i] = 11715;
}
else
{
	vR[i] = 11714;
}

}
else
{
	if(input[i]==(11713+offset0))
{
	vR[i] = 11713;
}
else
{
	vR[i] = 11712;
}

}

}

}

}

}

}
else
{
	if(input[i]>(11679+offset0))
{
	if(input[i]>(11695+offset0))
{
	if(input[i]>(11703+offset0))
{
	if(input[i]>(11707+offset0))
{
	if(input[i]>(11709+offset0))
{
	if(input[i]==(11711+offset0))
{
	vR[i] = 11711;
}
else
{
	vR[i] = 11710;
}

}
else
{
	if(input[i]==(11709+offset0))
{
	vR[i] = 11709;
}
else
{
	vR[i] = 11708;
}

}

}
else
{
	if(input[i]>(11705+offset0))
{
	if(input[i]==(11707+offset0))
{
	vR[i] = 11707;
}
else
{
	vR[i] = 11706;
}

}
else
{
	if(input[i]==(11705+offset0))
{
	vR[i] = 11705;
}
else
{
	vR[i] = 11704;
}

}

}

}
else
{
	if(input[i]>(11699+offset0))
{
	if(input[i]>(11701+offset0))
{
	if(input[i]==(11703+offset0))
{
	vR[i] = 11703;
}
else
{
	vR[i] = 11702;
}

}
else
{
	if(input[i]==(11701+offset0))
{
	vR[i] = 11701;
}
else
{
	vR[i] = 11700;
}

}

}
else
{
	if(input[i]>(11697+offset0))
{
	if(input[i]==(11699+offset0))
{
	vR[i] = 11699;
}
else
{
	vR[i] = 11698;
}

}
else
{
	if(input[i]==(11697+offset0))
{
	vR[i] = 11697;
}
else
{
	vR[i] = 11696;
}

}

}

}

}
else
{
	if(input[i]>(11687+offset0))
{
	if(input[i]>(11691+offset0))
{
	if(input[i]>(11693+offset0))
{
	if(input[i]==(11695+offset0))
{
	vR[i] = 11695;
}
else
{
	vR[i] = 11694;
}

}
else
{
	if(input[i]==(11693+offset0))
{
	vR[i] = 11693;
}
else
{
	vR[i] = 11692;
}

}

}
else
{
	if(input[i]>(11689+offset0))
{
	if(input[i]==(11691+offset0))
{
	vR[i] = 11691;
}
else
{
	vR[i] = 11690;
}

}
else
{
	if(input[i]==(11689+offset0))
{
	vR[i] = 11689;
}
else
{
	vR[i] = 11688;
}

}

}

}
else
{
	if(input[i]>(11683+offset0))
{
	if(input[i]>(11685+offset0))
{
	if(input[i]==(11687+offset0))
{
	vR[i] = 11687;
}
else
{
	vR[i] = 11686;
}

}
else
{
	if(input[i]==(11685+offset0))
{
	vR[i] = 11685;
}
else
{
	vR[i] = 11684;
}

}

}
else
{
	if(input[i]>(11681+offset0))
{
	if(input[i]==(11683+offset0))
{
	vR[i] = 11683;
}
else
{
	vR[i] = 11682;
}

}
else
{
	if(input[i]==(11681+offset0))
{
	vR[i] = 11681;
}
else
{
	vR[i] = 11680;
}

}

}

}

}

}
else
{
	if(input[i]>(11663+offset0))
{
	if(input[i]>(11671+offset0))
{
	if(input[i]>(11675+offset0))
{
	if(input[i]>(11677+offset0))
{
	if(input[i]==(11679+offset0))
{
	vR[i] = 11679;
}
else
{
	vR[i] = 11678;
}

}
else
{
	if(input[i]==(11677+offset0))
{
	vR[i] = 11677;
}
else
{
	vR[i] = 11676;
}

}

}
else
{
	if(input[i]>(11673+offset0))
{
	if(input[i]==(11675+offset0))
{
	vR[i] = 11675;
}
else
{
	vR[i] = 11674;
}

}
else
{
	if(input[i]==(11673+offset0))
{
	vR[i] = 11673;
}
else
{
	vR[i] = 11672;
}

}

}

}
else
{
	if(input[i]>(11667+offset0))
{
	if(input[i]>(11669+offset0))
{
	if(input[i]==(11671+offset0))
{
	vR[i] = 11671;
}
else
{
	vR[i] = 11670;
}

}
else
{
	if(input[i]==(11669+offset0))
{
	vR[i] = 11669;
}
else
{
	vR[i] = 11668;
}

}

}
else
{
	if(input[i]>(11665+offset0))
{
	if(input[i]==(11667+offset0))
{
	vR[i] = 11667;
}
else
{
	vR[i] = 11666;
}

}
else
{
	if(input[i]==(11665+offset0))
{
	vR[i] = 11665;
}
else
{
	vR[i] = 11664;
}

}

}

}

}
else
{
	if(input[i]>(11655+offset0))
{
	if(input[i]>(11659+offset0))
{
	if(input[i]>(11661+offset0))
{
	if(input[i]==(11663+offset0))
{
	vR[i] = 11663;
}
else
{
	vR[i] = 11662;
}

}
else
{
	if(input[i]==(11661+offset0))
{
	vR[i] = 11661;
}
else
{
	vR[i] = 11660;
}

}

}
else
{
	if(input[i]>(11657+offset0))
{
	if(input[i]==(11659+offset0))
{
	vR[i] = 11659;
}
else
{
	vR[i] = 11658;
}

}
else
{
	if(input[i]==(11657+offset0))
{
	vR[i] = 11657;
}
else
{
	vR[i] = 11656;
}

}

}

}
else
{
	if(input[i]>(11651+offset0))
{
	if(input[i]>(11653+offset0))
{
	if(input[i]==(11655+offset0))
{
	vR[i] = 11655;
}
else
{
	vR[i] = 11654;
}

}
else
{
	if(input[i]==(11653+offset0))
{
	vR[i] = 11653;
}
else
{
	vR[i] = 11652;
}

}

}
else
{
	if(input[i]>(11649+offset0))
{
	if(input[i]==(11651+offset0))
{
	vR[i] = 11651;
}
else
{
	vR[i] = 11650;
}

}
else
{
	if(input[i]==(11649+offset0))
{
	vR[i] = 11649;
}
else
{
	vR[i] = 11648;
}

}

}

}

}

}

}

}
else
{
	if(input[i]>(11583+offset0))
{
	if(input[i]>(11615+offset0))
{
	if(input[i]>(11631+offset0))
{
	if(input[i]>(11639+offset0))
{
	if(input[i]>(11643+offset0))
{
	if(input[i]>(11645+offset0))
{
	if(input[i]==(11647+offset0))
{
	vR[i] = 11647;
}
else
{
	vR[i] = 11646;
}

}
else
{
	if(input[i]==(11645+offset0))
{
	vR[i] = 11645;
}
else
{
	vR[i] = 11644;
}

}

}
else
{
	if(input[i]>(11641+offset0))
{
	if(input[i]==(11643+offset0))
{
	vR[i] = 11643;
}
else
{
	vR[i] = 11642;
}

}
else
{
	if(input[i]==(11641+offset0))
{
	vR[i] = 11641;
}
else
{
	vR[i] = 11640;
}

}

}

}
else
{
	if(input[i]>(11635+offset0))
{
	if(input[i]>(11637+offset0))
{
	if(input[i]==(11639+offset0))
{
	vR[i] = 11639;
}
else
{
	vR[i] = 11638;
}

}
else
{
	if(input[i]==(11637+offset0))
{
	vR[i] = 11637;
}
else
{
	vR[i] = 11636;
}

}

}
else
{
	if(input[i]>(11633+offset0))
{
	if(input[i]==(11635+offset0))
{
	vR[i] = 11635;
}
else
{
	vR[i] = 11634;
}

}
else
{
	if(input[i]==(11633+offset0))
{
	vR[i] = 11633;
}
else
{
	vR[i] = 11632;
}

}

}

}

}
else
{
	if(input[i]>(11623+offset0))
{
	if(input[i]>(11627+offset0))
{
	if(input[i]>(11629+offset0))
{
	if(input[i]==(11631+offset0))
{
	vR[i] = 11631;
}
else
{
	vR[i] = 11630;
}

}
else
{
	if(input[i]==(11629+offset0))
{
	vR[i] = 11629;
}
else
{
	vR[i] = 11628;
}

}

}
else
{
	if(input[i]>(11625+offset0))
{
	if(input[i]==(11627+offset0))
{
	vR[i] = 11627;
}
else
{
	vR[i] = 11626;
}

}
else
{
	if(input[i]==(11625+offset0))
{
	vR[i] = 11625;
}
else
{
	vR[i] = 11624;
}

}

}

}
else
{
	if(input[i]>(11619+offset0))
{
	if(input[i]>(11621+offset0))
{
	if(input[i]==(11623+offset0))
{
	vR[i] = 11623;
}
else
{
	vR[i] = 11622;
}

}
else
{
	if(input[i]==(11621+offset0))
{
	vR[i] = 11621;
}
else
{
	vR[i] = 11620;
}

}

}
else
{
	if(input[i]>(11617+offset0))
{
	if(input[i]==(11619+offset0))
{
	vR[i] = 11619;
}
else
{
	vR[i] = 11618;
}

}
else
{
	if(input[i]==(11617+offset0))
{
	vR[i] = 11617;
}
else
{
	vR[i] = 11616;
}

}

}

}

}

}
else
{
	if(input[i]>(11599+offset0))
{
	if(input[i]>(11607+offset0))
{
	if(input[i]>(11611+offset0))
{
	if(input[i]>(11613+offset0))
{
	if(input[i]==(11615+offset0))
{
	vR[i] = 11615;
}
else
{
	vR[i] = 11614;
}

}
else
{
	if(input[i]==(11613+offset0))
{
	vR[i] = 11613;
}
else
{
	vR[i] = 11612;
}

}

}
else
{
	if(input[i]>(11609+offset0))
{
	if(input[i]==(11611+offset0))
{
	vR[i] = 11611;
}
else
{
	vR[i] = 11610;
}

}
else
{
	if(input[i]==(11609+offset0))
{
	vR[i] = 11609;
}
else
{
	vR[i] = 11608;
}

}

}

}
else
{
	if(input[i]>(11603+offset0))
{
	if(input[i]>(11605+offset0))
{
	if(input[i]==(11607+offset0))
{
	vR[i] = 11607;
}
else
{
	vR[i] = 11606;
}

}
else
{
	if(input[i]==(11605+offset0))
{
	vR[i] = 11605;
}
else
{
	vR[i] = 11604;
}

}

}
else
{
	if(input[i]>(11601+offset0))
{
	if(input[i]==(11603+offset0))
{
	vR[i] = 11603;
}
else
{
	vR[i] = 11602;
}

}
else
{
	if(input[i]==(11601+offset0))
{
	vR[i] = 11601;
}
else
{
	vR[i] = 11600;
}

}

}

}

}
else
{
	if(input[i]>(11591+offset0))
{
	if(input[i]>(11595+offset0))
{
	if(input[i]>(11597+offset0))
{
	if(input[i]==(11599+offset0))
{
	vR[i] = 11599;
}
else
{
	vR[i] = 11598;
}

}
else
{
	if(input[i]==(11597+offset0))
{
	vR[i] = 11597;
}
else
{
	vR[i] = 11596;
}

}

}
else
{
	if(input[i]>(11593+offset0))
{
	if(input[i]==(11595+offset0))
{
	vR[i] = 11595;
}
else
{
	vR[i] = 11594;
}

}
else
{
	if(input[i]==(11593+offset0))
{
	vR[i] = 11593;
}
else
{
	vR[i] = 11592;
}

}

}

}
else
{
	if(input[i]>(11587+offset0))
{
	if(input[i]>(11589+offset0))
{
	if(input[i]==(11591+offset0))
{
	vR[i] = 11591;
}
else
{
	vR[i] = 11590;
}

}
else
{
	if(input[i]==(11589+offset0))
{
	vR[i] = 11589;
}
else
{
	vR[i] = 11588;
}

}

}
else
{
	if(input[i]>(11585+offset0))
{
	if(input[i]==(11587+offset0))
{
	vR[i] = 11587;
}
else
{
	vR[i] = 11586;
}

}
else
{
	if(input[i]==(11585+offset0))
{
	vR[i] = 11585;
}
else
{
	vR[i] = 11584;
}

}

}

}

}

}

}
else
{
	if(input[i]>(11551+offset0))
{
	if(input[i]>(11567+offset0))
{
	if(input[i]>(11575+offset0))
{
	if(input[i]>(11579+offset0))
{
	if(input[i]>(11581+offset0))
{
	if(input[i]==(11583+offset0))
{
	vR[i] = 11583;
}
else
{
	vR[i] = 11582;
}

}
else
{
	if(input[i]==(11581+offset0))
{
	vR[i] = 11581;
}
else
{
	vR[i] = 11580;
}

}

}
else
{
	if(input[i]>(11577+offset0))
{
	if(input[i]==(11579+offset0))
{
	vR[i] = 11579;
}
else
{
	vR[i] = 11578;
}

}
else
{
	if(input[i]==(11577+offset0))
{
	vR[i] = 11577;
}
else
{
	vR[i] = 11576;
}

}

}

}
else
{
	if(input[i]>(11571+offset0))
{
	if(input[i]>(11573+offset0))
{
	if(input[i]==(11575+offset0))
{
	vR[i] = 11575;
}
else
{
	vR[i] = 11574;
}

}
else
{
	if(input[i]==(11573+offset0))
{
	vR[i] = 11573;
}
else
{
	vR[i] = 11572;
}

}

}
else
{
	if(input[i]>(11569+offset0))
{
	if(input[i]==(11571+offset0))
{
	vR[i] = 11571;
}
else
{
	vR[i] = 11570;
}

}
else
{
	if(input[i]==(11569+offset0))
{
	vR[i] = 11569;
}
else
{
	vR[i] = 11568;
}

}

}

}

}
else
{
	if(input[i]>(11559+offset0))
{
	if(input[i]>(11563+offset0))
{
	if(input[i]>(11565+offset0))
{
	if(input[i]==(11567+offset0))
{
	vR[i] = 11567;
}
else
{
	vR[i] = 11566;
}

}
else
{
	if(input[i]==(11565+offset0))
{
	vR[i] = 11565;
}
else
{
	vR[i] = 11564;
}

}

}
else
{
	if(input[i]>(11561+offset0))
{
	if(input[i]==(11563+offset0))
{
	vR[i] = 11563;
}
else
{
	vR[i] = 11562;
}

}
else
{
	if(input[i]==(11561+offset0))
{
	vR[i] = 11561;
}
else
{
	vR[i] = 11560;
}

}

}

}
else
{
	if(input[i]>(11555+offset0))
{
	if(input[i]>(11557+offset0))
{
	if(input[i]==(11559+offset0))
{
	vR[i] = 11559;
}
else
{
	vR[i] = 11558;
}

}
else
{
	if(input[i]==(11557+offset0))
{
	vR[i] = 11557;
}
else
{
	vR[i] = 11556;
}

}

}
else
{
	if(input[i]>(11553+offset0))
{
	if(input[i]==(11555+offset0))
{
	vR[i] = 11555;
}
else
{
	vR[i] = 11554;
}

}
else
{
	if(input[i]==(11553+offset0))
{
	vR[i] = 11553;
}
else
{
	vR[i] = 11552;
}

}

}

}

}

}
else
{
	if(input[i]>(11535+offset0))
{
	if(input[i]>(11543+offset0))
{
	if(input[i]>(11547+offset0))
{
	if(input[i]>(11549+offset0))
{
	if(input[i]==(11551+offset0))
{
	vR[i] = 11551;
}
else
{
	vR[i] = 11550;
}

}
else
{
	if(input[i]==(11549+offset0))
{
	vR[i] = 11549;
}
else
{
	vR[i] = 11548;
}

}

}
else
{
	if(input[i]>(11545+offset0))
{
	if(input[i]==(11547+offset0))
{
	vR[i] = 11547;
}
else
{
	vR[i] = 11546;
}

}
else
{
	if(input[i]==(11545+offset0))
{
	vR[i] = 11545;
}
else
{
	vR[i] = 11544;
}

}

}

}
else
{
	if(input[i]>(11539+offset0))
{
	if(input[i]>(11541+offset0))
{
	if(input[i]==(11543+offset0))
{
	vR[i] = 11543;
}
else
{
	vR[i] = 11542;
}

}
else
{
	if(input[i]==(11541+offset0))
{
	vR[i] = 11541;
}
else
{
	vR[i] = 11540;
}

}

}
else
{
	if(input[i]>(11537+offset0))
{
	if(input[i]==(11539+offset0))
{
	vR[i] = 11539;
}
else
{
	vR[i] = 11538;
}

}
else
{
	if(input[i]==(11537+offset0))
{
	vR[i] = 11537;
}
else
{
	vR[i] = 11536;
}

}

}

}

}
else
{
	if(input[i]>(11527+offset0))
{
	if(input[i]>(11531+offset0))
{
	if(input[i]>(11533+offset0))
{
	if(input[i]==(11535+offset0))
{
	vR[i] = 11535;
}
else
{
	vR[i] = 11534;
}

}
else
{
	if(input[i]==(11533+offset0))
{
	vR[i] = 11533;
}
else
{
	vR[i] = 11532;
}

}

}
else
{
	if(input[i]>(11529+offset0))
{
	if(input[i]==(11531+offset0))
{
	vR[i] = 11531;
}
else
{
	vR[i] = 11530;
}

}
else
{
	if(input[i]==(11529+offset0))
{
	vR[i] = 11529;
}
else
{
	vR[i] = 11528;
}

}

}

}
else
{
	if(input[i]>(11523+offset0))
{
	if(input[i]>(11525+offset0))
{
	if(input[i]==(11527+offset0))
{
	vR[i] = 11527;
}
else
{
	vR[i] = 11526;
}

}
else
{
	if(input[i]==(11525+offset0))
{
	vR[i] = 11525;
}
else
{
	vR[i] = 11524;
}

}

}
else
{
	if(input[i]>(11521+offset0))
{
	if(input[i]==(11523+offset0))
{
	vR[i] = 11523;
}
else
{
	vR[i] = 11522;
}

}
else
{
	if(input[i]==(11521+offset0))
{
	vR[i] = 11521;
}
else
{
	vR[i] = 11520;
}

}

}

}

}

}

}

}

}
else
{
	if(input[i]>(11391+offset0))
{
	if(input[i]>(11455+offset0))
{
	if(input[i]>(11487+offset0))
{
	if(input[i]>(11503+offset0))
{
	if(input[i]>(11511+offset0))
{
	if(input[i]>(11515+offset0))
{
	if(input[i]>(11517+offset0))
{
	if(input[i]==(11519+offset0))
{
	vR[i] = 11519;
}
else
{
	vR[i] = 11518;
}

}
else
{
	if(input[i]==(11517+offset0))
{
	vR[i] = 11517;
}
else
{
	vR[i] = 11516;
}

}

}
else
{
	if(input[i]>(11513+offset0))
{
	if(input[i]==(11515+offset0))
{
	vR[i] = 11515;
}
else
{
	vR[i] = 11514;
}

}
else
{
	if(input[i]==(11513+offset0))
{
	vR[i] = 11513;
}
else
{
	vR[i] = 11512;
}

}

}

}
else
{
	if(input[i]>(11507+offset0))
{
	if(input[i]>(11509+offset0))
{
	if(input[i]==(11511+offset0))
{
	vR[i] = 11511;
}
else
{
	vR[i] = 11510;
}

}
else
{
	if(input[i]==(11509+offset0))
{
	vR[i] = 11509;
}
else
{
	vR[i] = 11508;
}

}

}
else
{
	if(input[i]>(11505+offset0))
{
	if(input[i]==(11507+offset0))
{
	vR[i] = 11507;
}
else
{
	vR[i] = 11506;
}

}
else
{
	if(input[i]==(11505+offset0))
{
	vR[i] = 11505;
}
else
{
	vR[i] = 11504;
}

}

}

}

}
else
{
	if(input[i]>(11495+offset0))
{
	if(input[i]>(11499+offset0))
{
	if(input[i]>(11501+offset0))
{
	if(input[i]==(11503+offset0))
{
	vR[i] = 11503;
}
else
{
	vR[i] = 11502;
}

}
else
{
	if(input[i]==(11501+offset0))
{
	vR[i] = 11501;
}
else
{
	vR[i] = 11500;
}

}

}
else
{
	if(input[i]>(11497+offset0))
{
	if(input[i]==(11499+offset0))
{
	vR[i] = 11499;
}
else
{
	vR[i] = 11498;
}

}
else
{
	if(input[i]==(11497+offset0))
{
	vR[i] = 11497;
}
else
{
	vR[i] = 11496;
}

}

}

}
else
{
	if(input[i]>(11491+offset0))
{
	if(input[i]>(11493+offset0))
{
	if(input[i]==(11495+offset0))
{
	vR[i] = 11495;
}
else
{
	vR[i] = 11494;
}

}
else
{
	if(input[i]==(11493+offset0))
{
	vR[i] = 11493;
}
else
{
	vR[i] = 11492;
}

}

}
else
{
	if(input[i]>(11489+offset0))
{
	if(input[i]==(11491+offset0))
{
	vR[i] = 11491;
}
else
{
	vR[i] = 11490;
}

}
else
{
	if(input[i]==(11489+offset0))
{
	vR[i] = 11489;
}
else
{
	vR[i] = 11488;
}

}

}

}

}

}
else
{
	if(input[i]>(11471+offset0))
{
	if(input[i]>(11479+offset0))
{
	if(input[i]>(11483+offset0))
{
	if(input[i]>(11485+offset0))
{
	if(input[i]==(11487+offset0))
{
	vR[i] = 11487;
}
else
{
	vR[i] = 11486;
}

}
else
{
	if(input[i]==(11485+offset0))
{
	vR[i] = 11485;
}
else
{
	vR[i] = 11484;
}

}

}
else
{
	if(input[i]>(11481+offset0))
{
	if(input[i]==(11483+offset0))
{
	vR[i] = 11483;
}
else
{
	vR[i] = 11482;
}

}
else
{
	if(input[i]==(11481+offset0))
{
	vR[i] = 11481;
}
else
{
	vR[i] = 11480;
}

}

}

}
else
{
	if(input[i]>(11475+offset0))
{
	if(input[i]>(11477+offset0))
{
	if(input[i]==(11479+offset0))
{
	vR[i] = 11479;
}
else
{
	vR[i] = 11478;
}

}
else
{
	if(input[i]==(11477+offset0))
{
	vR[i] = 11477;
}
else
{
	vR[i] = 11476;
}

}

}
else
{
	if(input[i]>(11473+offset0))
{
	if(input[i]==(11475+offset0))
{
	vR[i] = 11475;
}
else
{
	vR[i] = 11474;
}

}
else
{
	if(input[i]==(11473+offset0))
{
	vR[i] = 11473;
}
else
{
	vR[i] = 11472;
}

}

}

}

}
else
{
	if(input[i]>(11463+offset0))
{
	if(input[i]>(11467+offset0))
{
	if(input[i]>(11469+offset0))
{
	if(input[i]==(11471+offset0))
{
	vR[i] = 11471;
}
else
{
	vR[i] = 11470;
}

}
else
{
	if(input[i]==(11469+offset0))
{
	vR[i] = 11469;
}
else
{
	vR[i] = 11468;
}

}

}
else
{
	if(input[i]>(11465+offset0))
{
	if(input[i]==(11467+offset0))
{
	vR[i] = 11467;
}
else
{
	vR[i] = 11466;
}

}
else
{
	if(input[i]==(11465+offset0))
{
	vR[i] = 11465;
}
else
{
	vR[i] = 11464;
}

}

}

}
else
{
	if(input[i]>(11459+offset0))
{
	if(input[i]>(11461+offset0))
{
	if(input[i]==(11463+offset0))
{
	vR[i] = 11463;
}
else
{
	vR[i] = 11462;
}

}
else
{
	if(input[i]==(11461+offset0))
{
	vR[i] = 11461;
}
else
{
	vR[i] = 11460;
}

}

}
else
{
	if(input[i]>(11457+offset0))
{
	if(input[i]==(11459+offset0))
{
	vR[i] = 11459;
}
else
{
	vR[i] = 11458;
}

}
else
{
	if(input[i]==(11457+offset0))
{
	vR[i] = 11457;
}
else
{
	vR[i] = 11456;
}

}

}

}

}

}

}
else
{
	if(input[i]>(11423+offset0))
{
	if(input[i]>(11439+offset0))
{
	if(input[i]>(11447+offset0))
{
	if(input[i]>(11451+offset0))
{
	if(input[i]>(11453+offset0))
{
	if(input[i]==(11455+offset0))
{
	vR[i] = 11455;
}
else
{
	vR[i] = 11454;
}

}
else
{
	if(input[i]==(11453+offset0))
{
	vR[i] = 11453;
}
else
{
	vR[i] = 11452;
}

}

}
else
{
	if(input[i]>(11449+offset0))
{
	if(input[i]==(11451+offset0))
{
	vR[i] = 11451;
}
else
{
	vR[i] = 11450;
}

}
else
{
	if(input[i]==(11449+offset0))
{
	vR[i] = 11449;
}
else
{
	vR[i] = 11448;
}

}

}

}
else
{
	if(input[i]>(11443+offset0))
{
	if(input[i]>(11445+offset0))
{
	if(input[i]==(11447+offset0))
{
	vR[i] = 11447;
}
else
{
	vR[i] = 11446;
}

}
else
{
	if(input[i]==(11445+offset0))
{
	vR[i] = 11445;
}
else
{
	vR[i] = 11444;
}

}

}
else
{
	if(input[i]>(11441+offset0))
{
	if(input[i]==(11443+offset0))
{
	vR[i] = 11443;
}
else
{
	vR[i] = 11442;
}

}
else
{
	if(input[i]==(11441+offset0))
{
	vR[i] = 11441;
}
else
{
	vR[i] = 11440;
}

}

}

}

}
else
{
	if(input[i]>(11431+offset0))
{
	if(input[i]>(11435+offset0))
{
	if(input[i]>(11437+offset0))
{
	if(input[i]==(11439+offset0))
{
	vR[i] = 11439;
}
else
{
	vR[i] = 11438;
}

}
else
{
	if(input[i]==(11437+offset0))
{
	vR[i] = 11437;
}
else
{
	vR[i] = 11436;
}

}

}
else
{
	if(input[i]>(11433+offset0))
{
	if(input[i]==(11435+offset0))
{
	vR[i] = 11435;
}
else
{
	vR[i] = 11434;
}

}
else
{
	if(input[i]==(11433+offset0))
{
	vR[i] = 11433;
}
else
{
	vR[i] = 11432;
}

}

}

}
else
{
	if(input[i]>(11427+offset0))
{
	if(input[i]>(11429+offset0))
{
	if(input[i]==(11431+offset0))
{
	vR[i] = 11431;
}
else
{
	vR[i] = 11430;
}

}
else
{
	if(input[i]==(11429+offset0))
{
	vR[i] = 11429;
}
else
{
	vR[i] = 11428;
}

}

}
else
{
	if(input[i]>(11425+offset0))
{
	if(input[i]==(11427+offset0))
{
	vR[i] = 11427;
}
else
{
	vR[i] = 11426;
}

}
else
{
	if(input[i]==(11425+offset0))
{
	vR[i] = 11425;
}
else
{
	vR[i] = 11424;
}

}

}

}

}

}
else
{
	if(input[i]>(11407+offset0))
{
	if(input[i]>(11415+offset0))
{
	if(input[i]>(11419+offset0))
{
	if(input[i]>(11421+offset0))
{
	if(input[i]==(11423+offset0))
{
	vR[i] = 11423;
}
else
{
	vR[i] = 11422;
}

}
else
{
	if(input[i]==(11421+offset0))
{
	vR[i] = 11421;
}
else
{
	vR[i] = 11420;
}

}

}
else
{
	if(input[i]>(11417+offset0))
{
	if(input[i]==(11419+offset0))
{
	vR[i] = 11419;
}
else
{
	vR[i] = 11418;
}

}
else
{
	if(input[i]==(11417+offset0))
{
	vR[i] = 11417;
}
else
{
	vR[i] = 11416;
}

}

}

}
else
{
	if(input[i]>(11411+offset0))
{
	if(input[i]>(11413+offset0))
{
	if(input[i]==(11415+offset0))
{
	vR[i] = 11415;
}
else
{
	vR[i] = 11414;
}

}
else
{
	if(input[i]==(11413+offset0))
{
	vR[i] = 11413;
}
else
{
	vR[i] = 11412;
}

}

}
else
{
	if(input[i]>(11409+offset0))
{
	if(input[i]==(11411+offset0))
{
	vR[i] = 11411;
}
else
{
	vR[i] = 11410;
}

}
else
{
	if(input[i]==(11409+offset0))
{
	vR[i] = 11409;
}
else
{
	vR[i] = 11408;
}

}

}

}

}
else
{
	if(input[i]>(11399+offset0))
{
	if(input[i]>(11403+offset0))
{
	if(input[i]>(11405+offset0))
{
	if(input[i]==(11407+offset0))
{
	vR[i] = 11407;
}
else
{
	vR[i] = 11406;
}

}
else
{
	if(input[i]==(11405+offset0))
{
	vR[i] = 11405;
}
else
{
	vR[i] = 11404;
}

}

}
else
{
	if(input[i]>(11401+offset0))
{
	if(input[i]==(11403+offset0))
{
	vR[i] = 11403;
}
else
{
	vR[i] = 11402;
}

}
else
{
	if(input[i]==(11401+offset0))
{
	vR[i] = 11401;
}
else
{
	vR[i] = 11400;
}

}

}

}
else
{
	if(input[i]>(11395+offset0))
{
	if(input[i]>(11397+offset0))
{
	if(input[i]==(11399+offset0))
{
	vR[i] = 11399;
}
else
{
	vR[i] = 11398;
}

}
else
{
	if(input[i]==(11397+offset0))
{
	vR[i] = 11397;
}
else
{
	vR[i] = 11396;
}

}

}
else
{
	if(input[i]>(11393+offset0))
{
	if(input[i]==(11395+offset0))
{
	vR[i] = 11395;
}
else
{
	vR[i] = 11394;
}

}
else
{
	if(input[i]==(11393+offset0))
{
	vR[i] = 11393;
}
else
{
	vR[i] = 11392;
}

}

}

}

}

}

}

}
else
{
	if(input[i]>(11327+offset0))
{
	if(input[i]>(11359+offset0))
{
	if(input[i]>(11375+offset0))
{
	if(input[i]>(11383+offset0))
{
	if(input[i]>(11387+offset0))
{
	if(input[i]>(11389+offset0))
{
	if(input[i]==(11391+offset0))
{
	vR[i] = 11391;
}
else
{
	vR[i] = 11390;
}

}
else
{
	if(input[i]==(11389+offset0))
{
	vR[i] = 11389;
}
else
{
	vR[i] = 11388;
}

}

}
else
{
	if(input[i]>(11385+offset0))
{
	if(input[i]==(11387+offset0))
{
	vR[i] = 11387;
}
else
{
	vR[i] = 11386;
}

}
else
{
	if(input[i]==(11385+offset0))
{
	vR[i] = 11385;
}
else
{
	vR[i] = 11384;
}

}

}

}
else
{
	if(input[i]>(11379+offset0))
{
	if(input[i]>(11381+offset0))
{
	if(input[i]==(11383+offset0))
{
	vR[i] = 11383;
}
else
{
	vR[i] = 11382;
}

}
else
{
	if(input[i]==(11381+offset0))
{
	vR[i] = 11381;
}
else
{
	vR[i] = 11380;
}

}

}
else
{
	if(input[i]>(11377+offset0))
{
	if(input[i]==(11379+offset0))
{
	vR[i] = 11379;
}
else
{
	vR[i] = 11378;
}

}
else
{
	if(input[i]==(11377+offset0))
{
	vR[i] = 11377;
}
else
{
	vR[i] = 11376;
}

}

}

}

}
else
{
	if(input[i]>(11367+offset0))
{
	if(input[i]>(11371+offset0))
{
	if(input[i]>(11373+offset0))
{
	if(input[i]==(11375+offset0))
{
	vR[i] = 11375;
}
else
{
	vR[i] = 11374;
}

}
else
{
	if(input[i]==(11373+offset0))
{
	vR[i] = 11373;
}
else
{
	vR[i] = 11372;
}

}

}
else
{
	if(input[i]>(11369+offset0))
{
	if(input[i]==(11371+offset0))
{
	vR[i] = 11371;
}
else
{
	vR[i] = 11370;
}

}
else
{
	if(input[i]==(11369+offset0))
{
	vR[i] = 11369;
}
else
{
	vR[i] = 11368;
}

}

}

}
else
{
	if(input[i]>(11363+offset0))
{
	if(input[i]>(11365+offset0))
{
	if(input[i]==(11367+offset0))
{
	vR[i] = 11367;
}
else
{
	vR[i] = 11366;
}

}
else
{
	if(input[i]==(11365+offset0))
{
	vR[i] = 11365;
}
else
{
	vR[i] = 11364;
}

}

}
else
{
	if(input[i]>(11361+offset0))
{
	if(input[i]==(11363+offset0))
{
	vR[i] = 11363;
}
else
{
	vR[i] = 11362;
}

}
else
{
	if(input[i]==(11361+offset0))
{
	vR[i] = 11361;
}
else
{
	vR[i] = 11360;
}

}

}

}

}

}
else
{
	if(input[i]>(11343+offset0))
{
	if(input[i]>(11351+offset0))
{
	if(input[i]>(11355+offset0))
{
	if(input[i]>(11357+offset0))
{
	if(input[i]==(11359+offset0))
{
	vR[i] = 11359;
}
else
{
	vR[i] = 11358;
}

}
else
{
	if(input[i]==(11357+offset0))
{
	vR[i] = 11357;
}
else
{
	vR[i] = 11356;
}

}

}
else
{
	if(input[i]>(11353+offset0))
{
	if(input[i]==(11355+offset0))
{
	vR[i] = 11355;
}
else
{
	vR[i] = 11354;
}

}
else
{
	if(input[i]==(11353+offset0))
{
	vR[i] = 11353;
}
else
{
	vR[i] = 11352;
}

}

}

}
else
{
	if(input[i]>(11347+offset0))
{
	if(input[i]>(11349+offset0))
{
	if(input[i]==(11351+offset0))
{
	vR[i] = 11351;
}
else
{
	vR[i] = 11350;
}

}
else
{
	if(input[i]==(11349+offset0))
{
	vR[i] = 11349;
}
else
{
	vR[i] = 11348;
}

}

}
else
{
	if(input[i]>(11345+offset0))
{
	if(input[i]==(11347+offset0))
{
	vR[i] = 11347;
}
else
{
	vR[i] = 11346;
}

}
else
{
	if(input[i]==(11345+offset0))
{
	vR[i] = 11345;
}
else
{
	vR[i] = 11344;
}

}

}

}

}
else
{
	if(input[i]>(11335+offset0))
{
	if(input[i]>(11339+offset0))
{
	if(input[i]>(11341+offset0))
{
	if(input[i]==(11343+offset0))
{
	vR[i] = 11343;
}
else
{
	vR[i] = 11342;
}

}
else
{
	if(input[i]==(11341+offset0))
{
	vR[i] = 11341;
}
else
{
	vR[i] = 11340;
}

}

}
else
{
	if(input[i]>(11337+offset0))
{
	if(input[i]==(11339+offset0))
{
	vR[i] = 11339;
}
else
{
	vR[i] = 11338;
}

}
else
{
	if(input[i]==(11337+offset0))
{
	vR[i] = 11337;
}
else
{
	vR[i] = 11336;
}

}

}

}
else
{
	if(input[i]>(11331+offset0))
{
	if(input[i]>(11333+offset0))
{
	if(input[i]==(11335+offset0))
{
	vR[i] = 11335;
}
else
{
	vR[i] = 11334;
}

}
else
{
	if(input[i]==(11333+offset0))
{
	vR[i] = 11333;
}
else
{
	vR[i] = 11332;
}

}

}
else
{
	if(input[i]>(11329+offset0))
{
	if(input[i]==(11331+offset0))
{
	vR[i] = 11331;
}
else
{
	vR[i] = 11330;
}

}
else
{
	if(input[i]==(11329+offset0))
{
	vR[i] = 11329;
}
else
{
	vR[i] = 11328;
}

}

}

}

}

}

}
else
{
	if(input[i]>(11295+offset0))
{
	if(input[i]>(11311+offset0))
{
	if(input[i]>(11319+offset0))
{
	if(input[i]>(11323+offset0))
{
	if(input[i]>(11325+offset0))
{
	if(input[i]==(11327+offset0))
{
	vR[i] = 11327;
}
else
{
	vR[i] = 11326;
}

}
else
{
	if(input[i]==(11325+offset0))
{
	vR[i] = 11325;
}
else
{
	vR[i] = 11324;
}

}

}
else
{
	if(input[i]>(11321+offset0))
{
	if(input[i]==(11323+offset0))
{
	vR[i] = 11323;
}
else
{
	vR[i] = 11322;
}

}
else
{
	if(input[i]==(11321+offset0))
{
	vR[i] = 11321;
}
else
{
	vR[i] = 11320;
}

}

}

}
else
{
	if(input[i]>(11315+offset0))
{
	if(input[i]>(11317+offset0))
{
	if(input[i]==(11319+offset0))
{
	vR[i] = 11319;
}
else
{
	vR[i] = 11318;
}

}
else
{
	if(input[i]==(11317+offset0))
{
	vR[i] = 11317;
}
else
{
	vR[i] = 11316;
}

}

}
else
{
	if(input[i]>(11313+offset0))
{
	if(input[i]==(11315+offset0))
{
	vR[i] = 11315;
}
else
{
	vR[i] = 11314;
}

}
else
{
	if(input[i]==(11313+offset0))
{
	vR[i] = 11313;
}
else
{
	vR[i] = 11312;
}

}

}

}

}
else
{
	if(input[i]>(11303+offset0))
{
	if(input[i]>(11307+offset0))
{
	if(input[i]>(11309+offset0))
{
	if(input[i]==(11311+offset0))
{
	vR[i] = 11311;
}
else
{
	vR[i] = 11310;
}

}
else
{
	if(input[i]==(11309+offset0))
{
	vR[i] = 11309;
}
else
{
	vR[i] = 11308;
}

}

}
else
{
	if(input[i]>(11305+offset0))
{
	if(input[i]==(11307+offset0))
{
	vR[i] = 11307;
}
else
{
	vR[i] = 11306;
}

}
else
{
	if(input[i]==(11305+offset0))
{
	vR[i] = 11305;
}
else
{
	vR[i] = 11304;
}

}

}

}
else
{
	if(input[i]>(11299+offset0))
{
	if(input[i]>(11301+offset0))
{
	if(input[i]==(11303+offset0))
{
	vR[i] = 11303;
}
else
{
	vR[i] = 11302;
}

}
else
{
	if(input[i]==(11301+offset0))
{
	vR[i] = 11301;
}
else
{
	vR[i] = 11300;
}

}

}
else
{
	if(input[i]>(11297+offset0))
{
	if(input[i]==(11299+offset0))
{
	vR[i] = 11299;
}
else
{
	vR[i] = 11298;
}

}
else
{
	if(input[i]==(11297+offset0))
{
	vR[i] = 11297;
}
else
{
	vR[i] = 11296;
}

}

}

}

}

}
else
{
	if(input[i]>(11279+offset0))
{
	if(input[i]>(11287+offset0))
{
	if(input[i]>(11291+offset0))
{
	if(input[i]>(11293+offset0))
{
	if(input[i]==(11295+offset0))
{
	vR[i] = 11295;
}
else
{
	vR[i] = 11294;
}

}
else
{
	if(input[i]==(11293+offset0))
{
	vR[i] = 11293;
}
else
{
	vR[i] = 11292;
}

}

}
else
{
	if(input[i]>(11289+offset0))
{
	if(input[i]==(11291+offset0))
{
	vR[i] = 11291;
}
else
{
	vR[i] = 11290;
}

}
else
{
	if(input[i]==(11289+offset0))
{
	vR[i] = 11289;
}
else
{
	vR[i] = 11288;
}

}

}

}
else
{
	if(input[i]>(11283+offset0))
{
	if(input[i]>(11285+offset0))
{
	if(input[i]==(11287+offset0))
{
	vR[i] = 11287;
}
else
{
	vR[i] = 11286;
}

}
else
{
	if(input[i]==(11285+offset0))
{
	vR[i] = 11285;
}
else
{
	vR[i] = 11284;
}

}

}
else
{
	if(input[i]>(11281+offset0))
{
	if(input[i]==(11283+offset0))
{
	vR[i] = 11283;
}
else
{
	vR[i] = 11282;
}

}
else
{
	if(input[i]==(11281+offset0))
{
	vR[i] = 11281;
}
else
{
	vR[i] = 11280;
}

}

}

}

}
else
{
	if(input[i]>(11271+offset0))
{
	if(input[i]>(11275+offset0))
{
	if(input[i]>(11277+offset0))
{
	if(input[i]==(11279+offset0))
{
	vR[i] = 11279;
}
else
{
	vR[i] = 11278;
}

}
else
{
	if(input[i]==(11277+offset0))
{
	vR[i] = 11277;
}
else
{
	vR[i] = 11276;
}

}

}
else
{
	if(input[i]>(11273+offset0))
{
	if(input[i]==(11275+offset0))
{
	vR[i] = 11275;
}
else
{
	vR[i] = 11274;
}

}
else
{
	if(input[i]==(11273+offset0))
{
	vR[i] = 11273;
}
else
{
	vR[i] = 11272;
}

}

}

}
else
{
	if(input[i]>(11267+offset0))
{
	if(input[i]>(11269+offset0))
{
	if(input[i]==(11271+offset0))
{
	vR[i] = 11271;
}
else
{
	vR[i] = 11270;
}

}
else
{
	if(input[i]==(11269+offset0))
{
	vR[i] = 11269;
}
else
{
	vR[i] = 11268;
}

}

}
else
{
	if(input[i]>(11265+offset0))
{
	if(input[i]==(11267+offset0))
{
	vR[i] = 11267;
}
else
{
	vR[i] = 11266;
}

}
else
{
	if(input[i]==(11265+offset0))
{
	vR[i] = 11265;
}
else
{
	vR[i] = 11264;
}

}

}

}

}

}

}

}

}

}

}
else
{
	if(input[i]>(10751+offset0))
{
	if(input[i]>(11007+offset0))
{
	if(input[i]>(11135+offset0))
{
	if(input[i]>(11199+offset0))
{
	if(input[i]>(11231+offset0))
{
	if(input[i]>(11247+offset0))
{
	if(input[i]>(11255+offset0))
{
	if(input[i]>(11259+offset0))
{
	if(input[i]>(11261+offset0))
{
	if(input[i]==(11263+offset0))
{
	vR[i] = 11263;
}
else
{
	vR[i] = 11262;
}

}
else
{
	if(input[i]==(11261+offset0))
{
	vR[i] = 11261;
}
else
{
	vR[i] = 11260;
}

}

}
else
{
	if(input[i]>(11257+offset0))
{
	if(input[i]==(11259+offset0))
{
	vR[i] = 11259;
}
else
{
	vR[i] = 11258;
}

}
else
{
	if(input[i]==(11257+offset0))
{
	vR[i] = 11257;
}
else
{
	vR[i] = 11256;
}

}

}

}
else
{
	if(input[i]>(11251+offset0))
{
	if(input[i]>(11253+offset0))
{
	if(input[i]==(11255+offset0))
{
	vR[i] = 11255;
}
else
{
	vR[i] = 11254;
}

}
else
{
	if(input[i]==(11253+offset0))
{
	vR[i] = 11253;
}
else
{
	vR[i] = 11252;
}

}

}
else
{
	if(input[i]>(11249+offset0))
{
	if(input[i]==(11251+offset0))
{
	vR[i] = 11251;
}
else
{
	vR[i] = 11250;
}

}
else
{
	if(input[i]==(11249+offset0))
{
	vR[i] = 11249;
}
else
{
	vR[i] = 11248;
}

}

}

}

}
else
{
	if(input[i]>(11239+offset0))
{
	if(input[i]>(11243+offset0))
{
	if(input[i]>(11245+offset0))
{
	if(input[i]==(11247+offset0))
{
	vR[i] = 11247;
}
else
{
	vR[i] = 11246;
}

}
else
{
	if(input[i]==(11245+offset0))
{
	vR[i] = 11245;
}
else
{
	vR[i] = 11244;
}

}

}
else
{
	if(input[i]>(11241+offset0))
{
	if(input[i]==(11243+offset0))
{
	vR[i] = 11243;
}
else
{
	vR[i] = 11242;
}

}
else
{
	if(input[i]==(11241+offset0))
{
	vR[i] = 11241;
}
else
{
	vR[i] = 11240;
}

}

}

}
else
{
	if(input[i]>(11235+offset0))
{
	if(input[i]>(11237+offset0))
{
	if(input[i]==(11239+offset0))
{
	vR[i] = 11239;
}
else
{
	vR[i] = 11238;
}

}
else
{
	if(input[i]==(11237+offset0))
{
	vR[i] = 11237;
}
else
{
	vR[i] = 11236;
}

}

}
else
{
	if(input[i]>(11233+offset0))
{
	if(input[i]==(11235+offset0))
{
	vR[i] = 11235;
}
else
{
	vR[i] = 11234;
}

}
else
{
	if(input[i]==(11233+offset0))
{
	vR[i] = 11233;
}
else
{
	vR[i] = 11232;
}

}

}

}

}

}
else
{
	if(input[i]>(11215+offset0))
{
	if(input[i]>(11223+offset0))
{
	if(input[i]>(11227+offset0))
{
	if(input[i]>(11229+offset0))
{
	if(input[i]==(11231+offset0))
{
	vR[i] = 11231;
}
else
{
	vR[i] = 11230;
}

}
else
{
	if(input[i]==(11229+offset0))
{
	vR[i] = 11229;
}
else
{
	vR[i] = 11228;
}

}

}
else
{
	if(input[i]>(11225+offset0))
{
	if(input[i]==(11227+offset0))
{
	vR[i] = 11227;
}
else
{
	vR[i] = 11226;
}

}
else
{
	if(input[i]==(11225+offset0))
{
	vR[i] = 11225;
}
else
{
	vR[i] = 11224;
}

}

}

}
else
{
	if(input[i]>(11219+offset0))
{
	if(input[i]>(11221+offset0))
{
	if(input[i]==(11223+offset0))
{
	vR[i] = 11223;
}
else
{
	vR[i] = 11222;
}

}
else
{
	if(input[i]==(11221+offset0))
{
	vR[i] = 11221;
}
else
{
	vR[i] = 11220;
}

}

}
else
{
	if(input[i]>(11217+offset0))
{
	if(input[i]==(11219+offset0))
{
	vR[i] = 11219;
}
else
{
	vR[i] = 11218;
}

}
else
{
	if(input[i]==(11217+offset0))
{
	vR[i] = 11217;
}
else
{
	vR[i] = 11216;
}

}

}

}

}
else
{
	if(input[i]>(11207+offset0))
{
	if(input[i]>(11211+offset0))
{
	if(input[i]>(11213+offset0))
{
	if(input[i]==(11215+offset0))
{
	vR[i] = 11215;
}
else
{
	vR[i] = 11214;
}

}
else
{
	if(input[i]==(11213+offset0))
{
	vR[i] = 11213;
}
else
{
	vR[i] = 11212;
}

}

}
else
{
	if(input[i]>(11209+offset0))
{
	if(input[i]==(11211+offset0))
{
	vR[i] = 11211;
}
else
{
	vR[i] = 11210;
}

}
else
{
	if(input[i]==(11209+offset0))
{
	vR[i] = 11209;
}
else
{
	vR[i] = 11208;
}

}

}

}
else
{
	if(input[i]>(11203+offset0))
{
	if(input[i]>(11205+offset0))
{
	if(input[i]==(11207+offset0))
{
	vR[i] = 11207;
}
else
{
	vR[i] = 11206;
}

}
else
{
	if(input[i]==(11205+offset0))
{
	vR[i] = 11205;
}
else
{
	vR[i] = 11204;
}

}

}
else
{
	if(input[i]>(11201+offset0))
{
	if(input[i]==(11203+offset0))
{
	vR[i] = 11203;
}
else
{
	vR[i] = 11202;
}

}
else
{
	if(input[i]==(11201+offset0))
{
	vR[i] = 11201;
}
else
{
	vR[i] = 11200;
}

}

}

}

}

}

}
else
{
	if(input[i]>(11167+offset0))
{
	if(input[i]>(11183+offset0))
{
	if(input[i]>(11191+offset0))
{
	if(input[i]>(11195+offset0))
{
	if(input[i]>(11197+offset0))
{
	if(input[i]==(11199+offset0))
{
	vR[i] = 11199;
}
else
{
	vR[i] = 11198;
}

}
else
{
	if(input[i]==(11197+offset0))
{
	vR[i] = 11197;
}
else
{
	vR[i] = 11196;
}

}

}
else
{
	if(input[i]>(11193+offset0))
{
	if(input[i]==(11195+offset0))
{
	vR[i] = 11195;
}
else
{
	vR[i] = 11194;
}

}
else
{
	if(input[i]==(11193+offset0))
{
	vR[i] = 11193;
}
else
{
	vR[i] = 11192;
}

}

}

}
else
{
	if(input[i]>(11187+offset0))
{
	if(input[i]>(11189+offset0))
{
	if(input[i]==(11191+offset0))
{
	vR[i] = 11191;
}
else
{
	vR[i] = 11190;
}

}
else
{
	if(input[i]==(11189+offset0))
{
	vR[i] = 11189;
}
else
{
	vR[i] = 11188;
}

}

}
else
{
	if(input[i]>(11185+offset0))
{
	if(input[i]==(11187+offset0))
{
	vR[i] = 11187;
}
else
{
	vR[i] = 11186;
}

}
else
{
	if(input[i]==(11185+offset0))
{
	vR[i] = 11185;
}
else
{
	vR[i] = 11184;
}

}

}

}

}
else
{
	if(input[i]>(11175+offset0))
{
	if(input[i]>(11179+offset0))
{
	if(input[i]>(11181+offset0))
{
	if(input[i]==(11183+offset0))
{
	vR[i] = 11183;
}
else
{
	vR[i] = 11182;
}

}
else
{
	if(input[i]==(11181+offset0))
{
	vR[i] = 11181;
}
else
{
	vR[i] = 11180;
}

}

}
else
{
	if(input[i]>(11177+offset0))
{
	if(input[i]==(11179+offset0))
{
	vR[i] = 11179;
}
else
{
	vR[i] = 11178;
}

}
else
{
	if(input[i]==(11177+offset0))
{
	vR[i] = 11177;
}
else
{
	vR[i] = 11176;
}

}

}

}
else
{
	if(input[i]>(11171+offset0))
{
	if(input[i]>(11173+offset0))
{
	if(input[i]==(11175+offset0))
{
	vR[i] = 11175;
}
else
{
	vR[i] = 11174;
}

}
else
{
	if(input[i]==(11173+offset0))
{
	vR[i] = 11173;
}
else
{
	vR[i] = 11172;
}

}

}
else
{
	if(input[i]>(11169+offset0))
{
	if(input[i]==(11171+offset0))
{
	vR[i] = 11171;
}
else
{
	vR[i] = 11170;
}

}
else
{
	if(input[i]==(11169+offset0))
{
	vR[i] = 11169;
}
else
{
	vR[i] = 11168;
}

}

}

}

}

}
else
{
	if(input[i]>(11151+offset0))
{
	if(input[i]>(11159+offset0))
{
	if(input[i]>(11163+offset0))
{
	if(input[i]>(11165+offset0))
{
	if(input[i]==(11167+offset0))
{
	vR[i] = 11167;
}
else
{
	vR[i] = 11166;
}

}
else
{
	if(input[i]==(11165+offset0))
{
	vR[i] = 11165;
}
else
{
	vR[i] = 11164;
}

}

}
else
{
	if(input[i]>(11161+offset0))
{
	if(input[i]==(11163+offset0))
{
	vR[i] = 11163;
}
else
{
	vR[i] = 11162;
}

}
else
{
	if(input[i]==(11161+offset0))
{
	vR[i] = 11161;
}
else
{
	vR[i] = 11160;
}

}

}

}
else
{
	if(input[i]>(11155+offset0))
{
	if(input[i]>(11157+offset0))
{
	if(input[i]==(11159+offset0))
{
	vR[i] = 11159;
}
else
{
	vR[i] = 11158;
}

}
else
{
	if(input[i]==(11157+offset0))
{
	vR[i] = 11157;
}
else
{
	vR[i] = 11156;
}

}

}
else
{
	if(input[i]>(11153+offset0))
{
	if(input[i]==(11155+offset0))
{
	vR[i] = 11155;
}
else
{
	vR[i] = 11154;
}

}
else
{
	if(input[i]==(11153+offset0))
{
	vR[i] = 11153;
}
else
{
	vR[i] = 11152;
}

}

}

}

}
else
{
	if(input[i]>(11143+offset0))
{
	if(input[i]>(11147+offset0))
{
	if(input[i]>(11149+offset0))
{
	if(input[i]==(11151+offset0))
{
	vR[i] = 11151;
}
else
{
	vR[i] = 11150;
}

}
else
{
	if(input[i]==(11149+offset0))
{
	vR[i] = 11149;
}
else
{
	vR[i] = 11148;
}

}

}
else
{
	if(input[i]>(11145+offset0))
{
	if(input[i]==(11147+offset0))
{
	vR[i] = 11147;
}
else
{
	vR[i] = 11146;
}

}
else
{
	if(input[i]==(11145+offset0))
{
	vR[i] = 11145;
}
else
{
	vR[i] = 11144;
}

}

}

}
else
{
	if(input[i]>(11139+offset0))
{
	if(input[i]>(11141+offset0))
{
	if(input[i]==(11143+offset0))
{
	vR[i] = 11143;
}
else
{
	vR[i] = 11142;
}

}
else
{
	if(input[i]==(11141+offset0))
{
	vR[i] = 11141;
}
else
{
	vR[i] = 11140;
}

}

}
else
{
	if(input[i]>(11137+offset0))
{
	if(input[i]==(11139+offset0))
{
	vR[i] = 11139;
}
else
{
	vR[i] = 11138;
}

}
else
{
	if(input[i]==(11137+offset0))
{
	vR[i] = 11137;
}
else
{
	vR[i] = 11136;
}

}

}

}

}

}

}

}
else
{
	if(input[i]>(11071+offset0))
{
	if(input[i]>(11103+offset0))
{
	if(input[i]>(11119+offset0))
{
	if(input[i]>(11127+offset0))
{
	if(input[i]>(11131+offset0))
{
	if(input[i]>(11133+offset0))
{
	if(input[i]==(11135+offset0))
{
	vR[i] = 11135;
}
else
{
	vR[i] = 11134;
}

}
else
{
	if(input[i]==(11133+offset0))
{
	vR[i] = 11133;
}
else
{
	vR[i] = 11132;
}

}

}
else
{
	if(input[i]>(11129+offset0))
{
	if(input[i]==(11131+offset0))
{
	vR[i] = 11131;
}
else
{
	vR[i] = 11130;
}

}
else
{
	if(input[i]==(11129+offset0))
{
	vR[i] = 11129;
}
else
{
	vR[i] = 11128;
}

}

}

}
else
{
	if(input[i]>(11123+offset0))
{
	if(input[i]>(11125+offset0))
{
	if(input[i]==(11127+offset0))
{
	vR[i] = 11127;
}
else
{
	vR[i] = 11126;
}

}
else
{
	if(input[i]==(11125+offset0))
{
	vR[i] = 11125;
}
else
{
	vR[i] = 11124;
}

}

}
else
{
	if(input[i]>(11121+offset0))
{
	if(input[i]==(11123+offset0))
{
	vR[i] = 11123;
}
else
{
	vR[i] = 11122;
}

}
else
{
	if(input[i]==(11121+offset0))
{
	vR[i] = 11121;
}
else
{
	vR[i] = 11120;
}

}

}

}

}
else
{
	if(input[i]>(11111+offset0))
{
	if(input[i]>(11115+offset0))
{
	if(input[i]>(11117+offset0))
{
	if(input[i]==(11119+offset0))
{
	vR[i] = 11119;
}
else
{
	vR[i] = 11118;
}

}
else
{
	if(input[i]==(11117+offset0))
{
	vR[i] = 11117;
}
else
{
	vR[i] = 11116;
}

}

}
else
{
	if(input[i]>(11113+offset0))
{
	if(input[i]==(11115+offset0))
{
	vR[i] = 11115;
}
else
{
	vR[i] = 11114;
}

}
else
{
	if(input[i]==(11113+offset0))
{
	vR[i] = 11113;
}
else
{
	vR[i] = 11112;
}

}

}

}
else
{
	if(input[i]>(11107+offset0))
{
	if(input[i]>(11109+offset0))
{
	if(input[i]==(11111+offset0))
{
	vR[i] = 11111;
}
else
{
	vR[i] = 11110;
}

}
else
{
	if(input[i]==(11109+offset0))
{
	vR[i] = 11109;
}
else
{
	vR[i] = 11108;
}

}

}
else
{
	if(input[i]>(11105+offset0))
{
	if(input[i]==(11107+offset0))
{
	vR[i] = 11107;
}
else
{
	vR[i] = 11106;
}

}
else
{
	if(input[i]==(11105+offset0))
{
	vR[i] = 11105;
}
else
{
	vR[i] = 11104;
}

}

}

}

}

}
else
{
	if(input[i]>(11087+offset0))
{
	if(input[i]>(11095+offset0))
{
	if(input[i]>(11099+offset0))
{
	if(input[i]>(11101+offset0))
{
	if(input[i]==(11103+offset0))
{
	vR[i] = 11103;
}
else
{
	vR[i] = 11102;
}

}
else
{
	if(input[i]==(11101+offset0))
{
	vR[i] = 11101;
}
else
{
	vR[i] = 11100;
}

}

}
else
{
	if(input[i]>(11097+offset0))
{
	if(input[i]==(11099+offset0))
{
	vR[i] = 11099;
}
else
{
	vR[i] = 11098;
}

}
else
{
	if(input[i]==(11097+offset0))
{
	vR[i] = 11097;
}
else
{
	vR[i] = 11096;
}

}

}

}
else
{
	if(input[i]>(11091+offset0))
{
	if(input[i]>(11093+offset0))
{
	if(input[i]==(11095+offset0))
{
	vR[i] = 11095;
}
else
{
	vR[i] = 11094;
}

}
else
{
	if(input[i]==(11093+offset0))
{
	vR[i] = 11093;
}
else
{
	vR[i] = 11092;
}

}

}
else
{
	if(input[i]>(11089+offset0))
{
	if(input[i]==(11091+offset0))
{
	vR[i] = 11091;
}
else
{
	vR[i] = 11090;
}

}
else
{
	if(input[i]==(11089+offset0))
{
	vR[i] = 11089;
}
else
{
	vR[i] = 11088;
}

}

}

}

}
else
{
	if(input[i]>(11079+offset0))
{
	if(input[i]>(11083+offset0))
{
	if(input[i]>(11085+offset0))
{
	if(input[i]==(11087+offset0))
{
	vR[i] = 11087;
}
else
{
	vR[i] = 11086;
}

}
else
{
	if(input[i]==(11085+offset0))
{
	vR[i] = 11085;
}
else
{
	vR[i] = 11084;
}

}

}
else
{
	if(input[i]>(11081+offset0))
{
	if(input[i]==(11083+offset0))
{
	vR[i] = 11083;
}
else
{
	vR[i] = 11082;
}

}
else
{
	if(input[i]==(11081+offset0))
{
	vR[i] = 11081;
}
else
{
	vR[i] = 11080;
}

}

}

}
else
{
	if(input[i]>(11075+offset0))
{
	if(input[i]>(11077+offset0))
{
	if(input[i]==(11079+offset0))
{
	vR[i] = 11079;
}
else
{
	vR[i] = 11078;
}

}
else
{
	if(input[i]==(11077+offset0))
{
	vR[i] = 11077;
}
else
{
	vR[i] = 11076;
}

}

}
else
{
	if(input[i]>(11073+offset0))
{
	if(input[i]==(11075+offset0))
{
	vR[i] = 11075;
}
else
{
	vR[i] = 11074;
}

}
else
{
	if(input[i]==(11073+offset0))
{
	vR[i] = 11073;
}
else
{
	vR[i] = 11072;
}

}

}

}

}

}

}
else
{
	if(input[i]>(11039+offset0))
{
	if(input[i]>(11055+offset0))
{
	if(input[i]>(11063+offset0))
{
	if(input[i]>(11067+offset0))
{
	if(input[i]>(11069+offset0))
{
	if(input[i]==(11071+offset0))
{
	vR[i] = 11071;
}
else
{
	vR[i] = 11070;
}

}
else
{
	if(input[i]==(11069+offset0))
{
	vR[i] = 11069;
}
else
{
	vR[i] = 11068;
}

}

}
else
{
	if(input[i]>(11065+offset0))
{
	if(input[i]==(11067+offset0))
{
	vR[i] = 11067;
}
else
{
	vR[i] = 11066;
}

}
else
{
	if(input[i]==(11065+offset0))
{
	vR[i] = 11065;
}
else
{
	vR[i] = 11064;
}

}

}

}
else
{
	if(input[i]>(11059+offset0))
{
	if(input[i]>(11061+offset0))
{
	if(input[i]==(11063+offset0))
{
	vR[i] = 11063;
}
else
{
	vR[i] = 11062;
}

}
else
{
	if(input[i]==(11061+offset0))
{
	vR[i] = 11061;
}
else
{
	vR[i] = 11060;
}

}

}
else
{
	if(input[i]>(11057+offset0))
{
	if(input[i]==(11059+offset0))
{
	vR[i] = 11059;
}
else
{
	vR[i] = 11058;
}

}
else
{
	if(input[i]==(11057+offset0))
{
	vR[i] = 11057;
}
else
{
	vR[i] = 11056;
}

}

}

}

}
else
{
	if(input[i]>(11047+offset0))
{
	if(input[i]>(11051+offset0))
{
	if(input[i]>(11053+offset0))
{
	if(input[i]==(11055+offset0))
{
	vR[i] = 11055;
}
else
{
	vR[i] = 11054;
}

}
else
{
	if(input[i]==(11053+offset0))
{
	vR[i] = 11053;
}
else
{
	vR[i] = 11052;
}

}

}
else
{
	if(input[i]>(11049+offset0))
{
	if(input[i]==(11051+offset0))
{
	vR[i] = 11051;
}
else
{
	vR[i] = 11050;
}

}
else
{
	if(input[i]==(11049+offset0))
{
	vR[i] = 11049;
}
else
{
	vR[i] = 11048;
}

}

}

}
else
{
	if(input[i]>(11043+offset0))
{
	if(input[i]>(11045+offset0))
{
	if(input[i]==(11047+offset0))
{
	vR[i] = 11047;
}
else
{
	vR[i] = 11046;
}

}
else
{
	if(input[i]==(11045+offset0))
{
	vR[i] = 11045;
}
else
{
	vR[i] = 11044;
}

}

}
else
{
	if(input[i]>(11041+offset0))
{
	if(input[i]==(11043+offset0))
{
	vR[i] = 11043;
}
else
{
	vR[i] = 11042;
}

}
else
{
	if(input[i]==(11041+offset0))
{
	vR[i] = 11041;
}
else
{
	vR[i] = 11040;
}

}

}

}

}

}
else
{
	if(input[i]>(11023+offset0))
{
	if(input[i]>(11031+offset0))
{
	if(input[i]>(11035+offset0))
{
	if(input[i]>(11037+offset0))
{
	if(input[i]==(11039+offset0))
{
	vR[i] = 11039;
}
else
{
	vR[i] = 11038;
}

}
else
{
	if(input[i]==(11037+offset0))
{
	vR[i] = 11037;
}
else
{
	vR[i] = 11036;
}

}

}
else
{
	if(input[i]>(11033+offset0))
{
	if(input[i]==(11035+offset0))
{
	vR[i] = 11035;
}
else
{
	vR[i] = 11034;
}

}
else
{
	if(input[i]==(11033+offset0))
{
	vR[i] = 11033;
}
else
{
	vR[i] = 11032;
}

}

}

}
else
{
	if(input[i]>(11027+offset0))
{
	if(input[i]>(11029+offset0))
{
	if(input[i]==(11031+offset0))
{
	vR[i] = 11031;
}
else
{
	vR[i] = 11030;
}

}
else
{
	if(input[i]==(11029+offset0))
{
	vR[i] = 11029;
}
else
{
	vR[i] = 11028;
}

}

}
else
{
	if(input[i]>(11025+offset0))
{
	if(input[i]==(11027+offset0))
{
	vR[i] = 11027;
}
else
{
	vR[i] = 11026;
}

}
else
{
	if(input[i]==(11025+offset0))
{
	vR[i] = 11025;
}
else
{
	vR[i] = 11024;
}

}

}

}

}
else
{
	if(input[i]>(11015+offset0))
{
	if(input[i]>(11019+offset0))
{
	if(input[i]>(11021+offset0))
{
	if(input[i]==(11023+offset0))
{
	vR[i] = 11023;
}
else
{
	vR[i] = 11022;
}

}
else
{
	if(input[i]==(11021+offset0))
{
	vR[i] = 11021;
}
else
{
	vR[i] = 11020;
}

}

}
else
{
	if(input[i]>(11017+offset0))
{
	if(input[i]==(11019+offset0))
{
	vR[i] = 11019;
}
else
{
	vR[i] = 11018;
}

}
else
{
	if(input[i]==(11017+offset0))
{
	vR[i] = 11017;
}
else
{
	vR[i] = 11016;
}

}

}

}
else
{
	if(input[i]>(11011+offset0))
{
	if(input[i]>(11013+offset0))
{
	if(input[i]==(11015+offset0))
{
	vR[i] = 11015;
}
else
{
	vR[i] = 11014;
}

}
else
{
	if(input[i]==(11013+offset0))
{
	vR[i] = 11013;
}
else
{
	vR[i] = 11012;
}

}

}
else
{
	if(input[i]>(11009+offset0))
{
	if(input[i]==(11011+offset0))
{
	vR[i] = 11011;
}
else
{
	vR[i] = 11010;
}

}
else
{
	if(input[i]==(11009+offset0))
{
	vR[i] = 11009;
}
else
{
	vR[i] = 11008;
}

}

}

}

}

}

}

}

}
else
{
	if(input[i]>(10879+offset0))
{
	if(input[i]>(10943+offset0))
{
	if(input[i]>(10975+offset0))
{
	if(input[i]>(10991+offset0))
{
	if(input[i]>(10999+offset0))
{
	if(input[i]>(11003+offset0))
{
	if(input[i]>(11005+offset0))
{
	if(input[i]==(11007+offset0))
{
	vR[i] = 11007;
}
else
{
	vR[i] = 11006;
}

}
else
{
	if(input[i]==(11005+offset0))
{
	vR[i] = 11005;
}
else
{
	vR[i] = 11004;
}

}

}
else
{
	if(input[i]>(11001+offset0))
{
	if(input[i]==(11003+offset0))
{
	vR[i] = 11003;
}
else
{
	vR[i] = 11002;
}

}
else
{
	if(input[i]==(11001+offset0))
{
	vR[i] = 11001;
}
else
{
	vR[i] = 11000;
}

}

}

}
else
{
	if(input[i]>(10995+offset0))
{
	if(input[i]>(10997+offset0))
{
	if(input[i]==(10999+offset0))
{
	vR[i] = 10999;
}
else
{
	vR[i] = 10998;
}

}
else
{
	if(input[i]==(10997+offset0))
{
	vR[i] = 10997;
}
else
{
	vR[i] = 10996;
}

}

}
else
{
	if(input[i]>(10993+offset0))
{
	if(input[i]==(10995+offset0))
{
	vR[i] = 10995;
}
else
{
	vR[i] = 10994;
}

}
else
{
	if(input[i]==(10993+offset0))
{
	vR[i] = 10993;
}
else
{
	vR[i] = 10992;
}

}

}

}

}
else
{
	if(input[i]>(10983+offset0))
{
	if(input[i]>(10987+offset0))
{
	if(input[i]>(10989+offset0))
{
	if(input[i]==(10991+offset0))
{
	vR[i] = 10991;
}
else
{
	vR[i] = 10990;
}

}
else
{
	if(input[i]==(10989+offset0))
{
	vR[i] = 10989;
}
else
{
	vR[i] = 10988;
}

}

}
else
{
	if(input[i]>(10985+offset0))
{
	if(input[i]==(10987+offset0))
{
	vR[i] = 10987;
}
else
{
	vR[i] = 10986;
}

}
else
{
	if(input[i]==(10985+offset0))
{
	vR[i] = 10985;
}
else
{
	vR[i] = 10984;
}

}

}

}
else
{
	if(input[i]>(10979+offset0))
{
	if(input[i]>(10981+offset0))
{
	if(input[i]==(10983+offset0))
{
	vR[i] = 10983;
}
else
{
	vR[i] = 10982;
}

}
else
{
	if(input[i]==(10981+offset0))
{
	vR[i] = 10981;
}
else
{
	vR[i] = 10980;
}

}

}
else
{
	if(input[i]>(10977+offset0))
{
	if(input[i]==(10979+offset0))
{
	vR[i] = 10979;
}
else
{
	vR[i] = 10978;
}

}
else
{
	if(input[i]==(10977+offset0))
{
	vR[i] = 10977;
}
else
{
	vR[i] = 10976;
}

}

}

}

}

}
else
{
	if(input[i]>(10959+offset0))
{
	if(input[i]>(10967+offset0))
{
	if(input[i]>(10971+offset0))
{
	if(input[i]>(10973+offset0))
{
	if(input[i]==(10975+offset0))
{
	vR[i] = 10975;
}
else
{
	vR[i] = 10974;
}

}
else
{
	if(input[i]==(10973+offset0))
{
	vR[i] = 10973;
}
else
{
	vR[i] = 10972;
}

}

}
else
{
	if(input[i]>(10969+offset0))
{
	if(input[i]==(10971+offset0))
{
	vR[i] = 10971;
}
else
{
	vR[i] = 10970;
}

}
else
{
	if(input[i]==(10969+offset0))
{
	vR[i] = 10969;
}
else
{
	vR[i] = 10968;
}

}

}

}
else
{
	if(input[i]>(10963+offset0))
{
	if(input[i]>(10965+offset0))
{
	if(input[i]==(10967+offset0))
{
	vR[i] = 10967;
}
else
{
	vR[i] = 10966;
}

}
else
{
	if(input[i]==(10965+offset0))
{
	vR[i] = 10965;
}
else
{
	vR[i] = 10964;
}

}

}
else
{
	if(input[i]>(10961+offset0))
{
	if(input[i]==(10963+offset0))
{
	vR[i] = 10963;
}
else
{
	vR[i] = 10962;
}

}
else
{
	if(input[i]==(10961+offset0))
{
	vR[i] = 10961;
}
else
{
	vR[i] = 10960;
}

}

}

}

}
else
{
	if(input[i]>(10951+offset0))
{
	if(input[i]>(10955+offset0))
{
	if(input[i]>(10957+offset0))
{
	if(input[i]==(10959+offset0))
{
	vR[i] = 10959;
}
else
{
	vR[i] = 10958;
}

}
else
{
	if(input[i]==(10957+offset0))
{
	vR[i] = 10957;
}
else
{
	vR[i] = 10956;
}

}

}
else
{
	if(input[i]>(10953+offset0))
{
	if(input[i]==(10955+offset0))
{
	vR[i] = 10955;
}
else
{
	vR[i] = 10954;
}

}
else
{
	if(input[i]==(10953+offset0))
{
	vR[i] = 10953;
}
else
{
	vR[i] = 10952;
}

}

}

}
else
{
	if(input[i]>(10947+offset0))
{
	if(input[i]>(10949+offset0))
{
	if(input[i]==(10951+offset0))
{
	vR[i] = 10951;
}
else
{
	vR[i] = 10950;
}

}
else
{
	if(input[i]==(10949+offset0))
{
	vR[i] = 10949;
}
else
{
	vR[i] = 10948;
}

}

}
else
{
	if(input[i]>(10945+offset0))
{
	if(input[i]==(10947+offset0))
{
	vR[i] = 10947;
}
else
{
	vR[i] = 10946;
}

}
else
{
	if(input[i]==(10945+offset0))
{
	vR[i] = 10945;
}
else
{
	vR[i] = 10944;
}

}

}

}

}

}

}
else
{
	if(input[i]>(10911+offset0))
{
	if(input[i]>(10927+offset0))
{
	if(input[i]>(10935+offset0))
{
	if(input[i]>(10939+offset0))
{
	if(input[i]>(10941+offset0))
{
	if(input[i]==(10943+offset0))
{
	vR[i] = 10943;
}
else
{
	vR[i] = 10942;
}

}
else
{
	if(input[i]==(10941+offset0))
{
	vR[i] = 10941;
}
else
{
	vR[i] = 10940;
}

}

}
else
{
	if(input[i]>(10937+offset0))
{
	if(input[i]==(10939+offset0))
{
	vR[i] = 10939;
}
else
{
	vR[i] = 10938;
}

}
else
{
	if(input[i]==(10937+offset0))
{
	vR[i] = 10937;
}
else
{
	vR[i] = 10936;
}

}

}

}
else
{
	if(input[i]>(10931+offset0))
{
	if(input[i]>(10933+offset0))
{
	if(input[i]==(10935+offset0))
{
	vR[i] = 10935;
}
else
{
	vR[i] = 10934;
}

}
else
{
	if(input[i]==(10933+offset0))
{
	vR[i] = 10933;
}
else
{
	vR[i] = 10932;
}

}

}
else
{
	if(input[i]>(10929+offset0))
{
	if(input[i]==(10931+offset0))
{
	vR[i] = 10931;
}
else
{
	vR[i] = 10930;
}

}
else
{
	if(input[i]==(10929+offset0))
{
	vR[i] = 10929;
}
else
{
	vR[i] = 10928;
}

}

}

}

}
else
{
	if(input[i]>(10919+offset0))
{
	if(input[i]>(10923+offset0))
{
	if(input[i]>(10925+offset0))
{
	if(input[i]==(10927+offset0))
{
	vR[i] = 10927;
}
else
{
	vR[i] = 10926;
}

}
else
{
	if(input[i]==(10925+offset0))
{
	vR[i] = 10925;
}
else
{
	vR[i] = 10924;
}

}

}
else
{
	if(input[i]>(10921+offset0))
{
	if(input[i]==(10923+offset0))
{
	vR[i] = 10923;
}
else
{
	vR[i] = 10922;
}

}
else
{
	if(input[i]==(10921+offset0))
{
	vR[i] = 10921;
}
else
{
	vR[i] = 10920;
}

}

}

}
else
{
	if(input[i]>(10915+offset0))
{
	if(input[i]>(10917+offset0))
{
	if(input[i]==(10919+offset0))
{
	vR[i] = 10919;
}
else
{
	vR[i] = 10918;
}

}
else
{
	if(input[i]==(10917+offset0))
{
	vR[i] = 10917;
}
else
{
	vR[i] = 10916;
}

}

}
else
{
	if(input[i]>(10913+offset0))
{
	if(input[i]==(10915+offset0))
{
	vR[i] = 10915;
}
else
{
	vR[i] = 10914;
}

}
else
{
	if(input[i]==(10913+offset0))
{
	vR[i] = 10913;
}
else
{
	vR[i] = 10912;
}

}

}

}

}

}
else
{
	if(input[i]>(10895+offset0))
{
	if(input[i]>(10903+offset0))
{
	if(input[i]>(10907+offset0))
{
	if(input[i]>(10909+offset0))
{
	if(input[i]==(10911+offset0))
{
	vR[i] = 10911;
}
else
{
	vR[i] = 10910;
}

}
else
{
	if(input[i]==(10909+offset0))
{
	vR[i] = 10909;
}
else
{
	vR[i] = 10908;
}

}

}
else
{
	if(input[i]>(10905+offset0))
{
	if(input[i]==(10907+offset0))
{
	vR[i] = 10907;
}
else
{
	vR[i] = 10906;
}

}
else
{
	if(input[i]==(10905+offset0))
{
	vR[i] = 10905;
}
else
{
	vR[i] = 10904;
}

}

}

}
else
{
	if(input[i]>(10899+offset0))
{
	if(input[i]>(10901+offset0))
{
	if(input[i]==(10903+offset0))
{
	vR[i] = 10903;
}
else
{
	vR[i] = 10902;
}

}
else
{
	if(input[i]==(10901+offset0))
{
	vR[i] = 10901;
}
else
{
	vR[i] = 10900;
}

}

}
else
{
	if(input[i]>(10897+offset0))
{
	if(input[i]==(10899+offset0))
{
	vR[i] = 10899;
}
else
{
	vR[i] = 10898;
}

}
else
{
	if(input[i]==(10897+offset0))
{
	vR[i] = 10897;
}
else
{
	vR[i] = 10896;
}

}

}

}

}
else
{
	if(input[i]>(10887+offset0))
{
	if(input[i]>(10891+offset0))
{
	if(input[i]>(10893+offset0))
{
	if(input[i]==(10895+offset0))
{
	vR[i] = 10895;
}
else
{
	vR[i] = 10894;
}

}
else
{
	if(input[i]==(10893+offset0))
{
	vR[i] = 10893;
}
else
{
	vR[i] = 10892;
}

}

}
else
{
	if(input[i]>(10889+offset0))
{
	if(input[i]==(10891+offset0))
{
	vR[i] = 10891;
}
else
{
	vR[i] = 10890;
}

}
else
{
	if(input[i]==(10889+offset0))
{
	vR[i] = 10889;
}
else
{
	vR[i] = 10888;
}

}

}

}
else
{
	if(input[i]>(10883+offset0))
{
	if(input[i]>(10885+offset0))
{
	if(input[i]==(10887+offset0))
{
	vR[i] = 10887;
}
else
{
	vR[i] = 10886;
}

}
else
{
	if(input[i]==(10885+offset0))
{
	vR[i] = 10885;
}
else
{
	vR[i] = 10884;
}

}

}
else
{
	if(input[i]>(10881+offset0))
{
	if(input[i]==(10883+offset0))
{
	vR[i] = 10883;
}
else
{
	vR[i] = 10882;
}

}
else
{
	if(input[i]==(10881+offset0))
{
	vR[i] = 10881;
}
else
{
	vR[i] = 10880;
}

}

}

}

}

}

}

}
else
{
	if(input[i]>(10815+offset0))
{
	if(input[i]>(10847+offset0))
{
	if(input[i]>(10863+offset0))
{
	if(input[i]>(10871+offset0))
{
	if(input[i]>(10875+offset0))
{
	if(input[i]>(10877+offset0))
{
	if(input[i]==(10879+offset0))
{
	vR[i] = 10879;
}
else
{
	vR[i] = 10878;
}

}
else
{
	if(input[i]==(10877+offset0))
{
	vR[i] = 10877;
}
else
{
	vR[i] = 10876;
}

}

}
else
{
	if(input[i]>(10873+offset0))
{
	if(input[i]==(10875+offset0))
{
	vR[i] = 10875;
}
else
{
	vR[i] = 10874;
}

}
else
{
	if(input[i]==(10873+offset0))
{
	vR[i] = 10873;
}
else
{
	vR[i] = 10872;
}

}

}

}
else
{
	if(input[i]>(10867+offset0))
{
	if(input[i]>(10869+offset0))
{
	if(input[i]==(10871+offset0))
{
	vR[i] = 10871;
}
else
{
	vR[i] = 10870;
}

}
else
{
	if(input[i]==(10869+offset0))
{
	vR[i] = 10869;
}
else
{
	vR[i] = 10868;
}

}

}
else
{
	if(input[i]>(10865+offset0))
{
	if(input[i]==(10867+offset0))
{
	vR[i] = 10867;
}
else
{
	vR[i] = 10866;
}

}
else
{
	if(input[i]==(10865+offset0))
{
	vR[i] = 10865;
}
else
{
	vR[i] = 10864;
}

}

}

}

}
else
{
	if(input[i]>(10855+offset0))
{
	if(input[i]>(10859+offset0))
{
	if(input[i]>(10861+offset0))
{
	if(input[i]==(10863+offset0))
{
	vR[i] = 10863;
}
else
{
	vR[i] = 10862;
}

}
else
{
	if(input[i]==(10861+offset0))
{
	vR[i] = 10861;
}
else
{
	vR[i] = 10860;
}

}

}
else
{
	if(input[i]>(10857+offset0))
{
	if(input[i]==(10859+offset0))
{
	vR[i] = 10859;
}
else
{
	vR[i] = 10858;
}

}
else
{
	if(input[i]==(10857+offset0))
{
	vR[i] = 10857;
}
else
{
	vR[i] = 10856;
}

}

}

}
else
{
	if(input[i]>(10851+offset0))
{
	if(input[i]>(10853+offset0))
{
	if(input[i]==(10855+offset0))
{
	vR[i] = 10855;
}
else
{
	vR[i] = 10854;
}

}
else
{
	if(input[i]==(10853+offset0))
{
	vR[i] = 10853;
}
else
{
	vR[i] = 10852;
}

}

}
else
{
	if(input[i]>(10849+offset0))
{
	if(input[i]==(10851+offset0))
{
	vR[i] = 10851;
}
else
{
	vR[i] = 10850;
}

}
else
{
	if(input[i]==(10849+offset0))
{
	vR[i] = 10849;
}
else
{
	vR[i] = 10848;
}

}

}

}

}

}
else
{
	if(input[i]>(10831+offset0))
{
	if(input[i]>(10839+offset0))
{
	if(input[i]>(10843+offset0))
{
	if(input[i]>(10845+offset0))
{
	if(input[i]==(10847+offset0))
{
	vR[i] = 10847;
}
else
{
	vR[i] = 10846;
}

}
else
{
	if(input[i]==(10845+offset0))
{
	vR[i] = 10845;
}
else
{
	vR[i] = 10844;
}

}

}
else
{
	if(input[i]>(10841+offset0))
{
	if(input[i]==(10843+offset0))
{
	vR[i] = 10843;
}
else
{
	vR[i] = 10842;
}

}
else
{
	if(input[i]==(10841+offset0))
{
	vR[i] = 10841;
}
else
{
	vR[i] = 10840;
}

}

}

}
else
{
	if(input[i]>(10835+offset0))
{
	if(input[i]>(10837+offset0))
{
	if(input[i]==(10839+offset0))
{
	vR[i] = 10839;
}
else
{
	vR[i] = 10838;
}

}
else
{
	if(input[i]==(10837+offset0))
{
	vR[i] = 10837;
}
else
{
	vR[i] = 10836;
}

}

}
else
{
	if(input[i]>(10833+offset0))
{
	if(input[i]==(10835+offset0))
{
	vR[i] = 10835;
}
else
{
	vR[i] = 10834;
}

}
else
{
	if(input[i]==(10833+offset0))
{
	vR[i] = 10833;
}
else
{
	vR[i] = 10832;
}

}

}

}

}
else
{
	if(input[i]>(10823+offset0))
{
	if(input[i]>(10827+offset0))
{
	if(input[i]>(10829+offset0))
{
	if(input[i]==(10831+offset0))
{
	vR[i] = 10831;
}
else
{
	vR[i] = 10830;
}

}
else
{
	if(input[i]==(10829+offset0))
{
	vR[i] = 10829;
}
else
{
	vR[i] = 10828;
}

}

}
else
{
	if(input[i]>(10825+offset0))
{
	if(input[i]==(10827+offset0))
{
	vR[i] = 10827;
}
else
{
	vR[i] = 10826;
}

}
else
{
	if(input[i]==(10825+offset0))
{
	vR[i] = 10825;
}
else
{
	vR[i] = 10824;
}

}

}

}
else
{
	if(input[i]>(10819+offset0))
{
	if(input[i]>(10821+offset0))
{
	if(input[i]==(10823+offset0))
{
	vR[i] = 10823;
}
else
{
	vR[i] = 10822;
}

}
else
{
	if(input[i]==(10821+offset0))
{
	vR[i] = 10821;
}
else
{
	vR[i] = 10820;
}

}

}
else
{
	if(input[i]>(10817+offset0))
{
	if(input[i]==(10819+offset0))
{
	vR[i] = 10819;
}
else
{
	vR[i] = 10818;
}

}
else
{
	if(input[i]==(10817+offset0))
{
	vR[i] = 10817;
}
else
{
	vR[i] = 10816;
}

}

}

}

}

}

}
else
{
	if(input[i]>(10783+offset0))
{
	if(input[i]>(10799+offset0))
{
	if(input[i]>(10807+offset0))
{
	if(input[i]>(10811+offset0))
{
	if(input[i]>(10813+offset0))
{
	if(input[i]==(10815+offset0))
{
	vR[i] = 10815;
}
else
{
	vR[i] = 10814;
}

}
else
{
	if(input[i]==(10813+offset0))
{
	vR[i] = 10813;
}
else
{
	vR[i] = 10812;
}

}

}
else
{
	if(input[i]>(10809+offset0))
{
	if(input[i]==(10811+offset0))
{
	vR[i] = 10811;
}
else
{
	vR[i] = 10810;
}

}
else
{
	if(input[i]==(10809+offset0))
{
	vR[i] = 10809;
}
else
{
	vR[i] = 10808;
}

}

}

}
else
{
	if(input[i]>(10803+offset0))
{
	if(input[i]>(10805+offset0))
{
	if(input[i]==(10807+offset0))
{
	vR[i] = 10807;
}
else
{
	vR[i] = 10806;
}

}
else
{
	if(input[i]==(10805+offset0))
{
	vR[i] = 10805;
}
else
{
	vR[i] = 10804;
}

}

}
else
{
	if(input[i]>(10801+offset0))
{
	if(input[i]==(10803+offset0))
{
	vR[i] = 10803;
}
else
{
	vR[i] = 10802;
}

}
else
{
	if(input[i]==(10801+offset0))
{
	vR[i] = 10801;
}
else
{
	vR[i] = 10800;
}

}

}

}

}
else
{
	if(input[i]>(10791+offset0))
{
	if(input[i]>(10795+offset0))
{
	if(input[i]>(10797+offset0))
{
	if(input[i]==(10799+offset0))
{
	vR[i] = 10799;
}
else
{
	vR[i] = 10798;
}

}
else
{
	if(input[i]==(10797+offset0))
{
	vR[i] = 10797;
}
else
{
	vR[i] = 10796;
}

}

}
else
{
	if(input[i]>(10793+offset0))
{
	if(input[i]==(10795+offset0))
{
	vR[i] = 10795;
}
else
{
	vR[i] = 10794;
}

}
else
{
	if(input[i]==(10793+offset0))
{
	vR[i] = 10793;
}
else
{
	vR[i] = 10792;
}

}

}

}
else
{
	if(input[i]>(10787+offset0))
{
	if(input[i]>(10789+offset0))
{
	if(input[i]==(10791+offset0))
{
	vR[i] = 10791;
}
else
{
	vR[i] = 10790;
}

}
else
{
	if(input[i]==(10789+offset0))
{
	vR[i] = 10789;
}
else
{
	vR[i] = 10788;
}

}

}
else
{
	if(input[i]>(10785+offset0))
{
	if(input[i]==(10787+offset0))
{
	vR[i] = 10787;
}
else
{
	vR[i] = 10786;
}

}
else
{
	if(input[i]==(10785+offset0))
{
	vR[i] = 10785;
}
else
{
	vR[i] = 10784;
}

}

}

}

}

}
else
{
	if(input[i]>(10767+offset0))
{
	if(input[i]>(10775+offset0))
{
	if(input[i]>(10779+offset0))
{
	if(input[i]>(10781+offset0))
{
	if(input[i]==(10783+offset0))
{
	vR[i] = 10783;
}
else
{
	vR[i] = 10782;
}

}
else
{
	if(input[i]==(10781+offset0))
{
	vR[i] = 10781;
}
else
{
	vR[i] = 10780;
}

}

}
else
{
	if(input[i]>(10777+offset0))
{
	if(input[i]==(10779+offset0))
{
	vR[i] = 10779;
}
else
{
	vR[i] = 10778;
}

}
else
{
	if(input[i]==(10777+offset0))
{
	vR[i] = 10777;
}
else
{
	vR[i] = 10776;
}

}

}

}
else
{
	if(input[i]>(10771+offset0))
{
	if(input[i]>(10773+offset0))
{
	if(input[i]==(10775+offset0))
{
	vR[i] = 10775;
}
else
{
	vR[i] = 10774;
}

}
else
{
	if(input[i]==(10773+offset0))
{
	vR[i] = 10773;
}
else
{
	vR[i] = 10772;
}

}

}
else
{
	if(input[i]>(10769+offset0))
{
	if(input[i]==(10771+offset0))
{
	vR[i] = 10771;
}
else
{
	vR[i] = 10770;
}

}
else
{
	if(input[i]==(10769+offset0))
{
	vR[i] = 10769;
}
else
{
	vR[i] = 10768;
}

}

}

}

}
else
{
	if(input[i]>(10759+offset0))
{
	if(input[i]>(10763+offset0))
{
	if(input[i]>(10765+offset0))
{
	if(input[i]==(10767+offset0))
{
	vR[i] = 10767;
}
else
{
	vR[i] = 10766;
}

}
else
{
	if(input[i]==(10765+offset0))
{
	vR[i] = 10765;
}
else
{
	vR[i] = 10764;
}

}

}
else
{
	if(input[i]>(10761+offset0))
{
	if(input[i]==(10763+offset0))
{
	vR[i] = 10763;
}
else
{
	vR[i] = 10762;
}

}
else
{
	if(input[i]==(10761+offset0))
{
	vR[i] = 10761;
}
else
{
	vR[i] = 10760;
}

}

}

}
else
{
	if(input[i]>(10755+offset0))
{
	if(input[i]>(10757+offset0))
{
	if(input[i]==(10759+offset0))
{
	vR[i] = 10759;
}
else
{
	vR[i] = 10758;
}

}
else
{
	if(input[i]==(10757+offset0))
{
	vR[i] = 10757;
}
else
{
	vR[i] = 10756;
}

}

}
else
{
	if(input[i]>(10753+offset0))
{
	if(input[i]==(10755+offset0))
{
	vR[i] = 10755;
}
else
{
	vR[i] = 10754;
}

}
else
{
	if(input[i]==(10753+offset0))
{
	vR[i] = 10753;
}
else
{
	vR[i] = 10752;
}

}

}

}

}

}

}

}

}

}
else
{
	if(input[i]>(10495+offset0))
{
	if(input[i]>(10623+offset0))
{
	if(input[i]>(10687+offset0))
{
	if(input[i]>(10719+offset0))
{
	if(input[i]>(10735+offset0))
{
	if(input[i]>(10743+offset0))
{
	if(input[i]>(10747+offset0))
{
	if(input[i]>(10749+offset0))
{
	if(input[i]==(10751+offset0))
{
	vR[i] = 10751;
}
else
{
	vR[i] = 10750;
}

}
else
{
	if(input[i]==(10749+offset0))
{
	vR[i] = 10749;
}
else
{
	vR[i] = 10748;
}

}

}
else
{
	if(input[i]>(10745+offset0))
{
	if(input[i]==(10747+offset0))
{
	vR[i] = 10747;
}
else
{
	vR[i] = 10746;
}

}
else
{
	if(input[i]==(10745+offset0))
{
	vR[i] = 10745;
}
else
{
	vR[i] = 10744;
}

}

}

}
else
{
	if(input[i]>(10739+offset0))
{
	if(input[i]>(10741+offset0))
{
	if(input[i]==(10743+offset0))
{
	vR[i] = 10743;
}
else
{
	vR[i] = 10742;
}

}
else
{
	if(input[i]==(10741+offset0))
{
	vR[i] = 10741;
}
else
{
	vR[i] = 10740;
}

}

}
else
{
	if(input[i]>(10737+offset0))
{
	if(input[i]==(10739+offset0))
{
	vR[i] = 10739;
}
else
{
	vR[i] = 10738;
}

}
else
{
	if(input[i]==(10737+offset0))
{
	vR[i] = 10737;
}
else
{
	vR[i] = 10736;
}

}

}

}

}
else
{
	if(input[i]>(10727+offset0))
{
	if(input[i]>(10731+offset0))
{
	if(input[i]>(10733+offset0))
{
	if(input[i]==(10735+offset0))
{
	vR[i] = 10735;
}
else
{
	vR[i] = 10734;
}

}
else
{
	if(input[i]==(10733+offset0))
{
	vR[i] = 10733;
}
else
{
	vR[i] = 10732;
}

}

}
else
{
	if(input[i]>(10729+offset0))
{
	if(input[i]==(10731+offset0))
{
	vR[i] = 10731;
}
else
{
	vR[i] = 10730;
}

}
else
{
	if(input[i]==(10729+offset0))
{
	vR[i] = 10729;
}
else
{
	vR[i] = 10728;
}

}

}

}
else
{
	if(input[i]>(10723+offset0))
{
	if(input[i]>(10725+offset0))
{
	if(input[i]==(10727+offset0))
{
	vR[i] = 10727;
}
else
{
	vR[i] = 10726;
}

}
else
{
	if(input[i]==(10725+offset0))
{
	vR[i] = 10725;
}
else
{
	vR[i] = 10724;
}

}

}
else
{
	if(input[i]>(10721+offset0))
{
	if(input[i]==(10723+offset0))
{
	vR[i] = 10723;
}
else
{
	vR[i] = 10722;
}

}
else
{
	if(input[i]==(10721+offset0))
{
	vR[i] = 10721;
}
else
{
	vR[i] = 10720;
}

}

}

}

}

}
else
{
	if(input[i]>(10703+offset0))
{
	if(input[i]>(10711+offset0))
{
	if(input[i]>(10715+offset0))
{
	if(input[i]>(10717+offset0))
{
	if(input[i]==(10719+offset0))
{
	vR[i] = 10719;
}
else
{
	vR[i] = 10718;
}

}
else
{
	if(input[i]==(10717+offset0))
{
	vR[i] = 10717;
}
else
{
	vR[i] = 10716;
}

}

}
else
{
	if(input[i]>(10713+offset0))
{
	if(input[i]==(10715+offset0))
{
	vR[i] = 10715;
}
else
{
	vR[i] = 10714;
}

}
else
{
	if(input[i]==(10713+offset0))
{
	vR[i] = 10713;
}
else
{
	vR[i] = 10712;
}

}

}

}
else
{
	if(input[i]>(10707+offset0))
{
	if(input[i]>(10709+offset0))
{
	if(input[i]==(10711+offset0))
{
	vR[i] = 10711;
}
else
{
	vR[i] = 10710;
}

}
else
{
	if(input[i]==(10709+offset0))
{
	vR[i] = 10709;
}
else
{
	vR[i] = 10708;
}

}

}
else
{
	if(input[i]>(10705+offset0))
{
	if(input[i]==(10707+offset0))
{
	vR[i] = 10707;
}
else
{
	vR[i] = 10706;
}

}
else
{
	if(input[i]==(10705+offset0))
{
	vR[i] = 10705;
}
else
{
	vR[i] = 10704;
}

}

}

}

}
else
{
	if(input[i]>(10695+offset0))
{
	if(input[i]>(10699+offset0))
{
	if(input[i]>(10701+offset0))
{
	if(input[i]==(10703+offset0))
{
	vR[i] = 10703;
}
else
{
	vR[i] = 10702;
}

}
else
{
	if(input[i]==(10701+offset0))
{
	vR[i] = 10701;
}
else
{
	vR[i] = 10700;
}

}

}
else
{
	if(input[i]>(10697+offset0))
{
	if(input[i]==(10699+offset0))
{
	vR[i] = 10699;
}
else
{
	vR[i] = 10698;
}

}
else
{
	if(input[i]==(10697+offset0))
{
	vR[i] = 10697;
}
else
{
	vR[i] = 10696;
}

}

}

}
else
{
	if(input[i]>(10691+offset0))
{
	if(input[i]>(10693+offset0))
{
	if(input[i]==(10695+offset0))
{
	vR[i] = 10695;
}
else
{
	vR[i] = 10694;
}

}
else
{
	if(input[i]==(10693+offset0))
{
	vR[i] = 10693;
}
else
{
	vR[i] = 10692;
}

}

}
else
{
	if(input[i]>(10689+offset0))
{
	if(input[i]==(10691+offset0))
{
	vR[i] = 10691;
}
else
{
	vR[i] = 10690;
}

}
else
{
	if(input[i]==(10689+offset0))
{
	vR[i] = 10689;
}
else
{
	vR[i] = 10688;
}

}

}

}

}

}

}
else
{
	if(input[i]>(10655+offset0))
{
	if(input[i]>(10671+offset0))
{
	if(input[i]>(10679+offset0))
{
	if(input[i]>(10683+offset0))
{
	if(input[i]>(10685+offset0))
{
	if(input[i]==(10687+offset0))
{
	vR[i] = 10687;
}
else
{
	vR[i] = 10686;
}

}
else
{
	if(input[i]==(10685+offset0))
{
	vR[i] = 10685;
}
else
{
	vR[i] = 10684;
}

}

}
else
{
	if(input[i]>(10681+offset0))
{
	if(input[i]==(10683+offset0))
{
	vR[i] = 10683;
}
else
{
	vR[i] = 10682;
}

}
else
{
	if(input[i]==(10681+offset0))
{
	vR[i] = 10681;
}
else
{
	vR[i] = 10680;
}

}

}

}
else
{
	if(input[i]>(10675+offset0))
{
	if(input[i]>(10677+offset0))
{
	if(input[i]==(10679+offset0))
{
	vR[i] = 10679;
}
else
{
	vR[i] = 10678;
}

}
else
{
	if(input[i]==(10677+offset0))
{
	vR[i] = 10677;
}
else
{
	vR[i] = 10676;
}

}

}
else
{
	if(input[i]>(10673+offset0))
{
	if(input[i]==(10675+offset0))
{
	vR[i] = 10675;
}
else
{
	vR[i] = 10674;
}

}
else
{
	if(input[i]==(10673+offset0))
{
	vR[i] = 10673;
}
else
{
	vR[i] = 10672;
}

}

}

}

}
else
{
	if(input[i]>(10663+offset0))
{
	if(input[i]>(10667+offset0))
{
	if(input[i]>(10669+offset0))
{
	if(input[i]==(10671+offset0))
{
	vR[i] = 10671;
}
else
{
	vR[i] = 10670;
}

}
else
{
	if(input[i]==(10669+offset0))
{
	vR[i] = 10669;
}
else
{
	vR[i] = 10668;
}

}

}
else
{
	if(input[i]>(10665+offset0))
{
	if(input[i]==(10667+offset0))
{
	vR[i] = 10667;
}
else
{
	vR[i] = 10666;
}

}
else
{
	if(input[i]==(10665+offset0))
{
	vR[i] = 10665;
}
else
{
	vR[i] = 10664;
}

}

}

}
else
{
	if(input[i]>(10659+offset0))
{
	if(input[i]>(10661+offset0))
{
	if(input[i]==(10663+offset0))
{
	vR[i] = 10663;
}
else
{
	vR[i] = 10662;
}

}
else
{
	if(input[i]==(10661+offset0))
{
	vR[i] = 10661;
}
else
{
	vR[i] = 10660;
}

}

}
else
{
	if(input[i]>(10657+offset0))
{
	if(input[i]==(10659+offset0))
{
	vR[i] = 10659;
}
else
{
	vR[i] = 10658;
}

}
else
{
	if(input[i]==(10657+offset0))
{
	vR[i] = 10657;
}
else
{
	vR[i] = 10656;
}

}

}

}

}

}
else
{
	if(input[i]>(10639+offset0))
{
	if(input[i]>(10647+offset0))
{
	if(input[i]>(10651+offset0))
{
	if(input[i]>(10653+offset0))
{
	if(input[i]==(10655+offset0))
{
	vR[i] = 10655;
}
else
{
	vR[i] = 10654;
}

}
else
{
	if(input[i]==(10653+offset0))
{
	vR[i] = 10653;
}
else
{
	vR[i] = 10652;
}

}

}
else
{
	if(input[i]>(10649+offset0))
{
	if(input[i]==(10651+offset0))
{
	vR[i] = 10651;
}
else
{
	vR[i] = 10650;
}

}
else
{
	if(input[i]==(10649+offset0))
{
	vR[i] = 10649;
}
else
{
	vR[i] = 10648;
}

}

}

}
else
{
	if(input[i]>(10643+offset0))
{
	if(input[i]>(10645+offset0))
{
	if(input[i]==(10647+offset0))
{
	vR[i] = 10647;
}
else
{
	vR[i] = 10646;
}

}
else
{
	if(input[i]==(10645+offset0))
{
	vR[i] = 10645;
}
else
{
	vR[i] = 10644;
}

}

}
else
{
	if(input[i]>(10641+offset0))
{
	if(input[i]==(10643+offset0))
{
	vR[i] = 10643;
}
else
{
	vR[i] = 10642;
}

}
else
{
	if(input[i]==(10641+offset0))
{
	vR[i] = 10641;
}
else
{
	vR[i] = 10640;
}

}

}

}

}
else
{
	if(input[i]>(10631+offset0))
{
	if(input[i]>(10635+offset0))
{
	if(input[i]>(10637+offset0))
{
	if(input[i]==(10639+offset0))
{
	vR[i] = 10639;
}
else
{
	vR[i] = 10638;
}

}
else
{
	if(input[i]==(10637+offset0))
{
	vR[i] = 10637;
}
else
{
	vR[i] = 10636;
}

}

}
else
{
	if(input[i]>(10633+offset0))
{
	if(input[i]==(10635+offset0))
{
	vR[i] = 10635;
}
else
{
	vR[i] = 10634;
}

}
else
{
	if(input[i]==(10633+offset0))
{
	vR[i] = 10633;
}
else
{
	vR[i] = 10632;
}

}

}

}
else
{
	if(input[i]>(10627+offset0))
{
	if(input[i]>(10629+offset0))
{
	if(input[i]==(10631+offset0))
{
	vR[i] = 10631;
}
else
{
	vR[i] = 10630;
}

}
else
{
	if(input[i]==(10629+offset0))
{
	vR[i] = 10629;
}
else
{
	vR[i] = 10628;
}

}

}
else
{
	if(input[i]>(10625+offset0))
{
	if(input[i]==(10627+offset0))
{
	vR[i] = 10627;
}
else
{
	vR[i] = 10626;
}

}
else
{
	if(input[i]==(10625+offset0))
{
	vR[i] = 10625;
}
else
{
	vR[i] = 10624;
}

}

}

}

}

}

}

}
else
{
	if(input[i]>(10559+offset0))
{
	if(input[i]>(10591+offset0))
{
	if(input[i]>(10607+offset0))
{
	if(input[i]>(10615+offset0))
{
	if(input[i]>(10619+offset0))
{
	if(input[i]>(10621+offset0))
{
	if(input[i]==(10623+offset0))
{
	vR[i] = 10623;
}
else
{
	vR[i] = 10622;
}

}
else
{
	if(input[i]==(10621+offset0))
{
	vR[i] = 10621;
}
else
{
	vR[i] = 10620;
}

}

}
else
{
	if(input[i]>(10617+offset0))
{
	if(input[i]==(10619+offset0))
{
	vR[i] = 10619;
}
else
{
	vR[i] = 10618;
}

}
else
{
	if(input[i]==(10617+offset0))
{
	vR[i] = 10617;
}
else
{
	vR[i] = 10616;
}

}

}

}
else
{
	if(input[i]>(10611+offset0))
{
	if(input[i]>(10613+offset0))
{
	if(input[i]==(10615+offset0))
{
	vR[i] = 10615;
}
else
{
	vR[i] = 10614;
}

}
else
{
	if(input[i]==(10613+offset0))
{
	vR[i] = 10613;
}
else
{
	vR[i] = 10612;
}

}

}
else
{
	if(input[i]>(10609+offset0))
{
	if(input[i]==(10611+offset0))
{
	vR[i] = 10611;
}
else
{
	vR[i] = 10610;
}

}
else
{
	if(input[i]==(10609+offset0))
{
	vR[i] = 10609;
}
else
{
	vR[i] = 10608;
}

}

}

}

}
else
{
	if(input[i]>(10599+offset0))
{
	if(input[i]>(10603+offset0))
{
	if(input[i]>(10605+offset0))
{
	if(input[i]==(10607+offset0))
{
	vR[i] = 10607;
}
else
{
	vR[i] = 10606;
}

}
else
{
	if(input[i]==(10605+offset0))
{
	vR[i] = 10605;
}
else
{
	vR[i] = 10604;
}

}

}
else
{
	if(input[i]>(10601+offset0))
{
	if(input[i]==(10603+offset0))
{
	vR[i] = 10603;
}
else
{
	vR[i] = 10602;
}

}
else
{
	if(input[i]==(10601+offset0))
{
	vR[i] = 10601;
}
else
{
	vR[i] = 10600;
}

}

}

}
else
{
	if(input[i]>(10595+offset0))
{
	if(input[i]>(10597+offset0))
{
	if(input[i]==(10599+offset0))
{
	vR[i] = 10599;
}
else
{
	vR[i] = 10598;
}

}
else
{
	if(input[i]==(10597+offset0))
{
	vR[i] = 10597;
}
else
{
	vR[i] = 10596;
}

}

}
else
{
	if(input[i]>(10593+offset0))
{
	if(input[i]==(10595+offset0))
{
	vR[i] = 10595;
}
else
{
	vR[i] = 10594;
}

}
else
{
	if(input[i]==(10593+offset0))
{
	vR[i] = 10593;
}
else
{
	vR[i] = 10592;
}

}

}

}

}

}
else
{
	if(input[i]>(10575+offset0))
{
	if(input[i]>(10583+offset0))
{
	if(input[i]>(10587+offset0))
{
	if(input[i]>(10589+offset0))
{
	if(input[i]==(10591+offset0))
{
	vR[i] = 10591;
}
else
{
	vR[i] = 10590;
}

}
else
{
	if(input[i]==(10589+offset0))
{
	vR[i] = 10589;
}
else
{
	vR[i] = 10588;
}

}

}
else
{
	if(input[i]>(10585+offset0))
{
	if(input[i]==(10587+offset0))
{
	vR[i] = 10587;
}
else
{
	vR[i] = 10586;
}

}
else
{
	if(input[i]==(10585+offset0))
{
	vR[i] = 10585;
}
else
{
	vR[i] = 10584;
}

}

}

}
else
{
	if(input[i]>(10579+offset0))
{
	if(input[i]>(10581+offset0))
{
	if(input[i]==(10583+offset0))
{
	vR[i] = 10583;
}
else
{
	vR[i] = 10582;
}

}
else
{
	if(input[i]==(10581+offset0))
{
	vR[i] = 10581;
}
else
{
	vR[i] = 10580;
}

}

}
else
{
	if(input[i]>(10577+offset0))
{
	if(input[i]==(10579+offset0))
{
	vR[i] = 10579;
}
else
{
	vR[i] = 10578;
}

}
else
{
	if(input[i]==(10577+offset0))
{
	vR[i] = 10577;
}
else
{
	vR[i] = 10576;
}

}

}

}

}
else
{
	if(input[i]>(10567+offset0))
{
	if(input[i]>(10571+offset0))
{
	if(input[i]>(10573+offset0))
{
	if(input[i]==(10575+offset0))
{
	vR[i] = 10575;
}
else
{
	vR[i] = 10574;
}

}
else
{
	if(input[i]==(10573+offset0))
{
	vR[i] = 10573;
}
else
{
	vR[i] = 10572;
}

}

}
else
{
	if(input[i]>(10569+offset0))
{
	if(input[i]==(10571+offset0))
{
	vR[i] = 10571;
}
else
{
	vR[i] = 10570;
}

}
else
{
	if(input[i]==(10569+offset0))
{
	vR[i] = 10569;
}
else
{
	vR[i] = 10568;
}

}

}

}
else
{
	if(input[i]>(10563+offset0))
{
	if(input[i]>(10565+offset0))
{
	if(input[i]==(10567+offset0))
{
	vR[i] = 10567;
}
else
{
	vR[i] = 10566;
}

}
else
{
	if(input[i]==(10565+offset0))
{
	vR[i] = 10565;
}
else
{
	vR[i] = 10564;
}

}

}
else
{
	if(input[i]>(10561+offset0))
{
	if(input[i]==(10563+offset0))
{
	vR[i] = 10563;
}
else
{
	vR[i] = 10562;
}

}
else
{
	if(input[i]==(10561+offset0))
{
	vR[i] = 10561;
}
else
{
	vR[i] = 10560;
}

}

}

}

}

}

}
else
{
	if(input[i]>(10527+offset0))
{
	if(input[i]>(10543+offset0))
{
	if(input[i]>(10551+offset0))
{
	if(input[i]>(10555+offset0))
{
	if(input[i]>(10557+offset0))
{
	if(input[i]==(10559+offset0))
{
	vR[i] = 10559;
}
else
{
	vR[i] = 10558;
}

}
else
{
	if(input[i]==(10557+offset0))
{
	vR[i] = 10557;
}
else
{
	vR[i] = 10556;
}

}

}
else
{
	if(input[i]>(10553+offset0))
{
	if(input[i]==(10555+offset0))
{
	vR[i] = 10555;
}
else
{
	vR[i] = 10554;
}

}
else
{
	if(input[i]==(10553+offset0))
{
	vR[i] = 10553;
}
else
{
	vR[i] = 10552;
}

}

}

}
else
{
	if(input[i]>(10547+offset0))
{
	if(input[i]>(10549+offset0))
{
	if(input[i]==(10551+offset0))
{
	vR[i] = 10551;
}
else
{
	vR[i] = 10550;
}

}
else
{
	if(input[i]==(10549+offset0))
{
	vR[i] = 10549;
}
else
{
	vR[i] = 10548;
}

}

}
else
{
	if(input[i]>(10545+offset0))
{
	if(input[i]==(10547+offset0))
{
	vR[i] = 10547;
}
else
{
	vR[i] = 10546;
}

}
else
{
	if(input[i]==(10545+offset0))
{
	vR[i] = 10545;
}
else
{
	vR[i] = 10544;
}

}

}

}

}
else
{
	if(input[i]>(10535+offset0))
{
	if(input[i]>(10539+offset0))
{
	if(input[i]>(10541+offset0))
{
	if(input[i]==(10543+offset0))
{
	vR[i] = 10543;
}
else
{
	vR[i] = 10542;
}

}
else
{
	if(input[i]==(10541+offset0))
{
	vR[i] = 10541;
}
else
{
	vR[i] = 10540;
}

}

}
else
{
	if(input[i]>(10537+offset0))
{
	if(input[i]==(10539+offset0))
{
	vR[i] = 10539;
}
else
{
	vR[i] = 10538;
}

}
else
{
	if(input[i]==(10537+offset0))
{
	vR[i] = 10537;
}
else
{
	vR[i] = 10536;
}

}

}

}
else
{
	if(input[i]>(10531+offset0))
{
	if(input[i]>(10533+offset0))
{
	if(input[i]==(10535+offset0))
{
	vR[i] = 10535;
}
else
{
	vR[i] = 10534;
}

}
else
{
	if(input[i]==(10533+offset0))
{
	vR[i] = 10533;
}
else
{
	vR[i] = 10532;
}

}

}
else
{
	if(input[i]>(10529+offset0))
{
	if(input[i]==(10531+offset0))
{
	vR[i] = 10531;
}
else
{
	vR[i] = 10530;
}

}
else
{
	if(input[i]==(10529+offset0))
{
	vR[i] = 10529;
}
else
{
	vR[i] = 10528;
}

}

}

}

}

}
else
{
	if(input[i]>(10511+offset0))
{
	if(input[i]>(10519+offset0))
{
	if(input[i]>(10523+offset0))
{
	if(input[i]>(10525+offset0))
{
	if(input[i]==(10527+offset0))
{
	vR[i] = 10527;
}
else
{
	vR[i] = 10526;
}

}
else
{
	if(input[i]==(10525+offset0))
{
	vR[i] = 10525;
}
else
{
	vR[i] = 10524;
}

}

}
else
{
	if(input[i]>(10521+offset0))
{
	if(input[i]==(10523+offset0))
{
	vR[i] = 10523;
}
else
{
	vR[i] = 10522;
}

}
else
{
	if(input[i]==(10521+offset0))
{
	vR[i] = 10521;
}
else
{
	vR[i] = 10520;
}

}

}

}
else
{
	if(input[i]>(10515+offset0))
{
	if(input[i]>(10517+offset0))
{
	if(input[i]==(10519+offset0))
{
	vR[i] = 10519;
}
else
{
	vR[i] = 10518;
}

}
else
{
	if(input[i]==(10517+offset0))
{
	vR[i] = 10517;
}
else
{
	vR[i] = 10516;
}

}

}
else
{
	if(input[i]>(10513+offset0))
{
	if(input[i]==(10515+offset0))
{
	vR[i] = 10515;
}
else
{
	vR[i] = 10514;
}

}
else
{
	if(input[i]==(10513+offset0))
{
	vR[i] = 10513;
}
else
{
	vR[i] = 10512;
}

}

}

}

}
else
{
	if(input[i]>(10503+offset0))
{
	if(input[i]>(10507+offset0))
{
	if(input[i]>(10509+offset0))
{
	if(input[i]==(10511+offset0))
{
	vR[i] = 10511;
}
else
{
	vR[i] = 10510;
}

}
else
{
	if(input[i]==(10509+offset0))
{
	vR[i] = 10509;
}
else
{
	vR[i] = 10508;
}

}

}
else
{
	if(input[i]>(10505+offset0))
{
	if(input[i]==(10507+offset0))
{
	vR[i] = 10507;
}
else
{
	vR[i] = 10506;
}

}
else
{
	if(input[i]==(10505+offset0))
{
	vR[i] = 10505;
}
else
{
	vR[i] = 10504;
}

}

}

}
else
{
	if(input[i]>(10499+offset0))
{
	if(input[i]>(10501+offset0))
{
	if(input[i]==(10503+offset0))
{
	vR[i] = 10503;
}
else
{
	vR[i] = 10502;
}

}
else
{
	if(input[i]==(10501+offset0))
{
	vR[i] = 10501;
}
else
{
	vR[i] = 10500;
}

}

}
else
{
	if(input[i]>(10497+offset0))
{
	if(input[i]==(10499+offset0))
{
	vR[i] = 10499;
}
else
{
	vR[i] = 10498;
}

}
else
{
	if(input[i]==(10497+offset0))
{
	vR[i] = 10497;
}
else
{
	vR[i] = 10496;
}

}

}

}

}

}

}

}

}
else
{
	if(input[i]>(10367+offset0))
{
	if(input[i]>(10431+offset0))
{
	if(input[i]>(10463+offset0))
{
	if(input[i]>(10479+offset0))
{
	if(input[i]>(10487+offset0))
{
	if(input[i]>(10491+offset0))
{
	if(input[i]>(10493+offset0))
{
	if(input[i]==(10495+offset0))
{
	vR[i] = 10495;
}
else
{
	vR[i] = 10494;
}

}
else
{
	if(input[i]==(10493+offset0))
{
	vR[i] = 10493;
}
else
{
	vR[i] = 10492;
}

}

}
else
{
	if(input[i]>(10489+offset0))
{
	if(input[i]==(10491+offset0))
{
	vR[i] = 10491;
}
else
{
	vR[i] = 10490;
}

}
else
{
	if(input[i]==(10489+offset0))
{
	vR[i] = 10489;
}
else
{
	vR[i] = 10488;
}

}

}

}
else
{
	if(input[i]>(10483+offset0))
{
	if(input[i]>(10485+offset0))
{
	if(input[i]==(10487+offset0))
{
	vR[i] = 10487;
}
else
{
	vR[i] = 10486;
}

}
else
{
	if(input[i]==(10485+offset0))
{
	vR[i] = 10485;
}
else
{
	vR[i] = 10484;
}

}

}
else
{
	if(input[i]>(10481+offset0))
{
	if(input[i]==(10483+offset0))
{
	vR[i] = 10483;
}
else
{
	vR[i] = 10482;
}

}
else
{
	if(input[i]==(10481+offset0))
{
	vR[i] = 10481;
}
else
{
	vR[i] = 10480;
}

}

}

}

}
else
{
	if(input[i]>(10471+offset0))
{
	if(input[i]>(10475+offset0))
{
	if(input[i]>(10477+offset0))
{
	if(input[i]==(10479+offset0))
{
	vR[i] = 10479;
}
else
{
	vR[i] = 10478;
}

}
else
{
	if(input[i]==(10477+offset0))
{
	vR[i] = 10477;
}
else
{
	vR[i] = 10476;
}

}

}
else
{
	if(input[i]>(10473+offset0))
{
	if(input[i]==(10475+offset0))
{
	vR[i] = 10475;
}
else
{
	vR[i] = 10474;
}

}
else
{
	if(input[i]==(10473+offset0))
{
	vR[i] = 10473;
}
else
{
	vR[i] = 10472;
}

}

}

}
else
{
	if(input[i]>(10467+offset0))
{
	if(input[i]>(10469+offset0))
{
	if(input[i]==(10471+offset0))
{
	vR[i] = 10471;
}
else
{
	vR[i] = 10470;
}

}
else
{
	if(input[i]==(10469+offset0))
{
	vR[i] = 10469;
}
else
{
	vR[i] = 10468;
}

}

}
else
{
	if(input[i]>(10465+offset0))
{
	if(input[i]==(10467+offset0))
{
	vR[i] = 10467;
}
else
{
	vR[i] = 10466;
}

}
else
{
	if(input[i]==(10465+offset0))
{
	vR[i] = 10465;
}
else
{
	vR[i] = 10464;
}

}

}

}

}

}
else
{
	if(input[i]>(10447+offset0))
{
	if(input[i]>(10455+offset0))
{
	if(input[i]>(10459+offset0))
{
	if(input[i]>(10461+offset0))
{
	if(input[i]==(10463+offset0))
{
	vR[i] = 10463;
}
else
{
	vR[i] = 10462;
}

}
else
{
	if(input[i]==(10461+offset0))
{
	vR[i] = 10461;
}
else
{
	vR[i] = 10460;
}

}

}
else
{
	if(input[i]>(10457+offset0))
{
	if(input[i]==(10459+offset0))
{
	vR[i] = 10459;
}
else
{
	vR[i] = 10458;
}

}
else
{
	if(input[i]==(10457+offset0))
{
	vR[i] = 10457;
}
else
{
	vR[i] = 10456;
}

}

}

}
else
{
	if(input[i]>(10451+offset0))
{
	if(input[i]>(10453+offset0))
{
	if(input[i]==(10455+offset0))
{
	vR[i] = 10455;
}
else
{
	vR[i] = 10454;
}

}
else
{
	if(input[i]==(10453+offset0))
{
	vR[i] = 10453;
}
else
{
	vR[i] = 10452;
}

}

}
else
{
	if(input[i]>(10449+offset0))
{
	if(input[i]==(10451+offset0))
{
	vR[i] = 10451;
}
else
{
	vR[i] = 10450;
}

}
else
{
	if(input[i]==(10449+offset0))
{
	vR[i] = 10449;
}
else
{
	vR[i] = 10448;
}

}

}

}

}
else
{
	if(input[i]>(10439+offset0))
{
	if(input[i]>(10443+offset0))
{
	if(input[i]>(10445+offset0))
{
	if(input[i]==(10447+offset0))
{
	vR[i] = 10447;
}
else
{
	vR[i] = 10446;
}

}
else
{
	if(input[i]==(10445+offset0))
{
	vR[i] = 10445;
}
else
{
	vR[i] = 10444;
}

}

}
else
{
	if(input[i]>(10441+offset0))
{
	if(input[i]==(10443+offset0))
{
	vR[i] = 10443;
}
else
{
	vR[i] = 10442;
}

}
else
{
	if(input[i]==(10441+offset0))
{
	vR[i] = 10441;
}
else
{
	vR[i] = 10440;
}

}

}

}
else
{
	if(input[i]>(10435+offset0))
{
	if(input[i]>(10437+offset0))
{
	if(input[i]==(10439+offset0))
{
	vR[i] = 10439;
}
else
{
	vR[i] = 10438;
}

}
else
{
	if(input[i]==(10437+offset0))
{
	vR[i] = 10437;
}
else
{
	vR[i] = 10436;
}

}

}
else
{
	if(input[i]>(10433+offset0))
{
	if(input[i]==(10435+offset0))
{
	vR[i] = 10435;
}
else
{
	vR[i] = 10434;
}

}
else
{
	if(input[i]==(10433+offset0))
{
	vR[i] = 10433;
}
else
{
	vR[i] = 10432;
}

}

}

}

}

}

}
else
{
	if(input[i]>(10399+offset0))
{
	if(input[i]>(10415+offset0))
{
	if(input[i]>(10423+offset0))
{
	if(input[i]>(10427+offset0))
{
	if(input[i]>(10429+offset0))
{
	if(input[i]==(10431+offset0))
{
	vR[i] = 10431;
}
else
{
	vR[i] = 10430;
}

}
else
{
	if(input[i]==(10429+offset0))
{
	vR[i] = 10429;
}
else
{
	vR[i] = 10428;
}

}

}
else
{
	if(input[i]>(10425+offset0))
{
	if(input[i]==(10427+offset0))
{
	vR[i] = 10427;
}
else
{
	vR[i] = 10426;
}

}
else
{
	if(input[i]==(10425+offset0))
{
	vR[i] = 10425;
}
else
{
	vR[i] = 10424;
}

}

}

}
else
{
	if(input[i]>(10419+offset0))
{
	if(input[i]>(10421+offset0))
{
	if(input[i]==(10423+offset0))
{
	vR[i] = 10423;
}
else
{
	vR[i] = 10422;
}

}
else
{
	if(input[i]==(10421+offset0))
{
	vR[i] = 10421;
}
else
{
	vR[i] = 10420;
}

}

}
else
{
	if(input[i]>(10417+offset0))
{
	if(input[i]==(10419+offset0))
{
	vR[i] = 10419;
}
else
{
	vR[i] = 10418;
}

}
else
{
	if(input[i]==(10417+offset0))
{
	vR[i] = 10417;
}
else
{
	vR[i] = 10416;
}

}

}

}

}
else
{
	if(input[i]>(10407+offset0))
{
	if(input[i]>(10411+offset0))
{
	if(input[i]>(10413+offset0))
{
	if(input[i]==(10415+offset0))
{
	vR[i] = 10415;
}
else
{
	vR[i] = 10414;
}

}
else
{
	if(input[i]==(10413+offset0))
{
	vR[i] = 10413;
}
else
{
	vR[i] = 10412;
}

}

}
else
{
	if(input[i]>(10409+offset0))
{
	if(input[i]==(10411+offset0))
{
	vR[i] = 10411;
}
else
{
	vR[i] = 10410;
}

}
else
{
	if(input[i]==(10409+offset0))
{
	vR[i] = 10409;
}
else
{
	vR[i] = 10408;
}

}

}

}
else
{
	if(input[i]>(10403+offset0))
{
	if(input[i]>(10405+offset0))
{
	if(input[i]==(10407+offset0))
{
	vR[i] = 10407;
}
else
{
	vR[i] = 10406;
}

}
else
{
	if(input[i]==(10405+offset0))
{
	vR[i] = 10405;
}
else
{
	vR[i] = 10404;
}

}

}
else
{
	if(input[i]>(10401+offset0))
{
	if(input[i]==(10403+offset0))
{
	vR[i] = 10403;
}
else
{
	vR[i] = 10402;
}

}
else
{
	if(input[i]==(10401+offset0))
{
	vR[i] = 10401;
}
else
{
	vR[i] = 10400;
}

}

}

}

}

}
else
{
	if(input[i]>(10383+offset0))
{
	if(input[i]>(10391+offset0))
{
	if(input[i]>(10395+offset0))
{
	if(input[i]>(10397+offset0))
{
	if(input[i]==(10399+offset0))
{
	vR[i] = 10399;
}
else
{
	vR[i] = 10398;
}

}
else
{
	if(input[i]==(10397+offset0))
{
	vR[i] = 10397;
}
else
{
	vR[i] = 10396;
}

}

}
else
{
	if(input[i]>(10393+offset0))
{
	if(input[i]==(10395+offset0))
{
	vR[i] = 10395;
}
else
{
	vR[i] = 10394;
}

}
else
{
	if(input[i]==(10393+offset0))
{
	vR[i] = 10393;
}
else
{
	vR[i] = 10392;
}

}

}

}
else
{
	if(input[i]>(10387+offset0))
{
	if(input[i]>(10389+offset0))
{
	if(input[i]==(10391+offset0))
{
	vR[i] = 10391;
}
else
{
	vR[i] = 10390;
}

}
else
{
	if(input[i]==(10389+offset0))
{
	vR[i] = 10389;
}
else
{
	vR[i] = 10388;
}

}

}
else
{
	if(input[i]>(10385+offset0))
{
	if(input[i]==(10387+offset0))
{
	vR[i] = 10387;
}
else
{
	vR[i] = 10386;
}

}
else
{
	if(input[i]==(10385+offset0))
{
	vR[i] = 10385;
}
else
{
	vR[i] = 10384;
}

}

}

}

}
else
{
	if(input[i]>(10375+offset0))
{
	if(input[i]>(10379+offset0))
{
	if(input[i]>(10381+offset0))
{
	if(input[i]==(10383+offset0))
{
	vR[i] = 10383;
}
else
{
	vR[i] = 10382;
}

}
else
{
	if(input[i]==(10381+offset0))
{
	vR[i] = 10381;
}
else
{
	vR[i] = 10380;
}

}

}
else
{
	if(input[i]>(10377+offset0))
{
	if(input[i]==(10379+offset0))
{
	vR[i] = 10379;
}
else
{
	vR[i] = 10378;
}

}
else
{
	if(input[i]==(10377+offset0))
{
	vR[i] = 10377;
}
else
{
	vR[i] = 10376;
}

}

}

}
else
{
	if(input[i]>(10371+offset0))
{
	if(input[i]>(10373+offset0))
{
	if(input[i]==(10375+offset0))
{
	vR[i] = 10375;
}
else
{
	vR[i] = 10374;
}

}
else
{
	if(input[i]==(10373+offset0))
{
	vR[i] = 10373;
}
else
{
	vR[i] = 10372;
}

}

}
else
{
	if(input[i]>(10369+offset0))
{
	if(input[i]==(10371+offset0))
{
	vR[i] = 10371;
}
else
{
	vR[i] = 10370;
}

}
else
{
	if(input[i]==(10369+offset0))
{
	vR[i] = 10369;
}
else
{
	vR[i] = 10368;
}

}

}

}

}

}

}

}
else
{
	if(input[i]>(10303+offset0))
{
	if(input[i]>(10335+offset0))
{
	if(input[i]>(10351+offset0))
{
	if(input[i]>(10359+offset0))
{
	if(input[i]>(10363+offset0))
{
	if(input[i]>(10365+offset0))
{
	if(input[i]==(10367+offset0))
{
	vR[i] = 10367;
}
else
{
	vR[i] = 10366;
}

}
else
{
	if(input[i]==(10365+offset0))
{
	vR[i] = 10365;
}
else
{
	vR[i] = 10364;
}

}

}
else
{
	if(input[i]>(10361+offset0))
{
	if(input[i]==(10363+offset0))
{
	vR[i] = 10363;
}
else
{
	vR[i] = 10362;
}

}
else
{
	if(input[i]==(10361+offset0))
{
	vR[i] = 10361;
}
else
{
	vR[i] = 10360;
}

}

}

}
else
{
	if(input[i]>(10355+offset0))
{
	if(input[i]>(10357+offset0))
{
	if(input[i]==(10359+offset0))
{
	vR[i] = 10359;
}
else
{
	vR[i] = 10358;
}

}
else
{
	if(input[i]==(10357+offset0))
{
	vR[i] = 10357;
}
else
{
	vR[i] = 10356;
}

}

}
else
{
	if(input[i]>(10353+offset0))
{
	if(input[i]==(10355+offset0))
{
	vR[i] = 10355;
}
else
{
	vR[i] = 10354;
}

}
else
{
	if(input[i]==(10353+offset0))
{
	vR[i] = 10353;
}
else
{
	vR[i] = 10352;
}

}

}

}

}
else
{
	if(input[i]>(10343+offset0))
{
	if(input[i]>(10347+offset0))
{
	if(input[i]>(10349+offset0))
{
	if(input[i]==(10351+offset0))
{
	vR[i] = 10351;
}
else
{
	vR[i] = 10350;
}

}
else
{
	if(input[i]==(10349+offset0))
{
	vR[i] = 10349;
}
else
{
	vR[i] = 10348;
}

}

}
else
{
	if(input[i]>(10345+offset0))
{
	if(input[i]==(10347+offset0))
{
	vR[i] = 10347;
}
else
{
	vR[i] = 10346;
}

}
else
{
	if(input[i]==(10345+offset0))
{
	vR[i] = 10345;
}
else
{
	vR[i] = 10344;
}

}

}

}
else
{
	if(input[i]>(10339+offset0))
{
	if(input[i]>(10341+offset0))
{
	if(input[i]==(10343+offset0))
{
	vR[i] = 10343;
}
else
{
	vR[i] = 10342;
}

}
else
{
	if(input[i]==(10341+offset0))
{
	vR[i] = 10341;
}
else
{
	vR[i] = 10340;
}

}

}
else
{
	if(input[i]>(10337+offset0))
{
	if(input[i]==(10339+offset0))
{
	vR[i] = 10339;
}
else
{
	vR[i] = 10338;
}

}
else
{
	if(input[i]==(10337+offset0))
{
	vR[i] = 10337;
}
else
{
	vR[i] = 10336;
}

}

}

}

}

}
else
{
	if(input[i]>(10319+offset0))
{
	if(input[i]>(10327+offset0))
{
	if(input[i]>(10331+offset0))
{
	if(input[i]>(10333+offset0))
{
	if(input[i]==(10335+offset0))
{
	vR[i] = 10335;
}
else
{
	vR[i] = 10334;
}

}
else
{
	if(input[i]==(10333+offset0))
{
	vR[i] = 10333;
}
else
{
	vR[i] = 10332;
}

}

}
else
{
	if(input[i]>(10329+offset0))
{
	if(input[i]==(10331+offset0))
{
	vR[i] = 10331;
}
else
{
	vR[i] = 10330;
}

}
else
{
	if(input[i]==(10329+offset0))
{
	vR[i] = 10329;
}
else
{
	vR[i] = 10328;
}

}

}

}
else
{
	if(input[i]>(10323+offset0))
{
	if(input[i]>(10325+offset0))
{
	if(input[i]==(10327+offset0))
{
	vR[i] = 10327;
}
else
{
	vR[i] = 10326;
}

}
else
{
	if(input[i]==(10325+offset0))
{
	vR[i] = 10325;
}
else
{
	vR[i] = 10324;
}

}

}
else
{
	if(input[i]>(10321+offset0))
{
	if(input[i]==(10323+offset0))
{
	vR[i] = 10323;
}
else
{
	vR[i] = 10322;
}

}
else
{
	if(input[i]==(10321+offset0))
{
	vR[i] = 10321;
}
else
{
	vR[i] = 10320;
}

}

}

}

}
else
{
	if(input[i]>(10311+offset0))
{
	if(input[i]>(10315+offset0))
{
	if(input[i]>(10317+offset0))
{
	if(input[i]==(10319+offset0))
{
	vR[i] = 10319;
}
else
{
	vR[i] = 10318;
}

}
else
{
	if(input[i]==(10317+offset0))
{
	vR[i] = 10317;
}
else
{
	vR[i] = 10316;
}

}

}
else
{
	if(input[i]>(10313+offset0))
{
	if(input[i]==(10315+offset0))
{
	vR[i] = 10315;
}
else
{
	vR[i] = 10314;
}

}
else
{
	if(input[i]==(10313+offset0))
{
	vR[i] = 10313;
}
else
{
	vR[i] = 10312;
}

}

}

}
else
{
	if(input[i]>(10307+offset0))
{
	if(input[i]>(10309+offset0))
{
	if(input[i]==(10311+offset0))
{
	vR[i] = 10311;
}
else
{
	vR[i] = 10310;
}

}
else
{
	if(input[i]==(10309+offset0))
{
	vR[i] = 10309;
}
else
{
	vR[i] = 10308;
}

}

}
else
{
	if(input[i]>(10305+offset0))
{
	if(input[i]==(10307+offset0))
{
	vR[i] = 10307;
}
else
{
	vR[i] = 10306;
}

}
else
{
	if(input[i]==(10305+offset0))
{
	vR[i] = 10305;
}
else
{
	vR[i] = 10304;
}

}

}

}

}

}

}
else
{
	if(input[i]>(10271+offset0))
{
	if(input[i]>(10287+offset0))
{
	if(input[i]>(10295+offset0))
{
	if(input[i]>(10299+offset0))
{
	if(input[i]>(10301+offset0))
{
	if(input[i]==(10303+offset0))
{
	vR[i] = 10303;
}
else
{
	vR[i] = 10302;
}

}
else
{
	if(input[i]==(10301+offset0))
{
	vR[i] = 10301;
}
else
{
	vR[i] = 10300;
}

}

}
else
{
	if(input[i]>(10297+offset0))
{
	if(input[i]==(10299+offset0))
{
	vR[i] = 10299;
}
else
{
	vR[i] = 10298;
}

}
else
{
	if(input[i]==(10297+offset0))
{
	vR[i] = 10297;
}
else
{
	vR[i] = 10296;
}

}

}

}
else
{
	if(input[i]>(10291+offset0))
{
	if(input[i]>(10293+offset0))
{
	if(input[i]==(10295+offset0))
{
	vR[i] = 10295;
}
else
{
	vR[i] = 10294;
}

}
else
{
	if(input[i]==(10293+offset0))
{
	vR[i] = 10293;
}
else
{
	vR[i] = 10292;
}

}

}
else
{
	if(input[i]>(10289+offset0))
{
	if(input[i]==(10291+offset0))
{
	vR[i] = 10291;
}
else
{
	vR[i] = 10290;
}

}
else
{
	if(input[i]==(10289+offset0))
{
	vR[i] = 10289;
}
else
{
	vR[i] = 10288;
}

}

}

}

}
else
{
	if(input[i]>(10279+offset0))
{
	if(input[i]>(10283+offset0))
{
	if(input[i]>(10285+offset0))
{
	if(input[i]==(10287+offset0))
{
	vR[i] = 10287;
}
else
{
	vR[i] = 10286;
}

}
else
{
	if(input[i]==(10285+offset0))
{
	vR[i] = 10285;
}
else
{
	vR[i] = 10284;
}

}

}
else
{
	if(input[i]>(10281+offset0))
{
	if(input[i]==(10283+offset0))
{
	vR[i] = 10283;
}
else
{
	vR[i] = 10282;
}

}
else
{
	if(input[i]==(10281+offset0))
{
	vR[i] = 10281;
}
else
{
	vR[i] = 10280;
}

}

}

}
else
{
	if(input[i]>(10275+offset0))
{
	if(input[i]>(10277+offset0))
{
	if(input[i]==(10279+offset0))
{
	vR[i] = 10279;
}
else
{
	vR[i] = 10278;
}

}
else
{
	if(input[i]==(10277+offset0))
{
	vR[i] = 10277;
}
else
{
	vR[i] = 10276;
}

}

}
else
{
	if(input[i]>(10273+offset0))
{
	if(input[i]==(10275+offset0))
{
	vR[i] = 10275;
}
else
{
	vR[i] = 10274;
}

}
else
{
	if(input[i]==(10273+offset0))
{
	vR[i] = 10273;
}
else
{
	vR[i] = 10272;
}

}

}

}

}

}
else
{
	if(input[i]>(10255+offset0))
{
	if(input[i]>(10263+offset0))
{
	if(input[i]>(10267+offset0))
{
	if(input[i]>(10269+offset0))
{
	if(input[i]==(10271+offset0))
{
	vR[i] = 10271;
}
else
{
	vR[i] = 10270;
}

}
else
{
	if(input[i]==(10269+offset0))
{
	vR[i] = 10269;
}
else
{
	vR[i] = 10268;
}

}

}
else
{
	if(input[i]>(10265+offset0))
{
	if(input[i]==(10267+offset0))
{
	vR[i] = 10267;
}
else
{
	vR[i] = 10266;
}

}
else
{
	if(input[i]==(10265+offset0))
{
	vR[i] = 10265;
}
else
{
	vR[i] = 10264;
}

}

}

}
else
{
	if(input[i]>(10259+offset0))
{
	if(input[i]>(10261+offset0))
{
	if(input[i]==(10263+offset0))
{
	vR[i] = 10263;
}
else
{
	vR[i] = 10262;
}

}
else
{
	if(input[i]==(10261+offset0))
{
	vR[i] = 10261;
}
else
{
	vR[i] = 10260;
}

}

}
else
{
	if(input[i]>(10257+offset0))
{
	if(input[i]==(10259+offset0))
{
	vR[i] = 10259;
}
else
{
	vR[i] = 10258;
}

}
else
{
	if(input[i]==(10257+offset0))
{
	vR[i] = 10257;
}
else
{
	vR[i] = 10256;
}

}

}

}

}
else
{
	if(input[i]>(10247+offset0))
{
	if(input[i]>(10251+offset0))
{
	if(input[i]>(10253+offset0))
{
	if(input[i]==(10255+offset0))
{
	vR[i] = 10255;
}
else
{
	vR[i] = 10254;
}

}
else
{
	if(input[i]==(10253+offset0))
{
	vR[i] = 10253;
}
else
{
	vR[i] = 10252;
}

}

}
else
{
	if(input[i]>(10249+offset0))
{
	if(input[i]==(10251+offset0))
{
	vR[i] = 10251;
}
else
{
	vR[i] = 10250;
}

}
else
{
	if(input[i]==(10249+offset0))
{
	vR[i] = 10249;
}
else
{
	vR[i] = 10248;
}

}

}

}
else
{
	if(input[i]>(10243+offset0))
{
	if(input[i]>(10245+offset0))
{
	if(input[i]==(10247+offset0))
{
	vR[i] = 10247;
}
else
{
	vR[i] = 10246;
}

}
else
{
	if(input[i]==(10245+offset0))
{
	vR[i] = 10245;
}
else
{
	vR[i] = 10244;
}

}

}
else
{
	if(input[i]>(10241+offset0))
{
	if(input[i]==(10243+offset0))
{
	vR[i] = 10243;
}
else
{
	vR[i] = 10242;
}

}
else
{
	if(input[i]==(10241+offset0))
{
	vR[i] = 10241;
}
else
{
	vR[i] = 10240;
}

}

}

}

}

}

}

}

}

}

}

}
else
{
	if(input[i]>(9215+offset0))
{
	if(input[i]>(9727+offset0))
{
	if(input[i]>(9983+offset0))
{
	if(input[i]>(10111+offset0))
{
	if(input[i]>(10175+offset0))
{
	if(input[i]>(10207+offset0))
{
	if(input[i]>(10223+offset0))
{
	if(input[i]>(10231+offset0))
{
	if(input[i]>(10235+offset0))
{
	if(input[i]>(10237+offset0))
{
	if(input[i]==(10239+offset0))
{
	vR[i] = 10239;
}
else
{
	vR[i] = 10238;
}

}
else
{
	if(input[i]==(10237+offset0))
{
	vR[i] = 10237;
}
else
{
	vR[i] = 10236;
}

}

}
else
{
	if(input[i]>(10233+offset0))
{
	if(input[i]==(10235+offset0))
{
	vR[i] = 10235;
}
else
{
	vR[i] = 10234;
}

}
else
{
	if(input[i]==(10233+offset0))
{
	vR[i] = 10233;
}
else
{
	vR[i] = 10232;
}

}

}

}
else
{
	if(input[i]>(10227+offset0))
{
	if(input[i]>(10229+offset0))
{
	if(input[i]==(10231+offset0))
{
	vR[i] = 10231;
}
else
{
	vR[i] = 10230;
}

}
else
{
	if(input[i]==(10229+offset0))
{
	vR[i] = 10229;
}
else
{
	vR[i] = 10228;
}

}

}
else
{
	if(input[i]>(10225+offset0))
{
	if(input[i]==(10227+offset0))
{
	vR[i] = 10227;
}
else
{
	vR[i] = 10226;
}

}
else
{
	if(input[i]==(10225+offset0))
{
	vR[i] = 10225;
}
else
{
	vR[i] = 10224;
}

}

}

}

}
else
{
	if(input[i]>(10215+offset0))
{
	if(input[i]>(10219+offset0))
{
	if(input[i]>(10221+offset0))
{
	if(input[i]==(10223+offset0))
{
	vR[i] = 10223;
}
else
{
	vR[i] = 10222;
}

}
else
{
	if(input[i]==(10221+offset0))
{
	vR[i] = 10221;
}
else
{
	vR[i] = 10220;
}

}

}
else
{
	if(input[i]>(10217+offset0))
{
	if(input[i]==(10219+offset0))
{
	vR[i] = 10219;
}
else
{
	vR[i] = 10218;
}

}
else
{
	if(input[i]==(10217+offset0))
{
	vR[i] = 10217;
}
else
{
	vR[i] = 10216;
}

}

}

}
else
{
	if(input[i]>(10211+offset0))
{
	if(input[i]>(10213+offset0))
{
	if(input[i]==(10215+offset0))
{
	vR[i] = 10215;
}
else
{
	vR[i] = 10214;
}

}
else
{
	if(input[i]==(10213+offset0))
{
	vR[i] = 10213;
}
else
{
	vR[i] = 10212;
}

}

}
else
{
	if(input[i]>(10209+offset0))
{
	if(input[i]==(10211+offset0))
{
	vR[i] = 10211;
}
else
{
	vR[i] = 10210;
}

}
else
{
	if(input[i]==(10209+offset0))
{
	vR[i] = 10209;
}
else
{
	vR[i] = 10208;
}

}

}

}

}

}
else
{
	if(input[i]>(10191+offset0))
{
	if(input[i]>(10199+offset0))
{
	if(input[i]>(10203+offset0))
{
	if(input[i]>(10205+offset0))
{
	if(input[i]==(10207+offset0))
{
	vR[i] = 10207;
}
else
{
	vR[i] = 10206;
}

}
else
{
	if(input[i]==(10205+offset0))
{
	vR[i] = 10205;
}
else
{
	vR[i] = 10204;
}

}

}
else
{
	if(input[i]>(10201+offset0))
{
	if(input[i]==(10203+offset0))
{
	vR[i] = 10203;
}
else
{
	vR[i] = 10202;
}

}
else
{
	if(input[i]==(10201+offset0))
{
	vR[i] = 10201;
}
else
{
	vR[i] = 10200;
}

}

}

}
else
{
	if(input[i]>(10195+offset0))
{
	if(input[i]>(10197+offset0))
{
	if(input[i]==(10199+offset0))
{
	vR[i] = 10199;
}
else
{
	vR[i] = 10198;
}

}
else
{
	if(input[i]==(10197+offset0))
{
	vR[i] = 10197;
}
else
{
	vR[i] = 10196;
}

}

}
else
{
	if(input[i]>(10193+offset0))
{
	if(input[i]==(10195+offset0))
{
	vR[i] = 10195;
}
else
{
	vR[i] = 10194;
}

}
else
{
	if(input[i]==(10193+offset0))
{
	vR[i] = 10193;
}
else
{
	vR[i] = 10192;
}

}

}

}

}
else
{
	if(input[i]>(10183+offset0))
{
	if(input[i]>(10187+offset0))
{
	if(input[i]>(10189+offset0))
{
	if(input[i]==(10191+offset0))
{
	vR[i] = 10191;
}
else
{
	vR[i] = 10190;
}

}
else
{
	if(input[i]==(10189+offset0))
{
	vR[i] = 10189;
}
else
{
	vR[i] = 10188;
}

}

}
else
{
	if(input[i]>(10185+offset0))
{
	if(input[i]==(10187+offset0))
{
	vR[i] = 10187;
}
else
{
	vR[i] = 10186;
}

}
else
{
	if(input[i]==(10185+offset0))
{
	vR[i] = 10185;
}
else
{
	vR[i] = 10184;
}

}

}

}
else
{
	if(input[i]>(10179+offset0))
{
	if(input[i]>(10181+offset0))
{
	if(input[i]==(10183+offset0))
{
	vR[i] = 10183;
}
else
{
	vR[i] = 10182;
}

}
else
{
	if(input[i]==(10181+offset0))
{
	vR[i] = 10181;
}
else
{
	vR[i] = 10180;
}

}

}
else
{
	if(input[i]>(10177+offset0))
{
	if(input[i]==(10179+offset0))
{
	vR[i] = 10179;
}
else
{
	vR[i] = 10178;
}

}
else
{
	if(input[i]==(10177+offset0))
{
	vR[i] = 10177;
}
else
{
	vR[i] = 10176;
}

}

}

}

}

}

}
else
{
	if(input[i]>(10143+offset0))
{
	if(input[i]>(10159+offset0))
{
	if(input[i]>(10167+offset0))
{
	if(input[i]>(10171+offset0))
{
	if(input[i]>(10173+offset0))
{
	if(input[i]==(10175+offset0))
{
	vR[i] = 10175;
}
else
{
	vR[i] = 10174;
}

}
else
{
	if(input[i]==(10173+offset0))
{
	vR[i] = 10173;
}
else
{
	vR[i] = 10172;
}

}

}
else
{
	if(input[i]>(10169+offset0))
{
	if(input[i]==(10171+offset0))
{
	vR[i] = 10171;
}
else
{
	vR[i] = 10170;
}

}
else
{
	if(input[i]==(10169+offset0))
{
	vR[i] = 10169;
}
else
{
	vR[i] = 10168;
}

}

}

}
else
{
	if(input[i]>(10163+offset0))
{
	if(input[i]>(10165+offset0))
{
	if(input[i]==(10167+offset0))
{
	vR[i] = 10167;
}
else
{
	vR[i] = 10166;
}

}
else
{
	if(input[i]==(10165+offset0))
{
	vR[i] = 10165;
}
else
{
	vR[i] = 10164;
}

}

}
else
{
	if(input[i]>(10161+offset0))
{
	if(input[i]==(10163+offset0))
{
	vR[i] = 10163;
}
else
{
	vR[i] = 10162;
}

}
else
{
	if(input[i]==(10161+offset0))
{
	vR[i] = 10161;
}
else
{
	vR[i] = 10160;
}

}

}

}

}
else
{
	if(input[i]>(10151+offset0))
{
	if(input[i]>(10155+offset0))
{
	if(input[i]>(10157+offset0))
{
	if(input[i]==(10159+offset0))
{
	vR[i] = 10159;
}
else
{
	vR[i] = 10158;
}

}
else
{
	if(input[i]==(10157+offset0))
{
	vR[i] = 10157;
}
else
{
	vR[i] = 10156;
}

}

}
else
{
	if(input[i]>(10153+offset0))
{
	if(input[i]==(10155+offset0))
{
	vR[i] = 10155;
}
else
{
	vR[i] = 10154;
}

}
else
{
	if(input[i]==(10153+offset0))
{
	vR[i] = 10153;
}
else
{
	vR[i] = 10152;
}

}

}

}
else
{
	if(input[i]>(10147+offset0))
{
	if(input[i]>(10149+offset0))
{
	if(input[i]==(10151+offset0))
{
	vR[i] = 10151;
}
else
{
	vR[i] = 10150;
}

}
else
{
	if(input[i]==(10149+offset0))
{
	vR[i] = 10149;
}
else
{
	vR[i] = 10148;
}

}

}
else
{
	if(input[i]>(10145+offset0))
{
	if(input[i]==(10147+offset0))
{
	vR[i] = 10147;
}
else
{
	vR[i] = 10146;
}

}
else
{
	if(input[i]==(10145+offset0))
{
	vR[i] = 10145;
}
else
{
	vR[i] = 10144;
}

}

}

}

}

}
else
{
	if(input[i]>(10127+offset0))
{
	if(input[i]>(10135+offset0))
{
	if(input[i]>(10139+offset0))
{
	if(input[i]>(10141+offset0))
{
	if(input[i]==(10143+offset0))
{
	vR[i] = 10143;
}
else
{
	vR[i] = 10142;
}

}
else
{
	if(input[i]==(10141+offset0))
{
	vR[i] = 10141;
}
else
{
	vR[i] = 10140;
}

}

}
else
{
	if(input[i]>(10137+offset0))
{
	if(input[i]==(10139+offset0))
{
	vR[i] = 10139;
}
else
{
	vR[i] = 10138;
}

}
else
{
	if(input[i]==(10137+offset0))
{
	vR[i] = 10137;
}
else
{
	vR[i] = 10136;
}

}

}

}
else
{
	if(input[i]>(10131+offset0))
{
	if(input[i]>(10133+offset0))
{
	if(input[i]==(10135+offset0))
{
	vR[i] = 10135;
}
else
{
	vR[i] = 10134;
}

}
else
{
	if(input[i]==(10133+offset0))
{
	vR[i] = 10133;
}
else
{
	vR[i] = 10132;
}

}

}
else
{
	if(input[i]>(10129+offset0))
{
	if(input[i]==(10131+offset0))
{
	vR[i] = 10131;
}
else
{
	vR[i] = 10130;
}

}
else
{
	if(input[i]==(10129+offset0))
{
	vR[i] = 10129;
}
else
{
	vR[i] = 10128;
}

}

}

}

}
else
{
	if(input[i]>(10119+offset0))
{
	if(input[i]>(10123+offset0))
{
	if(input[i]>(10125+offset0))
{
	if(input[i]==(10127+offset0))
{
	vR[i] = 10127;
}
else
{
	vR[i] = 10126;
}

}
else
{
	if(input[i]==(10125+offset0))
{
	vR[i] = 10125;
}
else
{
	vR[i] = 10124;
}

}

}
else
{
	if(input[i]>(10121+offset0))
{
	if(input[i]==(10123+offset0))
{
	vR[i] = 10123;
}
else
{
	vR[i] = 10122;
}

}
else
{
	if(input[i]==(10121+offset0))
{
	vR[i] = 10121;
}
else
{
	vR[i] = 10120;
}

}

}

}
else
{
	if(input[i]>(10115+offset0))
{
	if(input[i]>(10117+offset0))
{
	if(input[i]==(10119+offset0))
{
	vR[i] = 10119;
}
else
{
	vR[i] = 10118;
}

}
else
{
	if(input[i]==(10117+offset0))
{
	vR[i] = 10117;
}
else
{
	vR[i] = 10116;
}

}

}
else
{
	if(input[i]>(10113+offset0))
{
	if(input[i]==(10115+offset0))
{
	vR[i] = 10115;
}
else
{
	vR[i] = 10114;
}

}
else
{
	if(input[i]==(10113+offset0))
{
	vR[i] = 10113;
}
else
{
	vR[i] = 10112;
}

}

}

}

}

}

}

}
else
{
	if(input[i]>(10047+offset0))
{
	if(input[i]>(10079+offset0))
{
	if(input[i]>(10095+offset0))
{
	if(input[i]>(10103+offset0))
{
	if(input[i]>(10107+offset0))
{
	if(input[i]>(10109+offset0))
{
	if(input[i]==(10111+offset0))
{
	vR[i] = 10111;
}
else
{
	vR[i] = 10110;
}

}
else
{
	if(input[i]==(10109+offset0))
{
	vR[i] = 10109;
}
else
{
	vR[i] = 10108;
}

}

}
else
{
	if(input[i]>(10105+offset0))
{
	if(input[i]==(10107+offset0))
{
	vR[i] = 10107;
}
else
{
	vR[i] = 10106;
}

}
else
{
	if(input[i]==(10105+offset0))
{
	vR[i] = 10105;
}
else
{
	vR[i] = 10104;
}

}

}

}
else
{
	if(input[i]>(10099+offset0))
{
	if(input[i]>(10101+offset0))
{
	if(input[i]==(10103+offset0))
{
	vR[i] = 10103;
}
else
{
	vR[i] = 10102;
}

}
else
{
	if(input[i]==(10101+offset0))
{
	vR[i] = 10101;
}
else
{
	vR[i] = 10100;
}

}

}
else
{
	if(input[i]>(10097+offset0))
{
	if(input[i]==(10099+offset0))
{
	vR[i] = 10099;
}
else
{
	vR[i] = 10098;
}

}
else
{
	if(input[i]==(10097+offset0))
{
	vR[i] = 10097;
}
else
{
	vR[i] = 10096;
}

}

}

}

}
else
{
	if(input[i]>(10087+offset0))
{
	if(input[i]>(10091+offset0))
{
	if(input[i]>(10093+offset0))
{
	if(input[i]==(10095+offset0))
{
	vR[i] = 10095;
}
else
{
	vR[i] = 10094;
}

}
else
{
	if(input[i]==(10093+offset0))
{
	vR[i] = 10093;
}
else
{
	vR[i] = 10092;
}

}

}
else
{
	if(input[i]>(10089+offset0))
{
	if(input[i]==(10091+offset0))
{
	vR[i] = 10091;
}
else
{
	vR[i] = 10090;
}

}
else
{
	if(input[i]==(10089+offset0))
{
	vR[i] = 10089;
}
else
{
	vR[i] = 10088;
}

}

}

}
else
{
	if(input[i]>(10083+offset0))
{
	if(input[i]>(10085+offset0))
{
	if(input[i]==(10087+offset0))
{
	vR[i] = 10087;
}
else
{
	vR[i] = 10086;
}

}
else
{
	if(input[i]==(10085+offset0))
{
	vR[i] = 10085;
}
else
{
	vR[i] = 10084;
}

}

}
else
{
	if(input[i]>(10081+offset0))
{
	if(input[i]==(10083+offset0))
{
	vR[i] = 10083;
}
else
{
	vR[i] = 10082;
}

}
else
{
	if(input[i]==(10081+offset0))
{
	vR[i] = 10081;
}
else
{
	vR[i] = 10080;
}

}

}

}

}

}
else
{
	if(input[i]>(10063+offset0))
{
	if(input[i]>(10071+offset0))
{
	if(input[i]>(10075+offset0))
{
	if(input[i]>(10077+offset0))
{
	if(input[i]==(10079+offset0))
{
	vR[i] = 10079;
}
else
{
	vR[i] = 10078;
}

}
else
{
	if(input[i]==(10077+offset0))
{
	vR[i] = 10077;
}
else
{
	vR[i] = 10076;
}

}

}
else
{
	if(input[i]>(10073+offset0))
{
	if(input[i]==(10075+offset0))
{
	vR[i] = 10075;
}
else
{
	vR[i] = 10074;
}

}
else
{
	if(input[i]==(10073+offset0))
{
	vR[i] = 10073;
}
else
{
	vR[i] = 10072;
}

}

}

}
else
{
	if(input[i]>(10067+offset0))
{
	if(input[i]>(10069+offset0))
{
	if(input[i]==(10071+offset0))
{
	vR[i] = 10071;
}
else
{
	vR[i] = 10070;
}

}
else
{
	if(input[i]==(10069+offset0))
{
	vR[i] = 10069;
}
else
{
	vR[i] = 10068;
}

}

}
else
{
	if(input[i]>(10065+offset0))
{
	if(input[i]==(10067+offset0))
{
	vR[i] = 10067;
}
else
{
	vR[i] = 10066;
}

}
else
{
	if(input[i]==(10065+offset0))
{
	vR[i] = 10065;
}
else
{
	vR[i] = 10064;
}

}

}

}

}
else
{
	if(input[i]>(10055+offset0))
{
	if(input[i]>(10059+offset0))
{
	if(input[i]>(10061+offset0))
{
	if(input[i]==(10063+offset0))
{
	vR[i] = 10063;
}
else
{
	vR[i] = 10062;
}

}
else
{
	if(input[i]==(10061+offset0))
{
	vR[i] = 10061;
}
else
{
	vR[i] = 10060;
}

}

}
else
{
	if(input[i]>(10057+offset0))
{
	if(input[i]==(10059+offset0))
{
	vR[i] = 10059;
}
else
{
	vR[i] = 10058;
}

}
else
{
	if(input[i]==(10057+offset0))
{
	vR[i] = 10057;
}
else
{
	vR[i] = 10056;
}

}

}

}
else
{
	if(input[i]>(10051+offset0))
{
	if(input[i]>(10053+offset0))
{
	if(input[i]==(10055+offset0))
{
	vR[i] = 10055;
}
else
{
	vR[i] = 10054;
}

}
else
{
	if(input[i]==(10053+offset0))
{
	vR[i] = 10053;
}
else
{
	vR[i] = 10052;
}

}

}
else
{
	if(input[i]>(10049+offset0))
{
	if(input[i]==(10051+offset0))
{
	vR[i] = 10051;
}
else
{
	vR[i] = 10050;
}

}
else
{
	if(input[i]==(10049+offset0))
{
	vR[i] = 10049;
}
else
{
	vR[i] = 10048;
}

}

}

}

}

}

}
else
{
	if(input[i]>(10015+offset0))
{
	if(input[i]>(10031+offset0))
{
	if(input[i]>(10039+offset0))
{
	if(input[i]>(10043+offset0))
{
	if(input[i]>(10045+offset0))
{
	if(input[i]==(10047+offset0))
{
	vR[i] = 10047;
}
else
{
	vR[i] = 10046;
}

}
else
{
	if(input[i]==(10045+offset0))
{
	vR[i] = 10045;
}
else
{
	vR[i] = 10044;
}

}

}
else
{
	if(input[i]>(10041+offset0))
{
	if(input[i]==(10043+offset0))
{
	vR[i] = 10043;
}
else
{
	vR[i] = 10042;
}

}
else
{
	if(input[i]==(10041+offset0))
{
	vR[i] = 10041;
}
else
{
	vR[i] = 10040;
}

}

}

}
else
{
	if(input[i]>(10035+offset0))
{
	if(input[i]>(10037+offset0))
{
	if(input[i]==(10039+offset0))
{
	vR[i] = 10039;
}
else
{
	vR[i] = 10038;
}

}
else
{
	if(input[i]==(10037+offset0))
{
	vR[i] = 10037;
}
else
{
	vR[i] = 10036;
}

}

}
else
{
	if(input[i]>(10033+offset0))
{
	if(input[i]==(10035+offset0))
{
	vR[i] = 10035;
}
else
{
	vR[i] = 10034;
}

}
else
{
	if(input[i]==(10033+offset0))
{
	vR[i] = 10033;
}
else
{
	vR[i] = 10032;
}

}

}

}

}
else
{
	if(input[i]>(10023+offset0))
{
	if(input[i]>(10027+offset0))
{
	if(input[i]>(10029+offset0))
{
	if(input[i]==(10031+offset0))
{
	vR[i] = 10031;
}
else
{
	vR[i] = 10030;
}

}
else
{
	if(input[i]==(10029+offset0))
{
	vR[i] = 10029;
}
else
{
	vR[i] = 10028;
}

}

}
else
{
	if(input[i]>(10025+offset0))
{
	if(input[i]==(10027+offset0))
{
	vR[i] = 10027;
}
else
{
	vR[i] = 10026;
}

}
else
{
	if(input[i]==(10025+offset0))
{
	vR[i] = 10025;
}
else
{
	vR[i] = 10024;
}

}

}

}
else
{
	if(input[i]>(10019+offset0))
{
	if(input[i]>(10021+offset0))
{
	if(input[i]==(10023+offset0))
{
	vR[i] = 10023;
}
else
{
	vR[i] = 10022;
}

}
else
{
	if(input[i]==(10021+offset0))
{
	vR[i] = 10021;
}
else
{
	vR[i] = 10020;
}

}

}
else
{
	if(input[i]>(10017+offset0))
{
	if(input[i]==(10019+offset0))
{
	vR[i] = 10019;
}
else
{
	vR[i] = 10018;
}

}
else
{
	if(input[i]==(10017+offset0))
{
	vR[i] = 10017;
}
else
{
	vR[i] = 10016;
}

}

}

}

}

}
else
{
	if(input[i]>(9999+offset0))
{
	if(input[i]>(10007+offset0))
{
	if(input[i]>(10011+offset0))
{
	if(input[i]>(10013+offset0))
{
	if(input[i]==(10015+offset0))
{
	vR[i] = 10015;
}
else
{
	vR[i] = 10014;
}

}
else
{
	if(input[i]==(10013+offset0))
{
	vR[i] = 10013;
}
else
{
	vR[i] = 10012;
}

}

}
else
{
	if(input[i]>(10009+offset0))
{
	if(input[i]==(10011+offset0))
{
	vR[i] = 10011;
}
else
{
	vR[i] = 10010;
}

}
else
{
	if(input[i]==(10009+offset0))
{
	vR[i] = 10009;
}
else
{
	vR[i] = 10008;
}

}

}

}
else
{
	if(input[i]>(10003+offset0))
{
	if(input[i]>(10005+offset0))
{
	if(input[i]==(10007+offset0))
{
	vR[i] = 10007;
}
else
{
	vR[i] = 10006;
}

}
else
{
	if(input[i]==(10005+offset0))
{
	vR[i] = 10005;
}
else
{
	vR[i] = 10004;
}

}

}
else
{
	if(input[i]>(10001+offset0))
{
	if(input[i]==(10003+offset0))
{
	vR[i] = 10003;
}
else
{
	vR[i] = 10002;
}

}
else
{
	if(input[i]==(10001+offset0))
{
	vR[i] = 10001;
}
else
{
	vR[i] = 10000;
}

}

}

}

}
else
{
	if(input[i]>(9991+offset0))
{
	if(input[i]>(9995+offset0))
{
	if(input[i]>(9997+offset0))
{
	if(input[i]==(9999+offset0))
{
	vR[i] = 9999;
}
else
{
	vR[i] = 9998;
}

}
else
{
	if(input[i]==(9997+offset0))
{
	vR[i] = 9997;
}
else
{
	vR[i] = 9996;
}

}

}
else
{
	if(input[i]>(9993+offset0))
{
	if(input[i]==(9995+offset0))
{
	vR[i] = 9995;
}
else
{
	vR[i] = 9994;
}

}
else
{
	if(input[i]==(9993+offset0))
{
	vR[i] = 9993;
}
else
{
	vR[i] = 9992;
}

}

}

}
else
{
	if(input[i]>(9987+offset0))
{
	if(input[i]>(9989+offset0))
{
	if(input[i]==(9991+offset0))
{
	vR[i] = 9991;
}
else
{
	vR[i] = 9990;
}

}
else
{
	if(input[i]==(9989+offset0))
{
	vR[i] = 9989;
}
else
{
	vR[i] = 9988;
}

}

}
else
{
	if(input[i]>(9985+offset0))
{
	if(input[i]==(9987+offset0))
{
	vR[i] = 9987;
}
else
{
	vR[i] = 9986;
}

}
else
{
	if(input[i]==(9985+offset0))
{
	vR[i] = 9985;
}
else
{
	vR[i] = 9984;
}

}

}

}

}

}

}

}

}
else
{
	if(input[i]>(9855+offset0))
{
	if(input[i]>(9919+offset0))
{
	if(input[i]>(9951+offset0))
{
	if(input[i]>(9967+offset0))
{
	if(input[i]>(9975+offset0))
{
	if(input[i]>(9979+offset0))
{
	if(input[i]>(9981+offset0))
{
	if(input[i]==(9983+offset0))
{
	vR[i] = 9983;
}
else
{
	vR[i] = 9982;
}

}
else
{
	if(input[i]==(9981+offset0))
{
	vR[i] = 9981;
}
else
{
	vR[i] = 9980;
}

}

}
else
{
	if(input[i]>(9977+offset0))
{
	if(input[i]==(9979+offset0))
{
	vR[i] = 9979;
}
else
{
	vR[i] = 9978;
}

}
else
{
	if(input[i]==(9977+offset0))
{
	vR[i] = 9977;
}
else
{
	vR[i] = 9976;
}

}

}

}
else
{
	if(input[i]>(9971+offset0))
{
	if(input[i]>(9973+offset0))
{
	if(input[i]==(9975+offset0))
{
	vR[i] = 9975;
}
else
{
	vR[i] = 9974;
}

}
else
{
	if(input[i]==(9973+offset0))
{
	vR[i] = 9973;
}
else
{
	vR[i] = 9972;
}

}

}
else
{
	if(input[i]>(9969+offset0))
{
	if(input[i]==(9971+offset0))
{
	vR[i] = 9971;
}
else
{
	vR[i] = 9970;
}

}
else
{
	if(input[i]==(9969+offset0))
{
	vR[i] = 9969;
}
else
{
	vR[i] = 9968;
}

}

}

}

}
else
{
	if(input[i]>(9959+offset0))
{
	if(input[i]>(9963+offset0))
{
	if(input[i]>(9965+offset0))
{
	if(input[i]==(9967+offset0))
{
	vR[i] = 9967;
}
else
{
	vR[i] = 9966;
}

}
else
{
	if(input[i]==(9965+offset0))
{
	vR[i] = 9965;
}
else
{
	vR[i] = 9964;
}

}

}
else
{
	if(input[i]>(9961+offset0))
{
	if(input[i]==(9963+offset0))
{
	vR[i] = 9963;
}
else
{
	vR[i] = 9962;
}

}
else
{
	if(input[i]==(9961+offset0))
{
	vR[i] = 9961;
}
else
{
	vR[i] = 9960;
}

}

}

}
else
{
	if(input[i]>(9955+offset0))
{
	if(input[i]>(9957+offset0))
{
	if(input[i]==(9959+offset0))
{
	vR[i] = 9959;
}
else
{
	vR[i] = 9958;
}

}
else
{
	if(input[i]==(9957+offset0))
{
	vR[i] = 9957;
}
else
{
	vR[i] = 9956;
}

}

}
else
{
	if(input[i]>(9953+offset0))
{
	if(input[i]==(9955+offset0))
{
	vR[i] = 9955;
}
else
{
	vR[i] = 9954;
}

}
else
{
	if(input[i]==(9953+offset0))
{
	vR[i] = 9953;
}
else
{
	vR[i] = 9952;
}

}

}

}

}

}
else
{
	if(input[i]>(9935+offset0))
{
	if(input[i]>(9943+offset0))
{
	if(input[i]>(9947+offset0))
{
	if(input[i]>(9949+offset0))
{
	if(input[i]==(9951+offset0))
{
	vR[i] = 9951;
}
else
{
	vR[i] = 9950;
}

}
else
{
	if(input[i]==(9949+offset0))
{
	vR[i] = 9949;
}
else
{
	vR[i] = 9948;
}

}

}
else
{
	if(input[i]>(9945+offset0))
{
	if(input[i]==(9947+offset0))
{
	vR[i] = 9947;
}
else
{
	vR[i] = 9946;
}

}
else
{
	if(input[i]==(9945+offset0))
{
	vR[i] = 9945;
}
else
{
	vR[i] = 9944;
}

}

}

}
else
{
	if(input[i]>(9939+offset0))
{
	if(input[i]>(9941+offset0))
{
	if(input[i]==(9943+offset0))
{
	vR[i] = 9943;
}
else
{
	vR[i] = 9942;
}

}
else
{
	if(input[i]==(9941+offset0))
{
	vR[i] = 9941;
}
else
{
	vR[i] = 9940;
}

}

}
else
{
	if(input[i]>(9937+offset0))
{
	if(input[i]==(9939+offset0))
{
	vR[i] = 9939;
}
else
{
	vR[i] = 9938;
}

}
else
{
	if(input[i]==(9937+offset0))
{
	vR[i] = 9937;
}
else
{
	vR[i] = 9936;
}

}

}

}

}
else
{
	if(input[i]>(9927+offset0))
{
	if(input[i]>(9931+offset0))
{
	if(input[i]>(9933+offset0))
{
	if(input[i]==(9935+offset0))
{
	vR[i] = 9935;
}
else
{
	vR[i] = 9934;
}

}
else
{
	if(input[i]==(9933+offset0))
{
	vR[i] = 9933;
}
else
{
	vR[i] = 9932;
}

}

}
else
{
	if(input[i]>(9929+offset0))
{
	if(input[i]==(9931+offset0))
{
	vR[i] = 9931;
}
else
{
	vR[i] = 9930;
}

}
else
{
	if(input[i]==(9929+offset0))
{
	vR[i] = 9929;
}
else
{
	vR[i] = 9928;
}

}

}

}
else
{
	if(input[i]>(9923+offset0))
{
	if(input[i]>(9925+offset0))
{
	if(input[i]==(9927+offset0))
{
	vR[i] = 9927;
}
else
{
	vR[i] = 9926;
}

}
else
{
	if(input[i]==(9925+offset0))
{
	vR[i] = 9925;
}
else
{
	vR[i] = 9924;
}

}

}
else
{
	if(input[i]>(9921+offset0))
{
	if(input[i]==(9923+offset0))
{
	vR[i] = 9923;
}
else
{
	vR[i] = 9922;
}

}
else
{
	if(input[i]==(9921+offset0))
{
	vR[i] = 9921;
}
else
{
	vR[i] = 9920;
}

}

}

}

}

}

}
else
{
	if(input[i]>(9887+offset0))
{
	if(input[i]>(9903+offset0))
{
	if(input[i]>(9911+offset0))
{
	if(input[i]>(9915+offset0))
{
	if(input[i]>(9917+offset0))
{
	if(input[i]==(9919+offset0))
{
	vR[i] = 9919;
}
else
{
	vR[i] = 9918;
}

}
else
{
	if(input[i]==(9917+offset0))
{
	vR[i] = 9917;
}
else
{
	vR[i] = 9916;
}

}

}
else
{
	if(input[i]>(9913+offset0))
{
	if(input[i]==(9915+offset0))
{
	vR[i] = 9915;
}
else
{
	vR[i] = 9914;
}

}
else
{
	if(input[i]==(9913+offset0))
{
	vR[i] = 9913;
}
else
{
	vR[i] = 9912;
}

}

}

}
else
{
	if(input[i]>(9907+offset0))
{
	if(input[i]>(9909+offset0))
{
	if(input[i]==(9911+offset0))
{
	vR[i] = 9911;
}
else
{
	vR[i] = 9910;
}

}
else
{
	if(input[i]==(9909+offset0))
{
	vR[i] = 9909;
}
else
{
	vR[i] = 9908;
}

}

}
else
{
	if(input[i]>(9905+offset0))
{
	if(input[i]==(9907+offset0))
{
	vR[i] = 9907;
}
else
{
	vR[i] = 9906;
}

}
else
{
	if(input[i]==(9905+offset0))
{
	vR[i] = 9905;
}
else
{
	vR[i] = 9904;
}

}

}

}

}
else
{
	if(input[i]>(9895+offset0))
{
	if(input[i]>(9899+offset0))
{
	if(input[i]>(9901+offset0))
{
	if(input[i]==(9903+offset0))
{
	vR[i] = 9903;
}
else
{
	vR[i] = 9902;
}

}
else
{
	if(input[i]==(9901+offset0))
{
	vR[i] = 9901;
}
else
{
	vR[i] = 9900;
}

}

}
else
{
	if(input[i]>(9897+offset0))
{
	if(input[i]==(9899+offset0))
{
	vR[i] = 9899;
}
else
{
	vR[i] = 9898;
}

}
else
{
	if(input[i]==(9897+offset0))
{
	vR[i] = 9897;
}
else
{
	vR[i] = 9896;
}

}

}

}
else
{
	if(input[i]>(9891+offset0))
{
	if(input[i]>(9893+offset0))
{
	if(input[i]==(9895+offset0))
{
	vR[i] = 9895;
}
else
{
	vR[i] = 9894;
}

}
else
{
	if(input[i]==(9893+offset0))
{
	vR[i] = 9893;
}
else
{
	vR[i] = 9892;
}

}

}
else
{
	if(input[i]>(9889+offset0))
{
	if(input[i]==(9891+offset0))
{
	vR[i] = 9891;
}
else
{
	vR[i] = 9890;
}

}
else
{
	if(input[i]==(9889+offset0))
{
	vR[i] = 9889;
}
else
{
	vR[i] = 9888;
}

}

}

}

}

}
else
{
	if(input[i]>(9871+offset0))
{
	if(input[i]>(9879+offset0))
{
	if(input[i]>(9883+offset0))
{
	if(input[i]>(9885+offset0))
{
	if(input[i]==(9887+offset0))
{
	vR[i] = 9887;
}
else
{
	vR[i] = 9886;
}

}
else
{
	if(input[i]==(9885+offset0))
{
	vR[i] = 9885;
}
else
{
	vR[i] = 9884;
}

}

}
else
{
	if(input[i]>(9881+offset0))
{
	if(input[i]==(9883+offset0))
{
	vR[i] = 9883;
}
else
{
	vR[i] = 9882;
}

}
else
{
	if(input[i]==(9881+offset0))
{
	vR[i] = 9881;
}
else
{
	vR[i] = 9880;
}

}

}

}
else
{
	if(input[i]>(9875+offset0))
{
	if(input[i]>(9877+offset0))
{
	if(input[i]==(9879+offset0))
{
	vR[i] = 9879;
}
else
{
	vR[i] = 9878;
}

}
else
{
	if(input[i]==(9877+offset0))
{
	vR[i] = 9877;
}
else
{
	vR[i] = 9876;
}

}

}
else
{
	if(input[i]>(9873+offset0))
{
	if(input[i]==(9875+offset0))
{
	vR[i] = 9875;
}
else
{
	vR[i] = 9874;
}

}
else
{
	if(input[i]==(9873+offset0))
{
	vR[i] = 9873;
}
else
{
	vR[i] = 9872;
}

}

}

}

}
else
{
	if(input[i]>(9863+offset0))
{
	if(input[i]>(9867+offset0))
{
	if(input[i]>(9869+offset0))
{
	if(input[i]==(9871+offset0))
{
	vR[i] = 9871;
}
else
{
	vR[i] = 9870;
}

}
else
{
	if(input[i]==(9869+offset0))
{
	vR[i] = 9869;
}
else
{
	vR[i] = 9868;
}

}

}
else
{
	if(input[i]>(9865+offset0))
{
	if(input[i]==(9867+offset0))
{
	vR[i] = 9867;
}
else
{
	vR[i] = 9866;
}

}
else
{
	if(input[i]==(9865+offset0))
{
	vR[i] = 9865;
}
else
{
	vR[i] = 9864;
}

}

}

}
else
{
	if(input[i]>(9859+offset0))
{
	if(input[i]>(9861+offset0))
{
	if(input[i]==(9863+offset0))
{
	vR[i] = 9863;
}
else
{
	vR[i] = 9862;
}

}
else
{
	if(input[i]==(9861+offset0))
{
	vR[i] = 9861;
}
else
{
	vR[i] = 9860;
}

}

}
else
{
	if(input[i]>(9857+offset0))
{
	if(input[i]==(9859+offset0))
{
	vR[i] = 9859;
}
else
{
	vR[i] = 9858;
}

}
else
{
	if(input[i]==(9857+offset0))
{
	vR[i] = 9857;
}
else
{
	vR[i] = 9856;
}

}

}

}

}

}

}

}
else
{
	if(input[i]>(9791+offset0))
{
	if(input[i]>(9823+offset0))
{
	if(input[i]>(9839+offset0))
{
	if(input[i]>(9847+offset0))
{
	if(input[i]>(9851+offset0))
{
	if(input[i]>(9853+offset0))
{
	if(input[i]==(9855+offset0))
{
	vR[i] = 9855;
}
else
{
	vR[i] = 9854;
}

}
else
{
	if(input[i]==(9853+offset0))
{
	vR[i] = 9853;
}
else
{
	vR[i] = 9852;
}

}

}
else
{
	if(input[i]>(9849+offset0))
{
	if(input[i]==(9851+offset0))
{
	vR[i] = 9851;
}
else
{
	vR[i] = 9850;
}

}
else
{
	if(input[i]==(9849+offset0))
{
	vR[i] = 9849;
}
else
{
	vR[i] = 9848;
}

}

}

}
else
{
	if(input[i]>(9843+offset0))
{
	if(input[i]>(9845+offset0))
{
	if(input[i]==(9847+offset0))
{
	vR[i] = 9847;
}
else
{
	vR[i] = 9846;
}

}
else
{
	if(input[i]==(9845+offset0))
{
	vR[i] = 9845;
}
else
{
	vR[i] = 9844;
}

}

}
else
{
	if(input[i]>(9841+offset0))
{
	if(input[i]==(9843+offset0))
{
	vR[i] = 9843;
}
else
{
	vR[i] = 9842;
}

}
else
{
	if(input[i]==(9841+offset0))
{
	vR[i] = 9841;
}
else
{
	vR[i] = 9840;
}

}

}

}

}
else
{
	if(input[i]>(9831+offset0))
{
	if(input[i]>(9835+offset0))
{
	if(input[i]>(9837+offset0))
{
	if(input[i]==(9839+offset0))
{
	vR[i] = 9839;
}
else
{
	vR[i] = 9838;
}

}
else
{
	if(input[i]==(9837+offset0))
{
	vR[i] = 9837;
}
else
{
	vR[i] = 9836;
}

}

}
else
{
	if(input[i]>(9833+offset0))
{
	if(input[i]==(9835+offset0))
{
	vR[i] = 9835;
}
else
{
	vR[i] = 9834;
}

}
else
{
	if(input[i]==(9833+offset0))
{
	vR[i] = 9833;
}
else
{
	vR[i] = 9832;
}

}

}

}
else
{
	if(input[i]>(9827+offset0))
{
	if(input[i]>(9829+offset0))
{
	if(input[i]==(9831+offset0))
{
	vR[i] = 9831;
}
else
{
	vR[i] = 9830;
}

}
else
{
	if(input[i]==(9829+offset0))
{
	vR[i] = 9829;
}
else
{
	vR[i] = 9828;
}

}

}
else
{
	if(input[i]>(9825+offset0))
{
	if(input[i]==(9827+offset0))
{
	vR[i] = 9827;
}
else
{
	vR[i] = 9826;
}

}
else
{
	if(input[i]==(9825+offset0))
{
	vR[i] = 9825;
}
else
{
	vR[i] = 9824;
}

}

}

}

}

}
else
{
	if(input[i]>(9807+offset0))
{
	if(input[i]>(9815+offset0))
{
	if(input[i]>(9819+offset0))
{
	if(input[i]>(9821+offset0))
{
	if(input[i]==(9823+offset0))
{
	vR[i] = 9823;
}
else
{
	vR[i] = 9822;
}

}
else
{
	if(input[i]==(9821+offset0))
{
	vR[i] = 9821;
}
else
{
	vR[i] = 9820;
}

}

}
else
{
	if(input[i]>(9817+offset0))
{
	if(input[i]==(9819+offset0))
{
	vR[i] = 9819;
}
else
{
	vR[i] = 9818;
}

}
else
{
	if(input[i]==(9817+offset0))
{
	vR[i] = 9817;
}
else
{
	vR[i] = 9816;
}

}

}

}
else
{
	if(input[i]>(9811+offset0))
{
	if(input[i]>(9813+offset0))
{
	if(input[i]==(9815+offset0))
{
	vR[i] = 9815;
}
else
{
	vR[i] = 9814;
}

}
else
{
	if(input[i]==(9813+offset0))
{
	vR[i] = 9813;
}
else
{
	vR[i] = 9812;
}

}

}
else
{
	if(input[i]>(9809+offset0))
{
	if(input[i]==(9811+offset0))
{
	vR[i] = 9811;
}
else
{
	vR[i] = 9810;
}

}
else
{
	if(input[i]==(9809+offset0))
{
	vR[i] = 9809;
}
else
{
	vR[i] = 9808;
}

}

}

}

}
else
{
	if(input[i]>(9799+offset0))
{
	if(input[i]>(9803+offset0))
{
	if(input[i]>(9805+offset0))
{
	if(input[i]==(9807+offset0))
{
	vR[i] = 9807;
}
else
{
	vR[i] = 9806;
}

}
else
{
	if(input[i]==(9805+offset0))
{
	vR[i] = 9805;
}
else
{
	vR[i] = 9804;
}

}

}
else
{
	if(input[i]>(9801+offset0))
{
	if(input[i]==(9803+offset0))
{
	vR[i] = 9803;
}
else
{
	vR[i] = 9802;
}

}
else
{
	if(input[i]==(9801+offset0))
{
	vR[i] = 9801;
}
else
{
	vR[i] = 9800;
}

}

}

}
else
{
	if(input[i]>(9795+offset0))
{
	if(input[i]>(9797+offset0))
{
	if(input[i]==(9799+offset0))
{
	vR[i] = 9799;
}
else
{
	vR[i] = 9798;
}

}
else
{
	if(input[i]==(9797+offset0))
{
	vR[i] = 9797;
}
else
{
	vR[i] = 9796;
}

}

}
else
{
	if(input[i]>(9793+offset0))
{
	if(input[i]==(9795+offset0))
{
	vR[i] = 9795;
}
else
{
	vR[i] = 9794;
}

}
else
{
	if(input[i]==(9793+offset0))
{
	vR[i] = 9793;
}
else
{
	vR[i] = 9792;
}

}

}

}

}

}

}
else
{
	if(input[i]>(9759+offset0))
{
	if(input[i]>(9775+offset0))
{
	if(input[i]>(9783+offset0))
{
	if(input[i]>(9787+offset0))
{
	if(input[i]>(9789+offset0))
{
	if(input[i]==(9791+offset0))
{
	vR[i] = 9791;
}
else
{
	vR[i] = 9790;
}

}
else
{
	if(input[i]==(9789+offset0))
{
	vR[i] = 9789;
}
else
{
	vR[i] = 9788;
}

}

}
else
{
	if(input[i]>(9785+offset0))
{
	if(input[i]==(9787+offset0))
{
	vR[i] = 9787;
}
else
{
	vR[i] = 9786;
}

}
else
{
	if(input[i]==(9785+offset0))
{
	vR[i] = 9785;
}
else
{
	vR[i] = 9784;
}

}

}

}
else
{
	if(input[i]>(9779+offset0))
{
	if(input[i]>(9781+offset0))
{
	if(input[i]==(9783+offset0))
{
	vR[i] = 9783;
}
else
{
	vR[i] = 9782;
}

}
else
{
	if(input[i]==(9781+offset0))
{
	vR[i] = 9781;
}
else
{
	vR[i] = 9780;
}

}

}
else
{
	if(input[i]>(9777+offset0))
{
	if(input[i]==(9779+offset0))
{
	vR[i] = 9779;
}
else
{
	vR[i] = 9778;
}

}
else
{
	if(input[i]==(9777+offset0))
{
	vR[i] = 9777;
}
else
{
	vR[i] = 9776;
}

}

}

}

}
else
{
	if(input[i]>(9767+offset0))
{
	if(input[i]>(9771+offset0))
{
	if(input[i]>(9773+offset0))
{
	if(input[i]==(9775+offset0))
{
	vR[i] = 9775;
}
else
{
	vR[i] = 9774;
}

}
else
{
	if(input[i]==(9773+offset0))
{
	vR[i] = 9773;
}
else
{
	vR[i] = 9772;
}

}

}
else
{
	if(input[i]>(9769+offset0))
{
	if(input[i]==(9771+offset0))
{
	vR[i] = 9771;
}
else
{
	vR[i] = 9770;
}

}
else
{
	if(input[i]==(9769+offset0))
{
	vR[i] = 9769;
}
else
{
	vR[i] = 9768;
}

}

}

}
else
{
	if(input[i]>(9763+offset0))
{
	if(input[i]>(9765+offset0))
{
	if(input[i]==(9767+offset0))
{
	vR[i] = 9767;
}
else
{
	vR[i] = 9766;
}

}
else
{
	if(input[i]==(9765+offset0))
{
	vR[i] = 9765;
}
else
{
	vR[i] = 9764;
}

}

}
else
{
	if(input[i]>(9761+offset0))
{
	if(input[i]==(9763+offset0))
{
	vR[i] = 9763;
}
else
{
	vR[i] = 9762;
}

}
else
{
	if(input[i]==(9761+offset0))
{
	vR[i] = 9761;
}
else
{
	vR[i] = 9760;
}

}

}

}

}

}
else
{
	if(input[i]>(9743+offset0))
{
	if(input[i]>(9751+offset0))
{
	if(input[i]>(9755+offset0))
{
	if(input[i]>(9757+offset0))
{
	if(input[i]==(9759+offset0))
{
	vR[i] = 9759;
}
else
{
	vR[i] = 9758;
}

}
else
{
	if(input[i]==(9757+offset0))
{
	vR[i] = 9757;
}
else
{
	vR[i] = 9756;
}

}

}
else
{
	if(input[i]>(9753+offset0))
{
	if(input[i]==(9755+offset0))
{
	vR[i] = 9755;
}
else
{
	vR[i] = 9754;
}

}
else
{
	if(input[i]==(9753+offset0))
{
	vR[i] = 9753;
}
else
{
	vR[i] = 9752;
}

}

}

}
else
{
	if(input[i]>(9747+offset0))
{
	if(input[i]>(9749+offset0))
{
	if(input[i]==(9751+offset0))
{
	vR[i] = 9751;
}
else
{
	vR[i] = 9750;
}

}
else
{
	if(input[i]==(9749+offset0))
{
	vR[i] = 9749;
}
else
{
	vR[i] = 9748;
}

}

}
else
{
	if(input[i]>(9745+offset0))
{
	if(input[i]==(9747+offset0))
{
	vR[i] = 9747;
}
else
{
	vR[i] = 9746;
}

}
else
{
	if(input[i]==(9745+offset0))
{
	vR[i] = 9745;
}
else
{
	vR[i] = 9744;
}

}

}

}

}
else
{
	if(input[i]>(9735+offset0))
{
	if(input[i]>(9739+offset0))
{
	if(input[i]>(9741+offset0))
{
	if(input[i]==(9743+offset0))
{
	vR[i] = 9743;
}
else
{
	vR[i] = 9742;
}

}
else
{
	if(input[i]==(9741+offset0))
{
	vR[i] = 9741;
}
else
{
	vR[i] = 9740;
}

}

}
else
{
	if(input[i]>(9737+offset0))
{
	if(input[i]==(9739+offset0))
{
	vR[i] = 9739;
}
else
{
	vR[i] = 9738;
}

}
else
{
	if(input[i]==(9737+offset0))
{
	vR[i] = 9737;
}
else
{
	vR[i] = 9736;
}

}

}

}
else
{
	if(input[i]>(9731+offset0))
{
	if(input[i]>(9733+offset0))
{
	if(input[i]==(9735+offset0))
{
	vR[i] = 9735;
}
else
{
	vR[i] = 9734;
}

}
else
{
	if(input[i]==(9733+offset0))
{
	vR[i] = 9733;
}
else
{
	vR[i] = 9732;
}

}

}
else
{
	if(input[i]>(9729+offset0))
{
	if(input[i]==(9731+offset0))
{
	vR[i] = 9731;
}
else
{
	vR[i] = 9730;
}

}
else
{
	if(input[i]==(9729+offset0))
{
	vR[i] = 9729;
}
else
{
	vR[i] = 9728;
}

}

}

}

}

}

}

}

}

}
else
{
	if(input[i]>(9471+offset0))
{
	if(input[i]>(9599+offset0))
{
	if(input[i]>(9663+offset0))
{
	if(input[i]>(9695+offset0))
{
	if(input[i]>(9711+offset0))
{
	if(input[i]>(9719+offset0))
{
	if(input[i]>(9723+offset0))
{
	if(input[i]>(9725+offset0))
{
	if(input[i]==(9727+offset0))
{
	vR[i] = 9727;
}
else
{
	vR[i] = 9726;
}

}
else
{
	if(input[i]==(9725+offset0))
{
	vR[i] = 9725;
}
else
{
	vR[i] = 9724;
}

}

}
else
{
	if(input[i]>(9721+offset0))
{
	if(input[i]==(9723+offset0))
{
	vR[i] = 9723;
}
else
{
	vR[i] = 9722;
}

}
else
{
	if(input[i]==(9721+offset0))
{
	vR[i] = 9721;
}
else
{
	vR[i] = 9720;
}

}

}

}
else
{
	if(input[i]>(9715+offset0))
{
	if(input[i]>(9717+offset0))
{
	if(input[i]==(9719+offset0))
{
	vR[i] = 9719;
}
else
{
	vR[i] = 9718;
}

}
else
{
	if(input[i]==(9717+offset0))
{
	vR[i] = 9717;
}
else
{
	vR[i] = 9716;
}

}

}
else
{
	if(input[i]>(9713+offset0))
{
	if(input[i]==(9715+offset0))
{
	vR[i] = 9715;
}
else
{
	vR[i] = 9714;
}

}
else
{
	if(input[i]==(9713+offset0))
{
	vR[i] = 9713;
}
else
{
	vR[i] = 9712;
}

}

}

}

}
else
{
	if(input[i]>(9703+offset0))
{
	if(input[i]>(9707+offset0))
{
	if(input[i]>(9709+offset0))
{
	if(input[i]==(9711+offset0))
{
	vR[i] = 9711;
}
else
{
	vR[i] = 9710;
}

}
else
{
	if(input[i]==(9709+offset0))
{
	vR[i] = 9709;
}
else
{
	vR[i] = 9708;
}

}

}
else
{
	if(input[i]>(9705+offset0))
{
	if(input[i]==(9707+offset0))
{
	vR[i] = 9707;
}
else
{
	vR[i] = 9706;
}

}
else
{
	if(input[i]==(9705+offset0))
{
	vR[i] = 9705;
}
else
{
	vR[i] = 9704;
}

}

}

}
else
{
	if(input[i]>(9699+offset0))
{
	if(input[i]>(9701+offset0))
{
	if(input[i]==(9703+offset0))
{
	vR[i] = 9703;
}
else
{
	vR[i] = 9702;
}

}
else
{
	if(input[i]==(9701+offset0))
{
	vR[i] = 9701;
}
else
{
	vR[i] = 9700;
}

}

}
else
{
	if(input[i]>(9697+offset0))
{
	if(input[i]==(9699+offset0))
{
	vR[i] = 9699;
}
else
{
	vR[i] = 9698;
}

}
else
{
	if(input[i]==(9697+offset0))
{
	vR[i] = 9697;
}
else
{
	vR[i] = 9696;
}

}

}

}

}

}
else
{
	if(input[i]>(9679+offset0))
{
	if(input[i]>(9687+offset0))
{
	if(input[i]>(9691+offset0))
{
	if(input[i]>(9693+offset0))
{
	if(input[i]==(9695+offset0))
{
	vR[i] = 9695;
}
else
{
	vR[i] = 9694;
}

}
else
{
	if(input[i]==(9693+offset0))
{
	vR[i] = 9693;
}
else
{
	vR[i] = 9692;
}

}

}
else
{
	if(input[i]>(9689+offset0))
{
	if(input[i]==(9691+offset0))
{
	vR[i] = 9691;
}
else
{
	vR[i] = 9690;
}

}
else
{
	if(input[i]==(9689+offset0))
{
	vR[i] = 9689;
}
else
{
	vR[i] = 9688;
}

}

}

}
else
{
	if(input[i]>(9683+offset0))
{
	if(input[i]>(9685+offset0))
{
	if(input[i]==(9687+offset0))
{
	vR[i] = 9687;
}
else
{
	vR[i] = 9686;
}

}
else
{
	if(input[i]==(9685+offset0))
{
	vR[i] = 9685;
}
else
{
	vR[i] = 9684;
}

}

}
else
{
	if(input[i]>(9681+offset0))
{
	if(input[i]==(9683+offset0))
{
	vR[i] = 9683;
}
else
{
	vR[i] = 9682;
}

}
else
{
	if(input[i]==(9681+offset0))
{
	vR[i] = 9681;
}
else
{
	vR[i] = 9680;
}

}

}

}

}
else
{
	if(input[i]>(9671+offset0))
{
	if(input[i]>(9675+offset0))
{
	if(input[i]>(9677+offset0))
{
	if(input[i]==(9679+offset0))
{
	vR[i] = 9679;
}
else
{
	vR[i] = 9678;
}

}
else
{
	if(input[i]==(9677+offset0))
{
	vR[i] = 9677;
}
else
{
	vR[i] = 9676;
}

}

}
else
{
	if(input[i]>(9673+offset0))
{
	if(input[i]==(9675+offset0))
{
	vR[i] = 9675;
}
else
{
	vR[i] = 9674;
}

}
else
{
	if(input[i]==(9673+offset0))
{
	vR[i] = 9673;
}
else
{
	vR[i] = 9672;
}

}

}

}
else
{
	if(input[i]>(9667+offset0))
{
	if(input[i]>(9669+offset0))
{
	if(input[i]==(9671+offset0))
{
	vR[i] = 9671;
}
else
{
	vR[i] = 9670;
}

}
else
{
	if(input[i]==(9669+offset0))
{
	vR[i] = 9669;
}
else
{
	vR[i] = 9668;
}

}

}
else
{
	if(input[i]>(9665+offset0))
{
	if(input[i]==(9667+offset0))
{
	vR[i] = 9667;
}
else
{
	vR[i] = 9666;
}

}
else
{
	if(input[i]==(9665+offset0))
{
	vR[i] = 9665;
}
else
{
	vR[i] = 9664;
}

}

}

}

}

}

}
else
{
	if(input[i]>(9631+offset0))
{
	if(input[i]>(9647+offset0))
{
	if(input[i]>(9655+offset0))
{
	if(input[i]>(9659+offset0))
{
	if(input[i]>(9661+offset0))
{
	if(input[i]==(9663+offset0))
{
	vR[i] = 9663;
}
else
{
	vR[i] = 9662;
}

}
else
{
	if(input[i]==(9661+offset0))
{
	vR[i] = 9661;
}
else
{
	vR[i] = 9660;
}

}

}
else
{
	if(input[i]>(9657+offset0))
{
	if(input[i]==(9659+offset0))
{
	vR[i] = 9659;
}
else
{
	vR[i] = 9658;
}

}
else
{
	if(input[i]==(9657+offset0))
{
	vR[i] = 9657;
}
else
{
	vR[i] = 9656;
}

}

}

}
else
{
	if(input[i]>(9651+offset0))
{
	if(input[i]>(9653+offset0))
{
	if(input[i]==(9655+offset0))
{
	vR[i] = 9655;
}
else
{
	vR[i] = 9654;
}

}
else
{
	if(input[i]==(9653+offset0))
{
	vR[i] = 9653;
}
else
{
	vR[i] = 9652;
}

}

}
else
{
	if(input[i]>(9649+offset0))
{
	if(input[i]==(9651+offset0))
{
	vR[i] = 9651;
}
else
{
	vR[i] = 9650;
}

}
else
{
	if(input[i]==(9649+offset0))
{
	vR[i] = 9649;
}
else
{
	vR[i] = 9648;
}

}

}

}

}
else
{
	if(input[i]>(9639+offset0))
{
	if(input[i]>(9643+offset0))
{
	if(input[i]>(9645+offset0))
{
	if(input[i]==(9647+offset0))
{
	vR[i] = 9647;
}
else
{
	vR[i] = 9646;
}

}
else
{
	if(input[i]==(9645+offset0))
{
	vR[i] = 9645;
}
else
{
	vR[i] = 9644;
}

}

}
else
{
	if(input[i]>(9641+offset0))
{
	if(input[i]==(9643+offset0))
{
	vR[i] = 9643;
}
else
{
	vR[i] = 9642;
}

}
else
{
	if(input[i]==(9641+offset0))
{
	vR[i] = 9641;
}
else
{
	vR[i] = 9640;
}

}

}

}
else
{
	if(input[i]>(9635+offset0))
{
	if(input[i]>(9637+offset0))
{
	if(input[i]==(9639+offset0))
{
	vR[i] = 9639;
}
else
{
	vR[i] = 9638;
}

}
else
{
	if(input[i]==(9637+offset0))
{
	vR[i] = 9637;
}
else
{
	vR[i] = 9636;
}

}

}
else
{
	if(input[i]>(9633+offset0))
{
	if(input[i]==(9635+offset0))
{
	vR[i] = 9635;
}
else
{
	vR[i] = 9634;
}

}
else
{
	if(input[i]==(9633+offset0))
{
	vR[i] = 9633;
}
else
{
	vR[i] = 9632;
}

}

}

}

}

}
else
{
	if(input[i]>(9615+offset0))
{
	if(input[i]>(9623+offset0))
{
	if(input[i]>(9627+offset0))
{
	if(input[i]>(9629+offset0))
{
	if(input[i]==(9631+offset0))
{
	vR[i] = 9631;
}
else
{
	vR[i] = 9630;
}

}
else
{
	if(input[i]==(9629+offset0))
{
	vR[i] = 9629;
}
else
{
	vR[i] = 9628;
}

}

}
else
{
	if(input[i]>(9625+offset0))
{
	if(input[i]==(9627+offset0))
{
	vR[i] = 9627;
}
else
{
	vR[i] = 9626;
}

}
else
{
	if(input[i]==(9625+offset0))
{
	vR[i] = 9625;
}
else
{
	vR[i] = 9624;
}

}

}

}
else
{
	if(input[i]>(9619+offset0))
{
	if(input[i]>(9621+offset0))
{
	if(input[i]==(9623+offset0))
{
	vR[i] = 9623;
}
else
{
	vR[i] = 9622;
}

}
else
{
	if(input[i]==(9621+offset0))
{
	vR[i] = 9621;
}
else
{
	vR[i] = 9620;
}

}

}
else
{
	if(input[i]>(9617+offset0))
{
	if(input[i]==(9619+offset0))
{
	vR[i] = 9619;
}
else
{
	vR[i] = 9618;
}

}
else
{
	if(input[i]==(9617+offset0))
{
	vR[i] = 9617;
}
else
{
	vR[i] = 9616;
}

}

}

}

}
else
{
	if(input[i]>(9607+offset0))
{
	if(input[i]>(9611+offset0))
{
	if(input[i]>(9613+offset0))
{
	if(input[i]==(9615+offset0))
{
	vR[i] = 9615;
}
else
{
	vR[i] = 9614;
}

}
else
{
	if(input[i]==(9613+offset0))
{
	vR[i] = 9613;
}
else
{
	vR[i] = 9612;
}

}

}
else
{
	if(input[i]>(9609+offset0))
{
	if(input[i]==(9611+offset0))
{
	vR[i] = 9611;
}
else
{
	vR[i] = 9610;
}

}
else
{
	if(input[i]==(9609+offset0))
{
	vR[i] = 9609;
}
else
{
	vR[i] = 9608;
}

}

}

}
else
{
	if(input[i]>(9603+offset0))
{
	if(input[i]>(9605+offset0))
{
	if(input[i]==(9607+offset0))
{
	vR[i] = 9607;
}
else
{
	vR[i] = 9606;
}

}
else
{
	if(input[i]==(9605+offset0))
{
	vR[i] = 9605;
}
else
{
	vR[i] = 9604;
}

}

}
else
{
	if(input[i]>(9601+offset0))
{
	if(input[i]==(9603+offset0))
{
	vR[i] = 9603;
}
else
{
	vR[i] = 9602;
}

}
else
{
	if(input[i]==(9601+offset0))
{
	vR[i] = 9601;
}
else
{
	vR[i] = 9600;
}

}

}

}

}

}

}

}
else
{
	if(input[i]>(9535+offset0))
{
	if(input[i]>(9567+offset0))
{
	if(input[i]>(9583+offset0))
{
	if(input[i]>(9591+offset0))
{
	if(input[i]>(9595+offset0))
{
	if(input[i]>(9597+offset0))
{
	if(input[i]==(9599+offset0))
{
	vR[i] = 9599;
}
else
{
	vR[i] = 9598;
}

}
else
{
	if(input[i]==(9597+offset0))
{
	vR[i] = 9597;
}
else
{
	vR[i] = 9596;
}

}

}
else
{
	if(input[i]>(9593+offset0))
{
	if(input[i]==(9595+offset0))
{
	vR[i] = 9595;
}
else
{
	vR[i] = 9594;
}

}
else
{
	if(input[i]==(9593+offset0))
{
	vR[i] = 9593;
}
else
{
	vR[i] = 9592;
}

}

}

}
else
{
	if(input[i]>(9587+offset0))
{
	if(input[i]>(9589+offset0))
{
	if(input[i]==(9591+offset0))
{
	vR[i] = 9591;
}
else
{
	vR[i] = 9590;
}

}
else
{
	if(input[i]==(9589+offset0))
{
	vR[i] = 9589;
}
else
{
	vR[i] = 9588;
}

}

}
else
{
	if(input[i]>(9585+offset0))
{
	if(input[i]==(9587+offset0))
{
	vR[i] = 9587;
}
else
{
	vR[i] = 9586;
}

}
else
{
	if(input[i]==(9585+offset0))
{
	vR[i] = 9585;
}
else
{
	vR[i] = 9584;
}

}

}

}

}
else
{
	if(input[i]>(9575+offset0))
{
	if(input[i]>(9579+offset0))
{
	if(input[i]>(9581+offset0))
{
	if(input[i]==(9583+offset0))
{
	vR[i] = 9583;
}
else
{
	vR[i] = 9582;
}

}
else
{
	if(input[i]==(9581+offset0))
{
	vR[i] = 9581;
}
else
{
	vR[i] = 9580;
}

}

}
else
{
	if(input[i]>(9577+offset0))
{
	if(input[i]==(9579+offset0))
{
	vR[i] = 9579;
}
else
{
	vR[i] = 9578;
}

}
else
{
	if(input[i]==(9577+offset0))
{
	vR[i] = 9577;
}
else
{
	vR[i] = 9576;
}

}

}

}
else
{
	if(input[i]>(9571+offset0))
{
	if(input[i]>(9573+offset0))
{
	if(input[i]==(9575+offset0))
{
	vR[i] = 9575;
}
else
{
	vR[i] = 9574;
}

}
else
{
	if(input[i]==(9573+offset0))
{
	vR[i] = 9573;
}
else
{
	vR[i] = 9572;
}

}

}
else
{
	if(input[i]>(9569+offset0))
{
	if(input[i]==(9571+offset0))
{
	vR[i] = 9571;
}
else
{
	vR[i] = 9570;
}

}
else
{
	if(input[i]==(9569+offset0))
{
	vR[i] = 9569;
}
else
{
	vR[i] = 9568;
}

}

}

}

}

}
else
{
	if(input[i]>(9551+offset0))
{
	if(input[i]>(9559+offset0))
{
	if(input[i]>(9563+offset0))
{
	if(input[i]>(9565+offset0))
{
	if(input[i]==(9567+offset0))
{
	vR[i] = 9567;
}
else
{
	vR[i] = 9566;
}

}
else
{
	if(input[i]==(9565+offset0))
{
	vR[i] = 9565;
}
else
{
	vR[i] = 9564;
}

}

}
else
{
	if(input[i]>(9561+offset0))
{
	if(input[i]==(9563+offset0))
{
	vR[i] = 9563;
}
else
{
	vR[i] = 9562;
}

}
else
{
	if(input[i]==(9561+offset0))
{
	vR[i] = 9561;
}
else
{
	vR[i] = 9560;
}

}

}

}
else
{
	if(input[i]>(9555+offset0))
{
	if(input[i]>(9557+offset0))
{
	if(input[i]==(9559+offset0))
{
	vR[i] = 9559;
}
else
{
	vR[i] = 9558;
}

}
else
{
	if(input[i]==(9557+offset0))
{
	vR[i] = 9557;
}
else
{
	vR[i] = 9556;
}

}

}
else
{
	if(input[i]>(9553+offset0))
{
	if(input[i]==(9555+offset0))
{
	vR[i] = 9555;
}
else
{
	vR[i] = 9554;
}

}
else
{
	if(input[i]==(9553+offset0))
{
	vR[i] = 9553;
}
else
{
	vR[i] = 9552;
}

}

}

}

}
else
{
	if(input[i]>(9543+offset0))
{
	if(input[i]>(9547+offset0))
{
	if(input[i]>(9549+offset0))
{
	if(input[i]==(9551+offset0))
{
	vR[i] = 9551;
}
else
{
	vR[i] = 9550;
}

}
else
{
	if(input[i]==(9549+offset0))
{
	vR[i] = 9549;
}
else
{
	vR[i] = 9548;
}

}

}
else
{
	if(input[i]>(9545+offset0))
{
	if(input[i]==(9547+offset0))
{
	vR[i] = 9547;
}
else
{
	vR[i] = 9546;
}

}
else
{
	if(input[i]==(9545+offset0))
{
	vR[i] = 9545;
}
else
{
	vR[i] = 9544;
}

}

}

}
else
{
	if(input[i]>(9539+offset0))
{
	if(input[i]>(9541+offset0))
{
	if(input[i]==(9543+offset0))
{
	vR[i] = 9543;
}
else
{
	vR[i] = 9542;
}

}
else
{
	if(input[i]==(9541+offset0))
{
	vR[i] = 9541;
}
else
{
	vR[i] = 9540;
}

}

}
else
{
	if(input[i]>(9537+offset0))
{
	if(input[i]==(9539+offset0))
{
	vR[i] = 9539;
}
else
{
	vR[i] = 9538;
}

}
else
{
	if(input[i]==(9537+offset0))
{
	vR[i] = 9537;
}
else
{
	vR[i] = 9536;
}

}

}

}

}

}

}
else
{
	if(input[i]>(9503+offset0))
{
	if(input[i]>(9519+offset0))
{
	if(input[i]>(9527+offset0))
{
	if(input[i]>(9531+offset0))
{
	if(input[i]>(9533+offset0))
{
	if(input[i]==(9535+offset0))
{
	vR[i] = 9535;
}
else
{
	vR[i] = 9534;
}

}
else
{
	if(input[i]==(9533+offset0))
{
	vR[i] = 9533;
}
else
{
	vR[i] = 9532;
}

}

}
else
{
	if(input[i]>(9529+offset0))
{
	if(input[i]==(9531+offset0))
{
	vR[i] = 9531;
}
else
{
	vR[i] = 9530;
}

}
else
{
	if(input[i]==(9529+offset0))
{
	vR[i] = 9529;
}
else
{
	vR[i] = 9528;
}

}

}

}
else
{
	if(input[i]>(9523+offset0))
{
	if(input[i]>(9525+offset0))
{
	if(input[i]==(9527+offset0))
{
	vR[i] = 9527;
}
else
{
	vR[i] = 9526;
}

}
else
{
	if(input[i]==(9525+offset0))
{
	vR[i] = 9525;
}
else
{
	vR[i] = 9524;
}

}

}
else
{
	if(input[i]>(9521+offset0))
{
	if(input[i]==(9523+offset0))
{
	vR[i] = 9523;
}
else
{
	vR[i] = 9522;
}

}
else
{
	if(input[i]==(9521+offset0))
{
	vR[i] = 9521;
}
else
{
	vR[i] = 9520;
}

}

}

}

}
else
{
	if(input[i]>(9511+offset0))
{
	if(input[i]>(9515+offset0))
{
	if(input[i]>(9517+offset0))
{
	if(input[i]==(9519+offset0))
{
	vR[i] = 9519;
}
else
{
	vR[i] = 9518;
}

}
else
{
	if(input[i]==(9517+offset0))
{
	vR[i] = 9517;
}
else
{
	vR[i] = 9516;
}

}

}
else
{
	if(input[i]>(9513+offset0))
{
	if(input[i]==(9515+offset0))
{
	vR[i] = 9515;
}
else
{
	vR[i] = 9514;
}

}
else
{
	if(input[i]==(9513+offset0))
{
	vR[i] = 9513;
}
else
{
	vR[i] = 9512;
}

}

}

}
else
{
	if(input[i]>(9507+offset0))
{
	if(input[i]>(9509+offset0))
{
	if(input[i]==(9511+offset0))
{
	vR[i] = 9511;
}
else
{
	vR[i] = 9510;
}

}
else
{
	if(input[i]==(9509+offset0))
{
	vR[i] = 9509;
}
else
{
	vR[i] = 9508;
}

}

}
else
{
	if(input[i]>(9505+offset0))
{
	if(input[i]==(9507+offset0))
{
	vR[i] = 9507;
}
else
{
	vR[i] = 9506;
}

}
else
{
	if(input[i]==(9505+offset0))
{
	vR[i] = 9505;
}
else
{
	vR[i] = 9504;
}

}

}

}

}

}
else
{
	if(input[i]>(9487+offset0))
{
	if(input[i]>(9495+offset0))
{
	if(input[i]>(9499+offset0))
{
	if(input[i]>(9501+offset0))
{
	if(input[i]==(9503+offset0))
{
	vR[i] = 9503;
}
else
{
	vR[i] = 9502;
}

}
else
{
	if(input[i]==(9501+offset0))
{
	vR[i] = 9501;
}
else
{
	vR[i] = 9500;
}

}

}
else
{
	if(input[i]>(9497+offset0))
{
	if(input[i]==(9499+offset0))
{
	vR[i] = 9499;
}
else
{
	vR[i] = 9498;
}

}
else
{
	if(input[i]==(9497+offset0))
{
	vR[i] = 9497;
}
else
{
	vR[i] = 9496;
}

}

}

}
else
{
	if(input[i]>(9491+offset0))
{
	if(input[i]>(9493+offset0))
{
	if(input[i]==(9495+offset0))
{
	vR[i] = 9495;
}
else
{
	vR[i] = 9494;
}

}
else
{
	if(input[i]==(9493+offset0))
{
	vR[i] = 9493;
}
else
{
	vR[i] = 9492;
}

}

}
else
{
	if(input[i]>(9489+offset0))
{
	if(input[i]==(9491+offset0))
{
	vR[i] = 9491;
}
else
{
	vR[i] = 9490;
}

}
else
{
	if(input[i]==(9489+offset0))
{
	vR[i] = 9489;
}
else
{
	vR[i] = 9488;
}

}

}

}

}
else
{
	if(input[i]>(9479+offset0))
{
	if(input[i]>(9483+offset0))
{
	if(input[i]>(9485+offset0))
{
	if(input[i]==(9487+offset0))
{
	vR[i] = 9487;
}
else
{
	vR[i] = 9486;
}

}
else
{
	if(input[i]==(9485+offset0))
{
	vR[i] = 9485;
}
else
{
	vR[i] = 9484;
}

}

}
else
{
	if(input[i]>(9481+offset0))
{
	if(input[i]==(9483+offset0))
{
	vR[i] = 9483;
}
else
{
	vR[i] = 9482;
}

}
else
{
	if(input[i]==(9481+offset0))
{
	vR[i] = 9481;
}
else
{
	vR[i] = 9480;
}

}

}

}
else
{
	if(input[i]>(9475+offset0))
{
	if(input[i]>(9477+offset0))
{
	if(input[i]==(9479+offset0))
{
	vR[i] = 9479;
}
else
{
	vR[i] = 9478;
}

}
else
{
	if(input[i]==(9477+offset0))
{
	vR[i] = 9477;
}
else
{
	vR[i] = 9476;
}

}

}
else
{
	if(input[i]>(9473+offset0))
{
	if(input[i]==(9475+offset0))
{
	vR[i] = 9475;
}
else
{
	vR[i] = 9474;
}

}
else
{
	if(input[i]==(9473+offset0))
{
	vR[i] = 9473;
}
else
{
	vR[i] = 9472;
}

}

}

}

}

}

}

}

}
else
{
	if(input[i]>(9343+offset0))
{
	if(input[i]>(9407+offset0))
{
	if(input[i]>(9439+offset0))
{
	if(input[i]>(9455+offset0))
{
	if(input[i]>(9463+offset0))
{
	if(input[i]>(9467+offset0))
{
	if(input[i]>(9469+offset0))
{
	if(input[i]==(9471+offset0))
{
	vR[i] = 9471;
}
else
{
	vR[i] = 9470;
}

}
else
{
	if(input[i]==(9469+offset0))
{
	vR[i] = 9469;
}
else
{
	vR[i] = 9468;
}

}

}
else
{
	if(input[i]>(9465+offset0))
{
	if(input[i]==(9467+offset0))
{
	vR[i] = 9467;
}
else
{
	vR[i] = 9466;
}

}
else
{
	if(input[i]==(9465+offset0))
{
	vR[i] = 9465;
}
else
{
	vR[i] = 9464;
}

}

}

}
else
{
	if(input[i]>(9459+offset0))
{
	if(input[i]>(9461+offset0))
{
	if(input[i]==(9463+offset0))
{
	vR[i] = 9463;
}
else
{
	vR[i] = 9462;
}

}
else
{
	if(input[i]==(9461+offset0))
{
	vR[i] = 9461;
}
else
{
	vR[i] = 9460;
}

}

}
else
{
	if(input[i]>(9457+offset0))
{
	if(input[i]==(9459+offset0))
{
	vR[i] = 9459;
}
else
{
	vR[i] = 9458;
}

}
else
{
	if(input[i]==(9457+offset0))
{
	vR[i] = 9457;
}
else
{
	vR[i] = 9456;
}

}

}

}

}
else
{
	if(input[i]>(9447+offset0))
{
	if(input[i]>(9451+offset0))
{
	if(input[i]>(9453+offset0))
{
	if(input[i]==(9455+offset0))
{
	vR[i] = 9455;
}
else
{
	vR[i] = 9454;
}

}
else
{
	if(input[i]==(9453+offset0))
{
	vR[i] = 9453;
}
else
{
	vR[i] = 9452;
}

}

}
else
{
	if(input[i]>(9449+offset0))
{
	if(input[i]==(9451+offset0))
{
	vR[i] = 9451;
}
else
{
	vR[i] = 9450;
}

}
else
{
	if(input[i]==(9449+offset0))
{
	vR[i] = 9449;
}
else
{
	vR[i] = 9448;
}

}

}

}
else
{
	if(input[i]>(9443+offset0))
{
	if(input[i]>(9445+offset0))
{
	if(input[i]==(9447+offset0))
{
	vR[i] = 9447;
}
else
{
	vR[i] = 9446;
}

}
else
{
	if(input[i]==(9445+offset0))
{
	vR[i] = 9445;
}
else
{
	vR[i] = 9444;
}

}

}
else
{
	if(input[i]>(9441+offset0))
{
	if(input[i]==(9443+offset0))
{
	vR[i] = 9443;
}
else
{
	vR[i] = 9442;
}

}
else
{
	if(input[i]==(9441+offset0))
{
	vR[i] = 9441;
}
else
{
	vR[i] = 9440;
}

}

}

}

}

}
else
{
	if(input[i]>(9423+offset0))
{
	if(input[i]>(9431+offset0))
{
	if(input[i]>(9435+offset0))
{
	if(input[i]>(9437+offset0))
{
	if(input[i]==(9439+offset0))
{
	vR[i] = 9439;
}
else
{
	vR[i] = 9438;
}

}
else
{
	if(input[i]==(9437+offset0))
{
	vR[i] = 9437;
}
else
{
	vR[i] = 9436;
}

}

}
else
{
	if(input[i]>(9433+offset0))
{
	if(input[i]==(9435+offset0))
{
	vR[i] = 9435;
}
else
{
	vR[i] = 9434;
}

}
else
{
	if(input[i]==(9433+offset0))
{
	vR[i] = 9433;
}
else
{
	vR[i] = 9432;
}

}

}

}
else
{
	if(input[i]>(9427+offset0))
{
	if(input[i]>(9429+offset0))
{
	if(input[i]==(9431+offset0))
{
	vR[i] = 9431;
}
else
{
	vR[i] = 9430;
}

}
else
{
	if(input[i]==(9429+offset0))
{
	vR[i] = 9429;
}
else
{
	vR[i] = 9428;
}

}

}
else
{
	if(input[i]>(9425+offset0))
{
	if(input[i]==(9427+offset0))
{
	vR[i] = 9427;
}
else
{
	vR[i] = 9426;
}

}
else
{
	if(input[i]==(9425+offset0))
{
	vR[i] = 9425;
}
else
{
	vR[i] = 9424;
}

}

}

}

}
else
{
	if(input[i]>(9415+offset0))
{
	if(input[i]>(9419+offset0))
{
	if(input[i]>(9421+offset0))
{
	if(input[i]==(9423+offset0))
{
	vR[i] = 9423;
}
else
{
	vR[i] = 9422;
}

}
else
{
	if(input[i]==(9421+offset0))
{
	vR[i] = 9421;
}
else
{
	vR[i] = 9420;
}

}

}
else
{
	if(input[i]>(9417+offset0))
{
	if(input[i]==(9419+offset0))
{
	vR[i] = 9419;
}
else
{
	vR[i] = 9418;
}

}
else
{
	if(input[i]==(9417+offset0))
{
	vR[i] = 9417;
}
else
{
	vR[i] = 9416;
}

}

}

}
else
{
	if(input[i]>(9411+offset0))
{
	if(input[i]>(9413+offset0))
{
	if(input[i]==(9415+offset0))
{
	vR[i] = 9415;
}
else
{
	vR[i] = 9414;
}

}
else
{
	if(input[i]==(9413+offset0))
{
	vR[i] = 9413;
}
else
{
	vR[i] = 9412;
}

}

}
else
{
	if(input[i]>(9409+offset0))
{
	if(input[i]==(9411+offset0))
{
	vR[i] = 9411;
}
else
{
	vR[i] = 9410;
}

}
else
{
	if(input[i]==(9409+offset0))
{
	vR[i] = 9409;
}
else
{
	vR[i] = 9408;
}

}

}

}

}

}

}
else
{
	if(input[i]>(9375+offset0))
{
	if(input[i]>(9391+offset0))
{
	if(input[i]>(9399+offset0))
{
	if(input[i]>(9403+offset0))
{
	if(input[i]>(9405+offset0))
{
	if(input[i]==(9407+offset0))
{
	vR[i] = 9407;
}
else
{
	vR[i] = 9406;
}

}
else
{
	if(input[i]==(9405+offset0))
{
	vR[i] = 9405;
}
else
{
	vR[i] = 9404;
}

}

}
else
{
	if(input[i]>(9401+offset0))
{
	if(input[i]==(9403+offset0))
{
	vR[i] = 9403;
}
else
{
	vR[i] = 9402;
}

}
else
{
	if(input[i]==(9401+offset0))
{
	vR[i] = 9401;
}
else
{
	vR[i] = 9400;
}

}

}

}
else
{
	if(input[i]>(9395+offset0))
{
	if(input[i]>(9397+offset0))
{
	if(input[i]==(9399+offset0))
{
	vR[i] = 9399;
}
else
{
	vR[i] = 9398;
}

}
else
{
	if(input[i]==(9397+offset0))
{
	vR[i] = 9397;
}
else
{
	vR[i] = 9396;
}

}

}
else
{
	if(input[i]>(9393+offset0))
{
	if(input[i]==(9395+offset0))
{
	vR[i] = 9395;
}
else
{
	vR[i] = 9394;
}

}
else
{
	if(input[i]==(9393+offset0))
{
	vR[i] = 9393;
}
else
{
	vR[i] = 9392;
}

}

}

}

}
else
{
	if(input[i]>(9383+offset0))
{
	if(input[i]>(9387+offset0))
{
	if(input[i]>(9389+offset0))
{
	if(input[i]==(9391+offset0))
{
	vR[i] = 9391;
}
else
{
	vR[i] = 9390;
}

}
else
{
	if(input[i]==(9389+offset0))
{
	vR[i] = 9389;
}
else
{
	vR[i] = 9388;
}

}

}
else
{
	if(input[i]>(9385+offset0))
{
	if(input[i]==(9387+offset0))
{
	vR[i] = 9387;
}
else
{
	vR[i] = 9386;
}

}
else
{
	if(input[i]==(9385+offset0))
{
	vR[i] = 9385;
}
else
{
	vR[i] = 9384;
}

}

}

}
else
{
	if(input[i]>(9379+offset0))
{
	if(input[i]>(9381+offset0))
{
	if(input[i]==(9383+offset0))
{
	vR[i] = 9383;
}
else
{
	vR[i] = 9382;
}

}
else
{
	if(input[i]==(9381+offset0))
{
	vR[i] = 9381;
}
else
{
	vR[i] = 9380;
}

}

}
else
{
	if(input[i]>(9377+offset0))
{
	if(input[i]==(9379+offset0))
{
	vR[i] = 9379;
}
else
{
	vR[i] = 9378;
}

}
else
{
	if(input[i]==(9377+offset0))
{
	vR[i] = 9377;
}
else
{
	vR[i] = 9376;
}

}

}

}

}

}
else
{
	if(input[i]>(9359+offset0))
{
	if(input[i]>(9367+offset0))
{
	if(input[i]>(9371+offset0))
{
	if(input[i]>(9373+offset0))
{
	if(input[i]==(9375+offset0))
{
	vR[i] = 9375;
}
else
{
	vR[i] = 9374;
}

}
else
{
	if(input[i]==(9373+offset0))
{
	vR[i] = 9373;
}
else
{
	vR[i] = 9372;
}

}

}
else
{
	if(input[i]>(9369+offset0))
{
	if(input[i]==(9371+offset0))
{
	vR[i] = 9371;
}
else
{
	vR[i] = 9370;
}

}
else
{
	if(input[i]==(9369+offset0))
{
	vR[i] = 9369;
}
else
{
	vR[i] = 9368;
}

}

}

}
else
{
	if(input[i]>(9363+offset0))
{
	if(input[i]>(9365+offset0))
{
	if(input[i]==(9367+offset0))
{
	vR[i] = 9367;
}
else
{
	vR[i] = 9366;
}

}
else
{
	if(input[i]==(9365+offset0))
{
	vR[i] = 9365;
}
else
{
	vR[i] = 9364;
}

}

}
else
{
	if(input[i]>(9361+offset0))
{
	if(input[i]==(9363+offset0))
{
	vR[i] = 9363;
}
else
{
	vR[i] = 9362;
}

}
else
{
	if(input[i]==(9361+offset0))
{
	vR[i] = 9361;
}
else
{
	vR[i] = 9360;
}

}

}

}

}
else
{
	if(input[i]>(9351+offset0))
{
	if(input[i]>(9355+offset0))
{
	if(input[i]>(9357+offset0))
{
	if(input[i]==(9359+offset0))
{
	vR[i] = 9359;
}
else
{
	vR[i] = 9358;
}

}
else
{
	if(input[i]==(9357+offset0))
{
	vR[i] = 9357;
}
else
{
	vR[i] = 9356;
}

}

}
else
{
	if(input[i]>(9353+offset0))
{
	if(input[i]==(9355+offset0))
{
	vR[i] = 9355;
}
else
{
	vR[i] = 9354;
}

}
else
{
	if(input[i]==(9353+offset0))
{
	vR[i] = 9353;
}
else
{
	vR[i] = 9352;
}

}

}

}
else
{
	if(input[i]>(9347+offset0))
{
	if(input[i]>(9349+offset0))
{
	if(input[i]==(9351+offset0))
{
	vR[i] = 9351;
}
else
{
	vR[i] = 9350;
}

}
else
{
	if(input[i]==(9349+offset0))
{
	vR[i] = 9349;
}
else
{
	vR[i] = 9348;
}

}

}
else
{
	if(input[i]>(9345+offset0))
{
	if(input[i]==(9347+offset0))
{
	vR[i] = 9347;
}
else
{
	vR[i] = 9346;
}

}
else
{
	if(input[i]==(9345+offset0))
{
	vR[i] = 9345;
}
else
{
	vR[i] = 9344;
}

}

}

}

}

}

}

}
else
{
	if(input[i]>(9279+offset0))
{
	if(input[i]>(9311+offset0))
{
	if(input[i]>(9327+offset0))
{
	if(input[i]>(9335+offset0))
{
	if(input[i]>(9339+offset0))
{
	if(input[i]>(9341+offset0))
{
	if(input[i]==(9343+offset0))
{
	vR[i] = 9343;
}
else
{
	vR[i] = 9342;
}

}
else
{
	if(input[i]==(9341+offset0))
{
	vR[i] = 9341;
}
else
{
	vR[i] = 9340;
}

}

}
else
{
	if(input[i]>(9337+offset0))
{
	if(input[i]==(9339+offset0))
{
	vR[i] = 9339;
}
else
{
	vR[i] = 9338;
}

}
else
{
	if(input[i]==(9337+offset0))
{
	vR[i] = 9337;
}
else
{
	vR[i] = 9336;
}

}

}

}
else
{
	if(input[i]>(9331+offset0))
{
	if(input[i]>(9333+offset0))
{
	if(input[i]==(9335+offset0))
{
	vR[i] = 9335;
}
else
{
	vR[i] = 9334;
}

}
else
{
	if(input[i]==(9333+offset0))
{
	vR[i] = 9333;
}
else
{
	vR[i] = 9332;
}

}

}
else
{
	if(input[i]>(9329+offset0))
{
	if(input[i]==(9331+offset0))
{
	vR[i] = 9331;
}
else
{
	vR[i] = 9330;
}

}
else
{
	if(input[i]==(9329+offset0))
{
	vR[i] = 9329;
}
else
{
	vR[i] = 9328;
}

}

}

}

}
else
{
	if(input[i]>(9319+offset0))
{
	if(input[i]>(9323+offset0))
{
	if(input[i]>(9325+offset0))
{
	if(input[i]==(9327+offset0))
{
	vR[i] = 9327;
}
else
{
	vR[i] = 9326;
}

}
else
{
	if(input[i]==(9325+offset0))
{
	vR[i] = 9325;
}
else
{
	vR[i] = 9324;
}

}

}
else
{
	if(input[i]>(9321+offset0))
{
	if(input[i]==(9323+offset0))
{
	vR[i] = 9323;
}
else
{
	vR[i] = 9322;
}

}
else
{
	if(input[i]==(9321+offset0))
{
	vR[i] = 9321;
}
else
{
	vR[i] = 9320;
}

}

}

}
else
{
	if(input[i]>(9315+offset0))
{
	if(input[i]>(9317+offset0))
{
	if(input[i]==(9319+offset0))
{
	vR[i] = 9319;
}
else
{
	vR[i] = 9318;
}

}
else
{
	if(input[i]==(9317+offset0))
{
	vR[i] = 9317;
}
else
{
	vR[i] = 9316;
}

}

}
else
{
	if(input[i]>(9313+offset0))
{
	if(input[i]==(9315+offset0))
{
	vR[i] = 9315;
}
else
{
	vR[i] = 9314;
}

}
else
{
	if(input[i]==(9313+offset0))
{
	vR[i] = 9313;
}
else
{
	vR[i] = 9312;
}

}

}

}

}

}
else
{
	if(input[i]>(9295+offset0))
{
	if(input[i]>(9303+offset0))
{
	if(input[i]>(9307+offset0))
{
	if(input[i]>(9309+offset0))
{
	if(input[i]==(9311+offset0))
{
	vR[i] = 9311;
}
else
{
	vR[i] = 9310;
}

}
else
{
	if(input[i]==(9309+offset0))
{
	vR[i] = 9309;
}
else
{
	vR[i] = 9308;
}

}

}
else
{
	if(input[i]>(9305+offset0))
{
	if(input[i]==(9307+offset0))
{
	vR[i] = 9307;
}
else
{
	vR[i] = 9306;
}

}
else
{
	if(input[i]==(9305+offset0))
{
	vR[i] = 9305;
}
else
{
	vR[i] = 9304;
}

}

}

}
else
{
	if(input[i]>(9299+offset0))
{
	if(input[i]>(9301+offset0))
{
	if(input[i]==(9303+offset0))
{
	vR[i] = 9303;
}
else
{
	vR[i] = 9302;
}

}
else
{
	if(input[i]==(9301+offset0))
{
	vR[i] = 9301;
}
else
{
	vR[i] = 9300;
}

}

}
else
{
	if(input[i]>(9297+offset0))
{
	if(input[i]==(9299+offset0))
{
	vR[i] = 9299;
}
else
{
	vR[i] = 9298;
}

}
else
{
	if(input[i]==(9297+offset0))
{
	vR[i] = 9297;
}
else
{
	vR[i] = 9296;
}

}

}

}

}
else
{
	if(input[i]>(9287+offset0))
{
	if(input[i]>(9291+offset0))
{
	if(input[i]>(9293+offset0))
{
	if(input[i]==(9295+offset0))
{
	vR[i] = 9295;
}
else
{
	vR[i] = 9294;
}

}
else
{
	if(input[i]==(9293+offset0))
{
	vR[i] = 9293;
}
else
{
	vR[i] = 9292;
}

}

}
else
{
	if(input[i]>(9289+offset0))
{
	if(input[i]==(9291+offset0))
{
	vR[i] = 9291;
}
else
{
	vR[i] = 9290;
}

}
else
{
	if(input[i]==(9289+offset0))
{
	vR[i] = 9289;
}
else
{
	vR[i] = 9288;
}

}

}

}
else
{
	if(input[i]>(9283+offset0))
{
	if(input[i]>(9285+offset0))
{
	if(input[i]==(9287+offset0))
{
	vR[i] = 9287;
}
else
{
	vR[i] = 9286;
}

}
else
{
	if(input[i]==(9285+offset0))
{
	vR[i] = 9285;
}
else
{
	vR[i] = 9284;
}

}

}
else
{
	if(input[i]>(9281+offset0))
{
	if(input[i]==(9283+offset0))
{
	vR[i] = 9283;
}
else
{
	vR[i] = 9282;
}

}
else
{
	if(input[i]==(9281+offset0))
{
	vR[i] = 9281;
}
else
{
	vR[i] = 9280;
}

}

}

}

}

}

}
else
{
	if(input[i]>(9247+offset0))
{
	if(input[i]>(9263+offset0))
{
	if(input[i]>(9271+offset0))
{
	if(input[i]>(9275+offset0))
{
	if(input[i]>(9277+offset0))
{
	if(input[i]==(9279+offset0))
{
	vR[i] = 9279;
}
else
{
	vR[i] = 9278;
}

}
else
{
	if(input[i]==(9277+offset0))
{
	vR[i] = 9277;
}
else
{
	vR[i] = 9276;
}

}

}
else
{
	if(input[i]>(9273+offset0))
{
	if(input[i]==(9275+offset0))
{
	vR[i] = 9275;
}
else
{
	vR[i] = 9274;
}

}
else
{
	if(input[i]==(9273+offset0))
{
	vR[i] = 9273;
}
else
{
	vR[i] = 9272;
}

}

}

}
else
{
	if(input[i]>(9267+offset0))
{
	if(input[i]>(9269+offset0))
{
	if(input[i]==(9271+offset0))
{
	vR[i] = 9271;
}
else
{
	vR[i] = 9270;
}

}
else
{
	if(input[i]==(9269+offset0))
{
	vR[i] = 9269;
}
else
{
	vR[i] = 9268;
}

}

}
else
{
	if(input[i]>(9265+offset0))
{
	if(input[i]==(9267+offset0))
{
	vR[i] = 9267;
}
else
{
	vR[i] = 9266;
}

}
else
{
	if(input[i]==(9265+offset0))
{
	vR[i] = 9265;
}
else
{
	vR[i] = 9264;
}

}

}

}

}
else
{
	if(input[i]>(9255+offset0))
{
	if(input[i]>(9259+offset0))
{
	if(input[i]>(9261+offset0))
{
	if(input[i]==(9263+offset0))
{
	vR[i] = 9263;
}
else
{
	vR[i] = 9262;
}

}
else
{
	if(input[i]==(9261+offset0))
{
	vR[i] = 9261;
}
else
{
	vR[i] = 9260;
}

}

}
else
{
	if(input[i]>(9257+offset0))
{
	if(input[i]==(9259+offset0))
{
	vR[i] = 9259;
}
else
{
	vR[i] = 9258;
}

}
else
{
	if(input[i]==(9257+offset0))
{
	vR[i] = 9257;
}
else
{
	vR[i] = 9256;
}

}

}

}
else
{
	if(input[i]>(9251+offset0))
{
	if(input[i]>(9253+offset0))
{
	if(input[i]==(9255+offset0))
{
	vR[i] = 9255;
}
else
{
	vR[i] = 9254;
}

}
else
{
	if(input[i]==(9253+offset0))
{
	vR[i] = 9253;
}
else
{
	vR[i] = 9252;
}

}

}
else
{
	if(input[i]>(9249+offset0))
{
	if(input[i]==(9251+offset0))
{
	vR[i] = 9251;
}
else
{
	vR[i] = 9250;
}

}
else
{
	if(input[i]==(9249+offset0))
{
	vR[i] = 9249;
}
else
{
	vR[i] = 9248;
}

}

}

}

}

}
else
{
	if(input[i]>(9231+offset0))
{
	if(input[i]>(9239+offset0))
{
	if(input[i]>(9243+offset0))
{
	if(input[i]>(9245+offset0))
{
	if(input[i]==(9247+offset0))
{
	vR[i] = 9247;
}
else
{
	vR[i] = 9246;
}

}
else
{
	if(input[i]==(9245+offset0))
{
	vR[i] = 9245;
}
else
{
	vR[i] = 9244;
}

}

}
else
{
	if(input[i]>(9241+offset0))
{
	if(input[i]==(9243+offset0))
{
	vR[i] = 9243;
}
else
{
	vR[i] = 9242;
}

}
else
{
	if(input[i]==(9241+offset0))
{
	vR[i] = 9241;
}
else
{
	vR[i] = 9240;
}

}

}

}
else
{
	if(input[i]>(9235+offset0))
{
	if(input[i]>(9237+offset0))
{
	if(input[i]==(9239+offset0))
{
	vR[i] = 9239;
}
else
{
	vR[i] = 9238;
}

}
else
{
	if(input[i]==(9237+offset0))
{
	vR[i] = 9237;
}
else
{
	vR[i] = 9236;
}

}

}
else
{
	if(input[i]>(9233+offset0))
{
	if(input[i]==(9235+offset0))
{
	vR[i] = 9235;
}
else
{
	vR[i] = 9234;
}

}
else
{
	if(input[i]==(9233+offset0))
{
	vR[i] = 9233;
}
else
{
	vR[i] = 9232;
}

}

}

}

}
else
{
	if(input[i]>(9223+offset0))
{
	if(input[i]>(9227+offset0))
{
	if(input[i]>(9229+offset0))
{
	if(input[i]==(9231+offset0))
{
	vR[i] = 9231;
}
else
{
	vR[i] = 9230;
}

}
else
{
	if(input[i]==(9229+offset0))
{
	vR[i] = 9229;
}
else
{
	vR[i] = 9228;
}

}

}
else
{
	if(input[i]>(9225+offset0))
{
	if(input[i]==(9227+offset0))
{
	vR[i] = 9227;
}
else
{
	vR[i] = 9226;
}

}
else
{
	if(input[i]==(9225+offset0))
{
	vR[i] = 9225;
}
else
{
	vR[i] = 9224;
}

}

}

}
else
{
	if(input[i]>(9219+offset0))
{
	if(input[i]>(9221+offset0))
{
	if(input[i]==(9223+offset0))
{
	vR[i] = 9223;
}
else
{
	vR[i] = 9222;
}

}
else
{
	if(input[i]==(9221+offset0))
{
	vR[i] = 9221;
}
else
{
	vR[i] = 9220;
}

}

}
else
{
	if(input[i]>(9217+offset0))
{
	if(input[i]==(9219+offset0))
{
	vR[i] = 9219;
}
else
{
	vR[i] = 9218;
}

}
else
{
	if(input[i]==(9217+offset0))
{
	vR[i] = 9217;
}
else
{
	vR[i] = 9216;
}

}

}

}

}

}

}

}

}

}

}
else
{
	if(input[i]>(8703+offset0))
{
	if(input[i]>(8959+offset0))
{
	if(input[i]>(9087+offset0))
{
	if(input[i]>(9151+offset0))
{
	if(input[i]>(9183+offset0))
{
	if(input[i]>(9199+offset0))
{
	if(input[i]>(9207+offset0))
{
	if(input[i]>(9211+offset0))
{
	if(input[i]>(9213+offset0))
{
	if(input[i]==(9215+offset0))
{
	vR[i] = 9215;
}
else
{
	vR[i] = 9214;
}

}
else
{
	if(input[i]==(9213+offset0))
{
	vR[i] = 9213;
}
else
{
	vR[i] = 9212;
}

}

}
else
{
	if(input[i]>(9209+offset0))
{
	if(input[i]==(9211+offset0))
{
	vR[i] = 9211;
}
else
{
	vR[i] = 9210;
}

}
else
{
	if(input[i]==(9209+offset0))
{
	vR[i] = 9209;
}
else
{
	vR[i] = 9208;
}

}

}

}
else
{
	if(input[i]>(9203+offset0))
{
	if(input[i]>(9205+offset0))
{
	if(input[i]==(9207+offset0))
{
	vR[i] = 9207;
}
else
{
	vR[i] = 9206;
}

}
else
{
	if(input[i]==(9205+offset0))
{
	vR[i] = 9205;
}
else
{
	vR[i] = 9204;
}

}

}
else
{
	if(input[i]>(9201+offset0))
{
	if(input[i]==(9203+offset0))
{
	vR[i] = 9203;
}
else
{
	vR[i] = 9202;
}

}
else
{
	if(input[i]==(9201+offset0))
{
	vR[i] = 9201;
}
else
{
	vR[i] = 9200;
}

}

}

}

}
else
{
	if(input[i]>(9191+offset0))
{
	if(input[i]>(9195+offset0))
{
	if(input[i]>(9197+offset0))
{
	if(input[i]==(9199+offset0))
{
	vR[i] = 9199;
}
else
{
	vR[i] = 9198;
}

}
else
{
	if(input[i]==(9197+offset0))
{
	vR[i] = 9197;
}
else
{
	vR[i] = 9196;
}

}

}
else
{
	if(input[i]>(9193+offset0))
{
	if(input[i]==(9195+offset0))
{
	vR[i] = 9195;
}
else
{
	vR[i] = 9194;
}

}
else
{
	if(input[i]==(9193+offset0))
{
	vR[i] = 9193;
}
else
{
	vR[i] = 9192;
}

}

}

}
else
{
	if(input[i]>(9187+offset0))
{
	if(input[i]>(9189+offset0))
{
	if(input[i]==(9191+offset0))
{
	vR[i] = 9191;
}
else
{
	vR[i] = 9190;
}

}
else
{
	if(input[i]==(9189+offset0))
{
	vR[i] = 9189;
}
else
{
	vR[i] = 9188;
}

}

}
else
{
	if(input[i]>(9185+offset0))
{
	if(input[i]==(9187+offset0))
{
	vR[i] = 9187;
}
else
{
	vR[i] = 9186;
}

}
else
{
	if(input[i]==(9185+offset0))
{
	vR[i] = 9185;
}
else
{
	vR[i] = 9184;
}

}

}

}

}

}
else
{
	if(input[i]>(9167+offset0))
{
	if(input[i]>(9175+offset0))
{
	if(input[i]>(9179+offset0))
{
	if(input[i]>(9181+offset0))
{
	if(input[i]==(9183+offset0))
{
	vR[i] = 9183;
}
else
{
	vR[i] = 9182;
}

}
else
{
	if(input[i]==(9181+offset0))
{
	vR[i] = 9181;
}
else
{
	vR[i] = 9180;
}

}

}
else
{
	if(input[i]>(9177+offset0))
{
	if(input[i]==(9179+offset0))
{
	vR[i] = 9179;
}
else
{
	vR[i] = 9178;
}

}
else
{
	if(input[i]==(9177+offset0))
{
	vR[i] = 9177;
}
else
{
	vR[i] = 9176;
}

}

}

}
else
{
	if(input[i]>(9171+offset0))
{
	if(input[i]>(9173+offset0))
{
	if(input[i]==(9175+offset0))
{
	vR[i] = 9175;
}
else
{
	vR[i] = 9174;
}

}
else
{
	if(input[i]==(9173+offset0))
{
	vR[i] = 9173;
}
else
{
	vR[i] = 9172;
}

}

}
else
{
	if(input[i]>(9169+offset0))
{
	if(input[i]==(9171+offset0))
{
	vR[i] = 9171;
}
else
{
	vR[i] = 9170;
}

}
else
{
	if(input[i]==(9169+offset0))
{
	vR[i] = 9169;
}
else
{
	vR[i] = 9168;
}

}

}

}

}
else
{
	if(input[i]>(9159+offset0))
{
	if(input[i]>(9163+offset0))
{
	if(input[i]>(9165+offset0))
{
	if(input[i]==(9167+offset0))
{
	vR[i] = 9167;
}
else
{
	vR[i] = 9166;
}

}
else
{
	if(input[i]==(9165+offset0))
{
	vR[i] = 9165;
}
else
{
	vR[i] = 9164;
}

}

}
else
{
	if(input[i]>(9161+offset0))
{
	if(input[i]==(9163+offset0))
{
	vR[i] = 9163;
}
else
{
	vR[i] = 9162;
}

}
else
{
	if(input[i]==(9161+offset0))
{
	vR[i] = 9161;
}
else
{
	vR[i] = 9160;
}

}

}

}
else
{
	if(input[i]>(9155+offset0))
{
	if(input[i]>(9157+offset0))
{
	if(input[i]==(9159+offset0))
{
	vR[i] = 9159;
}
else
{
	vR[i] = 9158;
}

}
else
{
	if(input[i]==(9157+offset0))
{
	vR[i] = 9157;
}
else
{
	vR[i] = 9156;
}

}

}
else
{
	if(input[i]>(9153+offset0))
{
	if(input[i]==(9155+offset0))
{
	vR[i] = 9155;
}
else
{
	vR[i] = 9154;
}

}
else
{
	if(input[i]==(9153+offset0))
{
	vR[i] = 9153;
}
else
{
	vR[i] = 9152;
}

}

}

}

}

}

}
else
{
	if(input[i]>(9119+offset0))
{
	if(input[i]>(9135+offset0))
{
	if(input[i]>(9143+offset0))
{
	if(input[i]>(9147+offset0))
{
	if(input[i]>(9149+offset0))
{
	if(input[i]==(9151+offset0))
{
	vR[i] = 9151;
}
else
{
	vR[i] = 9150;
}

}
else
{
	if(input[i]==(9149+offset0))
{
	vR[i] = 9149;
}
else
{
	vR[i] = 9148;
}

}

}
else
{
	if(input[i]>(9145+offset0))
{
	if(input[i]==(9147+offset0))
{
	vR[i] = 9147;
}
else
{
	vR[i] = 9146;
}

}
else
{
	if(input[i]==(9145+offset0))
{
	vR[i] = 9145;
}
else
{
	vR[i] = 9144;
}

}

}

}
else
{
	if(input[i]>(9139+offset0))
{
	if(input[i]>(9141+offset0))
{
	if(input[i]==(9143+offset0))
{
	vR[i] = 9143;
}
else
{
	vR[i] = 9142;
}

}
else
{
	if(input[i]==(9141+offset0))
{
	vR[i] = 9141;
}
else
{
	vR[i] = 9140;
}

}

}
else
{
	if(input[i]>(9137+offset0))
{
	if(input[i]==(9139+offset0))
{
	vR[i] = 9139;
}
else
{
	vR[i] = 9138;
}

}
else
{
	if(input[i]==(9137+offset0))
{
	vR[i] = 9137;
}
else
{
	vR[i] = 9136;
}

}

}

}

}
else
{
	if(input[i]>(9127+offset0))
{
	if(input[i]>(9131+offset0))
{
	if(input[i]>(9133+offset0))
{
	if(input[i]==(9135+offset0))
{
	vR[i] = 9135;
}
else
{
	vR[i] = 9134;
}

}
else
{
	if(input[i]==(9133+offset0))
{
	vR[i] = 9133;
}
else
{
	vR[i] = 9132;
}

}

}
else
{
	if(input[i]>(9129+offset0))
{
	if(input[i]==(9131+offset0))
{
	vR[i] = 9131;
}
else
{
	vR[i] = 9130;
}

}
else
{
	if(input[i]==(9129+offset0))
{
	vR[i] = 9129;
}
else
{
	vR[i] = 9128;
}

}

}

}
else
{
	if(input[i]>(9123+offset0))
{
	if(input[i]>(9125+offset0))
{
	if(input[i]==(9127+offset0))
{
	vR[i] = 9127;
}
else
{
	vR[i] = 9126;
}

}
else
{
	if(input[i]==(9125+offset0))
{
	vR[i] = 9125;
}
else
{
	vR[i] = 9124;
}

}

}
else
{
	if(input[i]>(9121+offset0))
{
	if(input[i]==(9123+offset0))
{
	vR[i] = 9123;
}
else
{
	vR[i] = 9122;
}

}
else
{
	if(input[i]==(9121+offset0))
{
	vR[i] = 9121;
}
else
{
	vR[i] = 9120;
}

}

}

}

}

}
else
{
	if(input[i]>(9103+offset0))
{
	if(input[i]>(9111+offset0))
{
	if(input[i]>(9115+offset0))
{
	if(input[i]>(9117+offset0))
{
	if(input[i]==(9119+offset0))
{
	vR[i] = 9119;
}
else
{
	vR[i] = 9118;
}

}
else
{
	if(input[i]==(9117+offset0))
{
	vR[i] = 9117;
}
else
{
	vR[i] = 9116;
}

}

}
else
{
	if(input[i]>(9113+offset0))
{
	if(input[i]==(9115+offset0))
{
	vR[i] = 9115;
}
else
{
	vR[i] = 9114;
}

}
else
{
	if(input[i]==(9113+offset0))
{
	vR[i] = 9113;
}
else
{
	vR[i] = 9112;
}

}

}

}
else
{
	if(input[i]>(9107+offset0))
{
	if(input[i]>(9109+offset0))
{
	if(input[i]==(9111+offset0))
{
	vR[i] = 9111;
}
else
{
	vR[i] = 9110;
}

}
else
{
	if(input[i]==(9109+offset0))
{
	vR[i] = 9109;
}
else
{
	vR[i] = 9108;
}

}

}
else
{
	if(input[i]>(9105+offset0))
{
	if(input[i]==(9107+offset0))
{
	vR[i] = 9107;
}
else
{
	vR[i] = 9106;
}

}
else
{
	if(input[i]==(9105+offset0))
{
	vR[i] = 9105;
}
else
{
	vR[i] = 9104;
}

}

}

}

}
else
{
	if(input[i]>(9095+offset0))
{
	if(input[i]>(9099+offset0))
{
	if(input[i]>(9101+offset0))
{
	if(input[i]==(9103+offset0))
{
	vR[i] = 9103;
}
else
{
	vR[i] = 9102;
}

}
else
{
	if(input[i]==(9101+offset0))
{
	vR[i] = 9101;
}
else
{
	vR[i] = 9100;
}

}

}
else
{
	if(input[i]>(9097+offset0))
{
	if(input[i]==(9099+offset0))
{
	vR[i] = 9099;
}
else
{
	vR[i] = 9098;
}

}
else
{
	if(input[i]==(9097+offset0))
{
	vR[i] = 9097;
}
else
{
	vR[i] = 9096;
}

}

}

}
else
{
	if(input[i]>(9091+offset0))
{
	if(input[i]>(9093+offset0))
{
	if(input[i]==(9095+offset0))
{
	vR[i] = 9095;
}
else
{
	vR[i] = 9094;
}

}
else
{
	if(input[i]==(9093+offset0))
{
	vR[i] = 9093;
}
else
{
	vR[i] = 9092;
}

}

}
else
{
	if(input[i]>(9089+offset0))
{
	if(input[i]==(9091+offset0))
{
	vR[i] = 9091;
}
else
{
	vR[i] = 9090;
}

}
else
{
	if(input[i]==(9089+offset0))
{
	vR[i] = 9089;
}
else
{
	vR[i] = 9088;
}

}

}

}

}

}

}

}
else
{
	if(input[i]>(9023+offset0))
{
	if(input[i]>(9055+offset0))
{
	if(input[i]>(9071+offset0))
{
	if(input[i]>(9079+offset0))
{
	if(input[i]>(9083+offset0))
{
	if(input[i]>(9085+offset0))
{
	if(input[i]==(9087+offset0))
{
	vR[i] = 9087;
}
else
{
	vR[i] = 9086;
}

}
else
{
	if(input[i]==(9085+offset0))
{
	vR[i] = 9085;
}
else
{
	vR[i] = 9084;
}

}

}
else
{
	if(input[i]>(9081+offset0))
{
	if(input[i]==(9083+offset0))
{
	vR[i] = 9083;
}
else
{
	vR[i] = 9082;
}

}
else
{
	if(input[i]==(9081+offset0))
{
	vR[i] = 9081;
}
else
{
	vR[i] = 9080;
}

}

}

}
else
{
	if(input[i]>(9075+offset0))
{
	if(input[i]>(9077+offset0))
{
	if(input[i]==(9079+offset0))
{
	vR[i] = 9079;
}
else
{
	vR[i] = 9078;
}

}
else
{
	if(input[i]==(9077+offset0))
{
	vR[i] = 9077;
}
else
{
	vR[i] = 9076;
}

}

}
else
{
	if(input[i]>(9073+offset0))
{
	if(input[i]==(9075+offset0))
{
	vR[i] = 9075;
}
else
{
	vR[i] = 9074;
}

}
else
{
	if(input[i]==(9073+offset0))
{
	vR[i] = 9073;
}
else
{
	vR[i] = 9072;
}

}

}

}

}
else
{
	if(input[i]>(9063+offset0))
{
	if(input[i]>(9067+offset0))
{
	if(input[i]>(9069+offset0))
{
	if(input[i]==(9071+offset0))
{
	vR[i] = 9071;
}
else
{
	vR[i] = 9070;
}

}
else
{
	if(input[i]==(9069+offset0))
{
	vR[i] = 9069;
}
else
{
	vR[i] = 9068;
}

}

}
else
{
	if(input[i]>(9065+offset0))
{
	if(input[i]==(9067+offset0))
{
	vR[i] = 9067;
}
else
{
	vR[i] = 9066;
}

}
else
{
	if(input[i]==(9065+offset0))
{
	vR[i] = 9065;
}
else
{
	vR[i] = 9064;
}

}

}

}
else
{
	if(input[i]>(9059+offset0))
{
	if(input[i]>(9061+offset0))
{
	if(input[i]==(9063+offset0))
{
	vR[i] = 9063;
}
else
{
	vR[i] = 9062;
}

}
else
{
	if(input[i]==(9061+offset0))
{
	vR[i] = 9061;
}
else
{
	vR[i] = 9060;
}

}

}
else
{
	if(input[i]>(9057+offset0))
{
	if(input[i]==(9059+offset0))
{
	vR[i] = 9059;
}
else
{
	vR[i] = 9058;
}

}
else
{
	if(input[i]==(9057+offset0))
{
	vR[i] = 9057;
}
else
{
	vR[i] = 9056;
}

}

}

}

}

}
else
{
	if(input[i]>(9039+offset0))
{
	if(input[i]>(9047+offset0))
{
	if(input[i]>(9051+offset0))
{
	if(input[i]>(9053+offset0))
{
	if(input[i]==(9055+offset0))
{
	vR[i] = 9055;
}
else
{
	vR[i] = 9054;
}

}
else
{
	if(input[i]==(9053+offset0))
{
	vR[i] = 9053;
}
else
{
	vR[i] = 9052;
}

}

}
else
{
	if(input[i]>(9049+offset0))
{
	if(input[i]==(9051+offset0))
{
	vR[i] = 9051;
}
else
{
	vR[i] = 9050;
}

}
else
{
	if(input[i]==(9049+offset0))
{
	vR[i] = 9049;
}
else
{
	vR[i] = 9048;
}

}

}

}
else
{
	if(input[i]>(9043+offset0))
{
	if(input[i]>(9045+offset0))
{
	if(input[i]==(9047+offset0))
{
	vR[i] = 9047;
}
else
{
	vR[i] = 9046;
}

}
else
{
	if(input[i]==(9045+offset0))
{
	vR[i] = 9045;
}
else
{
	vR[i] = 9044;
}

}

}
else
{
	if(input[i]>(9041+offset0))
{
	if(input[i]==(9043+offset0))
{
	vR[i] = 9043;
}
else
{
	vR[i] = 9042;
}

}
else
{
	if(input[i]==(9041+offset0))
{
	vR[i] = 9041;
}
else
{
	vR[i] = 9040;
}

}

}

}

}
else
{
	if(input[i]>(9031+offset0))
{
	if(input[i]>(9035+offset0))
{
	if(input[i]>(9037+offset0))
{
	if(input[i]==(9039+offset0))
{
	vR[i] = 9039;
}
else
{
	vR[i] = 9038;
}

}
else
{
	if(input[i]==(9037+offset0))
{
	vR[i] = 9037;
}
else
{
	vR[i] = 9036;
}

}

}
else
{
	if(input[i]>(9033+offset0))
{
	if(input[i]==(9035+offset0))
{
	vR[i] = 9035;
}
else
{
	vR[i] = 9034;
}

}
else
{
	if(input[i]==(9033+offset0))
{
	vR[i] = 9033;
}
else
{
	vR[i] = 9032;
}

}

}

}
else
{
	if(input[i]>(9027+offset0))
{
	if(input[i]>(9029+offset0))
{
	if(input[i]==(9031+offset0))
{
	vR[i] = 9031;
}
else
{
	vR[i] = 9030;
}

}
else
{
	if(input[i]==(9029+offset0))
{
	vR[i] = 9029;
}
else
{
	vR[i] = 9028;
}

}

}
else
{
	if(input[i]>(9025+offset0))
{
	if(input[i]==(9027+offset0))
{
	vR[i] = 9027;
}
else
{
	vR[i] = 9026;
}

}
else
{
	if(input[i]==(9025+offset0))
{
	vR[i] = 9025;
}
else
{
	vR[i] = 9024;
}

}

}

}

}

}

}
else
{
	if(input[i]>(8991+offset0))
{
	if(input[i]>(9007+offset0))
{
	if(input[i]>(9015+offset0))
{
	if(input[i]>(9019+offset0))
{
	if(input[i]>(9021+offset0))
{
	if(input[i]==(9023+offset0))
{
	vR[i] = 9023;
}
else
{
	vR[i] = 9022;
}

}
else
{
	if(input[i]==(9021+offset0))
{
	vR[i] = 9021;
}
else
{
	vR[i] = 9020;
}

}

}
else
{
	if(input[i]>(9017+offset0))
{
	if(input[i]==(9019+offset0))
{
	vR[i] = 9019;
}
else
{
	vR[i] = 9018;
}

}
else
{
	if(input[i]==(9017+offset0))
{
	vR[i] = 9017;
}
else
{
	vR[i] = 9016;
}

}

}

}
else
{
	if(input[i]>(9011+offset0))
{
	if(input[i]>(9013+offset0))
{
	if(input[i]==(9015+offset0))
{
	vR[i] = 9015;
}
else
{
	vR[i] = 9014;
}

}
else
{
	if(input[i]==(9013+offset0))
{
	vR[i] = 9013;
}
else
{
	vR[i] = 9012;
}

}

}
else
{
	if(input[i]>(9009+offset0))
{
	if(input[i]==(9011+offset0))
{
	vR[i] = 9011;
}
else
{
	vR[i] = 9010;
}

}
else
{
	if(input[i]==(9009+offset0))
{
	vR[i] = 9009;
}
else
{
	vR[i] = 9008;
}

}

}

}

}
else
{
	if(input[i]>(8999+offset0))
{
	if(input[i]>(9003+offset0))
{
	if(input[i]>(9005+offset0))
{
	if(input[i]==(9007+offset0))
{
	vR[i] = 9007;
}
else
{
	vR[i] = 9006;
}

}
else
{
	if(input[i]==(9005+offset0))
{
	vR[i] = 9005;
}
else
{
	vR[i] = 9004;
}

}

}
else
{
	if(input[i]>(9001+offset0))
{
	if(input[i]==(9003+offset0))
{
	vR[i] = 9003;
}
else
{
	vR[i] = 9002;
}

}
else
{
	if(input[i]==(9001+offset0))
{
	vR[i] = 9001;
}
else
{
	vR[i] = 9000;
}

}

}

}
else
{
	if(input[i]>(8995+offset0))
{
	if(input[i]>(8997+offset0))
{
	if(input[i]==(8999+offset0))
{
	vR[i] = 8999;
}
else
{
	vR[i] = 8998;
}

}
else
{
	if(input[i]==(8997+offset0))
{
	vR[i] = 8997;
}
else
{
	vR[i] = 8996;
}

}

}
else
{
	if(input[i]>(8993+offset0))
{
	if(input[i]==(8995+offset0))
{
	vR[i] = 8995;
}
else
{
	vR[i] = 8994;
}

}
else
{
	if(input[i]==(8993+offset0))
{
	vR[i] = 8993;
}
else
{
	vR[i] = 8992;
}

}

}

}

}

}
else
{
	if(input[i]>(8975+offset0))
{
	if(input[i]>(8983+offset0))
{
	if(input[i]>(8987+offset0))
{
	if(input[i]>(8989+offset0))
{
	if(input[i]==(8991+offset0))
{
	vR[i] = 8991;
}
else
{
	vR[i] = 8990;
}

}
else
{
	if(input[i]==(8989+offset0))
{
	vR[i] = 8989;
}
else
{
	vR[i] = 8988;
}

}

}
else
{
	if(input[i]>(8985+offset0))
{
	if(input[i]==(8987+offset0))
{
	vR[i] = 8987;
}
else
{
	vR[i] = 8986;
}

}
else
{
	if(input[i]==(8985+offset0))
{
	vR[i] = 8985;
}
else
{
	vR[i] = 8984;
}

}

}

}
else
{
	if(input[i]>(8979+offset0))
{
	if(input[i]>(8981+offset0))
{
	if(input[i]==(8983+offset0))
{
	vR[i] = 8983;
}
else
{
	vR[i] = 8982;
}

}
else
{
	if(input[i]==(8981+offset0))
{
	vR[i] = 8981;
}
else
{
	vR[i] = 8980;
}

}

}
else
{
	if(input[i]>(8977+offset0))
{
	if(input[i]==(8979+offset0))
{
	vR[i] = 8979;
}
else
{
	vR[i] = 8978;
}

}
else
{
	if(input[i]==(8977+offset0))
{
	vR[i] = 8977;
}
else
{
	vR[i] = 8976;
}

}

}

}

}
else
{
	if(input[i]>(8967+offset0))
{
	if(input[i]>(8971+offset0))
{
	if(input[i]>(8973+offset0))
{
	if(input[i]==(8975+offset0))
{
	vR[i] = 8975;
}
else
{
	vR[i] = 8974;
}

}
else
{
	if(input[i]==(8973+offset0))
{
	vR[i] = 8973;
}
else
{
	vR[i] = 8972;
}

}

}
else
{
	if(input[i]>(8969+offset0))
{
	if(input[i]==(8971+offset0))
{
	vR[i] = 8971;
}
else
{
	vR[i] = 8970;
}

}
else
{
	if(input[i]==(8969+offset0))
{
	vR[i] = 8969;
}
else
{
	vR[i] = 8968;
}

}

}

}
else
{
	if(input[i]>(8963+offset0))
{
	if(input[i]>(8965+offset0))
{
	if(input[i]==(8967+offset0))
{
	vR[i] = 8967;
}
else
{
	vR[i] = 8966;
}

}
else
{
	if(input[i]==(8965+offset0))
{
	vR[i] = 8965;
}
else
{
	vR[i] = 8964;
}

}

}
else
{
	if(input[i]>(8961+offset0))
{
	if(input[i]==(8963+offset0))
{
	vR[i] = 8963;
}
else
{
	vR[i] = 8962;
}

}
else
{
	if(input[i]==(8961+offset0))
{
	vR[i] = 8961;
}
else
{
	vR[i] = 8960;
}

}

}

}

}

}

}

}

}
else
{
	if(input[i]>(8831+offset0))
{
	if(input[i]>(8895+offset0))
{
	if(input[i]>(8927+offset0))
{
	if(input[i]>(8943+offset0))
{
	if(input[i]>(8951+offset0))
{
	if(input[i]>(8955+offset0))
{
	if(input[i]>(8957+offset0))
{
	if(input[i]==(8959+offset0))
{
	vR[i] = 8959;
}
else
{
	vR[i] = 8958;
}

}
else
{
	if(input[i]==(8957+offset0))
{
	vR[i] = 8957;
}
else
{
	vR[i] = 8956;
}

}

}
else
{
	if(input[i]>(8953+offset0))
{
	if(input[i]==(8955+offset0))
{
	vR[i] = 8955;
}
else
{
	vR[i] = 8954;
}

}
else
{
	if(input[i]==(8953+offset0))
{
	vR[i] = 8953;
}
else
{
	vR[i] = 8952;
}

}

}

}
else
{
	if(input[i]>(8947+offset0))
{
	if(input[i]>(8949+offset0))
{
	if(input[i]==(8951+offset0))
{
	vR[i] = 8951;
}
else
{
	vR[i] = 8950;
}

}
else
{
	if(input[i]==(8949+offset0))
{
	vR[i] = 8949;
}
else
{
	vR[i] = 8948;
}

}

}
else
{
	if(input[i]>(8945+offset0))
{
	if(input[i]==(8947+offset0))
{
	vR[i] = 8947;
}
else
{
	vR[i] = 8946;
}

}
else
{
	if(input[i]==(8945+offset0))
{
	vR[i] = 8945;
}
else
{
	vR[i] = 8944;
}

}

}

}

}
else
{
	if(input[i]>(8935+offset0))
{
	if(input[i]>(8939+offset0))
{
	if(input[i]>(8941+offset0))
{
	if(input[i]==(8943+offset0))
{
	vR[i] = 8943;
}
else
{
	vR[i] = 8942;
}

}
else
{
	if(input[i]==(8941+offset0))
{
	vR[i] = 8941;
}
else
{
	vR[i] = 8940;
}

}

}
else
{
	if(input[i]>(8937+offset0))
{
	if(input[i]==(8939+offset0))
{
	vR[i] = 8939;
}
else
{
	vR[i] = 8938;
}

}
else
{
	if(input[i]==(8937+offset0))
{
	vR[i] = 8937;
}
else
{
	vR[i] = 8936;
}

}

}

}
else
{
	if(input[i]>(8931+offset0))
{
	if(input[i]>(8933+offset0))
{
	if(input[i]==(8935+offset0))
{
	vR[i] = 8935;
}
else
{
	vR[i] = 8934;
}

}
else
{
	if(input[i]==(8933+offset0))
{
	vR[i] = 8933;
}
else
{
	vR[i] = 8932;
}

}

}
else
{
	if(input[i]>(8929+offset0))
{
	if(input[i]==(8931+offset0))
{
	vR[i] = 8931;
}
else
{
	vR[i] = 8930;
}

}
else
{
	if(input[i]==(8929+offset0))
{
	vR[i] = 8929;
}
else
{
	vR[i] = 8928;
}

}

}

}

}

}
else
{
	if(input[i]>(8911+offset0))
{
	if(input[i]>(8919+offset0))
{
	if(input[i]>(8923+offset0))
{
	if(input[i]>(8925+offset0))
{
	if(input[i]==(8927+offset0))
{
	vR[i] = 8927;
}
else
{
	vR[i] = 8926;
}

}
else
{
	if(input[i]==(8925+offset0))
{
	vR[i] = 8925;
}
else
{
	vR[i] = 8924;
}

}

}
else
{
	if(input[i]>(8921+offset0))
{
	if(input[i]==(8923+offset0))
{
	vR[i] = 8923;
}
else
{
	vR[i] = 8922;
}

}
else
{
	if(input[i]==(8921+offset0))
{
	vR[i] = 8921;
}
else
{
	vR[i] = 8920;
}

}

}

}
else
{
	if(input[i]>(8915+offset0))
{
	if(input[i]>(8917+offset0))
{
	if(input[i]==(8919+offset0))
{
	vR[i] = 8919;
}
else
{
	vR[i] = 8918;
}

}
else
{
	if(input[i]==(8917+offset0))
{
	vR[i] = 8917;
}
else
{
	vR[i] = 8916;
}

}

}
else
{
	if(input[i]>(8913+offset0))
{
	if(input[i]==(8915+offset0))
{
	vR[i] = 8915;
}
else
{
	vR[i] = 8914;
}

}
else
{
	if(input[i]==(8913+offset0))
{
	vR[i] = 8913;
}
else
{
	vR[i] = 8912;
}

}

}

}

}
else
{
	if(input[i]>(8903+offset0))
{
	if(input[i]>(8907+offset0))
{
	if(input[i]>(8909+offset0))
{
	if(input[i]==(8911+offset0))
{
	vR[i] = 8911;
}
else
{
	vR[i] = 8910;
}

}
else
{
	if(input[i]==(8909+offset0))
{
	vR[i] = 8909;
}
else
{
	vR[i] = 8908;
}

}

}
else
{
	if(input[i]>(8905+offset0))
{
	if(input[i]==(8907+offset0))
{
	vR[i] = 8907;
}
else
{
	vR[i] = 8906;
}

}
else
{
	if(input[i]==(8905+offset0))
{
	vR[i] = 8905;
}
else
{
	vR[i] = 8904;
}

}

}

}
else
{
	if(input[i]>(8899+offset0))
{
	if(input[i]>(8901+offset0))
{
	if(input[i]==(8903+offset0))
{
	vR[i] = 8903;
}
else
{
	vR[i] = 8902;
}

}
else
{
	if(input[i]==(8901+offset0))
{
	vR[i] = 8901;
}
else
{
	vR[i] = 8900;
}

}

}
else
{
	if(input[i]>(8897+offset0))
{
	if(input[i]==(8899+offset0))
{
	vR[i] = 8899;
}
else
{
	vR[i] = 8898;
}

}
else
{
	if(input[i]==(8897+offset0))
{
	vR[i] = 8897;
}
else
{
	vR[i] = 8896;
}

}

}

}

}

}

}
else
{
	if(input[i]>(8863+offset0))
{
	if(input[i]>(8879+offset0))
{
	if(input[i]>(8887+offset0))
{
	if(input[i]>(8891+offset0))
{
	if(input[i]>(8893+offset0))
{
	if(input[i]==(8895+offset0))
{
	vR[i] = 8895;
}
else
{
	vR[i] = 8894;
}

}
else
{
	if(input[i]==(8893+offset0))
{
	vR[i] = 8893;
}
else
{
	vR[i] = 8892;
}

}

}
else
{
	if(input[i]>(8889+offset0))
{
	if(input[i]==(8891+offset0))
{
	vR[i] = 8891;
}
else
{
	vR[i] = 8890;
}

}
else
{
	if(input[i]==(8889+offset0))
{
	vR[i] = 8889;
}
else
{
	vR[i] = 8888;
}

}

}

}
else
{
	if(input[i]>(8883+offset0))
{
	if(input[i]>(8885+offset0))
{
	if(input[i]==(8887+offset0))
{
	vR[i] = 8887;
}
else
{
	vR[i] = 8886;
}

}
else
{
	if(input[i]==(8885+offset0))
{
	vR[i] = 8885;
}
else
{
	vR[i] = 8884;
}

}

}
else
{
	if(input[i]>(8881+offset0))
{
	if(input[i]==(8883+offset0))
{
	vR[i] = 8883;
}
else
{
	vR[i] = 8882;
}

}
else
{
	if(input[i]==(8881+offset0))
{
	vR[i] = 8881;
}
else
{
	vR[i] = 8880;
}

}

}

}

}
else
{
	if(input[i]>(8871+offset0))
{
	if(input[i]>(8875+offset0))
{
	if(input[i]>(8877+offset0))
{
	if(input[i]==(8879+offset0))
{
	vR[i] = 8879;
}
else
{
	vR[i] = 8878;
}

}
else
{
	if(input[i]==(8877+offset0))
{
	vR[i] = 8877;
}
else
{
	vR[i] = 8876;
}

}

}
else
{
	if(input[i]>(8873+offset0))
{
	if(input[i]==(8875+offset0))
{
	vR[i] = 8875;
}
else
{
	vR[i] = 8874;
}

}
else
{
	if(input[i]==(8873+offset0))
{
	vR[i] = 8873;
}
else
{
	vR[i] = 8872;
}

}

}

}
else
{
	if(input[i]>(8867+offset0))
{
	if(input[i]>(8869+offset0))
{
	if(input[i]==(8871+offset0))
{
	vR[i] = 8871;
}
else
{
	vR[i] = 8870;
}

}
else
{
	if(input[i]==(8869+offset0))
{
	vR[i] = 8869;
}
else
{
	vR[i] = 8868;
}

}

}
else
{
	if(input[i]>(8865+offset0))
{
	if(input[i]==(8867+offset0))
{
	vR[i] = 8867;
}
else
{
	vR[i] = 8866;
}

}
else
{
	if(input[i]==(8865+offset0))
{
	vR[i] = 8865;
}
else
{
	vR[i] = 8864;
}

}

}

}

}

}
else
{
	if(input[i]>(8847+offset0))
{
	if(input[i]>(8855+offset0))
{
	if(input[i]>(8859+offset0))
{
	if(input[i]>(8861+offset0))
{
	if(input[i]==(8863+offset0))
{
	vR[i] = 8863;
}
else
{
	vR[i] = 8862;
}

}
else
{
	if(input[i]==(8861+offset0))
{
	vR[i] = 8861;
}
else
{
	vR[i] = 8860;
}

}

}
else
{
	if(input[i]>(8857+offset0))
{
	if(input[i]==(8859+offset0))
{
	vR[i] = 8859;
}
else
{
	vR[i] = 8858;
}

}
else
{
	if(input[i]==(8857+offset0))
{
	vR[i] = 8857;
}
else
{
	vR[i] = 8856;
}

}

}

}
else
{
	if(input[i]>(8851+offset0))
{
	if(input[i]>(8853+offset0))
{
	if(input[i]==(8855+offset0))
{
	vR[i] = 8855;
}
else
{
	vR[i] = 8854;
}

}
else
{
	if(input[i]==(8853+offset0))
{
	vR[i] = 8853;
}
else
{
	vR[i] = 8852;
}

}

}
else
{
	if(input[i]>(8849+offset0))
{
	if(input[i]==(8851+offset0))
{
	vR[i] = 8851;
}
else
{
	vR[i] = 8850;
}

}
else
{
	if(input[i]==(8849+offset0))
{
	vR[i] = 8849;
}
else
{
	vR[i] = 8848;
}

}

}

}

}
else
{
	if(input[i]>(8839+offset0))
{
	if(input[i]>(8843+offset0))
{
	if(input[i]>(8845+offset0))
{
	if(input[i]==(8847+offset0))
{
	vR[i] = 8847;
}
else
{
	vR[i] = 8846;
}

}
else
{
	if(input[i]==(8845+offset0))
{
	vR[i] = 8845;
}
else
{
	vR[i] = 8844;
}

}

}
else
{
	if(input[i]>(8841+offset0))
{
	if(input[i]==(8843+offset0))
{
	vR[i] = 8843;
}
else
{
	vR[i] = 8842;
}

}
else
{
	if(input[i]==(8841+offset0))
{
	vR[i] = 8841;
}
else
{
	vR[i] = 8840;
}

}

}

}
else
{
	if(input[i]>(8835+offset0))
{
	if(input[i]>(8837+offset0))
{
	if(input[i]==(8839+offset0))
{
	vR[i] = 8839;
}
else
{
	vR[i] = 8838;
}

}
else
{
	if(input[i]==(8837+offset0))
{
	vR[i] = 8837;
}
else
{
	vR[i] = 8836;
}

}

}
else
{
	if(input[i]>(8833+offset0))
{
	if(input[i]==(8835+offset0))
{
	vR[i] = 8835;
}
else
{
	vR[i] = 8834;
}

}
else
{
	if(input[i]==(8833+offset0))
{
	vR[i] = 8833;
}
else
{
	vR[i] = 8832;
}

}

}

}

}

}

}

}
else
{
	if(input[i]>(8767+offset0))
{
	if(input[i]>(8799+offset0))
{
	if(input[i]>(8815+offset0))
{
	if(input[i]>(8823+offset0))
{
	if(input[i]>(8827+offset0))
{
	if(input[i]>(8829+offset0))
{
	if(input[i]==(8831+offset0))
{
	vR[i] = 8831;
}
else
{
	vR[i] = 8830;
}

}
else
{
	if(input[i]==(8829+offset0))
{
	vR[i] = 8829;
}
else
{
	vR[i] = 8828;
}

}

}
else
{
	if(input[i]>(8825+offset0))
{
	if(input[i]==(8827+offset0))
{
	vR[i] = 8827;
}
else
{
	vR[i] = 8826;
}

}
else
{
	if(input[i]==(8825+offset0))
{
	vR[i] = 8825;
}
else
{
	vR[i] = 8824;
}

}

}

}
else
{
	if(input[i]>(8819+offset0))
{
	if(input[i]>(8821+offset0))
{
	if(input[i]==(8823+offset0))
{
	vR[i] = 8823;
}
else
{
	vR[i] = 8822;
}

}
else
{
	if(input[i]==(8821+offset0))
{
	vR[i] = 8821;
}
else
{
	vR[i] = 8820;
}

}

}
else
{
	if(input[i]>(8817+offset0))
{
	if(input[i]==(8819+offset0))
{
	vR[i] = 8819;
}
else
{
	vR[i] = 8818;
}

}
else
{
	if(input[i]==(8817+offset0))
{
	vR[i] = 8817;
}
else
{
	vR[i] = 8816;
}

}

}

}

}
else
{
	if(input[i]>(8807+offset0))
{
	if(input[i]>(8811+offset0))
{
	if(input[i]>(8813+offset0))
{
	if(input[i]==(8815+offset0))
{
	vR[i] = 8815;
}
else
{
	vR[i] = 8814;
}

}
else
{
	if(input[i]==(8813+offset0))
{
	vR[i] = 8813;
}
else
{
	vR[i] = 8812;
}

}

}
else
{
	if(input[i]>(8809+offset0))
{
	if(input[i]==(8811+offset0))
{
	vR[i] = 8811;
}
else
{
	vR[i] = 8810;
}

}
else
{
	if(input[i]==(8809+offset0))
{
	vR[i] = 8809;
}
else
{
	vR[i] = 8808;
}

}

}

}
else
{
	if(input[i]>(8803+offset0))
{
	if(input[i]>(8805+offset0))
{
	if(input[i]==(8807+offset0))
{
	vR[i] = 8807;
}
else
{
	vR[i] = 8806;
}

}
else
{
	if(input[i]==(8805+offset0))
{
	vR[i] = 8805;
}
else
{
	vR[i] = 8804;
}

}

}
else
{
	if(input[i]>(8801+offset0))
{
	if(input[i]==(8803+offset0))
{
	vR[i] = 8803;
}
else
{
	vR[i] = 8802;
}

}
else
{
	if(input[i]==(8801+offset0))
{
	vR[i] = 8801;
}
else
{
	vR[i] = 8800;
}

}

}

}

}

}
else
{
	if(input[i]>(8783+offset0))
{
	if(input[i]>(8791+offset0))
{
	if(input[i]>(8795+offset0))
{
	if(input[i]>(8797+offset0))
{
	if(input[i]==(8799+offset0))
{
	vR[i] = 8799;
}
else
{
	vR[i] = 8798;
}

}
else
{
	if(input[i]==(8797+offset0))
{
	vR[i] = 8797;
}
else
{
	vR[i] = 8796;
}

}

}
else
{
	if(input[i]>(8793+offset0))
{
	if(input[i]==(8795+offset0))
{
	vR[i] = 8795;
}
else
{
	vR[i] = 8794;
}

}
else
{
	if(input[i]==(8793+offset0))
{
	vR[i] = 8793;
}
else
{
	vR[i] = 8792;
}

}

}

}
else
{
	if(input[i]>(8787+offset0))
{
	if(input[i]>(8789+offset0))
{
	if(input[i]==(8791+offset0))
{
	vR[i] = 8791;
}
else
{
	vR[i] = 8790;
}

}
else
{
	if(input[i]==(8789+offset0))
{
	vR[i] = 8789;
}
else
{
	vR[i] = 8788;
}

}

}
else
{
	if(input[i]>(8785+offset0))
{
	if(input[i]==(8787+offset0))
{
	vR[i] = 8787;
}
else
{
	vR[i] = 8786;
}

}
else
{
	if(input[i]==(8785+offset0))
{
	vR[i] = 8785;
}
else
{
	vR[i] = 8784;
}

}

}

}

}
else
{
	if(input[i]>(8775+offset0))
{
	if(input[i]>(8779+offset0))
{
	if(input[i]>(8781+offset0))
{
	if(input[i]==(8783+offset0))
{
	vR[i] = 8783;
}
else
{
	vR[i] = 8782;
}

}
else
{
	if(input[i]==(8781+offset0))
{
	vR[i] = 8781;
}
else
{
	vR[i] = 8780;
}

}

}
else
{
	if(input[i]>(8777+offset0))
{
	if(input[i]==(8779+offset0))
{
	vR[i] = 8779;
}
else
{
	vR[i] = 8778;
}

}
else
{
	if(input[i]==(8777+offset0))
{
	vR[i] = 8777;
}
else
{
	vR[i] = 8776;
}

}

}

}
else
{
	if(input[i]>(8771+offset0))
{
	if(input[i]>(8773+offset0))
{
	if(input[i]==(8775+offset0))
{
	vR[i] = 8775;
}
else
{
	vR[i] = 8774;
}

}
else
{
	if(input[i]==(8773+offset0))
{
	vR[i] = 8773;
}
else
{
	vR[i] = 8772;
}

}

}
else
{
	if(input[i]>(8769+offset0))
{
	if(input[i]==(8771+offset0))
{
	vR[i] = 8771;
}
else
{
	vR[i] = 8770;
}

}
else
{
	if(input[i]==(8769+offset0))
{
	vR[i] = 8769;
}
else
{
	vR[i] = 8768;
}

}

}

}

}

}

}
else
{
	if(input[i]>(8735+offset0))
{
	if(input[i]>(8751+offset0))
{
	if(input[i]>(8759+offset0))
{
	if(input[i]>(8763+offset0))
{
	if(input[i]>(8765+offset0))
{
	if(input[i]==(8767+offset0))
{
	vR[i] = 8767;
}
else
{
	vR[i] = 8766;
}

}
else
{
	if(input[i]==(8765+offset0))
{
	vR[i] = 8765;
}
else
{
	vR[i] = 8764;
}

}

}
else
{
	if(input[i]>(8761+offset0))
{
	if(input[i]==(8763+offset0))
{
	vR[i] = 8763;
}
else
{
	vR[i] = 8762;
}

}
else
{
	if(input[i]==(8761+offset0))
{
	vR[i] = 8761;
}
else
{
	vR[i] = 8760;
}

}

}

}
else
{
	if(input[i]>(8755+offset0))
{
	if(input[i]>(8757+offset0))
{
	if(input[i]==(8759+offset0))
{
	vR[i] = 8759;
}
else
{
	vR[i] = 8758;
}

}
else
{
	if(input[i]==(8757+offset0))
{
	vR[i] = 8757;
}
else
{
	vR[i] = 8756;
}

}

}
else
{
	if(input[i]>(8753+offset0))
{
	if(input[i]==(8755+offset0))
{
	vR[i] = 8755;
}
else
{
	vR[i] = 8754;
}

}
else
{
	if(input[i]==(8753+offset0))
{
	vR[i] = 8753;
}
else
{
	vR[i] = 8752;
}

}

}

}

}
else
{
	if(input[i]>(8743+offset0))
{
	if(input[i]>(8747+offset0))
{
	if(input[i]>(8749+offset0))
{
	if(input[i]==(8751+offset0))
{
	vR[i] = 8751;
}
else
{
	vR[i] = 8750;
}

}
else
{
	if(input[i]==(8749+offset0))
{
	vR[i] = 8749;
}
else
{
	vR[i] = 8748;
}

}

}
else
{
	if(input[i]>(8745+offset0))
{
	if(input[i]==(8747+offset0))
{
	vR[i] = 8747;
}
else
{
	vR[i] = 8746;
}

}
else
{
	if(input[i]==(8745+offset0))
{
	vR[i] = 8745;
}
else
{
	vR[i] = 8744;
}

}

}

}
else
{
	if(input[i]>(8739+offset0))
{
	if(input[i]>(8741+offset0))
{
	if(input[i]==(8743+offset0))
{
	vR[i] = 8743;
}
else
{
	vR[i] = 8742;
}

}
else
{
	if(input[i]==(8741+offset0))
{
	vR[i] = 8741;
}
else
{
	vR[i] = 8740;
}

}

}
else
{
	if(input[i]>(8737+offset0))
{
	if(input[i]==(8739+offset0))
{
	vR[i] = 8739;
}
else
{
	vR[i] = 8738;
}

}
else
{
	if(input[i]==(8737+offset0))
{
	vR[i] = 8737;
}
else
{
	vR[i] = 8736;
}

}

}

}

}

}
else
{
	if(input[i]>(8719+offset0))
{
	if(input[i]>(8727+offset0))
{
	if(input[i]>(8731+offset0))
{
	if(input[i]>(8733+offset0))
{
	if(input[i]==(8735+offset0))
{
	vR[i] = 8735;
}
else
{
	vR[i] = 8734;
}

}
else
{
	if(input[i]==(8733+offset0))
{
	vR[i] = 8733;
}
else
{
	vR[i] = 8732;
}

}

}
else
{
	if(input[i]>(8729+offset0))
{
	if(input[i]==(8731+offset0))
{
	vR[i] = 8731;
}
else
{
	vR[i] = 8730;
}

}
else
{
	if(input[i]==(8729+offset0))
{
	vR[i] = 8729;
}
else
{
	vR[i] = 8728;
}

}

}

}
else
{
	if(input[i]>(8723+offset0))
{
	if(input[i]>(8725+offset0))
{
	if(input[i]==(8727+offset0))
{
	vR[i] = 8727;
}
else
{
	vR[i] = 8726;
}

}
else
{
	if(input[i]==(8725+offset0))
{
	vR[i] = 8725;
}
else
{
	vR[i] = 8724;
}

}

}
else
{
	if(input[i]>(8721+offset0))
{
	if(input[i]==(8723+offset0))
{
	vR[i] = 8723;
}
else
{
	vR[i] = 8722;
}

}
else
{
	if(input[i]==(8721+offset0))
{
	vR[i] = 8721;
}
else
{
	vR[i] = 8720;
}

}

}

}

}
else
{
	if(input[i]>(8711+offset0))
{
	if(input[i]>(8715+offset0))
{
	if(input[i]>(8717+offset0))
{
	if(input[i]==(8719+offset0))
{
	vR[i] = 8719;
}
else
{
	vR[i] = 8718;
}

}
else
{
	if(input[i]==(8717+offset0))
{
	vR[i] = 8717;
}
else
{
	vR[i] = 8716;
}

}

}
else
{
	if(input[i]>(8713+offset0))
{
	if(input[i]==(8715+offset0))
{
	vR[i] = 8715;
}
else
{
	vR[i] = 8714;
}

}
else
{
	if(input[i]==(8713+offset0))
{
	vR[i] = 8713;
}
else
{
	vR[i] = 8712;
}

}

}

}
else
{
	if(input[i]>(8707+offset0))
{
	if(input[i]>(8709+offset0))
{
	if(input[i]==(8711+offset0))
{
	vR[i] = 8711;
}
else
{
	vR[i] = 8710;
}

}
else
{
	if(input[i]==(8709+offset0))
{
	vR[i] = 8709;
}
else
{
	vR[i] = 8708;
}

}

}
else
{
	if(input[i]>(8705+offset0))
{
	if(input[i]==(8707+offset0))
{
	vR[i] = 8707;
}
else
{
	vR[i] = 8706;
}

}
else
{
	if(input[i]==(8705+offset0))
{
	vR[i] = 8705;
}
else
{
	vR[i] = 8704;
}

}

}

}

}

}

}

}

}

}
else
{
	if(input[i]>(8447+offset0))
{
	if(input[i]>(8575+offset0))
{
	if(input[i]>(8639+offset0))
{
	if(input[i]>(8671+offset0))
{
	if(input[i]>(8687+offset0))
{
	if(input[i]>(8695+offset0))
{
	if(input[i]>(8699+offset0))
{
	if(input[i]>(8701+offset0))
{
	if(input[i]==(8703+offset0))
{
	vR[i] = 8703;
}
else
{
	vR[i] = 8702;
}

}
else
{
	if(input[i]==(8701+offset0))
{
	vR[i] = 8701;
}
else
{
	vR[i] = 8700;
}

}

}
else
{
	if(input[i]>(8697+offset0))
{
	if(input[i]==(8699+offset0))
{
	vR[i] = 8699;
}
else
{
	vR[i] = 8698;
}

}
else
{
	if(input[i]==(8697+offset0))
{
	vR[i] = 8697;
}
else
{
	vR[i] = 8696;
}

}

}

}
else
{
	if(input[i]>(8691+offset0))
{
	if(input[i]>(8693+offset0))
{
	if(input[i]==(8695+offset0))
{
	vR[i] = 8695;
}
else
{
	vR[i] = 8694;
}

}
else
{
	if(input[i]==(8693+offset0))
{
	vR[i] = 8693;
}
else
{
	vR[i] = 8692;
}

}

}
else
{
	if(input[i]>(8689+offset0))
{
	if(input[i]==(8691+offset0))
{
	vR[i] = 8691;
}
else
{
	vR[i] = 8690;
}

}
else
{
	if(input[i]==(8689+offset0))
{
	vR[i] = 8689;
}
else
{
	vR[i] = 8688;
}

}

}

}

}
else
{
	if(input[i]>(8679+offset0))
{
	if(input[i]>(8683+offset0))
{
	if(input[i]>(8685+offset0))
{
	if(input[i]==(8687+offset0))
{
	vR[i] = 8687;
}
else
{
	vR[i] = 8686;
}

}
else
{
	if(input[i]==(8685+offset0))
{
	vR[i] = 8685;
}
else
{
	vR[i] = 8684;
}

}

}
else
{
	if(input[i]>(8681+offset0))
{
	if(input[i]==(8683+offset0))
{
	vR[i] = 8683;
}
else
{
	vR[i] = 8682;
}

}
else
{
	if(input[i]==(8681+offset0))
{
	vR[i] = 8681;
}
else
{
	vR[i] = 8680;
}

}

}

}
else
{
	if(input[i]>(8675+offset0))
{
	if(input[i]>(8677+offset0))
{
	if(input[i]==(8679+offset0))
{
	vR[i] = 8679;
}
else
{
	vR[i] = 8678;
}

}
else
{
	if(input[i]==(8677+offset0))
{
	vR[i] = 8677;
}
else
{
	vR[i] = 8676;
}

}

}
else
{
	if(input[i]>(8673+offset0))
{
	if(input[i]==(8675+offset0))
{
	vR[i] = 8675;
}
else
{
	vR[i] = 8674;
}

}
else
{
	if(input[i]==(8673+offset0))
{
	vR[i] = 8673;
}
else
{
	vR[i] = 8672;
}

}

}

}

}

}
else
{
	if(input[i]>(8655+offset0))
{
	if(input[i]>(8663+offset0))
{
	if(input[i]>(8667+offset0))
{
	if(input[i]>(8669+offset0))
{
	if(input[i]==(8671+offset0))
{
	vR[i] = 8671;
}
else
{
	vR[i] = 8670;
}

}
else
{
	if(input[i]==(8669+offset0))
{
	vR[i] = 8669;
}
else
{
	vR[i] = 8668;
}

}

}
else
{
	if(input[i]>(8665+offset0))
{
	if(input[i]==(8667+offset0))
{
	vR[i] = 8667;
}
else
{
	vR[i] = 8666;
}

}
else
{
	if(input[i]==(8665+offset0))
{
	vR[i] = 8665;
}
else
{
	vR[i] = 8664;
}

}

}

}
else
{
	if(input[i]>(8659+offset0))
{
	if(input[i]>(8661+offset0))
{
	if(input[i]==(8663+offset0))
{
	vR[i] = 8663;
}
else
{
	vR[i] = 8662;
}

}
else
{
	if(input[i]==(8661+offset0))
{
	vR[i] = 8661;
}
else
{
	vR[i] = 8660;
}

}

}
else
{
	if(input[i]>(8657+offset0))
{
	if(input[i]==(8659+offset0))
{
	vR[i] = 8659;
}
else
{
	vR[i] = 8658;
}

}
else
{
	if(input[i]==(8657+offset0))
{
	vR[i] = 8657;
}
else
{
	vR[i] = 8656;
}

}

}

}

}
else
{
	if(input[i]>(8647+offset0))
{
	if(input[i]>(8651+offset0))
{
	if(input[i]>(8653+offset0))
{
	if(input[i]==(8655+offset0))
{
	vR[i] = 8655;
}
else
{
	vR[i] = 8654;
}

}
else
{
	if(input[i]==(8653+offset0))
{
	vR[i] = 8653;
}
else
{
	vR[i] = 8652;
}

}

}
else
{
	if(input[i]>(8649+offset0))
{
	if(input[i]==(8651+offset0))
{
	vR[i] = 8651;
}
else
{
	vR[i] = 8650;
}

}
else
{
	if(input[i]==(8649+offset0))
{
	vR[i] = 8649;
}
else
{
	vR[i] = 8648;
}

}

}

}
else
{
	if(input[i]>(8643+offset0))
{
	if(input[i]>(8645+offset0))
{
	if(input[i]==(8647+offset0))
{
	vR[i] = 8647;
}
else
{
	vR[i] = 8646;
}

}
else
{
	if(input[i]==(8645+offset0))
{
	vR[i] = 8645;
}
else
{
	vR[i] = 8644;
}

}

}
else
{
	if(input[i]>(8641+offset0))
{
	if(input[i]==(8643+offset0))
{
	vR[i] = 8643;
}
else
{
	vR[i] = 8642;
}

}
else
{
	if(input[i]==(8641+offset0))
{
	vR[i] = 8641;
}
else
{
	vR[i] = 8640;
}

}

}

}

}

}

}
else
{
	if(input[i]>(8607+offset0))
{
	if(input[i]>(8623+offset0))
{
	if(input[i]>(8631+offset0))
{
	if(input[i]>(8635+offset0))
{
	if(input[i]>(8637+offset0))
{
	if(input[i]==(8639+offset0))
{
	vR[i] = 8639;
}
else
{
	vR[i] = 8638;
}

}
else
{
	if(input[i]==(8637+offset0))
{
	vR[i] = 8637;
}
else
{
	vR[i] = 8636;
}

}

}
else
{
	if(input[i]>(8633+offset0))
{
	if(input[i]==(8635+offset0))
{
	vR[i] = 8635;
}
else
{
	vR[i] = 8634;
}

}
else
{
	if(input[i]==(8633+offset0))
{
	vR[i] = 8633;
}
else
{
	vR[i] = 8632;
}

}

}

}
else
{
	if(input[i]>(8627+offset0))
{
	if(input[i]>(8629+offset0))
{
	if(input[i]==(8631+offset0))
{
	vR[i] = 8631;
}
else
{
	vR[i] = 8630;
}

}
else
{
	if(input[i]==(8629+offset0))
{
	vR[i] = 8629;
}
else
{
	vR[i] = 8628;
}

}

}
else
{
	if(input[i]>(8625+offset0))
{
	if(input[i]==(8627+offset0))
{
	vR[i] = 8627;
}
else
{
	vR[i] = 8626;
}

}
else
{
	if(input[i]==(8625+offset0))
{
	vR[i] = 8625;
}
else
{
	vR[i] = 8624;
}

}

}

}

}
else
{
	if(input[i]>(8615+offset0))
{
	if(input[i]>(8619+offset0))
{
	if(input[i]>(8621+offset0))
{
	if(input[i]==(8623+offset0))
{
	vR[i] = 8623;
}
else
{
	vR[i] = 8622;
}

}
else
{
	if(input[i]==(8621+offset0))
{
	vR[i] = 8621;
}
else
{
	vR[i] = 8620;
}

}

}
else
{
	if(input[i]>(8617+offset0))
{
	if(input[i]==(8619+offset0))
{
	vR[i] = 8619;
}
else
{
	vR[i] = 8618;
}

}
else
{
	if(input[i]==(8617+offset0))
{
	vR[i] = 8617;
}
else
{
	vR[i] = 8616;
}

}

}

}
else
{
	if(input[i]>(8611+offset0))
{
	if(input[i]>(8613+offset0))
{
	if(input[i]==(8615+offset0))
{
	vR[i] = 8615;
}
else
{
	vR[i] = 8614;
}

}
else
{
	if(input[i]==(8613+offset0))
{
	vR[i] = 8613;
}
else
{
	vR[i] = 8612;
}

}

}
else
{
	if(input[i]>(8609+offset0))
{
	if(input[i]==(8611+offset0))
{
	vR[i] = 8611;
}
else
{
	vR[i] = 8610;
}

}
else
{
	if(input[i]==(8609+offset0))
{
	vR[i] = 8609;
}
else
{
	vR[i] = 8608;
}

}

}

}

}

}
else
{
	if(input[i]>(8591+offset0))
{
	if(input[i]>(8599+offset0))
{
	if(input[i]>(8603+offset0))
{
	if(input[i]>(8605+offset0))
{
	if(input[i]==(8607+offset0))
{
	vR[i] = 8607;
}
else
{
	vR[i] = 8606;
}

}
else
{
	if(input[i]==(8605+offset0))
{
	vR[i] = 8605;
}
else
{
	vR[i] = 8604;
}

}

}
else
{
	if(input[i]>(8601+offset0))
{
	if(input[i]==(8603+offset0))
{
	vR[i] = 8603;
}
else
{
	vR[i] = 8602;
}

}
else
{
	if(input[i]==(8601+offset0))
{
	vR[i] = 8601;
}
else
{
	vR[i] = 8600;
}

}

}

}
else
{
	if(input[i]>(8595+offset0))
{
	if(input[i]>(8597+offset0))
{
	if(input[i]==(8599+offset0))
{
	vR[i] = 8599;
}
else
{
	vR[i] = 8598;
}

}
else
{
	if(input[i]==(8597+offset0))
{
	vR[i] = 8597;
}
else
{
	vR[i] = 8596;
}

}

}
else
{
	if(input[i]>(8593+offset0))
{
	if(input[i]==(8595+offset0))
{
	vR[i] = 8595;
}
else
{
	vR[i] = 8594;
}

}
else
{
	if(input[i]==(8593+offset0))
{
	vR[i] = 8593;
}
else
{
	vR[i] = 8592;
}

}

}

}

}
else
{
	if(input[i]>(8583+offset0))
{
	if(input[i]>(8587+offset0))
{
	if(input[i]>(8589+offset0))
{
	if(input[i]==(8591+offset0))
{
	vR[i] = 8591;
}
else
{
	vR[i] = 8590;
}

}
else
{
	if(input[i]==(8589+offset0))
{
	vR[i] = 8589;
}
else
{
	vR[i] = 8588;
}

}

}
else
{
	if(input[i]>(8585+offset0))
{
	if(input[i]==(8587+offset0))
{
	vR[i] = 8587;
}
else
{
	vR[i] = 8586;
}

}
else
{
	if(input[i]==(8585+offset0))
{
	vR[i] = 8585;
}
else
{
	vR[i] = 8584;
}

}

}

}
else
{
	if(input[i]>(8579+offset0))
{
	if(input[i]>(8581+offset0))
{
	if(input[i]==(8583+offset0))
{
	vR[i] = 8583;
}
else
{
	vR[i] = 8582;
}

}
else
{
	if(input[i]==(8581+offset0))
{
	vR[i] = 8581;
}
else
{
	vR[i] = 8580;
}

}

}
else
{
	if(input[i]>(8577+offset0))
{
	if(input[i]==(8579+offset0))
{
	vR[i] = 8579;
}
else
{
	vR[i] = 8578;
}

}
else
{
	if(input[i]==(8577+offset0))
{
	vR[i] = 8577;
}
else
{
	vR[i] = 8576;
}

}

}

}

}

}

}

}
else
{
	if(input[i]>(8511+offset0))
{
	if(input[i]>(8543+offset0))
{
	if(input[i]>(8559+offset0))
{
	if(input[i]>(8567+offset0))
{
	if(input[i]>(8571+offset0))
{
	if(input[i]>(8573+offset0))
{
	if(input[i]==(8575+offset0))
{
	vR[i] = 8575;
}
else
{
	vR[i] = 8574;
}

}
else
{
	if(input[i]==(8573+offset0))
{
	vR[i] = 8573;
}
else
{
	vR[i] = 8572;
}

}

}
else
{
	if(input[i]>(8569+offset0))
{
	if(input[i]==(8571+offset0))
{
	vR[i] = 8571;
}
else
{
	vR[i] = 8570;
}

}
else
{
	if(input[i]==(8569+offset0))
{
	vR[i] = 8569;
}
else
{
	vR[i] = 8568;
}

}

}

}
else
{
	if(input[i]>(8563+offset0))
{
	if(input[i]>(8565+offset0))
{
	if(input[i]==(8567+offset0))
{
	vR[i] = 8567;
}
else
{
	vR[i] = 8566;
}

}
else
{
	if(input[i]==(8565+offset0))
{
	vR[i] = 8565;
}
else
{
	vR[i] = 8564;
}

}

}
else
{
	if(input[i]>(8561+offset0))
{
	if(input[i]==(8563+offset0))
{
	vR[i] = 8563;
}
else
{
	vR[i] = 8562;
}

}
else
{
	if(input[i]==(8561+offset0))
{
	vR[i] = 8561;
}
else
{
	vR[i] = 8560;
}

}

}

}

}
else
{
	if(input[i]>(8551+offset0))
{
	if(input[i]>(8555+offset0))
{
	if(input[i]>(8557+offset0))
{
	if(input[i]==(8559+offset0))
{
	vR[i] = 8559;
}
else
{
	vR[i] = 8558;
}

}
else
{
	if(input[i]==(8557+offset0))
{
	vR[i] = 8557;
}
else
{
	vR[i] = 8556;
}

}

}
else
{
	if(input[i]>(8553+offset0))
{
	if(input[i]==(8555+offset0))
{
	vR[i] = 8555;
}
else
{
	vR[i] = 8554;
}

}
else
{
	if(input[i]==(8553+offset0))
{
	vR[i] = 8553;
}
else
{
	vR[i] = 8552;
}

}

}

}
else
{
	if(input[i]>(8547+offset0))
{
	if(input[i]>(8549+offset0))
{
	if(input[i]==(8551+offset0))
{
	vR[i] = 8551;
}
else
{
	vR[i] = 8550;
}

}
else
{
	if(input[i]==(8549+offset0))
{
	vR[i] = 8549;
}
else
{
	vR[i] = 8548;
}

}

}
else
{
	if(input[i]>(8545+offset0))
{
	if(input[i]==(8547+offset0))
{
	vR[i] = 8547;
}
else
{
	vR[i] = 8546;
}

}
else
{
	if(input[i]==(8545+offset0))
{
	vR[i] = 8545;
}
else
{
	vR[i] = 8544;
}

}

}

}

}

}
else
{
	if(input[i]>(8527+offset0))
{
	if(input[i]>(8535+offset0))
{
	if(input[i]>(8539+offset0))
{
	if(input[i]>(8541+offset0))
{
	if(input[i]==(8543+offset0))
{
	vR[i] = 8543;
}
else
{
	vR[i] = 8542;
}

}
else
{
	if(input[i]==(8541+offset0))
{
	vR[i] = 8541;
}
else
{
	vR[i] = 8540;
}

}

}
else
{
	if(input[i]>(8537+offset0))
{
	if(input[i]==(8539+offset0))
{
	vR[i] = 8539;
}
else
{
	vR[i] = 8538;
}

}
else
{
	if(input[i]==(8537+offset0))
{
	vR[i] = 8537;
}
else
{
	vR[i] = 8536;
}

}

}

}
else
{
	if(input[i]>(8531+offset0))
{
	if(input[i]>(8533+offset0))
{
	if(input[i]==(8535+offset0))
{
	vR[i] = 8535;
}
else
{
	vR[i] = 8534;
}

}
else
{
	if(input[i]==(8533+offset0))
{
	vR[i] = 8533;
}
else
{
	vR[i] = 8532;
}

}

}
else
{
	if(input[i]>(8529+offset0))
{
	if(input[i]==(8531+offset0))
{
	vR[i] = 8531;
}
else
{
	vR[i] = 8530;
}

}
else
{
	if(input[i]==(8529+offset0))
{
	vR[i] = 8529;
}
else
{
	vR[i] = 8528;
}

}

}

}

}
else
{
	if(input[i]>(8519+offset0))
{
	if(input[i]>(8523+offset0))
{
	if(input[i]>(8525+offset0))
{
	if(input[i]==(8527+offset0))
{
	vR[i] = 8527;
}
else
{
	vR[i] = 8526;
}

}
else
{
	if(input[i]==(8525+offset0))
{
	vR[i] = 8525;
}
else
{
	vR[i] = 8524;
}

}

}
else
{
	if(input[i]>(8521+offset0))
{
	if(input[i]==(8523+offset0))
{
	vR[i] = 8523;
}
else
{
	vR[i] = 8522;
}

}
else
{
	if(input[i]==(8521+offset0))
{
	vR[i] = 8521;
}
else
{
	vR[i] = 8520;
}

}

}

}
else
{
	if(input[i]>(8515+offset0))
{
	if(input[i]>(8517+offset0))
{
	if(input[i]==(8519+offset0))
{
	vR[i] = 8519;
}
else
{
	vR[i] = 8518;
}

}
else
{
	if(input[i]==(8517+offset0))
{
	vR[i] = 8517;
}
else
{
	vR[i] = 8516;
}

}

}
else
{
	if(input[i]>(8513+offset0))
{
	if(input[i]==(8515+offset0))
{
	vR[i] = 8515;
}
else
{
	vR[i] = 8514;
}

}
else
{
	if(input[i]==(8513+offset0))
{
	vR[i] = 8513;
}
else
{
	vR[i] = 8512;
}

}

}

}

}

}

}
else
{
	if(input[i]>(8479+offset0))
{
	if(input[i]>(8495+offset0))
{
	if(input[i]>(8503+offset0))
{
	if(input[i]>(8507+offset0))
{
	if(input[i]>(8509+offset0))
{
	if(input[i]==(8511+offset0))
{
	vR[i] = 8511;
}
else
{
	vR[i] = 8510;
}

}
else
{
	if(input[i]==(8509+offset0))
{
	vR[i] = 8509;
}
else
{
	vR[i] = 8508;
}

}

}
else
{
	if(input[i]>(8505+offset0))
{
	if(input[i]==(8507+offset0))
{
	vR[i] = 8507;
}
else
{
	vR[i] = 8506;
}

}
else
{
	if(input[i]==(8505+offset0))
{
	vR[i] = 8505;
}
else
{
	vR[i] = 8504;
}

}

}

}
else
{
	if(input[i]>(8499+offset0))
{
	if(input[i]>(8501+offset0))
{
	if(input[i]==(8503+offset0))
{
	vR[i] = 8503;
}
else
{
	vR[i] = 8502;
}

}
else
{
	if(input[i]==(8501+offset0))
{
	vR[i] = 8501;
}
else
{
	vR[i] = 8500;
}

}

}
else
{
	if(input[i]>(8497+offset0))
{
	if(input[i]==(8499+offset0))
{
	vR[i] = 8499;
}
else
{
	vR[i] = 8498;
}

}
else
{
	if(input[i]==(8497+offset0))
{
	vR[i] = 8497;
}
else
{
	vR[i] = 8496;
}

}

}

}

}
else
{
	if(input[i]>(8487+offset0))
{
	if(input[i]>(8491+offset0))
{
	if(input[i]>(8493+offset0))
{
	if(input[i]==(8495+offset0))
{
	vR[i] = 8495;
}
else
{
	vR[i] = 8494;
}

}
else
{
	if(input[i]==(8493+offset0))
{
	vR[i] = 8493;
}
else
{
	vR[i] = 8492;
}

}

}
else
{
	if(input[i]>(8489+offset0))
{
	if(input[i]==(8491+offset0))
{
	vR[i] = 8491;
}
else
{
	vR[i] = 8490;
}

}
else
{
	if(input[i]==(8489+offset0))
{
	vR[i] = 8489;
}
else
{
	vR[i] = 8488;
}

}

}

}
else
{
	if(input[i]>(8483+offset0))
{
	if(input[i]>(8485+offset0))
{
	if(input[i]==(8487+offset0))
{
	vR[i] = 8487;
}
else
{
	vR[i] = 8486;
}

}
else
{
	if(input[i]==(8485+offset0))
{
	vR[i] = 8485;
}
else
{
	vR[i] = 8484;
}

}

}
else
{
	if(input[i]>(8481+offset0))
{
	if(input[i]==(8483+offset0))
{
	vR[i] = 8483;
}
else
{
	vR[i] = 8482;
}

}
else
{
	if(input[i]==(8481+offset0))
{
	vR[i] = 8481;
}
else
{
	vR[i] = 8480;
}

}

}

}

}

}
else
{
	if(input[i]>(8463+offset0))
{
	if(input[i]>(8471+offset0))
{
	if(input[i]>(8475+offset0))
{
	if(input[i]>(8477+offset0))
{
	if(input[i]==(8479+offset0))
{
	vR[i] = 8479;
}
else
{
	vR[i] = 8478;
}

}
else
{
	if(input[i]==(8477+offset0))
{
	vR[i] = 8477;
}
else
{
	vR[i] = 8476;
}

}

}
else
{
	if(input[i]>(8473+offset0))
{
	if(input[i]==(8475+offset0))
{
	vR[i] = 8475;
}
else
{
	vR[i] = 8474;
}

}
else
{
	if(input[i]==(8473+offset0))
{
	vR[i] = 8473;
}
else
{
	vR[i] = 8472;
}

}

}

}
else
{
	if(input[i]>(8467+offset0))
{
	if(input[i]>(8469+offset0))
{
	if(input[i]==(8471+offset0))
{
	vR[i] = 8471;
}
else
{
	vR[i] = 8470;
}

}
else
{
	if(input[i]==(8469+offset0))
{
	vR[i] = 8469;
}
else
{
	vR[i] = 8468;
}

}

}
else
{
	if(input[i]>(8465+offset0))
{
	if(input[i]==(8467+offset0))
{
	vR[i] = 8467;
}
else
{
	vR[i] = 8466;
}

}
else
{
	if(input[i]==(8465+offset0))
{
	vR[i] = 8465;
}
else
{
	vR[i] = 8464;
}

}

}

}

}
else
{
	if(input[i]>(8455+offset0))
{
	if(input[i]>(8459+offset0))
{
	if(input[i]>(8461+offset0))
{
	if(input[i]==(8463+offset0))
{
	vR[i] = 8463;
}
else
{
	vR[i] = 8462;
}

}
else
{
	if(input[i]==(8461+offset0))
{
	vR[i] = 8461;
}
else
{
	vR[i] = 8460;
}

}

}
else
{
	if(input[i]>(8457+offset0))
{
	if(input[i]==(8459+offset0))
{
	vR[i] = 8459;
}
else
{
	vR[i] = 8458;
}

}
else
{
	if(input[i]==(8457+offset0))
{
	vR[i] = 8457;
}
else
{
	vR[i] = 8456;
}

}

}

}
else
{
	if(input[i]>(8451+offset0))
{
	if(input[i]>(8453+offset0))
{
	if(input[i]==(8455+offset0))
{
	vR[i] = 8455;
}
else
{
	vR[i] = 8454;
}

}
else
{
	if(input[i]==(8453+offset0))
{
	vR[i] = 8453;
}
else
{
	vR[i] = 8452;
}

}

}
else
{
	if(input[i]>(8449+offset0))
{
	if(input[i]==(8451+offset0))
{
	vR[i] = 8451;
}
else
{
	vR[i] = 8450;
}

}
else
{
	if(input[i]==(8449+offset0))
{
	vR[i] = 8449;
}
else
{
	vR[i] = 8448;
}

}

}

}

}

}

}

}

}
else
{
	if(input[i]>(8319+offset0))
{
	if(input[i]>(8383+offset0))
{
	if(input[i]>(8415+offset0))
{
	if(input[i]>(8431+offset0))
{
	if(input[i]>(8439+offset0))
{
	if(input[i]>(8443+offset0))
{
	if(input[i]>(8445+offset0))
{
	if(input[i]==(8447+offset0))
{
	vR[i] = 8447;
}
else
{
	vR[i] = 8446;
}

}
else
{
	if(input[i]==(8445+offset0))
{
	vR[i] = 8445;
}
else
{
	vR[i] = 8444;
}

}

}
else
{
	if(input[i]>(8441+offset0))
{
	if(input[i]==(8443+offset0))
{
	vR[i] = 8443;
}
else
{
	vR[i] = 8442;
}

}
else
{
	if(input[i]==(8441+offset0))
{
	vR[i] = 8441;
}
else
{
	vR[i] = 8440;
}

}

}

}
else
{
	if(input[i]>(8435+offset0))
{
	if(input[i]>(8437+offset0))
{
	if(input[i]==(8439+offset0))
{
	vR[i] = 8439;
}
else
{
	vR[i] = 8438;
}

}
else
{
	if(input[i]==(8437+offset0))
{
	vR[i] = 8437;
}
else
{
	vR[i] = 8436;
}

}

}
else
{
	if(input[i]>(8433+offset0))
{
	if(input[i]==(8435+offset0))
{
	vR[i] = 8435;
}
else
{
	vR[i] = 8434;
}

}
else
{
	if(input[i]==(8433+offset0))
{
	vR[i] = 8433;
}
else
{
	vR[i] = 8432;
}

}

}

}

}
else
{
	if(input[i]>(8423+offset0))
{
	if(input[i]>(8427+offset0))
{
	if(input[i]>(8429+offset0))
{
	if(input[i]==(8431+offset0))
{
	vR[i] = 8431;
}
else
{
	vR[i] = 8430;
}

}
else
{
	if(input[i]==(8429+offset0))
{
	vR[i] = 8429;
}
else
{
	vR[i] = 8428;
}

}

}
else
{
	if(input[i]>(8425+offset0))
{
	if(input[i]==(8427+offset0))
{
	vR[i] = 8427;
}
else
{
	vR[i] = 8426;
}

}
else
{
	if(input[i]==(8425+offset0))
{
	vR[i] = 8425;
}
else
{
	vR[i] = 8424;
}

}

}

}
else
{
	if(input[i]>(8419+offset0))
{
	if(input[i]>(8421+offset0))
{
	if(input[i]==(8423+offset0))
{
	vR[i] = 8423;
}
else
{
	vR[i] = 8422;
}

}
else
{
	if(input[i]==(8421+offset0))
{
	vR[i] = 8421;
}
else
{
	vR[i] = 8420;
}

}

}
else
{
	if(input[i]>(8417+offset0))
{
	if(input[i]==(8419+offset0))
{
	vR[i] = 8419;
}
else
{
	vR[i] = 8418;
}

}
else
{
	if(input[i]==(8417+offset0))
{
	vR[i] = 8417;
}
else
{
	vR[i] = 8416;
}

}

}

}

}

}
else
{
	if(input[i]>(8399+offset0))
{
	if(input[i]>(8407+offset0))
{
	if(input[i]>(8411+offset0))
{
	if(input[i]>(8413+offset0))
{
	if(input[i]==(8415+offset0))
{
	vR[i] = 8415;
}
else
{
	vR[i] = 8414;
}

}
else
{
	if(input[i]==(8413+offset0))
{
	vR[i] = 8413;
}
else
{
	vR[i] = 8412;
}

}

}
else
{
	if(input[i]>(8409+offset0))
{
	if(input[i]==(8411+offset0))
{
	vR[i] = 8411;
}
else
{
	vR[i] = 8410;
}

}
else
{
	if(input[i]==(8409+offset0))
{
	vR[i] = 8409;
}
else
{
	vR[i] = 8408;
}

}

}

}
else
{
	if(input[i]>(8403+offset0))
{
	if(input[i]>(8405+offset0))
{
	if(input[i]==(8407+offset0))
{
	vR[i] = 8407;
}
else
{
	vR[i] = 8406;
}

}
else
{
	if(input[i]==(8405+offset0))
{
	vR[i] = 8405;
}
else
{
	vR[i] = 8404;
}

}

}
else
{
	if(input[i]>(8401+offset0))
{
	if(input[i]==(8403+offset0))
{
	vR[i] = 8403;
}
else
{
	vR[i] = 8402;
}

}
else
{
	if(input[i]==(8401+offset0))
{
	vR[i] = 8401;
}
else
{
	vR[i] = 8400;
}

}

}

}

}
else
{
	if(input[i]>(8391+offset0))
{
	if(input[i]>(8395+offset0))
{
	if(input[i]>(8397+offset0))
{
	if(input[i]==(8399+offset0))
{
	vR[i] = 8399;
}
else
{
	vR[i] = 8398;
}

}
else
{
	if(input[i]==(8397+offset0))
{
	vR[i] = 8397;
}
else
{
	vR[i] = 8396;
}

}

}
else
{
	if(input[i]>(8393+offset0))
{
	if(input[i]==(8395+offset0))
{
	vR[i] = 8395;
}
else
{
	vR[i] = 8394;
}

}
else
{
	if(input[i]==(8393+offset0))
{
	vR[i] = 8393;
}
else
{
	vR[i] = 8392;
}

}

}

}
else
{
	if(input[i]>(8387+offset0))
{
	if(input[i]>(8389+offset0))
{
	if(input[i]==(8391+offset0))
{
	vR[i] = 8391;
}
else
{
	vR[i] = 8390;
}

}
else
{
	if(input[i]==(8389+offset0))
{
	vR[i] = 8389;
}
else
{
	vR[i] = 8388;
}

}

}
else
{
	if(input[i]>(8385+offset0))
{
	if(input[i]==(8387+offset0))
{
	vR[i] = 8387;
}
else
{
	vR[i] = 8386;
}

}
else
{
	if(input[i]==(8385+offset0))
{
	vR[i] = 8385;
}
else
{
	vR[i] = 8384;
}

}

}

}

}

}

}
else
{
	if(input[i]>(8351+offset0))
{
	if(input[i]>(8367+offset0))
{
	if(input[i]>(8375+offset0))
{
	if(input[i]>(8379+offset0))
{
	if(input[i]>(8381+offset0))
{
	if(input[i]==(8383+offset0))
{
	vR[i] = 8383;
}
else
{
	vR[i] = 8382;
}

}
else
{
	if(input[i]==(8381+offset0))
{
	vR[i] = 8381;
}
else
{
	vR[i] = 8380;
}

}

}
else
{
	if(input[i]>(8377+offset0))
{
	if(input[i]==(8379+offset0))
{
	vR[i] = 8379;
}
else
{
	vR[i] = 8378;
}

}
else
{
	if(input[i]==(8377+offset0))
{
	vR[i] = 8377;
}
else
{
	vR[i] = 8376;
}

}

}

}
else
{
	if(input[i]>(8371+offset0))
{
	if(input[i]>(8373+offset0))
{
	if(input[i]==(8375+offset0))
{
	vR[i] = 8375;
}
else
{
	vR[i] = 8374;
}

}
else
{
	if(input[i]==(8373+offset0))
{
	vR[i] = 8373;
}
else
{
	vR[i] = 8372;
}

}

}
else
{
	if(input[i]>(8369+offset0))
{
	if(input[i]==(8371+offset0))
{
	vR[i] = 8371;
}
else
{
	vR[i] = 8370;
}

}
else
{
	if(input[i]==(8369+offset0))
{
	vR[i] = 8369;
}
else
{
	vR[i] = 8368;
}

}

}

}

}
else
{
	if(input[i]>(8359+offset0))
{
	if(input[i]>(8363+offset0))
{
	if(input[i]>(8365+offset0))
{
	if(input[i]==(8367+offset0))
{
	vR[i] = 8367;
}
else
{
	vR[i] = 8366;
}

}
else
{
	if(input[i]==(8365+offset0))
{
	vR[i] = 8365;
}
else
{
	vR[i] = 8364;
}

}

}
else
{
	if(input[i]>(8361+offset0))
{
	if(input[i]==(8363+offset0))
{
	vR[i] = 8363;
}
else
{
	vR[i] = 8362;
}

}
else
{
	if(input[i]==(8361+offset0))
{
	vR[i] = 8361;
}
else
{
	vR[i] = 8360;
}

}

}

}
else
{
	if(input[i]>(8355+offset0))
{
	if(input[i]>(8357+offset0))
{
	if(input[i]==(8359+offset0))
{
	vR[i] = 8359;
}
else
{
	vR[i] = 8358;
}

}
else
{
	if(input[i]==(8357+offset0))
{
	vR[i] = 8357;
}
else
{
	vR[i] = 8356;
}

}

}
else
{
	if(input[i]>(8353+offset0))
{
	if(input[i]==(8355+offset0))
{
	vR[i] = 8355;
}
else
{
	vR[i] = 8354;
}

}
else
{
	if(input[i]==(8353+offset0))
{
	vR[i] = 8353;
}
else
{
	vR[i] = 8352;
}

}

}

}

}

}
else
{
	if(input[i]>(8335+offset0))
{
	if(input[i]>(8343+offset0))
{
	if(input[i]>(8347+offset0))
{
	if(input[i]>(8349+offset0))
{
	if(input[i]==(8351+offset0))
{
	vR[i] = 8351;
}
else
{
	vR[i] = 8350;
}

}
else
{
	if(input[i]==(8349+offset0))
{
	vR[i] = 8349;
}
else
{
	vR[i] = 8348;
}

}

}
else
{
	if(input[i]>(8345+offset0))
{
	if(input[i]==(8347+offset0))
{
	vR[i] = 8347;
}
else
{
	vR[i] = 8346;
}

}
else
{
	if(input[i]==(8345+offset0))
{
	vR[i] = 8345;
}
else
{
	vR[i] = 8344;
}

}

}

}
else
{
	if(input[i]>(8339+offset0))
{
	if(input[i]>(8341+offset0))
{
	if(input[i]==(8343+offset0))
{
	vR[i] = 8343;
}
else
{
	vR[i] = 8342;
}

}
else
{
	if(input[i]==(8341+offset0))
{
	vR[i] = 8341;
}
else
{
	vR[i] = 8340;
}

}

}
else
{
	if(input[i]>(8337+offset0))
{
	if(input[i]==(8339+offset0))
{
	vR[i] = 8339;
}
else
{
	vR[i] = 8338;
}

}
else
{
	if(input[i]==(8337+offset0))
{
	vR[i] = 8337;
}
else
{
	vR[i] = 8336;
}

}

}

}

}
else
{
	if(input[i]>(8327+offset0))
{
	if(input[i]>(8331+offset0))
{
	if(input[i]>(8333+offset0))
{
	if(input[i]==(8335+offset0))
{
	vR[i] = 8335;
}
else
{
	vR[i] = 8334;
}

}
else
{
	if(input[i]==(8333+offset0))
{
	vR[i] = 8333;
}
else
{
	vR[i] = 8332;
}

}

}
else
{
	if(input[i]>(8329+offset0))
{
	if(input[i]==(8331+offset0))
{
	vR[i] = 8331;
}
else
{
	vR[i] = 8330;
}

}
else
{
	if(input[i]==(8329+offset0))
{
	vR[i] = 8329;
}
else
{
	vR[i] = 8328;
}

}

}

}
else
{
	if(input[i]>(8323+offset0))
{
	if(input[i]>(8325+offset0))
{
	if(input[i]==(8327+offset0))
{
	vR[i] = 8327;
}
else
{
	vR[i] = 8326;
}

}
else
{
	if(input[i]==(8325+offset0))
{
	vR[i] = 8325;
}
else
{
	vR[i] = 8324;
}

}

}
else
{
	if(input[i]>(8321+offset0))
{
	if(input[i]==(8323+offset0))
{
	vR[i] = 8323;
}
else
{
	vR[i] = 8322;
}

}
else
{
	if(input[i]==(8321+offset0))
{
	vR[i] = 8321;
}
else
{
	vR[i] = 8320;
}

}

}

}

}

}

}

}
else
{
	if(input[i]>(8255+offset0))
{
	if(input[i]>(8287+offset0))
{
	if(input[i]>(8303+offset0))
{
	if(input[i]>(8311+offset0))
{
	if(input[i]>(8315+offset0))
{
	if(input[i]>(8317+offset0))
{
	if(input[i]==(8319+offset0))
{
	vR[i] = 8319;
}
else
{
	vR[i] = 8318;
}

}
else
{
	if(input[i]==(8317+offset0))
{
	vR[i] = 8317;
}
else
{
	vR[i] = 8316;
}

}

}
else
{
	if(input[i]>(8313+offset0))
{
	if(input[i]==(8315+offset0))
{
	vR[i] = 8315;
}
else
{
	vR[i] = 8314;
}

}
else
{
	if(input[i]==(8313+offset0))
{
	vR[i] = 8313;
}
else
{
	vR[i] = 8312;
}

}

}

}
else
{
	if(input[i]>(8307+offset0))
{
	if(input[i]>(8309+offset0))
{
	if(input[i]==(8311+offset0))
{
	vR[i] = 8311;
}
else
{
	vR[i] = 8310;
}

}
else
{
	if(input[i]==(8309+offset0))
{
	vR[i] = 8309;
}
else
{
	vR[i] = 8308;
}

}

}
else
{
	if(input[i]>(8305+offset0))
{
	if(input[i]==(8307+offset0))
{
	vR[i] = 8307;
}
else
{
	vR[i] = 8306;
}

}
else
{
	if(input[i]==(8305+offset0))
{
	vR[i] = 8305;
}
else
{
	vR[i] = 8304;
}

}

}

}

}
else
{
	if(input[i]>(8295+offset0))
{
	if(input[i]>(8299+offset0))
{
	if(input[i]>(8301+offset0))
{
	if(input[i]==(8303+offset0))
{
	vR[i] = 8303;
}
else
{
	vR[i] = 8302;
}

}
else
{
	if(input[i]==(8301+offset0))
{
	vR[i] = 8301;
}
else
{
	vR[i] = 8300;
}

}

}
else
{
	if(input[i]>(8297+offset0))
{
	if(input[i]==(8299+offset0))
{
	vR[i] = 8299;
}
else
{
	vR[i] = 8298;
}

}
else
{
	if(input[i]==(8297+offset0))
{
	vR[i] = 8297;
}
else
{
	vR[i] = 8296;
}

}

}

}
else
{
	if(input[i]>(8291+offset0))
{
	if(input[i]>(8293+offset0))
{
	if(input[i]==(8295+offset0))
{
	vR[i] = 8295;
}
else
{
	vR[i] = 8294;
}

}
else
{
	if(input[i]==(8293+offset0))
{
	vR[i] = 8293;
}
else
{
	vR[i] = 8292;
}

}

}
else
{
	if(input[i]>(8289+offset0))
{
	if(input[i]==(8291+offset0))
{
	vR[i] = 8291;
}
else
{
	vR[i] = 8290;
}

}
else
{
	if(input[i]==(8289+offset0))
{
	vR[i] = 8289;
}
else
{
	vR[i] = 8288;
}

}

}

}

}

}
else
{
	if(input[i]>(8271+offset0))
{
	if(input[i]>(8279+offset0))
{
	if(input[i]>(8283+offset0))
{
	if(input[i]>(8285+offset0))
{
	if(input[i]==(8287+offset0))
{
	vR[i] = 8287;
}
else
{
	vR[i] = 8286;
}

}
else
{
	if(input[i]==(8285+offset0))
{
	vR[i] = 8285;
}
else
{
	vR[i] = 8284;
}

}

}
else
{
	if(input[i]>(8281+offset0))
{
	if(input[i]==(8283+offset0))
{
	vR[i] = 8283;
}
else
{
	vR[i] = 8282;
}

}
else
{
	if(input[i]==(8281+offset0))
{
	vR[i] = 8281;
}
else
{
	vR[i] = 8280;
}

}

}

}
else
{
	if(input[i]>(8275+offset0))
{
	if(input[i]>(8277+offset0))
{
	if(input[i]==(8279+offset0))
{
	vR[i] = 8279;
}
else
{
	vR[i] = 8278;
}

}
else
{
	if(input[i]==(8277+offset0))
{
	vR[i] = 8277;
}
else
{
	vR[i] = 8276;
}

}

}
else
{
	if(input[i]>(8273+offset0))
{
	if(input[i]==(8275+offset0))
{
	vR[i] = 8275;
}
else
{
	vR[i] = 8274;
}

}
else
{
	if(input[i]==(8273+offset0))
{
	vR[i] = 8273;
}
else
{
	vR[i] = 8272;
}

}

}

}

}
else
{
	if(input[i]>(8263+offset0))
{
	if(input[i]>(8267+offset0))
{
	if(input[i]>(8269+offset0))
{
	if(input[i]==(8271+offset0))
{
	vR[i] = 8271;
}
else
{
	vR[i] = 8270;
}

}
else
{
	if(input[i]==(8269+offset0))
{
	vR[i] = 8269;
}
else
{
	vR[i] = 8268;
}

}

}
else
{
	if(input[i]>(8265+offset0))
{
	if(input[i]==(8267+offset0))
{
	vR[i] = 8267;
}
else
{
	vR[i] = 8266;
}

}
else
{
	if(input[i]==(8265+offset0))
{
	vR[i] = 8265;
}
else
{
	vR[i] = 8264;
}

}

}

}
else
{
	if(input[i]>(8259+offset0))
{
	if(input[i]>(8261+offset0))
{
	if(input[i]==(8263+offset0))
{
	vR[i] = 8263;
}
else
{
	vR[i] = 8262;
}

}
else
{
	if(input[i]==(8261+offset0))
{
	vR[i] = 8261;
}
else
{
	vR[i] = 8260;
}

}

}
else
{
	if(input[i]>(8257+offset0))
{
	if(input[i]==(8259+offset0))
{
	vR[i] = 8259;
}
else
{
	vR[i] = 8258;
}

}
else
{
	if(input[i]==(8257+offset0))
{
	vR[i] = 8257;
}
else
{
	vR[i] = 8256;
}

}

}

}

}

}

}
else
{
	if(input[i]>(8223+offset0))
{
	if(input[i]>(8239+offset0))
{
	if(input[i]>(8247+offset0))
{
	if(input[i]>(8251+offset0))
{
	if(input[i]>(8253+offset0))
{
	if(input[i]==(8255+offset0))
{
	vR[i] = 8255;
}
else
{
	vR[i] = 8254;
}

}
else
{
	if(input[i]==(8253+offset0))
{
	vR[i] = 8253;
}
else
{
	vR[i] = 8252;
}

}

}
else
{
	if(input[i]>(8249+offset0))
{
	if(input[i]==(8251+offset0))
{
	vR[i] = 8251;
}
else
{
	vR[i] = 8250;
}

}
else
{
	if(input[i]==(8249+offset0))
{
	vR[i] = 8249;
}
else
{
	vR[i] = 8248;
}

}

}

}
else
{
	if(input[i]>(8243+offset0))
{
	if(input[i]>(8245+offset0))
{
	if(input[i]==(8247+offset0))
{
	vR[i] = 8247;
}
else
{
	vR[i] = 8246;
}

}
else
{
	if(input[i]==(8245+offset0))
{
	vR[i] = 8245;
}
else
{
	vR[i] = 8244;
}

}

}
else
{
	if(input[i]>(8241+offset0))
{
	if(input[i]==(8243+offset0))
{
	vR[i] = 8243;
}
else
{
	vR[i] = 8242;
}

}
else
{
	if(input[i]==(8241+offset0))
{
	vR[i] = 8241;
}
else
{
	vR[i] = 8240;
}

}

}

}

}
else
{
	if(input[i]>(8231+offset0))
{
	if(input[i]>(8235+offset0))
{
	if(input[i]>(8237+offset0))
{
	if(input[i]==(8239+offset0))
{
	vR[i] = 8239;
}
else
{
	vR[i] = 8238;
}

}
else
{
	if(input[i]==(8237+offset0))
{
	vR[i] = 8237;
}
else
{
	vR[i] = 8236;
}

}

}
else
{
	if(input[i]>(8233+offset0))
{
	if(input[i]==(8235+offset0))
{
	vR[i] = 8235;
}
else
{
	vR[i] = 8234;
}

}
else
{
	if(input[i]==(8233+offset0))
{
	vR[i] = 8233;
}
else
{
	vR[i] = 8232;
}

}

}

}
else
{
	if(input[i]>(8227+offset0))
{
	if(input[i]>(8229+offset0))
{
	if(input[i]==(8231+offset0))
{
	vR[i] = 8231;
}
else
{
	vR[i] = 8230;
}

}
else
{
	if(input[i]==(8229+offset0))
{
	vR[i] = 8229;
}
else
{
	vR[i] = 8228;
}

}

}
else
{
	if(input[i]>(8225+offset0))
{
	if(input[i]==(8227+offset0))
{
	vR[i] = 8227;
}
else
{
	vR[i] = 8226;
}

}
else
{
	if(input[i]==(8225+offset0))
{
	vR[i] = 8225;
}
else
{
	vR[i] = 8224;
}

}

}

}

}

}
else
{
	if(input[i]>(8207+offset0))
{
	if(input[i]>(8215+offset0))
{
	if(input[i]>(8219+offset0))
{
	if(input[i]>(8221+offset0))
{
	if(input[i]==(8223+offset0))
{
	vR[i] = 8223;
}
else
{
	vR[i] = 8222;
}

}
else
{
	if(input[i]==(8221+offset0))
{
	vR[i] = 8221;
}
else
{
	vR[i] = 8220;
}

}

}
else
{
	if(input[i]>(8217+offset0))
{
	if(input[i]==(8219+offset0))
{
	vR[i] = 8219;
}
else
{
	vR[i] = 8218;
}

}
else
{
	if(input[i]==(8217+offset0))
{
	vR[i] = 8217;
}
else
{
	vR[i] = 8216;
}

}

}

}
else
{
	if(input[i]>(8211+offset0))
{
	if(input[i]>(8213+offset0))
{
	if(input[i]==(8215+offset0))
{
	vR[i] = 8215;
}
else
{
	vR[i] = 8214;
}

}
else
{
	if(input[i]==(8213+offset0))
{
	vR[i] = 8213;
}
else
{
	vR[i] = 8212;
}

}

}
else
{
	if(input[i]>(8209+offset0))
{
	if(input[i]==(8211+offset0))
{
	vR[i] = 8211;
}
else
{
	vR[i] = 8210;
}

}
else
{
	if(input[i]==(8209+offset0))
{
	vR[i] = 8209;
}
else
{
	vR[i] = 8208;
}

}

}

}

}
else
{
	if(input[i]>(8199+offset0))
{
	if(input[i]>(8203+offset0))
{
	if(input[i]>(8205+offset0))
{
	if(input[i]==(8207+offset0))
{
	vR[i] = 8207;
}
else
{
	vR[i] = 8206;
}

}
else
{
	if(input[i]==(8205+offset0))
{
	vR[i] = 8205;
}
else
{
	vR[i] = 8204;
}

}

}
else
{
	if(input[i]>(8201+offset0))
{
	if(input[i]==(8203+offset0))
{
	vR[i] = 8203;
}
else
{
	vR[i] = 8202;
}

}
else
{
	if(input[i]==(8201+offset0))
{
	vR[i] = 8201;
}
else
{
	vR[i] = 8200;
}

}

}

}
else
{
	if(input[i]>(8195+offset0))
{
	if(input[i]>(8197+offset0))
{
	if(input[i]==(8199+offset0))
{
	vR[i] = 8199;
}
else
{
	vR[i] = 8198;
}

}
else
{
	if(input[i]==(8197+offset0))
{
	vR[i] = 8197;
}
else
{
	vR[i] = 8196;
}

}

}
else
{
	if(input[i]>(8193+offset0))
{
	if(input[i]==(8195+offset0))
{
	vR[i] = 8195;
}
else
{
	vR[i] = 8194;
}

}
else
{
	if(input[i]==(8193+offset0))
{
	vR[i] = 8193;
}
else
{
	vR[i] = 8192;
}

}

}

}

}

}

}

}

}

}

}

}

}

}
else
{
	if(input[i]>(4095+offset0))
{
	if(input[i]>(6143+offset0))
{
	if(input[i]>(7167+offset0))
{
	if(input[i]>(7679+offset0))
{
	if(input[i]>(7935+offset0))
{
	if(input[i]>(8063+offset0))
{
	if(input[i]>(8127+offset0))
{
	if(input[i]>(8159+offset0))
{
	if(input[i]>(8175+offset0))
{
	if(input[i]>(8183+offset0))
{
	if(input[i]>(8187+offset0))
{
	if(input[i]>(8189+offset0))
{
	if(input[i]==(8191+offset0))
{
	vR[i] = 8191;
}
else
{
	vR[i] = 8190;
}

}
else
{
	if(input[i]==(8189+offset0))
{
	vR[i] = 8189;
}
else
{
	vR[i] = 8188;
}

}

}
else
{
	if(input[i]>(8185+offset0))
{
	if(input[i]==(8187+offset0))
{
	vR[i] = 8187;
}
else
{
	vR[i] = 8186;
}

}
else
{
	if(input[i]==(8185+offset0))
{
	vR[i] = 8185;
}
else
{
	vR[i] = 8184;
}

}

}

}
else
{
	if(input[i]>(8179+offset0))
{
	if(input[i]>(8181+offset0))
{
	if(input[i]==(8183+offset0))
{
	vR[i] = 8183;
}
else
{
	vR[i] = 8182;
}

}
else
{
	if(input[i]==(8181+offset0))
{
	vR[i] = 8181;
}
else
{
	vR[i] = 8180;
}

}

}
else
{
	if(input[i]>(8177+offset0))
{
	if(input[i]==(8179+offset0))
{
	vR[i] = 8179;
}
else
{
	vR[i] = 8178;
}

}
else
{
	if(input[i]==(8177+offset0))
{
	vR[i] = 8177;
}
else
{
	vR[i] = 8176;
}

}

}

}

}
else
{
	if(input[i]>(8167+offset0))
{
	if(input[i]>(8171+offset0))
{
	if(input[i]>(8173+offset0))
{
	if(input[i]==(8175+offset0))
{
	vR[i] = 8175;
}
else
{
	vR[i] = 8174;
}

}
else
{
	if(input[i]==(8173+offset0))
{
	vR[i] = 8173;
}
else
{
	vR[i] = 8172;
}

}

}
else
{
	if(input[i]>(8169+offset0))
{
	if(input[i]==(8171+offset0))
{
	vR[i] = 8171;
}
else
{
	vR[i] = 8170;
}

}
else
{
	if(input[i]==(8169+offset0))
{
	vR[i] = 8169;
}
else
{
	vR[i] = 8168;
}

}

}

}
else
{
	if(input[i]>(8163+offset0))
{
	if(input[i]>(8165+offset0))
{
	if(input[i]==(8167+offset0))
{
	vR[i] = 8167;
}
else
{
	vR[i] = 8166;
}

}
else
{
	if(input[i]==(8165+offset0))
{
	vR[i] = 8165;
}
else
{
	vR[i] = 8164;
}

}

}
else
{
	if(input[i]>(8161+offset0))
{
	if(input[i]==(8163+offset0))
{
	vR[i] = 8163;
}
else
{
	vR[i] = 8162;
}

}
else
{
	if(input[i]==(8161+offset0))
{
	vR[i] = 8161;
}
else
{
	vR[i] = 8160;
}

}

}

}

}

}
else
{
	if(input[i]>(8143+offset0))
{
	if(input[i]>(8151+offset0))
{
	if(input[i]>(8155+offset0))
{
	if(input[i]>(8157+offset0))
{
	if(input[i]==(8159+offset0))
{
	vR[i] = 8159;
}
else
{
	vR[i] = 8158;
}

}
else
{
	if(input[i]==(8157+offset0))
{
	vR[i] = 8157;
}
else
{
	vR[i] = 8156;
}

}

}
else
{
	if(input[i]>(8153+offset0))
{
	if(input[i]==(8155+offset0))
{
	vR[i] = 8155;
}
else
{
	vR[i] = 8154;
}

}
else
{
	if(input[i]==(8153+offset0))
{
	vR[i] = 8153;
}
else
{
	vR[i] = 8152;
}

}

}

}
else
{
	if(input[i]>(8147+offset0))
{
	if(input[i]>(8149+offset0))
{
	if(input[i]==(8151+offset0))
{
	vR[i] = 8151;
}
else
{
	vR[i] = 8150;
}

}
else
{
	if(input[i]==(8149+offset0))
{
	vR[i] = 8149;
}
else
{
	vR[i] = 8148;
}

}

}
else
{
	if(input[i]>(8145+offset0))
{
	if(input[i]==(8147+offset0))
{
	vR[i] = 8147;
}
else
{
	vR[i] = 8146;
}

}
else
{
	if(input[i]==(8145+offset0))
{
	vR[i] = 8145;
}
else
{
	vR[i] = 8144;
}

}

}

}

}
else
{
	if(input[i]>(8135+offset0))
{
	if(input[i]>(8139+offset0))
{
	if(input[i]>(8141+offset0))
{
	if(input[i]==(8143+offset0))
{
	vR[i] = 8143;
}
else
{
	vR[i] = 8142;
}

}
else
{
	if(input[i]==(8141+offset0))
{
	vR[i] = 8141;
}
else
{
	vR[i] = 8140;
}

}

}
else
{
	if(input[i]>(8137+offset0))
{
	if(input[i]==(8139+offset0))
{
	vR[i] = 8139;
}
else
{
	vR[i] = 8138;
}

}
else
{
	if(input[i]==(8137+offset0))
{
	vR[i] = 8137;
}
else
{
	vR[i] = 8136;
}

}

}

}
else
{
	if(input[i]>(8131+offset0))
{
	if(input[i]>(8133+offset0))
{
	if(input[i]==(8135+offset0))
{
	vR[i] = 8135;
}
else
{
	vR[i] = 8134;
}

}
else
{
	if(input[i]==(8133+offset0))
{
	vR[i] = 8133;
}
else
{
	vR[i] = 8132;
}

}

}
else
{
	if(input[i]>(8129+offset0))
{
	if(input[i]==(8131+offset0))
{
	vR[i] = 8131;
}
else
{
	vR[i] = 8130;
}

}
else
{
	if(input[i]==(8129+offset0))
{
	vR[i] = 8129;
}
else
{
	vR[i] = 8128;
}

}

}

}

}

}

}
else
{
	if(input[i]>(8095+offset0))
{
	if(input[i]>(8111+offset0))
{
	if(input[i]>(8119+offset0))
{
	if(input[i]>(8123+offset0))
{
	if(input[i]>(8125+offset0))
{
	if(input[i]==(8127+offset0))
{
	vR[i] = 8127;
}
else
{
	vR[i] = 8126;
}

}
else
{
	if(input[i]==(8125+offset0))
{
	vR[i] = 8125;
}
else
{
	vR[i] = 8124;
}

}

}
else
{
	if(input[i]>(8121+offset0))
{
	if(input[i]==(8123+offset0))
{
	vR[i] = 8123;
}
else
{
	vR[i] = 8122;
}

}
else
{
	if(input[i]==(8121+offset0))
{
	vR[i] = 8121;
}
else
{
	vR[i] = 8120;
}

}

}

}
else
{
	if(input[i]>(8115+offset0))
{
	if(input[i]>(8117+offset0))
{
	if(input[i]==(8119+offset0))
{
	vR[i] = 8119;
}
else
{
	vR[i] = 8118;
}

}
else
{
	if(input[i]==(8117+offset0))
{
	vR[i] = 8117;
}
else
{
	vR[i] = 8116;
}

}

}
else
{
	if(input[i]>(8113+offset0))
{
	if(input[i]==(8115+offset0))
{
	vR[i] = 8115;
}
else
{
	vR[i] = 8114;
}

}
else
{
	if(input[i]==(8113+offset0))
{
	vR[i] = 8113;
}
else
{
	vR[i] = 8112;
}

}

}

}

}
else
{
	if(input[i]>(8103+offset0))
{
	if(input[i]>(8107+offset0))
{
	if(input[i]>(8109+offset0))
{
	if(input[i]==(8111+offset0))
{
	vR[i] = 8111;
}
else
{
	vR[i] = 8110;
}

}
else
{
	if(input[i]==(8109+offset0))
{
	vR[i] = 8109;
}
else
{
	vR[i] = 8108;
}

}

}
else
{
	if(input[i]>(8105+offset0))
{
	if(input[i]==(8107+offset0))
{
	vR[i] = 8107;
}
else
{
	vR[i] = 8106;
}

}
else
{
	if(input[i]==(8105+offset0))
{
	vR[i] = 8105;
}
else
{
	vR[i] = 8104;
}

}

}

}
else
{
	if(input[i]>(8099+offset0))
{
	if(input[i]>(8101+offset0))
{
	if(input[i]==(8103+offset0))
{
	vR[i] = 8103;
}
else
{
	vR[i] = 8102;
}

}
else
{
	if(input[i]==(8101+offset0))
{
	vR[i] = 8101;
}
else
{
	vR[i] = 8100;
}

}

}
else
{
	if(input[i]>(8097+offset0))
{
	if(input[i]==(8099+offset0))
{
	vR[i] = 8099;
}
else
{
	vR[i] = 8098;
}

}
else
{
	if(input[i]==(8097+offset0))
{
	vR[i] = 8097;
}
else
{
	vR[i] = 8096;
}

}

}

}

}

}
else
{
	if(input[i]>(8079+offset0))
{
	if(input[i]>(8087+offset0))
{
	if(input[i]>(8091+offset0))
{
	if(input[i]>(8093+offset0))
{
	if(input[i]==(8095+offset0))
{
	vR[i] = 8095;
}
else
{
	vR[i] = 8094;
}

}
else
{
	if(input[i]==(8093+offset0))
{
	vR[i] = 8093;
}
else
{
	vR[i] = 8092;
}

}

}
else
{
	if(input[i]>(8089+offset0))
{
	if(input[i]==(8091+offset0))
{
	vR[i] = 8091;
}
else
{
	vR[i] = 8090;
}

}
else
{
	if(input[i]==(8089+offset0))
{
	vR[i] = 8089;
}
else
{
	vR[i] = 8088;
}

}

}

}
else
{
	if(input[i]>(8083+offset0))
{
	if(input[i]>(8085+offset0))
{
	if(input[i]==(8087+offset0))
{
	vR[i] = 8087;
}
else
{
	vR[i] = 8086;
}

}
else
{
	if(input[i]==(8085+offset0))
{
	vR[i] = 8085;
}
else
{
	vR[i] = 8084;
}

}

}
else
{
	if(input[i]>(8081+offset0))
{
	if(input[i]==(8083+offset0))
{
	vR[i] = 8083;
}
else
{
	vR[i] = 8082;
}

}
else
{
	if(input[i]==(8081+offset0))
{
	vR[i] = 8081;
}
else
{
	vR[i] = 8080;
}

}

}

}

}
else
{
	if(input[i]>(8071+offset0))
{
	if(input[i]>(8075+offset0))
{
	if(input[i]>(8077+offset0))
{
	if(input[i]==(8079+offset0))
{
	vR[i] = 8079;
}
else
{
	vR[i] = 8078;
}

}
else
{
	if(input[i]==(8077+offset0))
{
	vR[i] = 8077;
}
else
{
	vR[i] = 8076;
}

}

}
else
{
	if(input[i]>(8073+offset0))
{
	if(input[i]==(8075+offset0))
{
	vR[i] = 8075;
}
else
{
	vR[i] = 8074;
}

}
else
{
	if(input[i]==(8073+offset0))
{
	vR[i] = 8073;
}
else
{
	vR[i] = 8072;
}

}

}

}
else
{
	if(input[i]>(8067+offset0))
{
	if(input[i]>(8069+offset0))
{
	if(input[i]==(8071+offset0))
{
	vR[i] = 8071;
}
else
{
	vR[i] = 8070;
}

}
else
{
	if(input[i]==(8069+offset0))
{
	vR[i] = 8069;
}
else
{
	vR[i] = 8068;
}

}

}
else
{
	if(input[i]>(8065+offset0))
{
	if(input[i]==(8067+offset0))
{
	vR[i] = 8067;
}
else
{
	vR[i] = 8066;
}

}
else
{
	if(input[i]==(8065+offset0))
{
	vR[i] = 8065;
}
else
{
	vR[i] = 8064;
}

}

}

}

}

}

}

}
else
{
	if(input[i]>(7999+offset0))
{
	if(input[i]>(8031+offset0))
{
	if(input[i]>(8047+offset0))
{
	if(input[i]>(8055+offset0))
{
	if(input[i]>(8059+offset0))
{
	if(input[i]>(8061+offset0))
{
	if(input[i]==(8063+offset0))
{
	vR[i] = 8063;
}
else
{
	vR[i] = 8062;
}

}
else
{
	if(input[i]==(8061+offset0))
{
	vR[i] = 8061;
}
else
{
	vR[i] = 8060;
}

}

}
else
{
	if(input[i]>(8057+offset0))
{
	if(input[i]==(8059+offset0))
{
	vR[i] = 8059;
}
else
{
	vR[i] = 8058;
}

}
else
{
	if(input[i]==(8057+offset0))
{
	vR[i] = 8057;
}
else
{
	vR[i] = 8056;
}

}

}

}
else
{
	if(input[i]>(8051+offset0))
{
	if(input[i]>(8053+offset0))
{
	if(input[i]==(8055+offset0))
{
	vR[i] = 8055;
}
else
{
	vR[i] = 8054;
}

}
else
{
	if(input[i]==(8053+offset0))
{
	vR[i] = 8053;
}
else
{
	vR[i] = 8052;
}

}

}
else
{
	if(input[i]>(8049+offset0))
{
	if(input[i]==(8051+offset0))
{
	vR[i] = 8051;
}
else
{
	vR[i] = 8050;
}

}
else
{
	if(input[i]==(8049+offset0))
{
	vR[i] = 8049;
}
else
{
	vR[i] = 8048;
}

}

}

}

}
else
{
	if(input[i]>(8039+offset0))
{
	if(input[i]>(8043+offset0))
{
	if(input[i]>(8045+offset0))
{
	if(input[i]==(8047+offset0))
{
	vR[i] = 8047;
}
else
{
	vR[i] = 8046;
}

}
else
{
	if(input[i]==(8045+offset0))
{
	vR[i] = 8045;
}
else
{
	vR[i] = 8044;
}

}

}
else
{
	if(input[i]>(8041+offset0))
{
	if(input[i]==(8043+offset0))
{
	vR[i] = 8043;
}
else
{
	vR[i] = 8042;
}

}
else
{
	if(input[i]==(8041+offset0))
{
	vR[i] = 8041;
}
else
{
	vR[i] = 8040;
}

}

}

}
else
{
	if(input[i]>(8035+offset0))
{
	if(input[i]>(8037+offset0))
{
	if(input[i]==(8039+offset0))
{
	vR[i] = 8039;
}
else
{
	vR[i] = 8038;
}

}
else
{
	if(input[i]==(8037+offset0))
{
	vR[i] = 8037;
}
else
{
	vR[i] = 8036;
}

}

}
else
{
	if(input[i]>(8033+offset0))
{
	if(input[i]==(8035+offset0))
{
	vR[i] = 8035;
}
else
{
	vR[i] = 8034;
}

}
else
{
	if(input[i]==(8033+offset0))
{
	vR[i] = 8033;
}
else
{
	vR[i] = 8032;
}

}

}

}

}

}
else
{
	if(input[i]>(8015+offset0))
{
	if(input[i]>(8023+offset0))
{
	if(input[i]>(8027+offset0))
{
	if(input[i]>(8029+offset0))
{
	if(input[i]==(8031+offset0))
{
	vR[i] = 8031;
}
else
{
	vR[i] = 8030;
}

}
else
{
	if(input[i]==(8029+offset0))
{
	vR[i] = 8029;
}
else
{
	vR[i] = 8028;
}

}

}
else
{
	if(input[i]>(8025+offset0))
{
	if(input[i]==(8027+offset0))
{
	vR[i] = 8027;
}
else
{
	vR[i] = 8026;
}

}
else
{
	if(input[i]==(8025+offset0))
{
	vR[i] = 8025;
}
else
{
	vR[i] = 8024;
}

}

}

}
else
{
	if(input[i]>(8019+offset0))
{
	if(input[i]>(8021+offset0))
{
	if(input[i]==(8023+offset0))
{
	vR[i] = 8023;
}
else
{
	vR[i] = 8022;
}

}
else
{
	if(input[i]==(8021+offset0))
{
	vR[i] = 8021;
}
else
{
	vR[i] = 8020;
}

}

}
else
{
	if(input[i]>(8017+offset0))
{
	if(input[i]==(8019+offset0))
{
	vR[i] = 8019;
}
else
{
	vR[i] = 8018;
}

}
else
{
	if(input[i]==(8017+offset0))
{
	vR[i] = 8017;
}
else
{
	vR[i] = 8016;
}

}

}

}

}
else
{
	if(input[i]>(8007+offset0))
{
	if(input[i]>(8011+offset0))
{
	if(input[i]>(8013+offset0))
{
	if(input[i]==(8015+offset0))
{
	vR[i] = 8015;
}
else
{
	vR[i] = 8014;
}

}
else
{
	if(input[i]==(8013+offset0))
{
	vR[i] = 8013;
}
else
{
	vR[i] = 8012;
}

}

}
else
{
	if(input[i]>(8009+offset0))
{
	if(input[i]==(8011+offset0))
{
	vR[i] = 8011;
}
else
{
	vR[i] = 8010;
}

}
else
{
	if(input[i]==(8009+offset0))
{
	vR[i] = 8009;
}
else
{
	vR[i] = 8008;
}

}

}

}
else
{
	if(input[i]>(8003+offset0))
{
	if(input[i]>(8005+offset0))
{
	if(input[i]==(8007+offset0))
{
	vR[i] = 8007;
}
else
{
	vR[i] = 8006;
}

}
else
{
	if(input[i]==(8005+offset0))
{
	vR[i] = 8005;
}
else
{
	vR[i] = 8004;
}

}

}
else
{
	if(input[i]>(8001+offset0))
{
	if(input[i]==(8003+offset0))
{
	vR[i] = 8003;
}
else
{
	vR[i] = 8002;
}

}
else
{
	if(input[i]==(8001+offset0))
{
	vR[i] = 8001;
}
else
{
	vR[i] = 8000;
}

}

}

}

}

}

}
else
{
	if(input[i]>(7967+offset0))
{
	if(input[i]>(7983+offset0))
{
	if(input[i]>(7991+offset0))
{
	if(input[i]>(7995+offset0))
{
	if(input[i]>(7997+offset0))
{
	if(input[i]==(7999+offset0))
{
	vR[i] = 7999;
}
else
{
	vR[i] = 7998;
}

}
else
{
	if(input[i]==(7997+offset0))
{
	vR[i] = 7997;
}
else
{
	vR[i] = 7996;
}

}

}
else
{
	if(input[i]>(7993+offset0))
{
	if(input[i]==(7995+offset0))
{
	vR[i] = 7995;
}
else
{
	vR[i] = 7994;
}

}
else
{
	if(input[i]==(7993+offset0))
{
	vR[i] = 7993;
}
else
{
	vR[i] = 7992;
}

}

}

}
else
{
	if(input[i]>(7987+offset0))
{
	if(input[i]>(7989+offset0))
{
	if(input[i]==(7991+offset0))
{
	vR[i] = 7991;
}
else
{
	vR[i] = 7990;
}

}
else
{
	if(input[i]==(7989+offset0))
{
	vR[i] = 7989;
}
else
{
	vR[i] = 7988;
}

}

}
else
{
	if(input[i]>(7985+offset0))
{
	if(input[i]==(7987+offset0))
{
	vR[i] = 7987;
}
else
{
	vR[i] = 7986;
}

}
else
{
	if(input[i]==(7985+offset0))
{
	vR[i] = 7985;
}
else
{
	vR[i] = 7984;
}

}

}

}

}
else
{
	if(input[i]>(7975+offset0))
{
	if(input[i]>(7979+offset0))
{
	if(input[i]>(7981+offset0))
{
	if(input[i]==(7983+offset0))
{
	vR[i] = 7983;
}
else
{
	vR[i] = 7982;
}

}
else
{
	if(input[i]==(7981+offset0))
{
	vR[i] = 7981;
}
else
{
	vR[i] = 7980;
}

}

}
else
{
	if(input[i]>(7977+offset0))
{
	if(input[i]==(7979+offset0))
{
	vR[i] = 7979;
}
else
{
	vR[i] = 7978;
}

}
else
{
	if(input[i]==(7977+offset0))
{
	vR[i] = 7977;
}
else
{
	vR[i] = 7976;
}

}

}

}
else
{
	if(input[i]>(7971+offset0))
{
	if(input[i]>(7973+offset0))
{
	if(input[i]==(7975+offset0))
{
	vR[i] = 7975;
}
else
{
	vR[i] = 7974;
}

}
else
{
	if(input[i]==(7973+offset0))
{
	vR[i] = 7973;
}
else
{
	vR[i] = 7972;
}

}

}
else
{
	if(input[i]>(7969+offset0))
{
	if(input[i]==(7971+offset0))
{
	vR[i] = 7971;
}
else
{
	vR[i] = 7970;
}

}
else
{
	if(input[i]==(7969+offset0))
{
	vR[i] = 7969;
}
else
{
	vR[i] = 7968;
}

}

}

}

}

}
else
{
	if(input[i]>(7951+offset0))
{
	if(input[i]>(7959+offset0))
{
	if(input[i]>(7963+offset0))
{
	if(input[i]>(7965+offset0))
{
	if(input[i]==(7967+offset0))
{
	vR[i] = 7967;
}
else
{
	vR[i] = 7966;
}

}
else
{
	if(input[i]==(7965+offset0))
{
	vR[i] = 7965;
}
else
{
	vR[i] = 7964;
}

}

}
else
{
	if(input[i]>(7961+offset0))
{
	if(input[i]==(7963+offset0))
{
	vR[i] = 7963;
}
else
{
	vR[i] = 7962;
}

}
else
{
	if(input[i]==(7961+offset0))
{
	vR[i] = 7961;
}
else
{
	vR[i] = 7960;
}

}

}

}
else
{
	if(input[i]>(7955+offset0))
{
	if(input[i]>(7957+offset0))
{
	if(input[i]==(7959+offset0))
{
	vR[i] = 7959;
}
else
{
	vR[i] = 7958;
}

}
else
{
	if(input[i]==(7957+offset0))
{
	vR[i] = 7957;
}
else
{
	vR[i] = 7956;
}

}

}
else
{
	if(input[i]>(7953+offset0))
{
	if(input[i]==(7955+offset0))
{
	vR[i] = 7955;
}
else
{
	vR[i] = 7954;
}

}
else
{
	if(input[i]==(7953+offset0))
{
	vR[i] = 7953;
}
else
{
	vR[i] = 7952;
}

}

}

}

}
else
{
	if(input[i]>(7943+offset0))
{
	if(input[i]>(7947+offset0))
{
	if(input[i]>(7949+offset0))
{
	if(input[i]==(7951+offset0))
{
	vR[i] = 7951;
}
else
{
	vR[i] = 7950;
}

}
else
{
	if(input[i]==(7949+offset0))
{
	vR[i] = 7949;
}
else
{
	vR[i] = 7948;
}

}

}
else
{
	if(input[i]>(7945+offset0))
{
	if(input[i]==(7947+offset0))
{
	vR[i] = 7947;
}
else
{
	vR[i] = 7946;
}

}
else
{
	if(input[i]==(7945+offset0))
{
	vR[i] = 7945;
}
else
{
	vR[i] = 7944;
}

}

}

}
else
{
	if(input[i]>(7939+offset0))
{
	if(input[i]>(7941+offset0))
{
	if(input[i]==(7943+offset0))
{
	vR[i] = 7943;
}
else
{
	vR[i] = 7942;
}

}
else
{
	if(input[i]==(7941+offset0))
{
	vR[i] = 7941;
}
else
{
	vR[i] = 7940;
}

}

}
else
{
	if(input[i]>(7937+offset0))
{
	if(input[i]==(7939+offset0))
{
	vR[i] = 7939;
}
else
{
	vR[i] = 7938;
}

}
else
{
	if(input[i]==(7937+offset0))
{
	vR[i] = 7937;
}
else
{
	vR[i] = 7936;
}

}

}

}

}

}

}

}

}
else
{
	if(input[i]>(7807+offset0))
{
	if(input[i]>(7871+offset0))
{
	if(input[i]>(7903+offset0))
{
	if(input[i]>(7919+offset0))
{
	if(input[i]>(7927+offset0))
{
	if(input[i]>(7931+offset0))
{
	if(input[i]>(7933+offset0))
{
	if(input[i]==(7935+offset0))
{
	vR[i] = 7935;
}
else
{
	vR[i] = 7934;
}

}
else
{
	if(input[i]==(7933+offset0))
{
	vR[i] = 7933;
}
else
{
	vR[i] = 7932;
}

}

}
else
{
	if(input[i]>(7929+offset0))
{
	if(input[i]==(7931+offset0))
{
	vR[i] = 7931;
}
else
{
	vR[i] = 7930;
}

}
else
{
	if(input[i]==(7929+offset0))
{
	vR[i] = 7929;
}
else
{
	vR[i] = 7928;
}

}

}

}
else
{
	if(input[i]>(7923+offset0))
{
	if(input[i]>(7925+offset0))
{
	if(input[i]==(7927+offset0))
{
	vR[i] = 7927;
}
else
{
	vR[i] = 7926;
}

}
else
{
	if(input[i]==(7925+offset0))
{
	vR[i] = 7925;
}
else
{
	vR[i] = 7924;
}

}

}
else
{
	if(input[i]>(7921+offset0))
{
	if(input[i]==(7923+offset0))
{
	vR[i] = 7923;
}
else
{
	vR[i] = 7922;
}

}
else
{
	if(input[i]==(7921+offset0))
{
	vR[i] = 7921;
}
else
{
	vR[i] = 7920;
}

}

}

}

}
else
{
	if(input[i]>(7911+offset0))
{
	if(input[i]>(7915+offset0))
{
	if(input[i]>(7917+offset0))
{
	if(input[i]==(7919+offset0))
{
	vR[i] = 7919;
}
else
{
	vR[i] = 7918;
}

}
else
{
	if(input[i]==(7917+offset0))
{
	vR[i] = 7917;
}
else
{
	vR[i] = 7916;
}

}

}
else
{
	if(input[i]>(7913+offset0))
{
	if(input[i]==(7915+offset0))
{
	vR[i] = 7915;
}
else
{
	vR[i] = 7914;
}

}
else
{
	if(input[i]==(7913+offset0))
{
	vR[i] = 7913;
}
else
{
	vR[i] = 7912;
}

}

}

}
else
{
	if(input[i]>(7907+offset0))
{
	if(input[i]>(7909+offset0))
{
	if(input[i]==(7911+offset0))
{
	vR[i] = 7911;
}
else
{
	vR[i] = 7910;
}

}
else
{
	if(input[i]==(7909+offset0))
{
	vR[i] = 7909;
}
else
{
	vR[i] = 7908;
}

}

}
else
{
	if(input[i]>(7905+offset0))
{
	if(input[i]==(7907+offset0))
{
	vR[i] = 7907;
}
else
{
	vR[i] = 7906;
}

}
else
{
	if(input[i]==(7905+offset0))
{
	vR[i] = 7905;
}
else
{
	vR[i] = 7904;
}

}

}

}

}

}
else
{
	if(input[i]>(7887+offset0))
{
	if(input[i]>(7895+offset0))
{
	if(input[i]>(7899+offset0))
{
	if(input[i]>(7901+offset0))
{
	if(input[i]==(7903+offset0))
{
	vR[i] = 7903;
}
else
{
	vR[i] = 7902;
}

}
else
{
	if(input[i]==(7901+offset0))
{
	vR[i] = 7901;
}
else
{
	vR[i] = 7900;
}

}

}
else
{
	if(input[i]>(7897+offset0))
{
	if(input[i]==(7899+offset0))
{
	vR[i] = 7899;
}
else
{
	vR[i] = 7898;
}

}
else
{
	if(input[i]==(7897+offset0))
{
	vR[i] = 7897;
}
else
{
	vR[i] = 7896;
}

}

}

}
else
{
	if(input[i]>(7891+offset0))
{
	if(input[i]>(7893+offset0))
{
	if(input[i]==(7895+offset0))
{
	vR[i] = 7895;
}
else
{
	vR[i] = 7894;
}

}
else
{
	if(input[i]==(7893+offset0))
{
	vR[i] = 7893;
}
else
{
	vR[i] = 7892;
}

}

}
else
{
	if(input[i]>(7889+offset0))
{
	if(input[i]==(7891+offset0))
{
	vR[i] = 7891;
}
else
{
	vR[i] = 7890;
}

}
else
{
	if(input[i]==(7889+offset0))
{
	vR[i] = 7889;
}
else
{
	vR[i] = 7888;
}

}

}

}

}
else
{
	if(input[i]>(7879+offset0))
{
	if(input[i]>(7883+offset0))
{
	if(input[i]>(7885+offset0))
{
	if(input[i]==(7887+offset0))
{
	vR[i] = 7887;
}
else
{
	vR[i] = 7886;
}

}
else
{
	if(input[i]==(7885+offset0))
{
	vR[i] = 7885;
}
else
{
	vR[i] = 7884;
}

}

}
else
{
	if(input[i]>(7881+offset0))
{
	if(input[i]==(7883+offset0))
{
	vR[i] = 7883;
}
else
{
	vR[i] = 7882;
}

}
else
{
	if(input[i]==(7881+offset0))
{
	vR[i] = 7881;
}
else
{
	vR[i] = 7880;
}

}

}

}
else
{
	if(input[i]>(7875+offset0))
{
	if(input[i]>(7877+offset0))
{
	if(input[i]==(7879+offset0))
{
	vR[i] = 7879;
}
else
{
	vR[i] = 7878;
}

}
else
{
	if(input[i]==(7877+offset0))
{
	vR[i] = 7877;
}
else
{
	vR[i] = 7876;
}

}

}
else
{
	if(input[i]>(7873+offset0))
{
	if(input[i]==(7875+offset0))
{
	vR[i] = 7875;
}
else
{
	vR[i] = 7874;
}

}
else
{
	if(input[i]==(7873+offset0))
{
	vR[i] = 7873;
}
else
{
	vR[i] = 7872;
}

}

}

}

}

}

}
else
{
	if(input[i]>(7839+offset0))
{
	if(input[i]>(7855+offset0))
{
	if(input[i]>(7863+offset0))
{
	if(input[i]>(7867+offset0))
{
	if(input[i]>(7869+offset0))
{
	if(input[i]==(7871+offset0))
{
	vR[i] = 7871;
}
else
{
	vR[i] = 7870;
}

}
else
{
	if(input[i]==(7869+offset0))
{
	vR[i] = 7869;
}
else
{
	vR[i] = 7868;
}

}

}
else
{
	if(input[i]>(7865+offset0))
{
	if(input[i]==(7867+offset0))
{
	vR[i] = 7867;
}
else
{
	vR[i] = 7866;
}

}
else
{
	if(input[i]==(7865+offset0))
{
	vR[i] = 7865;
}
else
{
	vR[i] = 7864;
}

}

}

}
else
{
	if(input[i]>(7859+offset0))
{
	if(input[i]>(7861+offset0))
{
	if(input[i]==(7863+offset0))
{
	vR[i] = 7863;
}
else
{
	vR[i] = 7862;
}

}
else
{
	if(input[i]==(7861+offset0))
{
	vR[i] = 7861;
}
else
{
	vR[i] = 7860;
}

}

}
else
{
	if(input[i]>(7857+offset0))
{
	if(input[i]==(7859+offset0))
{
	vR[i] = 7859;
}
else
{
	vR[i] = 7858;
}

}
else
{
	if(input[i]==(7857+offset0))
{
	vR[i] = 7857;
}
else
{
	vR[i] = 7856;
}

}

}

}

}
else
{
	if(input[i]>(7847+offset0))
{
	if(input[i]>(7851+offset0))
{
	if(input[i]>(7853+offset0))
{
	if(input[i]==(7855+offset0))
{
	vR[i] = 7855;
}
else
{
	vR[i] = 7854;
}

}
else
{
	if(input[i]==(7853+offset0))
{
	vR[i] = 7853;
}
else
{
	vR[i] = 7852;
}

}

}
else
{
	if(input[i]>(7849+offset0))
{
	if(input[i]==(7851+offset0))
{
	vR[i] = 7851;
}
else
{
	vR[i] = 7850;
}

}
else
{
	if(input[i]==(7849+offset0))
{
	vR[i] = 7849;
}
else
{
	vR[i] = 7848;
}

}

}

}
else
{
	if(input[i]>(7843+offset0))
{
	if(input[i]>(7845+offset0))
{
	if(input[i]==(7847+offset0))
{
	vR[i] = 7847;
}
else
{
	vR[i] = 7846;
}

}
else
{
	if(input[i]==(7845+offset0))
{
	vR[i] = 7845;
}
else
{
	vR[i] = 7844;
}

}

}
else
{
	if(input[i]>(7841+offset0))
{
	if(input[i]==(7843+offset0))
{
	vR[i] = 7843;
}
else
{
	vR[i] = 7842;
}

}
else
{
	if(input[i]==(7841+offset0))
{
	vR[i] = 7841;
}
else
{
	vR[i] = 7840;
}

}

}

}

}

}
else
{
	if(input[i]>(7823+offset0))
{
	if(input[i]>(7831+offset0))
{
	if(input[i]>(7835+offset0))
{
	if(input[i]>(7837+offset0))
{
	if(input[i]==(7839+offset0))
{
	vR[i] = 7839;
}
else
{
	vR[i] = 7838;
}

}
else
{
	if(input[i]==(7837+offset0))
{
	vR[i] = 7837;
}
else
{
	vR[i] = 7836;
}

}

}
else
{
	if(input[i]>(7833+offset0))
{
	if(input[i]==(7835+offset0))
{
	vR[i] = 7835;
}
else
{
	vR[i] = 7834;
}

}
else
{
	if(input[i]==(7833+offset0))
{
	vR[i] = 7833;
}
else
{
	vR[i] = 7832;
}

}

}

}
else
{
	if(input[i]>(7827+offset0))
{
	if(input[i]>(7829+offset0))
{
	if(input[i]==(7831+offset0))
{
	vR[i] = 7831;
}
else
{
	vR[i] = 7830;
}

}
else
{
	if(input[i]==(7829+offset0))
{
	vR[i] = 7829;
}
else
{
	vR[i] = 7828;
}

}

}
else
{
	if(input[i]>(7825+offset0))
{
	if(input[i]==(7827+offset0))
{
	vR[i] = 7827;
}
else
{
	vR[i] = 7826;
}

}
else
{
	if(input[i]==(7825+offset0))
{
	vR[i] = 7825;
}
else
{
	vR[i] = 7824;
}

}

}

}

}
else
{
	if(input[i]>(7815+offset0))
{
	if(input[i]>(7819+offset0))
{
	if(input[i]>(7821+offset0))
{
	if(input[i]==(7823+offset0))
{
	vR[i] = 7823;
}
else
{
	vR[i] = 7822;
}

}
else
{
	if(input[i]==(7821+offset0))
{
	vR[i] = 7821;
}
else
{
	vR[i] = 7820;
}

}

}
else
{
	if(input[i]>(7817+offset0))
{
	if(input[i]==(7819+offset0))
{
	vR[i] = 7819;
}
else
{
	vR[i] = 7818;
}

}
else
{
	if(input[i]==(7817+offset0))
{
	vR[i] = 7817;
}
else
{
	vR[i] = 7816;
}

}

}

}
else
{
	if(input[i]>(7811+offset0))
{
	if(input[i]>(7813+offset0))
{
	if(input[i]==(7815+offset0))
{
	vR[i] = 7815;
}
else
{
	vR[i] = 7814;
}

}
else
{
	if(input[i]==(7813+offset0))
{
	vR[i] = 7813;
}
else
{
	vR[i] = 7812;
}

}

}
else
{
	if(input[i]>(7809+offset0))
{
	if(input[i]==(7811+offset0))
{
	vR[i] = 7811;
}
else
{
	vR[i] = 7810;
}

}
else
{
	if(input[i]==(7809+offset0))
{
	vR[i] = 7809;
}
else
{
	vR[i] = 7808;
}

}

}

}

}

}

}

}
else
{
	if(input[i]>(7743+offset0))
{
	if(input[i]>(7775+offset0))
{
	if(input[i]>(7791+offset0))
{
	if(input[i]>(7799+offset0))
{
	if(input[i]>(7803+offset0))
{
	if(input[i]>(7805+offset0))
{
	if(input[i]==(7807+offset0))
{
	vR[i] = 7807;
}
else
{
	vR[i] = 7806;
}

}
else
{
	if(input[i]==(7805+offset0))
{
	vR[i] = 7805;
}
else
{
	vR[i] = 7804;
}

}

}
else
{
	if(input[i]>(7801+offset0))
{
	if(input[i]==(7803+offset0))
{
	vR[i] = 7803;
}
else
{
	vR[i] = 7802;
}

}
else
{
	if(input[i]==(7801+offset0))
{
	vR[i] = 7801;
}
else
{
	vR[i] = 7800;
}

}

}

}
else
{
	if(input[i]>(7795+offset0))
{
	if(input[i]>(7797+offset0))
{
	if(input[i]==(7799+offset0))
{
	vR[i] = 7799;
}
else
{
	vR[i] = 7798;
}

}
else
{
	if(input[i]==(7797+offset0))
{
	vR[i] = 7797;
}
else
{
	vR[i] = 7796;
}

}

}
else
{
	if(input[i]>(7793+offset0))
{
	if(input[i]==(7795+offset0))
{
	vR[i] = 7795;
}
else
{
	vR[i] = 7794;
}

}
else
{
	if(input[i]==(7793+offset0))
{
	vR[i] = 7793;
}
else
{
	vR[i] = 7792;
}

}

}

}

}
else
{
	if(input[i]>(7783+offset0))
{
	if(input[i]>(7787+offset0))
{
	if(input[i]>(7789+offset0))
{
	if(input[i]==(7791+offset0))
{
	vR[i] = 7791;
}
else
{
	vR[i] = 7790;
}

}
else
{
	if(input[i]==(7789+offset0))
{
	vR[i] = 7789;
}
else
{
	vR[i] = 7788;
}

}

}
else
{
	if(input[i]>(7785+offset0))
{
	if(input[i]==(7787+offset0))
{
	vR[i] = 7787;
}
else
{
	vR[i] = 7786;
}

}
else
{
	if(input[i]==(7785+offset0))
{
	vR[i] = 7785;
}
else
{
	vR[i] = 7784;
}

}

}

}
else
{
	if(input[i]>(7779+offset0))
{
	if(input[i]>(7781+offset0))
{
	if(input[i]==(7783+offset0))
{
	vR[i] = 7783;
}
else
{
	vR[i] = 7782;
}

}
else
{
	if(input[i]==(7781+offset0))
{
	vR[i] = 7781;
}
else
{
	vR[i] = 7780;
}

}

}
else
{
	if(input[i]>(7777+offset0))
{
	if(input[i]==(7779+offset0))
{
	vR[i] = 7779;
}
else
{
	vR[i] = 7778;
}

}
else
{
	if(input[i]==(7777+offset0))
{
	vR[i] = 7777;
}
else
{
	vR[i] = 7776;
}

}

}

}

}

}
else
{
	if(input[i]>(7759+offset0))
{
	if(input[i]>(7767+offset0))
{
	if(input[i]>(7771+offset0))
{
	if(input[i]>(7773+offset0))
{
	if(input[i]==(7775+offset0))
{
	vR[i] = 7775;
}
else
{
	vR[i] = 7774;
}

}
else
{
	if(input[i]==(7773+offset0))
{
	vR[i] = 7773;
}
else
{
	vR[i] = 7772;
}

}

}
else
{
	if(input[i]>(7769+offset0))
{
	if(input[i]==(7771+offset0))
{
	vR[i] = 7771;
}
else
{
	vR[i] = 7770;
}

}
else
{
	if(input[i]==(7769+offset0))
{
	vR[i] = 7769;
}
else
{
	vR[i] = 7768;
}

}

}

}
else
{
	if(input[i]>(7763+offset0))
{
	if(input[i]>(7765+offset0))
{
	if(input[i]==(7767+offset0))
{
	vR[i] = 7767;
}
else
{
	vR[i] = 7766;
}

}
else
{
	if(input[i]==(7765+offset0))
{
	vR[i] = 7765;
}
else
{
	vR[i] = 7764;
}

}

}
else
{
	if(input[i]>(7761+offset0))
{
	if(input[i]==(7763+offset0))
{
	vR[i] = 7763;
}
else
{
	vR[i] = 7762;
}

}
else
{
	if(input[i]==(7761+offset0))
{
	vR[i] = 7761;
}
else
{
	vR[i] = 7760;
}

}

}

}

}
else
{
	if(input[i]>(7751+offset0))
{
	if(input[i]>(7755+offset0))
{
	if(input[i]>(7757+offset0))
{
	if(input[i]==(7759+offset0))
{
	vR[i] = 7759;
}
else
{
	vR[i] = 7758;
}

}
else
{
	if(input[i]==(7757+offset0))
{
	vR[i] = 7757;
}
else
{
	vR[i] = 7756;
}

}

}
else
{
	if(input[i]>(7753+offset0))
{
	if(input[i]==(7755+offset0))
{
	vR[i] = 7755;
}
else
{
	vR[i] = 7754;
}

}
else
{
	if(input[i]==(7753+offset0))
{
	vR[i] = 7753;
}
else
{
	vR[i] = 7752;
}

}

}

}
else
{
	if(input[i]>(7747+offset0))
{
	if(input[i]>(7749+offset0))
{
	if(input[i]==(7751+offset0))
{
	vR[i] = 7751;
}
else
{
	vR[i] = 7750;
}

}
else
{
	if(input[i]==(7749+offset0))
{
	vR[i] = 7749;
}
else
{
	vR[i] = 7748;
}

}

}
else
{
	if(input[i]>(7745+offset0))
{
	if(input[i]==(7747+offset0))
{
	vR[i] = 7747;
}
else
{
	vR[i] = 7746;
}

}
else
{
	if(input[i]==(7745+offset0))
{
	vR[i] = 7745;
}
else
{
	vR[i] = 7744;
}

}

}

}

}

}

}
else
{
	if(input[i]>(7711+offset0))
{
	if(input[i]>(7727+offset0))
{
	if(input[i]>(7735+offset0))
{
	if(input[i]>(7739+offset0))
{
	if(input[i]>(7741+offset0))
{
	if(input[i]==(7743+offset0))
{
	vR[i] = 7743;
}
else
{
	vR[i] = 7742;
}

}
else
{
	if(input[i]==(7741+offset0))
{
	vR[i] = 7741;
}
else
{
	vR[i] = 7740;
}

}

}
else
{
	if(input[i]>(7737+offset0))
{
	if(input[i]==(7739+offset0))
{
	vR[i] = 7739;
}
else
{
	vR[i] = 7738;
}

}
else
{
	if(input[i]==(7737+offset0))
{
	vR[i] = 7737;
}
else
{
	vR[i] = 7736;
}

}

}

}
else
{
	if(input[i]>(7731+offset0))
{
	if(input[i]>(7733+offset0))
{
	if(input[i]==(7735+offset0))
{
	vR[i] = 7735;
}
else
{
	vR[i] = 7734;
}

}
else
{
	if(input[i]==(7733+offset0))
{
	vR[i] = 7733;
}
else
{
	vR[i] = 7732;
}

}

}
else
{
	if(input[i]>(7729+offset0))
{
	if(input[i]==(7731+offset0))
{
	vR[i] = 7731;
}
else
{
	vR[i] = 7730;
}

}
else
{
	if(input[i]==(7729+offset0))
{
	vR[i] = 7729;
}
else
{
	vR[i] = 7728;
}

}

}

}

}
else
{
	if(input[i]>(7719+offset0))
{
	if(input[i]>(7723+offset0))
{
	if(input[i]>(7725+offset0))
{
	if(input[i]==(7727+offset0))
{
	vR[i] = 7727;
}
else
{
	vR[i] = 7726;
}

}
else
{
	if(input[i]==(7725+offset0))
{
	vR[i] = 7725;
}
else
{
	vR[i] = 7724;
}

}

}
else
{
	if(input[i]>(7721+offset0))
{
	if(input[i]==(7723+offset0))
{
	vR[i] = 7723;
}
else
{
	vR[i] = 7722;
}

}
else
{
	if(input[i]==(7721+offset0))
{
	vR[i] = 7721;
}
else
{
	vR[i] = 7720;
}

}

}

}
else
{
	if(input[i]>(7715+offset0))
{
	if(input[i]>(7717+offset0))
{
	if(input[i]==(7719+offset0))
{
	vR[i] = 7719;
}
else
{
	vR[i] = 7718;
}

}
else
{
	if(input[i]==(7717+offset0))
{
	vR[i] = 7717;
}
else
{
	vR[i] = 7716;
}

}

}
else
{
	if(input[i]>(7713+offset0))
{
	if(input[i]==(7715+offset0))
{
	vR[i] = 7715;
}
else
{
	vR[i] = 7714;
}

}
else
{
	if(input[i]==(7713+offset0))
{
	vR[i] = 7713;
}
else
{
	vR[i] = 7712;
}

}

}

}

}

}
else
{
	if(input[i]>(7695+offset0))
{
	if(input[i]>(7703+offset0))
{
	if(input[i]>(7707+offset0))
{
	if(input[i]>(7709+offset0))
{
	if(input[i]==(7711+offset0))
{
	vR[i] = 7711;
}
else
{
	vR[i] = 7710;
}

}
else
{
	if(input[i]==(7709+offset0))
{
	vR[i] = 7709;
}
else
{
	vR[i] = 7708;
}

}

}
else
{
	if(input[i]>(7705+offset0))
{
	if(input[i]==(7707+offset0))
{
	vR[i] = 7707;
}
else
{
	vR[i] = 7706;
}

}
else
{
	if(input[i]==(7705+offset0))
{
	vR[i] = 7705;
}
else
{
	vR[i] = 7704;
}

}

}

}
else
{
	if(input[i]>(7699+offset0))
{
	if(input[i]>(7701+offset0))
{
	if(input[i]==(7703+offset0))
{
	vR[i] = 7703;
}
else
{
	vR[i] = 7702;
}

}
else
{
	if(input[i]==(7701+offset0))
{
	vR[i] = 7701;
}
else
{
	vR[i] = 7700;
}

}

}
else
{
	if(input[i]>(7697+offset0))
{
	if(input[i]==(7699+offset0))
{
	vR[i] = 7699;
}
else
{
	vR[i] = 7698;
}

}
else
{
	if(input[i]==(7697+offset0))
{
	vR[i] = 7697;
}
else
{
	vR[i] = 7696;
}

}

}

}

}
else
{
	if(input[i]>(7687+offset0))
{
	if(input[i]>(7691+offset0))
{
	if(input[i]>(7693+offset0))
{
	if(input[i]==(7695+offset0))
{
	vR[i] = 7695;
}
else
{
	vR[i] = 7694;
}

}
else
{
	if(input[i]==(7693+offset0))
{
	vR[i] = 7693;
}
else
{
	vR[i] = 7692;
}

}

}
else
{
	if(input[i]>(7689+offset0))
{
	if(input[i]==(7691+offset0))
{
	vR[i] = 7691;
}
else
{
	vR[i] = 7690;
}

}
else
{
	if(input[i]==(7689+offset0))
{
	vR[i] = 7689;
}
else
{
	vR[i] = 7688;
}

}

}

}
else
{
	if(input[i]>(7683+offset0))
{
	if(input[i]>(7685+offset0))
{
	if(input[i]==(7687+offset0))
{
	vR[i] = 7687;
}
else
{
	vR[i] = 7686;
}

}
else
{
	if(input[i]==(7685+offset0))
{
	vR[i] = 7685;
}
else
{
	vR[i] = 7684;
}

}

}
else
{
	if(input[i]>(7681+offset0))
{
	if(input[i]==(7683+offset0))
{
	vR[i] = 7683;
}
else
{
	vR[i] = 7682;
}

}
else
{
	if(input[i]==(7681+offset0))
{
	vR[i] = 7681;
}
else
{
	vR[i] = 7680;
}

}

}

}

}

}

}

}

}

}
else
{
	if(input[i]>(7423+offset0))
{
	if(input[i]>(7551+offset0))
{
	if(input[i]>(7615+offset0))
{
	if(input[i]>(7647+offset0))
{
	if(input[i]>(7663+offset0))
{
	if(input[i]>(7671+offset0))
{
	if(input[i]>(7675+offset0))
{
	if(input[i]>(7677+offset0))
{
	if(input[i]==(7679+offset0))
{
	vR[i] = 7679;
}
else
{
	vR[i] = 7678;
}

}
else
{
	if(input[i]==(7677+offset0))
{
	vR[i] = 7677;
}
else
{
	vR[i] = 7676;
}

}

}
else
{
	if(input[i]>(7673+offset0))
{
	if(input[i]==(7675+offset0))
{
	vR[i] = 7675;
}
else
{
	vR[i] = 7674;
}

}
else
{
	if(input[i]==(7673+offset0))
{
	vR[i] = 7673;
}
else
{
	vR[i] = 7672;
}

}

}

}
else
{
	if(input[i]>(7667+offset0))
{
	if(input[i]>(7669+offset0))
{
	if(input[i]==(7671+offset0))
{
	vR[i] = 7671;
}
else
{
	vR[i] = 7670;
}

}
else
{
	if(input[i]==(7669+offset0))
{
	vR[i] = 7669;
}
else
{
	vR[i] = 7668;
}

}

}
else
{
	if(input[i]>(7665+offset0))
{
	if(input[i]==(7667+offset0))
{
	vR[i] = 7667;
}
else
{
	vR[i] = 7666;
}

}
else
{
	if(input[i]==(7665+offset0))
{
	vR[i] = 7665;
}
else
{
	vR[i] = 7664;
}

}

}

}

}
else
{
	if(input[i]>(7655+offset0))
{
	if(input[i]>(7659+offset0))
{
	if(input[i]>(7661+offset0))
{
	if(input[i]==(7663+offset0))
{
	vR[i] = 7663;
}
else
{
	vR[i] = 7662;
}

}
else
{
	if(input[i]==(7661+offset0))
{
	vR[i] = 7661;
}
else
{
	vR[i] = 7660;
}

}

}
else
{
	if(input[i]>(7657+offset0))
{
	if(input[i]==(7659+offset0))
{
	vR[i] = 7659;
}
else
{
	vR[i] = 7658;
}

}
else
{
	if(input[i]==(7657+offset0))
{
	vR[i] = 7657;
}
else
{
	vR[i] = 7656;
}

}

}

}
else
{
	if(input[i]>(7651+offset0))
{
	if(input[i]>(7653+offset0))
{
	if(input[i]==(7655+offset0))
{
	vR[i] = 7655;
}
else
{
	vR[i] = 7654;
}

}
else
{
	if(input[i]==(7653+offset0))
{
	vR[i] = 7653;
}
else
{
	vR[i] = 7652;
}

}

}
else
{
	if(input[i]>(7649+offset0))
{
	if(input[i]==(7651+offset0))
{
	vR[i] = 7651;
}
else
{
	vR[i] = 7650;
}

}
else
{
	if(input[i]==(7649+offset0))
{
	vR[i] = 7649;
}
else
{
	vR[i] = 7648;
}

}

}

}

}

}
else
{
	if(input[i]>(7631+offset0))
{
	if(input[i]>(7639+offset0))
{
	if(input[i]>(7643+offset0))
{
	if(input[i]>(7645+offset0))
{
	if(input[i]==(7647+offset0))
{
	vR[i] = 7647;
}
else
{
	vR[i] = 7646;
}

}
else
{
	if(input[i]==(7645+offset0))
{
	vR[i] = 7645;
}
else
{
	vR[i] = 7644;
}

}

}
else
{
	if(input[i]>(7641+offset0))
{
	if(input[i]==(7643+offset0))
{
	vR[i] = 7643;
}
else
{
	vR[i] = 7642;
}

}
else
{
	if(input[i]==(7641+offset0))
{
	vR[i] = 7641;
}
else
{
	vR[i] = 7640;
}

}

}

}
else
{
	if(input[i]>(7635+offset0))
{
	if(input[i]>(7637+offset0))
{
	if(input[i]==(7639+offset0))
{
	vR[i] = 7639;
}
else
{
	vR[i] = 7638;
}

}
else
{
	if(input[i]==(7637+offset0))
{
	vR[i] = 7637;
}
else
{
	vR[i] = 7636;
}

}

}
else
{
	if(input[i]>(7633+offset0))
{
	if(input[i]==(7635+offset0))
{
	vR[i] = 7635;
}
else
{
	vR[i] = 7634;
}

}
else
{
	if(input[i]==(7633+offset0))
{
	vR[i] = 7633;
}
else
{
	vR[i] = 7632;
}

}

}

}

}
else
{
	if(input[i]>(7623+offset0))
{
	if(input[i]>(7627+offset0))
{
	if(input[i]>(7629+offset0))
{
	if(input[i]==(7631+offset0))
{
	vR[i] = 7631;
}
else
{
	vR[i] = 7630;
}

}
else
{
	if(input[i]==(7629+offset0))
{
	vR[i] = 7629;
}
else
{
	vR[i] = 7628;
}

}

}
else
{
	if(input[i]>(7625+offset0))
{
	if(input[i]==(7627+offset0))
{
	vR[i] = 7627;
}
else
{
	vR[i] = 7626;
}

}
else
{
	if(input[i]==(7625+offset0))
{
	vR[i] = 7625;
}
else
{
	vR[i] = 7624;
}

}

}

}
else
{
	if(input[i]>(7619+offset0))
{
	if(input[i]>(7621+offset0))
{
	if(input[i]==(7623+offset0))
{
	vR[i] = 7623;
}
else
{
	vR[i] = 7622;
}

}
else
{
	if(input[i]==(7621+offset0))
{
	vR[i] = 7621;
}
else
{
	vR[i] = 7620;
}

}

}
else
{
	if(input[i]>(7617+offset0))
{
	if(input[i]==(7619+offset0))
{
	vR[i] = 7619;
}
else
{
	vR[i] = 7618;
}

}
else
{
	if(input[i]==(7617+offset0))
{
	vR[i] = 7617;
}
else
{
	vR[i] = 7616;
}

}

}

}

}

}

}
else
{
	if(input[i]>(7583+offset0))
{
	if(input[i]>(7599+offset0))
{
	if(input[i]>(7607+offset0))
{
	if(input[i]>(7611+offset0))
{
	if(input[i]>(7613+offset0))
{
	if(input[i]==(7615+offset0))
{
	vR[i] = 7615;
}
else
{
	vR[i] = 7614;
}

}
else
{
	if(input[i]==(7613+offset0))
{
	vR[i] = 7613;
}
else
{
	vR[i] = 7612;
}

}

}
else
{
	if(input[i]>(7609+offset0))
{
	if(input[i]==(7611+offset0))
{
	vR[i] = 7611;
}
else
{
	vR[i] = 7610;
}

}
else
{
	if(input[i]==(7609+offset0))
{
	vR[i] = 7609;
}
else
{
	vR[i] = 7608;
}

}

}

}
else
{
	if(input[i]>(7603+offset0))
{
	if(input[i]>(7605+offset0))
{
	if(input[i]==(7607+offset0))
{
	vR[i] = 7607;
}
else
{
	vR[i] = 7606;
}

}
else
{
	if(input[i]==(7605+offset0))
{
	vR[i] = 7605;
}
else
{
	vR[i] = 7604;
}

}

}
else
{
	if(input[i]>(7601+offset0))
{
	if(input[i]==(7603+offset0))
{
	vR[i] = 7603;
}
else
{
	vR[i] = 7602;
}

}
else
{
	if(input[i]==(7601+offset0))
{
	vR[i] = 7601;
}
else
{
	vR[i] = 7600;
}

}

}

}

}
else
{
	if(input[i]>(7591+offset0))
{
	if(input[i]>(7595+offset0))
{
	if(input[i]>(7597+offset0))
{
	if(input[i]==(7599+offset0))
{
	vR[i] = 7599;
}
else
{
	vR[i] = 7598;
}

}
else
{
	if(input[i]==(7597+offset0))
{
	vR[i] = 7597;
}
else
{
	vR[i] = 7596;
}

}

}
else
{
	if(input[i]>(7593+offset0))
{
	if(input[i]==(7595+offset0))
{
	vR[i] = 7595;
}
else
{
	vR[i] = 7594;
}

}
else
{
	if(input[i]==(7593+offset0))
{
	vR[i] = 7593;
}
else
{
	vR[i] = 7592;
}

}

}

}
else
{
	if(input[i]>(7587+offset0))
{
	if(input[i]>(7589+offset0))
{
	if(input[i]==(7591+offset0))
{
	vR[i] = 7591;
}
else
{
	vR[i] = 7590;
}

}
else
{
	if(input[i]==(7589+offset0))
{
	vR[i] = 7589;
}
else
{
	vR[i] = 7588;
}

}

}
else
{
	if(input[i]>(7585+offset0))
{
	if(input[i]==(7587+offset0))
{
	vR[i] = 7587;
}
else
{
	vR[i] = 7586;
}

}
else
{
	if(input[i]==(7585+offset0))
{
	vR[i] = 7585;
}
else
{
	vR[i] = 7584;
}

}

}

}

}

}
else
{
	if(input[i]>(7567+offset0))
{
	if(input[i]>(7575+offset0))
{
	if(input[i]>(7579+offset0))
{
	if(input[i]>(7581+offset0))
{
	if(input[i]==(7583+offset0))
{
	vR[i] = 7583;
}
else
{
	vR[i] = 7582;
}

}
else
{
	if(input[i]==(7581+offset0))
{
	vR[i] = 7581;
}
else
{
	vR[i] = 7580;
}

}

}
else
{
	if(input[i]>(7577+offset0))
{
	if(input[i]==(7579+offset0))
{
	vR[i] = 7579;
}
else
{
	vR[i] = 7578;
}

}
else
{
	if(input[i]==(7577+offset0))
{
	vR[i] = 7577;
}
else
{
	vR[i] = 7576;
}

}

}

}
else
{
	if(input[i]>(7571+offset0))
{
	if(input[i]>(7573+offset0))
{
	if(input[i]==(7575+offset0))
{
	vR[i] = 7575;
}
else
{
	vR[i] = 7574;
}

}
else
{
	if(input[i]==(7573+offset0))
{
	vR[i] = 7573;
}
else
{
	vR[i] = 7572;
}

}

}
else
{
	if(input[i]>(7569+offset0))
{
	if(input[i]==(7571+offset0))
{
	vR[i] = 7571;
}
else
{
	vR[i] = 7570;
}

}
else
{
	if(input[i]==(7569+offset0))
{
	vR[i] = 7569;
}
else
{
	vR[i] = 7568;
}

}

}

}

}
else
{
	if(input[i]>(7559+offset0))
{
	if(input[i]>(7563+offset0))
{
	if(input[i]>(7565+offset0))
{
	if(input[i]==(7567+offset0))
{
	vR[i] = 7567;
}
else
{
	vR[i] = 7566;
}

}
else
{
	if(input[i]==(7565+offset0))
{
	vR[i] = 7565;
}
else
{
	vR[i] = 7564;
}

}

}
else
{
	if(input[i]>(7561+offset0))
{
	if(input[i]==(7563+offset0))
{
	vR[i] = 7563;
}
else
{
	vR[i] = 7562;
}

}
else
{
	if(input[i]==(7561+offset0))
{
	vR[i] = 7561;
}
else
{
	vR[i] = 7560;
}

}

}

}
else
{
	if(input[i]>(7555+offset0))
{
	if(input[i]>(7557+offset0))
{
	if(input[i]==(7559+offset0))
{
	vR[i] = 7559;
}
else
{
	vR[i] = 7558;
}

}
else
{
	if(input[i]==(7557+offset0))
{
	vR[i] = 7557;
}
else
{
	vR[i] = 7556;
}

}

}
else
{
	if(input[i]>(7553+offset0))
{
	if(input[i]==(7555+offset0))
{
	vR[i] = 7555;
}
else
{
	vR[i] = 7554;
}

}
else
{
	if(input[i]==(7553+offset0))
{
	vR[i] = 7553;
}
else
{
	vR[i] = 7552;
}

}

}

}

}

}

}

}
else
{
	if(input[i]>(7487+offset0))
{
	if(input[i]>(7519+offset0))
{
	if(input[i]>(7535+offset0))
{
	if(input[i]>(7543+offset0))
{
	if(input[i]>(7547+offset0))
{
	if(input[i]>(7549+offset0))
{
	if(input[i]==(7551+offset0))
{
	vR[i] = 7551;
}
else
{
	vR[i] = 7550;
}

}
else
{
	if(input[i]==(7549+offset0))
{
	vR[i] = 7549;
}
else
{
	vR[i] = 7548;
}

}

}
else
{
	if(input[i]>(7545+offset0))
{
	if(input[i]==(7547+offset0))
{
	vR[i] = 7547;
}
else
{
	vR[i] = 7546;
}

}
else
{
	if(input[i]==(7545+offset0))
{
	vR[i] = 7545;
}
else
{
	vR[i] = 7544;
}

}

}

}
else
{
	if(input[i]>(7539+offset0))
{
	if(input[i]>(7541+offset0))
{
	if(input[i]==(7543+offset0))
{
	vR[i] = 7543;
}
else
{
	vR[i] = 7542;
}

}
else
{
	if(input[i]==(7541+offset0))
{
	vR[i] = 7541;
}
else
{
	vR[i] = 7540;
}

}

}
else
{
	if(input[i]>(7537+offset0))
{
	if(input[i]==(7539+offset0))
{
	vR[i] = 7539;
}
else
{
	vR[i] = 7538;
}

}
else
{
	if(input[i]==(7537+offset0))
{
	vR[i] = 7537;
}
else
{
	vR[i] = 7536;
}

}

}

}

}
else
{
	if(input[i]>(7527+offset0))
{
	if(input[i]>(7531+offset0))
{
	if(input[i]>(7533+offset0))
{
	if(input[i]==(7535+offset0))
{
	vR[i] = 7535;
}
else
{
	vR[i] = 7534;
}

}
else
{
	if(input[i]==(7533+offset0))
{
	vR[i] = 7533;
}
else
{
	vR[i] = 7532;
}

}

}
else
{
	if(input[i]>(7529+offset0))
{
	if(input[i]==(7531+offset0))
{
	vR[i] = 7531;
}
else
{
	vR[i] = 7530;
}

}
else
{
	if(input[i]==(7529+offset0))
{
	vR[i] = 7529;
}
else
{
	vR[i] = 7528;
}

}

}

}
else
{
	if(input[i]>(7523+offset0))
{
	if(input[i]>(7525+offset0))
{
	if(input[i]==(7527+offset0))
{
	vR[i] = 7527;
}
else
{
	vR[i] = 7526;
}

}
else
{
	if(input[i]==(7525+offset0))
{
	vR[i] = 7525;
}
else
{
	vR[i] = 7524;
}

}

}
else
{
	if(input[i]>(7521+offset0))
{
	if(input[i]==(7523+offset0))
{
	vR[i] = 7523;
}
else
{
	vR[i] = 7522;
}

}
else
{
	if(input[i]==(7521+offset0))
{
	vR[i] = 7521;
}
else
{
	vR[i] = 7520;
}

}

}

}

}

}
else
{
	if(input[i]>(7503+offset0))
{
	if(input[i]>(7511+offset0))
{
	if(input[i]>(7515+offset0))
{
	if(input[i]>(7517+offset0))
{
	if(input[i]==(7519+offset0))
{
	vR[i] = 7519;
}
else
{
	vR[i] = 7518;
}

}
else
{
	if(input[i]==(7517+offset0))
{
	vR[i] = 7517;
}
else
{
	vR[i] = 7516;
}

}

}
else
{
	if(input[i]>(7513+offset0))
{
	if(input[i]==(7515+offset0))
{
	vR[i] = 7515;
}
else
{
	vR[i] = 7514;
}

}
else
{
	if(input[i]==(7513+offset0))
{
	vR[i] = 7513;
}
else
{
	vR[i] = 7512;
}

}

}

}
else
{
	if(input[i]>(7507+offset0))
{
	if(input[i]>(7509+offset0))
{
	if(input[i]==(7511+offset0))
{
	vR[i] = 7511;
}
else
{
	vR[i] = 7510;
}

}
else
{
	if(input[i]==(7509+offset0))
{
	vR[i] = 7509;
}
else
{
	vR[i] = 7508;
}

}

}
else
{
	if(input[i]>(7505+offset0))
{
	if(input[i]==(7507+offset0))
{
	vR[i] = 7507;
}
else
{
	vR[i] = 7506;
}

}
else
{
	if(input[i]==(7505+offset0))
{
	vR[i] = 7505;
}
else
{
	vR[i] = 7504;
}

}

}

}

}
else
{
	if(input[i]>(7495+offset0))
{
	if(input[i]>(7499+offset0))
{
	if(input[i]>(7501+offset0))
{
	if(input[i]==(7503+offset0))
{
	vR[i] = 7503;
}
else
{
	vR[i] = 7502;
}

}
else
{
	if(input[i]==(7501+offset0))
{
	vR[i] = 7501;
}
else
{
	vR[i] = 7500;
}

}

}
else
{
	if(input[i]>(7497+offset0))
{
	if(input[i]==(7499+offset0))
{
	vR[i] = 7499;
}
else
{
	vR[i] = 7498;
}

}
else
{
	if(input[i]==(7497+offset0))
{
	vR[i] = 7497;
}
else
{
	vR[i] = 7496;
}

}

}

}
else
{
	if(input[i]>(7491+offset0))
{
	if(input[i]>(7493+offset0))
{
	if(input[i]==(7495+offset0))
{
	vR[i] = 7495;
}
else
{
	vR[i] = 7494;
}

}
else
{
	if(input[i]==(7493+offset0))
{
	vR[i] = 7493;
}
else
{
	vR[i] = 7492;
}

}

}
else
{
	if(input[i]>(7489+offset0))
{
	if(input[i]==(7491+offset0))
{
	vR[i] = 7491;
}
else
{
	vR[i] = 7490;
}

}
else
{
	if(input[i]==(7489+offset0))
{
	vR[i] = 7489;
}
else
{
	vR[i] = 7488;
}

}

}

}

}

}

}
else
{
	if(input[i]>(7455+offset0))
{
	if(input[i]>(7471+offset0))
{
	if(input[i]>(7479+offset0))
{
	if(input[i]>(7483+offset0))
{
	if(input[i]>(7485+offset0))
{
	if(input[i]==(7487+offset0))
{
	vR[i] = 7487;
}
else
{
	vR[i] = 7486;
}

}
else
{
	if(input[i]==(7485+offset0))
{
	vR[i] = 7485;
}
else
{
	vR[i] = 7484;
}

}

}
else
{
	if(input[i]>(7481+offset0))
{
	if(input[i]==(7483+offset0))
{
	vR[i] = 7483;
}
else
{
	vR[i] = 7482;
}

}
else
{
	if(input[i]==(7481+offset0))
{
	vR[i] = 7481;
}
else
{
	vR[i] = 7480;
}

}

}

}
else
{
	if(input[i]>(7475+offset0))
{
	if(input[i]>(7477+offset0))
{
	if(input[i]==(7479+offset0))
{
	vR[i] = 7479;
}
else
{
	vR[i] = 7478;
}

}
else
{
	if(input[i]==(7477+offset0))
{
	vR[i] = 7477;
}
else
{
	vR[i] = 7476;
}

}

}
else
{
	if(input[i]>(7473+offset0))
{
	if(input[i]==(7475+offset0))
{
	vR[i] = 7475;
}
else
{
	vR[i] = 7474;
}

}
else
{
	if(input[i]==(7473+offset0))
{
	vR[i] = 7473;
}
else
{
	vR[i] = 7472;
}

}

}

}

}
else
{
	if(input[i]>(7463+offset0))
{
	if(input[i]>(7467+offset0))
{
	if(input[i]>(7469+offset0))
{
	if(input[i]==(7471+offset0))
{
	vR[i] = 7471;
}
else
{
	vR[i] = 7470;
}

}
else
{
	if(input[i]==(7469+offset0))
{
	vR[i] = 7469;
}
else
{
	vR[i] = 7468;
}

}

}
else
{
	if(input[i]>(7465+offset0))
{
	if(input[i]==(7467+offset0))
{
	vR[i] = 7467;
}
else
{
	vR[i] = 7466;
}

}
else
{
	if(input[i]==(7465+offset0))
{
	vR[i] = 7465;
}
else
{
	vR[i] = 7464;
}

}

}

}
else
{
	if(input[i]>(7459+offset0))
{
	if(input[i]>(7461+offset0))
{
	if(input[i]==(7463+offset0))
{
	vR[i] = 7463;
}
else
{
	vR[i] = 7462;
}

}
else
{
	if(input[i]==(7461+offset0))
{
	vR[i] = 7461;
}
else
{
	vR[i] = 7460;
}

}

}
else
{
	if(input[i]>(7457+offset0))
{
	if(input[i]==(7459+offset0))
{
	vR[i] = 7459;
}
else
{
	vR[i] = 7458;
}

}
else
{
	if(input[i]==(7457+offset0))
{
	vR[i] = 7457;
}
else
{
	vR[i] = 7456;
}

}

}

}

}

}
else
{
	if(input[i]>(7439+offset0))
{
	if(input[i]>(7447+offset0))
{
	if(input[i]>(7451+offset0))
{
	if(input[i]>(7453+offset0))
{
	if(input[i]==(7455+offset0))
{
	vR[i] = 7455;
}
else
{
	vR[i] = 7454;
}

}
else
{
	if(input[i]==(7453+offset0))
{
	vR[i] = 7453;
}
else
{
	vR[i] = 7452;
}

}

}
else
{
	if(input[i]>(7449+offset0))
{
	if(input[i]==(7451+offset0))
{
	vR[i] = 7451;
}
else
{
	vR[i] = 7450;
}

}
else
{
	if(input[i]==(7449+offset0))
{
	vR[i] = 7449;
}
else
{
	vR[i] = 7448;
}

}

}

}
else
{
	if(input[i]>(7443+offset0))
{
	if(input[i]>(7445+offset0))
{
	if(input[i]==(7447+offset0))
{
	vR[i] = 7447;
}
else
{
	vR[i] = 7446;
}

}
else
{
	if(input[i]==(7445+offset0))
{
	vR[i] = 7445;
}
else
{
	vR[i] = 7444;
}

}

}
else
{
	if(input[i]>(7441+offset0))
{
	if(input[i]==(7443+offset0))
{
	vR[i] = 7443;
}
else
{
	vR[i] = 7442;
}

}
else
{
	if(input[i]==(7441+offset0))
{
	vR[i] = 7441;
}
else
{
	vR[i] = 7440;
}

}

}

}

}
else
{
	if(input[i]>(7431+offset0))
{
	if(input[i]>(7435+offset0))
{
	if(input[i]>(7437+offset0))
{
	if(input[i]==(7439+offset0))
{
	vR[i] = 7439;
}
else
{
	vR[i] = 7438;
}

}
else
{
	if(input[i]==(7437+offset0))
{
	vR[i] = 7437;
}
else
{
	vR[i] = 7436;
}

}

}
else
{
	if(input[i]>(7433+offset0))
{
	if(input[i]==(7435+offset0))
{
	vR[i] = 7435;
}
else
{
	vR[i] = 7434;
}

}
else
{
	if(input[i]==(7433+offset0))
{
	vR[i] = 7433;
}
else
{
	vR[i] = 7432;
}

}

}

}
else
{
	if(input[i]>(7427+offset0))
{
	if(input[i]>(7429+offset0))
{
	if(input[i]==(7431+offset0))
{
	vR[i] = 7431;
}
else
{
	vR[i] = 7430;
}

}
else
{
	if(input[i]==(7429+offset0))
{
	vR[i] = 7429;
}
else
{
	vR[i] = 7428;
}

}

}
else
{
	if(input[i]>(7425+offset0))
{
	if(input[i]==(7427+offset0))
{
	vR[i] = 7427;
}
else
{
	vR[i] = 7426;
}

}
else
{
	if(input[i]==(7425+offset0))
{
	vR[i] = 7425;
}
else
{
	vR[i] = 7424;
}

}

}

}

}

}

}

}

}
else
{
	if(input[i]>(7295+offset0))
{
	if(input[i]>(7359+offset0))
{
	if(input[i]>(7391+offset0))
{
	if(input[i]>(7407+offset0))
{
	if(input[i]>(7415+offset0))
{
	if(input[i]>(7419+offset0))
{
	if(input[i]>(7421+offset0))
{
	if(input[i]==(7423+offset0))
{
	vR[i] = 7423;
}
else
{
	vR[i] = 7422;
}

}
else
{
	if(input[i]==(7421+offset0))
{
	vR[i] = 7421;
}
else
{
	vR[i] = 7420;
}

}

}
else
{
	if(input[i]>(7417+offset0))
{
	if(input[i]==(7419+offset0))
{
	vR[i] = 7419;
}
else
{
	vR[i] = 7418;
}

}
else
{
	if(input[i]==(7417+offset0))
{
	vR[i] = 7417;
}
else
{
	vR[i] = 7416;
}

}

}

}
else
{
	if(input[i]>(7411+offset0))
{
	if(input[i]>(7413+offset0))
{
	if(input[i]==(7415+offset0))
{
	vR[i] = 7415;
}
else
{
	vR[i] = 7414;
}

}
else
{
	if(input[i]==(7413+offset0))
{
	vR[i] = 7413;
}
else
{
	vR[i] = 7412;
}

}

}
else
{
	if(input[i]>(7409+offset0))
{
	if(input[i]==(7411+offset0))
{
	vR[i] = 7411;
}
else
{
	vR[i] = 7410;
}

}
else
{
	if(input[i]==(7409+offset0))
{
	vR[i] = 7409;
}
else
{
	vR[i] = 7408;
}

}

}

}

}
else
{
	if(input[i]>(7399+offset0))
{
	if(input[i]>(7403+offset0))
{
	if(input[i]>(7405+offset0))
{
	if(input[i]==(7407+offset0))
{
	vR[i] = 7407;
}
else
{
	vR[i] = 7406;
}

}
else
{
	if(input[i]==(7405+offset0))
{
	vR[i] = 7405;
}
else
{
	vR[i] = 7404;
}

}

}
else
{
	if(input[i]>(7401+offset0))
{
	if(input[i]==(7403+offset0))
{
	vR[i] = 7403;
}
else
{
	vR[i] = 7402;
}

}
else
{
	if(input[i]==(7401+offset0))
{
	vR[i] = 7401;
}
else
{
	vR[i] = 7400;
}

}

}

}
else
{
	if(input[i]>(7395+offset0))
{
	if(input[i]>(7397+offset0))
{
	if(input[i]==(7399+offset0))
{
	vR[i] = 7399;
}
else
{
	vR[i] = 7398;
}

}
else
{
	if(input[i]==(7397+offset0))
{
	vR[i] = 7397;
}
else
{
	vR[i] = 7396;
}

}

}
else
{
	if(input[i]>(7393+offset0))
{
	if(input[i]==(7395+offset0))
{
	vR[i] = 7395;
}
else
{
	vR[i] = 7394;
}

}
else
{
	if(input[i]==(7393+offset0))
{
	vR[i] = 7393;
}
else
{
	vR[i] = 7392;
}

}

}

}

}

}
else
{
	if(input[i]>(7375+offset0))
{
	if(input[i]>(7383+offset0))
{
	if(input[i]>(7387+offset0))
{
	if(input[i]>(7389+offset0))
{
	if(input[i]==(7391+offset0))
{
	vR[i] = 7391;
}
else
{
	vR[i] = 7390;
}

}
else
{
	if(input[i]==(7389+offset0))
{
	vR[i] = 7389;
}
else
{
	vR[i] = 7388;
}

}

}
else
{
	if(input[i]>(7385+offset0))
{
	if(input[i]==(7387+offset0))
{
	vR[i] = 7387;
}
else
{
	vR[i] = 7386;
}

}
else
{
	if(input[i]==(7385+offset0))
{
	vR[i] = 7385;
}
else
{
	vR[i] = 7384;
}

}

}

}
else
{
	if(input[i]>(7379+offset0))
{
	if(input[i]>(7381+offset0))
{
	if(input[i]==(7383+offset0))
{
	vR[i] = 7383;
}
else
{
	vR[i] = 7382;
}

}
else
{
	if(input[i]==(7381+offset0))
{
	vR[i] = 7381;
}
else
{
	vR[i] = 7380;
}

}

}
else
{
	if(input[i]>(7377+offset0))
{
	if(input[i]==(7379+offset0))
{
	vR[i] = 7379;
}
else
{
	vR[i] = 7378;
}

}
else
{
	if(input[i]==(7377+offset0))
{
	vR[i] = 7377;
}
else
{
	vR[i] = 7376;
}

}

}

}

}
else
{
	if(input[i]>(7367+offset0))
{
	if(input[i]>(7371+offset0))
{
	if(input[i]>(7373+offset0))
{
	if(input[i]==(7375+offset0))
{
	vR[i] = 7375;
}
else
{
	vR[i] = 7374;
}

}
else
{
	if(input[i]==(7373+offset0))
{
	vR[i] = 7373;
}
else
{
	vR[i] = 7372;
}

}

}
else
{
	if(input[i]>(7369+offset0))
{
	if(input[i]==(7371+offset0))
{
	vR[i] = 7371;
}
else
{
	vR[i] = 7370;
}

}
else
{
	if(input[i]==(7369+offset0))
{
	vR[i] = 7369;
}
else
{
	vR[i] = 7368;
}

}

}

}
else
{
	if(input[i]>(7363+offset0))
{
	if(input[i]>(7365+offset0))
{
	if(input[i]==(7367+offset0))
{
	vR[i] = 7367;
}
else
{
	vR[i] = 7366;
}

}
else
{
	if(input[i]==(7365+offset0))
{
	vR[i] = 7365;
}
else
{
	vR[i] = 7364;
}

}

}
else
{
	if(input[i]>(7361+offset0))
{
	if(input[i]==(7363+offset0))
{
	vR[i] = 7363;
}
else
{
	vR[i] = 7362;
}

}
else
{
	if(input[i]==(7361+offset0))
{
	vR[i] = 7361;
}
else
{
	vR[i] = 7360;
}

}

}

}

}

}

}
else
{
	if(input[i]>(7327+offset0))
{
	if(input[i]>(7343+offset0))
{
	if(input[i]>(7351+offset0))
{
	if(input[i]>(7355+offset0))
{
	if(input[i]>(7357+offset0))
{
	if(input[i]==(7359+offset0))
{
	vR[i] = 7359;
}
else
{
	vR[i] = 7358;
}

}
else
{
	if(input[i]==(7357+offset0))
{
	vR[i] = 7357;
}
else
{
	vR[i] = 7356;
}

}

}
else
{
	if(input[i]>(7353+offset0))
{
	if(input[i]==(7355+offset0))
{
	vR[i] = 7355;
}
else
{
	vR[i] = 7354;
}

}
else
{
	if(input[i]==(7353+offset0))
{
	vR[i] = 7353;
}
else
{
	vR[i] = 7352;
}

}

}

}
else
{
	if(input[i]>(7347+offset0))
{
	if(input[i]>(7349+offset0))
{
	if(input[i]==(7351+offset0))
{
	vR[i] = 7351;
}
else
{
	vR[i] = 7350;
}

}
else
{
	if(input[i]==(7349+offset0))
{
	vR[i] = 7349;
}
else
{
	vR[i] = 7348;
}

}

}
else
{
	if(input[i]>(7345+offset0))
{
	if(input[i]==(7347+offset0))
{
	vR[i] = 7347;
}
else
{
	vR[i] = 7346;
}

}
else
{
	if(input[i]==(7345+offset0))
{
	vR[i] = 7345;
}
else
{
	vR[i] = 7344;
}

}

}

}

}
else
{
	if(input[i]>(7335+offset0))
{
	if(input[i]>(7339+offset0))
{
	if(input[i]>(7341+offset0))
{
	if(input[i]==(7343+offset0))
{
	vR[i] = 7343;
}
else
{
	vR[i] = 7342;
}

}
else
{
	if(input[i]==(7341+offset0))
{
	vR[i] = 7341;
}
else
{
	vR[i] = 7340;
}

}

}
else
{
	if(input[i]>(7337+offset0))
{
	if(input[i]==(7339+offset0))
{
	vR[i] = 7339;
}
else
{
	vR[i] = 7338;
}

}
else
{
	if(input[i]==(7337+offset0))
{
	vR[i] = 7337;
}
else
{
	vR[i] = 7336;
}

}

}

}
else
{
	if(input[i]>(7331+offset0))
{
	if(input[i]>(7333+offset0))
{
	if(input[i]==(7335+offset0))
{
	vR[i] = 7335;
}
else
{
	vR[i] = 7334;
}

}
else
{
	if(input[i]==(7333+offset0))
{
	vR[i] = 7333;
}
else
{
	vR[i] = 7332;
}

}

}
else
{
	if(input[i]>(7329+offset0))
{
	if(input[i]==(7331+offset0))
{
	vR[i] = 7331;
}
else
{
	vR[i] = 7330;
}

}
else
{
	if(input[i]==(7329+offset0))
{
	vR[i] = 7329;
}
else
{
	vR[i] = 7328;
}

}

}

}

}

}
else
{
	if(input[i]>(7311+offset0))
{
	if(input[i]>(7319+offset0))
{
	if(input[i]>(7323+offset0))
{
	if(input[i]>(7325+offset0))
{
	if(input[i]==(7327+offset0))
{
	vR[i] = 7327;
}
else
{
	vR[i] = 7326;
}

}
else
{
	if(input[i]==(7325+offset0))
{
	vR[i] = 7325;
}
else
{
	vR[i] = 7324;
}

}

}
else
{
	if(input[i]>(7321+offset0))
{
	if(input[i]==(7323+offset0))
{
	vR[i] = 7323;
}
else
{
	vR[i] = 7322;
}

}
else
{
	if(input[i]==(7321+offset0))
{
	vR[i] = 7321;
}
else
{
	vR[i] = 7320;
}

}

}

}
else
{
	if(input[i]>(7315+offset0))
{
	if(input[i]>(7317+offset0))
{
	if(input[i]==(7319+offset0))
{
	vR[i] = 7319;
}
else
{
	vR[i] = 7318;
}

}
else
{
	if(input[i]==(7317+offset0))
{
	vR[i] = 7317;
}
else
{
	vR[i] = 7316;
}

}

}
else
{
	if(input[i]>(7313+offset0))
{
	if(input[i]==(7315+offset0))
{
	vR[i] = 7315;
}
else
{
	vR[i] = 7314;
}

}
else
{
	if(input[i]==(7313+offset0))
{
	vR[i] = 7313;
}
else
{
	vR[i] = 7312;
}

}

}

}

}
else
{
	if(input[i]>(7303+offset0))
{
	if(input[i]>(7307+offset0))
{
	if(input[i]>(7309+offset0))
{
	if(input[i]==(7311+offset0))
{
	vR[i] = 7311;
}
else
{
	vR[i] = 7310;
}

}
else
{
	if(input[i]==(7309+offset0))
{
	vR[i] = 7309;
}
else
{
	vR[i] = 7308;
}

}

}
else
{
	if(input[i]>(7305+offset0))
{
	if(input[i]==(7307+offset0))
{
	vR[i] = 7307;
}
else
{
	vR[i] = 7306;
}

}
else
{
	if(input[i]==(7305+offset0))
{
	vR[i] = 7305;
}
else
{
	vR[i] = 7304;
}

}

}

}
else
{
	if(input[i]>(7299+offset0))
{
	if(input[i]>(7301+offset0))
{
	if(input[i]==(7303+offset0))
{
	vR[i] = 7303;
}
else
{
	vR[i] = 7302;
}

}
else
{
	if(input[i]==(7301+offset0))
{
	vR[i] = 7301;
}
else
{
	vR[i] = 7300;
}

}

}
else
{
	if(input[i]>(7297+offset0))
{
	if(input[i]==(7299+offset0))
{
	vR[i] = 7299;
}
else
{
	vR[i] = 7298;
}

}
else
{
	if(input[i]==(7297+offset0))
{
	vR[i] = 7297;
}
else
{
	vR[i] = 7296;
}

}

}

}

}

}

}

}
else
{
	if(input[i]>(7231+offset0))
{
	if(input[i]>(7263+offset0))
{
	if(input[i]>(7279+offset0))
{
	if(input[i]>(7287+offset0))
{
	if(input[i]>(7291+offset0))
{
	if(input[i]>(7293+offset0))
{
	if(input[i]==(7295+offset0))
{
	vR[i] = 7295;
}
else
{
	vR[i] = 7294;
}

}
else
{
	if(input[i]==(7293+offset0))
{
	vR[i] = 7293;
}
else
{
	vR[i] = 7292;
}

}

}
else
{
	if(input[i]>(7289+offset0))
{
	if(input[i]==(7291+offset0))
{
	vR[i] = 7291;
}
else
{
	vR[i] = 7290;
}

}
else
{
	if(input[i]==(7289+offset0))
{
	vR[i] = 7289;
}
else
{
	vR[i] = 7288;
}

}

}

}
else
{
	if(input[i]>(7283+offset0))
{
	if(input[i]>(7285+offset0))
{
	if(input[i]==(7287+offset0))
{
	vR[i] = 7287;
}
else
{
	vR[i] = 7286;
}

}
else
{
	if(input[i]==(7285+offset0))
{
	vR[i] = 7285;
}
else
{
	vR[i] = 7284;
}

}

}
else
{
	if(input[i]>(7281+offset0))
{
	if(input[i]==(7283+offset0))
{
	vR[i] = 7283;
}
else
{
	vR[i] = 7282;
}

}
else
{
	if(input[i]==(7281+offset0))
{
	vR[i] = 7281;
}
else
{
	vR[i] = 7280;
}

}

}

}

}
else
{
	if(input[i]>(7271+offset0))
{
	if(input[i]>(7275+offset0))
{
	if(input[i]>(7277+offset0))
{
	if(input[i]==(7279+offset0))
{
	vR[i] = 7279;
}
else
{
	vR[i] = 7278;
}

}
else
{
	if(input[i]==(7277+offset0))
{
	vR[i] = 7277;
}
else
{
	vR[i] = 7276;
}

}

}
else
{
	if(input[i]>(7273+offset0))
{
	if(input[i]==(7275+offset0))
{
	vR[i] = 7275;
}
else
{
	vR[i] = 7274;
}

}
else
{
	if(input[i]==(7273+offset0))
{
	vR[i] = 7273;
}
else
{
	vR[i] = 7272;
}

}

}

}
else
{
	if(input[i]>(7267+offset0))
{
	if(input[i]>(7269+offset0))
{
	if(input[i]==(7271+offset0))
{
	vR[i] = 7271;
}
else
{
	vR[i] = 7270;
}

}
else
{
	if(input[i]==(7269+offset0))
{
	vR[i] = 7269;
}
else
{
	vR[i] = 7268;
}

}

}
else
{
	if(input[i]>(7265+offset0))
{
	if(input[i]==(7267+offset0))
{
	vR[i] = 7267;
}
else
{
	vR[i] = 7266;
}

}
else
{
	if(input[i]==(7265+offset0))
{
	vR[i] = 7265;
}
else
{
	vR[i] = 7264;
}

}

}

}

}

}
else
{
	if(input[i]>(7247+offset0))
{
	if(input[i]>(7255+offset0))
{
	if(input[i]>(7259+offset0))
{
	if(input[i]>(7261+offset0))
{
	if(input[i]==(7263+offset0))
{
	vR[i] = 7263;
}
else
{
	vR[i] = 7262;
}

}
else
{
	if(input[i]==(7261+offset0))
{
	vR[i] = 7261;
}
else
{
	vR[i] = 7260;
}

}

}
else
{
	if(input[i]>(7257+offset0))
{
	if(input[i]==(7259+offset0))
{
	vR[i] = 7259;
}
else
{
	vR[i] = 7258;
}

}
else
{
	if(input[i]==(7257+offset0))
{
	vR[i] = 7257;
}
else
{
	vR[i] = 7256;
}

}

}

}
else
{
	if(input[i]>(7251+offset0))
{
	if(input[i]>(7253+offset0))
{
	if(input[i]==(7255+offset0))
{
	vR[i] = 7255;
}
else
{
	vR[i] = 7254;
}

}
else
{
	if(input[i]==(7253+offset0))
{
	vR[i] = 7253;
}
else
{
	vR[i] = 7252;
}

}

}
else
{
	if(input[i]>(7249+offset0))
{
	if(input[i]==(7251+offset0))
{
	vR[i] = 7251;
}
else
{
	vR[i] = 7250;
}

}
else
{
	if(input[i]==(7249+offset0))
{
	vR[i] = 7249;
}
else
{
	vR[i] = 7248;
}

}

}

}

}
else
{
	if(input[i]>(7239+offset0))
{
	if(input[i]>(7243+offset0))
{
	if(input[i]>(7245+offset0))
{
	if(input[i]==(7247+offset0))
{
	vR[i] = 7247;
}
else
{
	vR[i] = 7246;
}

}
else
{
	if(input[i]==(7245+offset0))
{
	vR[i] = 7245;
}
else
{
	vR[i] = 7244;
}

}

}
else
{
	if(input[i]>(7241+offset0))
{
	if(input[i]==(7243+offset0))
{
	vR[i] = 7243;
}
else
{
	vR[i] = 7242;
}

}
else
{
	if(input[i]==(7241+offset0))
{
	vR[i] = 7241;
}
else
{
	vR[i] = 7240;
}

}

}

}
else
{
	if(input[i]>(7235+offset0))
{
	if(input[i]>(7237+offset0))
{
	if(input[i]==(7239+offset0))
{
	vR[i] = 7239;
}
else
{
	vR[i] = 7238;
}

}
else
{
	if(input[i]==(7237+offset0))
{
	vR[i] = 7237;
}
else
{
	vR[i] = 7236;
}

}

}
else
{
	if(input[i]>(7233+offset0))
{
	if(input[i]==(7235+offset0))
{
	vR[i] = 7235;
}
else
{
	vR[i] = 7234;
}

}
else
{
	if(input[i]==(7233+offset0))
{
	vR[i] = 7233;
}
else
{
	vR[i] = 7232;
}

}

}

}

}

}

}
else
{
	if(input[i]>(7199+offset0))
{
	if(input[i]>(7215+offset0))
{
	if(input[i]>(7223+offset0))
{
	if(input[i]>(7227+offset0))
{
	if(input[i]>(7229+offset0))
{
	if(input[i]==(7231+offset0))
{
	vR[i] = 7231;
}
else
{
	vR[i] = 7230;
}

}
else
{
	if(input[i]==(7229+offset0))
{
	vR[i] = 7229;
}
else
{
	vR[i] = 7228;
}

}

}
else
{
	if(input[i]>(7225+offset0))
{
	if(input[i]==(7227+offset0))
{
	vR[i] = 7227;
}
else
{
	vR[i] = 7226;
}

}
else
{
	if(input[i]==(7225+offset0))
{
	vR[i] = 7225;
}
else
{
	vR[i] = 7224;
}

}

}

}
else
{
	if(input[i]>(7219+offset0))
{
	if(input[i]>(7221+offset0))
{
	if(input[i]==(7223+offset0))
{
	vR[i] = 7223;
}
else
{
	vR[i] = 7222;
}

}
else
{
	if(input[i]==(7221+offset0))
{
	vR[i] = 7221;
}
else
{
	vR[i] = 7220;
}

}

}
else
{
	if(input[i]>(7217+offset0))
{
	if(input[i]==(7219+offset0))
{
	vR[i] = 7219;
}
else
{
	vR[i] = 7218;
}

}
else
{
	if(input[i]==(7217+offset0))
{
	vR[i] = 7217;
}
else
{
	vR[i] = 7216;
}

}

}

}

}
else
{
	if(input[i]>(7207+offset0))
{
	if(input[i]>(7211+offset0))
{
	if(input[i]>(7213+offset0))
{
	if(input[i]==(7215+offset0))
{
	vR[i] = 7215;
}
else
{
	vR[i] = 7214;
}

}
else
{
	if(input[i]==(7213+offset0))
{
	vR[i] = 7213;
}
else
{
	vR[i] = 7212;
}

}

}
else
{
	if(input[i]>(7209+offset0))
{
	if(input[i]==(7211+offset0))
{
	vR[i] = 7211;
}
else
{
	vR[i] = 7210;
}

}
else
{
	if(input[i]==(7209+offset0))
{
	vR[i] = 7209;
}
else
{
	vR[i] = 7208;
}

}

}

}
else
{
	if(input[i]>(7203+offset0))
{
	if(input[i]>(7205+offset0))
{
	if(input[i]==(7207+offset0))
{
	vR[i] = 7207;
}
else
{
	vR[i] = 7206;
}

}
else
{
	if(input[i]==(7205+offset0))
{
	vR[i] = 7205;
}
else
{
	vR[i] = 7204;
}

}

}
else
{
	if(input[i]>(7201+offset0))
{
	if(input[i]==(7203+offset0))
{
	vR[i] = 7203;
}
else
{
	vR[i] = 7202;
}

}
else
{
	if(input[i]==(7201+offset0))
{
	vR[i] = 7201;
}
else
{
	vR[i] = 7200;
}

}

}

}

}

}
else
{
	if(input[i]>(7183+offset0))
{
	if(input[i]>(7191+offset0))
{
	if(input[i]>(7195+offset0))
{
	if(input[i]>(7197+offset0))
{
	if(input[i]==(7199+offset0))
{
	vR[i] = 7199;
}
else
{
	vR[i] = 7198;
}

}
else
{
	if(input[i]==(7197+offset0))
{
	vR[i] = 7197;
}
else
{
	vR[i] = 7196;
}

}

}
else
{
	if(input[i]>(7193+offset0))
{
	if(input[i]==(7195+offset0))
{
	vR[i] = 7195;
}
else
{
	vR[i] = 7194;
}

}
else
{
	if(input[i]==(7193+offset0))
{
	vR[i] = 7193;
}
else
{
	vR[i] = 7192;
}

}

}

}
else
{
	if(input[i]>(7187+offset0))
{
	if(input[i]>(7189+offset0))
{
	if(input[i]==(7191+offset0))
{
	vR[i] = 7191;
}
else
{
	vR[i] = 7190;
}

}
else
{
	if(input[i]==(7189+offset0))
{
	vR[i] = 7189;
}
else
{
	vR[i] = 7188;
}

}

}
else
{
	if(input[i]>(7185+offset0))
{
	if(input[i]==(7187+offset0))
{
	vR[i] = 7187;
}
else
{
	vR[i] = 7186;
}

}
else
{
	if(input[i]==(7185+offset0))
{
	vR[i] = 7185;
}
else
{
	vR[i] = 7184;
}

}

}

}

}
else
{
	if(input[i]>(7175+offset0))
{
	if(input[i]>(7179+offset0))
{
	if(input[i]>(7181+offset0))
{
	if(input[i]==(7183+offset0))
{
	vR[i] = 7183;
}
else
{
	vR[i] = 7182;
}

}
else
{
	if(input[i]==(7181+offset0))
{
	vR[i] = 7181;
}
else
{
	vR[i] = 7180;
}

}

}
else
{
	if(input[i]>(7177+offset0))
{
	if(input[i]==(7179+offset0))
{
	vR[i] = 7179;
}
else
{
	vR[i] = 7178;
}

}
else
{
	if(input[i]==(7177+offset0))
{
	vR[i] = 7177;
}
else
{
	vR[i] = 7176;
}

}

}

}
else
{
	if(input[i]>(7171+offset0))
{
	if(input[i]>(7173+offset0))
{
	if(input[i]==(7175+offset0))
{
	vR[i] = 7175;
}
else
{
	vR[i] = 7174;
}

}
else
{
	if(input[i]==(7173+offset0))
{
	vR[i] = 7173;
}
else
{
	vR[i] = 7172;
}

}

}
else
{
	if(input[i]>(7169+offset0))
{
	if(input[i]==(7171+offset0))
{
	vR[i] = 7171;
}
else
{
	vR[i] = 7170;
}

}
else
{
	if(input[i]==(7169+offset0))
{
	vR[i] = 7169;
}
else
{
	vR[i] = 7168;
}

}

}

}

}

}

}

}

}

}

}
else
{
	if(input[i]>(6655+offset0))
{
	if(input[i]>(6911+offset0))
{
	if(input[i]>(7039+offset0))
{
	if(input[i]>(7103+offset0))
{
	if(input[i]>(7135+offset0))
{
	if(input[i]>(7151+offset0))
{
	if(input[i]>(7159+offset0))
{
	if(input[i]>(7163+offset0))
{
	if(input[i]>(7165+offset0))
{
	if(input[i]==(7167+offset0))
{
	vR[i] = 7167;
}
else
{
	vR[i] = 7166;
}

}
else
{
	if(input[i]==(7165+offset0))
{
	vR[i] = 7165;
}
else
{
	vR[i] = 7164;
}

}

}
else
{
	if(input[i]>(7161+offset0))
{
	if(input[i]==(7163+offset0))
{
	vR[i] = 7163;
}
else
{
	vR[i] = 7162;
}

}
else
{
	if(input[i]==(7161+offset0))
{
	vR[i] = 7161;
}
else
{
	vR[i] = 7160;
}

}

}

}
else
{
	if(input[i]>(7155+offset0))
{
	if(input[i]>(7157+offset0))
{
	if(input[i]==(7159+offset0))
{
	vR[i] = 7159;
}
else
{
	vR[i] = 7158;
}

}
else
{
	if(input[i]==(7157+offset0))
{
	vR[i] = 7157;
}
else
{
	vR[i] = 7156;
}

}

}
else
{
	if(input[i]>(7153+offset0))
{
	if(input[i]==(7155+offset0))
{
	vR[i] = 7155;
}
else
{
	vR[i] = 7154;
}

}
else
{
	if(input[i]==(7153+offset0))
{
	vR[i] = 7153;
}
else
{
	vR[i] = 7152;
}

}

}

}

}
else
{
	if(input[i]>(7143+offset0))
{
	if(input[i]>(7147+offset0))
{
	if(input[i]>(7149+offset0))
{
	if(input[i]==(7151+offset0))
{
	vR[i] = 7151;
}
else
{
	vR[i] = 7150;
}

}
else
{
	if(input[i]==(7149+offset0))
{
	vR[i] = 7149;
}
else
{
	vR[i] = 7148;
}

}

}
else
{
	if(input[i]>(7145+offset0))
{
	if(input[i]==(7147+offset0))
{
	vR[i] = 7147;
}
else
{
	vR[i] = 7146;
}

}
else
{
	if(input[i]==(7145+offset0))
{
	vR[i] = 7145;
}
else
{
	vR[i] = 7144;
}

}

}

}
else
{
	if(input[i]>(7139+offset0))
{
	if(input[i]>(7141+offset0))
{
	if(input[i]==(7143+offset0))
{
	vR[i] = 7143;
}
else
{
	vR[i] = 7142;
}

}
else
{
	if(input[i]==(7141+offset0))
{
	vR[i] = 7141;
}
else
{
	vR[i] = 7140;
}

}

}
else
{
	if(input[i]>(7137+offset0))
{
	if(input[i]==(7139+offset0))
{
	vR[i] = 7139;
}
else
{
	vR[i] = 7138;
}

}
else
{
	if(input[i]==(7137+offset0))
{
	vR[i] = 7137;
}
else
{
	vR[i] = 7136;
}

}

}

}

}

}
else
{
	if(input[i]>(7119+offset0))
{
	if(input[i]>(7127+offset0))
{
	if(input[i]>(7131+offset0))
{
	if(input[i]>(7133+offset0))
{
	if(input[i]==(7135+offset0))
{
	vR[i] = 7135;
}
else
{
	vR[i] = 7134;
}

}
else
{
	if(input[i]==(7133+offset0))
{
	vR[i] = 7133;
}
else
{
	vR[i] = 7132;
}

}

}
else
{
	if(input[i]>(7129+offset0))
{
	if(input[i]==(7131+offset0))
{
	vR[i] = 7131;
}
else
{
	vR[i] = 7130;
}

}
else
{
	if(input[i]==(7129+offset0))
{
	vR[i] = 7129;
}
else
{
	vR[i] = 7128;
}

}

}

}
else
{
	if(input[i]>(7123+offset0))
{
	if(input[i]>(7125+offset0))
{
	if(input[i]==(7127+offset0))
{
	vR[i] = 7127;
}
else
{
	vR[i] = 7126;
}

}
else
{
	if(input[i]==(7125+offset0))
{
	vR[i] = 7125;
}
else
{
	vR[i] = 7124;
}

}

}
else
{
	if(input[i]>(7121+offset0))
{
	if(input[i]==(7123+offset0))
{
	vR[i] = 7123;
}
else
{
	vR[i] = 7122;
}

}
else
{
	if(input[i]==(7121+offset0))
{
	vR[i] = 7121;
}
else
{
	vR[i] = 7120;
}

}

}

}

}
else
{
	if(input[i]>(7111+offset0))
{
	if(input[i]>(7115+offset0))
{
	if(input[i]>(7117+offset0))
{
	if(input[i]==(7119+offset0))
{
	vR[i] = 7119;
}
else
{
	vR[i] = 7118;
}

}
else
{
	if(input[i]==(7117+offset0))
{
	vR[i] = 7117;
}
else
{
	vR[i] = 7116;
}

}

}
else
{
	if(input[i]>(7113+offset0))
{
	if(input[i]==(7115+offset0))
{
	vR[i] = 7115;
}
else
{
	vR[i] = 7114;
}

}
else
{
	if(input[i]==(7113+offset0))
{
	vR[i] = 7113;
}
else
{
	vR[i] = 7112;
}

}

}

}
else
{
	if(input[i]>(7107+offset0))
{
	if(input[i]>(7109+offset0))
{
	if(input[i]==(7111+offset0))
{
	vR[i] = 7111;
}
else
{
	vR[i] = 7110;
}

}
else
{
	if(input[i]==(7109+offset0))
{
	vR[i] = 7109;
}
else
{
	vR[i] = 7108;
}

}

}
else
{
	if(input[i]>(7105+offset0))
{
	if(input[i]==(7107+offset0))
{
	vR[i] = 7107;
}
else
{
	vR[i] = 7106;
}

}
else
{
	if(input[i]==(7105+offset0))
{
	vR[i] = 7105;
}
else
{
	vR[i] = 7104;
}

}

}

}

}

}

}
else
{
	if(input[i]>(7071+offset0))
{
	if(input[i]>(7087+offset0))
{
	if(input[i]>(7095+offset0))
{
	if(input[i]>(7099+offset0))
{
	if(input[i]>(7101+offset0))
{
	if(input[i]==(7103+offset0))
{
	vR[i] = 7103;
}
else
{
	vR[i] = 7102;
}

}
else
{
	if(input[i]==(7101+offset0))
{
	vR[i] = 7101;
}
else
{
	vR[i] = 7100;
}

}

}
else
{
	if(input[i]>(7097+offset0))
{
	if(input[i]==(7099+offset0))
{
	vR[i] = 7099;
}
else
{
	vR[i] = 7098;
}

}
else
{
	if(input[i]==(7097+offset0))
{
	vR[i] = 7097;
}
else
{
	vR[i] = 7096;
}

}

}

}
else
{
	if(input[i]>(7091+offset0))
{
	if(input[i]>(7093+offset0))
{
	if(input[i]==(7095+offset0))
{
	vR[i] = 7095;
}
else
{
	vR[i] = 7094;
}

}
else
{
	if(input[i]==(7093+offset0))
{
	vR[i] = 7093;
}
else
{
	vR[i] = 7092;
}

}

}
else
{
	if(input[i]>(7089+offset0))
{
	if(input[i]==(7091+offset0))
{
	vR[i] = 7091;
}
else
{
	vR[i] = 7090;
}

}
else
{
	if(input[i]==(7089+offset0))
{
	vR[i] = 7089;
}
else
{
	vR[i] = 7088;
}

}

}

}

}
else
{
	if(input[i]>(7079+offset0))
{
	if(input[i]>(7083+offset0))
{
	if(input[i]>(7085+offset0))
{
	if(input[i]==(7087+offset0))
{
	vR[i] = 7087;
}
else
{
	vR[i] = 7086;
}

}
else
{
	if(input[i]==(7085+offset0))
{
	vR[i] = 7085;
}
else
{
	vR[i] = 7084;
}

}

}
else
{
	if(input[i]>(7081+offset0))
{
	if(input[i]==(7083+offset0))
{
	vR[i] = 7083;
}
else
{
	vR[i] = 7082;
}

}
else
{
	if(input[i]==(7081+offset0))
{
	vR[i] = 7081;
}
else
{
	vR[i] = 7080;
}

}

}

}
else
{
	if(input[i]>(7075+offset0))
{
	if(input[i]>(7077+offset0))
{
	if(input[i]==(7079+offset0))
{
	vR[i] = 7079;
}
else
{
	vR[i] = 7078;
}

}
else
{
	if(input[i]==(7077+offset0))
{
	vR[i] = 7077;
}
else
{
	vR[i] = 7076;
}

}

}
else
{
	if(input[i]>(7073+offset0))
{
	if(input[i]==(7075+offset0))
{
	vR[i] = 7075;
}
else
{
	vR[i] = 7074;
}

}
else
{
	if(input[i]==(7073+offset0))
{
	vR[i] = 7073;
}
else
{
	vR[i] = 7072;
}

}

}

}

}

}
else
{
	if(input[i]>(7055+offset0))
{
	if(input[i]>(7063+offset0))
{
	if(input[i]>(7067+offset0))
{
	if(input[i]>(7069+offset0))
{
	if(input[i]==(7071+offset0))
{
	vR[i] = 7071;
}
else
{
	vR[i] = 7070;
}

}
else
{
	if(input[i]==(7069+offset0))
{
	vR[i] = 7069;
}
else
{
	vR[i] = 7068;
}

}

}
else
{
	if(input[i]>(7065+offset0))
{
	if(input[i]==(7067+offset0))
{
	vR[i] = 7067;
}
else
{
	vR[i] = 7066;
}

}
else
{
	if(input[i]==(7065+offset0))
{
	vR[i] = 7065;
}
else
{
	vR[i] = 7064;
}

}

}

}
else
{
	if(input[i]>(7059+offset0))
{
	if(input[i]>(7061+offset0))
{
	if(input[i]==(7063+offset0))
{
	vR[i] = 7063;
}
else
{
	vR[i] = 7062;
}

}
else
{
	if(input[i]==(7061+offset0))
{
	vR[i] = 7061;
}
else
{
	vR[i] = 7060;
}

}

}
else
{
	if(input[i]>(7057+offset0))
{
	if(input[i]==(7059+offset0))
{
	vR[i] = 7059;
}
else
{
	vR[i] = 7058;
}

}
else
{
	if(input[i]==(7057+offset0))
{
	vR[i] = 7057;
}
else
{
	vR[i] = 7056;
}

}

}

}

}
else
{
	if(input[i]>(7047+offset0))
{
	if(input[i]>(7051+offset0))
{
	if(input[i]>(7053+offset0))
{
	if(input[i]==(7055+offset0))
{
	vR[i] = 7055;
}
else
{
	vR[i] = 7054;
}

}
else
{
	if(input[i]==(7053+offset0))
{
	vR[i] = 7053;
}
else
{
	vR[i] = 7052;
}

}

}
else
{
	if(input[i]>(7049+offset0))
{
	if(input[i]==(7051+offset0))
{
	vR[i] = 7051;
}
else
{
	vR[i] = 7050;
}

}
else
{
	if(input[i]==(7049+offset0))
{
	vR[i] = 7049;
}
else
{
	vR[i] = 7048;
}

}

}

}
else
{
	if(input[i]>(7043+offset0))
{
	if(input[i]>(7045+offset0))
{
	if(input[i]==(7047+offset0))
{
	vR[i] = 7047;
}
else
{
	vR[i] = 7046;
}

}
else
{
	if(input[i]==(7045+offset0))
{
	vR[i] = 7045;
}
else
{
	vR[i] = 7044;
}

}

}
else
{
	if(input[i]>(7041+offset0))
{
	if(input[i]==(7043+offset0))
{
	vR[i] = 7043;
}
else
{
	vR[i] = 7042;
}

}
else
{
	if(input[i]==(7041+offset0))
{
	vR[i] = 7041;
}
else
{
	vR[i] = 7040;
}

}

}

}

}

}

}

}
else
{
	if(input[i]>(6975+offset0))
{
	if(input[i]>(7007+offset0))
{
	if(input[i]>(7023+offset0))
{
	if(input[i]>(7031+offset0))
{
	if(input[i]>(7035+offset0))
{
	if(input[i]>(7037+offset0))
{
	if(input[i]==(7039+offset0))
{
	vR[i] = 7039;
}
else
{
	vR[i] = 7038;
}

}
else
{
	if(input[i]==(7037+offset0))
{
	vR[i] = 7037;
}
else
{
	vR[i] = 7036;
}

}

}
else
{
	if(input[i]>(7033+offset0))
{
	if(input[i]==(7035+offset0))
{
	vR[i] = 7035;
}
else
{
	vR[i] = 7034;
}

}
else
{
	if(input[i]==(7033+offset0))
{
	vR[i] = 7033;
}
else
{
	vR[i] = 7032;
}

}

}

}
else
{
	if(input[i]>(7027+offset0))
{
	if(input[i]>(7029+offset0))
{
	if(input[i]==(7031+offset0))
{
	vR[i] = 7031;
}
else
{
	vR[i] = 7030;
}

}
else
{
	if(input[i]==(7029+offset0))
{
	vR[i] = 7029;
}
else
{
	vR[i] = 7028;
}

}

}
else
{
	if(input[i]>(7025+offset0))
{
	if(input[i]==(7027+offset0))
{
	vR[i] = 7027;
}
else
{
	vR[i] = 7026;
}

}
else
{
	if(input[i]==(7025+offset0))
{
	vR[i] = 7025;
}
else
{
	vR[i] = 7024;
}

}

}

}

}
else
{
	if(input[i]>(7015+offset0))
{
	if(input[i]>(7019+offset0))
{
	if(input[i]>(7021+offset0))
{
	if(input[i]==(7023+offset0))
{
	vR[i] = 7023;
}
else
{
	vR[i] = 7022;
}

}
else
{
	if(input[i]==(7021+offset0))
{
	vR[i] = 7021;
}
else
{
	vR[i] = 7020;
}

}

}
else
{
	if(input[i]>(7017+offset0))
{
	if(input[i]==(7019+offset0))
{
	vR[i] = 7019;
}
else
{
	vR[i] = 7018;
}

}
else
{
	if(input[i]==(7017+offset0))
{
	vR[i] = 7017;
}
else
{
	vR[i] = 7016;
}

}

}

}
else
{
	if(input[i]>(7011+offset0))
{
	if(input[i]>(7013+offset0))
{
	if(input[i]==(7015+offset0))
{
	vR[i] = 7015;
}
else
{
	vR[i] = 7014;
}

}
else
{
	if(input[i]==(7013+offset0))
{
	vR[i] = 7013;
}
else
{
	vR[i] = 7012;
}

}

}
else
{
	if(input[i]>(7009+offset0))
{
	if(input[i]==(7011+offset0))
{
	vR[i] = 7011;
}
else
{
	vR[i] = 7010;
}

}
else
{
	if(input[i]==(7009+offset0))
{
	vR[i] = 7009;
}
else
{
	vR[i] = 7008;
}

}

}

}

}

}
else
{
	if(input[i]>(6991+offset0))
{
	if(input[i]>(6999+offset0))
{
	if(input[i]>(7003+offset0))
{
	if(input[i]>(7005+offset0))
{
	if(input[i]==(7007+offset0))
{
	vR[i] = 7007;
}
else
{
	vR[i] = 7006;
}

}
else
{
	if(input[i]==(7005+offset0))
{
	vR[i] = 7005;
}
else
{
	vR[i] = 7004;
}

}

}
else
{
	if(input[i]>(7001+offset0))
{
	if(input[i]==(7003+offset0))
{
	vR[i] = 7003;
}
else
{
	vR[i] = 7002;
}

}
else
{
	if(input[i]==(7001+offset0))
{
	vR[i] = 7001;
}
else
{
	vR[i] = 7000;
}

}

}

}
else
{
	if(input[i]>(6995+offset0))
{
	if(input[i]>(6997+offset0))
{
	if(input[i]==(6999+offset0))
{
	vR[i] = 6999;
}
else
{
	vR[i] = 6998;
}

}
else
{
	if(input[i]==(6997+offset0))
{
	vR[i] = 6997;
}
else
{
	vR[i] = 6996;
}

}

}
else
{
	if(input[i]>(6993+offset0))
{
	if(input[i]==(6995+offset0))
{
	vR[i] = 6995;
}
else
{
	vR[i] = 6994;
}

}
else
{
	if(input[i]==(6993+offset0))
{
	vR[i] = 6993;
}
else
{
	vR[i] = 6992;
}

}

}

}

}
else
{
	if(input[i]>(6983+offset0))
{
	if(input[i]>(6987+offset0))
{
	if(input[i]>(6989+offset0))
{
	if(input[i]==(6991+offset0))
{
	vR[i] = 6991;
}
else
{
	vR[i] = 6990;
}

}
else
{
	if(input[i]==(6989+offset0))
{
	vR[i] = 6989;
}
else
{
	vR[i] = 6988;
}

}

}
else
{
	if(input[i]>(6985+offset0))
{
	if(input[i]==(6987+offset0))
{
	vR[i] = 6987;
}
else
{
	vR[i] = 6986;
}

}
else
{
	if(input[i]==(6985+offset0))
{
	vR[i] = 6985;
}
else
{
	vR[i] = 6984;
}

}

}

}
else
{
	if(input[i]>(6979+offset0))
{
	if(input[i]>(6981+offset0))
{
	if(input[i]==(6983+offset0))
{
	vR[i] = 6983;
}
else
{
	vR[i] = 6982;
}

}
else
{
	if(input[i]==(6981+offset0))
{
	vR[i] = 6981;
}
else
{
	vR[i] = 6980;
}

}

}
else
{
	if(input[i]>(6977+offset0))
{
	if(input[i]==(6979+offset0))
{
	vR[i] = 6979;
}
else
{
	vR[i] = 6978;
}

}
else
{
	if(input[i]==(6977+offset0))
{
	vR[i] = 6977;
}
else
{
	vR[i] = 6976;
}

}

}

}

}

}

}
else
{
	if(input[i]>(6943+offset0))
{
	if(input[i]>(6959+offset0))
{
	if(input[i]>(6967+offset0))
{
	if(input[i]>(6971+offset0))
{
	if(input[i]>(6973+offset0))
{
	if(input[i]==(6975+offset0))
{
	vR[i] = 6975;
}
else
{
	vR[i] = 6974;
}

}
else
{
	if(input[i]==(6973+offset0))
{
	vR[i] = 6973;
}
else
{
	vR[i] = 6972;
}

}

}
else
{
	if(input[i]>(6969+offset0))
{
	if(input[i]==(6971+offset0))
{
	vR[i] = 6971;
}
else
{
	vR[i] = 6970;
}

}
else
{
	if(input[i]==(6969+offset0))
{
	vR[i] = 6969;
}
else
{
	vR[i] = 6968;
}

}

}

}
else
{
	if(input[i]>(6963+offset0))
{
	if(input[i]>(6965+offset0))
{
	if(input[i]==(6967+offset0))
{
	vR[i] = 6967;
}
else
{
	vR[i] = 6966;
}

}
else
{
	if(input[i]==(6965+offset0))
{
	vR[i] = 6965;
}
else
{
	vR[i] = 6964;
}

}

}
else
{
	if(input[i]>(6961+offset0))
{
	if(input[i]==(6963+offset0))
{
	vR[i] = 6963;
}
else
{
	vR[i] = 6962;
}

}
else
{
	if(input[i]==(6961+offset0))
{
	vR[i] = 6961;
}
else
{
	vR[i] = 6960;
}

}

}

}

}
else
{
	if(input[i]>(6951+offset0))
{
	if(input[i]>(6955+offset0))
{
	if(input[i]>(6957+offset0))
{
	if(input[i]==(6959+offset0))
{
	vR[i] = 6959;
}
else
{
	vR[i] = 6958;
}

}
else
{
	if(input[i]==(6957+offset0))
{
	vR[i] = 6957;
}
else
{
	vR[i] = 6956;
}

}

}
else
{
	if(input[i]>(6953+offset0))
{
	if(input[i]==(6955+offset0))
{
	vR[i] = 6955;
}
else
{
	vR[i] = 6954;
}

}
else
{
	if(input[i]==(6953+offset0))
{
	vR[i] = 6953;
}
else
{
	vR[i] = 6952;
}

}

}

}
else
{
	if(input[i]>(6947+offset0))
{
	if(input[i]>(6949+offset0))
{
	if(input[i]==(6951+offset0))
{
	vR[i] = 6951;
}
else
{
	vR[i] = 6950;
}

}
else
{
	if(input[i]==(6949+offset0))
{
	vR[i] = 6949;
}
else
{
	vR[i] = 6948;
}

}

}
else
{
	if(input[i]>(6945+offset0))
{
	if(input[i]==(6947+offset0))
{
	vR[i] = 6947;
}
else
{
	vR[i] = 6946;
}

}
else
{
	if(input[i]==(6945+offset0))
{
	vR[i] = 6945;
}
else
{
	vR[i] = 6944;
}

}

}

}

}

}
else
{
	if(input[i]>(6927+offset0))
{
	if(input[i]>(6935+offset0))
{
	if(input[i]>(6939+offset0))
{
	if(input[i]>(6941+offset0))
{
	if(input[i]==(6943+offset0))
{
	vR[i] = 6943;
}
else
{
	vR[i] = 6942;
}

}
else
{
	if(input[i]==(6941+offset0))
{
	vR[i] = 6941;
}
else
{
	vR[i] = 6940;
}

}

}
else
{
	if(input[i]>(6937+offset0))
{
	if(input[i]==(6939+offset0))
{
	vR[i] = 6939;
}
else
{
	vR[i] = 6938;
}

}
else
{
	if(input[i]==(6937+offset0))
{
	vR[i] = 6937;
}
else
{
	vR[i] = 6936;
}

}

}

}
else
{
	if(input[i]>(6931+offset0))
{
	if(input[i]>(6933+offset0))
{
	if(input[i]==(6935+offset0))
{
	vR[i] = 6935;
}
else
{
	vR[i] = 6934;
}

}
else
{
	if(input[i]==(6933+offset0))
{
	vR[i] = 6933;
}
else
{
	vR[i] = 6932;
}

}

}
else
{
	if(input[i]>(6929+offset0))
{
	if(input[i]==(6931+offset0))
{
	vR[i] = 6931;
}
else
{
	vR[i] = 6930;
}

}
else
{
	if(input[i]==(6929+offset0))
{
	vR[i] = 6929;
}
else
{
	vR[i] = 6928;
}

}

}

}

}
else
{
	if(input[i]>(6919+offset0))
{
	if(input[i]>(6923+offset0))
{
	if(input[i]>(6925+offset0))
{
	if(input[i]==(6927+offset0))
{
	vR[i] = 6927;
}
else
{
	vR[i] = 6926;
}

}
else
{
	if(input[i]==(6925+offset0))
{
	vR[i] = 6925;
}
else
{
	vR[i] = 6924;
}

}

}
else
{
	if(input[i]>(6921+offset0))
{
	if(input[i]==(6923+offset0))
{
	vR[i] = 6923;
}
else
{
	vR[i] = 6922;
}

}
else
{
	if(input[i]==(6921+offset0))
{
	vR[i] = 6921;
}
else
{
	vR[i] = 6920;
}

}

}

}
else
{
	if(input[i]>(6915+offset0))
{
	if(input[i]>(6917+offset0))
{
	if(input[i]==(6919+offset0))
{
	vR[i] = 6919;
}
else
{
	vR[i] = 6918;
}

}
else
{
	if(input[i]==(6917+offset0))
{
	vR[i] = 6917;
}
else
{
	vR[i] = 6916;
}

}

}
else
{
	if(input[i]>(6913+offset0))
{
	if(input[i]==(6915+offset0))
{
	vR[i] = 6915;
}
else
{
	vR[i] = 6914;
}

}
else
{
	if(input[i]==(6913+offset0))
{
	vR[i] = 6913;
}
else
{
	vR[i] = 6912;
}

}

}

}

}

}

}

}

}
else
{
	if(input[i]>(6783+offset0))
{
	if(input[i]>(6847+offset0))
{
	if(input[i]>(6879+offset0))
{
	if(input[i]>(6895+offset0))
{
	if(input[i]>(6903+offset0))
{
	if(input[i]>(6907+offset0))
{
	if(input[i]>(6909+offset0))
{
	if(input[i]==(6911+offset0))
{
	vR[i] = 6911;
}
else
{
	vR[i] = 6910;
}

}
else
{
	if(input[i]==(6909+offset0))
{
	vR[i] = 6909;
}
else
{
	vR[i] = 6908;
}

}

}
else
{
	if(input[i]>(6905+offset0))
{
	if(input[i]==(6907+offset0))
{
	vR[i] = 6907;
}
else
{
	vR[i] = 6906;
}

}
else
{
	if(input[i]==(6905+offset0))
{
	vR[i] = 6905;
}
else
{
	vR[i] = 6904;
}

}

}

}
else
{
	if(input[i]>(6899+offset0))
{
	if(input[i]>(6901+offset0))
{
	if(input[i]==(6903+offset0))
{
	vR[i] = 6903;
}
else
{
	vR[i] = 6902;
}

}
else
{
	if(input[i]==(6901+offset0))
{
	vR[i] = 6901;
}
else
{
	vR[i] = 6900;
}

}

}
else
{
	if(input[i]>(6897+offset0))
{
	if(input[i]==(6899+offset0))
{
	vR[i] = 6899;
}
else
{
	vR[i] = 6898;
}

}
else
{
	if(input[i]==(6897+offset0))
{
	vR[i] = 6897;
}
else
{
	vR[i] = 6896;
}

}

}

}

}
else
{
	if(input[i]>(6887+offset0))
{
	if(input[i]>(6891+offset0))
{
	if(input[i]>(6893+offset0))
{
	if(input[i]==(6895+offset0))
{
	vR[i] = 6895;
}
else
{
	vR[i] = 6894;
}

}
else
{
	if(input[i]==(6893+offset0))
{
	vR[i] = 6893;
}
else
{
	vR[i] = 6892;
}

}

}
else
{
	if(input[i]>(6889+offset0))
{
	if(input[i]==(6891+offset0))
{
	vR[i] = 6891;
}
else
{
	vR[i] = 6890;
}

}
else
{
	if(input[i]==(6889+offset0))
{
	vR[i] = 6889;
}
else
{
	vR[i] = 6888;
}

}

}

}
else
{
	if(input[i]>(6883+offset0))
{
	if(input[i]>(6885+offset0))
{
	if(input[i]==(6887+offset0))
{
	vR[i] = 6887;
}
else
{
	vR[i] = 6886;
}

}
else
{
	if(input[i]==(6885+offset0))
{
	vR[i] = 6885;
}
else
{
	vR[i] = 6884;
}

}

}
else
{
	if(input[i]>(6881+offset0))
{
	if(input[i]==(6883+offset0))
{
	vR[i] = 6883;
}
else
{
	vR[i] = 6882;
}

}
else
{
	if(input[i]==(6881+offset0))
{
	vR[i] = 6881;
}
else
{
	vR[i] = 6880;
}

}

}

}

}

}
else
{
	if(input[i]>(6863+offset0))
{
	if(input[i]>(6871+offset0))
{
	if(input[i]>(6875+offset0))
{
	if(input[i]>(6877+offset0))
{
	if(input[i]==(6879+offset0))
{
	vR[i] = 6879;
}
else
{
	vR[i] = 6878;
}

}
else
{
	if(input[i]==(6877+offset0))
{
	vR[i] = 6877;
}
else
{
	vR[i] = 6876;
}

}

}
else
{
	if(input[i]>(6873+offset0))
{
	if(input[i]==(6875+offset0))
{
	vR[i] = 6875;
}
else
{
	vR[i] = 6874;
}

}
else
{
	if(input[i]==(6873+offset0))
{
	vR[i] = 6873;
}
else
{
	vR[i] = 6872;
}

}

}

}
else
{
	if(input[i]>(6867+offset0))
{
	if(input[i]>(6869+offset0))
{
	if(input[i]==(6871+offset0))
{
	vR[i] = 6871;
}
else
{
	vR[i] = 6870;
}

}
else
{
	if(input[i]==(6869+offset0))
{
	vR[i] = 6869;
}
else
{
	vR[i] = 6868;
}

}

}
else
{
	if(input[i]>(6865+offset0))
{
	if(input[i]==(6867+offset0))
{
	vR[i] = 6867;
}
else
{
	vR[i] = 6866;
}

}
else
{
	if(input[i]==(6865+offset0))
{
	vR[i] = 6865;
}
else
{
	vR[i] = 6864;
}

}

}

}

}
else
{
	if(input[i]>(6855+offset0))
{
	if(input[i]>(6859+offset0))
{
	if(input[i]>(6861+offset0))
{
	if(input[i]==(6863+offset0))
{
	vR[i] = 6863;
}
else
{
	vR[i] = 6862;
}

}
else
{
	if(input[i]==(6861+offset0))
{
	vR[i] = 6861;
}
else
{
	vR[i] = 6860;
}

}

}
else
{
	if(input[i]>(6857+offset0))
{
	if(input[i]==(6859+offset0))
{
	vR[i] = 6859;
}
else
{
	vR[i] = 6858;
}

}
else
{
	if(input[i]==(6857+offset0))
{
	vR[i] = 6857;
}
else
{
	vR[i] = 6856;
}

}

}

}
else
{
	if(input[i]>(6851+offset0))
{
	if(input[i]>(6853+offset0))
{
	if(input[i]==(6855+offset0))
{
	vR[i] = 6855;
}
else
{
	vR[i] = 6854;
}

}
else
{
	if(input[i]==(6853+offset0))
{
	vR[i] = 6853;
}
else
{
	vR[i] = 6852;
}

}

}
else
{
	if(input[i]>(6849+offset0))
{
	if(input[i]==(6851+offset0))
{
	vR[i] = 6851;
}
else
{
	vR[i] = 6850;
}

}
else
{
	if(input[i]==(6849+offset0))
{
	vR[i] = 6849;
}
else
{
	vR[i] = 6848;
}

}

}

}

}

}

}
else
{
	if(input[i]>(6815+offset0))
{
	if(input[i]>(6831+offset0))
{
	if(input[i]>(6839+offset0))
{
	if(input[i]>(6843+offset0))
{
	if(input[i]>(6845+offset0))
{
	if(input[i]==(6847+offset0))
{
	vR[i] = 6847;
}
else
{
	vR[i] = 6846;
}

}
else
{
	if(input[i]==(6845+offset0))
{
	vR[i] = 6845;
}
else
{
	vR[i] = 6844;
}

}

}
else
{
	if(input[i]>(6841+offset0))
{
	if(input[i]==(6843+offset0))
{
	vR[i] = 6843;
}
else
{
	vR[i] = 6842;
}

}
else
{
	if(input[i]==(6841+offset0))
{
	vR[i] = 6841;
}
else
{
	vR[i] = 6840;
}

}

}

}
else
{
	if(input[i]>(6835+offset0))
{
	if(input[i]>(6837+offset0))
{
	if(input[i]==(6839+offset0))
{
	vR[i] = 6839;
}
else
{
	vR[i] = 6838;
}

}
else
{
	if(input[i]==(6837+offset0))
{
	vR[i] = 6837;
}
else
{
	vR[i] = 6836;
}

}

}
else
{
	if(input[i]>(6833+offset0))
{
	if(input[i]==(6835+offset0))
{
	vR[i] = 6835;
}
else
{
	vR[i] = 6834;
}

}
else
{
	if(input[i]==(6833+offset0))
{
	vR[i] = 6833;
}
else
{
	vR[i] = 6832;
}

}

}

}

}
else
{
	if(input[i]>(6823+offset0))
{
	if(input[i]>(6827+offset0))
{
	if(input[i]>(6829+offset0))
{
	if(input[i]==(6831+offset0))
{
	vR[i] = 6831;
}
else
{
	vR[i] = 6830;
}

}
else
{
	if(input[i]==(6829+offset0))
{
	vR[i] = 6829;
}
else
{
	vR[i] = 6828;
}

}

}
else
{
	if(input[i]>(6825+offset0))
{
	if(input[i]==(6827+offset0))
{
	vR[i] = 6827;
}
else
{
	vR[i] = 6826;
}

}
else
{
	if(input[i]==(6825+offset0))
{
	vR[i] = 6825;
}
else
{
	vR[i] = 6824;
}

}

}

}
else
{
	if(input[i]>(6819+offset0))
{
	if(input[i]>(6821+offset0))
{
	if(input[i]==(6823+offset0))
{
	vR[i] = 6823;
}
else
{
	vR[i] = 6822;
}

}
else
{
	if(input[i]==(6821+offset0))
{
	vR[i] = 6821;
}
else
{
	vR[i] = 6820;
}

}

}
else
{
	if(input[i]>(6817+offset0))
{
	if(input[i]==(6819+offset0))
{
	vR[i] = 6819;
}
else
{
	vR[i] = 6818;
}

}
else
{
	if(input[i]==(6817+offset0))
{
	vR[i] = 6817;
}
else
{
	vR[i] = 6816;
}

}

}

}

}

}
else
{
	if(input[i]>(6799+offset0))
{
	if(input[i]>(6807+offset0))
{
	if(input[i]>(6811+offset0))
{
	if(input[i]>(6813+offset0))
{
	if(input[i]==(6815+offset0))
{
	vR[i] = 6815;
}
else
{
	vR[i] = 6814;
}

}
else
{
	if(input[i]==(6813+offset0))
{
	vR[i] = 6813;
}
else
{
	vR[i] = 6812;
}

}

}
else
{
	if(input[i]>(6809+offset0))
{
	if(input[i]==(6811+offset0))
{
	vR[i] = 6811;
}
else
{
	vR[i] = 6810;
}

}
else
{
	if(input[i]==(6809+offset0))
{
	vR[i] = 6809;
}
else
{
	vR[i] = 6808;
}

}

}

}
else
{
	if(input[i]>(6803+offset0))
{
	if(input[i]>(6805+offset0))
{
	if(input[i]==(6807+offset0))
{
	vR[i] = 6807;
}
else
{
	vR[i] = 6806;
}

}
else
{
	if(input[i]==(6805+offset0))
{
	vR[i] = 6805;
}
else
{
	vR[i] = 6804;
}

}

}
else
{
	if(input[i]>(6801+offset0))
{
	if(input[i]==(6803+offset0))
{
	vR[i] = 6803;
}
else
{
	vR[i] = 6802;
}

}
else
{
	if(input[i]==(6801+offset0))
{
	vR[i] = 6801;
}
else
{
	vR[i] = 6800;
}

}

}

}

}
else
{
	if(input[i]>(6791+offset0))
{
	if(input[i]>(6795+offset0))
{
	if(input[i]>(6797+offset0))
{
	if(input[i]==(6799+offset0))
{
	vR[i] = 6799;
}
else
{
	vR[i] = 6798;
}

}
else
{
	if(input[i]==(6797+offset0))
{
	vR[i] = 6797;
}
else
{
	vR[i] = 6796;
}

}

}
else
{
	if(input[i]>(6793+offset0))
{
	if(input[i]==(6795+offset0))
{
	vR[i] = 6795;
}
else
{
	vR[i] = 6794;
}

}
else
{
	if(input[i]==(6793+offset0))
{
	vR[i] = 6793;
}
else
{
	vR[i] = 6792;
}

}

}

}
else
{
	if(input[i]>(6787+offset0))
{
	if(input[i]>(6789+offset0))
{
	if(input[i]==(6791+offset0))
{
	vR[i] = 6791;
}
else
{
	vR[i] = 6790;
}

}
else
{
	if(input[i]==(6789+offset0))
{
	vR[i] = 6789;
}
else
{
	vR[i] = 6788;
}

}

}
else
{
	if(input[i]>(6785+offset0))
{
	if(input[i]==(6787+offset0))
{
	vR[i] = 6787;
}
else
{
	vR[i] = 6786;
}

}
else
{
	if(input[i]==(6785+offset0))
{
	vR[i] = 6785;
}
else
{
	vR[i] = 6784;
}

}

}

}

}

}

}

}
else
{
	if(input[i]>(6719+offset0))
{
	if(input[i]>(6751+offset0))
{
	if(input[i]>(6767+offset0))
{
	if(input[i]>(6775+offset0))
{
	if(input[i]>(6779+offset0))
{
	if(input[i]>(6781+offset0))
{
	if(input[i]==(6783+offset0))
{
	vR[i] = 6783;
}
else
{
	vR[i] = 6782;
}

}
else
{
	if(input[i]==(6781+offset0))
{
	vR[i] = 6781;
}
else
{
	vR[i] = 6780;
}

}

}
else
{
	if(input[i]>(6777+offset0))
{
	if(input[i]==(6779+offset0))
{
	vR[i] = 6779;
}
else
{
	vR[i] = 6778;
}

}
else
{
	if(input[i]==(6777+offset0))
{
	vR[i] = 6777;
}
else
{
	vR[i] = 6776;
}

}

}

}
else
{
	if(input[i]>(6771+offset0))
{
	if(input[i]>(6773+offset0))
{
	if(input[i]==(6775+offset0))
{
	vR[i] = 6775;
}
else
{
	vR[i] = 6774;
}

}
else
{
	if(input[i]==(6773+offset0))
{
	vR[i] = 6773;
}
else
{
	vR[i] = 6772;
}

}

}
else
{
	if(input[i]>(6769+offset0))
{
	if(input[i]==(6771+offset0))
{
	vR[i] = 6771;
}
else
{
	vR[i] = 6770;
}

}
else
{
	if(input[i]==(6769+offset0))
{
	vR[i] = 6769;
}
else
{
	vR[i] = 6768;
}

}

}

}

}
else
{
	if(input[i]>(6759+offset0))
{
	if(input[i]>(6763+offset0))
{
	if(input[i]>(6765+offset0))
{
	if(input[i]==(6767+offset0))
{
	vR[i] = 6767;
}
else
{
	vR[i] = 6766;
}

}
else
{
	if(input[i]==(6765+offset0))
{
	vR[i] = 6765;
}
else
{
	vR[i] = 6764;
}

}

}
else
{
	if(input[i]>(6761+offset0))
{
	if(input[i]==(6763+offset0))
{
	vR[i] = 6763;
}
else
{
	vR[i] = 6762;
}

}
else
{
	if(input[i]==(6761+offset0))
{
	vR[i] = 6761;
}
else
{
	vR[i] = 6760;
}

}

}

}
else
{
	if(input[i]>(6755+offset0))
{
	if(input[i]>(6757+offset0))
{
	if(input[i]==(6759+offset0))
{
	vR[i] = 6759;
}
else
{
	vR[i] = 6758;
}

}
else
{
	if(input[i]==(6757+offset0))
{
	vR[i] = 6757;
}
else
{
	vR[i] = 6756;
}

}

}
else
{
	if(input[i]>(6753+offset0))
{
	if(input[i]==(6755+offset0))
{
	vR[i] = 6755;
}
else
{
	vR[i] = 6754;
}

}
else
{
	if(input[i]==(6753+offset0))
{
	vR[i] = 6753;
}
else
{
	vR[i] = 6752;
}

}

}

}

}

}
else
{
	if(input[i]>(6735+offset0))
{
	if(input[i]>(6743+offset0))
{
	if(input[i]>(6747+offset0))
{
	if(input[i]>(6749+offset0))
{
	if(input[i]==(6751+offset0))
{
	vR[i] = 6751;
}
else
{
	vR[i] = 6750;
}

}
else
{
	if(input[i]==(6749+offset0))
{
	vR[i] = 6749;
}
else
{
	vR[i] = 6748;
}

}

}
else
{
	if(input[i]>(6745+offset0))
{
	if(input[i]==(6747+offset0))
{
	vR[i] = 6747;
}
else
{
	vR[i] = 6746;
}

}
else
{
	if(input[i]==(6745+offset0))
{
	vR[i] = 6745;
}
else
{
	vR[i] = 6744;
}

}

}

}
else
{
	if(input[i]>(6739+offset0))
{
	if(input[i]>(6741+offset0))
{
	if(input[i]==(6743+offset0))
{
	vR[i] = 6743;
}
else
{
	vR[i] = 6742;
}

}
else
{
	if(input[i]==(6741+offset0))
{
	vR[i] = 6741;
}
else
{
	vR[i] = 6740;
}

}

}
else
{
	if(input[i]>(6737+offset0))
{
	if(input[i]==(6739+offset0))
{
	vR[i] = 6739;
}
else
{
	vR[i] = 6738;
}

}
else
{
	if(input[i]==(6737+offset0))
{
	vR[i] = 6737;
}
else
{
	vR[i] = 6736;
}

}

}

}

}
else
{
	if(input[i]>(6727+offset0))
{
	if(input[i]>(6731+offset0))
{
	if(input[i]>(6733+offset0))
{
	if(input[i]==(6735+offset0))
{
	vR[i] = 6735;
}
else
{
	vR[i] = 6734;
}

}
else
{
	if(input[i]==(6733+offset0))
{
	vR[i] = 6733;
}
else
{
	vR[i] = 6732;
}

}

}
else
{
	if(input[i]>(6729+offset0))
{
	if(input[i]==(6731+offset0))
{
	vR[i] = 6731;
}
else
{
	vR[i] = 6730;
}

}
else
{
	if(input[i]==(6729+offset0))
{
	vR[i] = 6729;
}
else
{
	vR[i] = 6728;
}

}

}

}
else
{
	if(input[i]>(6723+offset0))
{
	if(input[i]>(6725+offset0))
{
	if(input[i]==(6727+offset0))
{
	vR[i] = 6727;
}
else
{
	vR[i] = 6726;
}

}
else
{
	if(input[i]==(6725+offset0))
{
	vR[i] = 6725;
}
else
{
	vR[i] = 6724;
}

}

}
else
{
	if(input[i]>(6721+offset0))
{
	if(input[i]==(6723+offset0))
{
	vR[i] = 6723;
}
else
{
	vR[i] = 6722;
}

}
else
{
	if(input[i]==(6721+offset0))
{
	vR[i] = 6721;
}
else
{
	vR[i] = 6720;
}

}

}

}

}

}

}
else
{
	if(input[i]>(6687+offset0))
{
	if(input[i]>(6703+offset0))
{
	if(input[i]>(6711+offset0))
{
	if(input[i]>(6715+offset0))
{
	if(input[i]>(6717+offset0))
{
	if(input[i]==(6719+offset0))
{
	vR[i] = 6719;
}
else
{
	vR[i] = 6718;
}

}
else
{
	if(input[i]==(6717+offset0))
{
	vR[i] = 6717;
}
else
{
	vR[i] = 6716;
}

}

}
else
{
	if(input[i]>(6713+offset0))
{
	if(input[i]==(6715+offset0))
{
	vR[i] = 6715;
}
else
{
	vR[i] = 6714;
}

}
else
{
	if(input[i]==(6713+offset0))
{
	vR[i] = 6713;
}
else
{
	vR[i] = 6712;
}

}

}

}
else
{
	if(input[i]>(6707+offset0))
{
	if(input[i]>(6709+offset0))
{
	if(input[i]==(6711+offset0))
{
	vR[i] = 6711;
}
else
{
	vR[i] = 6710;
}

}
else
{
	if(input[i]==(6709+offset0))
{
	vR[i] = 6709;
}
else
{
	vR[i] = 6708;
}

}

}
else
{
	if(input[i]>(6705+offset0))
{
	if(input[i]==(6707+offset0))
{
	vR[i] = 6707;
}
else
{
	vR[i] = 6706;
}

}
else
{
	if(input[i]==(6705+offset0))
{
	vR[i] = 6705;
}
else
{
	vR[i] = 6704;
}

}

}

}

}
else
{
	if(input[i]>(6695+offset0))
{
	if(input[i]>(6699+offset0))
{
	if(input[i]>(6701+offset0))
{
	if(input[i]==(6703+offset0))
{
	vR[i] = 6703;
}
else
{
	vR[i] = 6702;
}

}
else
{
	if(input[i]==(6701+offset0))
{
	vR[i] = 6701;
}
else
{
	vR[i] = 6700;
}

}

}
else
{
	if(input[i]>(6697+offset0))
{
	if(input[i]==(6699+offset0))
{
	vR[i] = 6699;
}
else
{
	vR[i] = 6698;
}

}
else
{
	if(input[i]==(6697+offset0))
{
	vR[i] = 6697;
}
else
{
	vR[i] = 6696;
}

}

}

}
else
{
	if(input[i]>(6691+offset0))
{
	if(input[i]>(6693+offset0))
{
	if(input[i]==(6695+offset0))
{
	vR[i] = 6695;
}
else
{
	vR[i] = 6694;
}

}
else
{
	if(input[i]==(6693+offset0))
{
	vR[i] = 6693;
}
else
{
	vR[i] = 6692;
}

}

}
else
{
	if(input[i]>(6689+offset0))
{
	if(input[i]==(6691+offset0))
{
	vR[i] = 6691;
}
else
{
	vR[i] = 6690;
}

}
else
{
	if(input[i]==(6689+offset0))
{
	vR[i] = 6689;
}
else
{
	vR[i] = 6688;
}

}

}

}

}

}
else
{
	if(input[i]>(6671+offset0))
{
	if(input[i]>(6679+offset0))
{
	if(input[i]>(6683+offset0))
{
	if(input[i]>(6685+offset0))
{
	if(input[i]==(6687+offset0))
{
	vR[i] = 6687;
}
else
{
	vR[i] = 6686;
}

}
else
{
	if(input[i]==(6685+offset0))
{
	vR[i] = 6685;
}
else
{
	vR[i] = 6684;
}

}

}
else
{
	if(input[i]>(6681+offset0))
{
	if(input[i]==(6683+offset0))
{
	vR[i] = 6683;
}
else
{
	vR[i] = 6682;
}

}
else
{
	if(input[i]==(6681+offset0))
{
	vR[i] = 6681;
}
else
{
	vR[i] = 6680;
}

}

}

}
else
{
	if(input[i]>(6675+offset0))
{
	if(input[i]>(6677+offset0))
{
	if(input[i]==(6679+offset0))
{
	vR[i] = 6679;
}
else
{
	vR[i] = 6678;
}

}
else
{
	if(input[i]==(6677+offset0))
{
	vR[i] = 6677;
}
else
{
	vR[i] = 6676;
}

}

}
else
{
	if(input[i]>(6673+offset0))
{
	if(input[i]==(6675+offset0))
{
	vR[i] = 6675;
}
else
{
	vR[i] = 6674;
}

}
else
{
	if(input[i]==(6673+offset0))
{
	vR[i] = 6673;
}
else
{
	vR[i] = 6672;
}

}

}

}

}
else
{
	if(input[i]>(6663+offset0))
{
	if(input[i]>(6667+offset0))
{
	if(input[i]>(6669+offset0))
{
	if(input[i]==(6671+offset0))
{
	vR[i] = 6671;
}
else
{
	vR[i] = 6670;
}

}
else
{
	if(input[i]==(6669+offset0))
{
	vR[i] = 6669;
}
else
{
	vR[i] = 6668;
}

}

}
else
{
	if(input[i]>(6665+offset0))
{
	if(input[i]==(6667+offset0))
{
	vR[i] = 6667;
}
else
{
	vR[i] = 6666;
}

}
else
{
	if(input[i]==(6665+offset0))
{
	vR[i] = 6665;
}
else
{
	vR[i] = 6664;
}

}

}

}
else
{
	if(input[i]>(6659+offset0))
{
	if(input[i]>(6661+offset0))
{
	if(input[i]==(6663+offset0))
{
	vR[i] = 6663;
}
else
{
	vR[i] = 6662;
}

}
else
{
	if(input[i]==(6661+offset0))
{
	vR[i] = 6661;
}
else
{
	vR[i] = 6660;
}

}

}
else
{
	if(input[i]>(6657+offset0))
{
	if(input[i]==(6659+offset0))
{
	vR[i] = 6659;
}
else
{
	vR[i] = 6658;
}

}
else
{
	if(input[i]==(6657+offset0))
{
	vR[i] = 6657;
}
else
{
	vR[i] = 6656;
}

}

}

}

}

}

}

}

}

}
else
{
	if(input[i]>(6399+offset0))
{
	if(input[i]>(6527+offset0))
{
	if(input[i]>(6591+offset0))
{
	if(input[i]>(6623+offset0))
{
	if(input[i]>(6639+offset0))
{
	if(input[i]>(6647+offset0))
{
	if(input[i]>(6651+offset0))
{
	if(input[i]>(6653+offset0))
{
	if(input[i]==(6655+offset0))
{
	vR[i] = 6655;
}
else
{
	vR[i] = 6654;
}

}
else
{
	if(input[i]==(6653+offset0))
{
	vR[i] = 6653;
}
else
{
	vR[i] = 6652;
}

}

}
else
{
	if(input[i]>(6649+offset0))
{
	if(input[i]==(6651+offset0))
{
	vR[i] = 6651;
}
else
{
	vR[i] = 6650;
}

}
else
{
	if(input[i]==(6649+offset0))
{
	vR[i] = 6649;
}
else
{
	vR[i] = 6648;
}

}

}

}
else
{
	if(input[i]>(6643+offset0))
{
	if(input[i]>(6645+offset0))
{
	if(input[i]==(6647+offset0))
{
	vR[i] = 6647;
}
else
{
	vR[i] = 6646;
}

}
else
{
	if(input[i]==(6645+offset0))
{
	vR[i] = 6645;
}
else
{
	vR[i] = 6644;
}

}

}
else
{
	if(input[i]>(6641+offset0))
{
	if(input[i]==(6643+offset0))
{
	vR[i] = 6643;
}
else
{
	vR[i] = 6642;
}

}
else
{
	if(input[i]==(6641+offset0))
{
	vR[i] = 6641;
}
else
{
	vR[i] = 6640;
}

}

}

}

}
else
{
	if(input[i]>(6631+offset0))
{
	if(input[i]>(6635+offset0))
{
	if(input[i]>(6637+offset0))
{
	if(input[i]==(6639+offset0))
{
	vR[i] = 6639;
}
else
{
	vR[i] = 6638;
}

}
else
{
	if(input[i]==(6637+offset0))
{
	vR[i] = 6637;
}
else
{
	vR[i] = 6636;
}

}

}
else
{
	if(input[i]>(6633+offset0))
{
	if(input[i]==(6635+offset0))
{
	vR[i] = 6635;
}
else
{
	vR[i] = 6634;
}

}
else
{
	if(input[i]==(6633+offset0))
{
	vR[i] = 6633;
}
else
{
	vR[i] = 6632;
}

}

}

}
else
{
	if(input[i]>(6627+offset0))
{
	if(input[i]>(6629+offset0))
{
	if(input[i]==(6631+offset0))
{
	vR[i] = 6631;
}
else
{
	vR[i] = 6630;
}

}
else
{
	if(input[i]==(6629+offset0))
{
	vR[i] = 6629;
}
else
{
	vR[i] = 6628;
}

}

}
else
{
	if(input[i]>(6625+offset0))
{
	if(input[i]==(6627+offset0))
{
	vR[i] = 6627;
}
else
{
	vR[i] = 6626;
}

}
else
{
	if(input[i]==(6625+offset0))
{
	vR[i] = 6625;
}
else
{
	vR[i] = 6624;
}

}

}

}

}

}
else
{
	if(input[i]>(6607+offset0))
{
	if(input[i]>(6615+offset0))
{
	if(input[i]>(6619+offset0))
{
	if(input[i]>(6621+offset0))
{
	if(input[i]==(6623+offset0))
{
	vR[i] = 6623;
}
else
{
	vR[i] = 6622;
}

}
else
{
	if(input[i]==(6621+offset0))
{
	vR[i] = 6621;
}
else
{
	vR[i] = 6620;
}

}

}
else
{
	if(input[i]>(6617+offset0))
{
	if(input[i]==(6619+offset0))
{
	vR[i] = 6619;
}
else
{
	vR[i] = 6618;
}

}
else
{
	if(input[i]==(6617+offset0))
{
	vR[i] = 6617;
}
else
{
	vR[i] = 6616;
}

}

}

}
else
{
	if(input[i]>(6611+offset0))
{
	if(input[i]>(6613+offset0))
{
	if(input[i]==(6615+offset0))
{
	vR[i] = 6615;
}
else
{
	vR[i] = 6614;
}

}
else
{
	if(input[i]==(6613+offset0))
{
	vR[i] = 6613;
}
else
{
	vR[i] = 6612;
}

}

}
else
{
	if(input[i]>(6609+offset0))
{
	if(input[i]==(6611+offset0))
{
	vR[i] = 6611;
}
else
{
	vR[i] = 6610;
}

}
else
{
	if(input[i]==(6609+offset0))
{
	vR[i] = 6609;
}
else
{
	vR[i] = 6608;
}

}

}

}

}
else
{
	if(input[i]>(6599+offset0))
{
	if(input[i]>(6603+offset0))
{
	if(input[i]>(6605+offset0))
{
	if(input[i]==(6607+offset0))
{
	vR[i] = 6607;
}
else
{
	vR[i] = 6606;
}

}
else
{
	if(input[i]==(6605+offset0))
{
	vR[i] = 6605;
}
else
{
	vR[i] = 6604;
}

}

}
else
{
	if(input[i]>(6601+offset0))
{
	if(input[i]==(6603+offset0))
{
	vR[i] = 6603;
}
else
{
	vR[i] = 6602;
}

}
else
{
	if(input[i]==(6601+offset0))
{
	vR[i] = 6601;
}
else
{
	vR[i] = 6600;
}

}

}

}
else
{
	if(input[i]>(6595+offset0))
{
	if(input[i]>(6597+offset0))
{
	if(input[i]==(6599+offset0))
{
	vR[i] = 6599;
}
else
{
	vR[i] = 6598;
}

}
else
{
	if(input[i]==(6597+offset0))
{
	vR[i] = 6597;
}
else
{
	vR[i] = 6596;
}

}

}
else
{
	if(input[i]>(6593+offset0))
{
	if(input[i]==(6595+offset0))
{
	vR[i] = 6595;
}
else
{
	vR[i] = 6594;
}

}
else
{
	if(input[i]==(6593+offset0))
{
	vR[i] = 6593;
}
else
{
	vR[i] = 6592;
}

}

}

}

}

}

}
else
{
	if(input[i]>(6559+offset0))
{
	if(input[i]>(6575+offset0))
{
	if(input[i]>(6583+offset0))
{
	if(input[i]>(6587+offset0))
{
	if(input[i]>(6589+offset0))
{
	if(input[i]==(6591+offset0))
{
	vR[i] = 6591;
}
else
{
	vR[i] = 6590;
}

}
else
{
	if(input[i]==(6589+offset0))
{
	vR[i] = 6589;
}
else
{
	vR[i] = 6588;
}

}

}
else
{
	if(input[i]>(6585+offset0))
{
	if(input[i]==(6587+offset0))
{
	vR[i] = 6587;
}
else
{
	vR[i] = 6586;
}

}
else
{
	if(input[i]==(6585+offset0))
{
	vR[i] = 6585;
}
else
{
	vR[i] = 6584;
}

}

}

}
else
{
	if(input[i]>(6579+offset0))
{
	if(input[i]>(6581+offset0))
{
	if(input[i]==(6583+offset0))
{
	vR[i] = 6583;
}
else
{
	vR[i] = 6582;
}

}
else
{
	if(input[i]==(6581+offset0))
{
	vR[i] = 6581;
}
else
{
	vR[i] = 6580;
}

}

}
else
{
	if(input[i]>(6577+offset0))
{
	if(input[i]==(6579+offset0))
{
	vR[i] = 6579;
}
else
{
	vR[i] = 6578;
}

}
else
{
	if(input[i]==(6577+offset0))
{
	vR[i] = 6577;
}
else
{
	vR[i] = 6576;
}

}

}

}

}
else
{
	if(input[i]>(6567+offset0))
{
	if(input[i]>(6571+offset0))
{
	if(input[i]>(6573+offset0))
{
	if(input[i]==(6575+offset0))
{
	vR[i] = 6575;
}
else
{
	vR[i] = 6574;
}

}
else
{
	if(input[i]==(6573+offset0))
{
	vR[i] = 6573;
}
else
{
	vR[i] = 6572;
}

}

}
else
{
	if(input[i]>(6569+offset0))
{
	if(input[i]==(6571+offset0))
{
	vR[i] = 6571;
}
else
{
	vR[i] = 6570;
}

}
else
{
	if(input[i]==(6569+offset0))
{
	vR[i] = 6569;
}
else
{
	vR[i] = 6568;
}

}

}

}
else
{
	if(input[i]>(6563+offset0))
{
	if(input[i]>(6565+offset0))
{
	if(input[i]==(6567+offset0))
{
	vR[i] = 6567;
}
else
{
	vR[i] = 6566;
}

}
else
{
	if(input[i]==(6565+offset0))
{
	vR[i] = 6565;
}
else
{
	vR[i] = 6564;
}

}

}
else
{
	if(input[i]>(6561+offset0))
{
	if(input[i]==(6563+offset0))
{
	vR[i] = 6563;
}
else
{
	vR[i] = 6562;
}

}
else
{
	if(input[i]==(6561+offset0))
{
	vR[i] = 6561;
}
else
{
	vR[i] = 6560;
}

}

}

}

}

}
else
{
	if(input[i]>(6543+offset0))
{
	if(input[i]>(6551+offset0))
{
	if(input[i]>(6555+offset0))
{
	if(input[i]>(6557+offset0))
{
	if(input[i]==(6559+offset0))
{
	vR[i] = 6559;
}
else
{
	vR[i] = 6558;
}

}
else
{
	if(input[i]==(6557+offset0))
{
	vR[i] = 6557;
}
else
{
	vR[i] = 6556;
}

}

}
else
{
	if(input[i]>(6553+offset0))
{
	if(input[i]==(6555+offset0))
{
	vR[i] = 6555;
}
else
{
	vR[i] = 6554;
}

}
else
{
	if(input[i]==(6553+offset0))
{
	vR[i] = 6553;
}
else
{
	vR[i] = 6552;
}

}

}

}
else
{
	if(input[i]>(6547+offset0))
{
	if(input[i]>(6549+offset0))
{
	if(input[i]==(6551+offset0))
{
	vR[i] = 6551;
}
else
{
	vR[i] = 6550;
}

}
else
{
	if(input[i]==(6549+offset0))
{
	vR[i] = 6549;
}
else
{
	vR[i] = 6548;
}

}

}
else
{
	if(input[i]>(6545+offset0))
{
	if(input[i]==(6547+offset0))
{
	vR[i] = 6547;
}
else
{
	vR[i] = 6546;
}

}
else
{
	if(input[i]==(6545+offset0))
{
	vR[i] = 6545;
}
else
{
	vR[i] = 6544;
}

}

}

}

}
else
{
	if(input[i]>(6535+offset0))
{
	if(input[i]>(6539+offset0))
{
	if(input[i]>(6541+offset0))
{
	if(input[i]==(6543+offset0))
{
	vR[i] = 6543;
}
else
{
	vR[i] = 6542;
}

}
else
{
	if(input[i]==(6541+offset0))
{
	vR[i] = 6541;
}
else
{
	vR[i] = 6540;
}

}

}
else
{
	if(input[i]>(6537+offset0))
{
	if(input[i]==(6539+offset0))
{
	vR[i] = 6539;
}
else
{
	vR[i] = 6538;
}

}
else
{
	if(input[i]==(6537+offset0))
{
	vR[i] = 6537;
}
else
{
	vR[i] = 6536;
}

}

}

}
else
{
	if(input[i]>(6531+offset0))
{
	if(input[i]>(6533+offset0))
{
	if(input[i]==(6535+offset0))
{
	vR[i] = 6535;
}
else
{
	vR[i] = 6534;
}

}
else
{
	if(input[i]==(6533+offset0))
{
	vR[i] = 6533;
}
else
{
	vR[i] = 6532;
}

}

}
else
{
	if(input[i]>(6529+offset0))
{
	if(input[i]==(6531+offset0))
{
	vR[i] = 6531;
}
else
{
	vR[i] = 6530;
}

}
else
{
	if(input[i]==(6529+offset0))
{
	vR[i] = 6529;
}
else
{
	vR[i] = 6528;
}

}

}

}

}

}

}

}
else
{
	if(input[i]>(6463+offset0))
{
	if(input[i]>(6495+offset0))
{
	if(input[i]>(6511+offset0))
{
	if(input[i]>(6519+offset0))
{
	if(input[i]>(6523+offset0))
{
	if(input[i]>(6525+offset0))
{
	if(input[i]==(6527+offset0))
{
	vR[i] = 6527;
}
else
{
	vR[i] = 6526;
}

}
else
{
	if(input[i]==(6525+offset0))
{
	vR[i] = 6525;
}
else
{
	vR[i] = 6524;
}

}

}
else
{
	if(input[i]>(6521+offset0))
{
	if(input[i]==(6523+offset0))
{
	vR[i] = 6523;
}
else
{
	vR[i] = 6522;
}

}
else
{
	if(input[i]==(6521+offset0))
{
	vR[i] = 6521;
}
else
{
	vR[i] = 6520;
}

}

}

}
else
{
	if(input[i]>(6515+offset0))
{
	if(input[i]>(6517+offset0))
{
	if(input[i]==(6519+offset0))
{
	vR[i] = 6519;
}
else
{
	vR[i] = 6518;
}

}
else
{
	if(input[i]==(6517+offset0))
{
	vR[i] = 6517;
}
else
{
	vR[i] = 6516;
}

}

}
else
{
	if(input[i]>(6513+offset0))
{
	if(input[i]==(6515+offset0))
{
	vR[i] = 6515;
}
else
{
	vR[i] = 6514;
}

}
else
{
	if(input[i]==(6513+offset0))
{
	vR[i] = 6513;
}
else
{
	vR[i] = 6512;
}

}

}

}

}
else
{
	if(input[i]>(6503+offset0))
{
	if(input[i]>(6507+offset0))
{
	if(input[i]>(6509+offset0))
{
	if(input[i]==(6511+offset0))
{
	vR[i] = 6511;
}
else
{
	vR[i] = 6510;
}

}
else
{
	if(input[i]==(6509+offset0))
{
	vR[i] = 6509;
}
else
{
	vR[i] = 6508;
}

}

}
else
{
	if(input[i]>(6505+offset0))
{
	if(input[i]==(6507+offset0))
{
	vR[i] = 6507;
}
else
{
	vR[i] = 6506;
}

}
else
{
	if(input[i]==(6505+offset0))
{
	vR[i] = 6505;
}
else
{
	vR[i] = 6504;
}

}

}

}
else
{
	if(input[i]>(6499+offset0))
{
	if(input[i]>(6501+offset0))
{
	if(input[i]==(6503+offset0))
{
	vR[i] = 6503;
}
else
{
	vR[i] = 6502;
}

}
else
{
	if(input[i]==(6501+offset0))
{
	vR[i] = 6501;
}
else
{
	vR[i] = 6500;
}

}

}
else
{
	if(input[i]>(6497+offset0))
{
	if(input[i]==(6499+offset0))
{
	vR[i] = 6499;
}
else
{
	vR[i] = 6498;
}

}
else
{
	if(input[i]==(6497+offset0))
{
	vR[i] = 6497;
}
else
{
	vR[i] = 6496;
}

}

}

}

}

}
else
{
	if(input[i]>(6479+offset0))
{
	if(input[i]>(6487+offset0))
{
	if(input[i]>(6491+offset0))
{
	if(input[i]>(6493+offset0))
{
	if(input[i]==(6495+offset0))
{
	vR[i] = 6495;
}
else
{
	vR[i] = 6494;
}

}
else
{
	if(input[i]==(6493+offset0))
{
	vR[i] = 6493;
}
else
{
	vR[i] = 6492;
}

}

}
else
{
	if(input[i]>(6489+offset0))
{
	if(input[i]==(6491+offset0))
{
	vR[i] = 6491;
}
else
{
	vR[i] = 6490;
}

}
else
{
	if(input[i]==(6489+offset0))
{
	vR[i] = 6489;
}
else
{
	vR[i] = 6488;
}

}

}

}
else
{
	if(input[i]>(6483+offset0))
{
	if(input[i]>(6485+offset0))
{
	if(input[i]==(6487+offset0))
{
	vR[i] = 6487;
}
else
{
	vR[i] = 6486;
}

}
else
{
	if(input[i]==(6485+offset0))
{
	vR[i] = 6485;
}
else
{
	vR[i] = 6484;
}

}

}
else
{
	if(input[i]>(6481+offset0))
{
	if(input[i]==(6483+offset0))
{
	vR[i] = 6483;
}
else
{
	vR[i] = 6482;
}

}
else
{
	if(input[i]==(6481+offset0))
{
	vR[i] = 6481;
}
else
{
	vR[i] = 6480;
}

}

}

}

}
else
{
	if(input[i]>(6471+offset0))
{
	if(input[i]>(6475+offset0))
{
	if(input[i]>(6477+offset0))
{
	if(input[i]==(6479+offset0))
{
	vR[i] = 6479;
}
else
{
	vR[i] = 6478;
}

}
else
{
	if(input[i]==(6477+offset0))
{
	vR[i] = 6477;
}
else
{
	vR[i] = 6476;
}

}

}
else
{
	if(input[i]>(6473+offset0))
{
	if(input[i]==(6475+offset0))
{
	vR[i] = 6475;
}
else
{
	vR[i] = 6474;
}

}
else
{
	if(input[i]==(6473+offset0))
{
	vR[i] = 6473;
}
else
{
	vR[i] = 6472;
}

}

}

}
else
{
	if(input[i]>(6467+offset0))
{
	if(input[i]>(6469+offset0))
{
	if(input[i]==(6471+offset0))
{
	vR[i] = 6471;
}
else
{
	vR[i] = 6470;
}

}
else
{
	if(input[i]==(6469+offset0))
{
	vR[i] = 6469;
}
else
{
	vR[i] = 6468;
}

}

}
else
{
	if(input[i]>(6465+offset0))
{
	if(input[i]==(6467+offset0))
{
	vR[i] = 6467;
}
else
{
	vR[i] = 6466;
}

}
else
{
	if(input[i]==(6465+offset0))
{
	vR[i] = 6465;
}
else
{
	vR[i] = 6464;
}

}

}

}

}

}

}
else
{
	if(input[i]>(6431+offset0))
{
	if(input[i]>(6447+offset0))
{
	if(input[i]>(6455+offset0))
{
	if(input[i]>(6459+offset0))
{
	if(input[i]>(6461+offset0))
{
	if(input[i]==(6463+offset0))
{
	vR[i] = 6463;
}
else
{
	vR[i] = 6462;
}

}
else
{
	if(input[i]==(6461+offset0))
{
	vR[i] = 6461;
}
else
{
	vR[i] = 6460;
}

}

}
else
{
	if(input[i]>(6457+offset0))
{
	if(input[i]==(6459+offset0))
{
	vR[i] = 6459;
}
else
{
	vR[i] = 6458;
}

}
else
{
	if(input[i]==(6457+offset0))
{
	vR[i] = 6457;
}
else
{
	vR[i] = 6456;
}

}

}

}
else
{
	if(input[i]>(6451+offset0))
{
	if(input[i]>(6453+offset0))
{
	if(input[i]==(6455+offset0))
{
	vR[i] = 6455;
}
else
{
	vR[i] = 6454;
}

}
else
{
	if(input[i]==(6453+offset0))
{
	vR[i] = 6453;
}
else
{
	vR[i] = 6452;
}

}

}
else
{
	if(input[i]>(6449+offset0))
{
	if(input[i]==(6451+offset0))
{
	vR[i] = 6451;
}
else
{
	vR[i] = 6450;
}

}
else
{
	if(input[i]==(6449+offset0))
{
	vR[i] = 6449;
}
else
{
	vR[i] = 6448;
}

}

}

}

}
else
{
	if(input[i]>(6439+offset0))
{
	if(input[i]>(6443+offset0))
{
	if(input[i]>(6445+offset0))
{
	if(input[i]==(6447+offset0))
{
	vR[i] = 6447;
}
else
{
	vR[i] = 6446;
}

}
else
{
	if(input[i]==(6445+offset0))
{
	vR[i] = 6445;
}
else
{
	vR[i] = 6444;
}

}

}
else
{
	if(input[i]>(6441+offset0))
{
	if(input[i]==(6443+offset0))
{
	vR[i] = 6443;
}
else
{
	vR[i] = 6442;
}

}
else
{
	if(input[i]==(6441+offset0))
{
	vR[i] = 6441;
}
else
{
	vR[i] = 6440;
}

}

}

}
else
{
	if(input[i]>(6435+offset0))
{
	if(input[i]>(6437+offset0))
{
	if(input[i]==(6439+offset0))
{
	vR[i] = 6439;
}
else
{
	vR[i] = 6438;
}

}
else
{
	if(input[i]==(6437+offset0))
{
	vR[i] = 6437;
}
else
{
	vR[i] = 6436;
}

}

}
else
{
	if(input[i]>(6433+offset0))
{
	if(input[i]==(6435+offset0))
{
	vR[i] = 6435;
}
else
{
	vR[i] = 6434;
}

}
else
{
	if(input[i]==(6433+offset0))
{
	vR[i] = 6433;
}
else
{
	vR[i] = 6432;
}

}

}

}

}

}
else
{
	if(input[i]>(6415+offset0))
{
	if(input[i]>(6423+offset0))
{
	if(input[i]>(6427+offset0))
{
	if(input[i]>(6429+offset0))
{
	if(input[i]==(6431+offset0))
{
	vR[i] = 6431;
}
else
{
	vR[i] = 6430;
}

}
else
{
	if(input[i]==(6429+offset0))
{
	vR[i] = 6429;
}
else
{
	vR[i] = 6428;
}

}

}
else
{
	if(input[i]>(6425+offset0))
{
	if(input[i]==(6427+offset0))
{
	vR[i] = 6427;
}
else
{
	vR[i] = 6426;
}

}
else
{
	if(input[i]==(6425+offset0))
{
	vR[i] = 6425;
}
else
{
	vR[i] = 6424;
}

}

}

}
else
{
	if(input[i]>(6419+offset0))
{
	if(input[i]>(6421+offset0))
{
	if(input[i]==(6423+offset0))
{
	vR[i] = 6423;
}
else
{
	vR[i] = 6422;
}

}
else
{
	if(input[i]==(6421+offset0))
{
	vR[i] = 6421;
}
else
{
	vR[i] = 6420;
}

}

}
else
{
	if(input[i]>(6417+offset0))
{
	if(input[i]==(6419+offset0))
{
	vR[i] = 6419;
}
else
{
	vR[i] = 6418;
}

}
else
{
	if(input[i]==(6417+offset0))
{
	vR[i] = 6417;
}
else
{
	vR[i] = 6416;
}

}

}

}

}
else
{
	if(input[i]>(6407+offset0))
{
	if(input[i]>(6411+offset0))
{
	if(input[i]>(6413+offset0))
{
	if(input[i]==(6415+offset0))
{
	vR[i] = 6415;
}
else
{
	vR[i] = 6414;
}

}
else
{
	if(input[i]==(6413+offset0))
{
	vR[i] = 6413;
}
else
{
	vR[i] = 6412;
}

}

}
else
{
	if(input[i]>(6409+offset0))
{
	if(input[i]==(6411+offset0))
{
	vR[i] = 6411;
}
else
{
	vR[i] = 6410;
}

}
else
{
	if(input[i]==(6409+offset0))
{
	vR[i] = 6409;
}
else
{
	vR[i] = 6408;
}

}

}

}
else
{
	if(input[i]>(6403+offset0))
{
	if(input[i]>(6405+offset0))
{
	if(input[i]==(6407+offset0))
{
	vR[i] = 6407;
}
else
{
	vR[i] = 6406;
}

}
else
{
	if(input[i]==(6405+offset0))
{
	vR[i] = 6405;
}
else
{
	vR[i] = 6404;
}

}

}
else
{
	if(input[i]>(6401+offset0))
{
	if(input[i]==(6403+offset0))
{
	vR[i] = 6403;
}
else
{
	vR[i] = 6402;
}

}
else
{
	if(input[i]==(6401+offset0))
{
	vR[i] = 6401;
}
else
{
	vR[i] = 6400;
}

}

}

}

}

}

}

}

}
else
{
	if(input[i]>(6271+offset0))
{
	if(input[i]>(6335+offset0))
{
	if(input[i]>(6367+offset0))
{
	if(input[i]>(6383+offset0))
{
	if(input[i]>(6391+offset0))
{
	if(input[i]>(6395+offset0))
{
	if(input[i]>(6397+offset0))
{
	if(input[i]==(6399+offset0))
{
	vR[i] = 6399;
}
else
{
	vR[i] = 6398;
}

}
else
{
	if(input[i]==(6397+offset0))
{
	vR[i] = 6397;
}
else
{
	vR[i] = 6396;
}

}

}
else
{
	if(input[i]>(6393+offset0))
{
	if(input[i]==(6395+offset0))
{
	vR[i] = 6395;
}
else
{
	vR[i] = 6394;
}

}
else
{
	if(input[i]==(6393+offset0))
{
	vR[i] = 6393;
}
else
{
	vR[i] = 6392;
}

}

}

}
else
{
	if(input[i]>(6387+offset0))
{
	if(input[i]>(6389+offset0))
{
	if(input[i]==(6391+offset0))
{
	vR[i] = 6391;
}
else
{
	vR[i] = 6390;
}

}
else
{
	if(input[i]==(6389+offset0))
{
	vR[i] = 6389;
}
else
{
	vR[i] = 6388;
}

}

}
else
{
	if(input[i]>(6385+offset0))
{
	if(input[i]==(6387+offset0))
{
	vR[i] = 6387;
}
else
{
	vR[i] = 6386;
}

}
else
{
	if(input[i]==(6385+offset0))
{
	vR[i] = 6385;
}
else
{
	vR[i] = 6384;
}

}

}

}

}
else
{
	if(input[i]>(6375+offset0))
{
	if(input[i]>(6379+offset0))
{
	if(input[i]>(6381+offset0))
{
	if(input[i]==(6383+offset0))
{
	vR[i] = 6383;
}
else
{
	vR[i] = 6382;
}

}
else
{
	if(input[i]==(6381+offset0))
{
	vR[i] = 6381;
}
else
{
	vR[i] = 6380;
}

}

}
else
{
	if(input[i]>(6377+offset0))
{
	if(input[i]==(6379+offset0))
{
	vR[i] = 6379;
}
else
{
	vR[i] = 6378;
}

}
else
{
	if(input[i]==(6377+offset0))
{
	vR[i] = 6377;
}
else
{
	vR[i] = 6376;
}

}

}

}
else
{
	if(input[i]>(6371+offset0))
{
	if(input[i]>(6373+offset0))
{
	if(input[i]==(6375+offset0))
{
	vR[i] = 6375;
}
else
{
	vR[i] = 6374;
}

}
else
{
	if(input[i]==(6373+offset0))
{
	vR[i] = 6373;
}
else
{
	vR[i] = 6372;
}

}

}
else
{
	if(input[i]>(6369+offset0))
{
	if(input[i]==(6371+offset0))
{
	vR[i] = 6371;
}
else
{
	vR[i] = 6370;
}

}
else
{
	if(input[i]==(6369+offset0))
{
	vR[i] = 6369;
}
else
{
	vR[i] = 6368;
}

}

}

}

}

}
else
{
	if(input[i]>(6351+offset0))
{
	if(input[i]>(6359+offset0))
{
	if(input[i]>(6363+offset0))
{
	if(input[i]>(6365+offset0))
{
	if(input[i]==(6367+offset0))
{
	vR[i] = 6367;
}
else
{
	vR[i] = 6366;
}

}
else
{
	if(input[i]==(6365+offset0))
{
	vR[i] = 6365;
}
else
{
	vR[i] = 6364;
}

}

}
else
{
	if(input[i]>(6361+offset0))
{
	if(input[i]==(6363+offset0))
{
	vR[i] = 6363;
}
else
{
	vR[i] = 6362;
}

}
else
{
	if(input[i]==(6361+offset0))
{
	vR[i] = 6361;
}
else
{
	vR[i] = 6360;
}

}

}

}
else
{
	if(input[i]>(6355+offset0))
{
	if(input[i]>(6357+offset0))
{
	if(input[i]==(6359+offset0))
{
	vR[i] = 6359;
}
else
{
	vR[i] = 6358;
}

}
else
{
	if(input[i]==(6357+offset0))
{
	vR[i] = 6357;
}
else
{
	vR[i] = 6356;
}

}

}
else
{
	if(input[i]>(6353+offset0))
{
	if(input[i]==(6355+offset0))
{
	vR[i] = 6355;
}
else
{
	vR[i] = 6354;
}

}
else
{
	if(input[i]==(6353+offset0))
{
	vR[i] = 6353;
}
else
{
	vR[i] = 6352;
}

}

}

}

}
else
{
	if(input[i]>(6343+offset0))
{
	if(input[i]>(6347+offset0))
{
	if(input[i]>(6349+offset0))
{
	if(input[i]==(6351+offset0))
{
	vR[i] = 6351;
}
else
{
	vR[i] = 6350;
}

}
else
{
	if(input[i]==(6349+offset0))
{
	vR[i] = 6349;
}
else
{
	vR[i] = 6348;
}

}

}
else
{
	if(input[i]>(6345+offset0))
{
	if(input[i]==(6347+offset0))
{
	vR[i] = 6347;
}
else
{
	vR[i] = 6346;
}

}
else
{
	if(input[i]==(6345+offset0))
{
	vR[i] = 6345;
}
else
{
	vR[i] = 6344;
}

}

}

}
else
{
	if(input[i]>(6339+offset0))
{
	if(input[i]>(6341+offset0))
{
	if(input[i]==(6343+offset0))
{
	vR[i] = 6343;
}
else
{
	vR[i] = 6342;
}

}
else
{
	if(input[i]==(6341+offset0))
{
	vR[i] = 6341;
}
else
{
	vR[i] = 6340;
}

}

}
else
{
	if(input[i]>(6337+offset0))
{
	if(input[i]==(6339+offset0))
{
	vR[i] = 6339;
}
else
{
	vR[i] = 6338;
}

}
else
{
	if(input[i]==(6337+offset0))
{
	vR[i] = 6337;
}
else
{
	vR[i] = 6336;
}

}

}

}

}

}

}
else
{
	if(input[i]>(6303+offset0))
{
	if(input[i]>(6319+offset0))
{
	if(input[i]>(6327+offset0))
{
	if(input[i]>(6331+offset0))
{
	if(input[i]>(6333+offset0))
{
	if(input[i]==(6335+offset0))
{
	vR[i] = 6335;
}
else
{
	vR[i] = 6334;
}

}
else
{
	if(input[i]==(6333+offset0))
{
	vR[i] = 6333;
}
else
{
	vR[i] = 6332;
}

}

}
else
{
	if(input[i]>(6329+offset0))
{
	if(input[i]==(6331+offset0))
{
	vR[i] = 6331;
}
else
{
	vR[i] = 6330;
}

}
else
{
	if(input[i]==(6329+offset0))
{
	vR[i] = 6329;
}
else
{
	vR[i] = 6328;
}

}

}

}
else
{
	if(input[i]>(6323+offset0))
{
	if(input[i]>(6325+offset0))
{
	if(input[i]==(6327+offset0))
{
	vR[i] = 6327;
}
else
{
	vR[i] = 6326;
}

}
else
{
	if(input[i]==(6325+offset0))
{
	vR[i] = 6325;
}
else
{
	vR[i] = 6324;
}

}

}
else
{
	if(input[i]>(6321+offset0))
{
	if(input[i]==(6323+offset0))
{
	vR[i] = 6323;
}
else
{
	vR[i] = 6322;
}

}
else
{
	if(input[i]==(6321+offset0))
{
	vR[i] = 6321;
}
else
{
	vR[i] = 6320;
}

}

}

}

}
else
{
	if(input[i]>(6311+offset0))
{
	if(input[i]>(6315+offset0))
{
	if(input[i]>(6317+offset0))
{
	if(input[i]==(6319+offset0))
{
	vR[i] = 6319;
}
else
{
	vR[i] = 6318;
}

}
else
{
	if(input[i]==(6317+offset0))
{
	vR[i] = 6317;
}
else
{
	vR[i] = 6316;
}

}

}
else
{
	if(input[i]>(6313+offset0))
{
	if(input[i]==(6315+offset0))
{
	vR[i] = 6315;
}
else
{
	vR[i] = 6314;
}

}
else
{
	if(input[i]==(6313+offset0))
{
	vR[i] = 6313;
}
else
{
	vR[i] = 6312;
}

}

}

}
else
{
	if(input[i]>(6307+offset0))
{
	if(input[i]>(6309+offset0))
{
	if(input[i]==(6311+offset0))
{
	vR[i] = 6311;
}
else
{
	vR[i] = 6310;
}

}
else
{
	if(input[i]==(6309+offset0))
{
	vR[i] = 6309;
}
else
{
	vR[i] = 6308;
}

}

}
else
{
	if(input[i]>(6305+offset0))
{
	if(input[i]==(6307+offset0))
{
	vR[i] = 6307;
}
else
{
	vR[i] = 6306;
}

}
else
{
	if(input[i]==(6305+offset0))
{
	vR[i] = 6305;
}
else
{
	vR[i] = 6304;
}

}

}

}

}

}
else
{
	if(input[i]>(6287+offset0))
{
	if(input[i]>(6295+offset0))
{
	if(input[i]>(6299+offset0))
{
	if(input[i]>(6301+offset0))
{
	if(input[i]==(6303+offset0))
{
	vR[i] = 6303;
}
else
{
	vR[i] = 6302;
}

}
else
{
	if(input[i]==(6301+offset0))
{
	vR[i] = 6301;
}
else
{
	vR[i] = 6300;
}

}

}
else
{
	if(input[i]>(6297+offset0))
{
	if(input[i]==(6299+offset0))
{
	vR[i] = 6299;
}
else
{
	vR[i] = 6298;
}

}
else
{
	if(input[i]==(6297+offset0))
{
	vR[i] = 6297;
}
else
{
	vR[i] = 6296;
}

}

}

}
else
{
	if(input[i]>(6291+offset0))
{
	if(input[i]>(6293+offset0))
{
	if(input[i]==(6295+offset0))
{
	vR[i] = 6295;
}
else
{
	vR[i] = 6294;
}

}
else
{
	if(input[i]==(6293+offset0))
{
	vR[i] = 6293;
}
else
{
	vR[i] = 6292;
}

}

}
else
{
	if(input[i]>(6289+offset0))
{
	if(input[i]==(6291+offset0))
{
	vR[i] = 6291;
}
else
{
	vR[i] = 6290;
}

}
else
{
	if(input[i]==(6289+offset0))
{
	vR[i] = 6289;
}
else
{
	vR[i] = 6288;
}

}

}

}

}
else
{
	if(input[i]>(6279+offset0))
{
	if(input[i]>(6283+offset0))
{
	if(input[i]>(6285+offset0))
{
	if(input[i]==(6287+offset0))
{
	vR[i] = 6287;
}
else
{
	vR[i] = 6286;
}

}
else
{
	if(input[i]==(6285+offset0))
{
	vR[i] = 6285;
}
else
{
	vR[i] = 6284;
}

}

}
else
{
	if(input[i]>(6281+offset0))
{
	if(input[i]==(6283+offset0))
{
	vR[i] = 6283;
}
else
{
	vR[i] = 6282;
}

}
else
{
	if(input[i]==(6281+offset0))
{
	vR[i] = 6281;
}
else
{
	vR[i] = 6280;
}

}

}

}
else
{
	if(input[i]>(6275+offset0))
{
	if(input[i]>(6277+offset0))
{
	if(input[i]==(6279+offset0))
{
	vR[i] = 6279;
}
else
{
	vR[i] = 6278;
}

}
else
{
	if(input[i]==(6277+offset0))
{
	vR[i] = 6277;
}
else
{
	vR[i] = 6276;
}

}

}
else
{
	if(input[i]>(6273+offset0))
{
	if(input[i]==(6275+offset0))
{
	vR[i] = 6275;
}
else
{
	vR[i] = 6274;
}

}
else
{
	if(input[i]==(6273+offset0))
{
	vR[i] = 6273;
}
else
{
	vR[i] = 6272;
}

}

}

}

}

}

}

}
else
{
	if(input[i]>(6207+offset0))
{
	if(input[i]>(6239+offset0))
{
	if(input[i]>(6255+offset0))
{
	if(input[i]>(6263+offset0))
{
	if(input[i]>(6267+offset0))
{
	if(input[i]>(6269+offset0))
{
	if(input[i]==(6271+offset0))
{
	vR[i] = 6271;
}
else
{
	vR[i] = 6270;
}

}
else
{
	if(input[i]==(6269+offset0))
{
	vR[i] = 6269;
}
else
{
	vR[i] = 6268;
}

}

}
else
{
	if(input[i]>(6265+offset0))
{
	if(input[i]==(6267+offset0))
{
	vR[i] = 6267;
}
else
{
	vR[i] = 6266;
}

}
else
{
	if(input[i]==(6265+offset0))
{
	vR[i] = 6265;
}
else
{
	vR[i] = 6264;
}

}

}

}
else
{
	if(input[i]>(6259+offset0))
{
	if(input[i]>(6261+offset0))
{
	if(input[i]==(6263+offset0))
{
	vR[i] = 6263;
}
else
{
	vR[i] = 6262;
}

}
else
{
	if(input[i]==(6261+offset0))
{
	vR[i] = 6261;
}
else
{
	vR[i] = 6260;
}

}

}
else
{
	if(input[i]>(6257+offset0))
{
	if(input[i]==(6259+offset0))
{
	vR[i] = 6259;
}
else
{
	vR[i] = 6258;
}

}
else
{
	if(input[i]==(6257+offset0))
{
	vR[i] = 6257;
}
else
{
	vR[i] = 6256;
}

}

}

}

}
else
{
	if(input[i]>(6247+offset0))
{
	if(input[i]>(6251+offset0))
{
	if(input[i]>(6253+offset0))
{
	if(input[i]==(6255+offset0))
{
	vR[i] = 6255;
}
else
{
	vR[i] = 6254;
}

}
else
{
	if(input[i]==(6253+offset0))
{
	vR[i] = 6253;
}
else
{
	vR[i] = 6252;
}

}

}
else
{
	if(input[i]>(6249+offset0))
{
	if(input[i]==(6251+offset0))
{
	vR[i] = 6251;
}
else
{
	vR[i] = 6250;
}

}
else
{
	if(input[i]==(6249+offset0))
{
	vR[i] = 6249;
}
else
{
	vR[i] = 6248;
}

}

}

}
else
{
	if(input[i]>(6243+offset0))
{
	if(input[i]>(6245+offset0))
{
	if(input[i]==(6247+offset0))
{
	vR[i] = 6247;
}
else
{
	vR[i] = 6246;
}

}
else
{
	if(input[i]==(6245+offset0))
{
	vR[i] = 6245;
}
else
{
	vR[i] = 6244;
}

}

}
else
{
	if(input[i]>(6241+offset0))
{
	if(input[i]==(6243+offset0))
{
	vR[i] = 6243;
}
else
{
	vR[i] = 6242;
}

}
else
{
	if(input[i]==(6241+offset0))
{
	vR[i] = 6241;
}
else
{
	vR[i] = 6240;
}

}

}

}

}

}
else
{
	if(input[i]>(6223+offset0))
{
	if(input[i]>(6231+offset0))
{
	if(input[i]>(6235+offset0))
{
	if(input[i]>(6237+offset0))
{
	if(input[i]==(6239+offset0))
{
	vR[i] = 6239;
}
else
{
	vR[i] = 6238;
}

}
else
{
	if(input[i]==(6237+offset0))
{
	vR[i] = 6237;
}
else
{
	vR[i] = 6236;
}

}

}
else
{
	if(input[i]>(6233+offset0))
{
	if(input[i]==(6235+offset0))
{
	vR[i] = 6235;
}
else
{
	vR[i] = 6234;
}

}
else
{
	if(input[i]==(6233+offset0))
{
	vR[i] = 6233;
}
else
{
	vR[i] = 6232;
}

}

}

}
else
{
	if(input[i]>(6227+offset0))
{
	if(input[i]>(6229+offset0))
{
	if(input[i]==(6231+offset0))
{
	vR[i] = 6231;
}
else
{
	vR[i] = 6230;
}

}
else
{
	if(input[i]==(6229+offset0))
{
	vR[i] = 6229;
}
else
{
	vR[i] = 6228;
}

}

}
else
{
	if(input[i]>(6225+offset0))
{
	if(input[i]==(6227+offset0))
{
	vR[i] = 6227;
}
else
{
	vR[i] = 6226;
}

}
else
{
	if(input[i]==(6225+offset0))
{
	vR[i] = 6225;
}
else
{
	vR[i] = 6224;
}

}

}

}

}
else
{
	if(input[i]>(6215+offset0))
{
	if(input[i]>(6219+offset0))
{
	if(input[i]>(6221+offset0))
{
	if(input[i]==(6223+offset0))
{
	vR[i] = 6223;
}
else
{
	vR[i] = 6222;
}

}
else
{
	if(input[i]==(6221+offset0))
{
	vR[i] = 6221;
}
else
{
	vR[i] = 6220;
}

}

}
else
{
	if(input[i]>(6217+offset0))
{
	if(input[i]==(6219+offset0))
{
	vR[i] = 6219;
}
else
{
	vR[i] = 6218;
}

}
else
{
	if(input[i]==(6217+offset0))
{
	vR[i] = 6217;
}
else
{
	vR[i] = 6216;
}

}

}

}
else
{
	if(input[i]>(6211+offset0))
{
	if(input[i]>(6213+offset0))
{
	if(input[i]==(6215+offset0))
{
	vR[i] = 6215;
}
else
{
	vR[i] = 6214;
}

}
else
{
	if(input[i]==(6213+offset0))
{
	vR[i] = 6213;
}
else
{
	vR[i] = 6212;
}

}

}
else
{
	if(input[i]>(6209+offset0))
{
	if(input[i]==(6211+offset0))
{
	vR[i] = 6211;
}
else
{
	vR[i] = 6210;
}

}
else
{
	if(input[i]==(6209+offset0))
{
	vR[i] = 6209;
}
else
{
	vR[i] = 6208;
}

}

}

}

}

}

}
else
{
	if(input[i]>(6175+offset0))
{
	if(input[i]>(6191+offset0))
{
	if(input[i]>(6199+offset0))
{
	if(input[i]>(6203+offset0))
{
	if(input[i]>(6205+offset0))
{
	if(input[i]==(6207+offset0))
{
	vR[i] = 6207;
}
else
{
	vR[i] = 6206;
}

}
else
{
	if(input[i]==(6205+offset0))
{
	vR[i] = 6205;
}
else
{
	vR[i] = 6204;
}

}

}
else
{
	if(input[i]>(6201+offset0))
{
	if(input[i]==(6203+offset0))
{
	vR[i] = 6203;
}
else
{
	vR[i] = 6202;
}

}
else
{
	if(input[i]==(6201+offset0))
{
	vR[i] = 6201;
}
else
{
	vR[i] = 6200;
}

}

}

}
else
{
	if(input[i]>(6195+offset0))
{
	if(input[i]>(6197+offset0))
{
	if(input[i]==(6199+offset0))
{
	vR[i] = 6199;
}
else
{
	vR[i] = 6198;
}

}
else
{
	if(input[i]==(6197+offset0))
{
	vR[i] = 6197;
}
else
{
	vR[i] = 6196;
}

}

}
else
{
	if(input[i]>(6193+offset0))
{
	if(input[i]==(6195+offset0))
{
	vR[i] = 6195;
}
else
{
	vR[i] = 6194;
}

}
else
{
	if(input[i]==(6193+offset0))
{
	vR[i] = 6193;
}
else
{
	vR[i] = 6192;
}

}

}

}

}
else
{
	if(input[i]>(6183+offset0))
{
	if(input[i]>(6187+offset0))
{
	if(input[i]>(6189+offset0))
{
	if(input[i]==(6191+offset0))
{
	vR[i] = 6191;
}
else
{
	vR[i] = 6190;
}

}
else
{
	if(input[i]==(6189+offset0))
{
	vR[i] = 6189;
}
else
{
	vR[i] = 6188;
}

}

}
else
{
	if(input[i]>(6185+offset0))
{
	if(input[i]==(6187+offset0))
{
	vR[i] = 6187;
}
else
{
	vR[i] = 6186;
}

}
else
{
	if(input[i]==(6185+offset0))
{
	vR[i] = 6185;
}
else
{
	vR[i] = 6184;
}

}

}

}
else
{
	if(input[i]>(6179+offset0))
{
	if(input[i]>(6181+offset0))
{
	if(input[i]==(6183+offset0))
{
	vR[i] = 6183;
}
else
{
	vR[i] = 6182;
}

}
else
{
	if(input[i]==(6181+offset0))
{
	vR[i] = 6181;
}
else
{
	vR[i] = 6180;
}

}

}
else
{
	if(input[i]>(6177+offset0))
{
	if(input[i]==(6179+offset0))
{
	vR[i] = 6179;
}
else
{
	vR[i] = 6178;
}

}
else
{
	if(input[i]==(6177+offset0))
{
	vR[i] = 6177;
}
else
{
	vR[i] = 6176;
}

}

}

}

}

}
else
{
	if(input[i]>(6159+offset0))
{
	if(input[i]>(6167+offset0))
{
	if(input[i]>(6171+offset0))
{
	if(input[i]>(6173+offset0))
{
	if(input[i]==(6175+offset0))
{
	vR[i] = 6175;
}
else
{
	vR[i] = 6174;
}

}
else
{
	if(input[i]==(6173+offset0))
{
	vR[i] = 6173;
}
else
{
	vR[i] = 6172;
}

}

}
else
{
	if(input[i]>(6169+offset0))
{
	if(input[i]==(6171+offset0))
{
	vR[i] = 6171;
}
else
{
	vR[i] = 6170;
}

}
else
{
	if(input[i]==(6169+offset0))
{
	vR[i] = 6169;
}
else
{
	vR[i] = 6168;
}

}

}

}
else
{
	if(input[i]>(6163+offset0))
{
	if(input[i]>(6165+offset0))
{
	if(input[i]==(6167+offset0))
{
	vR[i] = 6167;
}
else
{
	vR[i] = 6166;
}

}
else
{
	if(input[i]==(6165+offset0))
{
	vR[i] = 6165;
}
else
{
	vR[i] = 6164;
}

}

}
else
{
	if(input[i]>(6161+offset0))
{
	if(input[i]==(6163+offset0))
{
	vR[i] = 6163;
}
else
{
	vR[i] = 6162;
}

}
else
{
	if(input[i]==(6161+offset0))
{
	vR[i] = 6161;
}
else
{
	vR[i] = 6160;
}

}

}

}

}
else
{
	if(input[i]>(6151+offset0))
{
	if(input[i]>(6155+offset0))
{
	if(input[i]>(6157+offset0))
{
	if(input[i]==(6159+offset0))
{
	vR[i] = 6159;
}
else
{
	vR[i] = 6158;
}

}
else
{
	if(input[i]==(6157+offset0))
{
	vR[i] = 6157;
}
else
{
	vR[i] = 6156;
}

}

}
else
{
	if(input[i]>(6153+offset0))
{
	if(input[i]==(6155+offset0))
{
	vR[i] = 6155;
}
else
{
	vR[i] = 6154;
}

}
else
{
	if(input[i]==(6153+offset0))
{
	vR[i] = 6153;
}
else
{
	vR[i] = 6152;
}

}

}

}
else
{
	if(input[i]>(6147+offset0))
{
	if(input[i]>(6149+offset0))
{
	if(input[i]==(6151+offset0))
{
	vR[i] = 6151;
}
else
{
	vR[i] = 6150;
}

}
else
{
	if(input[i]==(6149+offset0))
{
	vR[i] = 6149;
}
else
{
	vR[i] = 6148;
}

}

}
else
{
	if(input[i]>(6145+offset0))
{
	if(input[i]==(6147+offset0))
{
	vR[i] = 6147;
}
else
{
	vR[i] = 6146;
}

}
else
{
	if(input[i]==(6145+offset0))
{
	vR[i] = 6145;
}
else
{
	vR[i] = 6144;
}

}

}

}

}

}

}

}

}

}

}

}
else
{
	if(input[i]>(5119+offset0))
{
	if(input[i]>(5631+offset0))
{
	if(input[i]>(5887+offset0))
{
	if(input[i]>(6015+offset0))
{
	if(input[i]>(6079+offset0))
{
	if(input[i]>(6111+offset0))
{
	if(input[i]>(6127+offset0))
{
	if(input[i]>(6135+offset0))
{
	if(input[i]>(6139+offset0))
{
	if(input[i]>(6141+offset0))
{
	if(input[i]==(6143+offset0))
{
	vR[i] = 6143;
}
else
{
	vR[i] = 6142;
}

}
else
{
	if(input[i]==(6141+offset0))
{
	vR[i] = 6141;
}
else
{
	vR[i] = 6140;
}

}

}
else
{
	if(input[i]>(6137+offset0))
{
	if(input[i]==(6139+offset0))
{
	vR[i] = 6139;
}
else
{
	vR[i] = 6138;
}

}
else
{
	if(input[i]==(6137+offset0))
{
	vR[i] = 6137;
}
else
{
	vR[i] = 6136;
}

}

}

}
else
{
	if(input[i]>(6131+offset0))
{
	if(input[i]>(6133+offset0))
{
	if(input[i]==(6135+offset0))
{
	vR[i] = 6135;
}
else
{
	vR[i] = 6134;
}

}
else
{
	if(input[i]==(6133+offset0))
{
	vR[i] = 6133;
}
else
{
	vR[i] = 6132;
}

}

}
else
{
	if(input[i]>(6129+offset0))
{
	if(input[i]==(6131+offset0))
{
	vR[i] = 6131;
}
else
{
	vR[i] = 6130;
}

}
else
{
	if(input[i]==(6129+offset0))
{
	vR[i] = 6129;
}
else
{
	vR[i] = 6128;
}

}

}

}

}
else
{
	if(input[i]>(6119+offset0))
{
	if(input[i]>(6123+offset0))
{
	if(input[i]>(6125+offset0))
{
	if(input[i]==(6127+offset0))
{
	vR[i] = 6127;
}
else
{
	vR[i] = 6126;
}

}
else
{
	if(input[i]==(6125+offset0))
{
	vR[i] = 6125;
}
else
{
	vR[i] = 6124;
}

}

}
else
{
	if(input[i]>(6121+offset0))
{
	if(input[i]==(6123+offset0))
{
	vR[i] = 6123;
}
else
{
	vR[i] = 6122;
}

}
else
{
	if(input[i]==(6121+offset0))
{
	vR[i] = 6121;
}
else
{
	vR[i] = 6120;
}

}

}

}
else
{
	if(input[i]>(6115+offset0))
{
	if(input[i]>(6117+offset0))
{
	if(input[i]==(6119+offset0))
{
	vR[i] = 6119;
}
else
{
	vR[i] = 6118;
}

}
else
{
	if(input[i]==(6117+offset0))
{
	vR[i] = 6117;
}
else
{
	vR[i] = 6116;
}

}

}
else
{
	if(input[i]>(6113+offset0))
{
	if(input[i]==(6115+offset0))
{
	vR[i] = 6115;
}
else
{
	vR[i] = 6114;
}

}
else
{
	if(input[i]==(6113+offset0))
{
	vR[i] = 6113;
}
else
{
	vR[i] = 6112;
}

}

}

}

}

}
else
{
	if(input[i]>(6095+offset0))
{
	if(input[i]>(6103+offset0))
{
	if(input[i]>(6107+offset0))
{
	if(input[i]>(6109+offset0))
{
	if(input[i]==(6111+offset0))
{
	vR[i] = 6111;
}
else
{
	vR[i] = 6110;
}

}
else
{
	if(input[i]==(6109+offset0))
{
	vR[i] = 6109;
}
else
{
	vR[i] = 6108;
}

}

}
else
{
	if(input[i]>(6105+offset0))
{
	if(input[i]==(6107+offset0))
{
	vR[i] = 6107;
}
else
{
	vR[i] = 6106;
}

}
else
{
	if(input[i]==(6105+offset0))
{
	vR[i] = 6105;
}
else
{
	vR[i] = 6104;
}

}

}

}
else
{
	if(input[i]>(6099+offset0))
{
	if(input[i]>(6101+offset0))
{
	if(input[i]==(6103+offset0))
{
	vR[i] = 6103;
}
else
{
	vR[i] = 6102;
}

}
else
{
	if(input[i]==(6101+offset0))
{
	vR[i] = 6101;
}
else
{
	vR[i] = 6100;
}

}

}
else
{
	if(input[i]>(6097+offset0))
{
	if(input[i]==(6099+offset0))
{
	vR[i] = 6099;
}
else
{
	vR[i] = 6098;
}

}
else
{
	if(input[i]==(6097+offset0))
{
	vR[i] = 6097;
}
else
{
	vR[i] = 6096;
}

}

}

}

}
else
{
	if(input[i]>(6087+offset0))
{
	if(input[i]>(6091+offset0))
{
	if(input[i]>(6093+offset0))
{
	if(input[i]==(6095+offset0))
{
	vR[i] = 6095;
}
else
{
	vR[i] = 6094;
}

}
else
{
	if(input[i]==(6093+offset0))
{
	vR[i] = 6093;
}
else
{
	vR[i] = 6092;
}

}

}
else
{
	if(input[i]>(6089+offset0))
{
	if(input[i]==(6091+offset0))
{
	vR[i] = 6091;
}
else
{
	vR[i] = 6090;
}

}
else
{
	if(input[i]==(6089+offset0))
{
	vR[i] = 6089;
}
else
{
	vR[i] = 6088;
}

}

}

}
else
{
	if(input[i]>(6083+offset0))
{
	if(input[i]>(6085+offset0))
{
	if(input[i]==(6087+offset0))
{
	vR[i] = 6087;
}
else
{
	vR[i] = 6086;
}

}
else
{
	if(input[i]==(6085+offset0))
{
	vR[i] = 6085;
}
else
{
	vR[i] = 6084;
}

}

}
else
{
	if(input[i]>(6081+offset0))
{
	if(input[i]==(6083+offset0))
{
	vR[i] = 6083;
}
else
{
	vR[i] = 6082;
}

}
else
{
	if(input[i]==(6081+offset0))
{
	vR[i] = 6081;
}
else
{
	vR[i] = 6080;
}

}

}

}

}

}

}
else
{
	if(input[i]>(6047+offset0))
{
	if(input[i]>(6063+offset0))
{
	if(input[i]>(6071+offset0))
{
	if(input[i]>(6075+offset0))
{
	if(input[i]>(6077+offset0))
{
	if(input[i]==(6079+offset0))
{
	vR[i] = 6079;
}
else
{
	vR[i] = 6078;
}

}
else
{
	if(input[i]==(6077+offset0))
{
	vR[i] = 6077;
}
else
{
	vR[i] = 6076;
}

}

}
else
{
	if(input[i]>(6073+offset0))
{
	if(input[i]==(6075+offset0))
{
	vR[i] = 6075;
}
else
{
	vR[i] = 6074;
}

}
else
{
	if(input[i]==(6073+offset0))
{
	vR[i] = 6073;
}
else
{
	vR[i] = 6072;
}

}

}

}
else
{
	if(input[i]>(6067+offset0))
{
	if(input[i]>(6069+offset0))
{
	if(input[i]==(6071+offset0))
{
	vR[i] = 6071;
}
else
{
	vR[i] = 6070;
}

}
else
{
	if(input[i]==(6069+offset0))
{
	vR[i] = 6069;
}
else
{
	vR[i] = 6068;
}

}

}
else
{
	if(input[i]>(6065+offset0))
{
	if(input[i]==(6067+offset0))
{
	vR[i] = 6067;
}
else
{
	vR[i] = 6066;
}

}
else
{
	if(input[i]==(6065+offset0))
{
	vR[i] = 6065;
}
else
{
	vR[i] = 6064;
}

}

}

}

}
else
{
	if(input[i]>(6055+offset0))
{
	if(input[i]>(6059+offset0))
{
	if(input[i]>(6061+offset0))
{
	if(input[i]==(6063+offset0))
{
	vR[i] = 6063;
}
else
{
	vR[i] = 6062;
}

}
else
{
	if(input[i]==(6061+offset0))
{
	vR[i] = 6061;
}
else
{
	vR[i] = 6060;
}

}

}
else
{
	if(input[i]>(6057+offset0))
{
	if(input[i]==(6059+offset0))
{
	vR[i] = 6059;
}
else
{
	vR[i] = 6058;
}

}
else
{
	if(input[i]==(6057+offset0))
{
	vR[i] = 6057;
}
else
{
	vR[i] = 6056;
}

}

}

}
else
{
	if(input[i]>(6051+offset0))
{
	if(input[i]>(6053+offset0))
{
	if(input[i]==(6055+offset0))
{
	vR[i] = 6055;
}
else
{
	vR[i] = 6054;
}

}
else
{
	if(input[i]==(6053+offset0))
{
	vR[i] = 6053;
}
else
{
	vR[i] = 6052;
}

}

}
else
{
	if(input[i]>(6049+offset0))
{
	if(input[i]==(6051+offset0))
{
	vR[i] = 6051;
}
else
{
	vR[i] = 6050;
}

}
else
{
	if(input[i]==(6049+offset0))
{
	vR[i] = 6049;
}
else
{
	vR[i] = 6048;
}

}

}

}

}

}
else
{
	if(input[i]>(6031+offset0))
{
	if(input[i]>(6039+offset0))
{
	if(input[i]>(6043+offset0))
{
	if(input[i]>(6045+offset0))
{
	if(input[i]==(6047+offset0))
{
	vR[i] = 6047;
}
else
{
	vR[i] = 6046;
}

}
else
{
	if(input[i]==(6045+offset0))
{
	vR[i] = 6045;
}
else
{
	vR[i] = 6044;
}

}

}
else
{
	if(input[i]>(6041+offset0))
{
	if(input[i]==(6043+offset0))
{
	vR[i] = 6043;
}
else
{
	vR[i] = 6042;
}

}
else
{
	if(input[i]==(6041+offset0))
{
	vR[i] = 6041;
}
else
{
	vR[i] = 6040;
}

}

}

}
else
{
	if(input[i]>(6035+offset0))
{
	if(input[i]>(6037+offset0))
{
	if(input[i]==(6039+offset0))
{
	vR[i] = 6039;
}
else
{
	vR[i] = 6038;
}

}
else
{
	if(input[i]==(6037+offset0))
{
	vR[i] = 6037;
}
else
{
	vR[i] = 6036;
}

}

}
else
{
	if(input[i]>(6033+offset0))
{
	if(input[i]==(6035+offset0))
{
	vR[i] = 6035;
}
else
{
	vR[i] = 6034;
}

}
else
{
	if(input[i]==(6033+offset0))
{
	vR[i] = 6033;
}
else
{
	vR[i] = 6032;
}

}

}

}

}
else
{
	if(input[i]>(6023+offset0))
{
	if(input[i]>(6027+offset0))
{
	if(input[i]>(6029+offset0))
{
	if(input[i]==(6031+offset0))
{
	vR[i] = 6031;
}
else
{
	vR[i] = 6030;
}

}
else
{
	if(input[i]==(6029+offset0))
{
	vR[i] = 6029;
}
else
{
	vR[i] = 6028;
}

}

}
else
{
	if(input[i]>(6025+offset0))
{
	if(input[i]==(6027+offset0))
{
	vR[i] = 6027;
}
else
{
	vR[i] = 6026;
}

}
else
{
	if(input[i]==(6025+offset0))
{
	vR[i] = 6025;
}
else
{
	vR[i] = 6024;
}

}

}

}
else
{
	if(input[i]>(6019+offset0))
{
	if(input[i]>(6021+offset0))
{
	if(input[i]==(6023+offset0))
{
	vR[i] = 6023;
}
else
{
	vR[i] = 6022;
}

}
else
{
	if(input[i]==(6021+offset0))
{
	vR[i] = 6021;
}
else
{
	vR[i] = 6020;
}

}

}
else
{
	if(input[i]>(6017+offset0))
{
	if(input[i]==(6019+offset0))
{
	vR[i] = 6019;
}
else
{
	vR[i] = 6018;
}

}
else
{
	if(input[i]==(6017+offset0))
{
	vR[i] = 6017;
}
else
{
	vR[i] = 6016;
}

}

}

}

}

}

}

}
else
{
	if(input[i]>(5951+offset0))
{
	if(input[i]>(5983+offset0))
{
	if(input[i]>(5999+offset0))
{
	if(input[i]>(6007+offset0))
{
	if(input[i]>(6011+offset0))
{
	if(input[i]>(6013+offset0))
{
	if(input[i]==(6015+offset0))
{
	vR[i] = 6015;
}
else
{
	vR[i] = 6014;
}

}
else
{
	if(input[i]==(6013+offset0))
{
	vR[i] = 6013;
}
else
{
	vR[i] = 6012;
}

}

}
else
{
	if(input[i]>(6009+offset0))
{
	if(input[i]==(6011+offset0))
{
	vR[i] = 6011;
}
else
{
	vR[i] = 6010;
}

}
else
{
	if(input[i]==(6009+offset0))
{
	vR[i] = 6009;
}
else
{
	vR[i] = 6008;
}

}

}

}
else
{
	if(input[i]>(6003+offset0))
{
	if(input[i]>(6005+offset0))
{
	if(input[i]==(6007+offset0))
{
	vR[i] = 6007;
}
else
{
	vR[i] = 6006;
}

}
else
{
	if(input[i]==(6005+offset0))
{
	vR[i] = 6005;
}
else
{
	vR[i] = 6004;
}

}

}
else
{
	if(input[i]>(6001+offset0))
{
	if(input[i]==(6003+offset0))
{
	vR[i] = 6003;
}
else
{
	vR[i] = 6002;
}

}
else
{
	if(input[i]==(6001+offset0))
{
	vR[i] = 6001;
}
else
{
	vR[i] = 6000;
}

}

}

}

}
else
{
	if(input[i]>(5991+offset0))
{
	if(input[i]>(5995+offset0))
{
	if(input[i]>(5997+offset0))
{
	if(input[i]==(5999+offset0))
{
	vR[i] = 5999;
}
else
{
	vR[i] = 5998;
}

}
else
{
	if(input[i]==(5997+offset0))
{
	vR[i] = 5997;
}
else
{
	vR[i] = 5996;
}

}

}
else
{
	if(input[i]>(5993+offset0))
{
	if(input[i]==(5995+offset0))
{
	vR[i] = 5995;
}
else
{
	vR[i] = 5994;
}

}
else
{
	if(input[i]==(5993+offset0))
{
	vR[i] = 5993;
}
else
{
	vR[i] = 5992;
}

}

}

}
else
{
	if(input[i]>(5987+offset0))
{
	if(input[i]>(5989+offset0))
{
	if(input[i]==(5991+offset0))
{
	vR[i] = 5991;
}
else
{
	vR[i] = 5990;
}

}
else
{
	if(input[i]==(5989+offset0))
{
	vR[i] = 5989;
}
else
{
	vR[i] = 5988;
}

}

}
else
{
	if(input[i]>(5985+offset0))
{
	if(input[i]==(5987+offset0))
{
	vR[i] = 5987;
}
else
{
	vR[i] = 5986;
}

}
else
{
	if(input[i]==(5985+offset0))
{
	vR[i] = 5985;
}
else
{
	vR[i] = 5984;
}

}

}

}

}

}
else
{
	if(input[i]>(5967+offset0))
{
	if(input[i]>(5975+offset0))
{
	if(input[i]>(5979+offset0))
{
	if(input[i]>(5981+offset0))
{
	if(input[i]==(5983+offset0))
{
	vR[i] = 5983;
}
else
{
	vR[i] = 5982;
}

}
else
{
	if(input[i]==(5981+offset0))
{
	vR[i] = 5981;
}
else
{
	vR[i] = 5980;
}

}

}
else
{
	if(input[i]>(5977+offset0))
{
	if(input[i]==(5979+offset0))
{
	vR[i] = 5979;
}
else
{
	vR[i] = 5978;
}

}
else
{
	if(input[i]==(5977+offset0))
{
	vR[i] = 5977;
}
else
{
	vR[i] = 5976;
}

}

}

}
else
{
	if(input[i]>(5971+offset0))
{
	if(input[i]>(5973+offset0))
{
	if(input[i]==(5975+offset0))
{
	vR[i] = 5975;
}
else
{
	vR[i] = 5974;
}

}
else
{
	if(input[i]==(5973+offset0))
{
	vR[i] = 5973;
}
else
{
	vR[i] = 5972;
}

}

}
else
{
	if(input[i]>(5969+offset0))
{
	if(input[i]==(5971+offset0))
{
	vR[i] = 5971;
}
else
{
	vR[i] = 5970;
}

}
else
{
	if(input[i]==(5969+offset0))
{
	vR[i] = 5969;
}
else
{
	vR[i] = 5968;
}

}

}

}

}
else
{
	if(input[i]>(5959+offset0))
{
	if(input[i]>(5963+offset0))
{
	if(input[i]>(5965+offset0))
{
	if(input[i]==(5967+offset0))
{
	vR[i] = 5967;
}
else
{
	vR[i] = 5966;
}

}
else
{
	if(input[i]==(5965+offset0))
{
	vR[i] = 5965;
}
else
{
	vR[i] = 5964;
}

}

}
else
{
	if(input[i]>(5961+offset0))
{
	if(input[i]==(5963+offset0))
{
	vR[i] = 5963;
}
else
{
	vR[i] = 5962;
}

}
else
{
	if(input[i]==(5961+offset0))
{
	vR[i] = 5961;
}
else
{
	vR[i] = 5960;
}

}

}

}
else
{
	if(input[i]>(5955+offset0))
{
	if(input[i]>(5957+offset0))
{
	if(input[i]==(5959+offset0))
{
	vR[i] = 5959;
}
else
{
	vR[i] = 5958;
}

}
else
{
	if(input[i]==(5957+offset0))
{
	vR[i] = 5957;
}
else
{
	vR[i] = 5956;
}

}

}
else
{
	if(input[i]>(5953+offset0))
{
	if(input[i]==(5955+offset0))
{
	vR[i] = 5955;
}
else
{
	vR[i] = 5954;
}

}
else
{
	if(input[i]==(5953+offset0))
{
	vR[i] = 5953;
}
else
{
	vR[i] = 5952;
}

}

}

}

}

}

}
else
{
	if(input[i]>(5919+offset0))
{
	if(input[i]>(5935+offset0))
{
	if(input[i]>(5943+offset0))
{
	if(input[i]>(5947+offset0))
{
	if(input[i]>(5949+offset0))
{
	if(input[i]==(5951+offset0))
{
	vR[i] = 5951;
}
else
{
	vR[i] = 5950;
}

}
else
{
	if(input[i]==(5949+offset0))
{
	vR[i] = 5949;
}
else
{
	vR[i] = 5948;
}

}

}
else
{
	if(input[i]>(5945+offset0))
{
	if(input[i]==(5947+offset0))
{
	vR[i] = 5947;
}
else
{
	vR[i] = 5946;
}

}
else
{
	if(input[i]==(5945+offset0))
{
	vR[i] = 5945;
}
else
{
	vR[i] = 5944;
}

}

}

}
else
{
	if(input[i]>(5939+offset0))
{
	if(input[i]>(5941+offset0))
{
	if(input[i]==(5943+offset0))
{
	vR[i] = 5943;
}
else
{
	vR[i] = 5942;
}

}
else
{
	if(input[i]==(5941+offset0))
{
	vR[i] = 5941;
}
else
{
	vR[i] = 5940;
}

}

}
else
{
	if(input[i]>(5937+offset0))
{
	if(input[i]==(5939+offset0))
{
	vR[i] = 5939;
}
else
{
	vR[i] = 5938;
}

}
else
{
	if(input[i]==(5937+offset0))
{
	vR[i] = 5937;
}
else
{
	vR[i] = 5936;
}

}

}

}

}
else
{
	if(input[i]>(5927+offset0))
{
	if(input[i]>(5931+offset0))
{
	if(input[i]>(5933+offset0))
{
	if(input[i]==(5935+offset0))
{
	vR[i] = 5935;
}
else
{
	vR[i] = 5934;
}

}
else
{
	if(input[i]==(5933+offset0))
{
	vR[i] = 5933;
}
else
{
	vR[i] = 5932;
}

}

}
else
{
	if(input[i]>(5929+offset0))
{
	if(input[i]==(5931+offset0))
{
	vR[i] = 5931;
}
else
{
	vR[i] = 5930;
}

}
else
{
	if(input[i]==(5929+offset0))
{
	vR[i] = 5929;
}
else
{
	vR[i] = 5928;
}

}

}

}
else
{
	if(input[i]>(5923+offset0))
{
	if(input[i]>(5925+offset0))
{
	if(input[i]==(5927+offset0))
{
	vR[i] = 5927;
}
else
{
	vR[i] = 5926;
}

}
else
{
	if(input[i]==(5925+offset0))
{
	vR[i] = 5925;
}
else
{
	vR[i] = 5924;
}

}

}
else
{
	if(input[i]>(5921+offset0))
{
	if(input[i]==(5923+offset0))
{
	vR[i] = 5923;
}
else
{
	vR[i] = 5922;
}

}
else
{
	if(input[i]==(5921+offset0))
{
	vR[i] = 5921;
}
else
{
	vR[i] = 5920;
}

}

}

}

}

}
else
{
	if(input[i]>(5903+offset0))
{
	if(input[i]>(5911+offset0))
{
	if(input[i]>(5915+offset0))
{
	if(input[i]>(5917+offset0))
{
	if(input[i]==(5919+offset0))
{
	vR[i] = 5919;
}
else
{
	vR[i] = 5918;
}

}
else
{
	if(input[i]==(5917+offset0))
{
	vR[i] = 5917;
}
else
{
	vR[i] = 5916;
}

}

}
else
{
	if(input[i]>(5913+offset0))
{
	if(input[i]==(5915+offset0))
{
	vR[i] = 5915;
}
else
{
	vR[i] = 5914;
}

}
else
{
	if(input[i]==(5913+offset0))
{
	vR[i] = 5913;
}
else
{
	vR[i] = 5912;
}

}

}

}
else
{
	if(input[i]>(5907+offset0))
{
	if(input[i]>(5909+offset0))
{
	if(input[i]==(5911+offset0))
{
	vR[i] = 5911;
}
else
{
	vR[i] = 5910;
}

}
else
{
	if(input[i]==(5909+offset0))
{
	vR[i] = 5909;
}
else
{
	vR[i] = 5908;
}

}

}
else
{
	if(input[i]>(5905+offset0))
{
	if(input[i]==(5907+offset0))
{
	vR[i] = 5907;
}
else
{
	vR[i] = 5906;
}

}
else
{
	if(input[i]==(5905+offset0))
{
	vR[i] = 5905;
}
else
{
	vR[i] = 5904;
}

}

}

}

}
else
{
	if(input[i]>(5895+offset0))
{
	if(input[i]>(5899+offset0))
{
	if(input[i]>(5901+offset0))
{
	if(input[i]==(5903+offset0))
{
	vR[i] = 5903;
}
else
{
	vR[i] = 5902;
}

}
else
{
	if(input[i]==(5901+offset0))
{
	vR[i] = 5901;
}
else
{
	vR[i] = 5900;
}

}

}
else
{
	if(input[i]>(5897+offset0))
{
	if(input[i]==(5899+offset0))
{
	vR[i] = 5899;
}
else
{
	vR[i] = 5898;
}

}
else
{
	if(input[i]==(5897+offset0))
{
	vR[i] = 5897;
}
else
{
	vR[i] = 5896;
}

}

}

}
else
{
	if(input[i]>(5891+offset0))
{
	if(input[i]>(5893+offset0))
{
	if(input[i]==(5895+offset0))
{
	vR[i] = 5895;
}
else
{
	vR[i] = 5894;
}

}
else
{
	if(input[i]==(5893+offset0))
{
	vR[i] = 5893;
}
else
{
	vR[i] = 5892;
}

}

}
else
{
	if(input[i]>(5889+offset0))
{
	if(input[i]==(5891+offset0))
{
	vR[i] = 5891;
}
else
{
	vR[i] = 5890;
}

}
else
{
	if(input[i]==(5889+offset0))
{
	vR[i] = 5889;
}
else
{
	vR[i] = 5888;
}

}

}

}

}

}

}

}

}
else
{
	if(input[i]>(5759+offset0))
{
	if(input[i]>(5823+offset0))
{
	if(input[i]>(5855+offset0))
{
	if(input[i]>(5871+offset0))
{
	if(input[i]>(5879+offset0))
{
	if(input[i]>(5883+offset0))
{
	if(input[i]>(5885+offset0))
{
	if(input[i]==(5887+offset0))
{
	vR[i] = 5887;
}
else
{
	vR[i] = 5886;
}

}
else
{
	if(input[i]==(5885+offset0))
{
	vR[i] = 5885;
}
else
{
	vR[i] = 5884;
}

}

}
else
{
	if(input[i]>(5881+offset0))
{
	if(input[i]==(5883+offset0))
{
	vR[i] = 5883;
}
else
{
	vR[i] = 5882;
}

}
else
{
	if(input[i]==(5881+offset0))
{
	vR[i] = 5881;
}
else
{
	vR[i] = 5880;
}

}

}

}
else
{
	if(input[i]>(5875+offset0))
{
	if(input[i]>(5877+offset0))
{
	if(input[i]==(5879+offset0))
{
	vR[i] = 5879;
}
else
{
	vR[i] = 5878;
}

}
else
{
	if(input[i]==(5877+offset0))
{
	vR[i] = 5877;
}
else
{
	vR[i] = 5876;
}

}

}
else
{
	if(input[i]>(5873+offset0))
{
	if(input[i]==(5875+offset0))
{
	vR[i] = 5875;
}
else
{
	vR[i] = 5874;
}

}
else
{
	if(input[i]==(5873+offset0))
{
	vR[i] = 5873;
}
else
{
	vR[i] = 5872;
}

}

}

}

}
else
{
	if(input[i]>(5863+offset0))
{
	if(input[i]>(5867+offset0))
{
	if(input[i]>(5869+offset0))
{
	if(input[i]==(5871+offset0))
{
	vR[i] = 5871;
}
else
{
	vR[i] = 5870;
}

}
else
{
	if(input[i]==(5869+offset0))
{
	vR[i] = 5869;
}
else
{
	vR[i] = 5868;
}

}

}
else
{
	if(input[i]>(5865+offset0))
{
	if(input[i]==(5867+offset0))
{
	vR[i] = 5867;
}
else
{
	vR[i] = 5866;
}

}
else
{
	if(input[i]==(5865+offset0))
{
	vR[i] = 5865;
}
else
{
	vR[i] = 5864;
}

}

}

}
else
{
	if(input[i]>(5859+offset0))
{
	if(input[i]>(5861+offset0))
{
	if(input[i]==(5863+offset0))
{
	vR[i] = 5863;
}
else
{
	vR[i] = 5862;
}

}
else
{
	if(input[i]==(5861+offset0))
{
	vR[i] = 5861;
}
else
{
	vR[i] = 5860;
}

}

}
else
{
	if(input[i]>(5857+offset0))
{
	if(input[i]==(5859+offset0))
{
	vR[i] = 5859;
}
else
{
	vR[i] = 5858;
}

}
else
{
	if(input[i]==(5857+offset0))
{
	vR[i] = 5857;
}
else
{
	vR[i] = 5856;
}

}

}

}

}

}
else
{
	if(input[i]>(5839+offset0))
{
	if(input[i]>(5847+offset0))
{
	if(input[i]>(5851+offset0))
{
	if(input[i]>(5853+offset0))
{
	if(input[i]==(5855+offset0))
{
	vR[i] = 5855;
}
else
{
	vR[i] = 5854;
}

}
else
{
	if(input[i]==(5853+offset0))
{
	vR[i] = 5853;
}
else
{
	vR[i] = 5852;
}

}

}
else
{
	if(input[i]>(5849+offset0))
{
	if(input[i]==(5851+offset0))
{
	vR[i] = 5851;
}
else
{
	vR[i] = 5850;
}

}
else
{
	if(input[i]==(5849+offset0))
{
	vR[i] = 5849;
}
else
{
	vR[i] = 5848;
}

}

}

}
else
{
	if(input[i]>(5843+offset0))
{
	if(input[i]>(5845+offset0))
{
	if(input[i]==(5847+offset0))
{
	vR[i] = 5847;
}
else
{
	vR[i] = 5846;
}

}
else
{
	if(input[i]==(5845+offset0))
{
	vR[i] = 5845;
}
else
{
	vR[i] = 5844;
}

}

}
else
{
	if(input[i]>(5841+offset0))
{
	if(input[i]==(5843+offset0))
{
	vR[i] = 5843;
}
else
{
	vR[i] = 5842;
}

}
else
{
	if(input[i]==(5841+offset0))
{
	vR[i] = 5841;
}
else
{
	vR[i] = 5840;
}

}

}

}

}
else
{
	if(input[i]>(5831+offset0))
{
	if(input[i]>(5835+offset0))
{
	if(input[i]>(5837+offset0))
{
	if(input[i]==(5839+offset0))
{
	vR[i] = 5839;
}
else
{
	vR[i] = 5838;
}

}
else
{
	if(input[i]==(5837+offset0))
{
	vR[i] = 5837;
}
else
{
	vR[i] = 5836;
}

}

}
else
{
	if(input[i]>(5833+offset0))
{
	if(input[i]==(5835+offset0))
{
	vR[i] = 5835;
}
else
{
	vR[i] = 5834;
}

}
else
{
	if(input[i]==(5833+offset0))
{
	vR[i] = 5833;
}
else
{
	vR[i] = 5832;
}

}

}

}
else
{
	if(input[i]>(5827+offset0))
{
	if(input[i]>(5829+offset0))
{
	if(input[i]==(5831+offset0))
{
	vR[i] = 5831;
}
else
{
	vR[i] = 5830;
}

}
else
{
	if(input[i]==(5829+offset0))
{
	vR[i] = 5829;
}
else
{
	vR[i] = 5828;
}

}

}
else
{
	if(input[i]>(5825+offset0))
{
	if(input[i]==(5827+offset0))
{
	vR[i] = 5827;
}
else
{
	vR[i] = 5826;
}

}
else
{
	if(input[i]==(5825+offset0))
{
	vR[i] = 5825;
}
else
{
	vR[i] = 5824;
}

}

}

}

}

}

}
else
{
	if(input[i]>(5791+offset0))
{
	if(input[i]>(5807+offset0))
{
	if(input[i]>(5815+offset0))
{
	if(input[i]>(5819+offset0))
{
	if(input[i]>(5821+offset0))
{
	if(input[i]==(5823+offset0))
{
	vR[i] = 5823;
}
else
{
	vR[i] = 5822;
}

}
else
{
	if(input[i]==(5821+offset0))
{
	vR[i] = 5821;
}
else
{
	vR[i] = 5820;
}

}

}
else
{
	if(input[i]>(5817+offset0))
{
	if(input[i]==(5819+offset0))
{
	vR[i] = 5819;
}
else
{
	vR[i] = 5818;
}

}
else
{
	if(input[i]==(5817+offset0))
{
	vR[i] = 5817;
}
else
{
	vR[i] = 5816;
}

}

}

}
else
{
	if(input[i]>(5811+offset0))
{
	if(input[i]>(5813+offset0))
{
	if(input[i]==(5815+offset0))
{
	vR[i] = 5815;
}
else
{
	vR[i] = 5814;
}

}
else
{
	if(input[i]==(5813+offset0))
{
	vR[i] = 5813;
}
else
{
	vR[i] = 5812;
}

}

}
else
{
	if(input[i]>(5809+offset0))
{
	if(input[i]==(5811+offset0))
{
	vR[i] = 5811;
}
else
{
	vR[i] = 5810;
}

}
else
{
	if(input[i]==(5809+offset0))
{
	vR[i] = 5809;
}
else
{
	vR[i] = 5808;
}

}

}

}

}
else
{
	if(input[i]>(5799+offset0))
{
	if(input[i]>(5803+offset0))
{
	if(input[i]>(5805+offset0))
{
	if(input[i]==(5807+offset0))
{
	vR[i] = 5807;
}
else
{
	vR[i] = 5806;
}

}
else
{
	if(input[i]==(5805+offset0))
{
	vR[i] = 5805;
}
else
{
	vR[i] = 5804;
}

}

}
else
{
	if(input[i]>(5801+offset0))
{
	if(input[i]==(5803+offset0))
{
	vR[i] = 5803;
}
else
{
	vR[i] = 5802;
}

}
else
{
	if(input[i]==(5801+offset0))
{
	vR[i] = 5801;
}
else
{
	vR[i] = 5800;
}

}

}

}
else
{
	if(input[i]>(5795+offset0))
{
	if(input[i]>(5797+offset0))
{
	if(input[i]==(5799+offset0))
{
	vR[i] = 5799;
}
else
{
	vR[i] = 5798;
}

}
else
{
	if(input[i]==(5797+offset0))
{
	vR[i] = 5797;
}
else
{
	vR[i] = 5796;
}

}

}
else
{
	if(input[i]>(5793+offset0))
{
	if(input[i]==(5795+offset0))
{
	vR[i] = 5795;
}
else
{
	vR[i] = 5794;
}

}
else
{
	if(input[i]==(5793+offset0))
{
	vR[i] = 5793;
}
else
{
	vR[i] = 5792;
}

}

}

}

}

}
else
{
	if(input[i]>(5775+offset0))
{
	if(input[i]>(5783+offset0))
{
	if(input[i]>(5787+offset0))
{
	if(input[i]>(5789+offset0))
{
	if(input[i]==(5791+offset0))
{
	vR[i] = 5791;
}
else
{
	vR[i] = 5790;
}

}
else
{
	if(input[i]==(5789+offset0))
{
	vR[i] = 5789;
}
else
{
	vR[i] = 5788;
}

}

}
else
{
	if(input[i]>(5785+offset0))
{
	if(input[i]==(5787+offset0))
{
	vR[i] = 5787;
}
else
{
	vR[i] = 5786;
}

}
else
{
	if(input[i]==(5785+offset0))
{
	vR[i] = 5785;
}
else
{
	vR[i] = 5784;
}

}

}

}
else
{
	if(input[i]>(5779+offset0))
{
	if(input[i]>(5781+offset0))
{
	if(input[i]==(5783+offset0))
{
	vR[i] = 5783;
}
else
{
	vR[i] = 5782;
}

}
else
{
	if(input[i]==(5781+offset0))
{
	vR[i] = 5781;
}
else
{
	vR[i] = 5780;
}

}

}
else
{
	if(input[i]>(5777+offset0))
{
	if(input[i]==(5779+offset0))
{
	vR[i] = 5779;
}
else
{
	vR[i] = 5778;
}

}
else
{
	if(input[i]==(5777+offset0))
{
	vR[i] = 5777;
}
else
{
	vR[i] = 5776;
}

}

}

}

}
else
{
	if(input[i]>(5767+offset0))
{
	if(input[i]>(5771+offset0))
{
	if(input[i]>(5773+offset0))
{
	if(input[i]==(5775+offset0))
{
	vR[i] = 5775;
}
else
{
	vR[i] = 5774;
}

}
else
{
	if(input[i]==(5773+offset0))
{
	vR[i] = 5773;
}
else
{
	vR[i] = 5772;
}

}

}
else
{
	if(input[i]>(5769+offset0))
{
	if(input[i]==(5771+offset0))
{
	vR[i] = 5771;
}
else
{
	vR[i] = 5770;
}

}
else
{
	if(input[i]==(5769+offset0))
{
	vR[i] = 5769;
}
else
{
	vR[i] = 5768;
}

}

}

}
else
{
	if(input[i]>(5763+offset0))
{
	if(input[i]>(5765+offset0))
{
	if(input[i]==(5767+offset0))
{
	vR[i] = 5767;
}
else
{
	vR[i] = 5766;
}

}
else
{
	if(input[i]==(5765+offset0))
{
	vR[i] = 5765;
}
else
{
	vR[i] = 5764;
}

}

}
else
{
	if(input[i]>(5761+offset0))
{
	if(input[i]==(5763+offset0))
{
	vR[i] = 5763;
}
else
{
	vR[i] = 5762;
}

}
else
{
	if(input[i]==(5761+offset0))
{
	vR[i] = 5761;
}
else
{
	vR[i] = 5760;
}

}

}

}

}

}

}

}
else
{
	if(input[i]>(5695+offset0))
{
	if(input[i]>(5727+offset0))
{
	if(input[i]>(5743+offset0))
{
	if(input[i]>(5751+offset0))
{
	if(input[i]>(5755+offset0))
{
	if(input[i]>(5757+offset0))
{
	if(input[i]==(5759+offset0))
{
	vR[i] = 5759;
}
else
{
	vR[i] = 5758;
}

}
else
{
	if(input[i]==(5757+offset0))
{
	vR[i] = 5757;
}
else
{
	vR[i] = 5756;
}

}

}
else
{
	if(input[i]>(5753+offset0))
{
	if(input[i]==(5755+offset0))
{
	vR[i] = 5755;
}
else
{
	vR[i] = 5754;
}

}
else
{
	if(input[i]==(5753+offset0))
{
	vR[i] = 5753;
}
else
{
	vR[i] = 5752;
}

}

}

}
else
{
	if(input[i]>(5747+offset0))
{
	if(input[i]>(5749+offset0))
{
	if(input[i]==(5751+offset0))
{
	vR[i] = 5751;
}
else
{
	vR[i] = 5750;
}

}
else
{
	if(input[i]==(5749+offset0))
{
	vR[i] = 5749;
}
else
{
	vR[i] = 5748;
}

}

}
else
{
	if(input[i]>(5745+offset0))
{
	if(input[i]==(5747+offset0))
{
	vR[i] = 5747;
}
else
{
	vR[i] = 5746;
}

}
else
{
	if(input[i]==(5745+offset0))
{
	vR[i] = 5745;
}
else
{
	vR[i] = 5744;
}

}

}

}

}
else
{
	if(input[i]>(5735+offset0))
{
	if(input[i]>(5739+offset0))
{
	if(input[i]>(5741+offset0))
{
	if(input[i]==(5743+offset0))
{
	vR[i] = 5743;
}
else
{
	vR[i] = 5742;
}

}
else
{
	if(input[i]==(5741+offset0))
{
	vR[i] = 5741;
}
else
{
	vR[i] = 5740;
}

}

}
else
{
	if(input[i]>(5737+offset0))
{
	if(input[i]==(5739+offset0))
{
	vR[i] = 5739;
}
else
{
	vR[i] = 5738;
}

}
else
{
	if(input[i]==(5737+offset0))
{
	vR[i] = 5737;
}
else
{
	vR[i] = 5736;
}

}

}

}
else
{
	if(input[i]>(5731+offset0))
{
	if(input[i]>(5733+offset0))
{
	if(input[i]==(5735+offset0))
{
	vR[i] = 5735;
}
else
{
	vR[i] = 5734;
}

}
else
{
	if(input[i]==(5733+offset0))
{
	vR[i] = 5733;
}
else
{
	vR[i] = 5732;
}

}

}
else
{
	if(input[i]>(5729+offset0))
{
	if(input[i]==(5731+offset0))
{
	vR[i] = 5731;
}
else
{
	vR[i] = 5730;
}

}
else
{
	if(input[i]==(5729+offset0))
{
	vR[i] = 5729;
}
else
{
	vR[i] = 5728;
}

}

}

}

}

}
else
{
	if(input[i]>(5711+offset0))
{
	if(input[i]>(5719+offset0))
{
	if(input[i]>(5723+offset0))
{
	if(input[i]>(5725+offset0))
{
	if(input[i]==(5727+offset0))
{
	vR[i] = 5727;
}
else
{
	vR[i] = 5726;
}

}
else
{
	if(input[i]==(5725+offset0))
{
	vR[i] = 5725;
}
else
{
	vR[i] = 5724;
}

}

}
else
{
	if(input[i]>(5721+offset0))
{
	if(input[i]==(5723+offset0))
{
	vR[i] = 5723;
}
else
{
	vR[i] = 5722;
}

}
else
{
	if(input[i]==(5721+offset0))
{
	vR[i] = 5721;
}
else
{
	vR[i] = 5720;
}

}

}

}
else
{
	if(input[i]>(5715+offset0))
{
	if(input[i]>(5717+offset0))
{
	if(input[i]==(5719+offset0))
{
	vR[i] = 5719;
}
else
{
	vR[i] = 5718;
}

}
else
{
	if(input[i]==(5717+offset0))
{
	vR[i] = 5717;
}
else
{
	vR[i] = 5716;
}

}

}
else
{
	if(input[i]>(5713+offset0))
{
	if(input[i]==(5715+offset0))
{
	vR[i] = 5715;
}
else
{
	vR[i] = 5714;
}

}
else
{
	if(input[i]==(5713+offset0))
{
	vR[i] = 5713;
}
else
{
	vR[i] = 5712;
}

}

}

}

}
else
{
	if(input[i]>(5703+offset0))
{
	if(input[i]>(5707+offset0))
{
	if(input[i]>(5709+offset0))
{
	if(input[i]==(5711+offset0))
{
	vR[i] = 5711;
}
else
{
	vR[i] = 5710;
}

}
else
{
	if(input[i]==(5709+offset0))
{
	vR[i] = 5709;
}
else
{
	vR[i] = 5708;
}

}

}
else
{
	if(input[i]>(5705+offset0))
{
	if(input[i]==(5707+offset0))
{
	vR[i] = 5707;
}
else
{
	vR[i] = 5706;
}

}
else
{
	if(input[i]==(5705+offset0))
{
	vR[i] = 5705;
}
else
{
	vR[i] = 5704;
}

}

}

}
else
{
	if(input[i]>(5699+offset0))
{
	if(input[i]>(5701+offset0))
{
	if(input[i]==(5703+offset0))
{
	vR[i] = 5703;
}
else
{
	vR[i] = 5702;
}

}
else
{
	if(input[i]==(5701+offset0))
{
	vR[i] = 5701;
}
else
{
	vR[i] = 5700;
}

}

}
else
{
	if(input[i]>(5697+offset0))
{
	if(input[i]==(5699+offset0))
{
	vR[i] = 5699;
}
else
{
	vR[i] = 5698;
}

}
else
{
	if(input[i]==(5697+offset0))
{
	vR[i] = 5697;
}
else
{
	vR[i] = 5696;
}

}

}

}

}

}

}
else
{
	if(input[i]>(5663+offset0))
{
	if(input[i]>(5679+offset0))
{
	if(input[i]>(5687+offset0))
{
	if(input[i]>(5691+offset0))
{
	if(input[i]>(5693+offset0))
{
	if(input[i]==(5695+offset0))
{
	vR[i] = 5695;
}
else
{
	vR[i] = 5694;
}

}
else
{
	if(input[i]==(5693+offset0))
{
	vR[i] = 5693;
}
else
{
	vR[i] = 5692;
}

}

}
else
{
	if(input[i]>(5689+offset0))
{
	if(input[i]==(5691+offset0))
{
	vR[i] = 5691;
}
else
{
	vR[i] = 5690;
}

}
else
{
	if(input[i]==(5689+offset0))
{
	vR[i] = 5689;
}
else
{
	vR[i] = 5688;
}

}

}

}
else
{
	if(input[i]>(5683+offset0))
{
	if(input[i]>(5685+offset0))
{
	if(input[i]==(5687+offset0))
{
	vR[i] = 5687;
}
else
{
	vR[i] = 5686;
}

}
else
{
	if(input[i]==(5685+offset0))
{
	vR[i] = 5685;
}
else
{
	vR[i] = 5684;
}

}

}
else
{
	if(input[i]>(5681+offset0))
{
	if(input[i]==(5683+offset0))
{
	vR[i] = 5683;
}
else
{
	vR[i] = 5682;
}

}
else
{
	if(input[i]==(5681+offset0))
{
	vR[i] = 5681;
}
else
{
	vR[i] = 5680;
}

}

}

}

}
else
{
	if(input[i]>(5671+offset0))
{
	if(input[i]>(5675+offset0))
{
	if(input[i]>(5677+offset0))
{
	if(input[i]==(5679+offset0))
{
	vR[i] = 5679;
}
else
{
	vR[i] = 5678;
}

}
else
{
	if(input[i]==(5677+offset0))
{
	vR[i] = 5677;
}
else
{
	vR[i] = 5676;
}

}

}
else
{
	if(input[i]>(5673+offset0))
{
	if(input[i]==(5675+offset0))
{
	vR[i] = 5675;
}
else
{
	vR[i] = 5674;
}

}
else
{
	if(input[i]==(5673+offset0))
{
	vR[i] = 5673;
}
else
{
	vR[i] = 5672;
}

}

}

}
else
{
	if(input[i]>(5667+offset0))
{
	if(input[i]>(5669+offset0))
{
	if(input[i]==(5671+offset0))
{
	vR[i] = 5671;
}
else
{
	vR[i] = 5670;
}

}
else
{
	if(input[i]==(5669+offset0))
{
	vR[i] = 5669;
}
else
{
	vR[i] = 5668;
}

}

}
else
{
	if(input[i]>(5665+offset0))
{
	if(input[i]==(5667+offset0))
{
	vR[i] = 5667;
}
else
{
	vR[i] = 5666;
}

}
else
{
	if(input[i]==(5665+offset0))
{
	vR[i] = 5665;
}
else
{
	vR[i] = 5664;
}

}

}

}

}

}
else
{
	if(input[i]>(5647+offset0))
{
	if(input[i]>(5655+offset0))
{
	if(input[i]>(5659+offset0))
{
	if(input[i]>(5661+offset0))
{
	if(input[i]==(5663+offset0))
{
	vR[i] = 5663;
}
else
{
	vR[i] = 5662;
}

}
else
{
	if(input[i]==(5661+offset0))
{
	vR[i] = 5661;
}
else
{
	vR[i] = 5660;
}

}

}
else
{
	if(input[i]>(5657+offset0))
{
	if(input[i]==(5659+offset0))
{
	vR[i] = 5659;
}
else
{
	vR[i] = 5658;
}

}
else
{
	if(input[i]==(5657+offset0))
{
	vR[i] = 5657;
}
else
{
	vR[i] = 5656;
}

}

}

}
else
{
	if(input[i]>(5651+offset0))
{
	if(input[i]>(5653+offset0))
{
	if(input[i]==(5655+offset0))
{
	vR[i] = 5655;
}
else
{
	vR[i] = 5654;
}

}
else
{
	if(input[i]==(5653+offset0))
{
	vR[i] = 5653;
}
else
{
	vR[i] = 5652;
}

}

}
else
{
	if(input[i]>(5649+offset0))
{
	if(input[i]==(5651+offset0))
{
	vR[i] = 5651;
}
else
{
	vR[i] = 5650;
}

}
else
{
	if(input[i]==(5649+offset0))
{
	vR[i] = 5649;
}
else
{
	vR[i] = 5648;
}

}

}

}

}
else
{
	if(input[i]>(5639+offset0))
{
	if(input[i]>(5643+offset0))
{
	if(input[i]>(5645+offset0))
{
	if(input[i]==(5647+offset0))
{
	vR[i] = 5647;
}
else
{
	vR[i] = 5646;
}

}
else
{
	if(input[i]==(5645+offset0))
{
	vR[i] = 5645;
}
else
{
	vR[i] = 5644;
}

}

}
else
{
	if(input[i]>(5641+offset0))
{
	if(input[i]==(5643+offset0))
{
	vR[i] = 5643;
}
else
{
	vR[i] = 5642;
}

}
else
{
	if(input[i]==(5641+offset0))
{
	vR[i] = 5641;
}
else
{
	vR[i] = 5640;
}

}

}

}
else
{
	if(input[i]>(5635+offset0))
{
	if(input[i]>(5637+offset0))
{
	if(input[i]==(5639+offset0))
{
	vR[i] = 5639;
}
else
{
	vR[i] = 5638;
}

}
else
{
	if(input[i]==(5637+offset0))
{
	vR[i] = 5637;
}
else
{
	vR[i] = 5636;
}

}

}
else
{
	if(input[i]>(5633+offset0))
{
	if(input[i]==(5635+offset0))
{
	vR[i] = 5635;
}
else
{
	vR[i] = 5634;
}

}
else
{
	if(input[i]==(5633+offset0))
{
	vR[i] = 5633;
}
else
{
	vR[i] = 5632;
}

}

}

}

}

}

}

}

}

}
else
{
	if(input[i]>(5375+offset0))
{
	if(input[i]>(5503+offset0))
{
	if(input[i]>(5567+offset0))
{
	if(input[i]>(5599+offset0))
{
	if(input[i]>(5615+offset0))
{
	if(input[i]>(5623+offset0))
{
	if(input[i]>(5627+offset0))
{
	if(input[i]>(5629+offset0))
{
	if(input[i]==(5631+offset0))
{
	vR[i] = 5631;
}
else
{
	vR[i] = 5630;
}

}
else
{
	if(input[i]==(5629+offset0))
{
	vR[i] = 5629;
}
else
{
	vR[i] = 5628;
}

}

}
else
{
	if(input[i]>(5625+offset0))
{
	if(input[i]==(5627+offset0))
{
	vR[i] = 5627;
}
else
{
	vR[i] = 5626;
}

}
else
{
	if(input[i]==(5625+offset0))
{
	vR[i] = 5625;
}
else
{
	vR[i] = 5624;
}

}

}

}
else
{
	if(input[i]>(5619+offset0))
{
	if(input[i]>(5621+offset0))
{
	if(input[i]==(5623+offset0))
{
	vR[i] = 5623;
}
else
{
	vR[i] = 5622;
}

}
else
{
	if(input[i]==(5621+offset0))
{
	vR[i] = 5621;
}
else
{
	vR[i] = 5620;
}

}

}
else
{
	if(input[i]>(5617+offset0))
{
	if(input[i]==(5619+offset0))
{
	vR[i] = 5619;
}
else
{
	vR[i] = 5618;
}

}
else
{
	if(input[i]==(5617+offset0))
{
	vR[i] = 5617;
}
else
{
	vR[i] = 5616;
}

}

}

}

}
else
{
	if(input[i]>(5607+offset0))
{
	if(input[i]>(5611+offset0))
{
	if(input[i]>(5613+offset0))
{
	if(input[i]==(5615+offset0))
{
	vR[i] = 5615;
}
else
{
	vR[i] = 5614;
}

}
else
{
	if(input[i]==(5613+offset0))
{
	vR[i] = 5613;
}
else
{
	vR[i] = 5612;
}

}

}
else
{
	if(input[i]>(5609+offset0))
{
	if(input[i]==(5611+offset0))
{
	vR[i] = 5611;
}
else
{
	vR[i] = 5610;
}

}
else
{
	if(input[i]==(5609+offset0))
{
	vR[i] = 5609;
}
else
{
	vR[i] = 5608;
}

}

}

}
else
{
	if(input[i]>(5603+offset0))
{
	if(input[i]>(5605+offset0))
{
	if(input[i]==(5607+offset0))
{
	vR[i] = 5607;
}
else
{
	vR[i] = 5606;
}

}
else
{
	if(input[i]==(5605+offset0))
{
	vR[i] = 5605;
}
else
{
	vR[i] = 5604;
}

}

}
else
{
	if(input[i]>(5601+offset0))
{
	if(input[i]==(5603+offset0))
{
	vR[i] = 5603;
}
else
{
	vR[i] = 5602;
}

}
else
{
	if(input[i]==(5601+offset0))
{
	vR[i] = 5601;
}
else
{
	vR[i] = 5600;
}

}

}

}

}

}
else
{
	if(input[i]>(5583+offset0))
{
	if(input[i]>(5591+offset0))
{
	if(input[i]>(5595+offset0))
{
	if(input[i]>(5597+offset0))
{
	if(input[i]==(5599+offset0))
{
	vR[i] = 5599;
}
else
{
	vR[i] = 5598;
}

}
else
{
	if(input[i]==(5597+offset0))
{
	vR[i] = 5597;
}
else
{
	vR[i] = 5596;
}

}

}
else
{
	if(input[i]>(5593+offset0))
{
	if(input[i]==(5595+offset0))
{
	vR[i] = 5595;
}
else
{
	vR[i] = 5594;
}

}
else
{
	if(input[i]==(5593+offset0))
{
	vR[i] = 5593;
}
else
{
	vR[i] = 5592;
}

}

}

}
else
{
	if(input[i]>(5587+offset0))
{
	if(input[i]>(5589+offset0))
{
	if(input[i]==(5591+offset0))
{
	vR[i] = 5591;
}
else
{
	vR[i] = 5590;
}

}
else
{
	if(input[i]==(5589+offset0))
{
	vR[i] = 5589;
}
else
{
	vR[i] = 5588;
}

}

}
else
{
	if(input[i]>(5585+offset0))
{
	if(input[i]==(5587+offset0))
{
	vR[i] = 5587;
}
else
{
	vR[i] = 5586;
}

}
else
{
	if(input[i]==(5585+offset0))
{
	vR[i] = 5585;
}
else
{
	vR[i] = 5584;
}

}

}

}

}
else
{
	if(input[i]>(5575+offset0))
{
	if(input[i]>(5579+offset0))
{
	if(input[i]>(5581+offset0))
{
	if(input[i]==(5583+offset0))
{
	vR[i] = 5583;
}
else
{
	vR[i] = 5582;
}

}
else
{
	if(input[i]==(5581+offset0))
{
	vR[i] = 5581;
}
else
{
	vR[i] = 5580;
}

}

}
else
{
	if(input[i]>(5577+offset0))
{
	if(input[i]==(5579+offset0))
{
	vR[i] = 5579;
}
else
{
	vR[i] = 5578;
}

}
else
{
	if(input[i]==(5577+offset0))
{
	vR[i] = 5577;
}
else
{
	vR[i] = 5576;
}

}

}

}
else
{
	if(input[i]>(5571+offset0))
{
	if(input[i]>(5573+offset0))
{
	if(input[i]==(5575+offset0))
{
	vR[i] = 5575;
}
else
{
	vR[i] = 5574;
}

}
else
{
	if(input[i]==(5573+offset0))
{
	vR[i] = 5573;
}
else
{
	vR[i] = 5572;
}

}

}
else
{
	if(input[i]>(5569+offset0))
{
	if(input[i]==(5571+offset0))
{
	vR[i] = 5571;
}
else
{
	vR[i] = 5570;
}

}
else
{
	if(input[i]==(5569+offset0))
{
	vR[i] = 5569;
}
else
{
	vR[i] = 5568;
}

}

}

}

}

}

}
else
{
	if(input[i]>(5535+offset0))
{
	if(input[i]>(5551+offset0))
{
	if(input[i]>(5559+offset0))
{
	if(input[i]>(5563+offset0))
{
	if(input[i]>(5565+offset0))
{
	if(input[i]==(5567+offset0))
{
	vR[i] = 5567;
}
else
{
	vR[i] = 5566;
}

}
else
{
	if(input[i]==(5565+offset0))
{
	vR[i] = 5565;
}
else
{
	vR[i] = 5564;
}

}

}
else
{
	if(input[i]>(5561+offset0))
{
	if(input[i]==(5563+offset0))
{
	vR[i] = 5563;
}
else
{
	vR[i] = 5562;
}

}
else
{
	if(input[i]==(5561+offset0))
{
	vR[i] = 5561;
}
else
{
	vR[i] = 5560;
}

}

}

}
else
{
	if(input[i]>(5555+offset0))
{
	if(input[i]>(5557+offset0))
{
	if(input[i]==(5559+offset0))
{
	vR[i] = 5559;
}
else
{
	vR[i] = 5558;
}

}
else
{
	if(input[i]==(5557+offset0))
{
	vR[i] = 5557;
}
else
{
	vR[i] = 5556;
}

}

}
else
{
	if(input[i]>(5553+offset0))
{
	if(input[i]==(5555+offset0))
{
	vR[i] = 5555;
}
else
{
	vR[i] = 5554;
}

}
else
{
	if(input[i]==(5553+offset0))
{
	vR[i] = 5553;
}
else
{
	vR[i] = 5552;
}

}

}

}

}
else
{
	if(input[i]>(5543+offset0))
{
	if(input[i]>(5547+offset0))
{
	if(input[i]>(5549+offset0))
{
	if(input[i]==(5551+offset0))
{
	vR[i] = 5551;
}
else
{
	vR[i] = 5550;
}

}
else
{
	if(input[i]==(5549+offset0))
{
	vR[i] = 5549;
}
else
{
	vR[i] = 5548;
}

}

}
else
{
	if(input[i]>(5545+offset0))
{
	if(input[i]==(5547+offset0))
{
	vR[i] = 5547;
}
else
{
	vR[i] = 5546;
}

}
else
{
	if(input[i]==(5545+offset0))
{
	vR[i] = 5545;
}
else
{
	vR[i] = 5544;
}

}

}

}
else
{
	if(input[i]>(5539+offset0))
{
	if(input[i]>(5541+offset0))
{
	if(input[i]==(5543+offset0))
{
	vR[i] = 5543;
}
else
{
	vR[i] = 5542;
}

}
else
{
	if(input[i]==(5541+offset0))
{
	vR[i] = 5541;
}
else
{
	vR[i] = 5540;
}

}

}
else
{
	if(input[i]>(5537+offset0))
{
	if(input[i]==(5539+offset0))
{
	vR[i] = 5539;
}
else
{
	vR[i] = 5538;
}

}
else
{
	if(input[i]==(5537+offset0))
{
	vR[i] = 5537;
}
else
{
	vR[i] = 5536;
}

}

}

}

}

}
else
{
	if(input[i]>(5519+offset0))
{
	if(input[i]>(5527+offset0))
{
	if(input[i]>(5531+offset0))
{
	if(input[i]>(5533+offset0))
{
	if(input[i]==(5535+offset0))
{
	vR[i] = 5535;
}
else
{
	vR[i] = 5534;
}

}
else
{
	if(input[i]==(5533+offset0))
{
	vR[i] = 5533;
}
else
{
	vR[i] = 5532;
}

}

}
else
{
	if(input[i]>(5529+offset0))
{
	if(input[i]==(5531+offset0))
{
	vR[i] = 5531;
}
else
{
	vR[i] = 5530;
}

}
else
{
	if(input[i]==(5529+offset0))
{
	vR[i] = 5529;
}
else
{
	vR[i] = 5528;
}

}

}

}
else
{
	if(input[i]>(5523+offset0))
{
	if(input[i]>(5525+offset0))
{
	if(input[i]==(5527+offset0))
{
	vR[i] = 5527;
}
else
{
	vR[i] = 5526;
}

}
else
{
	if(input[i]==(5525+offset0))
{
	vR[i] = 5525;
}
else
{
	vR[i] = 5524;
}

}

}
else
{
	if(input[i]>(5521+offset0))
{
	if(input[i]==(5523+offset0))
{
	vR[i] = 5523;
}
else
{
	vR[i] = 5522;
}

}
else
{
	if(input[i]==(5521+offset0))
{
	vR[i] = 5521;
}
else
{
	vR[i] = 5520;
}

}

}

}

}
else
{
	if(input[i]>(5511+offset0))
{
	if(input[i]>(5515+offset0))
{
	if(input[i]>(5517+offset0))
{
	if(input[i]==(5519+offset0))
{
	vR[i] = 5519;
}
else
{
	vR[i] = 5518;
}

}
else
{
	if(input[i]==(5517+offset0))
{
	vR[i] = 5517;
}
else
{
	vR[i] = 5516;
}

}

}
else
{
	if(input[i]>(5513+offset0))
{
	if(input[i]==(5515+offset0))
{
	vR[i] = 5515;
}
else
{
	vR[i] = 5514;
}

}
else
{
	if(input[i]==(5513+offset0))
{
	vR[i] = 5513;
}
else
{
	vR[i] = 5512;
}

}

}

}
else
{
	if(input[i]>(5507+offset0))
{
	if(input[i]>(5509+offset0))
{
	if(input[i]==(5511+offset0))
{
	vR[i] = 5511;
}
else
{
	vR[i] = 5510;
}

}
else
{
	if(input[i]==(5509+offset0))
{
	vR[i] = 5509;
}
else
{
	vR[i] = 5508;
}

}

}
else
{
	if(input[i]>(5505+offset0))
{
	if(input[i]==(5507+offset0))
{
	vR[i] = 5507;
}
else
{
	vR[i] = 5506;
}

}
else
{
	if(input[i]==(5505+offset0))
{
	vR[i] = 5505;
}
else
{
	vR[i] = 5504;
}

}

}

}

}

}

}

}
else
{
	if(input[i]>(5439+offset0))
{
	if(input[i]>(5471+offset0))
{
	if(input[i]>(5487+offset0))
{
	if(input[i]>(5495+offset0))
{
	if(input[i]>(5499+offset0))
{
	if(input[i]>(5501+offset0))
{
	if(input[i]==(5503+offset0))
{
	vR[i] = 5503;
}
else
{
	vR[i] = 5502;
}

}
else
{
	if(input[i]==(5501+offset0))
{
	vR[i] = 5501;
}
else
{
	vR[i] = 5500;
}

}

}
else
{
	if(input[i]>(5497+offset0))
{
	if(input[i]==(5499+offset0))
{
	vR[i] = 5499;
}
else
{
	vR[i] = 5498;
}

}
else
{
	if(input[i]==(5497+offset0))
{
	vR[i] = 5497;
}
else
{
	vR[i] = 5496;
}

}

}

}
else
{
	if(input[i]>(5491+offset0))
{
	if(input[i]>(5493+offset0))
{
	if(input[i]==(5495+offset0))
{
	vR[i] = 5495;
}
else
{
	vR[i] = 5494;
}

}
else
{
	if(input[i]==(5493+offset0))
{
	vR[i] = 5493;
}
else
{
	vR[i] = 5492;
}

}

}
else
{
	if(input[i]>(5489+offset0))
{
	if(input[i]==(5491+offset0))
{
	vR[i] = 5491;
}
else
{
	vR[i] = 5490;
}

}
else
{
	if(input[i]==(5489+offset0))
{
	vR[i] = 5489;
}
else
{
	vR[i] = 5488;
}

}

}

}

}
else
{
	if(input[i]>(5479+offset0))
{
	if(input[i]>(5483+offset0))
{
	if(input[i]>(5485+offset0))
{
	if(input[i]==(5487+offset0))
{
	vR[i] = 5487;
}
else
{
	vR[i] = 5486;
}

}
else
{
	if(input[i]==(5485+offset0))
{
	vR[i] = 5485;
}
else
{
	vR[i] = 5484;
}

}

}
else
{
	if(input[i]>(5481+offset0))
{
	if(input[i]==(5483+offset0))
{
	vR[i] = 5483;
}
else
{
	vR[i] = 5482;
}

}
else
{
	if(input[i]==(5481+offset0))
{
	vR[i] = 5481;
}
else
{
	vR[i] = 5480;
}

}

}

}
else
{
	if(input[i]>(5475+offset0))
{
	if(input[i]>(5477+offset0))
{
	if(input[i]==(5479+offset0))
{
	vR[i] = 5479;
}
else
{
	vR[i] = 5478;
}

}
else
{
	if(input[i]==(5477+offset0))
{
	vR[i] = 5477;
}
else
{
	vR[i] = 5476;
}

}

}
else
{
	if(input[i]>(5473+offset0))
{
	if(input[i]==(5475+offset0))
{
	vR[i] = 5475;
}
else
{
	vR[i] = 5474;
}

}
else
{
	if(input[i]==(5473+offset0))
{
	vR[i] = 5473;
}
else
{
	vR[i] = 5472;
}

}

}

}

}

}
else
{
	if(input[i]>(5455+offset0))
{
	if(input[i]>(5463+offset0))
{
	if(input[i]>(5467+offset0))
{
	if(input[i]>(5469+offset0))
{
	if(input[i]==(5471+offset0))
{
	vR[i] = 5471;
}
else
{
	vR[i] = 5470;
}

}
else
{
	if(input[i]==(5469+offset0))
{
	vR[i] = 5469;
}
else
{
	vR[i] = 5468;
}

}

}
else
{
	if(input[i]>(5465+offset0))
{
	if(input[i]==(5467+offset0))
{
	vR[i] = 5467;
}
else
{
	vR[i] = 5466;
}

}
else
{
	if(input[i]==(5465+offset0))
{
	vR[i] = 5465;
}
else
{
	vR[i] = 5464;
}

}

}

}
else
{
	if(input[i]>(5459+offset0))
{
	if(input[i]>(5461+offset0))
{
	if(input[i]==(5463+offset0))
{
	vR[i] = 5463;
}
else
{
	vR[i] = 5462;
}

}
else
{
	if(input[i]==(5461+offset0))
{
	vR[i] = 5461;
}
else
{
	vR[i] = 5460;
}

}

}
else
{
	if(input[i]>(5457+offset0))
{
	if(input[i]==(5459+offset0))
{
	vR[i] = 5459;
}
else
{
	vR[i] = 5458;
}

}
else
{
	if(input[i]==(5457+offset0))
{
	vR[i] = 5457;
}
else
{
	vR[i] = 5456;
}

}

}

}

}
else
{
	if(input[i]>(5447+offset0))
{
	if(input[i]>(5451+offset0))
{
	if(input[i]>(5453+offset0))
{
	if(input[i]==(5455+offset0))
{
	vR[i] = 5455;
}
else
{
	vR[i] = 5454;
}

}
else
{
	if(input[i]==(5453+offset0))
{
	vR[i] = 5453;
}
else
{
	vR[i] = 5452;
}

}

}
else
{
	if(input[i]>(5449+offset0))
{
	if(input[i]==(5451+offset0))
{
	vR[i] = 5451;
}
else
{
	vR[i] = 5450;
}

}
else
{
	if(input[i]==(5449+offset0))
{
	vR[i] = 5449;
}
else
{
	vR[i] = 5448;
}

}

}

}
else
{
	if(input[i]>(5443+offset0))
{
	if(input[i]>(5445+offset0))
{
	if(input[i]==(5447+offset0))
{
	vR[i] = 5447;
}
else
{
	vR[i] = 5446;
}

}
else
{
	if(input[i]==(5445+offset0))
{
	vR[i] = 5445;
}
else
{
	vR[i] = 5444;
}

}

}
else
{
	if(input[i]>(5441+offset0))
{
	if(input[i]==(5443+offset0))
{
	vR[i] = 5443;
}
else
{
	vR[i] = 5442;
}

}
else
{
	if(input[i]==(5441+offset0))
{
	vR[i] = 5441;
}
else
{
	vR[i] = 5440;
}

}

}

}

}

}

}
else
{
	if(input[i]>(5407+offset0))
{
	if(input[i]>(5423+offset0))
{
	if(input[i]>(5431+offset0))
{
	if(input[i]>(5435+offset0))
{
	if(input[i]>(5437+offset0))
{
	if(input[i]==(5439+offset0))
{
	vR[i] = 5439;
}
else
{
	vR[i] = 5438;
}

}
else
{
	if(input[i]==(5437+offset0))
{
	vR[i] = 5437;
}
else
{
	vR[i] = 5436;
}

}

}
else
{
	if(input[i]>(5433+offset0))
{
	if(input[i]==(5435+offset0))
{
	vR[i] = 5435;
}
else
{
	vR[i] = 5434;
}

}
else
{
	if(input[i]==(5433+offset0))
{
	vR[i] = 5433;
}
else
{
	vR[i] = 5432;
}

}

}

}
else
{
	if(input[i]>(5427+offset0))
{
	if(input[i]>(5429+offset0))
{
	if(input[i]==(5431+offset0))
{
	vR[i] = 5431;
}
else
{
	vR[i] = 5430;
}

}
else
{
	if(input[i]==(5429+offset0))
{
	vR[i] = 5429;
}
else
{
	vR[i] = 5428;
}

}

}
else
{
	if(input[i]>(5425+offset0))
{
	if(input[i]==(5427+offset0))
{
	vR[i] = 5427;
}
else
{
	vR[i] = 5426;
}

}
else
{
	if(input[i]==(5425+offset0))
{
	vR[i] = 5425;
}
else
{
	vR[i] = 5424;
}

}

}

}

}
else
{
	if(input[i]>(5415+offset0))
{
	if(input[i]>(5419+offset0))
{
	if(input[i]>(5421+offset0))
{
	if(input[i]==(5423+offset0))
{
	vR[i] = 5423;
}
else
{
	vR[i] = 5422;
}

}
else
{
	if(input[i]==(5421+offset0))
{
	vR[i] = 5421;
}
else
{
	vR[i] = 5420;
}

}

}
else
{
	if(input[i]>(5417+offset0))
{
	if(input[i]==(5419+offset0))
{
	vR[i] = 5419;
}
else
{
	vR[i] = 5418;
}

}
else
{
	if(input[i]==(5417+offset0))
{
	vR[i] = 5417;
}
else
{
	vR[i] = 5416;
}

}

}

}
else
{
	if(input[i]>(5411+offset0))
{
	if(input[i]>(5413+offset0))
{
	if(input[i]==(5415+offset0))
{
	vR[i] = 5415;
}
else
{
	vR[i] = 5414;
}

}
else
{
	if(input[i]==(5413+offset0))
{
	vR[i] = 5413;
}
else
{
	vR[i] = 5412;
}

}

}
else
{
	if(input[i]>(5409+offset0))
{
	if(input[i]==(5411+offset0))
{
	vR[i] = 5411;
}
else
{
	vR[i] = 5410;
}

}
else
{
	if(input[i]==(5409+offset0))
{
	vR[i] = 5409;
}
else
{
	vR[i] = 5408;
}

}

}

}

}

}
else
{
	if(input[i]>(5391+offset0))
{
	if(input[i]>(5399+offset0))
{
	if(input[i]>(5403+offset0))
{
	if(input[i]>(5405+offset0))
{
	if(input[i]==(5407+offset0))
{
	vR[i] = 5407;
}
else
{
	vR[i] = 5406;
}

}
else
{
	if(input[i]==(5405+offset0))
{
	vR[i] = 5405;
}
else
{
	vR[i] = 5404;
}

}

}
else
{
	if(input[i]>(5401+offset0))
{
	if(input[i]==(5403+offset0))
{
	vR[i] = 5403;
}
else
{
	vR[i] = 5402;
}

}
else
{
	if(input[i]==(5401+offset0))
{
	vR[i] = 5401;
}
else
{
	vR[i] = 5400;
}

}

}

}
else
{
	if(input[i]>(5395+offset0))
{
	if(input[i]>(5397+offset0))
{
	if(input[i]==(5399+offset0))
{
	vR[i] = 5399;
}
else
{
	vR[i] = 5398;
}

}
else
{
	if(input[i]==(5397+offset0))
{
	vR[i] = 5397;
}
else
{
	vR[i] = 5396;
}

}

}
else
{
	if(input[i]>(5393+offset0))
{
	if(input[i]==(5395+offset0))
{
	vR[i] = 5395;
}
else
{
	vR[i] = 5394;
}

}
else
{
	if(input[i]==(5393+offset0))
{
	vR[i] = 5393;
}
else
{
	vR[i] = 5392;
}

}

}

}

}
else
{
	if(input[i]>(5383+offset0))
{
	if(input[i]>(5387+offset0))
{
	if(input[i]>(5389+offset0))
{
	if(input[i]==(5391+offset0))
{
	vR[i] = 5391;
}
else
{
	vR[i] = 5390;
}

}
else
{
	if(input[i]==(5389+offset0))
{
	vR[i] = 5389;
}
else
{
	vR[i] = 5388;
}

}

}
else
{
	if(input[i]>(5385+offset0))
{
	if(input[i]==(5387+offset0))
{
	vR[i] = 5387;
}
else
{
	vR[i] = 5386;
}

}
else
{
	if(input[i]==(5385+offset0))
{
	vR[i] = 5385;
}
else
{
	vR[i] = 5384;
}

}

}

}
else
{
	if(input[i]>(5379+offset0))
{
	if(input[i]>(5381+offset0))
{
	if(input[i]==(5383+offset0))
{
	vR[i] = 5383;
}
else
{
	vR[i] = 5382;
}

}
else
{
	if(input[i]==(5381+offset0))
{
	vR[i] = 5381;
}
else
{
	vR[i] = 5380;
}

}

}
else
{
	if(input[i]>(5377+offset0))
{
	if(input[i]==(5379+offset0))
{
	vR[i] = 5379;
}
else
{
	vR[i] = 5378;
}

}
else
{
	if(input[i]==(5377+offset0))
{
	vR[i] = 5377;
}
else
{
	vR[i] = 5376;
}

}

}

}

}

}

}

}

}
else
{
	if(input[i]>(5247+offset0))
{
	if(input[i]>(5311+offset0))
{
	if(input[i]>(5343+offset0))
{
	if(input[i]>(5359+offset0))
{
	if(input[i]>(5367+offset0))
{
	if(input[i]>(5371+offset0))
{
	if(input[i]>(5373+offset0))
{
	if(input[i]==(5375+offset0))
{
	vR[i] = 5375;
}
else
{
	vR[i] = 5374;
}

}
else
{
	if(input[i]==(5373+offset0))
{
	vR[i] = 5373;
}
else
{
	vR[i] = 5372;
}

}

}
else
{
	if(input[i]>(5369+offset0))
{
	if(input[i]==(5371+offset0))
{
	vR[i] = 5371;
}
else
{
	vR[i] = 5370;
}

}
else
{
	if(input[i]==(5369+offset0))
{
	vR[i] = 5369;
}
else
{
	vR[i] = 5368;
}

}

}

}
else
{
	if(input[i]>(5363+offset0))
{
	if(input[i]>(5365+offset0))
{
	if(input[i]==(5367+offset0))
{
	vR[i] = 5367;
}
else
{
	vR[i] = 5366;
}

}
else
{
	if(input[i]==(5365+offset0))
{
	vR[i] = 5365;
}
else
{
	vR[i] = 5364;
}

}

}
else
{
	if(input[i]>(5361+offset0))
{
	if(input[i]==(5363+offset0))
{
	vR[i] = 5363;
}
else
{
	vR[i] = 5362;
}

}
else
{
	if(input[i]==(5361+offset0))
{
	vR[i] = 5361;
}
else
{
	vR[i] = 5360;
}

}

}

}

}
else
{
	if(input[i]>(5351+offset0))
{
	if(input[i]>(5355+offset0))
{
	if(input[i]>(5357+offset0))
{
	if(input[i]==(5359+offset0))
{
	vR[i] = 5359;
}
else
{
	vR[i] = 5358;
}

}
else
{
	if(input[i]==(5357+offset0))
{
	vR[i] = 5357;
}
else
{
	vR[i] = 5356;
}

}

}
else
{
	if(input[i]>(5353+offset0))
{
	if(input[i]==(5355+offset0))
{
	vR[i] = 5355;
}
else
{
	vR[i] = 5354;
}

}
else
{
	if(input[i]==(5353+offset0))
{
	vR[i] = 5353;
}
else
{
	vR[i] = 5352;
}

}

}

}
else
{
	if(input[i]>(5347+offset0))
{
	if(input[i]>(5349+offset0))
{
	if(input[i]==(5351+offset0))
{
	vR[i] = 5351;
}
else
{
	vR[i] = 5350;
}

}
else
{
	if(input[i]==(5349+offset0))
{
	vR[i] = 5349;
}
else
{
	vR[i] = 5348;
}

}

}
else
{
	if(input[i]>(5345+offset0))
{
	if(input[i]==(5347+offset0))
{
	vR[i] = 5347;
}
else
{
	vR[i] = 5346;
}

}
else
{
	if(input[i]==(5345+offset0))
{
	vR[i] = 5345;
}
else
{
	vR[i] = 5344;
}

}

}

}

}

}
else
{
	if(input[i]>(5327+offset0))
{
	if(input[i]>(5335+offset0))
{
	if(input[i]>(5339+offset0))
{
	if(input[i]>(5341+offset0))
{
	if(input[i]==(5343+offset0))
{
	vR[i] = 5343;
}
else
{
	vR[i] = 5342;
}

}
else
{
	if(input[i]==(5341+offset0))
{
	vR[i] = 5341;
}
else
{
	vR[i] = 5340;
}

}

}
else
{
	if(input[i]>(5337+offset0))
{
	if(input[i]==(5339+offset0))
{
	vR[i] = 5339;
}
else
{
	vR[i] = 5338;
}

}
else
{
	if(input[i]==(5337+offset0))
{
	vR[i] = 5337;
}
else
{
	vR[i] = 5336;
}

}

}

}
else
{
	if(input[i]>(5331+offset0))
{
	if(input[i]>(5333+offset0))
{
	if(input[i]==(5335+offset0))
{
	vR[i] = 5335;
}
else
{
	vR[i] = 5334;
}

}
else
{
	if(input[i]==(5333+offset0))
{
	vR[i] = 5333;
}
else
{
	vR[i] = 5332;
}

}

}
else
{
	if(input[i]>(5329+offset0))
{
	if(input[i]==(5331+offset0))
{
	vR[i] = 5331;
}
else
{
	vR[i] = 5330;
}

}
else
{
	if(input[i]==(5329+offset0))
{
	vR[i] = 5329;
}
else
{
	vR[i] = 5328;
}

}

}

}

}
else
{
	if(input[i]>(5319+offset0))
{
	if(input[i]>(5323+offset0))
{
	if(input[i]>(5325+offset0))
{
	if(input[i]==(5327+offset0))
{
	vR[i] = 5327;
}
else
{
	vR[i] = 5326;
}

}
else
{
	if(input[i]==(5325+offset0))
{
	vR[i] = 5325;
}
else
{
	vR[i] = 5324;
}

}

}
else
{
	if(input[i]>(5321+offset0))
{
	if(input[i]==(5323+offset0))
{
	vR[i] = 5323;
}
else
{
	vR[i] = 5322;
}

}
else
{
	if(input[i]==(5321+offset0))
{
	vR[i] = 5321;
}
else
{
	vR[i] = 5320;
}

}

}

}
else
{
	if(input[i]>(5315+offset0))
{
	if(input[i]>(5317+offset0))
{
	if(input[i]==(5319+offset0))
{
	vR[i] = 5319;
}
else
{
	vR[i] = 5318;
}

}
else
{
	if(input[i]==(5317+offset0))
{
	vR[i] = 5317;
}
else
{
	vR[i] = 5316;
}

}

}
else
{
	if(input[i]>(5313+offset0))
{
	if(input[i]==(5315+offset0))
{
	vR[i] = 5315;
}
else
{
	vR[i] = 5314;
}

}
else
{
	if(input[i]==(5313+offset0))
{
	vR[i] = 5313;
}
else
{
	vR[i] = 5312;
}

}

}

}

}

}

}
else
{
	if(input[i]>(5279+offset0))
{
	if(input[i]>(5295+offset0))
{
	if(input[i]>(5303+offset0))
{
	if(input[i]>(5307+offset0))
{
	if(input[i]>(5309+offset0))
{
	if(input[i]==(5311+offset0))
{
	vR[i] = 5311;
}
else
{
	vR[i] = 5310;
}

}
else
{
	if(input[i]==(5309+offset0))
{
	vR[i] = 5309;
}
else
{
	vR[i] = 5308;
}

}

}
else
{
	if(input[i]>(5305+offset0))
{
	if(input[i]==(5307+offset0))
{
	vR[i] = 5307;
}
else
{
	vR[i] = 5306;
}

}
else
{
	if(input[i]==(5305+offset0))
{
	vR[i] = 5305;
}
else
{
	vR[i] = 5304;
}

}

}

}
else
{
	if(input[i]>(5299+offset0))
{
	if(input[i]>(5301+offset0))
{
	if(input[i]==(5303+offset0))
{
	vR[i] = 5303;
}
else
{
	vR[i] = 5302;
}

}
else
{
	if(input[i]==(5301+offset0))
{
	vR[i] = 5301;
}
else
{
	vR[i] = 5300;
}

}

}
else
{
	if(input[i]>(5297+offset0))
{
	if(input[i]==(5299+offset0))
{
	vR[i] = 5299;
}
else
{
	vR[i] = 5298;
}

}
else
{
	if(input[i]==(5297+offset0))
{
	vR[i] = 5297;
}
else
{
	vR[i] = 5296;
}

}

}

}

}
else
{
	if(input[i]>(5287+offset0))
{
	if(input[i]>(5291+offset0))
{
	if(input[i]>(5293+offset0))
{
	if(input[i]==(5295+offset0))
{
	vR[i] = 5295;
}
else
{
	vR[i] = 5294;
}

}
else
{
	if(input[i]==(5293+offset0))
{
	vR[i] = 5293;
}
else
{
	vR[i] = 5292;
}

}

}
else
{
	if(input[i]>(5289+offset0))
{
	if(input[i]==(5291+offset0))
{
	vR[i] = 5291;
}
else
{
	vR[i] = 5290;
}

}
else
{
	if(input[i]==(5289+offset0))
{
	vR[i] = 5289;
}
else
{
	vR[i] = 5288;
}

}

}

}
else
{
	if(input[i]>(5283+offset0))
{
	if(input[i]>(5285+offset0))
{
	if(input[i]==(5287+offset0))
{
	vR[i] = 5287;
}
else
{
	vR[i] = 5286;
}

}
else
{
	if(input[i]==(5285+offset0))
{
	vR[i] = 5285;
}
else
{
	vR[i] = 5284;
}

}

}
else
{
	if(input[i]>(5281+offset0))
{
	if(input[i]==(5283+offset0))
{
	vR[i] = 5283;
}
else
{
	vR[i] = 5282;
}

}
else
{
	if(input[i]==(5281+offset0))
{
	vR[i] = 5281;
}
else
{
	vR[i] = 5280;
}

}

}

}

}

}
else
{
	if(input[i]>(5263+offset0))
{
	if(input[i]>(5271+offset0))
{
	if(input[i]>(5275+offset0))
{
	if(input[i]>(5277+offset0))
{
	if(input[i]==(5279+offset0))
{
	vR[i] = 5279;
}
else
{
	vR[i] = 5278;
}

}
else
{
	if(input[i]==(5277+offset0))
{
	vR[i] = 5277;
}
else
{
	vR[i] = 5276;
}

}

}
else
{
	if(input[i]>(5273+offset0))
{
	if(input[i]==(5275+offset0))
{
	vR[i] = 5275;
}
else
{
	vR[i] = 5274;
}

}
else
{
	if(input[i]==(5273+offset0))
{
	vR[i] = 5273;
}
else
{
	vR[i] = 5272;
}

}

}

}
else
{
	if(input[i]>(5267+offset0))
{
	if(input[i]>(5269+offset0))
{
	if(input[i]==(5271+offset0))
{
	vR[i] = 5271;
}
else
{
	vR[i] = 5270;
}

}
else
{
	if(input[i]==(5269+offset0))
{
	vR[i] = 5269;
}
else
{
	vR[i] = 5268;
}

}

}
else
{
	if(input[i]>(5265+offset0))
{
	if(input[i]==(5267+offset0))
{
	vR[i] = 5267;
}
else
{
	vR[i] = 5266;
}

}
else
{
	if(input[i]==(5265+offset0))
{
	vR[i] = 5265;
}
else
{
	vR[i] = 5264;
}

}

}

}

}
else
{
	if(input[i]>(5255+offset0))
{
	if(input[i]>(5259+offset0))
{
	if(input[i]>(5261+offset0))
{
	if(input[i]==(5263+offset0))
{
	vR[i] = 5263;
}
else
{
	vR[i] = 5262;
}

}
else
{
	if(input[i]==(5261+offset0))
{
	vR[i] = 5261;
}
else
{
	vR[i] = 5260;
}

}

}
else
{
	if(input[i]>(5257+offset0))
{
	if(input[i]==(5259+offset0))
{
	vR[i] = 5259;
}
else
{
	vR[i] = 5258;
}

}
else
{
	if(input[i]==(5257+offset0))
{
	vR[i] = 5257;
}
else
{
	vR[i] = 5256;
}

}

}

}
else
{
	if(input[i]>(5251+offset0))
{
	if(input[i]>(5253+offset0))
{
	if(input[i]==(5255+offset0))
{
	vR[i] = 5255;
}
else
{
	vR[i] = 5254;
}

}
else
{
	if(input[i]==(5253+offset0))
{
	vR[i] = 5253;
}
else
{
	vR[i] = 5252;
}

}

}
else
{
	if(input[i]>(5249+offset0))
{
	if(input[i]==(5251+offset0))
{
	vR[i] = 5251;
}
else
{
	vR[i] = 5250;
}

}
else
{
	if(input[i]==(5249+offset0))
{
	vR[i] = 5249;
}
else
{
	vR[i] = 5248;
}

}

}

}

}

}

}

}
else
{
	if(input[i]>(5183+offset0))
{
	if(input[i]>(5215+offset0))
{
	if(input[i]>(5231+offset0))
{
	if(input[i]>(5239+offset0))
{
	if(input[i]>(5243+offset0))
{
	if(input[i]>(5245+offset0))
{
	if(input[i]==(5247+offset0))
{
	vR[i] = 5247;
}
else
{
	vR[i] = 5246;
}

}
else
{
	if(input[i]==(5245+offset0))
{
	vR[i] = 5245;
}
else
{
	vR[i] = 5244;
}

}

}
else
{
	if(input[i]>(5241+offset0))
{
	if(input[i]==(5243+offset0))
{
	vR[i] = 5243;
}
else
{
	vR[i] = 5242;
}

}
else
{
	if(input[i]==(5241+offset0))
{
	vR[i] = 5241;
}
else
{
	vR[i] = 5240;
}

}

}

}
else
{
	if(input[i]>(5235+offset0))
{
	if(input[i]>(5237+offset0))
{
	if(input[i]==(5239+offset0))
{
	vR[i] = 5239;
}
else
{
	vR[i] = 5238;
}

}
else
{
	if(input[i]==(5237+offset0))
{
	vR[i] = 5237;
}
else
{
	vR[i] = 5236;
}

}

}
else
{
	if(input[i]>(5233+offset0))
{
	if(input[i]==(5235+offset0))
{
	vR[i] = 5235;
}
else
{
	vR[i] = 5234;
}

}
else
{
	if(input[i]==(5233+offset0))
{
	vR[i] = 5233;
}
else
{
	vR[i] = 5232;
}

}

}

}

}
else
{
	if(input[i]>(5223+offset0))
{
	if(input[i]>(5227+offset0))
{
	if(input[i]>(5229+offset0))
{
	if(input[i]==(5231+offset0))
{
	vR[i] = 5231;
}
else
{
	vR[i] = 5230;
}

}
else
{
	if(input[i]==(5229+offset0))
{
	vR[i] = 5229;
}
else
{
	vR[i] = 5228;
}

}

}
else
{
	if(input[i]>(5225+offset0))
{
	if(input[i]==(5227+offset0))
{
	vR[i] = 5227;
}
else
{
	vR[i] = 5226;
}

}
else
{
	if(input[i]==(5225+offset0))
{
	vR[i] = 5225;
}
else
{
	vR[i] = 5224;
}

}

}

}
else
{
	if(input[i]>(5219+offset0))
{
	if(input[i]>(5221+offset0))
{
	if(input[i]==(5223+offset0))
{
	vR[i] = 5223;
}
else
{
	vR[i] = 5222;
}

}
else
{
	if(input[i]==(5221+offset0))
{
	vR[i] = 5221;
}
else
{
	vR[i] = 5220;
}

}

}
else
{
	if(input[i]>(5217+offset0))
{
	if(input[i]==(5219+offset0))
{
	vR[i] = 5219;
}
else
{
	vR[i] = 5218;
}

}
else
{
	if(input[i]==(5217+offset0))
{
	vR[i] = 5217;
}
else
{
	vR[i] = 5216;
}

}

}

}

}

}
else
{
	if(input[i]>(5199+offset0))
{
	if(input[i]>(5207+offset0))
{
	if(input[i]>(5211+offset0))
{
	if(input[i]>(5213+offset0))
{
	if(input[i]==(5215+offset0))
{
	vR[i] = 5215;
}
else
{
	vR[i] = 5214;
}

}
else
{
	if(input[i]==(5213+offset0))
{
	vR[i] = 5213;
}
else
{
	vR[i] = 5212;
}

}

}
else
{
	if(input[i]>(5209+offset0))
{
	if(input[i]==(5211+offset0))
{
	vR[i] = 5211;
}
else
{
	vR[i] = 5210;
}

}
else
{
	if(input[i]==(5209+offset0))
{
	vR[i] = 5209;
}
else
{
	vR[i] = 5208;
}

}

}

}
else
{
	if(input[i]>(5203+offset0))
{
	if(input[i]>(5205+offset0))
{
	if(input[i]==(5207+offset0))
{
	vR[i] = 5207;
}
else
{
	vR[i] = 5206;
}

}
else
{
	if(input[i]==(5205+offset0))
{
	vR[i] = 5205;
}
else
{
	vR[i] = 5204;
}

}

}
else
{
	if(input[i]>(5201+offset0))
{
	if(input[i]==(5203+offset0))
{
	vR[i] = 5203;
}
else
{
	vR[i] = 5202;
}

}
else
{
	if(input[i]==(5201+offset0))
{
	vR[i] = 5201;
}
else
{
	vR[i] = 5200;
}

}

}

}

}
else
{
	if(input[i]>(5191+offset0))
{
	if(input[i]>(5195+offset0))
{
	if(input[i]>(5197+offset0))
{
	if(input[i]==(5199+offset0))
{
	vR[i] = 5199;
}
else
{
	vR[i] = 5198;
}

}
else
{
	if(input[i]==(5197+offset0))
{
	vR[i] = 5197;
}
else
{
	vR[i] = 5196;
}

}

}
else
{
	if(input[i]>(5193+offset0))
{
	if(input[i]==(5195+offset0))
{
	vR[i] = 5195;
}
else
{
	vR[i] = 5194;
}

}
else
{
	if(input[i]==(5193+offset0))
{
	vR[i] = 5193;
}
else
{
	vR[i] = 5192;
}

}

}

}
else
{
	if(input[i]>(5187+offset0))
{
	if(input[i]>(5189+offset0))
{
	if(input[i]==(5191+offset0))
{
	vR[i] = 5191;
}
else
{
	vR[i] = 5190;
}

}
else
{
	if(input[i]==(5189+offset0))
{
	vR[i] = 5189;
}
else
{
	vR[i] = 5188;
}

}

}
else
{
	if(input[i]>(5185+offset0))
{
	if(input[i]==(5187+offset0))
{
	vR[i] = 5187;
}
else
{
	vR[i] = 5186;
}

}
else
{
	if(input[i]==(5185+offset0))
{
	vR[i] = 5185;
}
else
{
	vR[i] = 5184;
}

}

}

}

}

}

}
else
{
	if(input[i]>(5151+offset0))
{
	if(input[i]>(5167+offset0))
{
	if(input[i]>(5175+offset0))
{
	if(input[i]>(5179+offset0))
{
	if(input[i]>(5181+offset0))
{
	if(input[i]==(5183+offset0))
{
	vR[i] = 5183;
}
else
{
	vR[i] = 5182;
}

}
else
{
	if(input[i]==(5181+offset0))
{
	vR[i] = 5181;
}
else
{
	vR[i] = 5180;
}

}

}
else
{
	if(input[i]>(5177+offset0))
{
	if(input[i]==(5179+offset0))
{
	vR[i] = 5179;
}
else
{
	vR[i] = 5178;
}

}
else
{
	if(input[i]==(5177+offset0))
{
	vR[i] = 5177;
}
else
{
	vR[i] = 5176;
}

}

}

}
else
{
	if(input[i]>(5171+offset0))
{
	if(input[i]>(5173+offset0))
{
	if(input[i]==(5175+offset0))
{
	vR[i] = 5175;
}
else
{
	vR[i] = 5174;
}

}
else
{
	if(input[i]==(5173+offset0))
{
	vR[i] = 5173;
}
else
{
	vR[i] = 5172;
}

}

}
else
{
	if(input[i]>(5169+offset0))
{
	if(input[i]==(5171+offset0))
{
	vR[i] = 5171;
}
else
{
	vR[i] = 5170;
}

}
else
{
	if(input[i]==(5169+offset0))
{
	vR[i] = 5169;
}
else
{
	vR[i] = 5168;
}

}

}

}

}
else
{
	if(input[i]>(5159+offset0))
{
	if(input[i]>(5163+offset0))
{
	if(input[i]>(5165+offset0))
{
	if(input[i]==(5167+offset0))
{
	vR[i] = 5167;
}
else
{
	vR[i] = 5166;
}

}
else
{
	if(input[i]==(5165+offset0))
{
	vR[i] = 5165;
}
else
{
	vR[i] = 5164;
}

}

}
else
{
	if(input[i]>(5161+offset0))
{
	if(input[i]==(5163+offset0))
{
	vR[i] = 5163;
}
else
{
	vR[i] = 5162;
}

}
else
{
	if(input[i]==(5161+offset0))
{
	vR[i] = 5161;
}
else
{
	vR[i] = 5160;
}

}

}

}
else
{
	if(input[i]>(5155+offset0))
{
	if(input[i]>(5157+offset0))
{
	if(input[i]==(5159+offset0))
{
	vR[i] = 5159;
}
else
{
	vR[i] = 5158;
}

}
else
{
	if(input[i]==(5157+offset0))
{
	vR[i] = 5157;
}
else
{
	vR[i] = 5156;
}

}

}
else
{
	if(input[i]>(5153+offset0))
{
	if(input[i]==(5155+offset0))
{
	vR[i] = 5155;
}
else
{
	vR[i] = 5154;
}

}
else
{
	if(input[i]==(5153+offset0))
{
	vR[i] = 5153;
}
else
{
	vR[i] = 5152;
}

}

}

}

}

}
else
{
	if(input[i]>(5135+offset0))
{
	if(input[i]>(5143+offset0))
{
	if(input[i]>(5147+offset0))
{
	if(input[i]>(5149+offset0))
{
	if(input[i]==(5151+offset0))
{
	vR[i] = 5151;
}
else
{
	vR[i] = 5150;
}

}
else
{
	if(input[i]==(5149+offset0))
{
	vR[i] = 5149;
}
else
{
	vR[i] = 5148;
}

}

}
else
{
	if(input[i]>(5145+offset0))
{
	if(input[i]==(5147+offset0))
{
	vR[i] = 5147;
}
else
{
	vR[i] = 5146;
}

}
else
{
	if(input[i]==(5145+offset0))
{
	vR[i] = 5145;
}
else
{
	vR[i] = 5144;
}

}

}

}
else
{
	if(input[i]>(5139+offset0))
{
	if(input[i]>(5141+offset0))
{
	if(input[i]==(5143+offset0))
{
	vR[i] = 5143;
}
else
{
	vR[i] = 5142;
}

}
else
{
	if(input[i]==(5141+offset0))
{
	vR[i] = 5141;
}
else
{
	vR[i] = 5140;
}

}

}
else
{
	if(input[i]>(5137+offset0))
{
	if(input[i]==(5139+offset0))
{
	vR[i] = 5139;
}
else
{
	vR[i] = 5138;
}

}
else
{
	if(input[i]==(5137+offset0))
{
	vR[i] = 5137;
}
else
{
	vR[i] = 5136;
}

}

}

}

}
else
{
	if(input[i]>(5127+offset0))
{
	if(input[i]>(5131+offset0))
{
	if(input[i]>(5133+offset0))
{
	if(input[i]==(5135+offset0))
{
	vR[i] = 5135;
}
else
{
	vR[i] = 5134;
}

}
else
{
	if(input[i]==(5133+offset0))
{
	vR[i] = 5133;
}
else
{
	vR[i] = 5132;
}

}

}
else
{
	if(input[i]>(5129+offset0))
{
	if(input[i]==(5131+offset0))
{
	vR[i] = 5131;
}
else
{
	vR[i] = 5130;
}

}
else
{
	if(input[i]==(5129+offset0))
{
	vR[i] = 5129;
}
else
{
	vR[i] = 5128;
}

}

}

}
else
{
	if(input[i]>(5123+offset0))
{
	if(input[i]>(5125+offset0))
{
	if(input[i]==(5127+offset0))
{
	vR[i] = 5127;
}
else
{
	vR[i] = 5126;
}

}
else
{
	if(input[i]==(5125+offset0))
{
	vR[i] = 5125;
}
else
{
	vR[i] = 5124;
}

}

}
else
{
	if(input[i]>(5121+offset0))
{
	if(input[i]==(5123+offset0))
{
	vR[i] = 5123;
}
else
{
	vR[i] = 5122;
}

}
else
{
	if(input[i]==(5121+offset0))
{
	vR[i] = 5121;
}
else
{
	vR[i] = 5120;
}

}

}

}

}

}

}

}

}

}

}
else
{
	if(input[i]>(4607+offset0))
{
	if(input[i]>(4863+offset0))
{
	if(input[i]>(4991+offset0))
{
	if(input[i]>(5055+offset0))
{
	if(input[i]>(5087+offset0))
{
	if(input[i]>(5103+offset0))
{
	if(input[i]>(5111+offset0))
{
	if(input[i]>(5115+offset0))
{
	if(input[i]>(5117+offset0))
{
	if(input[i]==(5119+offset0))
{
	vR[i] = 5119;
}
else
{
	vR[i] = 5118;
}

}
else
{
	if(input[i]==(5117+offset0))
{
	vR[i] = 5117;
}
else
{
	vR[i] = 5116;
}

}

}
else
{
	if(input[i]>(5113+offset0))
{
	if(input[i]==(5115+offset0))
{
	vR[i] = 5115;
}
else
{
	vR[i] = 5114;
}

}
else
{
	if(input[i]==(5113+offset0))
{
	vR[i] = 5113;
}
else
{
	vR[i] = 5112;
}

}

}

}
else
{
	if(input[i]>(5107+offset0))
{
	if(input[i]>(5109+offset0))
{
	if(input[i]==(5111+offset0))
{
	vR[i] = 5111;
}
else
{
	vR[i] = 5110;
}

}
else
{
	if(input[i]==(5109+offset0))
{
	vR[i] = 5109;
}
else
{
	vR[i] = 5108;
}

}

}
else
{
	if(input[i]>(5105+offset0))
{
	if(input[i]==(5107+offset0))
{
	vR[i] = 5107;
}
else
{
	vR[i] = 5106;
}

}
else
{
	if(input[i]==(5105+offset0))
{
	vR[i] = 5105;
}
else
{
	vR[i] = 5104;
}

}

}

}

}
else
{
	if(input[i]>(5095+offset0))
{
	if(input[i]>(5099+offset0))
{
	if(input[i]>(5101+offset0))
{
	if(input[i]==(5103+offset0))
{
	vR[i] = 5103;
}
else
{
	vR[i] = 5102;
}

}
else
{
	if(input[i]==(5101+offset0))
{
	vR[i] = 5101;
}
else
{
	vR[i] = 5100;
}

}

}
else
{
	if(input[i]>(5097+offset0))
{
	if(input[i]==(5099+offset0))
{
	vR[i] = 5099;
}
else
{
	vR[i] = 5098;
}

}
else
{
	if(input[i]==(5097+offset0))
{
	vR[i] = 5097;
}
else
{
	vR[i] = 5096;
}

}

}

}
else
{
	if(input[i]>(5091+offset0))
{
	if(input[i]>(5093+offset0))
{
	if(input[i]==(5095+offset0))
{
	vR[i] = 5095;
}
else
{
	vR[i] = 5094;
}

}
else
{
	if(input[i]==(5093+offset0))
{
	vR[i] = 5093;
}
else
{
	vR[i] = 5092;
}

}

}
else
{
	if(input[i]>(5089+offset0))
{
	if(input[i]==(5091+offset0))
{
	vR[i] = 5091;
}
else
{
	vR[i] = 5090;
}

}
else
{
	if(input[i]==(5089+offset0))
{
	vR[i] = 5089;
}
else
{
	vR[i] = 5088;
}

}

}

}

}

}
else
{
	if(input[i]>(5071+offset0))
{
	if(input[i]>(5079+offset0))
{
	if(input[i]>(5083+offset0))
{
	if(input[i]>(5085+offset0))
{
	if(input[i]==(5087+offset0))
{
	vR[i] = 5087;
}
else
{
	vR[i] = 5086;
}

}
else
{
	if(input[i]==(5085+offset0))
{
	vR[i] = 5085;
}
else
{
	vR[i] = 5084;
}

}

}
else
{
	if(input[i]>(5081+offset0))
{
	if(input[i]==(5083+offset0))
{
	vR[i] = 5083;
}
else
{
	vR[i] = 5082;
}

}
else
{
	if(input[i]==(5081+offset0))
{
	vR[i] = 5081;
}
else
{
	vR[i] = 5080;
}

}

}

}
else
{
	if(input[i]>(5075+offset0))
{
	if(input[i]>(5077+offset0))
{
	if(input[i]==(5079+offset0))
{
	vR[i] = 5079;
}
else
{
	vR[i] = 5078;
}

}
else
{
	if(input[i]==(5077+offset0))
{
	vR[i] = 5077;
}
else
{
	vR[i] = 5076;
}

}

}
else
{
	if(input[i]>(5073+offset0))
{
	if(input[i]==(5075+offset0))
{
	vR[i] = 5075;
}
else
{
	vR[i] = 5074;
}

}
else
{
	if(input[i]==(5073+offset0))
{
	vR[i] = 5073;
}
else
{
	vR[i] = 5072;
}

}

}

}

}
else
{
	if(input[i]>(5063+offset0))
{
	if(input[i]>(5067+offset0))
{
	if(input[i]>(5069+offset0))
{
	if(input[i]==(5071+offset0))
{
	vR[i] = 5071;
}
else
{
	vR[i] = 5070;
}

}
else
{
	if(input[i]==(5069+offset0))
{
	vR[i] = 5069;
}
else
{
	vR[i] = 5068;
}

}

}
else
{
	if(input[i]>(5065+offset0))
{
	if(input[i]==(5067+offset0))
{
	vR[i] = 5067;
}
else
{
	vR[i] = 5066;
}

}
else
{
	if(input[i]==(5065+offset0))
{
	vR[i] = 5065;
}
else
{
	vR[i] = 5064;
}

}

}

}
else
{
	if(input[i]>(5059+offset0))
{
	if(input[i]>(5061+offset0))
{
	if(input[i]==(5063+offset0))
{
	vR[i] = 5063;
}
else
{
	vR[i] = 5062;
}

}
else
{
	if(input[i]==(5061+offset0))
{
	vR[i] = 5061;
}
else
{
	vR[i] = 5060;
}

}

}
else
{
	if(input[i]>(5057+offset0))
{
	if(input[i]==(5059+offset0))
{
	vR[i] = 5059;
}
else
{
	vR[i] = 5058;
}

}
else
{
	if(input[i]==(5057+offset0))
{
	vR[i] = 5057;
}
else
{
	vR[i] = 5056;
}

}

}

}

}

}

}
else
{
	if(input[i]>(5023+offset0))
{
	if(input[i]>(5039+offset0))
{
	if(input[i]>(5047+offset0))
{
	if(input[i]>(5051+offset0))
{
	if(input[i]>(5053+offset0))
{
	if(input[i]==(5055+offset0))
{
	vR[i] = 5055;
}
else
{
	vR[i] = 5054;
}

}
else
{
	if(input[i]==(5053+offset0))
{
	vR[i] = 5053;
}
else
{
	vR[i] = 5052;
}

}

}
else
{
	if(input[i]>(5049+offset0))
{
	if(input[i]==(5051+offset0))
{
	vR[i] = 5051;
}
else
{
	vR[i] = 5050;
}

}
else
{
	if(input[i]==(5049+offset0))
{
	vR[i] = 5049;
}
else
{
	vR[i] = 5048;
}

}

}

}
else
{
	if(input[i]>(5043+offset0))
{
	if(input[i]>(5045+offset0))
{
	if(input[i]==(5047+offset0))
{
	vR[i] = 5047;
}
else
{
	vR[i] = 5046;
}

}
else
{
	if(input[i]==(5045+offset0))
{
	vR[i] = 5045;
}
else
{
	vR[i] = 5044;
}

}

}
else
{
	if(input[i]>(5041+offset0))
{
	if(input[i]==(5043+offset0))
{
	vR[i] = 5043;
}
else
{
	vR[i] = 5042;
}

}
else
{
	if(input[i]==(5041+offset0))
{
	vR[i] = 5041;
}
else
{
	vR[i] = 5040;
}

}

}

}

}
else
{
	if(input[i]>(5031+offset0))
{
	if(input[i]>(5035+offset0))
{
	if(input[i]>(5037+offset0))
{
	if(input[i]==(5039+offset0))
{
	vR[i] = 5039;
}
else
{
	vR[i] = 5038;
}

}
else
{
	if(input[i]==(5037+offset0))
{
	vR[i] = 5037;
}
else
{
	vR[i] = 5036;
}

}

}
else
{
	if(input[i]>(5033+offset0))
{
	if(input[i]==(5035+offset0))
{
	vR[i] = 5035;
}
else
{
	vR[i] = 5034;
}

}
else
{
	if(input[i]==(5033+offset0))
{
	vR[i] = 5033;
}
else
{
	vR[i] = 5032;
}

}

}

}
else
{
	if(input[i]>(5027+offset0))
{
	if(input[i]>(5029+offset0))
{
	if(input[i]==(5031+offset0))
{
	vR[i] = 5031;
}
else
{
	vR[i] = 5030;
}

}
else
{
	if(input[i]==(5029+offset0))
{
	vR[i] = 5029;
}
else
{
	vR[i] = 5028;
}

}

}
else
{
	if(input[i]>(5025+offset0))
{
	if(input[i]==(5027+offset0))
{
	vR[i] = 5027;
}
else
{
	vR[i] = 5026;
}

}
else
{
	if(input[i]==(5025+offset0))
{
	vR[i] = 5025;
}
else
{
	vR[i] = 5024;
}

}

}

}

}

}
else
{
	if(input[i]>(5007+offset0))
{
	if(input[i]>(5015+offset0))
{
	if(input[i]>(5019+offset0))
{
	if(input[i]>(5021+offset0))
{
	if(input[i]==(5023+offset0))
{
	vR[i] = 5023;
}
else
{
	vR[i] = 5022;
}

}
else
{
	if(input[i]==(5021+offset0))
{
	vR[i] = 5021;
}
else
{
	vR[i] = 5020;
}

}

}
else
{
	if(input[i]>(5017+offset0))
{
	if(input[i]==(5019+offset0))
{
	vR[i] = 5019;
}
else
{
	vR[i] = 5018;
}

}
else
{
	if(input[i]==(5017+offset0))
{
	vR[i] = 5017;
}
else
{
	vR[i] = 5016;
}

}

}

}
else
{
	if(input[i]>(5011+offset0))
{
	if(input[i]>(5013+offset0))
{
	if(input[i]==(5015+offset0))
{
	vR[i] = 5015;
}
else
{
	vR[i] = 5014;
}

}
else
{
	if(input[i]==(5013+offset0))
{
	vR[i] = 5013;
}
else
{
	vR[i] = 5012;
}

}

}
else
{
	if(input[i]>(5009+offset0))
{
	if(input[i]==(5011+offset0))
{
	vR[i] = 5011;
}
else
{
	vR[i] = 5010;
}

}
else
{
	if(input[i]==(5009+offset0))
{
	vR[i] = 5009;
}
else
{
	vR[i] = 5008;
}

}

}

}

}
else
{
	if(input[i]>(4999+offset0))
{
	if(input[i]>(5003+offset0))
{
	if(input[i]>(5005+offset0))
{
	if(input[i]==(5007+offset0))
{
	vR[i] = 5007;
}
else
{
	vR[i] = 5006;
}

}
else
{
	if(input[i]==(5005+offset0))
{
	vR[i] = 5005;
}
else
{
	vR[i] = 5004;
}

}

}
else
{
	if(input[i]>(5001+offset0))
{
	if(input[i]==(5003+offset0))
{
	vR[i] = 5003;
}
else
{
	vR[i] = 5002;
}

}
else
{
	if(input[i]==(5001+offset0))
{
	vR[i] = 5001;
}
else
{
	vR[i] = 5000;
}

}

}

}
else
{
	if(input[i]>(4995+offset0))
{
	if(input[i]>(4997+offset0))
{
	if(input[i]==(4999+offset0))
{
	vR[i] = 4999;
}
else
{
	vR[i] = 4998;
}

}
else
{
	if(input[i]==(4997+offset0))
{
	vR[i] = 4997;
}
else
{
	vR[i] = 4996;
}

}

}
else
{
	if(input[i]>(4993+offset0))
{
	if(input[i]==(4995+offset0))
{
	vR[i] = 4995;
}
else
{
	vR[i] = 4994;
}

}
else
{
	if(input[i]==(4993+offset0))
{
	vR[i] = 4993;
}
else
{
	vR[i] = 4992;
}

}

}

}

}

}

}

}
else
{
	if(input[i]>(4927+offset0))
{
	if(input[i]>(4959+offset0))
{
	if(input[i]>(4975+offset0))
{
	if(input[i]>(4983+offset0))
{
	if(input[i]>(4987+offset0))
{
	if(input[i]>(4989+offset0))
{
	if(input[i]==(4991+offset0))
{
	vR[i] = 4991;
}
else
{
	vR[i] = 4990;
}

}
else
{
	if(input[i]==(4989+offset0))
{
	vR[i] = 4989;
}
else
{
	vR[i] = 4988;
}

}

}
else
{
	if(input[i]>(4985+offset0))
{
	if(input[i]==(4987+offset0))
{
	vR[i] = 4987;
}
else
{
	vR[i] = 4986;
}

}
else
{
	if(input[i]==(4985+offset0))
{
	vR[i] = 4985;
}
else
{
	vR[i] = 4984;
}

}

}

}
else
{
	if(input[i]>(4979+offset0))
{
	if(input[i]>(4981+offset0))
{
	if(input[i]==(4983+offset0))
{
	vR[i] = 4983;
}
else
{
	vR[i] = 4982;
}

}
else
{
	if(input[i]==(4981+offset0))
{
	vR[i] = 4981;
}
else
{
	vR[i] = 4980;
}

}

}
else
{
	if(input[i]>(4977+offset0))
{
	if(input[i]==(4979+offset0))
{
	vR[i] = 4979;
}
else
{
	vR[i] = 4978;
}

}
else
{
	if(input[i]==(4977+offset0))
{
	vR[i] = 4977;
}
else
{
	vR[i] = 4976;
}

}

}

}

}
else
{
	if(input[i]>(4967+offset0))
{
	if(input[i]>(4971+offset0))
{
	if(input[i]>(4973+offset0))
{
	if(input[i]==(4975+offset0))
{
	vR[i] = 4975;
}
else
{
	vR[i] = 4974;
}

}
else
{
	if(input[i]==(4973+offset0))
{
	vR[i] = 4973;
}
else
{
	vR[i] = 4972;
}

}

}
else
{
	if(input[i]>(4969+offset0))
{
	if(input[i]==(4971+offset0))
{
	vR[i] = 4971;
}
else
{
	vR[i] = 4970;
}

}
else
{
	if(input[i]==(4969+offset0))
{
	vR[i] = 4969;
}
else
{
	vR[i] = 4968;
}

}

}

}
else
{
	if(input[i]>(4963+offset0))
{
	if(input[i]>(4965+offset0))
{
	if(input[i]==(4967+offset0))
{
	vR[i] = 4967;
}
else
{
	vR[i] = 4966;
}

}
else
{
	if(input[i]==(4965+offset0))
{
	vR[i] = 4965;
}
else
{
	vR[i] = 4964;
}

}

}
else
{
	if(input[i]>(4961+offset0))
{
	if(input[i]==(4963+offset0))
{
	vR[i] = 4963;
}
else
{
	vR[i] = 4962;
}

}
else
{
	if(input[i]==(4961+offset0))
{
	vR[i] = 4961;
}
else
{
	vR[i] = 4960;
}

}

}

}

}

}
else
{
	if(input[i]>(4943+offset0))
{
	if(input[i]>(4951+offset0))
{
	if(input[i]>(4955+offset0))
{
	if(input[i]>(4957+offset0))
{
	if(input[i]==(4959+offset0))
{
	vR[i] = 4959;
}
else
{
	vR[i] = 4958;
}

}
else
{
	if(input[i]==(4957+offset0))
{
	vR[i] = 4957;
}
else
{
	vR[i] = 4956;
}

}

}
else
{
	if(input[i]>(4953+offset0))
{
	if(input[i]==(4955+offset0))
{
	vR[i] = 4955;
}
else
{
	vR[i] = 4954;
}

}
else
{
	if(input[i]==(4953+offset0))
{
	vR[i] = 4953;
}
else
{
	vR[i] = 4952;
}

}

}

}
else
{
	if(input[i]>(4947+offset0))
{
	if(input[i]>(4949+offset0))
{
	if(input[i]==(4951+offset0))
{
	vR[i] = 4951;
}
else
{
	vR[i] = 4950;
}

}
else
{
	if(input[i]==(4949+offset0))
{
	vR[i] = 4949;
}
else
{
	vR[i] = 4948;
}

}

}
else
{
	if(input[i]>(4945+offset0))
{
	if(input[i]==(4947+offset0))
{
	vR[i] = 4947;
}
else
{
	vR[i] = 4946;
}

}
else
{
	if(input[i]==(4945+offset0))
{
	vR[i] = 4945;
}
else
{
	vR[i] = 4944;
}

}

}

}

}
else
{
	if(input[i]>(4935+offset0))
{
	if(input[i]>(4939+offset0))
{
	if(input[i]>(4941+offset0))
{
	if(input[i]==(4943+offset0))
{
	vR[i] = 4943;
}
else
{
	vR[i] = 4942;
}

}
else
{
	if(input[i]==(4941+offset0))
{
	vR[i] = 4941;
}
else
{
	vR[i] = 4940;
}

}

}
else
{
	if(input[i]>(4937+offset0))
{
	if(input[i]==(4939+offset0))
{
	vR[i] = 4939;
}
else
{
	vR[i] = 4938;
}

}
else
{
	if(input[i]==(4937+offset0))
{
	vR[i] = 4937;
}
else
{
	vR[i] = 4936;
}

}

}

}
else
{
	if(input[i]>(4931+offset0))
{
	if(input[i]>(4933+offset0))
{
	if(input[i]==(4935+offset0))
{
	vR[i] = 4935;
}
else
{
	vR[i] = 4934;
}

}
else
{
	if(input[i]==(4933+offset0))
{
	vR[i] = 4933;
}
else
{
	vR[i] = 4932;
}

}

}
else
{
	if(input[i]>(4929+offset0))
{
	if(input[i]==(4931+offset0))
{
	vR[i] = 4931;
}
else
{
	vR[i] = 4930;
}

}
else
{
	if(input[i]==(4929+offset0))
{
	vR[i] = 4929;
}
else
{
	vR[i] = 4928;
}

}

}

}

}

}

}
else
{
	if(input[i]>(4895+offset0))
{
	if(input[i]>(4911+offset0))
{
	if(input[i]>(4919+offset0))
{
	if(input[i]>(4923+offset0))
{
	if(input[i]>(4925+offset0))
{
	if(input[i]==(4927+offset0))
{
	vR[i] = 4927;
}
else
{
	vR[i] = 4926;
}

}
else
{
	if(input[i]==(4925+offset0))
{
	vR[i] = 4925;
}
else
{
	vR[i] = 4924;
}

}

}
else
{
	if(input[i]>(4921+offset0))
{
	if(input[i]==(4923+offset0))
{
	vR[i] = 4923;
}
else
{
	vR[i] = 4922;
}

}
else
{
	if(input[i]==(4921+offset0))
{
	vR[i] = 4921;
}
else
{
	vR[i] = 4920;
}

}

}

}
else
{
	if(input[i]>(4915+offset0))
{
	if(input[i]>(4917+offset0))
{
	if(input[i]==(4919+offset0))
{
	vR[i] = 4919;
}
else
{
	vR[i] = 4918;
}

}
else
{
	if(input[i]==(4917+offset0))
{
	vR[i] = 4917;
}
else
{
	vR[i] = 4916;
}

}

}
else
{
	if(input[i]>(4913+offset0))
{
	if(input[i]==(4915+offset0))
{
	vR[i] = 4915;
}
else
{
	vR[i] = 4914;
}

}
else
{
	if(input[i]==(4913+offset0))
{
	vR[i] = 4913;
}
else
{
	vR[i] = 4912;
}

}

}

}

}
else
{
	if(input[i]>(4903+offset0))
{
	if(input[i]>(4907+offset0))
{
	if(input[i]>(4909+offset0))
{
	if(input[i]==(4911+offset0))
{
	vR[i] = 4911;
}
else
{
	vR[i] = 4910;
}

}
else
{
	if(input[i]==(4909+offset0))
{
	vR[i] = 4909;
}
else
{
	vR[i] = 4908;
}

}

}
else
{
	if(input[i]>(4905+offset0))
{
	if(input[i]==(4907+offset0))
{
	vR[i] = 4907;
}
else
{
	vR[i] = 4906;
}

}
else
{
	if(input[i]==(4905+offset0))
{
	vR[i] = 4905;
}
else
{
	vR[i] = 4904;
}

}

}

}
else
{
	if(input[i]>(4899+offset0))
{
	if(input[i]>(4901+offset0))
{
	if(input[i]==(4903+offset0))
{
	vR[i] = 4903;
}
else
{
	vR[i] = 4902;
}

}
else
{
	if(input[i]==(4901+offset0))
{
	vR[i] = 4901;
}
else
{
	vR[i] = 4900;
}

}

}
else
{
	if(input[i]>(4897+offset0))
{
	if(input[i]==(4899+offset0))
{
	vR[i] = 4899;
}
else
{
	vR[i] = 4898;
}

}
else
{
	if(input[i]==(4897+offset0))
{
	vR[i] = 4897;
}
else
{
	vR[i] = 4896;
}

}

}

}

}

}
else
{
	if(input[i]>(4879+offset0))
{
	if(input[i]>(4887+offset0))
{
	if(input[i]>(4891+offset0))
{
	if(input[i]>(4893+offset0))
{
	if(input[i]==(4895+offset0))
{
	vR[i] = 4895;
}
else
{
	vR[i] = 4894;
}

}
else
{
	if(input[i]==(4893+offset0))
{
	vR[i] = 4893;
}
else
{
	vR[i] = 4892;
}

}

}
else
{
	if(input[i]>(4889+offset0))
{
	if(input[i]==(4891+offset0))
{
	vR[i] = 4891;
}
else
{
	vR[i] = 4890;
}

}
else
{
	if(input[i]==(4889+offset0))
{
	vR[i] = 4889;
}
else
{
	vR[i] = 4888;
}

}

}

}
else
{
	if(input[i]>(4883+offset0))
{
	if(input[i]>(4885+offset0))
{
	if(input[i]==(4887+offset0))
{
	vR[i] = 4887;
}
else
{
	vR[i] = 4886;
}

}
else
{
	if(input[i]==(4885+offset0))
{
	vR[i] = 4885;
}
else
{
	vR[i] = 4884;
}

}

}
else
{
	if(input[i]>(4881+offset0))
{
	if(input[i]==(4883+offset0))
{
	vR[i] = 4883;
}
else
{
	vR[i] = 4882;
}

}
else
{
	if(input[i]==(4881+offset0))
{
	vR[i] = 4881;
}
else
{
	vR[i] = 4880;
}

}

}

}

}
else
{
	if(input[i]>(4871+offset0))
{
	if(input[i]>(4875+offset0))
{
	if(input[i]>(4877+offset0))
{
	if(input[i]==(4879+offset0))
{
	vR[i] = 4879;
}
else
{
	vR[i] = 4878;
}

}
else
{
	if(input[i]==(4877+offset0))
{
	vR[i] = 4877;
}
else
{
	vR[i] = 4876;
}

}

}
else
{
	if(input[i]>(4873+offset0))
{
	if(input[i]==(4875+offset0))
{
	vR[i] = 4875;
}
else
{
	vR[i] = 4874;
}

}
else
{
	if(input[i]==(4873+offset0))
{
	vR[i] = 4873;
}
else
{
	vR[i] = 4872;
}

}

}

}
else
{
	if(input[i]>(4867+offset0))
{
	if(input[i]>(4869+offset0))
{
	if(input[i]==(4871+offset0))
{
	vR[i] = 4871;
}
else
{
	vR[i] = 4870;
}

}
else
{
	if(input[i]==(4869+offset0))
{
	vR[i] = 4869;
}
else
{
	vR[i] = 4868;
}

}

}
else
{
	if(input[i]>(4865+offset0))
{
	if(input[i]==(4867+offset0))
{
	vR[i] = 4867;
}
else
{
	vR[i] = 4866;
}

}
else
{
	if(input[i]==(4865+offset0))
{
	vR[i] = 4865;
}
else
{
	vR[i] = 4864;
}

}

}

}

}

}

}

}

}
else
{
	if(input[i]>(4735+offset0))
{
	if(input[i]>(4799+offset0))
{
	if(input[i]>(4831+offset0))
{
	if(input[i]>(4847+offset0))
{
	if(input[i]>(4855+offset0))
{
	if(input[i]>(4859+offset0))
{
	if(input[i]>(4861+offset0))
{
	if(input[i]==(4863+offset0))
{
	vR[i] = 4863;
}
else
{
	vR[i] = 4862;
}

}
else
{
	if(input[i]==(4861+offset0))
{
	vR[i] = 4861;
}
else
{
	vR[i] = 4860;
}

}

}
else
{
	if(input[i]>(4857+offset0))
{
	if(input[i]==(4859+offset0))
{
	vR[i] = 4859;
}
else
{
	vR[i] = 4858;
}

}
else
{
	if(input[i]==(4857+offset0))
{
	vR[i] = 4857;
}
else
{
	vR[i] = 4856;
}

}

}

}
else
{
	if(input[i]>(4851+offset0))
{
	if(input[i]>(4853+offset0))
{
	if(input[i]==(4855+offset0))
{
	vR[i] = 4855;
}
else
{
	vR[i] = 4854;
}

}
else
{
	if(input[i]==(4853+offset0))
{
	vR[i] = 4853;
}
else
{
	vR[i] = 4852;
}

}

}
else
{
	if(input[i]>(4849+offset0))
{
	if(input[i]==(4851+offset0))
{
	vR[i] = 4851;
}
else
{
	vR[i] = 4850;
}

}
else
{
	if(input[i]==(4849+offset0))
{
	vR[i] = 4849;
}
else
{
	vR[i] = 4848;
}

}

}

}

}
else
{
	if(input[i]>(4839+offset0))
{
	if(input[i]>(4843+offset0))
{
	if(input[i]>(4845+offset0))
{
	if(input[i]==(4847+offset0))
{
	vR[i] = 4847;
}
else
{
	vR[i] = 4846;
}

}
else
{
	if(input[i]==(4845+offset0))
{
	vR[i] = 4845;
}
else
{
	vR[i] = 4844;
}

}

}
else
{
	if(input[i]>(4841+offset0))
{
	if(input[i]==(4843+offset0))
{
	vR[i] = 4843;
}
else
{
	vR[i] = 4842;
}

}
else
{
	if(input[i]==(4841+offset0))
{
	vR[i] = 4841;
}
else
{
	vR[i] = 4840;
}

}

}

}
else
{
	if(input[i]>(4835+offset0))
{
	if(input[i]>(4837+offset0))
{
	if(input[i]==(4839+offset0))
{
	vR[i] = 4839;
}
else
{
	vR[i] = 4838;
}

}
else
{
	if(input[i]==(4837+offset0))
{
	vR[i] = 4837;
}
else
{
	vR[i] = 4836;
}

}

}
else
{
	if(input[i]>(4833+offset0))
{
	if(input[i]==(4835+offset0))
{
	vR[i] = 4835;
}
else
{
	vR[i] = 4834;
}

}
else
{
	if(input[i]==(4833+offset0))
{
	vR[i] = 4833;
}
else
{
	vR[i] = 4832;
}

}

}

}

}

}
else
{
	if(input[i]>(4815+offset0))
{
	if(input[i]>(4823+offset0))
{
	if(input[i]>(4827+offset0))
{
	if(input[i]>(4829+offset0))
{
	if(input[i]==(4831+offset0))
{
	vR[i] = 4831;
}
else
{
	vR[i] = 4830;
}

}
else
{
	if(input[i]==(4829+offset0))
{
	vR[i] = 4829;
}
else
{
	vR[i] = 4828;
}

}

}
else
{
	if(input[i]>(4825+offset0))
{
	if(input[i]==(4827+offset0))
{
	vR[i] = 4827;
}
else
{
	vR[i] = 4826;
}

}
else
{
	if(input[i]==(4825+offset0))
{
	vR[i] = 4825;
}
else
{
	vR[i] = 4824;
}

}

}

}
else
{
	if(input[i]>(4819+offset0))
{
	if(input[i]>(4821+offset0))
{
	if(input[i]==(4823+offset0))
{
	vR[i] = 4823;
}
else
{
	vR[i] = 4822;
}

}
else
{
	if(input[i]==(4821+offset0))
{
	vR[i] = 4821;
}
else
{
	vR[i] = 4820;
}

}

}
else
{
	if(input[i]>(4817+offset0))
{
	if(input[i]==(4819+offset0))
{
	vR[i] = 4819;
}
else
{
	vR[i] = 4818;
}

}
else
{
	if(input[i]==(4817+offset0))
{
	vR[i] = 4817;
}
else
{
	vR[i] = 4816;
}

}

}

}

}
else
{
	if(input[i]>(4807+offset0))
{
	if(input[i]>(4811+offset0))
{
	if(input[i]>(4813+offset0))
{
	if(input[i]==(4815+offset0))
{
	vR[i] = 4815;
}
else
{
	vR[i] = 4814;
}

}
else
{
	if(input[i]==(4813+offset0))
{
	vR[i] = 4813;
}
else
{
	vR[i] = 4812;
}

}

}
else
{
	if(input[i]>(4809+offset0))
{
	if(input[i]==(4811+offset0))
{
	vR[i] = 4811;
}
else
{
	vR[i] = 4810;
}

}
else
{
	if(input[i]==(4809+offset0))
{
	vR[i] = 4809;
}
else
{
	vR[i] = 4808;
}

}

}

}
else
{
	if(input[i]>(4803+offset0))
{
	if(input[i]>(4805+offset0))
{
	if(input[i]==(4807+offset0))
{
	vR[i] = 4807;
}
else
{
	vR[i] = 4806;
}

}
else
{
	if(input[i]==(4805+offset0))
{
	vR[i] = 4805;
}
else
{
	vR[i] = 4804;
}

}

}
else
{
	if(input[i]>(4801+offset0))
{
	if(input[i]==(4803+offset0))
{
	vR[i] = 4803;
}
else
{
	vR[i] = 4802;
}

}
else
{
	if(input[i]==(4801+offset0))
{
	vR[i] = 4801;
}
else
{
	vR[i] = 4800;
}

}

}

}

}

}

}
else
{
	if(input[i]>(4767+offset0))
{
	if(input[i]>(4783+offset0))
{
	if(input[i]>(4791+offset0))
{
	if(input[i]>(4795+offset0))
{
	if(input[i]>(4797+offset0))
{
	if(input[i]==(4799+offset0))
{
	vR[i] = 4799;
}
else
{
	vR[i] = 4798;
}

}
else
{
	if(input[i]==(4797+offset0))
{
	vR[i] = 4797;
}
else
{
	vR[i] = 4796;
}

}

}
else
{
	if(input[i]>(4793+offset0))
{
	if(input[i]==(4795+offset0))
{
	vR[i] = 4795;
}
else
{
	vR[i] = 4794;
}

}
else
{
	if(input[i]==(4793+offset0))
{
	vR[i] = 4793;
}
else
{
	vR[i] = 4792;
}

}

}

}
else
{
	if(input[i]>(4787+offset0))
{
	if(input[i]>(4789+offset0))
{
	if(input[i]==(4791+offset0))
{
	vR[i] = 4791;
}
else
{
	vR[i] = 4790;
}

}
else
{
	if(input[i]==(4789+offset0))
{
	vR[i] = 4789;
}
else
{
	vR[i] = 4788;
}

}

}
else
{
	if(input[i]>(4785+offset0))
{
	if(input[i]==(4787+offset0))
{
	vR[i] = 4787;
}
else
{
	vR[i] = 4786;
}

}
else
{
	if(input[i]==(4785+offset0))
{
	vR[i] = 4785;
}
else
{
	vR[i] = 4784;
}

}

}

}

}
else
{
	if(input[i]>(4775+offset0))
{
	if(input[i]>(4779+offset0))
{
	if(input[i]>(4781+offset0))
{
	if(input[i]==(4783+offset0))
{
	vR[i] = 4783;
}
else
{
	vR[i] = 4782;
}

}
else
{
	if(input[i]==(4781+offset0))
{
	vR[i] = 4781;
}
else
{
	vR[i] = 4780;
}

}

}
else
{
	if(input[i]>(4777+offset0))
{
	if(input[i]==(4779+offset0))
{
	vR[i] = 4779;
}
else
{
	vR[i] = 4778;
}

}
else
{
	if(input[i]==(4777+offset0))
{
	vR[i] = 4777;
}
else
{
	vR[i] = 4776;
}

}

}

}
else
{
	if(input[i]>(4771+offset0))
{
	if(input[i]>(4773+offset0))
{
	if(input[i]==(4775+offset0))
{
	vR[i] = 4775;
}
else
{
	vR[i] = 4774;
}

}
else
{
	if(input[i]==(4773+offset0))
{
	vR[i] = 4773;
}
else
{
	vR[i] = 4772;
}

}

}
else
{
	if(input[i]>(4769+offset0))
{
	if(input[i]==(4771+offset0))
{
	vR[i] = 4771;
}
else
{
	vR[i] = 4770;
}

}
else
{
	if(input[i]==(4769+offset0))
{
	vR[i] = 4769;
}
else
{
	vR[i] = 4768;
}

}

}

}

}

}
else
{
	if(input[i]>(4751+offset0))
{
	if(input[i]>(4759+offset0))
{
	if(input[i]>(4763+offset0))
{
	if(input[i]>(4765+offset0))
{
	if(input[i]==(4767+offset0))
{
	vR[i] = 4767;
}
else
{
	vR[i] = 4766;
}

}
else
{
	if(input[i]==(4765+offset0))
{
	vR[i] = 4765;
}
else
{
	vR[i] = 4764;
}

}

}
else
{
	if(input[i]>(4761+offset0))
{
	if(input[i]==(4763+offset0))
{
	vR[i] = 4763;
}
else
{
	vR[i] = 4762;
}

}
else
{
	if(input[i]==(4761+offset0))
{
	vR[i] = 4761;
}
else
{
	vR[i] = 4760;
}

}

}

}
else
{
	if(input[i]>(4755+offset0))
{
	if(input[i]>(4757+offset0))
{
	if(input[i]==(4759+offset0))
{
	vR[i] = 4759;
}
else
{
	vR[i] = 4758;
}

}
else
{
	if(input[i]==(4757+offset0))
{
	vR[i] = 4757;
}
else
{
	vR[i] = 4756;
}

}

}
else
{
	if(input[i]>(4753+offset0))
{
	if(input[i]==(4755+offset0))
{
	vR[i] = 4755;
}
else
{
	vR[i] = 4754;
}

}
else
{
	if(input[i]==(4753+offset0))
{
	vR[i] = 4753;
}
else
{
	vR[i] = 4752;
}

}

}

}

}
else
{
	if(input[i]>(4743+offset0))
{
	if(input[i]>(4747+offset0))
{
	if(input[i]>(4749+offset0))
{
	if(input[i]==(4751+offset0))
{
	vR[i] = 4751;
}
else
{
	vR[i] = 4750;
}

}
else
{
	if(input[i]==(4749+offset0))
{
	vR[i] = 4749;
}
else
{
	vR[i] = 4748;
}

}

}
else
{
	if(input[i]>(4745+offset0))
{
	if(input[i]==(4747+offset0))
{
	vR[i] = 4747;
}
else
{
	vR[i] = 4746;
}

}
else
{
	if(input[i]==(4745+offset0))
{
	vR[i] = 4745;
}
else
{
	vR[i] = 4744;
}

}

}

}
else
{
	if(input[i]>(4739+offset0))
{
	if(input[i]>(4741+offset0))
{
	if(input[i]==(4743+offset0))
{
	vR[i] = 4743;
}
else
{
	vR[i] = 4742;
}

}
else
{
	if(input[i]==(4741+offset0))
{
	vR[i] = 4741;
}
else
{
	vR[i] = 4740;
}

}

}
else
{
	if(input[i]>(4737+offset0))
{
	if(input[i]==(4739+offset0))
{
	vR[i] = 4739;
}
else
{
	vR[i] = 4738;
}

}
else
{
	if(input[i]==(4737+offset0))
{
	vR[i] = 4737;
}
else
{
	vR[i] = 4736;
}

}

}

}

}

}

}

}
else
{
	if(input[i]>(4671+offset0))
{
	if(input[i]>(4703+offset0))
{
	if(input[i]>(4719+offset0))
{
	if(input[i]>(4727+offset0))
{
	if(input[i]>(4731+offset0))
{
	if(input[i]>(4733+offset0))
{
	if(input[i]==(4735+offset0))
{
	vR[i] = 4735;
}
else
{
	vR[i] = 4734;
}

}
else
{
	if(input[i]==(4733+offset0))
{
	vR[i] = 4733;
}
else
{
	vR[i] = 4732;
}

}

}
else
{
	if(input[i]>(4729+offset0))
{
	if(input[i]==(4731+offset0))
{
	vR[i] = 4731;
}
else
{
	vR[i] = 4730;
}

}
else
{
	if(input[i]==(4729+offset0))
{
	vR[i] = 4729;
}
else
{
	vR[i] = 4728;
}

}

}

}
else
{
	if(input[i]>(4723+offset0))
{
	if(input[i]>(4725+offset0))
{
	if(input[i]==(4727+offset0))
{
	vR[i] = 4727;
}
else
{
	vR[i] = 4726;
}

}
else
{
	if(input[i]==(4725+offset0))
{
	vR[i] = 4725;
}
else
{
	vR[i] = 4724;
}

}

}
else
{
	if(input[i]>(4721+offset0))
{
	if(input[i]==(4723+offset0))
{
	vR[i] = 4723;
}
else
{
	vR[i] = 4722;
}

}
else
{
	if(input[i]==(4721+offset0))
{
	vR[i] = 4721;
}
else
{
	vR[i] = 4720;
}

}

}

}

}
else
{
	if(input[i]>(4711+offset0))
{
	if(input[i]>(4715+offset0))
{
	if(input[i]>(4717+offset0))
{
	if(input[i]==(4719+offset0))
{
	vR[i] = 4719;
}
else
{
	vR[i] = 4718;
}

}
else
{
	if(input[i]==(4717+offset0))
{
	vR[i] = 4717;
}
else
{
	vR[i] = 4716;
}

}

}
else
{
	if(input[i]>(4713+offset0))
{
	if(input[i]==(4715+offset0))
{
	vR[i] = 4715;
}
else
{
	vR[i] = 4714;
}

}
else
{
	if(input[i]==(4713+offset0))
{
	vR[i] = 4713;
}
else
{
	vR[i] = 4712;
}

}

}

}
else
{
	if(input[i]>(4707+offset0))
{
	if(input[i]>(4709+offset0))
{
	if(input[i]==(4711+offset0))
{
	vR[i] = 4711;
}
else
{
	vR[i] = 4710;
}

}
else
{
	if(input[i]==(4709+offset0))
{
	vR[i] = 4709;
}
else
{
	vR[i] = 4708;
}

}

}
else
{
	if(input[i]>(4705+offset0))
{
	if(input[i]==(4707+offset0))
{
	vR[i] = 4707;
}
else
{
	vR[i] = 4706;
}

}
else
{
	if(input[i]==(4705+offset0))
{
	vR[i] = 4705;
}
else
{
	vR[i] = 4704;
}

}

}

}

}

}
else
{
	if(input[i]>(4687+offset0))
{
	if(input[i]>(4695+offset0))
{
	if(input[i]>(4699+offset0))
{
	if(input[i]>(4701+offset0))
{
	if(input[i]==(4703+offset0))
{
	vR[i] = 4703;
}
else
{
	vR[i] = 4702;
}

}
else
{
	if(input[i]==(4701+offset0))
{
	vR[i] = 4701;
}
else
{
	vR[i] = 4700;
}

}

}
else
{
	if(input[i]>(4697+offset0))
{
	if(input[i]==(4699+offset0))
{
	vR[i] = 4699;
}
else
{
	vR[i] = 4698;
}

}
else
{
	if(input[i]==(4697+offset0))
{
	vR[i] = 4697;
}
else
{
	vR[i] = 4696;
}

}

}

}
else
{
	if(input[i]>(4691+offset0))
{
	if(input[i]>(4693+offset0))
{
	if(input[i]==(4695+offset0))
{
	vR[i] = 4695;
}
else
{
	vR[i] = 4694;
}

}
else
{
	if(input[i]==(4693+offset0))
{
	vR[i] = 4693;
}
else
{
	vR[i] = 4692;
}

}

}
else
{
	if(input[i]>(4689+offset0))
{
	if(input[i]==(4691+offset0))
{
	vR[i] = 4691;
}
else
{
	vR[i] = 4690;
}

}
else
{
	if(input[i]==(4689+offset0))
{
	vR[i] = 4689;
}
else
{
	vR[i] = 4688;
}

}

}

}

}
else
{
	if(input[i]>(4679+offset0))
{
	if(input[i]>(4683+offset0))
{
	if(input[i]>(4685+offset0))
{
	if(input[i]==(4687+offset0))
{
	vR[i] = 4687;
}
else
{
	vR[i] = 4686;
}

}
else
{
	if(input[i]==(4685+offset0))
{
	vR[i] = 4685;
}
else
{
	vR[i] = 4684;
}

}

}
else
{
	if(input[i]>(4681+offset0))
{
	if(input[i]==(4683+offset0))
{
	vR[i] = 4683;
}
else
{
	vR[i] = 4682;
}

}
else
{
	if(input[i]==(4681+offset0))
{
	vR[i] = 4681;
}
else
{
	vR[i] = 4680;
}

}

}

}
else
{
	if(input[i]>(4675+offset0))
{
	if(input[i]>(4677+offset0))
{
	if(input[i]==(4679+offset0))
{
	vR[i] = 4679;
}
else
{
	vR[i] = 4678;
}

}
else
{
	if(input[i]==(4677+offset0))
{
	vR[i] = 4677;
}
else
{
	vR[i] = 4676;
}

}

}
else
{
	if(input[i]>(4673+offset0))
{
	if(input[i]==(4675+offset0))
{
	vR[i] = 4675;
}
else
{
	vR[i] = 4674;
}

}
else
{
	if(input[i]==(4673+offset0))
{
	vR[i] = 4673;
}
else
{
	vR[i] = 4672;
}

}

}

}

}

}

}
else
{
	if(input[i]>(4639+offset0))
{
	if(input[i]>(4655+offset0))
{
	if(input[i]>(4663+offset0))
{
	if(input[i]>(4667+offset0))
{
	if(input[i]>(4669+offset0))
{
	if(input[i]==(4671+offset0))
{
	vR[i] = 4671;
}
else
{
	vR[i] = 4670;
}

}
else
{
	if(input[i]==(4669+offset0))
{
	vR[i] = 4669;
}
else
{
	vR[i] = 4668;
}

}

}
else
{
	if(input[i]>(4665+offset0))
{
	if(input[i]==(4667+offset0))
{
	vR[i] = 4667;
}
else
{
	vR[i] = 4666;
}

}
else
{
	if(input[i]==(4665+offset0))
{
	vR[i] = 4665;
}
else
{
	vR[i] = 4664;
}

}

}

}
else
{
	if(input[i]>(4659+offset0))
{
	if(input[i]>(4661+offset0))
{
	if(input[i]==(4663+offset0))
{
	vR[i] = 4663;
}
else
{
	vR[i] = 4662;
}

}
else
{
	if(input[i]==(4661+offset0))
{
	vR[i] = 4661;
}
else
{
	vR[i] = 4660;
}

}

}
else
{
	if(input[i]>(4657+offset0))
{
	if(input[i]==(4659+offset0))
{
	vR[i] = 4659;
}
else
{
	vR[i] = 4658;
}

}
else
{
	if(input[i]==(4657+offset0))
{
	vR[i] = 4657;
}
else
{
	vR[i] = 4656;
}

}

}

}

}
else
{
	if(input[i]>(4647+offset0))
{
	if(input[i]>(4651+offset0))
{
	if(input[i]>(4653+offset0))
{
	if(input[i]==(4655+offset0))
{
	vR[i] = 4655;
}
else
{
	vR[i] = 4654;
}

}
else
{
	if(input[i]==(4653+offset0))
{
	vR[i] = 4653;
}
else
{
	vR[i] = 4652;
}

}

}
else
{
	if(input[i]>(4649+offset0))
{
	if(input[i]==(4651+offset0))
{
	vR[i] = 4651;
}
else
{
	vR[i] = 4650;
}

}
else
{
	if(input[i]==(4649+offset0))
{
	vR[i] = 4649;
}
else
{
	vR[i] = 4648;
}

}

}

}
else
{
	if(input[i]>(4643+offset0))
{
	if(input[i]>(4645+offset0))
{
	if(input[i]==(4647+offset0))
{
	vR[i] = 4647;
}
else
{
	vR[i] = 4646;
}

}
else
{
	if(input[i]==(4645+offset0))
{
	vR[i] = 4645;
}
else
{
	vR[i] = 4644;
}

}

}
else
{
	if(input[i]>(4641+offset0))
{
	if(input[i]==(4643+offset0))
{
	vR[i] = 4643;
}
else
{
	vR[i] = 4642;
}

}
else
{
	if(input[i]==(4641+offset0))
{
	vR[i] = 4641;
}
else
{
	vR[i] = 4640;
}

}

}

}

}

}
else
{
	if(input[i]>(4623+offset0))
{
	if(input[i]>(4631+offset0))
{
	if(input[i]>(4635+offset0))
{
	if(input[i]>(4637+offset0))
{
	if(input[i]==(4639+offset0))
{
	vR[i] = 4639;
}
else
{
	vR[i] = 4638;
}

}
else
{
	if(input[i]==(4637+offset0))
{
	vR[i] = 4637;
}
else
{
	vR[i] = 4636;
}

}

}
else
{
	if(input[i]>(4633+offset0))
{
	if(input[i]==(4635+offset0))
{
	vR[i] = 4635;
}
else
{
	vR[i] = 4634;
}

}
else
{
	if(input[i]==(4633+offset0))
{
	vR[i] = 4633;
}
else
{
	vR[i] = 4632;
}

}

}

}
else
{
	if(input[i]>(4627+offset0))
{
	if(input[i]>(4629+offset0))
{
	if(input[i]==(4631+offset0))
{
	vR[i] = 4631;
}
else
{
	vR[i] = 4630;
}

}
else
{
	if(input[i]==(4629+offset0))
{
	vR[i] = 4629;
}
else
{
	vR[i] = 4628;
}

}

}
else
{
	if(input[i]>(4625+offset0))
{
	if(input[i]==(4627+offset0))
{
	vR[i] = 4627;
}
else
{
	vR[i] = 4626;
}

}
else
{
	if(input[i]==(4625+offset0))
{
	vR[i] = 4625;
}
else
{
	vR[i] = 4624;
}

}

}

}

}
else
{
	if(input[i]>(4615+offset0))
{
	if(input[i]>(4619+offset0))
{
	if(input[i]>(4621+offset0))
{
	if(input[i]==(4623+offset0))
{
	vR[i] = 4623;
}
else
{
	vR[i] = 4622;
}

}
else
{
	if(input[i]==(4621+offset0))
{
	vR[i] = 4621;
}
else
{
	vR[i] = 4620;
}

}

}
else
{
	if(input[i]>(4617+offset0))
{
	if(input[i]==(4619+offset0))
{
	vR[i] = 4619;
}
else
{
	vR[i] = 4618;
}

}
else
{
	if(input[i]==(4617+offset0))
{
	vR[i] = 4617;
}
else
{
	vR[i] = 4616;
}

}

}

}
else
{
	if(input[i]>(4611+offset0))
{
	if(input[i]>(4613+offset0))
{
	if(input[i]==(4615+offset0))
{
	vR[i] = 4615;
}
else
{
	vR[i] = 4614;
}

}
else
{
	if(input[i]==(4613+offset0))
{
	vR[i] = 4613;
}
else
{
	vR[i] = 4612;
}

}

}
else
{
	if(input[i]>(4609+offset0))
{
	if(input[i]==(4611+offset0))
{
	vR[i] = 4611;
}
else
{
	vR[i] = 4610;
}

}
else
{
	if(input[i]==(4609+offset0))
{
	vR[i] = 4609;
}
else
{
	vR[i] = 4608;
}

}

}

}

}

}

}

}

}

}
else
{
	if(input[i]>(4351+offset0))
{
	if(input[i]>(4479+offset0))
{
	if(input[i]>(4543+offset0))
{
	if(input[i]>(4575+offset0))
{
	if(input[i]>(4591+offset0))
{
	if(input[i]>(4599+offset0))
{
	if(input[i]>(4603+offset0))
{
	if(input[i]>(4605+offset0))
{
	if(input[i]==(4607+offset0))
{
	vR[i] = 4607;
}
else
{
	vR[i] = 4606;
}

}
else
{
	if(input[i]==(4605+offset0))
{
	vR[i] = 4605;
}
else
{
	vR[i] = 4604;
}

}

}
else
{
	if(input[i]>(4601+offset0))
{
	if(input[i]==(4603+offset0))
{
	vR[i] = 4603;
}
else
{
	vR[i] = 4602;
}

}
else
{
	if(input[i]==(4601+offset0))
{
	vR[i] = 4601;
}
else
{
	vR[i] = 4600;
}

}

}

}
else
{
	if(input[i]>(4595+offset0))
{
	if(input[i]>(4597+offset0))
{
	if(input[i]==(4599+offset0))
{
	vR[i] = 4599;
}
else
{
	vR[i] = 4598;
}

}
else
{
	if(input[i]==(4597+offset0))
{
	vR[i] = 4597;
}
else
{
	vR[i] = 4596;
}

}

}
else
{
	if(input[i]>(4593+offset0))
{
	if(input[i]==(4595+offset0))
{
	vR[i] = 4595;
}
else
{
	vR[i] = 4594;
}

}
else
{
	if(input[i]==(4593+offset0))
{
	vR[i] = 4593;
}
else
{
	vR[i] = 4592;
}

}

}

}

}
else
{
	if(input[i]>(4583+offset0))
{
	if(input[i]>(4587+offset0))
{
	if(input[i]>(4589+offset0))
{
	if(input[i]==(4591+offset0))
{
	vR[i] = 4591;
}
else
{
	vR[i] = 4590;
}

}
else
{
	if(input[i]==(4589+offset0))
{
	vR[i] = 4589;
}
else
{
	vR[i] = 4588;
}

}

}
else
{
	if(input[i]>(4585+offset0))
{
	if(input[i]==(4587+offset0))
{
	vR[i] = 4587;
}
else
{
	vR[i] = 4586;
}

}
else
{
	if(input[i]==(4585+offset0))
{
	vR[i] = 4585;
}
else
{
	vR[i] = 4584;
}

}

}

}
else
{
	if(input[i]>(4579+offset0))
{
	if(input[i]>(4581+offset0))
{
	if(input[i]==(4583+offset0))
{
	vR[i] = 4583;
}
else
{
	vR[i] = 4582;
}

}
else
{
	if(input[i]==(4581+offset0))
{
	vR[i] = 4581;
}
else
{
	vR[i] = 4580;
}

}

}
else
{
	if(input[i]>(4577+offset0))
{
	if(input[i]==(4579+offset0))
{
	vR[i] = 4579;
}
else
{
	vR[i] = 4578;
}

}
else
{
	if(input[i]==(4577+offset0))
{
	vR[i] = 4577;
}
else
{
	vR[i] = 4576;
}

}

}

}

}

}
else
{
	if(input[i]>(4559+offset0))
{
	if(input[i]>(4567+offset0))
{
	if(input[i]>(4571+offset0))
{
	if(input[i]>(4573+offset0))
{
	if(input[i]==(4575+offset0))
{
	vR[i] = 4575;
}
else
{
	vR[i] = 4574;
}

}
else
{
	if(input[i]==(4573+offset0))
{
	vR[i] = 4573;
}
else
{
	vR[i] = 4572;
}

}

}
else
{
	if(input[i]>(4569+offset0))
{
	if(input[i]==(4571+offset0))
{
	vR[i] = 4571;
}
else
{
	vR[i] = 4570;
}

}
else
{
	if(input[i]==(4569+offset0))
{
	vR[i] = 4569;
}
else
{
	vR[i] = 4568;
}

}

}

}
else
{
	if(input[i]>(4563+offset0))
{
	if(input[i]>(4565+offset0))
{
	if(input[i]==(4567+offset0))
{
	vR[i] = 4567;
}
else
{
	vR[i] = 4566;
}

}
else
{
	if(input[i]==(4565+offset0))
{
	vR[i] = 4565;
}
else
{
	vR[i] = 4564;
}

}

}
else
{
	if(input[i]>(4561+offset0))
{
	if(input[i]==(4563+offset0))
{
	vR[i] = 4563;
}
else
{
	vR[i] = 4562;
}

}
else
{
	if(input[i]==(4561+offset0))
{
	vR[i] = 4561;
}
else
{
	vR[i] = 4560;
}

}

}

}

}
else
{
	if(input[i]>(4551+offset0))
{
	if(input[i]>(4555+offset0))
{
	if(input[i]>(4557+offset0))
{
	if(input[i]==(4559+offset0))
{
	vR[i] = 4559;
}
else
{
	vR[i] = 4558;
}

}
else
{
	if(input[i]==(4557+offset0))
{
	vR[i] = 4557;
}
else
{
	vR[i] = 4556;
}

}

}
else
{
	if(input[i]>(4553+offset0))
{
	if(input[i]==(4555+offset0))
{
	vR[i] = 4555;
}
else
{
	vR[i] = 4554;
}

}
else
{
	if(input[i]==(4553+offset0))
{
	vR[i] = 4553;
}
else
{
	vR[i] = 4552;
}

}

}

}
else
{
	if(input[i]>(4547+offset0))
{
	if(input[i]>(4549+offset0))
{
	if(input[i]==(4551+offset0))
{
	vR[i] = 4551;
}
else
{
	vR[i] = 4550;
}

}
else
{
	if(input[i]==(4549+offset0))
{
	vR[i] = 4549;
}
else
{
	vR[i] = 4548;
}

}

}
else
{
	if(input[i]>(4545+offset0))
{
	if(input[i]==(4547+offset0))
{
	vR[i] = 4547;
}
else
{
	vR[i] = 4546;
}

}
else
{
	if(input[i]==(4545+offset0))
{
	vR[i] = 4545;
}
else
{
	vR[i] = 4544;
}

}

}

}

}

}

}
else
{
	if(input[i]>(4511+offset0))
{
	if(input[i]>(4527+offset0))
{
	if(input[i]>(4535+offset0))
{
	if(input[i]>(4539+offset0))
{
	if(input[i]>(4541+offset0))
{
	if(input[i]==(4543+offset0))
{
	vR[i] = 4543;
}
else
{
	vR[i] = 4542;
}

}
else
{
	if(input[i]==(4541+offset0))
{
	vR[i] = 4541;
}
else
{
	vR[i] = 4540;
}

}

}
else
{
	if(input[i]>(4537+offset0))
{
	if(input[i]==(4539+offset0))
{
	vR[i] = 4539;
}
else
{
	vR[i] = 4538;
}

}
else
{
	if(input[i]==(4537+offset0))
{
	vR[i] = 4537;
}
else
{
	vR[i] = 4536;
}

}

}

}
else
{
	if(input[i]>(4531+offset0))
{
	if(input[i]>(4533+offset0))
{
	if(input[i]==(4535+offset0))
{
	vR[i] = 4535;
}
else
{
	vR[i] = 4534;
}

}
else
{
	if(input[i]==(4533+offset0))
{
	vR[i] = 4533;
}
else
{
	vR[i] = 4532;
}

}

}
else
{
	if(input[i]>(4529+offset0))
{
	if(input[i]==(4531+offset0))
{
	vR[i] = 4531;
}
else
{
	vR[i] = 4530;
}

}
else
{
	if(input[i]==(4529+offset0))
{
	vR[i] = 4529;
}
else
{
	vR[i] = 4528;
}

}

}

}

}
else
{
	if(input[i]>(4519+offset0))
{
	if(input[i]>(4523+offset0))
{
	if(input[i]>(4525+offset0))
{
	if(input[i]==(4527+offset0))
{
	vR[i] = 4527;
}
else
{
	vR[i] = 4526;
}

}
else
{
	if(input[i]==(4525+offset0))
{
	vR[i] = 4525;
}
else
{
	vR[i] = 4524;
}

}

}
else
{
	if(input[i]>(4521+offset0))
{
	if(input[i]==(4523+offset0))
{
	vR[i] = 4523;
}
else
{
	vR[i] = 4522;
}

}
else
{
	if(input[i]==(4521+offset0))
{
	vR[i] = 4521;
}
else
{
	vR[i] = 4520;
}

}

}

}
else
{
	if(input[i]>(4515+offset0))
{
	if(input[i]>(4517+offset0))
{
	if(input[i]==(4519+offset0))
{
	vR[i] = 4519;
}
else
{
	vR[i] = 4518;
}

}
else
{
	if(input[i]==(4517+offset0))
{
	vR[i] = 4517;
}
else
{
	vR[i] = 4516;
}

}

}
else
{
	if(input[i]>(4513+offset0))
{
	if(input[i]==(4515+offset0))
{
	vR[i] = 4515;
}
else
{
	vR[i] = 4514;
}

}
else
{
	if(input[i]==(4513+offset0))
{
	vR[i] = 4513;
}
else
{
	vR[i] = 4512;
}

}

}

}

}

}
else
{
	if(input[i]>(4495+offset0))
{
	if(input[i]>(4503+offset0))
{
	if(input[i]>(4507+offset0))
{
	if(input[i]>(4509+offset0))
{
	if(input[i]==(4511+offset0))
{
	vR[i] = 4511;
}
else
{
	vR[i] = 4510;
}

}
else
{
	if(input[i]==(4509+offset0))
{
	vR[i] = 4509;
}
else
{
	vR[i] = 4508;
}

}

}
else
{
	if(input[i]>(4505+offset0))
{
	if(input[i]==(4507+offset0))
{
	vR[i] = 4507;
}
else
{
	vR[i] = 4506;
}

}
else
{
	if(input[i]==(4505+offset0))
{
	vR[i] = 4505;
}
else
{
	vR[i] = 4504;
}

}

}

}
else
{
	if(input[i]>(4499+offset0))
{
	if(input[i]>(4501+offset0))
{
	if(input[i]==(4503+offset0))
{
	vR[i] = 4503;
}
else
{
	vR[i] = 4502;
}

}
else
{
	if(input[i]==(4501+offset0))
{
	vR[i] = 4501;
}
else
{
	vR[i] = 4500;
}

}

}
else
{
	if(input[i]>(4497+offset0))
{
	if(input[i]==(4499+offset0))
{
	vR[i] = 4499;
}
else
{
	vR[i] = 4498;
}

}
else
{
	if(input[i]==(4497+offset0))
{
	vR[i] = 4497;
}
else
{
	vR[i] = 4496;
}

}

}

}

}
else
{
	if(input[i]>(4487+offset0))
{
	if(input[i]>(4491+offset0))
{
	if(input[i]>(4493+offset0))
{
	if(input[i]==(4495+offset0))
{
	vR[i] = 4495;
}
else
{
	vR[i] = 4494;
}

}
else
{
	if(input[i]==(4493+offset0))
{
	vR[i] = 4493;
}
else
{
	vR[i] = 4492;
}

}

}
else
{
	if(input[i]>(4489+offset0))
{
	if(input[i]==(4491+offset0))
{
	vR[i] = 4491;
}
else
{
	vR[i] = 4490;
}

}
else
{
	if(input[i]==(4489+offset0))
{
	vR[i] = 4489;
}
else
{
	vR[i] = 4488;
}

}

}

}
else
{
	if(input[i]>(4483+offset0))
{
	if(input[i]>(4485+offset0))
{
	if(input[i]==(4487+offset0))
{
	vR[i] = 4487;
}
else
{
	vR[i] = 4486;
}

}
else
{
	if(input[i]==(4485+offset0))
{
	vR[i] = 4485;
}
else
{
	vR[i] = 4484;
}

}

}
else
{
	if(input[i]>(4481+offset0))
{
	if(input[i]==(4483+offset0))
{
	vR[i] = 4483;
}
else
{
	vR[i] = 4482;
}

}
else
{
	if(input[i]==(4481+offset0))
{
	vR[i] = 4481;
}
else
{
	vR[i] = 4480;
}

}

}

}

}

}

}

}
else
{
	if(input[i]>(4415+offset0))
{
	if(input[i]>(4447+offset0))
{
	if(input[i]>(4463+offset0))
{
	if(input[i]>(4471+offset0))
{
	if(input[i]>(4475+offset0))
{
	if(input[i]>(4477+offset0))
{
	if(input[i]==(4479+offset0))
{
	vR[i] = 4479;
}
else
{
	vR[i] = 4478;
}

}
else
{
	if(input[i]==(4477+offset0))
{
	vR[i] = 4477;
}
else
{
	vR[i] = 4476;
}

}

}
else
{
	if(input[i]>(4473+offset0))
{
	if(input[i]==(4475+offset0))
{
	vR[i] = 4475;
}
else
{
	vR[i] = 4474;
}

}
else
{
	if(input[i]==(4473+offset0))
{
	vR[i] = 4473;
}
else
{
	vR[i] = 4472;
}

}

}

}
else
{
	if(input[i]>(4467+offset0))
{
	if(input[i]>(4469+offset0))
{
	if(input[i]==(4471+offset0))
{
	vR[i] = 4471;
}
else
{
	vR[i] = 4470;
}

}
else
{
	if(input[i]==(4469+offset0))
{
	vR[i] = 4469;
}
else
{
	vR[i] = 4468;
}

}

}
else
{
	if(input[i]>(4465+offset0))
{
	if(input[i]==(4467+offset0))
{
	vR[i] = 4467;
}
else
{
	vR[i] = 4466;
}

}
else
{
	if(input[i]==(4465+offset0))
{
	vR[i] = 4465;
}
else
{
	vR[i] = 4464;
}

}

}

}

}
else
{
	if(input[i]>(4455+offset0))
{
	if(input[i]>(4459+offset0))
{
	if(input[i]>(4461+offset0))
{
	if(input[i]==(4463+offset0))
{
	vR[i] = 4463;
}
else
{
	vR[i] = 4462;
}

}
else
{
	if(input[i]==(4461+offset0))
{
	vR[i] = 4461;
}
else
{
	vR[i] = 4460;
}

}

}
else
{
	if(input[i]>(4457+offset0))
{
	if(input[i]==(4459+offset0))
{
	vR[i] = 4459;
}
else
{
	vR[i] = 4458;
}

}
else
{
	if(input[i]==(4457+offset0))
{
	vR[i] = 4457;
}
else
{
	vR[i] = 4456;
}

}

}

}
else
{
	if(input[i]>(4451+offset0))
{
	if(input[i]>(4453+offset0))
{
	if(input[i]==(4455+offset0))
{
	vR[i] = 4455;
}
else
{
	vR[i] = 4454;
}

}
else
{
	if(input[i]==(4453+offset0))
{
	vR[i] = 4453;
}
else
{
	vR[i] = 4452;
}

}

}
else
{
	if(input[i]>(4449+offset0))
{
	if(input[i]==(4451+offset0))
{
	vR[i] = 4451;
}
else
{
	vR[i] = 4450;
}

}
else
{
	if(input[i]==(4449+offset0))
{
	vR[i] = 4449;
}
else
{
	vR[i] = 4448;
}

}

}

}

}

}
else
{
	if(input[i]>(4431+offset0))
{
	if(input[i]>(4439+offset0))
{
	if(input[i]>(4443+offset0))
{
	if(input[i]>(4445+offset0))
{
	if(input[i]==(4447+offset0))
{
	vR[i] = 4447;
}
else
{
	vR[i] = 4446;
}

}
else
{
	if(input[i]==(4445+offset0))
{
	vR[i] = 4445;
}
else
{
	vR[i] = 4444;
}

}

}
else
{
	if(input[i]>(4441+offset0))
{
	if(input[i]==(4443+offset0))
{
	vR[i] = 4443;
}
else
{
	vR[i] = 4442;
}

}
else
{
	if(input[i]==(4441+offset0))
{
	vR[i] = 4441;
}
else
{
	vR[i] = 4440;
}

}

}

}
else
{
	if(input[i]>(4435+offset0))
{
	if(input[i]>(4437+offset0))
{
	if(input[i]==(4439+offset0))
{
	vR[i] = 4439;
}
else
{
	vR[i] = 4438;
}

}
else
{
	if(input[i]==(4437+offset0))
{
	vR[i] = 4437;
}
else
{
	vR[i] = 4436;
}

}

}
else
{
	if(input[i]>(4433+offset0))
{
	if(input[i]==(4435+offset0))
{
	vR[i] = 4435;
}
else
{
	vR[i] = 4434;
}

}
else
{
	if(input[i]==(4433+offset0))
{
	vR[i] = 4433;
}
else
{
	vR[i] = 4432;
}

}

}

}

}
else
{
	if(input[i]>(4423+offset0))
{
	if(input[i]>(4427+offset0))
{
	if(input[i]>(4429+offset0))
{
	if(input[i]==(4431+offset0))
{
	vR[i] = 4431;
}
else
{
	vR[i] = 4430;
}

}
else
{
	if(input[i]==(4429+offset0))
{
	vR[i] = 4429;
}
else
{
	vR[i] = 4428;
}

}

}
else
{
	if(input[i]>(4425+offset0))
{
	if(input[i]==(4427+offset0))
{
	vR[i] = 4427;
}
else
{
	vR[i] = 4426;
}

}
else
{
	if(input[i]==(4425+offset0))
{
	vR[i] = 4425;
}
else
{
	vR[i] = 4424;
}

}

}

}
else
{
	if(input[i]>(4419+offset0))
{
	if(input[i]>(4421+offset0))
{
	if(input[i]==(4423+offset0))
{
	vR[i] = 4423;
}
else
{
	vR[i] = 4422;
}

}
else
{
	if(input[i]==(4421+offset0))
{
	vR[i] = 4421;
}
else
{
	vR[i] = 4420;
}

}

}
else
{
	if(input[i]>(4417+offset0))
{
	if(input[i]==(4419+offset0))
{
	vR[i] = 4419;
}
else
{
	vR[i] = 4418;
}

}
else
{
	if(input[i]==(4417+offset0))
{
	vR[i] = 4417;
}
else
{
	vR[i] = 4416;
}

}

}

}

}

}

}
else
{
	if(input[i]>(4383+offset0))
{
	if(input[i]>(4399+offset0))
{
	if(input[i]>(4407+offset0))
{
	if(input[i]>(4411+offset0))
{
	if(input[i]>(4413+offset0))
{
	if(input[i]==(4415+offset0))
{
	vR[i] = 4415;
}
else
{
	vR[i] = 4414;
}

}
else
{
	if(input[i]==(4413+offset0))
{
	vR[i] = 4413;
}
else
{
	vR[i] = 4412;
}

}

}
else
{
	if(input[i]>(4409+offset0))
{
	if(input[i]==(4411+offset0))
{
	vR[i] = 4411;
}
else
{
	vR[i] = 4410;
}

}
else
{
	if(input[i]==(4409+offset0))
{
	vR[i] = 4409;
}
else
{
	vR[i] = 4408;
}

}

}

}
else
{
	if(input[i]>(4403+offset0))
{
	if(input[i]>(4405+offset0))
{
	if(input[i]==(4407+offset0))
{
	vR[i] = 4407;
}
else
{
	vR[i] = 4406;
}

}
else
{
	if(input[i]==(4405+offset0))
{
	vR[i] = 4405;
}
else
{
	vR[i] = 4404;
}

}

}
else
{
	if(input[i]>(4401+offset0))
{
	if(input[i]==(4403+offset0))
{
	vR[i] = 4403;
}
else
{
	vR[i] = 4402;
}

}
else
{
	if(input[i]==(4401+offset0))
{
	vR[i] = 4401;
}
else
{
	vR[i] = 4400;
}

}

}

}

}
else
{
	if(input[i]>(4391+offset0))
{
	if(input[i]>(4395+offset0))
{
	if(input[i]>(4397+offset0))
{
	if(input[i]==(4399+offset0))
{
	vR[i] = 4399;
}
else
{
	vR[i] = 4398;
}

}
else
{
	if(input[i]==(4397+offset0))
{
	vR[i] = 4397;
}
else
{
	vR[i] = 4396;
}

}

}
else
{
	if(input[i]>(4393+offset0))
{
	if(input[i]==(4395+offset0))
{
	vR[i] = 4395;
}
else
{
	vR[i] = 4394;
}

}
else
{
	if(input[i]==(4393+offset0))
{
	vR[i] = 4393;
}
else
{
	vR[i] = 4392;
}

}

}

}
else
{
	if(input[i]>(4387+offset0))
{
	if(input[i]>(4389+offset0))
{
	if(input[i]==(4391+offset0))
{
	vR[i] = 4391;
}
else
{
	vR[i] = 4390;
}

}
else
{
	if(input[i]==(4389+offset0))
{
	vR[i] = 4389;
}
else
{
	vR[i] = 4388;
}

}

}
else
{
	if(input[i]>(4385+offset0))
{
	if(input[i]==(4387+offset0))
{
	vR[i] = 4387;
}
else
{
	vR[i] = 4386;
}

}
else
{
	if(input[i]==(4385+offset0))
{
	vR[i] = 4385;
}
else
{
	vR[i] = 4384;
}

}

}

}

}

}
else
{
	if(input[i]>(4367+offset0))
{
	if(input[i]>(4375+offset0))
{
	if(input[i]>(4379+offset0))
{
	if(input[i]>(4381+offset0))
{
	if(input[i]==(4383+offset0))
{
	vR[i] = 4383;
}
else
{
	vR[i] = 4382;
}

}
else
{
	if(input[i]==(4381+offset0))
{
	vR[i] = 4381;
}
else
{
	vR[i] = 4380;
}

}

}
else
{
	if(input[i]>(4377+offset0))
{
	if(input[i]==(4379+offset0))
{
	vR[i] = 4379;
}
else
{
	vR[i] = 4378;
}

}
else
{
	if(input[i]==(4377+offset0))
{
	vR[i] = 4377;
}
else
{
	vR[i] = 4376;
}

}

}

}
else
{
	if(input[i]>(4371+offset0))
{
	if(input[i]>(4373+offset0))
{
	if(input[i]==(4375+offset0))
{
	vR[i] = 4375;
}
else
{
	vR[i] = 4374;
}

}
else
{
	if(input[i]==(4373+offset0))
{
	vR[i] = 4373;
}
else
{
	vR[i] = 4372;
}

}

}
else
{
	if(input[i]>(4369+offset0))
{
	if(input[i]==(4371+offset0))
{
	vR[i] = 4371;
}
else
{
	vR[i] = 4370;
}

}
else
{
	if(input[i]==(4369+offset0))
{
	vR[i] = 4369;
}
else
{
	vR[i] = 4368;
}

}

}

}

}
else
{
	if(input[i]>(4359+offset0))
{
	if(input[i]>(4363+offset0))
{
	if(input[i]>(4365+offset0))
{
	if(input[i]==(4367+offset0))
{
	vR[i] = 4367;
}
else
{
	vR[i] = 4366;
}

}
else
{
	if(input[i]==(4365+offset0))
{
	vR[i] = 4365;
}
else
{
	vR[i] = 4364;
}

}

}
else
{
	if(input[i]>(4361+offset0))
{
	if(input[i]==(4363+offset0))
{
	vR[i] = 4363;
}
else
{
	vR[i] = 4362;
}

}
else
{
	if(input[i]==(4361+offset0))
{
	vR[i] = 4361;
}
else
{
	vR[i] = 4360;
}

}

}

}
else
{
	if(input[i]>(4355+offset0))
{
	if(input[i]>(4357+offset0))
{
	if(input[i]==(4359+offset0))
{
	vR[i] = 4359;
}
else
{
	vR[i] = 4358;
}

}
else
{
	if(input[i]==(4357+offset0))
{
	vR[i] = 4357;
}
else
{
	vR[i] = 4356;
}

}

}
else
{
	if(input[i]>(4353+offset0))
{
	if(input[i]==(4355+offset0))
{
	vR[i] = 4355;
}
else
{
	vR[i] = 4354;
}

}
else
{
	if(input[i]==(4353+offset0))
{
	vR[i] = 4353;
}
else
{
	vR[i] = 4352;
}

}

}

}

}

}

}

}

}
else
{
	if(input[i]>(4223+offset0))
{
	if(input[i]>(4287+offset0))
{
	if(input[i]>(4319+offset0))
{
	if(input[i]>(4335+offset0))
{
	if(input[i]>(4343+offset0))
{
	if(input[i]>(4347+offset0))
{
	if(input[i]>(4349+offset0))
{
	if(input[i]==(4351+offset0))
{
	vR[i] = 4351;
}
else
{
	vR[i] = 4350;
}

}
else
{
	if(input[i]==(4349+offset0))
{
	vR[i] = 4349;
}
else
{
	vR[i] = 4348;
}

}

}
else
{
	if(input[i]>(4345+offset0))
{
	if(input[i]==(4347+offset0))
{
	vR[i] = 4347;
}
else
{
	vR[i] = 4346;
}

}
else
{
	if(input[i]==(4345+offset0))
{
	vR[i] = 4345;
}
else
{
	vR[i] = 4344;
}

}

}

}
else
{
	if(input[i]>(4339+offset0))
{
	if(input[i]>(4341+offset0))
{
	if(input[i]==(4343+offset0))
{
	vR[i] = 4343;
}
else
{
	vR[i] = 4342;
}

}
else
{
	if(input[i]==(4341+offset0))
{
	vR[i] = 4341;
}
else
{
	vR[i] = 4340;
}

}

}
else
{
	if(input[i]>(4337+offset0))
{
	if(input[i]==(4339+offset0))
{
	vR[i] = 4339;
}
else
{
	vR[i] = 4338;
}

}
else
{
	if(input[i]==(4337+offset0))
{
	vR[i] = 4337;
}
else
{
	vR[i] = 4336;
}

}

}

}

}
else
{
	if(input[i]>(4327+offset0))
{
	if(input[i]>(4331+offset0))
{
	if(input[i]>(4333+offset0))
{
	if(input[i]==(4335+offset0))
{
	vR[i] = 4335;
}
else
{
	vR[i] = 4334;
}

}
else
{
	if(input[i]==(4333+offset0))
{
	vR[i] = 4333;
}
else
{
	vR[i] = 4332;
}

}

}
else
{
	if(input[i]>(4329+offset0))
{
	if(input[i]==(4331+offset0))
{
	vR[i] = 4331;
}
else
{
	vR[i] = 4330;
}

}
else
{
	if(input[i]==(4329+offset0))
{
	vR[i] = 4329;
}
else
{
	vR[i] = 4328;
}

}

}

}
else
{
	if(input[i]>(4323+offset0))
{
	if(input[i]>(4325+offset0))
{
	if(input[i]==(4327+offset0))
{
	vR[i] = 4327;
}
else
{
	vR[i] = 4326;
}

}
else
{
	if(input[i]==(4325+offset0))
{
	vR[i] = 4325;
}
else
{
	vR[i] = 4324;
}

}

}
else
{
	if(input[i]>(4321+offset0))
{
	if(input[i]==(4323+offset0))
{
	vR[i] = 4323;
}
else
{
	vR[i] = 4322;
}

}
else
{
	if(input[i]==(4321+offset0))
{
	vR[i] = 4321;
}
else
{
	vR[i] = 4320;
}

}

}

}

}

}
else
{
	if(input[i]>(4303+offset0))
{
	if(input[i]>(4311+offset0))
{
	if(input[i]>(4315+offset0))
{
	if(input[i]>(4317+offset0))
{
	if(input[i]==(4319+offset0))
{
	vR[i] = 4319;
}
else
{
	vR[i] = 4318;
}

}
else
{
	if(input[i]==(4317+offset0))
{
	vR[i] = 4317;
}
else
{
	vR[i] = 4316;
}

}

}
else
{
	if(input[i]>(4313+offset0))
{
	if(input[i]==(4315+offset0))
{
	vR[i] = 4315;
}
else
{
	vR[i] = 4314;
}

}
else
{
	if(input[i]==(4313+offset0))
{
	vR[i] = 4313;
}
else
{
	vR[i] = 4312;
}

}

}

}
else
{
	if(input[i]>(4307+offset0))
{
	if(input[i]>(4309+offset0))
{
	if(input[i]==(4311+offset0))
{
	vR[i] = 4311;
}
else
{
	vR[i] = 4310;
}

}
else
{
	if(input[i]==(4309+offset0))
{
	vR[i] = 4309;
}
else
{
	vR[i] = 4308;
}

}

}
else
{
	if(input[i]>(4305+offset0))
{
	if(input[i]==(4307+offset0))
{
	vR[i] = 4307;
}
else
{
	vR[i] = 4306;
}

}
else
{
	if(input[i]==(4305+offset0))
{
	vR[i] = 4305;
}
else
{
	vR[i] = 4304;
}

}

}

}

}
else
{
	if(input[i]>(4295+offset0))
{
	if(input[i]>(4299+offset0))
{
	if(input[i]>(4301+offset0))
{
	if(input[i]==(4303+offset0))
{
	vR[i] = 4303;
}
else
{
	vR[i] = 4302;
}

}
else
{
	if(input[i]==(4301+offset0))
{
	vR[i] = 4301;
}
else
{
	vR[i] = 4300;
}

}

}
else
{
	if(input[i]>(4297+offset0))
{
	if(input[i]==(4299+offset0))
{
	vR[i] = 4299;
}
else
{
	vR[i] = 4298;
}

}
else
{
	if(input[i]==(4297+offset0))
{
	vR[i] = 4297;
}
else
{
	vR[i] = 4296;
}

}

}

}
else
{
	if(input[i]>(4291+offset0))
{
	if(input[i]>(4293+offset0))
{
	if(input[i]==(4295+offset0))
{
	vR[i] = 4295;
}
else
{
	vR[i] = 4294;
}

}
else
{
	if(input[i]==(4293+offset0))
{
	vR[i] = 4293;
}
else
{
	vR[i] = 4292;
}

}

}
else
{
	if(input[i]>(4289+offset0))
{
	if(input[i]==(4291+offset0))
{
	vR[i] = 4291;
}
else
{
	vR[i] = 4290;
}

}
else
{
	if(input[i]==(4289+offset0))
{
	vR[i] = 4289;
}
else
{
	vR[i] = 4288;
}

}

}

}

}

}

}
else
{
	if(input[i]>(4255+offset0))
{
	if(input[i]>(4271+offset0))
{
	if(input[i]>(4279+offset0))
{
	if(input[i]>(4283+offset0))
{
	if(input[i]>(4285+offset0))
{
	if(input[i]==(4287+offset0))
{
	vR[i] = 4287;
}
else
{
	vR[i] = 4286;
}

}
else
{
	if(input[i]==(4285+offset0))
{
	vR[i] = 4285;
}
else
{
	vR[i] = 4284;
}

}

}
else
{
	if(input[i]>(4281+offset0))
{
	if(input[i]==(4283+offset0))
{
	vR[i] = 4283;
}
else
{
	vR[i] = 4282;
}

}
else
{
	if(input[i]==(4281+offset0))
{
	vR[i] = 4281;
}
else
{
	vR[i] = 4280;
}

}

}

}
else
{
	if(input[i]>(4275+offset0))
{
	if(input[i]>(4277+offset0))
{
	if(input[i]==(4279+offset0))
{
	vR[i] = 4279;
}
else
{
	vR[i] = 4278;
}

}
else
{
	if(input[i]==(4277+offset0))
{
	vR[i] = 4277;
}
else
{
	vR[i] = 4276;
}

}

}
else
{
	if(input[i]>(4273+offset0))
{
	if(input[i]==(4275+offset0))
{
	vR[i] = 4275;
}
else
{
	vR[i] = 4274;
}

}
else
{
	if(input[i]==(4273+offset0))
{
	vR[i] = 4273;
}
else
{
	vR[i] = 4272;
}

}

}

}

}
else
{
	if(input[i]>(4263+offset0))
{
	if(input[i]>(4267+offset0))
{
	if(input[i]>(4269+offset0))
{
	if(input[i]==(4271+offset0))
{
	vR[i] = 4271;
}
else
{
	vR[i] = 4270;
}

}
else
{
	if(input[i]==(4269+offset0))
{
	vR[i] = 4269;
}
else
{
	vR[i] = 4268;
}

}

}
else
{
	if(input[i]>(4265+offset0))
{
	if(input[i]==(4267+offset0))
{
	vR[i] = 4267;
}
else
{
	vR[i] = 4266;
}

}
else
{
	if(input[i]==(4265+offset0))
{
	vR[i] = 4265;
}
else
{
	vR[i] = 4264;
}

}

}

}
else
{
	if(input[i]>(4259+offset0))
{
	if(input[i]>(4261+offset0))
{
	if(input[i]==(4263+offset0))
{
	vR[i] = 4263;
}
else
{
	vR[i] = 4262;
}

}
else
{
	if(input[i]==(4261+offset0))
{
	vR[i] = 4261;
}
else
{
	vR[i] = 4260;
}

}

}
else
{
	if(input[i]>(4257+offset0))
{
	if(input[i]==(4259+offset0))
{
	vR[i] = 4259;
}
else
{
	vR[i] = 4258;
}

}
else
{
	if(input[i]==(4257+offset0))
{
	vR[i] = 4257;
}
else
{
	vR[i] = 4256;
}

}

}

}

}

}
else
{
	if(input[i]>(4239+offset0))
{
	if(input[i]>(4247+offset0))
{
	if(input[i]>(4251+offset0))
{
	if(input[i]>(4253+offset0))
{
	if(input[i]==(4255+offset0))
{
	vR[i] = 4255;
}
else
{
	vR[i] = 4254;
}

}
else
{
	if(input[i]==(4253+offset0))
{
	vR[i] = 4253;
}
else
{
	vR[i] = 4252;
}

}

}
else
{
	if(input[i]>(4249+offset0))
{
	if(input[i]==(4251+offset0))
{
	vR[i] = 4251;
}
else
{
	vR[i] = 4250;
}

}
else
{
	if(input[i]==(4249+offset0))
{
	vR[i] = 4249;
}
else
{
	vR[i] = 4248;
}

}

}

}
else
{
	if(input[i]>(4243+offset0))
{
	if(input[i]>(4245+offset0))
{
	if(input[i]==(4247+offset0))
{
	vR[i] = 4247;
}
else
{
	vR[i] = 4246;
}

}
else
{
	if(input[i]==(4245+offset0))
{
	vR[i] = 4245;
}
else
{
	vR[i] = 4244;
}

}

}
else
{
	if(input[i]>(4241+offset0))
{
	if(input[i]==(4243+offset0))
{
	vR[i] = 4243;
}
else
{
	vR[i] = 4242;
}

}
else
{
	if(input[i]==(4241+offset0))
{
	vR[i] = 4241;
}
else
{
	vR[i] = 4240;
}

}

}

}

}
else
{
	if(input[i]>(4231+offset0))
{
	if(input[i]>(4235+offset0))
{
	if(input[i]>(4237+offset0))
{
	if(input[i]==(4239+offset0))
{
	vR[i] = 4239;
}
else
{
	vR[i] = 4238;
}

}
else
{
	if(input[i]==(4237+offset0))
{
	vR[i] = 4237;
}
else
{
	vR[i] = 4236;
}

}

}
else
{
	if(input[i]>(4233+offset0))
{
	if(input[i]==(4235+offset0))
{
	vR[i] = 4235;
}
else
{
	vR[i] = 4234;
}

}
else
{
	if(input[i]==(4233+offset0))
{
	vR[i] = 4233;
}
else
{
	vR[i] = 4232;
}

}

}

}
else
{
	if(input[i]>(4227+offset0))
{
	if(input[i]>(4229+offset0))
{
	if(input[i]==(4231+offset0))
{
	vR[i] = 4231;
}
else
{
	vR[i] = 4230;
}

}
else
{
	if(input[i]==(4229+offset0))
{
	vR[i] = 4229;
}
else
{
	vR[i] = 4228;
}

}

}
else
{
	if(input[i]>(4225+offset0))
{
	if(input[i]==(4227+offset0))
{
	vR[i] = 4227;
}
else
{
	vR[i] = 4226;
}

}
else
{
	if(input[i]==(4225+offset0))
{
	vR[i] = 4225;
}
else
{
	vR[i] = 4224;
}

}

}

}

}

}

}

}
else
{
	if(input[i]>(4159+offset0))
{
	if(input[i]>(4191+offset0))
{
	if(input[i]>(4207+offset0))
{
	if(input[i]>(4215+offset0))
{
	if(input[i]>(4219+offset0))
{
	if(input[i]>(4221+offset0))
{
	if(input[i]==(4223+offset0))
{
	vR[i] = 4223;
}
else
{
	vR[i] = 4222;
}

}
else
{
	if(input[i]==(4221+offset0))
{
	vR[i] = 4221;
}
else
{
	vR[i] = 4220;
}

}

}
else
{
	if(input[i]>(4217+offset0))
{
	if(input[i]==(4219+offset0))
{
	vR[i] = 4219;
}
else
{
	vR[i] = 4218;
}

}
else
{
	if(input[i]==(4217+offset0))
{
	vR[i] = 4217;
}
else
{
	vR[i] = 4216;
}

}

}

}
else
{
	if(input[i]>(4211+offset0))
{
	if(input[i]>(4213+offset0))
{
	if(input[i]==(4215+offset0))
{
	vR[i] = 4215;
}
else
{
	vR[i] = 4214;
}

}
else
{
	if(input[i]==(4213+offset0))
{
	vR[i] = 4213;
}
else
{
	vR[i] = 4212;
}

}

}
else
{
	if(input[i]>(4209+offset0))
{
	if(input[i]==(4211+offset0))
{
	vR[i] = 4211;
}
else
{
	vR[i] = 4210;
}

}
else
{
	if(input[i]==(4209+offset0))
{
	vR[i] = 4209;
}
else
{
	vR[i] = 4208;
}

}

}

}

}
else
{
	if(input[i]>(4199+offset0))
{
	if(input[i]>(4203+offset0))
{
	if(input[i]>(4205+offset0))
{
	if(input[i]==(4207+offset0))
{
	vR[i] = 4207;
}
else
{
	vR[i] = 4206;
}

}
else
{
	if(input[i]==(4205+offset0))
{
	vR[i] = 4205;
}
else
{
	vR[i] = 4204;
}

}

}
else
{
	if(input[i]>(4201+offset0))
{
	if(input[i]==(4203+offset0))
{
	vR[i] = 4203;
}
else
{
	vR[i] = 4202;
}

}
else
{
	if(input[i]==(4201+offset0))
{
	vR[i] = 4201;
}
else
{
	vR[i] = 4200;
}

}

}

}
else
{
	if(input[i]>(4195+offset0))
{
	if(input[i]>(4197+offset0))
{
	if(input[i]==(4199+offset0))
{
	vR[i] = 4199;
}
else
{
	vR[i] = 4198;
}

}
else
{
	if(input[i]==(4197+offset0))
{
	vR[i] = 4197;
}
else
{
	vR[i] = 4196;
}

}

}
else
{
	if(input[i]>(4193+offset0))
{
	if(input[i]==(4195+offset0))
{
	vR[i] = 4195;
}
else
{
	vR[i] = 4194;
}

}
else
{
	if(input[i]==(4193+offset0))
{
	vR[i] = 4193;
}
else
{
	vR[i] = 4192;
}

}

}

}

}

}
else
{
	if(input[i]>(4175+offset0))
{
	if(input[i]>(4183+offset0))
{
	if(input[i]>(4187+offset0))
{
	if(input[i]>(4189+offset0))
{
	if(input[i]==(4191+offset0))
{
	vR[i] = 4191;
}
else
{
	vR[i] = 4190;
}

}
else
{
	if(input[i]==(4189+offset0))
{
	vR[i] = 4189;
}
else
{
	vR[i] = 4188;
}

}

}
else
{
	if(input[i]>(4185+offset0))
{
	if(input[i]==(4187+offset0))
{
	vR[i] = 4187;
}
else
{
	vR[i] = 4186;
}

}
else
{
	if(input[i]==(4185+offset0))
{
	vR[i] = 4185;
}
else
{
	vR[i] = 4184;
}

}

}

}
else
{
	if(input[i]>(4179+offset0))
{
	if(input[i]>(4181+offset0))
{
	if(input[i]==(4183+offset0))
{
	vR[i] = 4183;
}
else
{
	vR[i] = 4182;
}

}
else
{
	if(input[i]==(4181+offset0))
{
	vR[i] = 4181;
}
else
{
	vR[i] = 4180;
}

}

}
else
{
	if(input[i]>(4177+offset0))
{
	if(input[i]==(4179+offset0))
{
	vR[i] = 4179;
}
else
{
	vR[i] = 4178;
}

}
else
{
	if(input[i]==(4177+offset0))
{
	vR[i] = 4177;
}
else
{
	vR[i] = 4176;
}

}

}

}

}
else
{
	if(input[i]>(4167+offset0))
{
	if(input[i]>(4171+offset0))
{
	if(input[i]>(4173+offset0))
{
	if(input[i]==(4175+offset0))
{
	vR[i] = 4175;
}
else
{
	vR[i] = 4174;
}

}
else
{
	if(input[i]==(4173+offset0))
{
	vR[i] = 4173;
}
else
{
	vR[i] = 4172;
}

}

}
else
{
	if(input[i]>(4169+offset0))
{
	if(input[i]==(4171+offset0))
{
	vR[i] = 4171;
}
else
{
	vR[i] = 4170;
}

}
else
{
	if(input[i]==(4169+offset0))
{
	vR[i] = 4169;
}
else
{
	vR[i] = 4168;
}

}

}

}
else
{
	if(input[i]>(4163+offset0))
{
	if(input[i]>(4165+offset0))
{
	if(input[i]==(4167+offset0))
{
	vR[i] = 4167;
}
else
{
	vR[i] = 4166;
}

}
else
{
	if(input[i]==(4165+offset0))
{
	vR[i] = 4165;
}
else
{
	vR[i] = 4164;
}

}

}
else
{
	if(input[i]>(4161+offset0))
{
	if(input[i]==(4163+offset0))
{
	vR[i] = 4163;
}
else
{
	vR[i] = 4162;
}

}
else
{
	if(input[i]==(4161+offset0))
{
	vR[i] = 4161;
}
else
{
	vR[i] = 4160;
}

}

}

}

}

}

}
else
{
	if(input[i]>(4127+offset0))
{
	if(input[i]>(4143+offset0))
{
	if(input[i]>(4151+offset0))
{
	if(input[i]>(4155+offset0))
{
	if(input[i]>(4157+offset0))
{
	if(input[i]==(4159+offset0))
{
	vR[i] = 4159;
}
else
{
	vR[i] = 4158;
}

}
else
{
	if(input[i]==(4157+offset0))
{
	vR[i] = 4157;
}
else
{
	vR[i] = 4156;
}

}

}
else
{
	if(input[i]>(4153+offset0))
{
	if(input[i]==(4155+offset0))
{
	vR[i] = 4155;
}
else
{
	vR[i] = 4154;
}

}
else
{
	if(input[i]==(4153+offset0))
{
	vR[i] = 4153;
}
else
{
	vR[i] = 4152;
}

}

}

}
else
{
	if(input[i]>(4147+offset0))
{
	if(input[i]>(4149+offset0))
{
	if(input[i]==(4151+offset0))
{
	vR[i] = 4151;
}
else
{
	vR[i] = 4150;
}

}
else
{
	if(input[i]==(4149+offset0))
{
	vR[i] = 4149;
}
else
{
	vR[i] = 4148;
}

}

}
else
{
	if(input[i]>(4145+offset0))
{
	if(input[i]==(4147+offset0))
{
	vR[i] = 4147;
}
else
{
	vR[i] = 4146;
}

}
else
{
	if(input[i]==(4145+offset0))
{
	vR[i] = 4145;
}
else
{
	vR[i] = 4144;
}

}

}

}

}
else
{
	if(input[i]>(4135+offset0))
{
	if(input[i]>(4139+offset0))
{
	if(input[i]>(4141+offset0))
{
	if(input[i]==(4143+offset0))
{
	vR[i] = 4143;
}
else
{
	vR[i] = 4142;
}

}
else
{
	if(input[i]==(4141+offset0))
{
	vR[i] = 4141;
}
else
{
	vR[i] = 4140;
}

}

}
else
{
	if(input[i]>(4137+offset0))
{
	if(input[i]==(4139+offset0))
{
	vR[i] = 4139;
}
else
{
	vR[i] = 4138;
}

}
else
{
	if(input[i]==(4137+offset0))
{
	vR[i] = 4137;
}
else
{
	vR[i] = 4136;
}

}

}

}
else
{
	if(input[i]>(4131+offset0))
{
	if(input[i]>(4133+offset0))
{
	if(input[i]==(4135+offset0))
{
	vR[i] = 4135;
}
else
{
	vR[i] = 4134;
}

}
else
{
	if(input[i]==(4133+offset0))
{
	vR[i] = 4133;
}
else
{
	vR[i] = 4132;
}

}

}
else
{
	if(input[i]>(4129+offset0))
{
	if(input[i]==(4131+offset0))
{
	vR[i] = 4131;
}
else
{
	vR[i] = 4130;
}

}
else
{
	if(input[i]==(4129+offset0))
{
	vR[i] = 4129;
}
else
{
	vR[i] = 4128;
}

}

}

}

}

}
else
{
	if(input[i]>(4111+offset0))
{
	if(input[i]>(4119+offset0))
{
	if(input[i]>(4123+offset0))
{
	if(input[i]>(4125+offset0))
{
	if(input[i]==(4127+offset0))
{
	vR[i] = 4127;
}
else
{
	vR[i] = 4126;
}

}
else
{
	if(input[i]==(4125+offset0))
{
	vR[i] = 4125;
}
else
{
	vR[i] = 4124;
}

}

}
else
{
	if(input[i]>(4121+offset0))
{
	if(input[i]==(4123+offset0))
{
	vR[i] = 4123;
}
else
{
	vR[i] = 4122;
}

}
else
{
	if(input[i]==(4121+offset0))
{
	vR[i] = 4121;
}
else
{
	vR[i] = 4120;
}

}

}

}
else
{
	if(input[i]>(4115+offset0))
{
	if(input[i]>(4117+offset0))
{
	if(input[i]==(4119+offset0))
{
	vR[i] = 4119;
}
else
{
	vR[i] = 4118;
}

}
else
{
	if(input[i]==(4117+offset0))
{
	vR[i] = 4117;
}
else
{
	vR[i] = 4116;
}

}

}
else
{
	if(input[i]>(4113+offset0))
{
	if(input[i]==(4115+offset0))
{
	vR[i] = 4115;
}
else
{
	vR[i] = 4114;
}

}
else
{
	if(input[i]==(4113+offset0))
{
	vR[i] = 4113;
}
else
{
	vR[i] = 4112;
}

}

}

}

}
else
{
	if(input[i]>(4103+offset0))
{
	if(input[i]>(4107+offset0))
{
	if(input[i]>(4109+offset0))
{
	if(input[i]==(4111+offset0))
{
	vR[i] = 4111;
}
else
{
	vR[i] = 4110;
}

}
else
{
	if(input[i]==(4109+offset0))
{
	vR[i] = 4109;
}
else
{
	vR[i] = 4108;
}

}

}
else
{
	if(input[i]>(4105+offset0))
{
	if(input[i]==(4107+offset0))
{
	vR[i] = 4107;
}
else
{
	vR[i] = 4106;
}

}
else
{
	if(input[i]==(4105+offset0))
{
	vR[i] = 4105;
}
else
{
	vR[i] = 4104;
}

}

}

}
else
{
	if(input[i]>(4099+offset0))
{
	if(input[i]>(4101+offset0))
{
	if(input[i]==(4103+offset0))
{
	vR[i] = 4103;
}
else
{
	vR[i] = 4102;
}

}
else
{
	if(input[i]==(4101+offset0))
{
	vR[i] = 4101;
}
else
{
	vR[i] = 4100;
}

}

}
else
{
	if(input[i]>(4097+offset0))
{
	if(input[i]==(4099+offset0))
{
	vR[i] = 4099;
}
else
{
	vR[i] = 4098;
}

}
else
{
	if(input[i]==(4097+offset0))
{
	vR[i] = 4097;
}
else
{
	vR[i] = 4096;
}

}

}

}

}

}

}

}

}

}

}

}

}
else
{
	if(input[i]>(2047+offset0))
{
	if(input[i]>(3071+offset0))
{
	if(input[i]>(3583+offset0))
{
	if(input[i]>(3839+offset0))
{
	if(input[i]>(3967+offset0))
{
	if(input[i]>(4031+offset0))
{
	if(input[i]>(4063+offset0))
{
	if(input[i]>(4079+offset0))
{
	if(input[i]>(4087+offset0))
{
	if(input[i]>(4091+offset0))
{
	if(input[i]>(4093+offset0))
{
	if(input[i]==(4095+offset0))
{
	vR[i] = 4095;
}
else
{
	vR[i] = 4094;
}

}
else
{
	if(input[i]==(4093+offset0))
{
	vR[i] = 4093;
}
else
{
	vR[i] = 4092;
}

}

}
else
{
	if(input[i]>(4089+offset0))
{
	if(input[i]==(4091+offset0))
{
	vR[i] = 4091;
}
else
{
	vR[i] = 4090;
}

}
else
{
	if(input[i]==(4089+offset0))
{
	vR[i] = 4089;
}
else
{
	vR[i] = 4088;
}

}

}

}
else
{
	if(input[i]>(4083+offset0))
{
	if(input[i]>(4085+offset0))
{
	if(input[i]==(4087+offset0))
{
	vR[i] = 4087;
}
else
{
	vR[i] = 4086;
}

}
else
{
	if(input[i]==(4085+offset0))
{
	vR[i] = 4085;
}
else
{
	vR[i] = 4084;
}

}

}
else
{
	if(input[i]>(4081+offset0))
{
	if(input[i]==(4083+offset0))
{
	vR[i] = 4083;
}
else
{
	vR[i] = 4082;
}

}
else
{
	if(input[i]==(4081+offset0))
{
	vR[i] = 4081;
}
else
{
	vR[i] = 4080;
}

}

}

}

}
else
{
	if(input[i]>(4071+offset0))
{
	if(input[i]>(4075+offset0))
{
	if(input[i]>(4077+offset0))
{
	if(input[i]==(4079+offset0))
{
	vR[i] = 4079;
}
else
{
	vR[i] = 4078;
}

}
else
{
	if(input[i]==(4077+offset0))
{
	vR[i] = 4077;
}
else
{
	vR[i] = 4076;
}

}

}
else
{
	if(input[i]>(4073+offset0))
{
	if(input[i]==(4075+offset0))
{
	vR[i] = 4075;
}
else
{
	vR[i] = 4074;
}

}
else
{
	if(input[i]==(4073+offset0))
{
	vR[i] = 4073;
}
else
{
	vR[i] = 4072;
}

}

}

}
else
{
	if(input[i]>(4067+offset0))
{
	if(input[i]>(4069+offset0))
{
	if(input[i]==(4071+offset0))
{
	vR[i] = 4071;
}
else
{
	vR[i] = 4070;
}

}
else
{
	if(input[i]==(4069+offset0))
{
	vR[i] = 4069;
}
else
{
	vR[i] = 4068;
}

}

}
else
{
	if(input[i]>(4065+offset0))
{
	if(input[i]==(4067+offset0))
{
	vR[i] = 4067;
}
else
{
	vR[i] = 4066;
}

}
else
{
	if(input[i]==(4065+offset0))
{
	vR[i] = 4065;
}
else
{
	vR[i] = 4064;
}

}

}

}

}

}
else
{
	if(input[i]>(4047+offset0))
{
	if(input[i]>(4055+offset0))
{
	if(input[i]>(4059+offset0))
{
	if(input[i]>(4061+offset0))
{
	if(input[i]==(4063+offset0))
{
	vR[i] = 4063;
}
else
{
	vR[i] = 4062;
}

}
else
{
	if(input[i]==(4061+offset0))
{
	vR[i] = 4061;
}
else
{
	vR[i] = 4060;
}

}

}
else
{
	if(input[i]>(4057+offset0))
{
	if(input[i]==(4059+offset0))
{
	vR[i] = 4059;
}
else
{
	vR[i] = 4058;
}

}
else
{
	if(input[i]==(4057+offset0))
{
	vR[i] = 4057;
}
else
{
	vR[i] = 4056;
}

}

}

}
else
{
	if(input[i]>(4051+offset0))
{
	if(input[i]>(4053+offset0))
{
	if(input[i]==(4055+offset0))
{
	vR[i] = 4055;
}
else
{
	vR[i] = 4054;
}

}
else
{
	if(input[i]==(4053+offset0))
{
	vR[i] = 4053;
}
else
{
	vR[i] = 4052;
}

}

}
else
{
	if(input[i]>(4049+offset0))
{
	if(input[i]==(4051+offset0))
{
	vR[i] = 4051;
}
else
{
	vR[i] = 4050;
}

}
else
{
	if(input[i]==(4049+offset0))
{
	vR[i] = 4049;
}
else
{
	vR[i] = 4048;
}

}

}

}

}
else
{
	if(input[i]>(4039+offset0))
{
	if(input[i]>(4043+offset0))
{
	if(input[i]>(4045+offset0))
{
	if(input[i]==(4047+offset0))
{
	vR[i] = 4047;
}
else
{
	vR[i] = 4046;
}

}
else
{
	if(input[i]==(4045+offset0))
{
	vR[i] = 4045;
}
else
{
	vR[i] = 4044;
}

}

}
else
{
	if(input[i]>(4041+offset0))
{
	if(input[i]==(4043+offset0))
{
	vR[i] = 4043;
}
else
{
	vR[i] = 4042;
}

}
else
{
	if(input[i]==(4041+offset0))
{
	vR[i] = 4041;
}
else
{
	vR[i] = 4040;
}

}

}

}
else
{
	if(input[i]>(4035+offset0))
{
	if(input[i]>(4037+offset0))
{
	if(input[i]==(4039+offset0))
{
	vR[i] = 4039;
}
else
{
	vR[i] = 4038;
}

}
else
{
	if(input[i]==(4037+offset0))
{
	vR[i] = 4037;
}
else
{
	vR[i] = 4036;
}

}

}
else
{
	if(input[i]>(4033+offset0))
{
	if(input[i]==(4035+offset0))
{
	vR[i] = 4035;
}
else
{
	vR[i] = 4034;
}

}
else
{
	if(input[i]==(4033+offset0))
{
	vR[i] = 4033;
}
else
{
	vR[i] = 4032;
}

}

}

}

}

}

}
else
{
	if(input[i]>(3999+offset0))
{
	if(input[i]>(4015+offset0))
{
	if(input[i]>(4023+offset0))
{
	if(input[i]>(4027+offset0))
{
	if(input[i]>(4029+offset0))
{
	if(input[i]==(4031+offset0))
{
	vR[i] = 4031;
}
else
{
	vR[i] = 4030;
}

}
else
{
	if(input[i]==(4029+offset0))
{
	vR[i] = 4029;
}
else
{
	vR[i] = 4028;
}

}

}
else
{
	if(input[i]>(4025+offset0))
{
	if(input[i]==(4027+offset0))
{
	vR[i] = 4027;
}
else
{
	vR[i] = 4026;
}

}
else
{
	if(input[i]==(4025+offset0))
{
	vR[i] = 4025;
}
else
{
	vR[i] = 4024;
}

}

}

}
else
{
	if(input[i]>(4019+offset0))
{
	if(input[i]>(4021+offset0))
{
	if(input[i]==(4023+offset0))
{
	vR[i] = 4023;
}
else
{
	vR[i] = 4022;
}

}
else
{
	if(input[i]==(4021+offset0))
{
	vR[i] = 4021;
}
else
{
	vR[i] = 4020;
}

}

}
else
{
	if(input[i]>(4017+offset0))
{
	if(input[i]==(4019+offset0))
{
	vR[i] = 4019;
}
else
{
	vR[i] = 4018;
}

}
else
{
	if(input[i]==(4017+offset0))
{
	vR[i] = 4017;
}
else
{
	vR[i] = 4016;
}

}

}

}

}
else
{
	if(input[i]>(4007+offset0))
{
	if(input[i]>(4011+offset0))
{
	if(input[i]>(4013+offset0))
{
	if(input[i]==(4015+offset0))
{
	vR[i] = 4015;
}
else
{
	vR[i] = 4014;
}

}
else
{
	if(input[i]==(4013+offset0))
{
	vR[i] = 4013;
}
else
{
	vR[i] = 4012;
}

}

}
else
{
	if(input[i]>(4009+offset0))
{
	if(input[i]==(4011+offset0))
{
	vR[i] = 4011;
}
else
{
	vR[i] = 4010;
}

}
else
{
	if(input[i]==(4009+offset0))
{
	vR[i] = 4009;
}
else
{
	vR[i] = 4008;
}

}

}

}
else
{
	if(input[i]>(4003+offset0))
{
	if(input[i]>(4005+offset0))
{
	if(input[i]==(4007+offset0))
{
	vR[i] = 4007;
}
else
{
	vR[i] = 4006;
}

}
else
{
	if(input[i]==(4005+offset0))
{
	vR[i] = 4005;
}
else
{
	vR[i] = 4004;
}

}

}
else
{
	if(input[i]>(4001+offset0))
{
	if(input[i]==(4003+offset0))
{
	vR[i] = 4003;
}
else
{
	vR[i] = 4002;
}

}
else
{
	if(input[i]==(4001+offset0))
{
	vR[i] = 4001;
}
else
{
	vR[i] = 4000;
}

}

}

}

}

}
else
{
	if(input[i]>(3983+offset0))
{
	if(input[i]>(3991+offset0))
{
	if(input[i]>(3995+offset0))
{
	if(input[i]>(3997+offset0))
{
	if(input[i]==(3999+offset0))
{
	vR[i] = 3999;
}
else
{
	vR[i] = 3998;
}

}
else
{
	if(input[i]==(3997+offset0))
{
	vR[i] = 3997;
}
else
{
	vR[i] = 3996;
}

}

}
else
{
	if(input[i]>(3993+offset0))
{
	if(input[i]==(3995+offset0))
{
	vR[i] = 3995;
}
else
{
	vR[i] = 3994;
}

}
else
{
	if(input[i]==(3993+offset0))
{
	vR[i] = 3993;
}
else
{
	vR[i] = 3992;
}

}

}

}
else
{
	if(input[i]>(3987+offset0))
{
	if(input[i]>(3989+offset0))
{
	if(input[i]==(3991+offset0))
{
	vR[i] = 3991;
}
else
{
	vR[i] = 3990;
}

}
else
{
	if(input[i]==(3989+offset0))
{
	vR[i] = 3989;
}
else
{
	vR[i] = 3988;
}

}

}
else
{
	if(input[i]>(3985+offset0))
{
	if(input[i]==(3987+offset0))
{
	vR[i] = 3987;
}
else
{
	vR[i] = 3986;
}

}
else
{
	if(input[i]==(3985+offset0))
{
	vR[i] = 3985;
}
else
{
	vR[i] = 3984;
}

}

}

}

}
else
{
	if(input[i]>(3975+offset0))
{
	if(input[i]>(3979+offset0))
{
	if(input[i]>(3981+offset0))
{
	if(input[i]==(3983+offset0))
{
	vR[i] = 3983;
}
else
{
	vR[i] = 3982;
}

}
else
{
	if(input[i]==(3981+offset0))
{
	vR[i] = 3981;
}
else
{
	vR[i] = 3980;
}

}

}
else
{
	if(input[i]>(3977+offset0))
{
	if(input[i]==(3979+offset0))
{
	vR[i] = 3979;
}
else
{
	vR[i] = 3978;
}

}
else
{
	if(input[i]==(3977+offset0))
{
	vR[i] = 3977;
}
else
{
	vR[i] = 3976;
}

}

}

}
else
{
	if(input[i]>(3971+offset0))
{
	if(input[i]>(3973+offset0))
{
	if(input[i]==(3975+offset0))
{
	vR[i] = 3975;
}
else
{
	vR[i] = 3974;
}

}
else
{
	if(input[i]==(3973+offset0))
{
	vR[i] = 3973;
}
else
{
	vR[i] = 3972;
}

}

}
else
{
	if(input[i]>(3969+offset0))
{
	if(input[i]==(3971+offset0))
{
	vR[i] = 3971;
}
else
{
	vR[i] = 3970;
}

}
else
{
	if(input[i]==(3969+offset0))
{
	vR[i] = 3969;
}
else
{
	vR[i] = 3968;
}

}

}

}

}

}

}

}
else
{
	if(input[i]>(3903+offset0))
{
	if(input[i]>(3935+offset0))
{
	if(input[i]>(3951+offset0))
{
	if(input[i]>(3959+offset0))
{
	if(input[i]>(3963+offset0))
{
	if(input[i]>(3965+offset0))
{
	if(input[i]==(3967+offset0))
{
	vR[i] = 3967;
}
else
{
	vR[i] = 3966;
}

}
else
{
	if(input[i]==(3965+offset0))
{
	vR[i] = 3965;
}
else
{
	vR[i] = 3964;
}

}

}
else
{
	if(input[i]>(3961+offset0))
{
	if(input[i]==(3963+offset0))
{
	vR[i] = 3963;
}
else
{
	vR[i] = 3962;
}

}
else
{
	if(input[i]==(3961+offset0))
{
	vR[i] = 3961;
}
else
{
	vR[i] = 3960;
}

}

}

}
else
{
	if(input[i]>(3955+offset0))
{
	if(input[i]>(3957+offset0))
{
	if(input[i]==(3959+offset0))
{
	vR[i] = 3959;
}
else
{
	vR[i] = 3958;
}

}
else
{
	if(input[i]==(3957+offset0))
{
	vR[i] = 3957;
}
else
{
	vR[i] = 3956;
}

}

}
else
{
	if(input[i]>(3953+offset0))
{
	if(input[i]==(3955+offset0))
{
	vR[i] = 3955;
}
else
{
	vR[i] = 3954;
}

}
else
{
	if(input[i]==(3953+offset0))
{
	vR[i] = 3953;
}
else
{
	vR[i] = 3952;
}

}

}

}

}
else
{
	if(input[i]>(3943+offset0))
{
	if(input[i]>(3947+offset0))
{
	if(input[i]>(3949+offset0))
{
	if(input[i]==(3951+offset0))
{
	vR[i] = 3951;
}
else
{
	vR[i] = 3950;
}

}
else
{
	if(input[i]==(3949+offset0))
{
	vR[i] = 3949;
}
else
{
	vR[i] = 3948;
}

}

}
else
{
	if(input[i]>(3945+offset0))
{
	if(input[i]==(3947+offset0))
{
	vR[i] = 3947;
}
else
{
	vR[i] = 3946;
}

}
else
{
	if(input[i]==(3945+offset0))
{
	vR[i] = 3945;
}
else
{
	vR[i] = 3944;
}

}

}

}
else
{
	if(input[i]>(3939+offset0))
{
	if(input[i]>(3941+offset0))
{
	if(input[i]==(3943+offset0))
{
	vR[i] = 3943;
}
else
{
	vR[i] = 3942;
}

}
else
{
	if(input[i]==(3941+offset0))
{
	vR[i] = 3941;
}
else
{
	vR[i] = 3940;
}

}

}
else
{
	if(input[i]>(3937+offset0))
{
	if(input[i]==(3939+offset0))
{
	vR[i] = 3939;
}
else
{
	vR[i] = 3938;
}

}
else
{
	if(input[i]==(3937+offset0))
{
	vR[i] = 3937;
}
else
{
	vR[i] = 3936;
}

}

}

}

}

}
else
{
	if(input[i]>(3919+offset0))
{
	if(input[i]>(3927+offset0))
{
	if(input[i]>(3931+offset0))
{
	if(input[i]>(3933+offset0))
{
	if(input[i]==(3935+offset0))
{
	vR[i] = 3935;
}
else
{
	vR[i] = 3934;
}

}
else
{
	if(input[i]==(3933+offset0))
{
	vR[i] = 3933;
}
else
{
	vR[i] = 3932;
}

}

}
else
{
	if(input[i]>(3929+offset0))
{
	if(input[i]==(3931+offset0))
{
	vR[i] = 3931;
}
else
{
	vR[i] = 3930;
}

}
else
{
	if(input[i]==(3929+offset0))
{
	vR[i] = 3929;
}
else
{
	vR[i] = 3928;
}

}

}

}
else
{
	if(input[i]>(3923+offset0))
{
	if(input[i]>(3925+offset0))
{
	if(input[i]==(3927+offset0))
{
	vR[i] = 3927;
}
else
{
	vR[i] = 3926;
}

}
else
{
	if(input[i]==(3925+offset0))
{
	vR[i] = 3925;
}
else
{
	vR[i] = 3924;
}

}

}
else
{
	if(input[i]>(3921+offset0))
{
	if(input[i]==(3923+offset0))
{
	vR[i] = 3923;
}
else
{
	vR[i] = 3922;
}

}
else
{
	if(input[i]==(3921+offset0))
{
	vR[i] = 3921;
}
else
{
	vR[i] = 3920;
}

}

}

}

}
else
{
	if(input[i]>(3911+offset0))
{
	if(input[i]>(3915+offset0))
{
	if(input[i]>(3917+offset0))
{
	if(input[i]==(3919+offset0))
{
	vR[i] = 3919;
}
else
{
	vR[i] = 3918;
}

}
else
{
	if(input[i]==(3917+offset0))
{
	vR[i] = 3917;
}
else
{
	vR[i] = 3916;
}

}

}
else
{
	if(input[i]>(3913+offset0))
{
	if(input[i]==(3915+offset0))
{
	vR[i] = 3915;
}
else
{
	vR[i] = 3914;
}

}
else
{
	if(input[i]==(3913+offset0))
{
	vR[i] = 3913;
}
else
{
	vR[i] = 3912;
}

}

}

}
else
{
	if(input[i]>(3907+offset0))
{
	if(input[i]>(3909+offset0))
{
	if(input[i]==(3911+offset0))
{
	vR[i] = 3911;
}
else
{
	vR[i] = 3910;
}

}
else
{
	if(input[i]==(3909+offset0))
{
	vR[i] = 3909;
}
else
{
	vR[i] = 3908;
}

}

}
else
{
	if(input[i]>(3905+offset0))
{
	if(input[i]==(3907+offset0))
{
	vR[i] = 3907;
}
else
{
	vR[i] = 3906;
}

}
else
{
	if(input[i]==(3905+offset0))
{
	vR[i] = 3905;
}
else
{
	vR[i] = 3904;
}

}

}

}

}

}

}
else
{
	if(input[i]>(3871+offset0))
{
	if(input[i]>(3887+offset0))
{
	if(input[i]>(3895+offset0))
{
	if(input[i]>(3899+offset0))
{
	if(input[i]>(3901+offset0))
{
	if(input[i]==(3903+offset0))
{
	vR[i] = 3903;
}
else
{
	vR[i] = 3902;
}

}
else
{
	if(input[i]==(3901+offset0))
{
	vR[i] = 3901;
}
else
{
	vR[i] = 3900;
}

}

}
else
{
	if(input[i]>(3897+offset0))
{
	if(input[i]==(3899+offset0))
{
	vR[i] = 3899;
}
else
{
	vR[i] = 3898;
}

}
else
{
	if(input[i]==(3897+offset0))
{
	vR[i] = 3897;
}
else
{
	vR[i] = 3896;
}

}

}

}
else
{
	if(input[i]>(3891+offset0))
{
	if(input[i]>(3893+offset0))
{
	if(input[i]==(3895+offset0))
{
	vR[i] = 3895;
}
else
{
	vR[i] = 3894;
}

}
else
{
	if(input[i]==(3893+offset0))
{
	vR[i] = 3893;
}
else
{
	vR[i] = 3892;
}

}

}
else
{
	if(input[i]>(3889+offset0))
{
	if(input[i]==(3891+offset0))
{
	vR[i] = 3891;
}
else
{
	vR[i] = 3890;
}

}
else
{
	if(input[i]==(3889+offset0))
{
	vR[i] = 3889;
}
else
{
	vR[i] = 3888;
}

}

}

}

}
else
{
	if(input[i]>(3879+offset0))
{
	if(input[i]>(3883+offset0))
{
	if(input[i]>(3885+offset0))
{
	if(input[i]==(3887+offset0))
{
	vR[i] = 3887;
}
else
{
	vR[i] = 3886;
}

}
else
{
	if(input[i]==(3885+offset0))
{
	vR[i] = 3885;
}
else
{
	vR[i] = 3884;
}

}

}
else
{
	if(input[i]>(3881+offset0))
{
	if(input[i]==(3883+offset0))
{
	vR[i] = 3883;
}
else
{
	vR[i] = 3882;
}

}
else
{
	if(input[i]==(3881+offset0))
{
	vR[i] = 3881;
}
else
{
	vR[i] = 3880;
}

}

}

}
else
{
	if(input[i]>(3875+offset0))
{
	if(input[i]>(3877+offset0))
{
	if(input[i]==(3879+offset0))
{
	vR[i] = 3879;
}
else
{
	vR[i] = 3878;
}

}
else
{
	if(input[i]==(3877+offset0))
{
	vR[i] = 3877;
}
else
{
	vR[i] = 3876;
}

}

}
else
{
	if(input[i]>(3873+offset0))
{
	if(input[i]==(3875+offset0))
{
	vR[i] = 3875;
}
else
{
	vR[i] = 3874;
}

}
else
{
	if(input[i]==(3873+offset0))
{
	vR[i] = 3873;
}
else
{
	vR[i] = 3872;
}

}

}

}

}

}
else
{
	if(input[i]>(3855+offset0))
{
	if(input[i]>(3863+offset0))
{
	if(input[i]>(3867+offset0))
{
	if(input[i]>(3869+offset0))
{
	if(input[i]==(3871+offset0))
{
	vR[i] = 3871;
}
else
{
	vR[i] = 3870;
}

}
else
{
	if(input[i]==(3869+offset0))
{
	vR[i] = 3869;
}
else
{
	vR[i] = 3868;
}

}

}
else
{
	if(input[i]>(3865+offset0))
{
	if(input[i]==(3867+offset0))
{
	vR[i] = 3867;
}
else
{
	vR[i] = 3866;
}

}
else
{
	if(input[i]==(3865+offset0))
{
	vR[i] = 3865;
}
else
{
	vR[i] = 3864;
}

}

}

}
else
{
	if(input[i]>(3859+offset0))
{
	if(input[i]>(3861+offset0))
{
	if(input[i]==(3863+offset0))
{
	vR[i] = 3863;
}
else
{
	vR[i] = 3862;
}

}
else
{
	if(input[i]==(3861+offset0))
{
	vR[i] = 3861;
}
else
{
	vR[i] = 3860;
}

}

}
else
{
	if(input[i]>(3857+offset0))
{
	if(input[i]==(3859+offset0))
{
	vR[i] = 3859;
}
else
{
	vR[i] = 3858;
}

}
else
{
	if(input[i]==(3857+offset0))
{
	vR[i] = 3857;
}
else
{
	vR[i] = 3856;
}

}

}

}

}
else
{
	if(input[i]>(3847+offset0))
{
	if(input[i]>(3851+offset0))
{
	if(input[i]>(3853+offset0))
{
	if(input[i]==(3855+offset0))
{
	vR[i] = 3855;
}
else
{
	vR[i] = 3854;
}

}
else
{
	if(input[i]==(3853+offset0))
{
	vR[i] = 3853;
}
else
{
	vR[i] = 3852;
}

}

}
else
{
	if(input[i]>(3849+offset0))
{
	if(input[i]==(3851+offset0))
{
	vR[i] = 3851;
}
else
{
	vR[i] = 3850;
}

}
else
{
	if(input[i]==(3849+offset0))
{
	vR[i] = 3849;
}
else
{
	vR[i] = 3848;
}

}

}

}
else
{
	if(input[i]>(3843+offset0))
{
	if(input[i]>(3845+offset0))
{
	if(input[i]==(3847+offset0))
{
	vR[i] = 3847;
}
else
{
	vR[i] = 3846;
}

}
else
{
	if(input[i]==(3845+offset0))
{
	vR[i] = 3845;
}
else
{
	vR[i] = 3844;
}

}

}
else
{
	if(input[i]>(3841+offset0))
{
	if(input[i]==(3843+offset0))
{
	vR[i] = 3843;
}
else
{
	vR[i] = 3842;
}

}
else
{
	if(input[i]==(3841+offset0))
{
	vR[i] = 3841;
}
else
{
	vR[i] = 3840;
}

}

}

}

}

}

}

}

}
else
{
	if(input[i]>(3711+offset0))
{
	if(input[i]>(3775+offset0))
{
	if(input[i]>(3807+offset0))
{
	if(input[i]>(3823+offset0))
{
	if(input[i]>(3831+offset0))
{
	if(input[i]>(3835+offset0))
{
	if(input[i]>(3837+offset0))
{
	if(input[i]==(3839+offset0))
{
	vR[i] = 3839;
}
else
{
	vR[i] = 3838;
}

}
else
{
	if(input[i]==(3837+offset0))
{
	vR[i] = 3837;
}
else
{
	vR[i] = 3836;
}

}

}
else
{
	if(input[i]>(3833+offset0))
{
	if(input[i]==(3835+offset0))
{
	vR[i] = 3835;
}
else
{
	vR[i] = 3834;
}

}
else
{
	if(input[i]==(3833+offset0))
{
	vR[i] = 3833;
}
else
{
	vR[i] = 3832;
}

}

}

}
else
{
	if(input[i]>(3827+offset0))
{
	if(input[i]>(3829+offset0))
{
	if(input[i]==(3831+offset0))
{
	vR[i] = 3831;
}
else
{
	vR[i] = 3830;
}

}
else
{
	if(input[i]==(3829+offset0))
{
	vR[i] = 3829;
}
else
{
	vR[i] = 3828;
}

}

}
else
{
	if(input[i]>(3825+offset0))
{
	if(input[i]==(3827+offset0))
{
	vR[i] = 3827;
}
else
{
	vR[i] = 3826;
}

}
else
{
	if(input[i]==(3825+offset0))
{
	vR[i] = 3825;
}
else
{
	vR[i] = 3824;
}

}

}

}

}
else
{
	if(input[i]>(3815+offset0))
{
	if(input[i]>(3819+offset0))
{
	if(input[i]>(3821+offset0))
{
	if(input[i]==(3823+offset0))
{
	vR[i] = 3823;
}
else
{
	vR[i] = 3822;
}

}
else
{
	if(input[i]==(3821+offset0))
{
	vR[i] = 3821;
}
else
{
	vR[i] = 3820;
}

}

}
else
{
	if(input[i]>(3817+offset0))
{
	if(input[i]==(3819+offset0))
{
	vR[i] = 3819;
}
else
{
	vR[i] = 3818;
}

}
else
{
	if(input[i]==(3817+offset0))
{
	vR[i] = 3817;
}
else
{
	vR[i] = 3816;
}

}

}

}
else
{
	if(input[i]>(3811+offset0))
{
	if(input[i]>(3813+offset0))
{
	if(input[i]==(3815+offset0))
{
	vR[i] = 3815;
}
else
{
	vR[i] = 3814;
}

}
else
{
	if(input[i]==(3813+offset0))
{
	vR[i] = 3813;
}
else
{
	vR[i] = 3812;
}

}

}
else
{
	if(input[i]>(3809+offset0))
{
	if(input[i]==(3811+offset0))
{
	vR[i] = 3811;
}
else
{
	vR[i] = 3810;
}

}
else
{
	if(input[i]==(3809+offset0))
{
	vR[i] = 3809;
}
else
{
	vR[i] = 3808;
}

}

}

}

}

}
else
{
	if(input[i]>(3791+offset0))
{
	if(input[i]>(3799+offset0))
{
	if(input[i]>(3803+offset0))
{
	if(input[i]>(3805+offset0))
{
	if(input[i]==(3807+offset0))
{
	vR[i] = 3807;
}
else
{
	vR[i] = 3806;
}

}
else
{
	if(input[i]==(3805+offset0))
{
	vR[i] = 3805;
}
else
{
	vR[i] = 3804;
}

}

}
else
{
	if(input[i]>(3801+offset0))
{
	if(input[i]==(3803+offset0))
{
	vR[i] = 3803;
}
else
{
	vR[i] = 3802;
}

}
else
{
	if(input[i]==(3801+offset0))
{
	vR[i] = 3801;
}
else
{
	vR[i] = 3800;
}

}

}

}
else
{
	if(input[i]>(3795+offset0))
{
	if(input[i]>(3797+offset0))
{
	if(input[i]==(3799+offset0))
{
	vR[i] = 3799;
}
else
{
	vR[i] = 3798;
}

}
else
{
	if(input[i]==(3797+offset0))
{
	vR[i] = 3797;
}
else
{
	vR[i] = 3796;
}

}

}
else
{
	if(input[i]>(3793+offset0))
{
	if(input[i]==(3795+offset0))
{
	vR[i] = 3795;
}
else
{
	vR[i] = 3794;
}

}
else
{
	if(input[i]==(3793+offset0))
{
	vR[i] = 3793;
}
else
{
	vR[i] = 3792;
}

}

}

}

}
else
{
	if(input[i]>(3783+offset0))
{
	if(input[i]>(3787+offset0))
{
	if(input[i]>(3789+offset0))
{
	if(input[i]==(3791+offset0))
{
	vR[i] = 3791;
}
else
{
	vR[i] = 3790;
}

}
else
{
	if(input[i]==(3789+offset0))
{
	vR[i] = 3789;
}
else
{
	vR[i] = 3788;
}

}

}
else
{
	if(input[i]>(3785+offset0))
{
	if(input[i]==(3787+offset0))
{
	vR[i] = 3787;
}
else
{
	vR[i] = 3786;
}

}
else
{
	if(input[i]==(3785+offset0))
{
	vR[i] = 3785;
}
else
{
	vR[i] = 3784;
}

}

}

}
else
{
	if(input[i]>(3779+offset0))
{
	if(input[i]>(3781+offset0))
{
	if(input[i]==(3783+offset0))
{
	vR[i] = 3783;
}
else
{
	vR[i] = 3782;
}

}
else
{
	if(input[i]==(3781+offset0))
{
	vR[i] = 3781;
}
else
{
	vR[i] = 3780;
}

}

}
else
{
	if(input[i]>(3777+offset0))
{
	if(input[i]==(3779+offset0))
{
	vR[i] = 3779;
}
else
{
	vR[i] = 3778;
}

}
else
{
	if(input[i]==(3777+offset0))
{
	vR[i] = 3777;
}
else
{
	vR[i] = 3776;
}

}

}

}

}

}

}
else
{
	if(input[i]>(3743+offset0))
{
	if(input[i]>(3759+offset0))
{
	if(input[i]>(3767+offset0))
{
	if(input[i]>(3771+offset0))
{
	if(input[i]>(3773+offset0))
{
	if(input[i]==(3775+offset0))
{
	vR[i] = 3775;
}
else
{
	vR[i] = 3774;
}

}
else
{
	if(input[i]==(3773+offset0))
{
	vR[i] = 3773;
}
else
{
	vR[i] = 3772;
}

}

}
else
{
	if(input[i]>(3769+offset0))
{
	if(input[i]==(3771+offset0))
{
	vR[i] = 3771;
}
else
{
	vR[i] = 3770;
}

}
else
{
	if(input[i]==(3769+offset0))
{
	vR[i] = 3769;
}
else
{
	vR[i] = 3768;
}

}

}

}
else
{
	if(input[i]>(3763+offset0))
{
	if(input[i]>(3765+offset0))
{
	if(input[i]==(3767+offset0))
{
	vR[i] = 3767;
}
else
{
	vR[i] = 3766;
}

}
else
{
	if(input[i]==(3765+offset0))
{
	vR[i] = 3765;
}
else
{
	vR[i] = 3764;
}

}

}
else
{
	if(input[i]>(3761+offset0))
{
	if(input[i]==(3763+offset0))
{
	vR[i] = 3763;
}
else
{
	vR[i] = 3762;
}

}
else
{
	if(input[i]==(3761+offset0))
{
	vR[i] = 3761;
}
else
{
	vR[i] = 3760;
}

}

}

}

}
else
{
	if(input[i]>(3751+offset0))
{
	if(input[i]>(3755+offset0))
{
	if(input[i]>(3757+offset0))
{
	if(input[i]==(3759+offset0))
{
	vR[i] = 3759;
}
else
{
	vR[i] = 3758;
}

}
else
{
	if(input[i]==(3757+offset0))
{
	vR[i] = 3757;
}
else
{
	vR[i] = 3756;
}

}

}
else
{
	if(input[i]>(3753+offset0))
{
	if(input[i]==(3755+offset0))
{
	vR[i] = 3755;
}
else
{
	vR[i] = 3754;
}

}
else
{
	if(input[i]==(3753+offset0))
{
	vR[i] = 3753;
}
else
{
	vR[i] = 3752;
}

}

}

}
else
{
	if(input[i]>(3747+offset0))
{
	if(input[i]>(3749+offset0))
{
	if(input[i]==(3751+offset0))
{
	vR[i] = 3751;
}
else
{
	vR[i] = 3750;
}

}
else
{
	if(input[i]==(3749+offset0))
{
	vR[i] = 3749;
}
else
{
	vR[i] = 3748;
}

}

}
else
{
	if(input[i]>(3745+offset0))
{
	if(input[i]==(3747+offset0))
{
	vR[i] = 3747;
}
else
{
	vR[i] = 3746;
}

}
else
{
	if(input[i]==(3745+offset0))
{
	vR[i] = 3745;
}
else
{
	vR[i] = 3744;
}

}

}

}

}

}
else
{
	if(input[i]>(3727+offset0))
{
	if(input[i]>(3735+offset0))
{
	if(input[i]>(3739+offset0))
{
	if(input[i]>(3741+offset0))
{
	if(input[i]==(3743+offset0))
{
	vR[i] = 3743;
}
else
{
	vR[i] = 3742;
}

}
else
{
	if(input[i]==(3741+offset0))
{
	vR[i] = 3741;
}
else
{
	vR[i] = 3740;
}

}

}
else
{
	if(input[i]>(3737+offset0))
{
	if(input[i]==(3739+offset0))
{
	vR[i] = 3739;
}
else
{
	vR[i] = 3738;
}

}
else
{
	if(input[i]==(3737+offset0))
{
	vR[i] = 3737;
}
else
{
	vR[i] = 3736;
}

}

}

}
else
{
	if(input[i]>(3731+offset0))
{
	if(input[i]>(3733+offset0))
{
	if(input[i]==(3735+offset0))
{
	vR[i] = 3735;
}
else
{
	vR[i] = 3734;
}

}
else
{
	if(input[i]==(3733+offset0))
{
	vR[i] = 3733;
}
else
{
	vR[i] = 3732;
}

}

}
else
{
	if(input[i]>(3729+offset0))
{
	if(input[i]==(3731+offset0))
{
	vR[i] = 3731;
}
else
{
	vR[i] = 3730;
}

}
else
{
	if(input[i]==(3729+offset0))
{
	vR[i] = 3729;
}
else
{
	vR[i] = 3728;
}

}

}

}

}
else
{
	if(input[i]>(3719+offset0))
{
	if(input[i]>(3723+offset0))
{
	if(input[i]>(3725+offset0))
{
	if(input[i]==(3727+offset0))
{
	vR[i] = 3727;
}
else
{
	vR[i] = 3726;
}

}
else
{
	if(input[i]==(3725+offset0))
{
	vR[i] = 3725;
}
else
{
	vR[i] = 3724;
}

}

}
else
{
	if(input[i]>(3721+offset0))
{
	if(input[i]==(3723+offset0))
{
	vR[i] = 3723;
}
else
{
	vR[i] = 3722;
}

}
else
{
	if(input[i]==(3721+offset0))
{
	vR[i] = 3721;
}
else
{
	vR[i] = 3720;
}

}

}

}
else
{
	if(input[i]>(3715+offset0))
{
	if(input[i]>(3717+offset0))
{
	if(input[i]==(3719+offset0))
{
	vR[i] = 3719;
}
else
{
	vR[i] = 3718;
}

}
else
{
	if(input[i]==(3717+offset0))
{
	vR[i] = 3717;
}
else
{
	vR[i] = 3716;
}

}

}
else
{
	if(input[i]>(3713+offset0))
{
	if(input[i]==(3715+offset0))
{
	vR[i] = 3715;
}
else
{
	vR[i] = 3714;
}

}
else
{
	if(input[i]==(3713+offset0))
{
	vR[i] = 3713;
}
else
{
	vR[i] = 3712;
}

}

}

}

}

}

}

}
else
{
	if(input[i]>(3647+offset0))
{
	if(input[i]>(3679+offset0))
{
	if(input[i]>(3695+offset0))
{
	if(input[i]>(3703+offset0))
{
	if(input[i]>(3707+offset0))
{
	if(input[i]>(3709+offset0))
{
	if(input[i]==(3711+offset0))
{
	vR[i] = 3711;
}
else
{
	vR[i] = 3710;
}

}
else
{
	if(input[i]==(3709+offset0))
{
	vR[i] = 3709;
}
else
{
	vR[i] = 3708;
}

}

}
else
{
	if(input[i]>(3705+offset0))
{
	if(input[i]==(3707+offset0))
{
	vR[i] = 3707;
}
else
{
	vR[i] = 3706;
}

}
else
{
	if(input[i]==(3705+offset0))
{
	vR[i] = 3705;
}
else
{
	vR[i] = 3704;
}

}

}

}
else
{
	if(input[i]>(3699+offset0))
{
	if(input[i]>(3701+offset0))
{
	if(input[i]==(3703+offset0))
{
	vR[i] = 3703;
}
else
{
	vR[i] = 3702;
}

}
else
{
	if(input[i]==(3701+offset0))
{
	vR[i] = 3701;
}
else
{
	vR[i] = 3700;
}

}

}
else
{
	if(input[i]>(3697+offset0))
{
	if(input[i]==(3699+offset0))
{
	vR[i] = 3699;
}
else
{
	vR[i] = 3698;
}

}
else
{
	if(input[i]==(3697+offset0))
{
	vR[i] = 3697;
}
else
{
	vR[i] = 3696;
}

}

}

}

}
else
{
	if(input[i]>(3687+offset0))
{
	if(input[i]>(3691+offset0))
{
	if(input[i]>(3693+offset0))
{
	if(input[i]==(3695+offset0))
{
	vR[i] = 3695;
}
else
{
	vR[i] = 3694;
}

}
else
{
	if(input[i]==(3693+offset0))
{
	vR[i] = 3693;
}
else
{
	vR[i] = 3692;
}

}

}
else
{
	if(input[i]>(3689+offset0))
{
	if(input[i]==(3691+offset0))
{
	vR[i] = 3691;
}
else
{
	vR[i] = 3690;
}

}
else
{
	if(input[i]==(3689+offset0))
{
	vR[i] = 3689;
}
else
{
	vR[i] = 3688;
}

}

}

}
else
{
	if(input[i]>(3683+offset0))
{
	if(input[i]>(3685+offset0))
{
	if(input[i]==(3687+offset0))
{
	vR[i] = 3687;
}
else
{
	vR[i] = 3686;
}

}
else
{
	if(input[i]==(3685+offset0))
{
	vR[i] = 3685;
}
else
{
	vR[i] = 3684;
}

}

}
else
{
	if(input[i]>(3681+offset0))
{
	if(input[i]==(3683+offset0))
{
	vR[i] = 3683;
}
else
{
	vR[i] = 3682;
}

}
else
{
	if(input[i]==(3681+offset0))
{
	vR[i] = 3681;
}
else
{
	vR[i] = 3680;
}

}

}

}

}

}
else
{
	if(input[i]>(3663+offset0))
{
	if(input[i]>(3671+offset0))
{
	if(input[i]>(3675+offset0))
{
	if(input[i]>(3677+offset0))
{
	if(input[i]==(3679+offset0))
{
	vR[i] = 3679;
}
else
{
	vR[i] = 3678;
}

}
else
{
	if(input[i]==(3677+offset0))
{
	vR[i] = 3677;
}
else
{
	vR[i] = 3676;
}

}

}
else
{
	if(input[i]>(3673+offset0))
{
	if(input[i]==(3675+offset0))
{
	vR[i] = 3675;
}
else
{
	vR[i] = 3674;
}

}
else
{
	if(input[i]==(3673+offset0))
{
	vR[i] = 3673;
}
else
{
	vR[i] = 3672;
}

}

}

}
else
{
	if(input[i]>(3667+offset0))
{
	if(input[i]>(3669+offset0))
{
	if(input[i]==(3671+offset0))
{
	vR[i] = 3671;
}
else
{
	vR[i] = 3670;
}

}
else
{
	if(input[i]==(3669+offset0))
{
	vR[i] = 3669;
}
else
{
	vR[i] = 3668;
}

}

}
else
{
	if(input[i]>(3665+offset0))
{
	if(input[i]==(3667+offset0))
{
	vR[i] = 3667;
}
else
{
	vR[i] = 3666;
}

}
else
{
	if(input[i]==(3665+offset0))
{
	vR[i] = 3665;
}
else
{
	vR[i] = 3664;
}

}

}

}

}
else
{
	if(input[i]>(3655+offset0))
{
	if(input[i]>(3659+offset0))
{
	if(input[i]>(3661+offset0))
{
	if(input[i]==(3663+offset0))
{
	vR[i] = 3663;
}
else
{
	vR[i] = 3662;
}

}
else
{
	if(input[i]==(3661+offset0))
{
	vR[i] = 3661;
}
else
{
	vR[i] = 3660;
}

}

}
else
{
	if(input[i]>(3657+offset0))
{
	if(input[i]==(3659+offset0))
{
	vR[i] = 3659;
}
else
{
	vR[i] = 3658;
}

}
else
{
	if(input[i]==(3657+offset0))
{
	vR[i] = 3657;
}
else
{
	vR[i] = 3656;
}

}

}

}
else
{
	if(input[i]>(3651+offset0))
{
	if(input[i]>(3653+offset0))
{
	if(input[i]==(3655+offset0))
{
	vR[i] = 3655;
}
else
{
	vR[i] = 3654;
}

}
else
{
	if(input[i]==(3653+offset0))
{
	vR[i] = 3653;
}
else
{
	vR[i] = 3652;
}

}

}
else
{
	if(input[i]>(3649+offset0))
{
	if(input[i]==(3651+offset0))
{
	vR[i] = 3651;
}
else
{
	vR[i] = 3650;
}

}
else
{
	if(input[i]==(3649+offset0))
{
	vR[i] = 3649;
}
else
{
	vR[i] = 3648;
}

}

}

}

}

}

}
else
{
	if(input[i]>(3615+offset0))
{
	if(input[i]>(3631+offset0))
{
	if(input[i]>(3639+offset0))
{
	if(input[i]>(3643+offset0))
{
	if(input[i]>(3645+offset0))
{
	if(input[i]==(3647+offset0))
{
	vR[i] = 3647;
}
else
{
	vR[i] = 3646;
}

}
else
{
	if(input[i]==(3645+offset0))
{
	vR[i] = 3645;
}
else
{
	vR[i] = 3644;
}

}

}
else
{
	if(input[i]>(3641+offset0))
{
	if(input[i]==(3643+offset0))
{
	vR[i] = 3643;
}
else
{
	vR[i] = 3642;
}

}
else
{
	if(input[i]==(3641+offset0))
{
	vR[i] = 3641;
}
else
{
	vR[i] = 3640;
}

}

}

}
else
{
	if(input[i]>(3635+offset0))
{
	if(input[i]>(3637+offset0))
{
	if(input[i]==(3639+offset0))
{
	vR[i] = 3639;
}
else
{
	vR[i] = 3638;
}

}
else
{
	if(input[i]==(3637+offset0))
{
	vR[i] = 3637;
}
else
{
	vR[i] = 3636;
}

}

}
else
{
	if(input[i]>(3633+offset0))
{
	if(input[i]==(3635+offset0))
{
	vR[i] = 3635;
}
else
{
	vR[i] = 3634;
}

}
else
{
	if(input[i]==(3633+offset0))
{
	vR[i] = 3633;
}
else
{
	vR[i] = 3632;
}

}

}

}

}
else
{
	if(input[i]>(3623+offset0))
{
	if(input[i]>(3627+offset0))
{
	if(input[i]>(3629+offset0))
{
	if(input[i]==(3631+offset0))
{
	vR[i] = 3631;
}
else
{
	vR[i] = 3630;
}

}
else
{
	if(input[i]==(3629+offset0))
{
	vR[i] = 3629;
}
else
{
	vR[i] = 3628;
}

}

}
else
{
	if(input[i]>(3625+offset0))
{
	if(input[i]==(3627+offset0))
{
	vR[i] = 3627;
}
else
{
	vR[i] = 3626;
}

}
else
{
	if(input[i]==(3625+offset0))
{
	vR[i] = 3625;
}
else
{
	vR[i] = 3624;
}

}

}

}
else
{
	if(input[i]>(3619+offset0))
{
	if(input[i]>(3621+offset0))
{
	if(input[i]==(3623+offset0))
{
	vR[i] = 3623;
}
else
{
	vR[i] = 3622;
}

}
else
{
	if(input[i]==(3621+offset0))
{
	vR[i] = 3621;
}
else
{
	vR[i] = 3620;
}

}

}
else
{
	if(input[i]>(3617+offset0))
{
	if(input[i]==(3619+offset0))
{
	vR[i] = 3619;
}
else
{
	vR[i] = 3618;
}

}
else
{
	if(input[i]==(3617+offset0))
{
	vR[i] = 3617;
}
else
{
	vR[i] = 3616;
}

}

}

}

}

}
else
{
	if(input[i]>(3599+offset0))
{
	if(input[i]>(3607+offset0))
{
	if(input[i]>(3611+offset0))
{
	if(input[i]>(3613+offset0))
{
	if(input[i]==(3615+offset0))
{
	vR[i] = 3615;
}
else
{
	vR[i] = 3614;
}

}
else
{
	if(input[i]==(3613+offset0))
{
	vR[i] = 3613;
}
else
{
	vR[i] = 3612;
}

}

}
else
{
	if(input[i]>(3609+offset0))
{
	if(input[i]==(3611+offset0))
{
	vR[i] = 3611;
}
else
{
	vR[i] = 3610;
}

}
else
{
	if(input[i]==(3609+offset0))
{
	vR[i] = 3609;
}
else
{
	vR[i] = 3608;
}

}

}

}
else
{
	if(input[i]>(3603+offset0))
{
	if(input[i]>(3605+offset0))
{
	if(input[i]==(3607+offset0))
{
	vR[i] = 3607;
}
else
{
	vR[i] = 3606;
}

}
else
{
	if(input[i]==(3605+offset0))
{
	vR[i] = 3605;
}
else
{
	vR[i] = 3604;
}

}

}
else
{
	if(input[i]>(3601+offset0))
{
	if(input[i]==(3603+offset0))
{
	vR[i] = 3603;
}
else
{
	vR[i] = 3602;
}

}
else
{
	if(input[i]==(3601+offset0))
{
	vR[i] = 3601;
}
else
{
	vR[i] = 3600;
}

}

}

}

}
else
{
	if(input[i]>(3591+offset0))
{
	if(input[i]>(3595+offset0))
{
	if(input[i]>(3597+offset0))
{
	if(input[i]==(3599+offset0))
{
	vR[i] = 3599;
}
else
{
	vR[i] = 3598;
}

}
else
{
	if(input[i]==(3597+offset0))
{
	vR[i] = 3597;
}
else
{
	vR[i] = 3596;
}

}

}
else
{
	if(input[i]>(3593+offset0))
{
	if(input[i]==(3595+offset0))
{
	vR[i] = 3595;
}
else
{
	vR[i] = 3594;
}

}
else
{
	if(input[i]==(3593+offset0))
{
	vR[i] = 3593;
}
else
{
	vR[i] = 3592;
}

}

}

}
else
{
	if(input[i]>(3587+offset0))
{
	if(input[i]>(3589+offset0))
{
	if(input[i]==(3591+offset0))
{
	vR[i] = 3591;
}
else
{
	vR[i] = 3590;
}

}
else
{
	if(input[i]==(3589+offset0))
{
	vR[i] = 3589;
}
else
{
	vR[i] = 3588;
}

}

}
else
{
	if(input[i]>(3585+offset0))
{
	if(input[i]==(3587+offset0))
{
	vR[i] = 3587;
}
else
{
	vR[i] = 3586;
}

}
else
{
	if(input[i]==(3585+offset0))
{
	vR[i] = 3585;
}
else
{
	vR[i] = 3584;
}

}

}

}

}

}

}

}

}

}
else
{
	if(input[i]>(3327+offset0))
{
	if(input[i]>(3455+offset0))
{
	if(input[i]>(3519+offset0))
{
	if(input[i]>(3551+offset0))
{
	if(input[i]>(3567+offset0))
{
	if(input[i]>(3575+offset0))
{
	if(input[i]>(3579+offset0))
{
	if(input[i]>(3581+offset0))
{
	if(input[i]==(3583+offset0))
{
	vR[i] = 3583;
}
else
{
	vR[i] = 3582;
}

}
else
{
	if(input[i]==(3581+offset0))
{
	vR[i] = 3581;
}
else
{
	vR[i] = 3580;
}

}

}
else
{
	if(input[i]>(3577+offset0))
{
	if(input[i]==(3579+offset0))
{
	vR[i] = 3579;
}
else
{
	vR[i] = 3578;
}

}
else
{
	if(input[i]==(3577+offset0))
{
	vR[i] = 3577;
}
else
{
	vR[i] = 3576;
}

}

}

}
else
{
	if(input[i]>(3571+offset0))
{
	if(input[i]>(3573+offset0))
{
	if(input[i]==(3575+offset0))
{
	vR[i] = 3575;
}
else
{
	vR[i] = 3574;
}

}
else
{
	if(input[i]==(3573+offset0))
{
	vR[i] = 3573;
}
else
{
	vR[i] = 3572;
}

}

}
else
{
	if(input[i]>(3569+offset0))
{
	if(input[i]==(3571+offset0))
{
	vR[i] = 3571;
}
else
{
	vR[i] = 3570;
}

}
else
{
	if(input[i]==(3569+offset0))
{
	vR[i] = 3569;
}
else
{
	vR[i] = 3568;
}

}

}

}

}
else
{
	if(input[i]>(3559+offset0))
{
	if(input[i]>(3563+offset0))
{
	if(input[i]>(3565+offset0))
{
	if(input[i]==(3567+offset0))
{
	vR[i] = 3567;
}
else
{
	vR[i] = 3566;
}

}
else
{
	if(input[i]==(3565+offset0))
{
	vR[i] = 3565;
}
else
{
	vR[i] = 3564;
}

}

}
else
{
	if(input[i]>(3561+offset0))
{
	if(input[i]==(3563+offset0))
{
	vR[i] = 3563;
}
else
{
	vR[i] = 3562;
}

}
else
{
	if(input[i]==(3561+offset0))
{
	vR[i] = 3561;
}
else
{
	vR[i] = 3560;
}

}

}

}
else
{
	if(input[i]>(3555+offset0))
{
	if(input[i]>(3557+offset0))
{
	if(input[i]==(3559+offset0))
{
	vR[i] = 3559;
}
else
{
	vR[i] = 3558;
}

}
else
{
	if(input[i]==(3557+offset0))
{
	vR[i] = 3557;
}
else
{
	vR[i] = 3556;
}

}

}
else
{
	if(input[i]>(3553+offset0))
{
	if(input[i]==(3555+offset0))
{
	vR[i] = 3555;
}
else
{
	vR[i] = 3554;
}

}
else
{
	if(input[i]==(3553+offset0))
{
	vR[i] = 3553;
}
else
{
	vR[i] = 3552;
}

}

}

}

}

}
else
{
	if(input[i]>(3535+offset0))
{
	if(input[i]>(3543+offset0))
{
	if(input[i]>(3547+offset0))
{
	if(input[i]>(3549+offset0))
{
	if(input[i]==(3551+offset0))
{
	vR[i] = 3551;
}
else
{
	vR[i] = 3550;
}

}
else
{
	if(input[i]==(3549+offset0))
{
	vR[i] = 3549;
}
else
{
	vR[i] = 3548;
}

}

}
else
{
	if(input[i]>(3545+offset0))
{
	if(input[i]==(3547+offset0))
{
	vR[i] = 3547;
}
else
{
	vR[i] = 3546;
}

}
else
{
	if(input[i]==(3545+offset0))
{
	vR[i] = 3545;
}
else
{
	vR[i] = 3544;
}

}

}

}
else
{
	if(input[i]>(3539+offset0))
{
	if(input[i]>(3541+offset0))
{
	if(input[i]==(3543+offset0))
{
	vR[i] = 3543;
}
else
{
	vR[i] = 3542;
}

}
else
{
	if(input[i]==(3541+offset0))
{
	vR[i] = 3541;
}
else
{
	vR[i] = 3540;
}

}

}
else
{
	if(input[i]>(3537+offset0))
{
	if(input[i]==(3539+offset0))
{
	vR[i] = 3539;
}
else
{
	vR[i] = 3538;
}

}
else
{
	if(input[i]==(3537+offset0))
{
	vR[i] = 3537;
}
else
{
	vR[i] = 3536;
}

}

}

}

}
else
{
	if(input[i]>(3527+offset0))
{
	if(input[i]>(3531+offset0))
{
	if(input[i]>(3533+offset0))
{
	if(input[i]==(3535+offset0))
{
	vR[i] = 3535;
}
else
{
	vR[i] = 3534;
}

}
else
{
	if(input[i]==(3533+offset0))
{
	vR[i] = 3533;
}
else
{
	vR[i] = 3532;
}

}

}
else
{
	if(input[i]>(3529+offset0))
{
	if(input[i]==(3531+offset0))
{
	vR[i] = 3531;
}
else
{
	vR[i] = 3530;
}

}
else
{
	if(input[i]==(3529+offset0))
{
	vR[i] = 3529;
}
else
{
	vR[i] = 3528;
}

}

}

}
else
{
	if(input[i]>(3523+offset0))
{
	if(input[i]>(3525+offset0))
{
	if(input[i]==(3527+offset0))
{
	vR[i] = 3527;
}
else
{
	vR[i] = 3526;
}

}
else
{
	if(input[i]==(3525+offset0))
{
	vR[i] = 3525;
}
else
{
	vR[i] = 3524;
}

}

}
else
{
	if(input[i]>(3521+offset0))
{
	if(input[i]==(3523+offset0))
{
	vR[i] = 3523;
}
else
{
	vR[i] = 3522;
}

}
else
{
	if(input[i]==(3521+offset0))
{
	vR[i] = 3521;
}
else
{
	vR[i] = 3520;
}

}

}

}

}

}

}
else
{
	if(input[i]>(3487+offset0))
{
	if(input[i]>(3503+offset0))
{
	if(input[i]>(3511+offset0))
{
	if(input[i]>(3515+offset0))
{
	if(input[i]>(3517+offset0))
{
	if(input[i]==(3519+offset0))
{
	vR[i] = 3519;
}
else
{
	vR[i] = 3518;
}

}
else
{
	if(input[i]==(3517+offset0))
{
	vR[i] = 3517;
}
else
{
	vR[i] = 3516;
}

}

}
else
{
	if(input[i]>(3513+offset0))
{
	if(input[i]==(3515+offset0))
{
	vR[i] = 3515;
}
else
{
	vR[i] = 3514;
}

}
else
{
	if(input[i]==(3513+offset0))
{
	vR[i] = 3513;
}
else
{
	vR[i] = 3512;
}

}

}

}
else
{
	if(input[i]>(3507+offset0))
{
	if(input[i]>(3509+offset0))
{
	if(input[i]==(3511+offset0))
{
	vR[i] = 3511;
}
else
{
	vR[i] = 3510;
}

}
else
{
	if(input[i]==(3509+offset0))
{
	vR[i] = 3509;
}
else
{
	vR[i] = 3508;
}

}

}
else
{
	if(input[i]>(3505+offset0))
{
	if(input[i]==(3507+offset0))
{
	vR[i] = 3507;
}
else
{
	vR[i] = 3506;
}

}
else
{
	if(input[i]==(3505+offset0))
{
	vR[i] = 3505;
}
else
{
	vR[i] = 3504;
}

}

}

}

}
else
{
	if(input[i]>(3495+offset0))
{
	if(input[i]>(3499+offset0))
{
	if(input[i]>(3501+offset0))
{
	if(input[i]==(3503+offset0))
{
	vR[i] = 3503;
}
else
{
	vR[i] = 3502;
}

}
else
{
	if(input[i]==(3501+offset0))
{
	vR[i] = 3501;
}
else
{
	vR[i] = 3500;
}

}

}
else
{
	if(input[i]>(3497+offset0))
{
	if(input[i]==(3499+offset0))
{
	vR[i] = 3499;
}
else
{
	vR[i] = 3498;
}

}
else
{
	if(input[i]==(3497+offset0))
{
	vR[i] = 3497;
}
else
{
	vR[i] = 3496;
}

}

}

}
else
{
	if(input[i]>(3491+offset0))
{
	if(input[i]>(3493+offset0))
{
	if(input[i]==(3495+offset0))
{
	vR[i] = 3495;
}
else
{
	vR[i] = 3494;
}

}
else
{
	if(input[i]==(3493+offset0))
{
	vR[i] = 3493;
}
else
{
	vR[i] = 3492;
}

}

}
else
{
	if(input[i]>(3489+offset0))
{
	if(input[i]==(3491+offset0))
{
	vR[i] = 3491;
}
else
{
	vR[i] = 3490;
}

}
else
{
	if(input[i]==(3489+offset0))
{
	vR[i] = 3489;
}
else
{
	vR[i] = 3488;
}

}

}

}

}

}
else
{
	if(input[i]>(3471+offset0))
{
	if(input[i]>(3479+offset0))
{
	if(input[i]>(3483+offset0))
{
	if(input[i]>(3485+offset0))
{
	if(input[i]==(3487+offset0))
{
	vR[i] = 3487;
}
else
{
	vR[i] = 3486;
}

}
else
{
	if(input[i]==(3485+offset0))
{
	vR[i] = 3485;
}
else
{
	vR[i] = 3484;
}

}

}
else
{
	if(input[i]>(3481+offset0))
{
	if(input[i]==(3483+offset0))
{
	vR[i] = 3483;
}
else
{
	vR[i] = 3482;
}

}
else
{
	if(input[i]==(3481+offset0))
{
	vR[i] = 3481;
}
else
{
	vR[i] = 3480;
}

}

}

}
else
{
	if(input[i]>(3475+offset0))
{
	if(input[i]>(3477+offset0))
{
	if(input[i]==(3479+offset0))
{
	vR[i] = 3479;
}
else
{
	vR[i] = 3478;
}

}
else
{
	if(input[i]==(3477+offset0))
{
	vR[i] = 3477;
}
else
{
	vR[i] = 3476;
}

}

}
else
{
	if(input[i]>(3473+offset0))
{
	if(input[i]==(3475+offset0))
{
	vR[i] = 3475;
}
else
{
	vR[i] = 3474;
}

}
else
{
	if(input[i]==(3473+offset0))
{
	vR[i] = 3473;
}
else
{
	vR[i] = 3472;
}

}

}

}

}
else
{
	if(input[i]>(3463+offset0))
{
	if(input[i]>(3467+offset0))
{
	if(input[i]>(3469+offset0))
{
	if(input[i]==(3471+offset0))
{
	vR[i] = 3471;
}
else
{
	vR[i] = 3470;
}

}
else
{
	if(input[i]==(3469+offset0))
{
	vR[i] = 3469;
}
else
{
	vR[i] = 3468;
}

}

}
else
{
	if(input[i]>(3465+offset0))
{
	if(input[i]==(3467+offset0))
{
	vR[i] = 3467;
}
else
{
	vR[i] = 3466;
}

}
else
{
	if(input[i]==(3465+offset0))
{
	vR[i] = 3465;
}
else
{
	vR[i] = 3464;
}

}

}

}
else
{
	if(input[i]>(3459+offset0))
{
	if(input[i]>(3461+offset0))
{
	if(input[i]==(3463+offset0))
{
	vR[i] = 3463;
}
else
{
	vR[i] = 3462;
}

}
else
{
	if(input[i]==(3461+offset0))
{
	vR[i] = 3461;
}
else
{
	vR[i] = 3460;
}

}

}
else
{
	if(input[i]>(3457+offset0))
{
	if(input[i]==(3459+offset0))
{
	vR[i] = 3459;
}
else
{
	vR[i] = 3458;
}

}
else
{
	if(input[i]==(3457+offset0))
{
	vR[i] = 3457;
}
else
{
	vR[i] = 3456;
}

}

}

}

}

}

}

}
else
{
	if(input[i]>(3391+offset0))
{
	if(input[i]>(3423+offset0))
{
	if(input[i]>(3439+offset0))
{
	if(input[i]>(3447+offset0))
{
	if(input[i]>(3451+offset0))
{
	if(input[i]>(3453+offset0))
{
	if(input[i]==(3455+offset0))
{
	vR[i] = 3455;
}
else
{
	vR[i] = 3454;
}

}
else
{
	if(input[i]==(3453+offset0))
{
	vR[i] = 3453;
}
else
{
	vR[i] = 3452;
}

}

}
else
{
	if(input[i]>(3449+offset0))
{
	if(input[i]==(3451+offset0))
{
	vR[i] = 3451;
}
else
{
	vR[i] = 3450;
}

}
else
{
	if(input[i]==(3449+offset0))
{
	vR[i] = 3449;
}
else
{
	vR[i] = 3448;
}

}

}

}
else
{
	if(input[i]>(3443+offset0))
{
	if(input[i]>(3445+offset0))
{
	if(input[i]==(3447+offset0))
{
	vR[i] = 3447;
}
else
{
	vR[i] = 3446;
}

}
else
{
	if(input[i]==(3445+offset0))
{
	vR[i] = 3445;
}
else
{
	vR[i] = 3444;
}

}

}
else
{
	if(input[i]>(3441+offset0))
{
	if(input[i]==(3443+offset0))
{
	vR[i] = 3443;
}
else
{
	vR[i] = 3442;
}

}
else
{
	if(input[i]==(3441+offset0))
{
	vR[i] = 3441;
}
else
{
	vR[i] = 3440;
}

}

}

}

}
else
{
	if(input[i]>(3431+offset0))
{
	if(input[i]>(3435+offset0))
{
	if(input[i]>(3437+offset0))
{
	if(input[i]==(3439+offset0))
{
	vR[i] = 3439;
}
else
{
	vR[i] = 3438;
}

}
else
{
	if(input[i]==(3437+offset0))
{
	vR[i] = 3437;
}
else
{
	vR[i] = 3436;
}

}

}
else
{
	if(input[i]>(3433+offset0))
{
	if(input[i]==(3435+offset0))
{
	vR[i] = 3435;
}
else
{
	vR[i] = 3434;
}

}
else
{
	if(input[i]==(3433+offset0))
{
	vR[i] = 3433;
}
else
{
	vR[i] = 3432;
}

}

}

}
else
{
	if(input[i]>(3427+offset0))
{
	if(input[i]>(3429+offset0))
{
	if(input[i]==(3431+offset0))
{
	vR[i] = 3431;
}
else
{
	vR[i] = 3430;
}

}
else
{
	if(input[i]==(3429+offset0))
{
	vR[i] = 3429;
}
else
{
	vR[i] = 3428;
}

}

}
else
{
	if(input[i]>(3425+offset0))
{
	if(input[i]==(3427+offset0))
{
	vR[i] = 3427;
}
else
{
	vR[i] = 3426;
}

}
else
{
	if(input[i]==(3425+offset0))
{
	vR[i] = 3425;
}
else
{
	vR[i] = 3424;
}

}

}

}

}

}
else
{
	if(input[i]>(3407+offset0))
{
	if(input[i]>(3415+offset0))
{
	if(input[i]>(3419+offset0))
{
	if(input[i]>(3421+offset0))
{
	if(input[i]==(3423+offset0))
{
	vR[i] = 3423;
}
else
{
	vR[i] = 3422;
}

}
else
{
	if(input[i]==(3421+offset0))
{
	vR[i] = 3421;
}
else
{
	vR[i] = 3420;
}

}

}
else
{
	if(input[i]>(3417+offset0))
{
	if(input[i]==(3419+offset0))
{
	vR[i] = 3419;
}
else
{
	vR[i] = 3418;
}

}
else
{
	if(input[i]==(3417+offset0))
{
	vR[i] = 3417;
}
else
{
	vR[i] = 3416;
}

}

}

}
else
{
	if(input[i]>(3411+offset0))
{
	if(input[i]>(3413+offset0))
{
	if(input[i]==(3415+offset0))
{
	vR[i] = 3415;
}
else
{
	vR[i] = 3414;
}

}
else
{
	if(input[i]==(3413+offset0))
{
	vR[i] = 3413;
}
else
{
	vR[i] = 3412;
}

}

}
else
{
	if(input[i]>(3409+offset0))
{
	if(input[i]==(3411+offset0))
{
	vR[i] = 3411;
}
else
{
	vR[i] = 3410;
}

}
else
{
	if(input[i]==(3409+offset0))
{
	vR[i] = 3409;
}
else
{
	vR[i] = 3408;
}

}

}

}

}
else
{
	if(input[i]>(3399+offset0))
{
	if(input[i]>(3403+offset0))
{
	if(input[i]>(3405+offset0))
{
	if(input[i]==(3407+offset0))
{
	vR[i] = 3407;
}
else
{
	vR[i] = 3406;
}

}
else
{
	if(input[i]==(3405+offset0))
{
	vR[i] = 3405;
}
else
{
	vR[i] = 3404;
}

}

}
else
{
	if(input[i]>(3401+offset0))
{
	if(input[i]==(3403+offset0))
{
	vR[i] = 3403;
}
else
{
	vR[i] = 3402;
}

}
else
{
	if(input[i]==(3401+offset0))
{
	vR[i] = 3401;
}
else
{
	vR[i] = 3400;
}

}

}

}
else
{
	if(input[i]>(3395+offset0))
{
	if(input[i]>(3397+offset0))
{
	if(input[i]==(3399+offset0))
{
	vR[i] = 3399;
}
else
{
	vR[i] = 3398;
}

}
else
{
	if(input[i]==(3397+offset0))
{
	vR[i] = 3397;
}
else
{
	vR[i] = 3396;
}

}

}
else
{
	if(input[i]>(3393+offset0))
{
	if(input[i]==(3395+offset0))
{
	vR[i] = 3395;
}
else
{
	vR[i] = 3394;
}

}
else
{
	if(input[i]==(3393+offset0))
{
	vR[i] = 3393;
}
else
{
	vR[i] = 3392;
}

}

}

}

}

}

}
else
{
	if(input[i]>(3359+offset0))
{
	if(input[i]>(3375+offset0))
{
	if(input[i]>(3383+offset0))
{
	if(input[i]>(3387+offset0))
{
	if(input[i]>(3389+offset0))
{
	if(input[i]==(3391+offset0))
{
	vR[i] = 3391;
}
else
{
	vR[i] = 3390;
}

}
else
{
	if(input[i]==(3389+offset0))
{
	vR[i] = 3389;
}
else
{
	vR[i] = 3388;
}

}

}
else
{
	if(input[i]>(3385+offset0))
{
	if(input[i]==(3387+offset0))
{
	vR[i] = 3387;
}
else
{
	vR[i] = 3386;
}

}
else
{
	if(input[i]==(3385+offset0))
{
	vR[i] = 3385;
}
else
{
	vR[i] = 3384;
}

}

}

}
else
{
	if(input[i]>(3379+offset0))
{
	if(input[i]>(3381+offset0))
{
	if(input[i]==(3383+offset0))
{
	vR[i] = 3383;
}
else
{
	vR[i] = 3382;
}

}
else
{
	if(input[i]==(3381+offset0))
{
	vR[i] = 3381;
}
else
{
	vR[i] = 3380;
}

}

}
else
{
	if(input[i]>(3377+offset0))
{
	if(input[i]==(3379+offset0))
{
	vR[i] = 3379;
}
else
{
	vR[i] = 3378;
}

}
else
{
	if(input[i]==(3377+offset0))
{
	vR[i] = 3377;
}
else
{
	vR[i] = 3376;
}

}

}

}

}
else
{
	if(input[i]>(3367+offset0))
{
	if(input[i]>(3371+offset0))
{
	if(input[i]>(3373+offset0))
{
	if(input[i]==(3375+offset0))
{
	vR[i] = 3375;
}
else
{
	vR[i] = 3374;
}

}
else
{
	if(input[i]==(3373+offset0))
{
	vR[i] = 3373;
}
else
{
	vR[i] = 3372;
}

}

}
else
{
	if(input[i]>(3369+offset0))
{
	if(input[i]==(3371+offset0))
{
	vR[i] = 3371;
}
else
{
	vR[i] = 3370;
}

}
else
{
	if(input[i]==(3369+offset0))
{
	vR[i] = 3369;
}
else
{
	vR[i] = 3368;
}

}

}

}
else
{
	if(input[i]>(3363+offset0))
{
	if(input[i]>(3365+offset0))
{
	if(input[i]==(3367+offset0))
{
	vR[i] = 3367;
}
else
{
	vR[i] = 3366;
}

}
else
{
	if(input[i]==(3365+offset0))
{
	vR[i] = 3365;
}
else
{
	vR[i] = 3364;
}

}

}
else
{
	if(input[i]>(3361+offset0))
{
	if(input[i]==(3363+offset0))
{
	vR[i] = 3363;
}
else
{
	vR[i] = 3362;
}

}
else
{
	if(input[i]==(3361+offset0))
{
	vR[i] = 3361;
}
else
{
	vR[i] = 3360;
}

}

}

}

}

}
else
{
	if(input[i]>(3343+offset0))
{
	if(input[i]>(3351+offset0))
{
	if(input[i]>(3355+offset0))
{
	if(input[i]>(3357+offset0))
{
	if(input[i]==(3359+offset0))
{
	vR[i] = 3359;
}
else
{
	vR[i] = 3358;
}

}
else
{
	if(input[i]==(3357+offset0))
{
	vR[i] = 3357;
}
else
{
	vR[i] = 3356;
}

}

}
else
{
	if(input[i]>(3353+offset0))
{
	if(input[i]==(3355+offset0))
{
	vR[i] = 3355;
}
else
{
	vR[i] = 3354;
}

}
else
{
	if(input[i]==(3353+offset0))
{
	vR[i] = 3353;
}
else
{
	vR[i] = 3352;
}

}

}

}
else
{
	if(input[i]>(3347+offset0))
{
	if(input[i]>(3349+offset0))
{
	if(input[i]==(3351+offset0))
{
	vR[i] = 3351;
}
else
{
	vR[i] = 3350;
}

}
else
{
	if(input[i]==(3349+offset0))
{
	vR[i] = 3349;
}
else
{
	vR[i] = 3348;
}

}

}
else
{
	if(input[i]>(3345+offset0))
{
	if(input[i]==(3347+offset0))
{
	vR[i] = 3347;
}
else
{
	vR[i] = 3346;
}

}
else
{
	if(input[i]==(3345+offset0))
{
	vR[i] = 3345;
}
else
{
	vR[i] = 3344;
}

}

}

}

}
else
{
	if(input[i]>(3335+offset0))
{
	if(input[i]>(3339+offset0))
{
	if(input[i]>(3341+offset0))
{
	if(input[i]==(3343+offset0))
{
	vR[i] = 3343;
}
else
{
	vR[i] = 3342;
}

}
else
{
	if(input[i]==(3341+offset0))
{
	vR[i] = 3341;
}
else
{
	vR[i] = 3340;
}

}

}
else
{
	if(input[i]>(3337+offset0))
{
	if(input[i]==(3339+offset0))
{
	vR[i] = 3339;
}
else
{
	vR[i] = 3338;
}

}
else
{
	if(input[i]==(3337+offset0))
{
	vR[i] = 3337;
}
else
{
	vR[i] = 3336;
}

}

}

}
else
{
	if(input[i]>(3331+offset0))
{
	if(input[i]>(3333+offset0))
{
	if(input[i]==(3335+offset0))
{
	vR[i] = 3335;
}
else
{
	vR[i] = 3334;
}

}
else
{
	if(input[i]==(3333+offset0))
{
	vR[i] = 3333;
}
else
{
	vR[i] = 3332;
}

}

}
else
{
	if(input[i]>(3329+offset0))
{
	if(input[i]==(3331+offset0))
{
	vR[i] = 3331;
}
else
{
	vR[i] = 3330;
}

}
else
{
	if(input[i]==(3329+offset0))
{
	vR[i] = 3329;
}
else
{
	vR[i] = 3328;
}

}

}

}

}

}

}

}

}
else
{
	if(input[i]>(3199+offset0))
{
	if(input[i]>(3263+offset0))
{
	if(input[i]>(3295+offset0))
{
	if(input[i]>(3311+offset0))
{
	if(input[i]>(3319+offset0))
{
	if(input[i]>(3323+offset0))
{
	if(input[i]>(3325+offset0))
{
	if(input[i]==(3327+offset0))
{
	vR[i] = 3327;
}
else
{
	vR[i] = 3326;
}

}
else
{
	if(input[i]==(3325+offset0))
{
	vR[i] = 3325;
}
else
{
	vR[i] = 3324;
}

}

}
else
{
	if(input[i]>(3321+offset0))
{
	if(input[i]==(3323+offset0))
{
	vR[i] = 3323;
}
else
{
	vR[i] = 3322;
}

}
else
{
	if(input[i]==(3321+offset0))
{
	vR[i] = 3321;
}
else
{
	vR[i] = 3320;
}

}

}

}
else
{
	if(input[i]>(3315+offset0))
{
	if(input[i]>(3317+offset0))
{
	if(input[i]==(3319+offset0))
{
	vR[i] = 3319;
}
else
{
	vR[i] = 3318;
}

}
else
{
	if(input[i]==(3317+offset0))
{
	vR[i] = 3317;
}
else
{
	vR[i] = 3316;
}

}

}
else
{
	if(input[i]>(3313+offset0))
{
	if(input[i]==(3315+offset0))
{
	vR[i] = 3315;
}
else
{
	vR[i] = 3314;
}

}
else
{
	if(input[i]==(3313+offset0))
{
	vR[i] = 3313;
}
else
{
	vR[i] = 3312;
}

}

}

}

}
else
{
	if(input[i]>(3303+offset0))
{
	if(input[i]>(3307+offset0))
{
	if(input[i]>(3309+offset0))
{
	if(input[i]==(3311+offset0))
{
	vR[i] = 3311;
}
else
{
	vR[i] = 3310;
}

}
else
{
	if(input[i]==(3309+offset0))
{
	vR[i] = 3309;
}
else
{
	vR[i] = 3308;
}

}

}
else
{
	if(input[i]>(3305+offset0))
{
	if(input[i]==(3307+offset0))
{
	vR[i] = 3307;
}
else
{
	vR[i] = 3306;
}

}
else
{
	if(input[i]==(3305+offset0))
{
	vR[i] = 3305;
}
else
{
	vR[i] = 3304;
}

}

}

}
else
{
	if(input[i]>(3299+offset0))
{
	if(input[i]>(3301+offset0))
{
	if(input[i]==(3303+offset0))
{
	vR[i] = 3303;
}
else
{
	vR[i] = 3302;
}

}
else
{
	if(input[i]==(3301+offset0))
{
	vR[i] = 3301;
}
else
{
	vR[i] = 3300;
}

}

}
else
{
	if(input[i]>(3297+offset0))
{
	if(input[i]==(3299+offset0))
{
	vR[i] = 3299;
}
else
{
	vR[i] = 3298;
}

}
else
{
	if(input[i]==(3297+offset0))
{
	vR[i] = 3297;
}
else
{
	vR[i] = 3296;
}

}

}

}

}

}
else
{
	if(input[i]>(3279+offset0))
{
	if(input[i]>(3287+offset0))
{
	if(input[i]>(3291+offset0))
{
	if(input[i]>(3293+offset0))
{
	if(input[i]==(3295+offset0))
{
	vR[i] = 3295;
}
else
{
	vR[i] = 3294;
}

}
else
{
	if(input[i]==(3293+offset0))
{
	vR[i] = 3293;
}
else
{
	vR[i] = 3292;
}

}

}
else
{
	if(input[i]>(3289+offset0))
{
	if(input[i]==(3291+offset0))
{
	vR[i] = 3291;
}
else
{
	vR[i] = 3290;
}

}
else
{
	if(input[i]==(3289+offset0))
{
	vR[i] = 3289;
}
else
{
	vR[i] = 3288;
}

}

}

}
else
{
	if(input[i]>(3283+offset0))
{
	if(input[i]>(3285+offset0))
{
	if(input[i]==(3287+offset0))
{
	vR[i] = 3287;
}
else
{
	vR[i] = 3286;
}

}
else
{
	if(input[i]==(3285+offset0))
{
	vR[i] = 3285;
}
else
{
	vR[i] = 3284;
}

}

}
else
{
	if(input[i]>(3281+offset0))
{
	if(input[i]==(3283+offset0))
{
	vR[i] = 3283;
}
else
{
	vR[i] = 3282;
}

}
else
{
	if(input[i]==(3281+offset0))
{
	vR[i] = 3281;
}
else
{
	vR[i] = 3280;
}

}

}

}

}
else
{
	if(input[i]>(3271+offset0))
{
	if(input[i]>(3275+offset0))
{
	if(input[i]>(3277+offset0))
{
	if(input[i]==(3279+offset0))
{
	vR[i] = 3279;
}
else
{
	vR[i] = 3278;
}

}
else
{
	if(input[i]==(3277+offset0))
{
	vR[i] = 3277;
}
else
{
	vR[i] = 3276;
}

}

}
else
{
	if(input[i]>(3273+offset0))
{
	if(input[i]==(3275+offset0))
{
	vR[i] = 3275;
}
else
{
	vR[i] = 3274;
}

}
else
{
	if(input[i]==(3273+offset0))
{
	vR[i] = 3273;
}
else
{
	vR[i] = 3272;
}

}

}

}
else
{
	if(input[i]>(3267+offset0))
{
	if(input[i]>(3269+offset0))
{
	if(input[i]==(3271+offset0))
{
	vR[i] = 3271;
}
else
{
	vR[i] = 3270;
}

}
else
{
	if(input[i]==(3269+offset0))
{
	vR[i] = 3269;
}
else
{
	vR[i] = 3268;
}

}

}
else
{
	if(input[i]>(3265+offset0))
{
	if(input[i]==(3267+offset0))
{
	vR[i] = 3267;
}
else
{
	vR[i] = 3266;
}

}
else
{
	if(input[i]==(3265+offset0))
{
	vR[i] = 3265;
}
else
{
	vR[i] = 3264;
}

}

}

}

}

}

}
else
{
	if(input[i]>(3231+offset0))
{
	if(input[i]>(3247+offset0))
{
	if(input[i]>(3255+offset0))
{
	if(input[i]>(3259+offset0))
{
	if(input[i]>(3261+offset0))
{
	if(input[i]==(3263+offset0))
{
	vR[i] = 3263;
}
else
{
	vR[i] = 3262;
}

}
else
{
	if(input[i]==(3261+offset0))
{
	vR[i] = 3261;
}
else
{
	vR[i] = 3260;
}

}

}
else
{
	if(input[i]>(3257+offset0))
{
	if(input[i]==(3259+offset0))
{
	vR[i] = 3259;
}
else
{
	vR[i] = 3258;
}

}
else
{
	if(input[i]==(3257+offset0))
{
	vR[i] = 3257;
}
else
{
	vR[i] = 3256;
}

}

}

}
else
{
	if(input[i]>(3251+offset0))
{
	if(input[i]>(3253+offset0))
{
	if(input[i]==(3255+offset0))
{
	vR[i] = 3255;
}
else
{
	vR[i] = 3254;
}

}
else
{
	if(input[i]==(3253+offset0))
{
	vR[i] = 3253;
}
else
{
	vR[i] = 3252;
}

}

}
else
{
	if(input[i]>(3249+offset0))
{
	if(input[i]==(3251+offset0))
{
	vR[i] = 3251;
}
else
{
	vR[i] = 3250;
}

}
else
{
	if(input[i]==(3249+offset0))
{
	vR[i] = 3249;
}
else
{
	vR[i] = 3248;
}

}

}

}

}
else
{
	if(input[i]>(3239+offset0))
{
	if(input[i]>(3243+offset0))
{
	if(input[i]>(3245+offset0))
{
	if(input[i]==(3247+offset0))
{
	vR[i] = 3247;
}
else
{
	vR[i] = 3246;
}

}
else
{
	if(input[i]==(3245+offset0))
{
	vR[i] = 3245;
}
else
{
	vR[i] = 3244;
}

}

}
else
{
	if(input[i]>(3241+offset0))
{
	if(input[i]==(3243+offset0))
{
	vR[i] = 3243;
}
else
{
	vR[i] = 3242;
}

}
else
{
	if(input[i]==(3241+offset0))
{
	vR[i] = 3241;
}
else
{
	vR[i] = 3240;
}

}

}

}
else
{
	if(input[i]>(3235+offset0))
{
	if(input[i]>(3237+offset0))
{
	if(input[i]==(3239+offset0))
{
	vR[i] = 3239;
}
else
{
	vR[i] = 3238;
}

}
else
{
	if(input[i]==(3237+offset0))
{
	vR[i] = 3237;
}
else
{
	vR[i] = 3236;
}

}

}
else
{
	if(input[i]>(3233+offset0))
{
	if(input[i]==(3235+offset0))
{
	vR[i] = 3235;
}
else
{
	vR[i] = 3234;
}

}
else
{
	if(input[i]==(3233+offset0))
{
	vR[i] = 3233;
}
else
{
	vR[i] = 3232;
}

}

}

}

}

}
else
{
	if(input[i]>(3215+offset0))
{
	if(input[i]>(3223+offset0))
{
	if(input[i]>(3227+offset0))
{
	if(input[i]>(3229+offset0))
{
	if(input[i]==(3231+offset0))
{
	vR[i] = 3231;
}
else
{
	vR[i] = 3230;
}

}
else
{
	if(input[i]==(3229+offset0))
{
	vR[i] = 3229;
}
else
{
	vR[i] = 3228;
}

}

}
else
{
	if(input[i]>(3225+offset0))
{
	if(input[i]==(3227+offset0))
{
	vR[i] = 3227;
}
else
{
	vR[i] = 3226;
}

}
else
{
	if(input[i]==(3225+offset0))
{
	vR[i] = 3225;
}
else
{
	vR[i] = 3224;
}

}

}

}
else
{
	if(input[i]>(3219+offset0))
{
	if(input[i]>(3221+offset0))
{
	if(input[i]==(3223+offset0))
{
	vR[i] = 3223;
}
else
{
	vR[i] = 3222;
}

}
else
{
	if(input[i]==(3221+offset0))
{
	vR[i] = 3221;
}
else
{
	vR[i] = 3220;
}

}

}
else
{
	if(input[i]>(3217+offset0))
{
	if(input[i]==(3219+offset0))
{
	vR[i] = 3219;
}
else
{
	vR[i] = 3218;
}

}
else
{
	if(input[i]==(3217+offset0))
{
	vR[i] = 3217;
}
else
{
	vR[i] = 3216;
}

}

}

}

}
else
{
	if(input[i]>(3207+offset0))
{
	if(input[i]>(3211+offset0))
{
	if(input[i]>(3213+offset0))
{
	if(input[i]==(3215+offset0))
{
	vR[i] = 3215;
}
else
{
	vR[i] = 3214;
}

}
else
{
	if(input[i]==(3213+offset0))
{
	vR[i] = 3213;
}
else
{
	vR[i] = 3212;
}

}

}
else
{
	if(input[i]>(3209+offset0))
{
	if(input[i]==(3211+offset0))
{
	vR[i] = 3211;
}
else
{
	vR[i] = 3210;
}

}
else
{
	if(input[i]==(3209+offset0))
{
	vR[i] = 3209;
}
else
{
	vR[i] = 3208;
}

}

}

}
else
{
	if(input[i]>(3203+offset0))
{
	if(input[i]>(3205+offset0))
{
	if(input[i]==(3207+offset0))
{
	vR[i] = 3207;
}
else
{
	vR[i] = 3206;
}

}
else
{
	if(input[i]==(3205+offset0))
{
	vR[i] = 3205;
}
else
{
	vR[i] = 3204;
}

}

}
else
{
	if(input[i]>(3201+offset0))
{
	if(input[i]==(3203+offset0))
{
	vR[i] = 3203;
}
else
{
	vR[i] = 3202;
}

}
else
{
	if(input[i]==(3201+offset0))
{
	vR[i] = 3201;
}
else
{
	vR[i] = 3200;
}

}

}

}

}

}

}

}
else
{
	if(input[i]>(3135+offset0))
{
	if(input[i]>(3167+offset0))
{
	if(input[i]>(3183+offset0))
{
	if(input[i]>(3191+offset0))
{
	if(input[i]>(3195+offset0))
{
	if(input[i]>(3197+offset0))
{
	if(input[i]==(3199+offset0))
{
	vR[i] = 3199;
}
else
{
	vR[i] = 3198;
}

}
else
{
	if(input[i]==(3197+offset0))
{
	vR[i] = 3197;
}
else
{
	vR[i] = 3196;
}

}

}
else
{
	if(input[i]>(3193+offset0))
{
	if(input[i]==(3195+offset0))
{
	vR[i] = 3195;
}
else
{
	vR[i] = 3194;
}

}
else
{
	if(input[i]==(3193+offset0))
{
	vR[i] = 3193;
}
else
{
	vR[i] = 3192;
}

}

}

}
else
{
	if(input[i]>(3187+offset0))
{
	if(input[i]>(3189+offset0))
{
	if(input[i]==(3191+offset0))
{
	vR[i] = 3191;
}
else
{
	vR[i] = 3190;
}

}
else
{
	if(input[i]==(3189+offset0))
{
	vR[i] = 3189;
}
else
{
	vR[i] = 3188;
}

}

}
else
{
	if(input[i]>(3185+offset0))
{
	if(input[i]==(3187+offset0))
{
	vR[i] = 3187;
}
else
{
	vR[i] = 3186;
}

}
else
{
	if(input[i]==(3185+offset0))
{
	vR[i] = 3185;
}
else
{
	vR[i] = 3184;
}

}

}

}

}
else
{
	if(input[i]>(3175+offset0))
{
	if(input[i]>(3179+offset0))
{
	if(input[i]>(3181+offset0))
{
	if(input[i]==(3183+offset0))
{
	vR[i] = 3183;
}
else
{
	vR[i] = 3182;
}

}
else
{
	if(input[i]==(3181+offset0))
{
	vR[i] = 3181;
}
else
{
	vR[i] = 3180;
}

}

}
else
{
	if(input[i]>(3177+offset0))
{
	if(input[i]==(3179+offset0))
{
	vR[i] = 3179;
}
else
{
	vR[i] = 3178;
}

}
else
{
	if(input[i]==(3177+offset0))
{
	vR[i] = 3177;
}
else
{
	vR[i] = 3176;
}

}

}

}
else
{
	if(input[i]>(3171+offset0))
{
	if(input[i]>(3173+offset0))
{
	if(input[i]==(3175+offset0))
{
	vR[i] = 3175;
}
else
{
	vR[i] = 3174;
}

}
else
{
	if(input[i]==(3173+offset0))
{
	vR[i] = 3173;
}
else
{
	vR[i] = 3172;
}

}

}
else
{
	if(input[i]>(3169+offset0))
{
	if(input[i]==(3171+offset0))
{
	vR[i] = 3171;
}
else
{
	vR[i] = 3170;
}

}
else
{
	if(input[i]==(3169+offset0))
{
	vR[i] = 3169;
}
else
{
	vR[i] = 3168;
}

}

}

}

}

}
else
{
	if(input[i]>(3151+offset0))
{
	if(input[i]>(3159+offset0))
{
	if(input[i]>(3163+offset0))
{
	if(input[i]>(3165+offset0))
{
	if(input[i]==(3167+offset0))
{
	vR[i] = 3167;
}
else
{
	vR[i] = 3166;
}

}
else
{
	if(input[i]==(3165+offset0))
{
	vR[i] = 3165;
}
else
{
	vR[i] = 3164;
}

}

}
else
{
	if(input[i]>(3161+offset0))
{
	if(input[i]==(3163+offset0))
{
	vR[i] = 3163;
}
else
{
	vR[i] = 3162;
}

}
else
{
	if(input[i]==(3161+offset0))
{
	vR[i] = 3161;
}
else
{
	vR[i] = 3160;
}

}

}

}
else
{
	if(input[i]>(3155+offset0))
{
	if(input[i]>(3157+offset0))
{
	if(input[i]==(3159+offset0))
{
	vR[i] = 3159;
}
else
{
	vR[i] = 3158;
}

}
else
{
	if(input[i]==(3157+offset0))
{
	vR[i] = 3157;
}
else
{
	vR[i] = 3156;
}

}

}
else
{
	if(input[i]>(3153+offset0))
{
	if(input[i]==(3155+offset0))
{
	vR[i] = 3155;
}
else
{
	vR[i] = 3154;
}

}
else
{
	if(input[i]==(3153+offset0))
{
	vR[i] = 3153;
}
else
{
	vR[i] = 3152;
}

}

}

}

}
else
{
	if(input[i]>(3143+offset0))
{
	if(input[i]>(3147+offset0))
{
	if(input[i]>(3149+offset0))
{
	if(input[i]==(3151+offset0))
{
	vR[i] = 3151;
}
else
{
	vR[i] = 3150;
}

}
else
{
	if(input[i]==(3149+offset0))
{
	vR[i] = 3149;
}
else
{
	vR[i] = 3148;
}

}

}
else
{
	if(input[i]>(3145+offset0))
{
	if(input[i]==(3147+offset0))
{
	vR[i] = 3147;
}
else
{
	vR[i] = 3146;
}

}
else
{
	if(input[i]==(3145+offset0))
{
	vR[i] = 3145;
}
else
{
	vR[i] = 3144;
}

}

}

}
else
{
	if(input[i]>(3139+offset0))
{
	if(input[i]>(3141+offset0))
{
	if(input[i]==(3143+offset0))
{
	vR[i] = 3143;
}
else
{
	vR[i] = 3142;
}

}
else
{
	if(input[i]==(3141+offset0))
{
	vR[i] = 3141;
}
else
{
	vR[i] = 3140;
}

}

}
else
{
	if(input[i]>(3137+offset0))
{
	if(input[i]==(3139+offset0))
{
	vR[i] = 3139;
}
else
{
	vR[i] = 3138;
}

}
else
{
	if(input[i]==(3137+offset0))
{
	vR[i] = 3137;
}
else
{
	vR[i] = 3136;
}

}

}

}

}

}

}
else
{
	if(input[i]>(3103+offset0))
{
	if(input[i]>(3119+offset0))
{
	if(input[i]>(3127+offset0))
{
	if(input[i]>(3131+offset0))
{
	if(input[i]>(3133+offset0))
{
	if(input[i]==(3135+offset0))
{
	vR[i] = 3135;
}
else
{
	vR[i] = 3134;
}

}
else
{
	if(input[i]==(3133+offset0))
{
	vR[i] = 3133;
}
else
{
	vR[i] = 3132;
}

}

}
else
{
	if(input[i]>(3129+offset0))
{
	if(input[i]==(3131+offset0))
{
	vR[i] = 3131;
}
else
{
	vR[i] = 3130;
}

}
else
{
	if(input[i]==(3129+offset0))
{
	vR[i] = 3129;
}
else
{
	vR[i] = 3128;
}

}

}

}
else
{
	if(input[i]>(3123+offset0))
{
	if(input[i]>(3125+offset0))
{
	if(input[i]==(3127+offset0))
{
	vR[i] = 3127;
}
else
{
	vR[i] = 3126;
}

}
else
{
	if(input[i]==(3125+offset0))
{
	vR[i] = 3125;
}
else
{
	vR[i] = 3124;
}

}

}
else
{
	if(input[i]>(3121+offset0))
{
	if(input[i]==(3123+offset0))
{
	vR[i] = 3123;
}
else
{
	vR[i] = 3122;
}

}
else
{
	if(input[i]==(3121+offset0))
{
	vR[i] = 3121;
}
else
{
	vR[i] = 3120;
}

}

}

}

}
else
{
	if(input[i]>(3111+offset0))
{
	if(input[i]>(3115+offset0))
{
	if(input[i]>(3117+offset0))
{
	if(input[i]==(3119+offset0))
{
	vR[i] = 3119;
}
else
{
	vR[i] = 3118;
}

}
else
{
	if(input[i]==(3117+offset0))
{
	vR[i] = 3117;
}
else
{
	vR[i] = 3116;
}

}

}
else
{
	if(input[i]>(3113+offset0))
{
	if(input[i]==(3115+offset0))
{
	vR[i] = 3115;
}
else
{
	vR[i] = 3114;
}

}
else
{
	if(input[i]==(3113+offset0))
{
	vR[i] = 3113;
}
else
{
	vR[i] = 3112;
}

}

}

}
else
{
	if(input[i]>(3107+offset0))
{
	if(input[i]>(3109+offset0))
{
	if(input[i]==(3111+offset0))
{
	vR[i] = 3111;
}
else
{
	vR[i] = 3110;
}

}
else
{
	if(input[i]==(3109+offset0))
{
	vR[i] = 3109;
}
else
{
	vR[i] = 3108;
}

}

}
else
{
	if(input[i]>(3105+offset0))
{
	if(input[i]==(3107+offset0))
{
	vR[i] = 3107;
}
else
{
	vR[i] = 3106;
}

}
else
{
	if(input[i]==(3105+offset0))
{
	vR[i] = 3105;
}
else
{
	vR[i] = 3104;
}

}

}

}

}

}
else
{
	if(input[i]>(3087+offset0))
{
	if(input[i]>(3095+offset0))
{
	if(input[i]>(3099+offset0))
{
	if(input[i]>(3101+offset0))
{
	if(input[i]==(3103+offset0))
{
	vR[i] = 3103;
}
else
{
	vR[i] = 3102;
}

}
else
{
	if(input[i]==(3101+offset0))
{
	vR[i] = 3101;
}
else
{
	vR[i] = 3100;
}

}

}
else
{
	if(input[i]>(3097+offset0))
{
	if(input[i]==(3099+offset0))
{
	vR[i] = 3099;
}
else
{
	vR[i] = 3098;
}

}
else
{
	if(input[i]==(3097+offset0))
{
	vR[i] = 3097;
}
else
{
	vR[i] = 3096;
}

}

}

}
else
{
	if(input[i]>(3091+offset0))
{
	if(input[i]>(3093+offset0))
{
	if(input[i]==(3095+offset0))
{
	vR[i] = 3095;
}
else
{
	vR[i] = 3094;
}

}
else
{
	if(input[i]==(3093+offset0))
{
	vR[i] = 3093;
}
else
{
	vR[i] = 3092;
}

}

}
else
{
	if(input[i]>(3089+offset0))
{
	if(input[i]==(3091+offset0))
{
	vR[i] = 3091;
}
else
{
	vR[i] = 3090;
}

}
else
{
	if(input[i]==(3089+offset0))
{
	vR[i] = 3089;
}
else
{
	vR[i] = 3088;
}

}

}

}

}
else
{
	if(input[i]>(3079+offset0))
{
	if(input[i]>(3083+offset0))
{
	if(input[i]>(3085+offset0))
{
	if(input[i]==(3087+offset0))
{
	vR[i] = 3087;
}
else
{
	vR[i] = 3086;
}

}
else
{
	if(input[i]==(3085+offset0))
{
	vR[i] = 3085;
}
else
{
	vR[i] = 3084;
}

}

}
else
{
	if(input[i]>(3081+offset0))
{
	if(input[i]==(3083+offset0))
{
	vR[i] = 3083;
}
else
{
	vR[i] = 3082;
}

}
else
{
	if(input[i]==(3081+offset0))
{
	vR[i] = 3081;
}
else
{
	vR[i] = 3080;
}

}

}

}
else
{
	if(input[i]>(3075+offset0))
{
	if(input[i]>(3077+offset0))
{
	if(input[i]==(3079+offset0))
{
	vR[i] = 3079;
}
else
{
	vR[i] = 3078;
}

}
else
{
	if(input[i]==(3077+offset0))
{
	vR[i] = 3077;
}
else
{
	vR[i] = 3076;
}

}

}
else
{
	if(input[i]>(3073+offset0))
{
	if(input[i]==(3075+offset0))
{
	vR[i] = 3075;
}
else
{
	vR[i] = 3074;
}

}
else
{
	if(input[i]==(3073+offset0))
{
	vR[i] = 3073;
}
else
{
	vR[i] = 3072;
}

}

}

}

}

}

}

}

}

}

}
else
{
	if(input[i]>(2559+offset0))
{
	if(input[i]>(2815+offset0))
{
	if(input[i]>(2943+offset0))
{
	if(input[i]>(3007+offset0))
{
	if(input[i]>(3039+offset0))
{
	if(input[i]>(3055+offset0))
{
	if(input[i]>(3063+offset0))
{
	if(input[i]>(3067+offset0))
{
	if(input[i]>(3069+offset0))
{
	if(input[i]==(3071+offset0))
{
	vR[i] = 3071;
}
else
{
	vR[i] = 3070;
}

}
else
{
	if(input[i]==(3069+offset0))
{
	vR[i] = 3069;
}
else
{
	vR[i] = 3068;
}

}

}
else
{
	if(input[i]>(3065+offset0))
{
	if(input[i]==(3067+offset0))
{
	vR[i] = 3067;
}
else
{
	vR[i] = 3066;
}

}
else
{
	if(input[i]==(3065+offset0))
{
	vR[i] = 3065;
}
else
{
	vR[i] = 3064;
}

}

}

}
else
{
	if(input[i]>(3059+offset0))
{
	if(input[i]>(3061+offset0))
{
	if(input[i]==(3063+offset0))
{
	vR[i] = 3063;
}
else
{
	vR[i] = 3062;
}

}
else
{
	if(input[i]==(3061+offset0))
{
	vR[i] = 3061;
}
else
{
	vR[i] = 3060;
}

}

}
else
{
	if(input[i]>(3057+offset0))
{
	if(input[i]==(3059+offset0))
{
	vR[i] = 3059;
}
else
{
	vR[i] = 3058;
}

}
else
{
	if(input[i]==(3057+offset0))
{
	vR[i] = 3057;
}
else
{
	vR[i] = 3056;
}

}

}

}

}
else
{
	if(input[i]>(3047+offset0))
{
	if(input[i]>(3051+offset0))
{
	if(input[i]>(3053+offset0))
{
	if(input[i]==(3055+offset0))
{
	vR[i] = 3055;
}
else
{
	vR[i] = 3054;
}

}
else
{
	if(input[i]==(3053+offset0))
{
	vR[i] = 3053;
}
else
{
	vR[i] = 3052;
}

}

}
else
{
	if(input[i]>(3049+offset0))
{
	if(input[i]==(3051+offset0))
{
	vR[i] = 3051;
}
else
{
	vR[i] = 3050;
}

}
else
{
	if(input[i]==(3049+offset0))
{
	vR[i] = 3049;
}
else
{
	vR[i] = 3048;
}

}

}

}
else
{
	if(input[i]>(3043+offset0))
{
	if(input[i]>(3045+offset0))
{
	if(input[i]==(3047+offset0))
{
	vR[i] = 3047;
}
else
{
	vR[i] = 3046;
}

}
else
{
	if(input[i]==(3045+offset0))
{
	vR[i] = 3045;
}
else
{
	vR[i] = 3044;
}

}

}
else
{
	if(input[i]>(3041+offset0))
{
	if(input[i]==(3043+offset0))
{
	vR[i] = 3043;
}
else
{
	vR[i] = 3042;
}

}
else
{
	if(input[i]==(3041+offset0))
{
	vR[i] = 3041;
}
else
{
	vR[i] = 3040;
}

}

}

}

}

}
else
{
	if(input[i]>(3023+offset0))
{
	if(input[i]>(3031+offset0))
{
	if(input[i]>(3035+offset0))
{
	if(input[i]>(3037+offset0))
{
	if(input[i]==(3039+offset0))
{
	vR[i] = 3039;
}
else
{
	vR[i] = 3038;
}

}
else
{
	if(input[i]==(3037+offset0))
{
	vR[i] = 3037;
}
else
{
	vR[i] = 3036;
}

}

}
else
{
	if(input[i]>(3033+offset0))
{
	if(input[i]==(3035+offset0))
{
	vR[i] = 3035;
}
else
{
	vR[i] = 3034;
}

}
else
{
	if(input[i]==(3033+offset0))
{
	vR[i] = 3033;
}
else
{
	vR[i] = 3032;
}

}

}

}
else
{
	if(input[i]>(3027+offset0))
{
	if(input[i]>(3029+offset0))
{
	if(input[i]==(3031+offset0))
{
	vR[i] = 3031;
}
else
{
	vR[i] = 3030;
}

}
else
{
	if(input[i]==(3029+offset0))
{
	vR[i] = 3029;
}
else
{
	vR[i] = 3028;
}

}

}
else
{
	if(input[i]>(3025+offset0))
{
	if(input[i]==(3027+offset0))
{
	vR[i] = 3027;
}
else
{
	vR[i] = 3026;
}

}
else
{
	if(input[i]==(3025+offset0))
{
	vR[i] = 3025;
}
else
{
	vR[i] = 3024;
}

}

}

}

}
else
{
	if(input[i]>(3015+offset0))
{
	if(input[i]>(3019+offset0))
{
	if(input[i]>(3021+offset0))
{
	if(input[i]==(3023+offset0))
{
	vR[i] = 3023;
}
else
{
	vR[i] = 3022;
}

}
else
{
	if(input[i]==(3021+offset0))
{
	vR[i] = 3021;
}
else
{
	vR[i] = 3020;
}

}

}
else
{
	if(input[i]>(3017+offset0))
{
	if(input[i]==(3019+offset0))
{
	vR[i] = 3019;
}
else
{
	vR[i] = 3018;
}

}
else
{
	if(input[i]==(3017+offset0))
{
	vR[i] = 3017;
}
else
{
	vR[i] = 3016;
}

}

}

}
else
{
	if(input[i]>(3011+offset0))
{
	if(input[i]>(3013+offset0))
{
	if(input[i]==(3015+offset0))
{
	vR[i] = 3015;
}
else
{
	vR[i] = 3014;
}

}
else
{
	if(input[i]==(3013+offset0))
{
	vR[i] = 3013;
}
else
{
	vR[i] = 3012;
}

}

}
else
{
	if(input[i]>(3009+offset0))
{
	if(input[i]==(3011+offset0))
{
	vR[i] = 3011;
}
else
{
	vR[i] = 3010;
}

}
else
{
	if(input[i]==(3009+offset0))
{
	vR[i] = 3009;
}
else
{
	vR[i] = 3008;
}

}

}

}

}

}

}
else
{
	if(input[i]>(2975+offset0))
{
	if(input[i]>(2991+offset0))
{
	if(input[i]>(2999+offset0))
{
	if(input[i]>(3003+offset0))
{
	if(input[i]>(3005+offset0))
{
	if(input[i]==(3007+offset0))
{
	vR[i] = 3007;
}
else
{
	vR[i] = 3006;
}

}
else
{
	if(input[i]==(3005+offset0))
{
	vR[i] = 3005;
}
else
{
	vR[i] = 3004;
}

}

}
else
{
	if(input[i]>(3001+offset0))
{
	if(input[i]==(3003+offset0))
{
	vR[i] = 3003;
}
else
{
	vR[i] = 3002;
}

}
else
{
	if(input[i]==(3001+offset0))
{
	vR[i] = 3001;
}
else
{
	vR[i] = 3000;
}

}

}

}
else
{
	if(input[i]>(2995+offset0))
{
	if(input[i]>(2997+offset0))
{
	if(input[i]==(2999+offset0))
{
	vR[i] = 2999;
}
else
{
	vR[i] = 2998;
}

}
else
{
	if(input[i]==(2997+offset0))
{
	vR[i] = 2997;
}
else
{
	vR[i] = 2996;
}

}

}
else
{
	if(input[i]>(2993+offset0))
{
	if(input[i]==(2995+offset0))
{
	vR[i] = 2995;
}
else
{
	vR[i] = 2994;
}

}
else
{
	if(input[i]==(2993+offset0))
{
	vR[i] = 2993;
}
else
{
	vR[i] = 2992;
}

}

}

}

}
else
{
	if(input[i]>(2983+offset0))
{
	if(input[i]>(2987+offset0))
{
	if(input[i]>(2989+offset0))
{
	if(input[i]==(2991+offset0))
{
	vR[i] = 2991;
}
else
{
	vR[i] = 2990;
}

}
else
{
	if(input[i]==(2989+offset0))
{
	vR[i] = 2989;
}
else
{
	vR[i] = 2988;
}

}

}
else
{
	if(input[i]>(2985+offset0))
{
	if(input[i]==(2987+offset0))
{
	vR[i] = 2987;
}
else
{
	vR[i] = 2986;
}

}
else
{
	if(input[i]==(2985+offset0))
{
	vR[i] = 2985;
}
else
{
	vR[i] = 2984;
}

}

}

}
else
{
	if(input[i]>(2979+offset0))
{
	if(input[i]>(2981+offset0))
{
	if(input[i]==(2983+offset0))
{
	vR[i] = 2983;
}
else
{
	vR[i] = 2982;
}

}
else
{
	if(input[i]==(2981+offset0))
{
	vR[i] = 2981;
}
else
{
	vR[i] = 2980;
}

}

}
else
{
	if(input[i]>(2977+offset0))
{
	if(input[i]==(2979+offset0))
{
	vR[i] = 2979;
}
else
{
	vR[i] = 2978;
}

}
else
{
	if(input[i]==(2977+offset0))
{
	vR[i] = 2977;
}
else
{
	vR[i] = 2976;
}

}

}

}

}

}
else
{
	if(input[i]>(2959+offset0))
{
	if(input[i]>(2967+offset0))
{
	if(input[i]>(2971+offset0))
{
	if(input[i]>(2973+offset0))
{
	if(input[i]==(2975+offset0))
{
	vR[i] = 2975;
}
else
{
	vR[i] = 2974;
}

}
else
{
	if(input[i]==(2973+offset0))
{
	vR[i] = 2973;
}
else
{
	vR[i] = 2972;
}

}

}
else
{
	if(input[i]>(2969+offset0))
{
	if(input[i]==(2971+offset0))
{
	vR[i] = 2971;
}
else
{
	vR[i] = 2970;
}

}
else
{
	if(input[i]==(2969+offset0))
{
	vR[i] = 2969;
}
else
{
	vR[i] = 2968;
}

}

}

}
else
{
	if(input[i]>(2963+offset0))
{
	if(input[i]>(2965+offset0))
{
	if(input[i]==(2967+offset0))
{
	vR[i] = 2967;
}
else
{
	vR[i] = 2966;
}

}
else
{
	if(input[i]==(2965+offset0))
{
	vR[i] = 2965;
}
else
{
	vR[i] = 2964;
}

}

}
else
{
	if(input[i]>(2961+offset0))
{
	if(input[i]==(2963+offset0))
{
	vR[i] = 2963;
}
else
{
	vR[i] = 2962;
}

}
else
{
	if(input[i]==(2961+offset0))
{
	vR[i] = 2961;
}
else
{
	vR[i] = 2960;
}

}

}

}

}
else
{
	if(input[i]>(2951+offset0))
{
	if(input[i]>(2955+offset0))
{
	if(input[i]>(2957+offset0))
{
	if(input[i]==(2959+offset0))
{
	vR[i] = 2959;
}
else
{
	vR[i] = 2958;
}

}
else
{
	if(input[i]==(2957+offset0))
{
	vR[i] = 2957;
}
else
{
	vR[i] = 2956;
}

}

}
else
{
	if(input[i]>(2953+offset0))
{
	if(input[i]==(2955+offset0))
{
	vR[i] = 2955;
}
else
{
	vR[i] = 2954;
}

}
else
{
	if(input[i]==(2953+offset0))
{
	vR[i] = 2953;
}
else
{
	vR[i] = 2952;
}

}

}

}
else
{
	if(input[i]>(2947+offset0))
{
	if(input[i]>(2949+offset0))
{
	if(input[i]==(2951+offset0))
{
	vR[i] = 2951;
}
else
{
	vR[i] = 2950;
}

}
else
{
	if(input[i]==(2949+offset0))
{
	vR[i] = 2949;
}
else
{
	vR[i] = 2948;
}

}

}
else
{
	if(input[i]>(2945+offset0))
{
	if(input[i]==(2947+offset0))
{
	vR[i] = 2947;
}
else
{
	vR[i] = 2946;
}

}
else
{
	if(input[i]==(2945+offset0))
{
	vR[i] = 2945;
}
else
{
	vR[i] = 2944;
}

}

}

}

}

}

}

}
else
{
	if(input[i]>(2879+offset0))
{
	if(input[i]>(2911+offset0))
{
	if(input[i]>(2927+offset0))
{
	if(input[i]>(2935+offset0))
{
	if(input[i]>(2939+offset0))
{
	if(input[i]>(2941+offset0))
{
	if(input[i]==(2943+offset0))
{
	vR[i] = 2943;
}
else
{
	vR[i] = 2942;
}

}
else
{
	if(input[i]==(2941+offset0))
{
	vR[i] = 2941;
}
else
{
	vR[i] = 2940;
}

}

}
else
{
	if(input[i]>(2937+offset0))
{
	if(input[i]==(2939+offset0))
{
	vR[i] = 2939;
}
else
{
	vR[i] = 2938;
}

}
else
{
	if(input[i]==(2937+offset0))
{
	vR[i] = 2937;
}
else
{
	vR[i] = 2936;
}

}

}

}
else
{
	if(input[i]>(2931+offset0))
{
	if(input[i]>(2933+offset0))
{
	if(input[i]==(2935+offset0))
{
	vR[i] = 2935;
}
else
{
	vR[i] = 2934;
}

}
else
{
	if(input[i]==(2933+offset0))
{
	vR[i] = 2933;
}
else
{
	vR[i] = 2932;
}

}

}
else
{
	if(input[i]>(2929+offset0))
{
	if(input[i]==(2931+offset0))
{
	vR[i] = 2931;
}
else
{
	vR[i] = 2930;
}

}
else
{
	if(input[i]==(2929+offset0))
{
	vR[i] = 2929;
}
else
{
	vR[i] = 2928;
}

}

}

}

}
else
{
	if(input[i]>(2919+offset0))
{
	if(input[i]>(2923+offset0))
{
	if(input[i]>(2925+offset0))
{
	if(input[i]==(2927+offset0))
{
	vR[i] = 2927;
}
else
{
	vR[i] = 2926;
}

}
else
{
	if(input[i]==(2925+offset0))
{
	vR[i] = 2925;
}
else
{
	vR[i] = 2924;
}

}

}
else
{
	if(input[i]>(2921+offset0))
{
	if(input[i]==(2923+offset0))
{
	vR[i] = 2923;
}
else
{
	vR[i] = 2922;
}

}
else
{
	if(input[i]==(2921+offset0))
{
	vR[i] = 2921;
}
else
{
	vR[i] = 2920;
}

}

}

}
else
{
	if(input[i]>(2915+offset0))
{
	if(input[i]>(2917+offset0))
{
	if(input[i]==(2919+offset0))
{
	vR[i] = 2919;
}
else
{
	vR[i] = 2918;
}

}
else
{
	if(input[i]==(2917+offset0))
{
	vR[i] = 2917;
}
else
{
	vR[i] = 2916;
}

}

}
else
{
	if(input[i]>(2913+offset0))
{
	if(input[i]==(2915+offset0))
{
	vR[i] = 2915;
}
else
{
	vR[i] = 2914;
}

}
else
{
	if(input[i]==(2913+offset0))
{
	vR[i] = 2913;
}
else
{
	vR[i] = 2912;
}

}

}

}

}

}
else
{
	if(input[i]>(2895+offset0))
{
	if(input[i]>(2903+offset0))
{
	if(input[i]>(2907+offset0))
{
	if(input[i]>(2909+offset0))
{
	if(input[i]==(2911+offset0))
{
	vR[i] = 2911;
}
else
{
	vR[i] = 2910;
}

}
else
{
	if(input[i]==(2909+offset0))
{
	vR[i] = 2909;
}
else
{
	vR[i] = 2908;
}

}

}
else
{
	if(input[i]>(2905+offset0))
{
	if(input[i]==(2907+offset0))
{
	vR[i] = 2907;
}
else
{
	vR[i] = 2906;
}

}
else
{
	if(input[i]==(2905+offset0))
{
	vR[i] = 2905;
}
else
{
	vR[i] = 2904;
}

}

}

}
else
{
	if(input[i]>(2899+offset0))
{
	if(input[i]>(2901+offset0))
{
	if(input[i]==(2903+offset0))
{
	vR[i] = 2903;
}
else
{
	vR[i] = 2902;
}

}
else
{
	if(input[i]==(2901+offset0))
{
	vR[i] = 2901;
}
else
{
	vR[i] = 2900;
}

}

}
else
{
	if(input[i]>(2897+offset0))
{
	if(input[i]==(2899+offset0))
{
	vR[i] = 2899;
}
else
{
	vR[i] = 2898;
}

}
else
{
	if(input[i]==(2897+offset0))
{
	vR[i] = 2897;
}
else
{
	vR[i] = 2896;
}

}

}

}

}
else
{
	if(input[i]>(2887+offset0))
{
	if(input[i]>(2891+offset0))
{
	if(input[i]>(2893+offset0))
{
	if(input[i]==(2895+offset0))
{
	vR[i] = 2895;
}
else
{
	vR[i] = 2894;
}

}
else
{
	if(input[i]==(2893+offset0))
{
	vR[i] = 2893;
}
else
{
	vR[i] = 2892;
}

}

}
else
{
	if(input[i]>(2889+offset0))
{
	if(input[i]==(2891+offset0))
{
	vR[i] = 2891;
}
else
{
	vR[i] = 2890;
}

}
else
{
	if(input[i]==(2889+offset0))
{
	vR[i] = 2889;
}
else
{
	vR[i] = 2888;
}

}

}

}
else
{
	if(input[i]>(2883+offset0))
{
	if(input[i]>(2885+offset0))
{
	if(input[i]==(2887+offset0))
{
	vR[i] = 2887;
}
else
{
	vR[i] = 2886;
}

}
else
{
	if(input[i]==(2885+offset0))
{
	vR[i] = 2885;
}
else
{
	vR[i] = 2884;
}

}

}
else
{
	if(input[i]>(2881+offset0))
{
	if(input[i]==(2883+offset0))
{
	vR[i] = 2883;
}
else
{
	vR[i] = 2882;
}

}
else
{
	if(input[i]==(2881+offset0))
{
	vR[i] = 2881;
}
else
{
	vR[i] = 2880;
}

}

}

}

}

}

}
else
{
	if(input[i]>(2847+offset0))
{
	if(input[i]>(2863+offset0))
{
	if(input[i]>(2871+offset0))
{
	if(input[i]>(2875+offset0))
{
	if(input[i]>(2877+offset0))
{
	if(input[i]==(2879+offset0))
{
	vR[i] = 2879;
}
else
{
	vR[i] = 2878;
}

}
else
{
	if(input[i]==(2877+offset0))
{
	vR[i] = 2877;
}
else
{
	vR[i] = 2876;
}

}

}
else
{
	if(input[i]>(2873+offset0))
{
	if(input[i]==(2875+offset0))
{
	vR[i] = 2875;
}
else
{
	vR[i] = 2874;
}

}
else
{
	if(input[i]==(2873+offset0))
{
	vR[i] = 2873;
}
else
{
	vR[i] = 2872;
}

}

}

}
else
{
	if(input[i]>(2867+offset0))
{
	if(input[i]>(2869+offset0))
{
	if(input[i]==(2871+offset0))
{
	vR[i] = 2871;
}
else
{
	vR[i] = 2870;
}

}
else
{
	if(input[i]==(2869+offset0))
{
	vR[i] = 2869;
}
else
{
	vR[i] = 2868;
}

}

}
else
{
	if(input[i]>(2865+offset0))
{
	if(input[i]==(2867+offset0))
{
	vR[i] = 2867;
}
else
{
	vR[i] = 2866;
}

}
else
{
	if(input[i]==(2865+offset0))
{
	vR[i] = 2865;
}
else
{
	vR[i] = 2864;
}

}

}

}

}
else
{
	if(input[i]>(2855+offset0))
{
	if(input[i]>(2859+offset0))
{
	if(input[i]>(2861+offset0))
{
	if(input[i]==(2863+offset0))
{
	vR[i] = 2863;
}
else
{
	vR[i] = 2862;
}

}
else
{
	if(input[i]==(2861+offset0))
{
	vR[i] = 2861;
}
else
{
	vR[i] = 2860;
}

}

}
else
{
	if(input[i]>(2857+offset0))
{
	if(input[i]==(2859+offset0))
{
	vR[i] = 2859;
}
else
{
	vR[i] = 2858;
}

}
else
{
	if(input[i]==(2857+offset0))
{
	vR[i] = 2857;
}
else
{
	vR[i] = 2856;
}

}

}

}
else
{
	if(input[i]>(2851+offset0))
{
	if(input[i]>(2853+offset0))
{
	if(input[i]==(2855+offset0))
{
	vR[i] = 2855;
}
else
{
	vR[i] = 2854;
}

}
else
{
	if(input[i]==(2853+offset0))
{
	vR[i] = 2853;
}
else
{
	vR[i] = 2852;
}

}

}
else
{
	if(input[i]>(2849+offset0))
{
	if(input[i]==(2851+offset0))
{
	vR[i] = 2851;
}
else
{
	vR[i] = 2850;
}

}
else
{
	if(input[i]==(2849+offset0))
{
	vR[i] = 2849;
}
else
{
	vR[i] = 2848;
}

}

}

}

}

}
else
{
	if(input[i]>(2831+offset0))
{
	if(input[i]>(2839+offset0))
{
	if(input[i]>(2843+offset0))
{
	if(input[i]>(2845+offset0))
{
	if(input[i]==(2847+offset0))
{
	vR[i] = 2847;
}
else
{
	vR[i] = 2846;
}

}
else
{
	if(input[i]==(2845+offset0))
{
	vR[i] = 2845;
}
else
{
	vR[i] = 2844;
}

}

}
else
{
	if(input[i]>(2841+offset0))
{
	if(input[i]==(2843+offset0))
{
	vR[i] = 2843;
}
else
{
	vR[i] = 2842;
}

}
else
{
	if(input[i]==(2841+offset0))
{
	vR[i] = 2841;
}
else
{
	vR[i] = 2840;
}

}

}

}
else
{
	if(input[i]>(2835+offset0))
{
	if(input[i]>(2837+offset0))
{
	if(input[i]==(2839+offset0))
{
	vR[i] = 2839;
}
else
{
	vR[i] = 2838;
}

}
else
{
	if(input[i]==(2837+offset0))
{
	vR[i] = 2837;
}
else
{
	vR[i] = 2836;
}

}

}
else
{
	if(input[i]>(2833+offset0))
{
	if(input[i]==(2835+offset0))
{
	vR[i] = 2835;
}
else
{
	vR[i] = 2834;
}

}
else
{
	if(input[i]==(2833+offset0))
{
	vR[i] = 2833;
}
else
{
	vR[i] = 2832;
}

}

}

}

}
else
{
	if(input[i]>(2823+offset0))
{
	if(input[i]>(2827+offset0))
{
	if(input[i]>(2829+offset0))
{
	if(input[i]==(2831+offset0))
{
	vR[i] = 2831;
}
else
{
	vR[i] = 2830;
}

}
else
{
	if(input[i]==(2829+offset0))
{
	vR[i] = 2829;
}
else
{
	vR[i] = 2828;
}

}

}
else
{
	if(input[i]>(2825+offset0))
{
	if(input[i]==(2827+offset0))
{
	vR[i] = 2827;
}
else
{
	vR[i] = 2826;
}

}
else
{
	if(input[i]==(2825+offset0))
{
	vR[i] = 2825;
}
else
{
	vR[i] = 2824;
}

}

}

}
else
{
	if(input[i]>(2819+offset0))
{
	if(input[i]>(2821+offset0))
{
	if(input[i]==(2823+offset0))
{
	vR[i] = 2823;
}
else
{
	vR[i] = 2822;
}

}
else
{
	if(input[i]==(2821+offset0))
{
	vR[i] = 2821;
}
else
{
	vR[i] = 2820;
}

}

}
else
{
	if(input[i]>(2817+offset0))
{
	if(input[i]==(2819+offset0))
{
	vR[i] = 2819;
}
else
{
	vR[i] = 2818;
}

}
else
{
	if(input[i]==(2817+offset0))
{
	vR[i] = 2817;
}
else
{
	vR[i] = 2816;
}

}

}

}

}

}

}

}

}
else
{
	if(input[i]>(2687+offset0))
{
	if(input[i]>(2751+offset0))
{
	if(input[i]>(2783+offset0))
{
	if(input[i]>(2799+offset0))
{
	if(input[i]>(2807+offset0))
{
	if(input[i]>(2811+offset0))
{
	if(input[i]>(2813+offset0))
{
	if(input[i]==(2815+offset0))
{
	vR[i] = 2815;
}
else
{
	vR[i] = 2814;
}

}
else
{
	if(input[i]==(2813+offset0))
{
	vR[i] = 2813;
}
else
{
	vR[i] = 2812;
}

}

}
else
{
	if(input[i]>(2809+offset0))
{
	if(input[i]==(2811+offset0))
{
	vR[i] = 2811;
}
else
{
	vR[i] = 2810;
}

}
else
{
	if(input[i]==(2809+offset0))
{
	vR[i] = 2809;
}
else
{
	vR[i] = 2808;
}

}

}

}
else
{
	if(input[i]>(2803+offset0))
{
	if(input[i]>(2805+offset0))
{
	if(input[i]==(2807+offset0))
{
	vR[i] = 2807;
}
else
{
	vR[i] = 2806;
}

}
else
{
	if(input[i]==(2805+offset0))
{
	vR[i] = 2805;
}
else
{
	vR[i] = 2804;
}

}

}
else
{
	if(input[i]>(2801+offset0))
{
	if(input[i]==(2803+offset0))
{
	vR[i] = 2803;
}
else
{
	vR[i] = 2802;
}

}
else
{
	if(input[i]==(2801+offset0))
{
	vR[i] = 2801;
}
else
{
	vR[i] = 2800;
}

}

}

}

}
else
{
	if(input[i]>(2791+offset0))
{
	if(input[i]>(2795+offset0))
{
	if(input[i]>(2797+offset0))
{
	if(input[i]==(2799+offset0))
{
	vR[i] = 2799;
}
else
{
	vR[i] = 2798;
}

}
else
{
	if(input[i]==(2797+offset0))
{
	vR[i] = 2797;
}
else
{
	vR[i] = 2796;
}

}

}
else
{
	if(input[i]>(2793+offset0))
{
	if(input[i]==(2795+offset0))
{
	vR[i] = 2795;
}
else
{
	vR[i] = 2794;
}

}
else
{
	if(input[i]==(2793+offset0))
{
	vR[i] = 2793;
}
else
{
	vR[i] = 2792;
}

}

}

}
else
{
	if(input[i]>(2787+offset0))
{
	if(input[i]>(2789+offset0))
{
	if(input[i]==(2791+offset0))
{
	vR[i] = 2791;
}
else
{
	vR[i] = 2790;
}

}
else
{
	if(input[i]==(2789+offset0))
{
	vR[i] = 2789;
}
else
{
	vR[i] = 2788;
}

}

}
else
{
	if(input[i]>(2785+offset0))
{
	if(input[i]==(2787+offset0))
{
	vR[i] = 2787;
}
else
{
	vR[i] = 2786;
}

}
else
{
	if(input[i]==(2785+offset0))
{
	vR[i] = 2785;
}
else
{
	vR[i] = 2784;
}

}

}

}

}

}
else
{
	if(input[i]>(2767+offset0))
{
	if(input[i]>(2775+offset0))
{
	if(input[i]>(2779+offset0))
{
	if(input[i]>(2781+offset0))
{
	if(input[i]==(2783+offset0))
{
	vR[i] = 2783;
}
else
{
	vR[i] = 2782;
}

}
else
{
	if(input[i]==(2781+offset0))
{
	vR[i] = 2781;
}
else
{
	vR[i] = 2780;
}

}

}
else
{
	if(input[i]>(2777+offset0))
{
	if(input[i]==(2779+offset0))
{
	vR[i] = 2779;
}
else
{
	vR[i] = 2778;
}

}
else
{
	if(input[i]==(2777+offset0))
{
	vR[i] = 2777;
}
else
{
	vR[i] = 2776;
}

}

}

}
else
{
	if(input[i]>(2771+offset0))
{
	if(input[i]>(2773+offset0))
{
	if(input[i]==(2775+offset0))
{
	vR[i] = 2775;
}
else
{
	vR[i] = 2774;
}

}
else
{
	if(input[i]==(2773+offset0))
{
	vR[i] = 2773;
}
else
{
	vR[i] = 2772;
}

}

}
else
{
	if(input[i]>(2769+offset0))
{
	if(input[i]==(2771+offset0))
{
	vR[i] = 2771;
}
else
{
	vR[i] = 2770;
}

}
else
{
	if(input[i]==(2769+offset0))
{
	vR[i] = 2769;
}
else
{
	vR[i] = 2768;
}

}

}

}

}
else
{
	if(input[i]>(2759+offset0))
{
	if(input[i]>(2763+offset0))
{
	if(input[i]>(2765+offset0))
{
	if(input[i]==(2767+offset0))
{
	vR[i] = 2767;
}
else
{
	vR[i] = 2766;
}

}
else
{
	if(input[i]==(2765+offset0))
{
	vR[i] = 2765;
}
else
{
	vR[i] = 2764;
}

}

}
else
{
	if(input[i]>(2761+offset0))
{
	if(input[i]==(2763+offset0))
{
	vR[i] = 2763;
}
else
{
	vR[i] = 2762;
}

}
else
{
	if(input[i]==(2761+offset0))
{
	vR[i] = 2761;
}
else
{
	vR[i] = 2760;
}

}

}

}
else
{
	if(input[i]>(2755+offset0))
{
	if(input[i]>(2757+offset0))
{
	if(input[i]==(2759+offset0))
{
	vR[i] = 2759;
}
else
{
	vR[i] = 2758;
}

}
else
{
	if(input[i]==(2757+offset0))
{
	vR[i] = 2757;
}
else
{
	vR[i] = 2756;
}

}

}
else
{
	if(input[i]>(2753+offset0))
{
	if(input[i]==(2755+offset0))
{
	vR[i] = 2755;
}
else
{
	vR[i] = 2754;
}

}
else
{
	if(input[i]==(2753+offset0))
{
	vR[i] = 2753;
}
else
{
	vR[i] = 2752;
}

}

}

}

}

}

}
else
{
	if(input[i]>(2719+offset0))
{
	if(input[i]>(2735+offset0))
{
	if(input[i]>(2743+offset0))
{
	if(input[i]>(2747+offset0))
{
	if(input[i]>(2749+offset0))
{
	if(input[i]==(2751+offset0))
{
	vR[i] = 2751;
}
else
{
	vR[i] = 2750;
}

}
else
{
	if(input[i]==(2749+offset0))
{
	vR[i] = 2749;
}
else
{
	vR[i] = 2748;
}

}

}
else
{
	if(input[i]>(2745+offset0))
{
	if(input[i]==(2747+offset0))
{
	vR[i] = 2747;
}
else
{
	vR[i] = 2746;
}

}
else
{
	if(input[i]==(2745+offset0))
{
	vR[i] = 2745;
}
else
{
	vR[i] = 2744;
}

}

}

}
else
{
	if(input[i]>(2739+offset0))
{
	if(input[i]>(2741+offset0))
{
	if(input[i]==(2743+offset0))
{
	vR[i] = 2743;
}
else
{
	vR[i] = 2742;
}

}
else
{
	if(input[i]==(2741+offset0))
{
	vR[i] = 2741;
}
else
{
	vR[i] = 2740;
}

}

}
else
{
	if(input[i]>(2737+offset0))
{
	if(input[i]==(2739+offset0))
{
	vR[i] = 2739;
}
else
{
	vR[i] = 2738;
}

}
else
{
	if(input[i]==(2737+offset0))
{
	vR[i] = 2737;
}
else
{
	vR[i] = 2736;
}

}

}

}

}
else
{
	if(input[i]>(2727+offset0))
{
	if(input[i]>(2731+offset0))
{
	if(input[i]>(2733+offset0))
{
	if(input[i]==(2735+offset0))
{
	vR[i] = 2735;
}
else
{
	vR[i] = 2734;
}

}
else
{
	if(input[i]==(2733+offset0))
{
	vR[i] = 2733;
}
else
{
	vR[i] = 2732;
}

}

}
else
{
	if(input[i]>(2729+offset0))
{
	if(input[i]==(2731+offset0))
{
	vR[i] = 2731;
}
else
{
	vR[i] = 2730;
}

}
else
{
	if(input[i]==(2729+offset0))
{
	vR[i] = 2729;
}
else
{
	vR[i] = 2728;
}

}

}

}
else
{
	if(input[i]>(2723+offset0))
{
	if(input[i]>(2725+offset0))
{
	if(input[i]==(2727+offset0))
{
	vR[i] = 2727;
}
else
{
	vR[i] = 2726;
}

}
else
{
	if(input[i]==(2725+offset0))
{
	vR[i] = 2725;
}
else
{
	vR[i] = 2724;
}

}

}
else
{
	if(input[i]>(2721+offset0))
{
	if(input[i]==(2723+offset0))
{
	vR[i] = 2723;
}
else
{
	vR[i] = 2722;
}

}
else
{
	if(input[i]==(2721+offset0))
{
	vR[i] = 2721;
}
else
{
	vR[i] = 2720;
}

}

}

}

}

}
else
{
	if(input[i]>(2703+offset0))
{
	if(input[i]>(2711+offset0))
{
	if(input[i]>(2715+offset0))
{
	if(input[i]>(2717+offset0))
{
	if(input[i]==(2719+offset0))
{
	vR[i] = 2719;
}
else
{
	vR[i] = 2718;
}

}
else
{
	if(input[i]==(2717+offset0))
{
	vR[i] = 2717;
}
else
{
	vR[i] = 2716;
}

}

}
else
{
	if(input[i]>(2713+offset0))
{
	if(input[i]==(2715+offset0))
{
	vR[i] = 2715;
}
else
{
	vR[i] = 2714;
}

}
else
{
	if(input[i]==(2713+offset0))
{
	vR[i] = 2713;
}
else
{
	vR[i] = 2712;
}

}

}

}
else
{
	if(input[i]>(2707+offset0))
{
	if(input[i]>(2709+offset0))
{
	if(input[i]==(2711+offset0))
{
	vR[i] = 2711;
}
else
{
	vR[i] = 2710;
}

}
else
{
	if(input[i]==(2709+offset0))
{
	vR[i] = 2709;
}
else
{
	vR[i] = 2708;
}

}

}
else
{
	if(input[i]>(2705+offset0))
{
	if(input[i]==(2707+offset0))
{
	vR[i] = 2707;
}
else
{
	vR[i] = 2706;
}

}
else
{
	if(input[i]==(2705+offset0))
{
	vR[i] = 2705;
}
else
{
	vR[i] = 2704;
}

}

}

}

}
else
{
	if(input[i]>(2695+offset0))
{
	if(input[i]>(2699+offset0))
{
	if(input[i]>(2701+offset0))
{
	if(input[i]==(2703+offset0))
{
	vR[i] = 2703;
}
else
{
	vR[i] = 2702;
}

}
else
{
	if(input[i]==(2701+offset0))
{
	vR[i] = 2701;
}
else
{
	vR[i] = 2700;
}

}

}
else
{
	if(input[i]>(2697+offset0))
{
	if(input[i]==(2699+offset0))
{
	vR[i] = 2699;
}
else
{
	vR[i] = 2698;
}

}
else
{
	if(input[i]==(2697+offset0))
{
	vR[i] = 2697;
}
else
{
	vR[i] = 2696;
}

}

}

}
else
{
	if(input[i]>(2691+offset0))
{
	if(input[i]>(2693+offset0))
{
	if(input[i]==(2695+offset0))
{
	vR[i] = 2695;
}
else
{
	vR[i] = 2694;
}

}
else
{
	if(input[i]==(2693+offset0))
{
	vR[i] = 2693;
}
else
{
	vR[i] = 2692;
}

}

}
else
{
	if(input[i]>(2689+offset0))
{
	if(input[i]==(2691+offset0))
{
	vR[i] = 2691;
}
else
{
	vR[i] = 2690;
}

}
else
{
	if(input[i]==(2689+offset0))
{
	vR[i] = 2689;
}
else
{
	vR[i] = 2688;
}

}

}

}

}

}

}

}
else
{
	if(input[i]>(2623+offset0))
{
	if(input[i]>(2655+offset0))
{
	if(input[i]>(2671+offset0))
{
	if(input[i]>(2679+offset0))
{
	if(input[i]>(2683+offset0))
{
	if(input[i]>(2685+offset0))
{
	if(input[i]==(2687+offset0))
{
	vR[i] = 2687;
}
else
{
	vR[i] = 2686;
}

}
else
{
	if(input[i]==(2685+offset0))
{
	vR[i] = 2685;
}
else
{
	vR[i] = 2684;
}

}

}
else
{
	if(input[i]>(2681+offset0))
{
	if(input[i]==(2683+offset0))
{
	vR[i] = 2683;
}
else
{
	vR[i] = 2682;
}

}
else
{
	if(input[i]==(2681+offset0))
{
	vR[i] = 2681;
}
else
{
	vR[i] = 2680;
}

}

}

}
else
{
	if(input[i]>(2675+offset0))
{
	if(input[i]>(2677+offset0))
{
	if(input[i]==(2679+offset0))
{
	vR[i] = 2679;
}
else
{
	vR[i] = 2678;
}

}
else
{
	if(input[i]==(2677+offset0))
{
	vR[i] = 2677;
}
else
{
	vR[i] = 2676;
}

}

}
else
{
	if(input[i]>(2673+offset0))
{
	if(input[i]==(2675+offset0))
{
	vR[i] = 2675;
}
else
{
	vR[i] = 2674;
}

}
else
{
	if(input[i]==(2673+offset0))
{
	vR[i] = 2673;
}
else
{
	vR[i] = 2672;
}

}

}

}

}
else
{
	if(input[i]>(2663+offset0))
{
	if(input[i]>(2667+offset0))
{
	if(input[i]>(2669+offset0))
{
	if(input[i]==(2671+offset0))
{
	vR[i] = 2671;
}
else
{
	vR[i] = 2670;
}

}
else
{
	if(input[i]==(2669+offset0))
{
	vR[i] = 2669;
}
else
{
	vR[i] = 2668;
}

}

}
else
{
	if(input[i]>(2665+offset0))
{
	if(input[i]==(2667+offset0))
{
	vR[i] = 2667;
}
else
{
	vR[i] = 2666;
}

}
else
{
	if(input[i]==(2665+offset0))
{
	vR[i] = 2665;
}
else
{
	vR[i] = 2664;
}

}

}

}
else
{
	if(input[i]>(2659+offset0))
{
	if(input[i]>(2661+offset0))
{
	if(input[i]==(2663+offset0))
{
	vR[i] = 2663;
}
else
{
	vR[i] = 2662;
}

}
else
{
	if(input[i]==(2661+offset0))
{
	vR[i] = 2661;
}
else
{
	vR[i] = 2660;
}

}

}
else
{
	if(input[i]>(2657+offset0))
{
	if(input[i]==(2659+offset0))
{
	vR[i] = 2659;
}
else
{
	vR[i] = 2658;
}

}
else
{
	if(input[i]==(2657+offset0))
{
	vR[i] = 2657;
}
else
{
	vR[i] = 2656;
}

}

}

}

}

}
else
{
	if(input[i]>(2639+offset0))
{
	if(input[i]>(2647+offset0))
{
	if(input[i]>(2651+offset0))
{
	if(input[i]>(2653+offset0))
{
	if(input[i]==(2655+offset0))
{
	vR[i] = 2655;
}
else
{
	vR[i] = 2654;
}

}
else
{
	if(input[i]==(2653+offset0))
{
	vR[i] = 2653;
}
else
{
	vR[i] = 2652;
}

}

}
else
{
	if(input[i]>(2649+offset0))
{
	if(input[i]==(2651+offset0))
{
	vR[i] = 2651;
}
else
{
	vR[i] = 2650;
}

}
else
{
	if(input[i]==(2649+offset0))
{
	vR[i] = 2649;
}
else
{
	vR[i] = 2648;
}

}

}

}
else
{
	if(input[i]>(2643+offset0))
{
	if(input[i]>(2645+offset0))
{
	if(input[i]==(2647+offset0))
{
	vR[i] = 2647;
}
else
{
	vR[i] = 2646;
}

}
else
{
	if(input[i]==(2645+offset0))
{
	vR[i] = 2645;
}
else
{
	vR[i] = 2644;
}

}

}
else
{
	if(input[i]>(2641+offset0))
{
	if(input[i]==(2643+offset0))
{
	vR[i] = 2643;
}
else
{
	vR[i] = 2642;
}

}
else
{
	if(input[i]==(2641+offset0))
{
	vR[i] = 2641;
}
else
{
	vR[i] = 2640;
}

}

}

}

}
else
{
	if(input[i]>(2631+offset0))
{
	if(input[i]>(2635+offset0))
{
	if(input[i]>(2637+offset0))
{
	if(input[i]==(2639+offset0))
{
	vR[i] = 2639;
}
else
{
	vR[i] = 2638;
}

}
else
{
	if(input[i]==(2637+offset0))
{
	vR[i] = 2637;
}
else
{
	vR[i] = 2636;
}

}

}
else
{
	if(input[i]>(2633+offset0))
{
	if(input[i]==(2635+offset0))
{
	vR[i] = 2635;
}
else
{
	vR[i] = 2634;
}

}
else
{
	if(input[i]==(2633+offset0))
{
	vR[i] = 2633;
}
else
{
	vR[i] = 2632;
}

}

}

}
else
{
	if(input[i]>(2627+offset0))
{
	if(input[i]>(2629+offset0))
{
	if(input[i]==(2631+offset0))
{
	vR[i] = 2631;
}
else
{
	vR[i] = 2630;
}

}
else
{
	if(input[i]==(2629+offset0))
{
	vR[i] = 2629;
}
else
{
	vR[i] = 2628;
}

}

}
else
{
	if(input[i]>(2625+offset0))
{
	if(input[i]==(2627+offset0))
{
	vR[i] = 2627;
}
else
{
	vR[i] = 2626;
}

}
else
{
	if(input[i]==(2625+offset0))
{
	vR[i] = 2625;
}
else
{
	vR[i] = 2624;
}

}

}

}

}

}

}
else
{
	if(input[i]>(2591+offset0))
{
	if(input[i]>(2607+offset0))
{
	if(input[i]>(2615+offset0))
{
	if(input[i]>(2619+offset0))
{
	if(input[i]>(2621+offset0))
{
	if(input[i]==(2623+offset0))
{
	vR[i] = 2623;
}
else
{
	vR[i] = 2622;
}

}
else
{
	if(input[i]==(2621+offset0))
{
	vR[i] = 2621;
}
else
{
	vR[i] = 2620;
}

}

}
else
{
	if(input[i]>(2617+offset0))
{
	if(input[i]==(2619+offset0))
{
	vR[i] = 2619;
}
else
{
	vR[i] = 2618;
}

}
else
{
	if(input[i]==(2617+offset0))
{
	vR[i] = 2617;
}
else
{
	vR[i] = 2616;
}

}

}

}
else
{
	if(input[i]>(2611+offset0))
{
	if(input[i]>(2613+offset0))
{
	if(input[i]==(2615+offset0))
{
	vR[i] = 2615;
}
else
{
	vR[i] = 2614;
}

}
else
{
	if(input[i]==(2613+offset0))
{
	vR[i] = 2613;
}
else
{
	vR[i] = 2612;
}

}

}
else
{
	if(input[i]>(2609+offset0))
{
	if(input[i]==(2611+offset0))
{
	vR[i] = 2611;
}
else
{
	vR[i] = 2610;
}

}
else
{
	if(input[i]==(2609+offset0))
{
	vR[i] = 2609;
}
else
{
	vR[i] = 2608;
}

}

}

}

}
else
{
	if(input[i]>(2599+offset0))
{
	if(input[i]>(2603+offset0))
{
	if(input[i]>(2605+offset0))
{
	if(input[i]==(2607+offset0))
{
	vR[i] = 2607;
}
else
{
	vR[i] = 2606;
}

}
else
{
	if(input[i]==(2605+offset0))
{
	vR[i] = 2605;
}
else
{
	vR[i] = 2604;
}

}

}
else
{
	if(input[i]>(2601+offset0))
{
	if(input[i]==(2603+offset0))
{
	vR[i] = 2603;
}
else
{
	vR[i] = 2602;
}

}
else
{
	if(input[i]==(2601+offset0))
{
	vR[i] = 2601;
}
else
{
	vR[i] = 2600;
}

}

}

}
else
{
	if(input[i]>(2595+offset0))
{
	if(input[i]>(2597+offset0))
{
	if(input[i]==(2599+offset0))
{
	vR[i] = 2599;
}
else
{
	vR[i] = 2598;
}

}
else
{
	if(input[i]==(2597+offset0))
{
	vR[i] = 2597;
}
else
{
	vR[i] = 2596;
}

}

}
else
{
	if(input[i]>(2593+offset0))
{
	if(input[i]==(2595+offset0))
{
	vR[i] = 2595;
}
else
{
	vR[i] = 2594;
}

}
else
{
	if(input[i]==(2593+offset0))
{
	vR[i] = 2593;
}
else
{
	vR[i] = 2592;
}

}

}

}

}

}
else
{
	if(input[i]>(2575+offset0))
{
	if(input[i]>(2583+offset0))
{
	if(input[i]>(2587+offset0))
{
	if(input[i]>(2589+offset0))
{
	if(input[i]==(2591+offset0))
{
	vR[i] = 2591;
}
else
{
	vR[i] = 2590;
}

}
else
{
	if(input[i]==(2589+offset0))
{
	vR[i] = 2589;
}
else
{
	vR[i] = 2588;
}

}

}
else
{
	if(input[i]>(2585+offset0))
{
	if(input[i]==(2587+offset0))
{
	vR[i] = 2587;
}
else
{
	vR[i] = 2586;
}

}
else
{
	if(input[i]==(2585+offset0))
{
	vR[i] = 2585;
}
else
{
	vR[i] = 2584;
}

}

}

}
else
{
	if(input[i]>(2579+offset0))
{
	if(input[i]>(2581+offset0))
{
	if(input[i]==(2583+offset0))
{
	vR[i] = 2583;
}
else
{
	vR[i] = 2582;
}

}
else
{
	if(input[i]==(2581+offset0))
{
	vR[i] = 2581;
}
else
{
	vR[i] = 2580;
}

}

}
else
{
	if(input[i]>(2577+offset0))
{
	if(input[i]==(2579+offset0))
{
	vR[i] = 2579;
}
else
{
	vR[i] = 2578;
}

}
else
{
	if(input[i]==(2577+offset0))
{
	vR[i] = 2577;
}
else
{
	vR[i] = 2576;
}

}

}

}

}
else
{
	if(input[i]>(2567+offset0))
{
	if(input[i]>(2571+offset0))
{
	if(input[i]>(2573+offset0))
{
	if(input[i]==(2575+offset0))
{
	vR[i] = 2575;
}
else
{
	vR[i] = 2574;
}

}
else
{
	if(input[i]==(2573+offset0))
{
	vR[i] = 2573;
}
else
{
	vR[i] = 2572;
}

}

}
else
{
	if(input[i]>(2569+offset0))
{
	if(input[i]==(2571+offset0))
{
	vR[i] = 2571;
}
else
{
	vR[i] = 2570;
}

}
else
{
	if(input[i]==(2569+offset0))
{
	vR[i] = 2569;
}
else
{
	vR[i] = 2568;
}

}

}

}
else
{
	if(input[i]>(2563+offset0))
{
	if(input[i]>(2565+offset0))
{
	if(input[i]==(2567+offset0))
{
	vR[i] = 2567;
}
else
{
	vR[i] = 2566;
}

}
else
{
	if(input[i]==(2565+offset0))
{
	vR[i] = 2565;
}
else
{
	vR[i] = 2564;
}

}

}
else
{
	if(input[i]>(2561+offset0))
{
	if(input[i]==(2563+offset0))
{
	vR[i] = 2563;
}
else
{
	vR[i] = 2562;
}

}
else
{
	if(input[i]==(2561+offset0))
{
	vR[i] = 2561;
}
else
{
	vR[i] = 2560;
}

}

}

}

}

}

}

}

}

}
else
{
	if(input[i]>(2303+offset0))
{
	if(input[i]>(2431+offset0))
{
	if(input[i]>(2495+offset0))
{
	if(input[i]>(2527+offset0))
{
	if(input[i]>(2543+offset0))
{
	if(input[i]>(2551+offset0))
{
	if(input[i]>(2555+offset0))
{
	if(input[i]>(2557+offset0))
{
	if(input[i]==(2559+offset0))
{
	vR[i] = 2559;
}
else
{
	vR[i] = 2558;
}

}
else
{
	if(input[i]==(2557+offset0))
{
	vR[i] = 2557;
}
else
{
	vR[i] = 2556;
}

}

}
else
{
	if(input[i]>(2553+offset0))
{
	if(input[i]==(2555+offset0))
{
	vR[i] = 2555;
}
else
{
	vR[i] = 2554;
}

}
else
{
	if(input[i]==(2553+offset0))
{
	vR[i] = 2553;
}
else
{
	vR[i] = 2552;
}

}

}

}
else
{
	if(input[i]>(2547+offset0))
{
	if(input[i]>(2549+offset0))
{
	if(input[i]==(2551+offset0))
{
	vR[i] = 2551;
}
else
{
	vR[i] = 2550;
}

}
else
{
	if(input[i]==(2549+offset0))
{
	vR[i] = 2549;
}
else
{
	vR[i] = 2548;
}

}

}
else
{
	if(input[i]>(2545+offset0))
{
	if(input[i]==(2547+offset0))
{
	vR[i] = 2547;
}
else
{
	vR[i] = 2546;
}

}
else
{
	if(input[i]==(2545+offset0))
{
	vR[i] = 2545;
}
else
{
	vR[i] = 2544;
}

}

}

}

}
else
{
	if(input[i]>(2535+offset0))
{
	if(input[i]>(2539+offset0))
{
	if(input[i]>(2541+offset0))
{
	if(input[i]==(2543+offset0))
{
	vR[i] = 2543;
}
else
{
	vR[i] = 2542;
}

}
else
{
	if(input[i]==(2541+offset0))
{
	vR[i] = 2541;
}
else
{
	vR[i] = 2540;
}

}

}
else
{
	if(input[i]>(2537+offset0))
{
	if(input[i]==(2539+offset0))
{
	vR[i] = 2539;
}
else
{
	vR[i] = 2538;
}

}
else
{
	if(input[i]==(2537+offset0))
{
	vR[i] = 2537;
}
else
{
	vR[i] = 2536;
}

}

}

}
else
{
	if(input[i]>(2531+offset0))
{
	if(input[i]>(2533+offset0))
{
	if(input[i]==(2535+offset0))
{
	vR[i] = 2535;
}
else
{
	vR[i] = 2534;
}

}
else
{
	if(input[i]==(2533+offset0))
{
	vR[i] = 2533;
}
else
{
	vR[i] = 2532;
}

}

}
else
{
	if(input[i]>(2529+offset0))
{
	if(input[i]==(2531+offset0))
{
	vR[i] = 2531;
}
else
{
	vR[i] = 2530;
}

}
else
{
	if(input[i]==(2529+offset0))
{
	vR[i] = 2529;
}
else
{
	vR[i] = 2528;
}

}

}

}

}

}
else
{
	if(input[i]>(2511+offset0))
{
	if(input[i]>(2519+offset0))
{
	if(input[i]>(2523+offset0))
{
	if(input[i]>(2525+offset0))
{
	if(input[i]==(2527+offset0))
{
	vR[i] = 2527;
}
else
{
	vR[i] = 2526;
}

}
else
{
	if(input[i]==(2525+offset0))
{
	vR[i] = 2525;
}
else
{
	vR[i] = 2524;
}

}

}
else
{
	if(input[i]>(2521+offset0))
{
	if(input[i]==(2523+offset0))
{
	vR[i] = 2523;
}
else
{
	vR[i] = 2522;
}

}
else
{
	if(input[i]==(2521+offset0))
{
	vR[i] = 2521;
}
else
{
	vR[i] = 2520;
}

}

}

}
else
{
	if(input[i]>(2515+offset0))
{
	if(input[i]>(2517+offset0))
{
	if(input[i]==(2519+offset0))
{
	vR[i] = 2519;
}
else
{
	vR[i] = 2518;
}

}
else
{
	if(input[i]==(2517+offset0))
{
	vR[i] = 2517;
}
else
{
	vR[i] = 2516;
}

}

}
else
{
	if(input[i]>(2513+offset0))
{
	if(input[i]==(2515+offset0))
{
	vR[i] = 2515;
}
else
{
	vR[i] = 2514;
}

}
else
{
	if(input[i]==(2513+offset0))
{
	vR[i] = 2513;
}
else
{
	vR[i] = 2512;
}

}

}

}

}
else
{
	if(input[i]>(2503+offset0))
{
	if(input[i]>(2507+offset0))
{
	if(input[i]>(2509+offset0))
{
	if(input[i]==(2511+offset0))
{
	vR[i] = 2511;
}
else
{
	vR[i] = 2510;
}

}
else
{
	if(input[i]==(2509+offset0))
{
	vR[i] = 2509;
}
else
{
	vR[i] = 2508;
}

}

}
else
{
	if(input[i]>(2505+offset0))
{
	if(input[i]==(2507+offset0))
{
	vR[i] = 2507;
}
else
{
	vR[i] = 2506;
}

}
else
{
	if(input[i]==(2505+offset0))
{
	vR[i] = 2505;
}
else
{
	vR[i] = 2504;
}

}

}

}
else
{
	if(input[i]>(2499+offset0))
{
	if(input[i]>(2501+offset0))
{
	if(input[i]==(2503+offset0))
{
	vR[i] = 2503;
}
else
{
	vR[i] = 2502;
}

}
else
{
	if(input[i]==(2501+offset0))
{
	vR[i] = 2501;
}
else
{
	vR[i] = 2500;
}

}

}
else
{
	if(input[i]>(2497+offset0))
{
	if(input[i]==(2499+offset0))
{
	vR[i] = 2499;
}
else
{
	vR[i] = 2498;
}

}
else
{
	if(input[i]==(2497+offset0))
{
	vR[i] = 2497;
}
else
{
	vR[i] = 2496;
}

}

}

}

}

}

}
else
{
	if(input[i]>(2463+offset0))
{
	if(input[i]>(2479+offset0))
{
	if(input[i]>(2487+offset0))
{
	if(input[i]>(2491+offset0))
{
	if(input[i]>(2493+offset0))
{
	if(input[i]==(2495+offset0))
{
	vR[i] = 2495;
}
else
{
	vR[i] = 2494;
}

}
else
{
	if(input[i]==(2493+offset0))
{
	vR[i] = 2493;
}
else
{
	vR[i] = 2492;
}

}

}
else
{
	if(input[i]>(2489+offset0))
{
	if(input[i]==(2491+offset0))
{
	vR[i] = 2491;
}
else
{
	vR[i] = 2490;
}

}
else
{
	if(input[i]==(2489+offset0))
{
	vR[i] = 2489;
}
else
{
	vR[i] = 2488;
}

}

}

}
else
{
	if(input[i]>(2483+offset0))
{
	if(input[i]>(2485+offset0))
{
	if(input[i]==(2487+offset0))
{
	vR[i] = 2487;
}
else
{
	vR[i] = 2486;
}

}
else
{
	if(input[i]==(2485+offset0))
{
	vR[i] = 2485;
}
else
{
	vR[i] = 2484;
}

}

}
else
{
	if(input[i]>(2481+offset0))
{
	if(input[i]==(2483+offset0))
{
	vR[i] = 2483;
}
else
{
	vR[i] = 2482;
}

}
else
{
	if(input[i]==(2481+offset0))
{
	vR[i] = 2481;
}
else
{
	vR[i] = 2480;
}

}

}

}

}
else
{
	if(input[i]>(2471+offset0))
{
	if(input[i]>(2475+offset0))
{
	if(input[i]>(2477+offset0))
{
	if(input[i]==(2479+offset0))
{
	vR[i] = 2479;
}
else
{
	vR[i] = 2478;
}

}
else
{
	if(input[i]==(2477+offset0))
{
	vR[i] = 2477;
}
else
{
	vR[i] = 2476;
}

}

}
else
{
	if(input[i]>(2473+offset0))
{
	if(input[i]==(2475+offset0))
{
	vR[i] = 2475;
}
else
{
	vR[i] = 2474;
}

}
else
{
	if(input[i]==(2473+offset0))
{
	vR[i] = 2473;
}
else
{
	vR[i] = 2472;
}

}

}

}
else
{
	if(input[i]>(2467+offset0))
{
	if(input[i]>(2469+offset0))
{
	if(input[i]==(2471+offset0))
{
	vR[i] = 2471;
}
else
{
	vR[i] = 2470;
}

}
else
{
	if(input[i]==(2469+offset0))
{
	vR[i] = 2469;
}
else
{
	vR[i] = 2468;
}

}

}
else
{
	if(input[i]>(2465+offset0))
{
	if(input[i]==(2467+offset0))
{
	vR[i] = 2467;
}
else
{
	vR[i] = 2466;
}

}
else
{
	if(input[i]==(2465+offset0))
{
	vR[i] = 2465;
}
else
{
	vR[i] = 2464;
}

}

}

}

}

}
else
{
	if(input[i]>(2447+offset0))
{
	if(input[i]>(2455+offset0))
{
	if(input[i]>(2459+offset0))
{
	if(input[i]>(2461+offset0))
{
	if(input[i]==(2463+offset0))
{
	vR[i] = 2463;
}
else
{
	vR[i] = 2462;
}

}
else
{
	if(input[i]==(2461+offset0))
{
	vR[i] = 2461;
}
else
{
	vR[i] = 2460;
}

}

}
else
{
	if(input[i]>(2457+offset0))
{
	if(input[i]==(2459+offset0))
{
	vR[i] = 2459;
}
else
{
	vR[i] = 2458;
}

}
else
{
	if(input[i]==(2457+offset0))
{
	vR[i] = 2457;
}
else
{
	vR[i] = 2456;
}

}

}

}
else
{
	if(input[i]>(2451+offset0))
{
	if(input[i]>(2453+offset0))
{
	if(input[i]==(2455+offset0))
{
	vR[i] = 2455;
}
else
{
	vR[i] = 2454;
}

}
else
{
	if(input[i]==(2453+offset0))
{
	vR[i] = 2453;
}
else
{
	vR[i] = 2452;
}

}

}
else
{
	if(input[i]>(2449+offset0))
{
	if(input[i]==(2451+offset0))
{
	vR[i] = 2451;
}
else
{
	vR[i] = 2450;
}

}
else
{
	if(input[i]==(2449+offset0))
{
	vR[i] = 2449;
}
else
{
	vR[i] = 2448;
}

}

}

}

}
else
{
	if(input[i]>(2439+offset0))
{
	if(input[i]>(2443+offset0))
{
	if(input[i]>(2445+offset0))
{
	if(input[i]==(2447+offset0))
{
	vR[i] = 2447;
}
else
{
	vR[i] = 2446;
}

}
else
{
	if(input[i]==(2445+offset0))
{
	vR[i] = 2445;
}
else
{
	vR[i] = 2444;
}

}

}
else
{
	if(input[i]>(2441+offset0))
{
	if(input[i]==(2443+offset0))
{
	vR[i] = 2443;
}
else
{
	vR[i] = 2442;
}

}
else
{
	if(input[i]==(2441+offset0))
{
	vR[i] = 2441;
}
else
{
	vR[i] = 2440;
}

}

}

}
else
{
	if(input[i]>(2435+offset0))
{
	if(input[i]>(2437+offset0))
{
	if(input[i]==(2439+offset0))
{
	vR[i] = 2439;
}
else
{
	vR[i] = 2438;
}

}
else
{
	if(input[i]==(2437+offset0))
{
	vR[i] = 2437;
}
else
{
	vR[i] = 2436;
}

}

}
else
{
	if(input[i]>(2433+offset0))
{
	if(input[i]==(2435+offset0))
{
	vR[i] = 2435;
}
else
{
	vR[i] = 2434;
}

}
else
{
	if(input[i]==(2433+offset0))
{
	vR[i] = 2433;
}
else
{
	vR[i] = 2432;
}

}

}

}

}

}

}

}
else
{
	if(input[i]>(2367+offset0))
{
	if(input[i]>(2399+offset0))
{
	if(input[i]>(2415+offset0))
{
	if(input[i]>(2423+offset0))
{
	if(input[i]>(2427+offset0))
{
	if(input[i]>(2429+offset0))
{
	if(input[i]==(2431+offset0))
{
	vR[i] = 2431;
}
else
{
	vR[i] = 2430;
}

}
else
{
	if(input[i]==(2429+offset0))
{
	vR[i] = 2429;
}
else
{
	vR[i] = 2428;
}

}

}
else
{
	if(input[i]>(2425+offset0))
{
	if(input[i]==(2427+offset0))
{
	vR[i] = 2427;
}
else
{
	vR[i] = 2426;
}

}
else
{
	if(input[i]==(2425+offset0))
{
	vR[i] = 2425;
}
else
{
	vR[i] = 2424;
}

}

}

}
else
{
	if(input[i]>(2419+offset0))
{
	if(input[i]>(2421+offset0))
{
	if(input[i]==(2423+offset0))
{
	vR[i] = 2423;
}
else
{
	vR[i] = 2422;
}

}
else
{
	if(input[i]==(2421+offset0))
{
	vR[i] = 2421;
}
else
{
	vR[i] = 2420;
}

}

}
else
{
	if(input[i]>(2417+offset0))
{
	if(input[i]==(2419+offset0))
{
	vR[i] = 2419;
}
else
{
	vR[i] = 2418;
}

}
else
{
	if(input[i]==(2417+offset0))
{
	vR[i] = 2417;
}
else
{
	vR[i] = 2416;
}

}

}

}

}
else
{
	if(input[i]>(2407+offset0))
{
	if(input[i]>(2411+offset0))
{
	if(input[i]>(2413+offset0))
{
	if(input[i]==(2415+offset0))
{
	vR[i] = 2415;
}
else
{
	vR[i] = 2414;
}

}
else
{
	if(input[i]==(2413+offset0))
{
	vR[i] = 2413;
}
else
{
	vR[i] = 2412;
}

}

}
else
{
	if(input[i]>(2409+offset0))
{
	if(input[i]==(2411+offset0))
{
	vR[i] = 2411;
}
else
{
	vR[i] = 2410;
}

}
else
{
	if(input[i]==(2409+offset0))
{
	vR[i] = 2409;
}
else
{
	vR[i] = 2408;
}

}

}

}
else
{
	if(input[i]>(2403+offset0))
{
	if(input[i]>(2405+offset0))
{
	if(input[i]==(2407+offset0))
{
	vR[i] = 2407;
}
else
{
	vR[i] = 2406;
}

}
else
{
	if(input[i]==(2405+offset0))
{
	vR[i] = 2405;
}
else
{
	vR[i] = 2404;
}

}

}
else
{
	if(input[i]>(2401+offset0))
{
	if(input[i]==(2403+offset0))
{
	vR[i] = 2403;
}
else
{
	vR[i] = 2402;
}

}
else
{
	if(input[i]==(2401+offset0))
{
	vR[i] = 2401;
}
else
{
	vR[i] = 2400;
}

}

}

}

}

}
else
{
	if(input[i]>(2383+offset0))
{
	if(input[i]>(2391+offset0))
{
	if(input[i]>(2395+offset0))
{
	if(input[i]>(2397+offset0))
{
	if(input[i]==(2399+offset0))
{
	vR[i] = 2399;
}
else
{
	vR[i] = 2398;
}

}
else
{
	if(input[i]==(2397+offset0))
{
	vR[i] = 2397;
}
else
{
	vR[i] = 2396;
}

}

}
else
{
	if(input[i]>(2393+offset0))
{
	if(input[i]==(2395+offset0))
{
	vR[i] = 2395;
}
else
{
	vR[i] = 2394;
}

}
else
{
	if(input[i]==(2393+offset0))
{
	vR[i] = 2393;
}
else
{
	vR[i] = 2392;
}

}

}

}
else
{
	if(input[i]>(2387+offset0))
{
	if(input[i]>(2389+offset0))
{
	if(input[i]==(2391+offset0))
{
	vR[i] = 2391;
}
else
{
	vR[i] = 2390;
}

}
else
{
	if(input[i]==(2389+offset0))
{
	vR[i] = 2389;
}
else
{
	vR[i] = 2388;
}

}

}
else
{
	if(input[i]>(2385+offset0))
{
	if(input[i]==(2387+offset0))
{
	vR[i] = 2387;
}
else
{
	vR[i] = 2386;
}

}
else
{
	if(input[i]==(2385+offset0))
{
	vR[i] = 2385;
}
else
{
	vR[i] = 2384;
}

}

}

}

}
else
{
	if(input[i]>(2375+offset0))
{
	if(input[i]>(2379+offset0))
{
	if(input[i]>(2381+offset0))
{
	if(input[i]==(2383+offset0))
{
	vR[i] = 2383;
}
else
{
	vR[i] = 2382;
}

}
else
{
	if(input[i]==(2381+offset0))
{
	vR[i] = 2381;
}
else
{
	vR[i] = 2380;
}

}

}
else
{
	if(input[i]>(2377+offset0))
{
	if(input[i]==(2379+offset0))
{
	vR[i] = 2379;
}
else
{
	vR[i] = 2378;
}

}
else
{
	if(input[i]==(2377+offset0))
{
	vR[i] = 2377;
}
else
{
	vR[i] = 2376;
}

}

}

}
else
{
	if(input[i]>(2371+offset0))
{
	if(input[i]>(2373+offset0))
{
	if(input[i]==(2375+offset0))
{
	vR[i] = 2375;
}
else
{
	vR[i] = 2374;
}

}
else
{
	if(input[i]==(2373+offset0))
{
	vR[i] = 2373;
}
else
{
	vR[i] = 2372;
}

}

}
else
{
	if(input[i]>(2369+offset0))
{
	if(input[i]==(2371+offset0))
{
	vR[i] = 2371;
}
else
{
	vR[i] = 2370;
}

}
else
{
	if(input[i]==(2369+offset0))
{
	vR[i] = 2369;
}
else
{
	vR[i] = 2368;
}

}

}

}

}

}

}
else
{
	if(input[i]>(2335+offset0))
{
	if(input[i]>(2351+offset0))
{
	if(input[i]>(2359+offset0))
{
	if(input[i]>(2363+offset0))
{
	if(input[i]>(2365+offset0))
{
	if(input[i]==(2367+offset0))
{
	vR[i] = 2367;
}
else
{
	vR[i] = 2366;
}

}
else
{
	if(input[i]==(2365+offset0))
{
	vR[i] = 2365;
}
else
{
	vR[i] = 2364;
}

}

}
else
{
	if(input[i]>(2361+offset0))
{
	if(input[i]==(2363+offset0))
{
	vR[i] = 2363;
}
else
{
	vR[i] = 2362;
}

}
else
{
	if(input[i]==(2361+offset0))
{
	vR[i] = 2361;
}
else
{
	vR[i] = 2360;
}

}

}

}
else
{
	if(input[i]>(2355+offset0))
{
	if(input[i]>(2357+offset0))
{
	if(input[i]==(2359+offset0))
{
	vR[i] = 2359;
}
else
{
	vR[i] = 2358;
}

}
else
{
	if(input[i]==(2357+offset0))
{
	vR[i] = 2357;
}
else
{
	vR[i] = 2356;
}

}

}
else
{
	if(input[i]>(2353+offset0))
{
	if(input[i]==(2355+offset0))
{
	vR[i] = 2355;
}
else
{
	vR[i] = 2354;
}

}
else
{
	if(input[i]==(2353+offset0))
{
	vR[i] = 2353;
}
else
{
	vR[i] = 2352;
}

}

}

}

}
else
{
	if(input[i]>(2343+offset0))
{
	if(input[i]>(2347+offset0))
{
	if(input[i]>(2349+offset0))
{
	if(input[i]==(2351+offset0))
{
	vR[i] = 2351;
}
else
{
	vR[i] = 2350;
}

}
else
{
	if(input[i]==(2349+offset0))
{
	vR[i] = 2349;
}
else
{
	vR[i] = 2348;
}

}

}
else
{
	if(input[i]>(2345+offset0))
{
	if(input[i]==(2347+offset0))
{
	vR[i] = 2347;
}
else
{
	vR[i] = 2346;
}

}
else
{
	if(input[i]==(2345+offset0))
{
	vR[i] = 2345;
}
else
{
	vR[i] = 2344;
}

}

}

}
else
{
	if(input[i]>(2339+offset0))
{
	if(input[i]>(2341+offset0))
{
	if(input[i]==(2343+offset0))
{
	vR[i] = 2343;
}
else
{
	vR[i] = 2342;
}

}
else
{
	if(input[i]==(2341+offset0))
{
	vR[i] = 2341;
}
else
{
	vR[i] = 2340;
}

}

}
else
{
	if(input[i]>(2337+offset0))
{
	if(input[i]==(2339+offset0))
{
	vR[i] = 2339;
}
else
{
	vR[i] = 2338;
}

}
else
{
	if(input[i]==(2337+offset0))
{
	vR[i] = 2337;
}
else
{
	vR[i] = 2336;
}

}

}

}

}

}
else
{
	if(input[i]>(2319+offset0))
{
	if(input[i]>(2327+offset0))
{
	if(input[i]>(2331+offset0))
{
	if(input[i]>(2333+offset0))
{
	if(input[i]==(2335+offset0))
{
	vR[i] = 2335;
}
else
{
	vR[i] = 2334;
}

}
else
{
	if(input[i]==(2333+offset0))
{
	vR[i] = 2333;
}
else
{
	vR[i] = 2332;
}

}

}
else
{
	if(input[i]>(2329+offset0))
{
	if(input[i]==(2331+offset0))
{
	vR[i] = 2331;
}
else
{
	vR[i] = 2330;
}

}
else
{
	if(input[i]==(2329+offset0))
{
	vR[i] = 2329;
}
else
{
	vR[i] = 2328;
}

}

}

}
else
{
	if(input[i]>(2323+offset0))
{
	if(input[i]>(2325+offset0))
{
	if(input[i]==(2327+offset0))
{
	vR[i] = 2327;
}
else
{
	vR[i] = 2326;
}

}
else
{
	if(input[i]==(2325+offset0))
{
	vR[i] = 2325;
}
else
{
	vR[i] = 2324;
}

}

}
else
{
	if(input[i]>(2321+offset0))
{
	if(input[i]==(2323+offset0))
{
	vR[i] = 2323;
}
else
{
	vR[i] = 2322;
}

}
else
{
	if(input[i]==(2321+offset0))
{
	vR[i] = 2321;
}
else
{
	vR[i] = 2320;
}

}

}

}

}
else
{
	if(input[i]>(2311+offset0))
{
	if(input[i]>(2315+offset0))
{
	if(input[i]>(2317+offset0))
{
	if(input[i]==(2319+offset0))
{
	vR[i] = 2319;
}
else
{
	vR[i] = 2318;
}

}
else
{
	if(input[i]==(2317+offset0))
{
	vR[i] = 2317;
}
else
{
	vR[i] = 2316;
}

}

}
else
{
	if(input[i]>(2313+offset0))
{
	if(input[i]==(2315+offset0))
{
	vR[i] = 2315;
}
else
{
	vR[i] = 2314;
}

}
else
{
	if(input[i]==(2313+offset0))
{
	vR[i] = 2313;
}
else
{
	vR[i] = 2312;
}

}

}

}
else
{
	if(input[i]>(2307+offset0))
{
	if(input[i]>(2309+offset0))
{
	if(input[i]==(2311+offset0))
{
	vR[i] = 2311;
}
else
{
	vR[i] = 2310;
}

}
else
{
	if(input[i]==(2309+offset0))
{
	vR[i] = 2309;
}
else
{
	vR[i] = 2308;
}

}

}
else
{
	if(input[i]>(2305+offset0))
{
	if(input[i]==(2307+offset0))
{
	vR[i] = 2307;
}
else
{
	vR[i] = 2306;
}

}
else
{
	if(input[i]==(2305+offset0))
{
	vR[i] = 2305;
}
else
{
	vR[i] = 2304;
}

}

}

}

}

}

}

}

}
else
{
	if(input[i]>(2175+offset0))
{
	if(input[i]>(2239+offset0))
{
	if(input[i]>(2271+offset0))
{
	if(input[i]>(2287+offset0))
{
	if(input[i]>(2295+offset0))
{
	if(input[i]>(2299+offset0))
{
	if(input[i]>(2301+offset0))
{
	if(input[i]==(2303+offset0))
{
	vR[i] = 2303;
}
else
{
	vR[i] = 2302;
}

}
else
{
	if(input[i]==(2301+offset0))
{
	vR[i] = 2301;
}
else
{
	vR[i] = 2300;
}

}

}
else
{
	if(input[i]>(2297+offset0))
{
	if(input[i]==(2299+offset0))
{
	vR[i] = 2299;
}
else
{
	vR[i] = 2298;
}

}
else
{
	if(input[i]==(2297+offset0))
{
	vR[i] = 2297;
}
else
{
	vR[i] = 2296;
}

}

}

}
else
{
	if(input[i]>(2291+offset0))
{
	if(input[i]>(2293+offset0))
{
	if(input[i]==(2295+offset0))
{
	vR[i] = 2295;
}
else
{
	vR[i] = 2294;
}

}
else
{
	if(input[i]==(2293+offset0))
{
	vR[i] = 2293;
}
else
{
	vR[i] = 2292;
}

}

}
else
{
	if(input[i]>(2289+offset0))
{
	if(input[i]==(2291+offset0))
{
	vR[i] = 2291;
}
else
{
	vR[i] = 2290;
}

}
else
{
	if(input[i]==(2289+offset0))
{
	vR[i] = 2289;
}
else
{
	vR[i] = 2288;
}

}

}

}

}
else
{
	if(input[i]>(2279+offset0))
{
	if(input[i]>(2283+offset0))
{
	if(input[i]>(2285+offset0))
{
	if(input[i]==(2287+offset0))
{
	vR[i] = 2287;
}
else
{
	vR[i] = 2286;
}

}
else
{
	if(input[i]==(2285+offset0))
{
	vR[i] = 2285;
}
else
{
	vR[i] = 2284;
}

}

}
else
{
	if(input[i]>(2281+offset0))
{
	if(input[i]==(2283+offset0))
{
	vR[i] = 2283;
}
else
{
	vR[i] = 2282;
}

}
else
{
	if(input[i]==(2281+offset0))
{
	vR[i] = 2281;
}
else
{
	vR[i] = 2280;
}

}

}

}
else
{
	if(input[i]>(2275+offset0))
{
	if(input[i]>(2277+offset0))
{
	if(input[i]==(2279+offset0))
{
	vR[i] = 2279;
}
else
{
	vR[i] = 2278;
}

}
else
{
	if(input[i]==(2277+offset0))
{
	vR[i] = 2277;
}
else
{
	vR[i] = 2276;
}

}

}
else
{
	if(input[i]>(2273+offset0))
{
	if(input[i]==(2275+offset0))
{
	vR[i] = 2275;
}
else
{
	vR[i] = 2274;
}

}
else
{
	if(input[i]==(2273+offset0))
{
	vR[i] = 2273;
}
else
{
	vR[i] = 2272;
}

}

}

}

}

}
else
{
	if(input[i]>(2255+offset0))
{
	if(input[i]>(2263+offset0))
{
	if(input[i]>(2267+offset0))
{
	if(input[i]>(2269+offset0))
{
	if(input[i]==(2271+offset0))
{
	vR[i] = 2271;
}
else
{
	vR[i] = 2270;
}

}
else
{
	if(input[i]==(2269+offset0))
{
	vR[i] = 2269;
}
else
{
	vR[i] = 2268;
}

}

}
else
{
	if(input[i]>(2265+offset0))
{
	if(input[i]==(2267+offset0))
{
	vR[i] = 2267;
}
else
{
	vR[i] = 2266;
}

}
else
{
	if(input[i]==(2265+offset0))
{
	vR[i] = 2265;
}
else
{
	vR[i] = 2264;
}

}

}

}
else
{
	if(input[i]>(2259+offset0))
{
	if(input[i]>(2261+offset0))
{
	if(input[i]==(2263+offset0))
{
	vR[i] = 2263;
}
else
{
	vR[i] = 2262;
}

}
else
{
	if(input[i]==(2261+offset0))
{
	vR[i] = 2261;
}
else
{
	vR[i] = 2260;
}

}

}
else
{
	if(input[i]>(2257+offset0))
{
	if(input[i]==(2259+offset0))
{
	vR[i] = 2259;
}
else
{
	vR[i] = 2258;
}

}
else
{
	if(input[i]==(2257+offset0))
{
	vR[i] = 2257;
}
else
{
	vR[i] = 2256;
}

}

}

}

}
else
{
	if(input[i]>(2247+offset0))
{
	if(input[i]>(2251+offset0))
{
	if(input[i]>(2253+offset0))
{
	if(input[i]==(2255+offset0))
{
	vR[i] = 2255;
}
else
{
	vR[i] = 2254;
}

}
else
{
	if(input[i]==(2253+offset0))
{
	vR[i] = 2253;
}
else
{
	vR[i] = 2252;
}

}

}
else
{
	if(input[i]>(2249+offset0))
{
	if(input[i]==(2251+offset0))
{
	vR[i] = 2251;
}
else
{
	vR[i] = 2250;
}

}
else
{
	if(input[i]==(2249+offset0))
{
	vR[i] = 2249;
}
else
{
	vR[i] = 2248;
}

}

}

}
else
{
	if(input[i]>(2243+offset0))
{
	if(input[i]>(2245+offset0))
{
	if(input[i]==(2247+offset0))
{
	vR[i] = 2247;
}
else
{
	vR[i] = 2246;
}

}
else
{
	if(input[i]==(2245+offset0))
{
	vR[i] = 2245;
}
else
{
	vR[i] = 2244;
}

}

}
else
{
	if(input[i]>(2241+offset0))
{
	if(input[i]==(2243+offset0))
{
	vR[i] = 2243;
}
else
{
	vR[i] = 2242;
}

}
else
{
	if(input[i]==(2241+offset0))
{
	vR[i] = 2241;
}
else
{
	vR[i] = 2240;
}

}

}

}

}

}

}
else
{
	if(input[i]>(2207+offset0))
{
	if(input[i]>(2223+offset0))
{
	if(input[i]>(2231+offset0))
{
	if(input[i]>(2235+offset0))
{
	if(input[i]>(2237+offset0))
{
	if(input[i]==(2239+offset0))
{
	vR[i] = 2239;
}
else
{
	vR[i] = 2238;
}

}
else
{
	if(input[i]==(2237+offset0))
{
	vR[i] = 2237;
}
else
{
	vR[i] = 2236;
}

}

}
else
{
	if(input[i]>(2233+offset0))
{
	if(input[i]==(2235+offset0))
{
	vR[i] = 2235;
}
else
{
	vR[i] = 2234;
}

}
else
{
	if(input[i]==(2233+offset0))
{
	vR[i] = 2233;
}
else
{
	vR[i] = 2232;
}

}

}

}
else
{
	if(input[i]>(2227+offset0))
{
	if(input[i]>(2229+offset0))
{
	if(input[i]==(2231+offset0))
{
	vR[i] = 2231;
}
else
{
	vR[i] = 2230;
}

}
else
{
	if(input[i]==(2229+offset0))
{
	vR[i] = 2229;
}
else
{
	vR[i] = 2228;
}

}

}
else
{
	if(input[i]>(2225+offset0))
{
	if(input[i]==(2227+offset0))
{
	vR[i] = 2227;
}
else
{
	vR[i] = 2226;
}

}
else
{
	if(input[i]==(2225+offset0))
{
	vR[i] = 2225;
}
else
{
	vR[i] = 2224;
}

}

}

}

}
else
{
	if(input[i]>(2215+offset0))
{
	if(input[i]>(2219+offset0))
{
	if(input[i]>(2221+offset0))
{
	if(input[i]==(2223+offset0))
{
	vR[i] = 2223;
}
else
{
	vR[i] = 2222;
}

}
else
{
	if(input[i]==(2221+offset0))
{
	vR[i] = 2221;
}
else
{
	vR[i] = 2220;
}

}

}
else
{
	if(input[i]>(2217+offset0))
{
	if(input[i]==(2219+offset0))
{
	vR[i] = 2219;
}
else
{
	vR[i] = 2218;
}

}
else
{
	if(input[i]==(2217+offset0))
{
	vR[i] = 2217;
}
else
{
	vR[i] = 2216;
}

}

}

}
else
{
	if(input[i]>(2211+offset0))
{
	if(input[i]>(2213+offset0))
{
	if(input[i]==(2215+offset0))
{
	vR[i] = 2215;
}
else
{
	vR[i] = 2214;
}

}
else
{
	if(input[i]==(2213+offset0))
{
	vR[i] = 2213;
}
else
{
	vR[i] = 2212;
}

}

}
else
{
	if(input[i]>(2209+offset0))
{
	if(input[i]==(2211+offset0))
{
	vR[i] = 2211;
}
else
{
	vR[i] = 2210;
}

}
else
{
	if(input[i]==(2209+offset0))
{
	vR[i] = 2209;
}
else
{
	vR[i] = 2208;
}

}

}

}

}

}
else
{
	if(input[i]>(2191+offset0))
{
	if(input[i]>(2199+offset0))
{
	if(input[i]>(2203+offset0))
{
	if(input[i]>(2205+offset0))
{
	if(input[i]==(2207+offset0))
{
	vR[i] = 2207;
}
else
{
	vR[i] = 2206;
}

}
else
{
	if(input[i]==(2205+offset0))
{
	vR[i] = 2205;
}
else
{
	vR[i] = 2204;
}

}

}
else
{
	if(input[i]>(2201+offset0))
{
	if(input[i]==(2203+offset0))
{
	vR[i] = 2203;
}
else
{
	vR[i] = 2202;
}

}
else
{
	if(input[i]==(2201+offset0))
{
	vR[i] = 2201;
}
else
{
	vR[i] = 2200;
}

}

}

}
else
{
	if(input[i]>(2195+offset0))
{
	if(input[i]>(2197+offset0))
{
	if(input[i]==(2199+offset0))
{
	vR[i] = 2199;
}
else
{
	vR[i] = 2198;
}

}
else
{
	if(input[i]==(2197+offset0))
{
	vR[i] = 2197;
}
else
{
	vR[i] = 2196;
}

}

}
else
{
	if(input[i]>(2193+offset0))
{
	if(input[i]==(2195+offset0))
{
	vR[i] = 2195;
}
else
{
	vR[i] = 2194;
}

}
else
{
	if(input[i]==(2193+offset0))
{
	vR[i] = 2193;
}
else
{
	vR[i] = 2192;
}

}

}

}

}
else
{
	if(input[i]>(2183+offset0))
{
	if(input[i]>(2187+offset0))
{
	if(input[i]>(2189+offset0))
{
	if(input[i]==(2191+offset0))
{
	vR[i] = 2191;
}
else
{
	vR[i] = 2190;
}

}
else
{
	if(input[i]==(2189+offset0))
{
	vR[i] = 2189;
}
else
{
	vR[i] = 2188;
}

}

}
else
{
	if(input[i]>(2185+offset0))
{
	if(input[i]==(2187+offset0))
{
	vR[i] = 2187;
}
else
{
	vR[i] = 2186;
}

}
else
{
	if(input[i]==(2185+offset0))
{
	vR[i] = 2185;
}
else
{
	vR[i] = 2184;
}

}

}

}
else
{
	if(input[i]>(2179+offset0))
{
	if(input[i]>(2181+offset0))
{
	if(input[i]==(2183+offset0))
{
	vR[i] = 2183;
}
else
{
	vR[i] = 2182;
}

}
else
{
	if(input[i]==(2181+offset0))
{
	vR[i] = 2181;
}
else
{
	vR[i] = 2180;
}

}

}
else
{
	if(input[i]>(2177+offset0))
{
	if(input[i]==(2179+offset0))
{
	vR[i] = 2179;
}
else
{
	vR[i] = 2178;
}

}
else
{
	if(input[i]==(2177+offset0))
{
	vR[i] = 2177;
}
else
{
	vR[i] = 2176;
}

}

}

}

}

}

}

}
else
{
	if(input[i]>(2111+offset0))
{
	if(input[i]>(2143+offset0))
{
	if(input[i]>(2159+offset0))
{
	if(input[i]>(2167+offset0))
{
	if(input[i]>(2171+offset0))
{
	if(input[i]>(2173+offset0))
{
	if(input[i]==(2175+offset0))
{
	vR[i] = 2175;
}
else
{
	vR[i] = 2174;
}

}
else
{
	if(input[i]==(2173+offset0))
{
	vR[i] = 2173;
}
else
{
	vR[i] = 2172;
}

}

}
else
{
	if(input[i]>(2169+offset0))
{
	if(input[i]==(2171+offset0))
{
	vR[i] = 2171;
}
else
{
	vR[i] = 2170;
}

}
else
{
	if(input[i]==(2169+offset0))
{
	vR[i] = 2169;
}
else
{
	vR[i] = 2168;
}

}

}

}
else
{
	if(input[i]>(2163+offset0))
{
	if(input[i]>(2165+offset0))
{
	if(input[i]==(2167+offset0))
{
	vR[i] = 2167;
}
else
{
	vR[i] = 2166;
}

}
else
{
	if(input[i]==(2165+offset0))
{
	vR[i] = 2165;
}
else
{
	vR[i] = 2164;
}

}

}
else
{
	if(input[i]>(2161+offset0))
{
	if(input[i]==(2163+offset0))
{
	vR[i] = 2163;
}
else
{
	vR[i] = 2162;
}

}
else
{
	if(input[i]==(2161+offset0))
{
	vR[i] = 2161;
}
else
{
	vR[i] = 2160;
}

}

}

}

}
else
{
	if(input[i]>(2151+offset0))
{
	if(input[i]>(2155+offset0))
{
	if(input[i]>(2157+offset0))
{
	if(input[i]==(2159+offset0))
{
	vR[i] = 2159;
}
else
{
	vR[i] = 2158;
}

}
else
{
	if(input[i]==(2157+offset0))
{
	vR[i] = 2157;
}
else
{
	vR[i] = 2156;
}

}

}
else
{
	if(input[i]>(2153+offset0))
{
	if(input[i]==(2155+offset0))
{
	vR[i] = 2155;
}
else
{
	vR[i] = 2154;
}

}
else
{
	if(input[i]==(2153+offset0))
{
	vR[i] = 2153;
}
else
{
	vR[i] = 2152;
}

}

}

}
else
{
	if(input[i]>(2147+offset0))
{
	if(input[i]>(2149+offset0))
{
	if(input[i]==(2151+offset0))
{
	vR[i] = 2151;
}
else
{
	vR[i] = 2150;
}

}
else
{
	if(input[i]==(2149+offset0))
{
	vR[i] = 2149;
}
else
{
	vR[i] = 2148;
}

}

}
else
{
	if(input[i]>(2145+offset0))
{
	if(input[i]==(2147+offset0))
{
	vR[i] = 2147;
}
else
{
	vR[i] = 2146;
}

}
else
{
	if(input[i]==(2145+offset0))
{
	vR[i] = 2145;
}
else
{
	vR[i] = 2144;
}

}

}

}

}

}
else
{
	if(input[i]>(2127+offset0))
{
	if(input[i]>(2135+offset0))
{
	if(input[i]>(2139+offset0))
{
	if(input[i]>(2141+offset0))
{
	if(input[i]==(2143+offset0))
{
	vR[i] = 2143;
}
else
{
	vR[i] = 2142;
}

}
else
{
	if(input[i]==(2141+offset0))
{
	vR[i] = 2141;
}
else
{
	vR[i] = 2140;
}

}

}
else
{
	if(input[i]>(2137+offset0))
{
	if(input[i]==(2139+offset0))
{
	vR[i] = 2139;
}
else
{
	vR[i] = 2138;
}

}
else
{
	if(input[i]==(2137+offset0))
{
	vR[i] = 2137;
}
else
{
	vR[i] = 2136;
}

}

}

}
else
{
	if(input[i]>(2131+offset0))
{
	if(input[i]>(2133+offset0))
{
	if(input[i]==(2135+offset0))
{
	vR[i] = 2135;
}
else
{
	vR[i] = 2134;
}

}
else
{
	if(input[i]==(2133+offset0))
{
	vR[i] = 2133;
}
else
{
	vR[i] = 2132;
}

}

}
else
{
	if(input[i]>(2129+offset0))
{
	if(input[i]==(2131+offset0))
{
	vR[i] = 2131;
}
else
{
	vR[i] = 2130;
}

}
else
{
	if(input[i]==(2129+offset0))
{
	vR[i] = 2129;
}
else
{
	vR[i] = 2128;
}

}

}

}

}
else
{
	if(input[i]>(2119+offset0))
{
	if(input[i]>(2123+offset0))
{
	if(input[i]>(2125+offset0))
{
	if(input[i]==(2127+offset0))
{
	vR[i] = 2127;
}
else
{
	vR[i] = 2126;
}

}
else
{
	if(input[i]==(2125+offset0))
{
	vR[i] = 2125;
}
else
{
	vR[i] = 2124;
}

}

}
else
{
	if(input[i]>(2121+offset0))
{
	if(input[i]==(2123+offset0))
{
	vR[i] = 2123;
}
else
{
	vR[i] = 2122;
}

}
else
{
	if(input[i]==(2121+offset0))
{
	vR[i] = 2121;
}
else
{
	vR[i] = 2120;
}

}

}

}
else
{
	if(input[i]>(2115+offset0))
{
	if(input[i]>(2117+offset0))
{
	if(input[i]==(2119+offset0))
{
	vR[i] = 2119;
}
else
{
	vR[i] = 2118;
}

}
else
{
	if(input[i]==(2117+offset0))
{
	vR[i] = 2117;
}
else
{
	vR[i] = 2116;
}

}

}
else
{
	if(input[i]>(2113+offset0))
{
	if(input[i]==(2115+offset0))
{
	vR[i] = 2115;
}
else
{
	vR[i] = 2114;
}

}
else
{
	if(input[i]==(2113+offset0))
{
	vR[i] = 2113;
}
else
{
	vR[i] = 2112;
}

}

}

}

}

}

}
else
{
	if(input[i]>(2079+offset0))
{
	if(input[i]>(2095+offset0))
{
	if(input[i]>(2103+offset0))
{
	if(input[i]>(2107+offset0))
{
	if(input[i]>(2109+offset0))
{
	if(input[i]==(2111+offset0))
{
	vR[i] = 2111;
}
else
{
	vR[i] = 2110;
}

}
else
{
	if(input[i]==(2109+offset0))
{
	vR[i] = 2109;
}
else
{
	vR[i] = 2108;
}

}

}
else
{
	if(input[i]>(2105+offset0))
{
	if(input[i]==(2107+offset0))
{
	vR[i] = 2107;
}
else
{
	vR[i] = 2106;
}

}
else
{
	if(input[i]==(2105+offset0))
{
	vR[i] = 2105;
}
else
{
	vR[i] = 2104;
}

}

}

}
else
{
	if(input[i]>(2099+offset0))
{
	if(input[i]>(2101+offset0))
{
	if(input[i]==(2103+offset0))
{
	vR[i] = 2103;
}
else
{
	vR[i] = 2102;
}

}
else
{
	if(input[i]==(2101+offset0))
{
	vR[i] = 2101;
}
else
{
	vR[i] = 2100;
}

}

}
else
{
	if(input[i]>(2097+offset0))
{
	if(input[i]==(2099+offset0))
{
	vR[i] = 2099;
}
else
{
	vR[i] = 2098;
}

}
else
{
	if(input[i]==(2097+offset0))
{
	vR[i] = 2097;
}
else
{
	vR[i] = 2096;
}

}

}

}

}
else
{
	if(input[i]>(2087+offset0))
{
	if(input[i]>(2091+offset0))
{
	if(input[i]>(2093+offset0))
{
	if(input[i]==(2095+offset0))
{
	vR[i] = 2095;
}
else
{
	vR[i] = 2094;
}

}
else
{
	if(input[i]==(2093+offset0))
{
	vR[i] = 2093;
}
else
{
	vR[i] = 2092;
}

}

}
else
{
	if(input[i]>(2089+offset0))
{
	if(input[i]==(2091+offset0))
{
	vR[i] = 2091;
}
else
{
	vR[i] = 2090;
}

}
else
{
	if(input[i]==(2089+offset0))
{
	vR[i] = 2089;
}
else
{
	vR[i] = 2088;
}

}

}

}
else
{
	if(input[i]>(2083+offset0))
{
	if(input[i]>(2085+offset0))
{
	if(input[i]==(2087+offset0))
{
	vR[i] = 2087;
}
else
{
	vR[i] = 2086;
}

}
else
{
	if(input[i]==(2085+offset0))
{
	vR[i] = 2085;
}
else
{
	vR[i] = 2084;
}

}

}
else
{
	if(input[i]>(2081+offset0))
{
	if(input[i]==(2083+offset0))
{
	vR[i] = 2083;
}
else
{
	vR[i] = 2082;
}

}
else
{
	if(input[i]==(2081+offset0))
{
	vR[i] = 2081;
}
else
{
	vR[i] = 2080;
}

}

}

}

}

}
else
{
	if(input[i]>(2063+offset0))
{
	if(input[i]>(2071+offset0))
{
	if(input[i]>(2075+offset0))
{
	if(input[i]>(2077+offset0))
{
	if(input[i]==(2079+offset0))
{
	vR[i] = 2079;
}
else
{
	vR[i] = 2078;
}

}
else
{
	if(input[i]==(2077+offset0))
{
	vR[i] = 2077;
}
else
{
	vR[i] = 2076;
}

}

}
else
{
	if(input[i]>(2073+offset0))
{
	if(input[i]==(2075+offset0))
{
	vR[i] = 2075;
}
else
{
	vR[i] = 2074;
}

}
else
{
	if(input[i]==(2073+offset0))
{
	vR[i] = 2073;
}
else
{
	vR[i] = 2072;
}

}

}

}
else
{
	if(input[i]>(2067+offset0))
{
	if(input[i]>(2069+offset0))
{
	if(input[i]==(2071+offset0))
{
	vR[i] = 2071;
}
else
{
	vR[i] = 2070;
}

}
else
{
	if(input[i]==(2069+offset0))
{
	vR[i] = 2069;
}
else
{
	vR[i] = 2068;
}

}

}
else
{
	if(input[i]>(2065+offset0))
{
	if(input[i]==(2067+offset0))
{
	vR[i] = 2067;
}
else
{
	vR[i] = 2066;
}

}
else
{
	if(input[i]==(2065+offset0))
{
	vR[i] = 2065;
}
else
{
	vR[i] = 2064;
}

}

}

}

}
else
{
	if(input[i]>(2055+offset0))
{
	if(input[i]>(2059+offset0))
{
	if(input[i]>(2061+offset0))
{
	if(input[i]==(2063+offset0))
{
	vR[i] = 2063;
}
else
{
	vR[i] = 2062;
}

}
else
{
	if(input[i]==(2061+offset0))
{
	vR[i] = 2061;
}
else
{
	vR[i] = 2060;
}

}

}
else
{
	if(input[i]>(2057+offset0))
{
	if(input[i]==(2059+offset0))
{
	vR[i] = 2059;
}
else
{
	vR[i] = 2058;
}

}
else
{
	if(input[i]==(2057+offset0))
{
	vR[i] = 2057;
}
else
{
	vR[i] = 2056;
}

}

}

}
else
{
	if(input[i]>(2051+offset0))
{
	if(input[i]>(2053+offset0))
{
	if(input[i]==(2055+offset0))
{
	vR[i] = 2055;
}
else
{
	vR[i] = 2054;
}

}
else
{
	if(input[i]==(2053+offset0))
{
	vR[i] = 2053;
}
else
{
	vR[i] = 2052;
}

}

}
else
{
	if(input[i]>(2049+offset0))
{
	if(input[i]==(2051+offset0))
{
	vR[i] = 2051;
}
else
{
	vR[i] = 2050;
}

}
else
{
	if(input[i]==(2049+offset0))
{
	vR[i] = 2049;
}
else
{
	vR[i] = 2048;
}

}

}

}

}

}

}

}

}

}

}

}
else
{
	if(input[i]>(1023+offset0))
{
	if(input[i]>(1535+offset0))
{
	if(input[i]>(1791+offset0))
{
	if(input[i]>(1919+offset0))
{
	if(input[i]>(1983+offset0))
{
	if(input[i]>(2015+offset0))
{
	if(input[i]>(2031+offset0))
{
	if(input[i]>(2039+offset0))
{
	if(input[i]>(2043+offset0))
{
	if(input[i]>(2045+offset0))
{
	if(input[i]==(2047+offset0))
{
	vR[i] = 2047;
}
else
{
	vR[i] = 2046;
}

}
else
{
	if(input[i]==(2045+offset0))
{
	vR[i] = 2045;
}
else
{
	vR[i] = 2044;
}

}

}
else
{
	if(input[i]>(2041+offset0))
{
	if(input[i]==(2043+offset0))
{
	vR[i] = 2043;
}
else
{
	vR[i] = 2042;
}

}
else
{
	if(input[i]==(2041+offset0))
{
	vR[i] = 2041;
}
else
{
	vR[i] = 2040;
}

}

}

}
else
{
	if(input[i]>(2035+offset0))
{
	if(input[i]>(2037+offset0))
{
	if(input[i]==(2039+offset0))
{
	vR[i] = 2039;
}
else
{
	vR[i] = 2038;
}

}
else
{
	if(input[i]==(2037+offset0))
{
	vR[i] = 2037;
}
else
{
	vR[i] = 2036;
}

}

}
else
{
	if(input[i]>(2033+offset0))
{
	if(input[i]==(2035+offset0))
{
	vR[i] = 2035;
}
else
{
	vR[i] = 2034;
}

}
else
{
	if(input[i]==(2033+offset0))
{
	vR[i] = 2033;
}
else
{
	vR[i] = 2032;
}

}

}

}

}
else
{
	if(input[i]>(2023+offset0))
{
	if(input[i]>(2027+offset0))
{
	if(input[i]>(2029+offset0))
{
	if(input[i]==(2031+offset0))
{
	vR[i] = 2031;
}
else
{
	vR[i] = 2030;
}

}
else
{
	if(input[i]==(2029+offset0))
{
	vR[i] = 2029;
}
else
{
	vR[i] = 2028;
}

}

}
else
{
	if(input[i]>(2025+offset0))
{
	if(input[i]==(2027+offset0))
{
	vR[i] = 2027;
}
else
{
	vR[i] = 2026;
}

}
else
{
	if(input[i]==(2025+offset0))
{
	vR[i] = 2025;
}
else
{
	vR[i] = 2024;
}

}

}

}
else
{
	if(input[i]>(2019+offset0))
{
	if(input[i]>(2021+offset0))
{
	if(input[i]==(2023+offset0))
{
	vR[i] = 2023;
}
else
{
	vR[i] = 2022;
}

}
else
{
	if(input[i]==(2021+offset0))
{
	vR[i] = 2021;
}
else
{
	vR[i] = 2020;
}

}

}
else
{
	if(input[i]>(2017+offset0))
{
	if(input[i]==(2019+offset0))
{
	vR[i] = 2019;
}
else
{
	vR[i] = 2018;
}

}
else
{
	if(input[i]==(2017+offset0))
{
	vR[i] = 2017;
}
else
{
	vR[i] = 2016;
}

}

}

}

}

}
else
{
	if(input[i]>(1999+offset0))
{
	if(input[i]>(2007+offset0))
{
	if(input[i]>(2011+offset0))
{
	if(input[i]>(2013+offset0))
{
	if(input[i]==(2015+offset0))
{
	vR[i] = 2015;
}
else
{
	vR[i] = 2014;
}

}
else
{
	if(input[i]==(2013+offset0))
{
	vR[i] = 2013;
}
else
{
	vR[i] = 2012;
}

}

}
else
{
	if(input[i]>(2009+offset0))
{
	if(input[i]==(2011+offset0))
{
	vR[i] = 2011;
}
else
{
	vR[i] = 2010;
}

}
else
{
	if(input[i]==(2009+offset0))
{
	vR[i] = 2009;
}
else
{
	vR[i] = 2008;
}

}

}

}
else
{
	if(input[i]>(2003+offset0))
{
	if(input[i]>(2005+offset0))
{
	if(input[i]==(2007+offset0))
{
	vR[i] = 2007;
}
else
{
	vR[i] = 2006;
}

}
else
{
	if(input[i]==(2005+offset0))
{
	vR[i] = 2005;
}
else
{
	vR[i] = 2004;
}

}

}
else
{
	if(input[i]>(2001+offset0))
{
	if(input[i]==(2003+offset0))
{
	vR[i] = 2003;
}
else
{
	vR[i] = 2002;
}

}
else
{
	if(input[i]==(2001+offset0))
{
	vR[i] = 2001;
}
else
{
	vR[i] = 2000;
}

}

}

}

}
else
{
	if(input[i]>(1991+offset0))
{
	if(input[i]>(1995+offset0))
{
	if(input[i]>(1997+offset0))
{
	if(input[i]==(1999+offset0))
{
	vR[i] = 1999;
}
else
{
	vR[i] = 1998;
}

}
else
{
	if(input[i]==(1997+offset0))
{
	vR[i] = 1997;
}
else
{
	vR[i] = 1996;
}

}

}
else
{
	if(input[i]>(1993+offset0))
{
	if(input[i]==(1995+offset0))
{
	vR[i] = 1995;
}
else
{
	vR[i] = 1994;
}

}
else
{
	if(input[i]==(1993+offset0))
{
	vR[i] = 1993;
}
else
{
	vR[i] = 1992;
}

}

}

}
else
{
	if(input[i]>(1987+offset0))
{
	if(input[i]>(1989+offset0))
{
	if(input[i]==(1991+offset0))
{
	vR[i] = 1991;
}
else
{
	vR[i] = 1990;
}

}
else
{
	if(input[i]==(1989+offset0))
{
	vR[i] = 1989;
}
else
{
	vR[i] = 1988;
}

}

}
else
{
	if(input[i]>(1985+offset0))
{
	if(input[i]==(1987+offset0))
{
	vR[i] = 1987;
}
else
{
	vR[i] = 1986;
}

}
else
{
	if(input[i]==(1985+offset0))
{
	vR[i] = 1985;
}
else
{
	vR[i] = 1984;
}

}

}

}

}

}

}
else
{
	if(input[i]>(1951+offset0))
{
	if(input[i]>(1967+offset0))
{
	if(input[i]>(1975+offset0))
{
	if(input[i]>(1979+offset0))
{
	if(input[i]>(1981+offset0))
{
	if(input[i]==(1983+offset0))
{
	vR[i] = 1983;
}
else
{
	vR[i] = 1982;
}

}
else
{
	if(input[i]==(1981+offset0))
{
	vR[i] = 1981;
}
else
{
	vR[i] = 1980;
}

}

}
else
{
	if(input[i]>(1977+offset0))
{
	if(input[i]==(1979+offset0))
{
	vR[i] = 1979;
}
else
{
	vR[i] = 1978;
}

}
else
{
	if(input[i]==(1977+offset0))
{
	vR[i] = 1977;
}
else
{
	vR[i] = 1976;
}

}

}

}
else
{
	if(input[i]>(1971+offset0))
{
	if(input[i]>(1973+offset0))
{
	if(input[i]==(1975+offset0))
{
	vR[i] = 1975;
}
else
{
	vR[i] = 1974;
}

}
else
{
	if(input[i]==(1973+offset0))
{
	vR[i] = 1973;
}
else
{
	vR[i] = 1972;
}

}

}
else
{
	if(input[i]>(1969+offset0))
{
	if(input[i]==(1971+offset0))
{
	vR[i] = 1971;
}
else
{
	vR[i] = 1970;
}

}
else
{
	if(input[i]==(1969+offset0))
{
	vR[i] = 1969;
}
else
{
	vR[i] = 1968;
}

}

}

}

}
else
{
	if(input[i]>(1959+offset0))
{
	if(input[i]>(1963+offset0))
{
	if(input[i]>(1965+offset0))
{
	if(input[i]==(1967+offset0))
{
	vR[i] = 1967;
}
else
{
	vR[i] = 1966;
}

}
else
{
	if(input[i]==(1965+offset0))
{
	vR[i] = 1965;
}
else
{
	vR[i] = 1964;
}

}

}
else
{
	if(input[i]>(1961+offset0))
{
	if(input[i]==(1963+offset0))
{
	vR[i] = 1963;
}
else
{
	vR[i] = 1962;
}

}
else
{
	if(input[i]==(1961+offset0))
{
	vR[i] = 1961;
}
else
{
	vR[i] = 1960;
}

}

}

}
else
{
	if(input[i]>(1955+offset0))
{
	if(input[i]>(1957+offset0))
{
	if(input[i]==(1959+offset0))
{
	vR[i] = 1959;
}
else
{
	vR[i] = 1958;
}

}
else
{
	if(input[i]==(1957+offset0))
{
	vR[i] = 1957;
}
else
{
	vR[i] = 1956;
}

}

}
else
{
	if(input[i]>(1953+offset0))
{
	if(input[i]==(1955+offset0))
{
	vR[i] = 1955;
}
else
{
	vR[i] = 1954;
}

}
else
{
	if(input[i]==(1953+offset0))
{
	vR[i] = 1953;
}
else
{
	vR[i] = 1952;
}

}

}

}

}

}
else
{
	if(input[i]>(1935+offset0))
{
	if(input[i]>(1943+offset0))
{
	if(input[i]>(1947+offset0))
{
	if(input[i]>(1949+offset0))
{
	if(input[i]==(1951+offset0))
{
	vR[i] = 1951;
}
else
{
	vR[i] = 1950;
}

}
else
{
	if(input[i]==(1949+offset0))
{
	vR[i] = 1949;
}
else
{
	vR[i] = 1948;
}

}

}
else
{
	if(input[i]>(1945+offset0))
{
	if(input[i]==(1947+offset0))
{
	vR[i] = 1947;
}
else
{
	vR[i] = 1946;
}

}
else
{
	if(input[i]==(1945+offset0))
{
	vR[i] = 1945;
}
else
{
	vR[i] = 1944;
}

}

}

}
else
{
	if(input[i]>(1939+offset0))
{
	if(input[i]>(1941+offset0))
{
	if(input[i]==(1943+offset0))
{
	vR[i] = 1943;
}
else
{
	vR[i] = 1942;
}

}
else
{
	if(input[i]==(1941+offset0))
{
	vR[i] = 1941;
}
else
{
	vR[i] = 1940;
}

}

}
else
{
	if(input[i]>(1937+offset0))
{
	if(input[i]==(1939+offset0))
{
	vR[i] = 1939;
}
else
{
	vR[i] = 1938;
}

}
else
{
	if(input[i]==(1937+offset0))
{
	vR[i] = 1937;
}
else
{
	vR[i] = 1936;
}

}

}

}

}
else
{
	if(input[i]>(1927+offset0))
{
	if(input[i]>(1931+offset0))
{
	if(input[i]>(1933+offset0))
{
	if(input[i]==(1935+offset0))
{
	vR[i] = 1935;
}
else
{
	vR[i] = 1934;
}

}
else
{
	if(input[i]==(1933+offset0))
{
	vR[i] = 1933;
}
else
{
	vR[i] = 1932;
}

}

}
else
{
	if(input[i]>(1929+offset0))
{
	if(input[i]==(1931+offset0))
{
	vR[i] = 1931;
}
else
{
	vR[i] = 1930;
}

}
else
{
	if(input[i]==(1929+offset0))
{
	vR[i] = 1929;
}
else
{
	vR[i] = 1928;
}

}

}

}
else
{
	if(input[i]>(1923+offset0))
{
	if(input[i]>(1925+offset0))
{
	if(input[i]==(1927+offset0))
{
	vR[i] = 1927;
}
else
{
	vR[i] = 1926;
}

}
else
{
	if(input[i]==(1925+offset0))
{
	vR[i] = 1925;
}
else
{
	vR[i] = 1924;
}

}

}
else
{
	if(input[i]>(1921+offset0))
{
	if(input[i]==(1923+offset0))
{
	vR[i] = 1923;
}
else
{
	vR[i] = 1922;
}

}
else
{
	if(input[i]==(1921+offset0))
{
	vR[i] = 1921;
}
else
{
	vR[i] = 1920;
}

}

}

}

}

}

}

}
else
{
	if(input[i]>(1855+offset0))
{
	if(input[i]>(1887+offset0))
{
	if(input[i]>(1903+offset0))
{
	if(input[i]>(1911+offset0))
{
	if(input[i]>(1915+offset0))
{
	if(input[i]>(1917+offset0))
{
	if(input[i]==(1919+offset0))
{
	vR[i] = 1919;
}
else
{
	vR[i] = 1918;
}

}
else
{
	if(input[i]==(1917+offset0))
{
	vR[i] = 1917;
}
else
{
	vR[i] = 1916;
}

}

}
else
{
	if(input[i]>(1913+offset0))
{
	if(input[i]==(1915+offset0))
{
	vR[i] = 1915;
}
else
{
	vR[i] = 1914;
}

}
else
{
	if(input[i]==(1913+offset0))
{
	vR[i] = 1913;
}
else
{
	vR[i] = 1912;
}

}

}

}
else
{
	if(input[i]>(1907+offset0))
{
	if(input[i]>(1909+offset0))
{
	if(input[i]==(1911+offset0))
{
	vR[i] = 1911;
}
else
{
	vR[i] = 1910;
}

}
else
{
	if(input[i]==(1909+offset0))
{
	vR[i] = 1909;
}
else
{
	vR[i] = 1908;
}

}

}
else
{
	if(input[i]>(1905+offset0))
{
	if(input[i]==(1907+offset0))
{
	vR[i] = 1907;
}
else
{
	vR[i] = 1906;
}

}
else
{
	if(input[i]==(1905+offset0))
{
	vR[i] = 1905;
}
else
{
	vR[i] = 1904;
}

}

}

}

}
else
{
	if(input[i]>(1895+offset0))
{
	if(input[i]>(1899+offset0))
{
	if(input[i]>(1901+offset0))
{
	if(input[i]==(1903+offset0))
{
	vR[i] = 1903;
}
else
{
	vR[i] = 1902;
}

}
else
{
	if(input[i]==(1901+offset0))
{
	vR[i] = 1901;
}
else
{
	vR[i] = 1900;
}

}

}
else
{
	if(input[i]>(1897+offset0))
{
	if(input[i]==(1899+offset0))
{
	vR[i] = 1899;
}
else
{
	vR[i] = 1898;
}

}
else
{
	if(input[i]==(1897+offset0))
{
	vR[i] = 1897;
}
else
{
	vR[i] = 1896;
}

}

}

}
else
{
	if(input[i]>(1891+offset0))
{
	if(input[i]>(1893+offset0))
{
	if(input[i]==(1895+offset0))
{
	vR[i] = 1895;
}
else
{
	vR[i] = 1894;
}

}
else
{
	if(input[i]==(1893+offset0))
{
	vR[i] = 1893;
}
else
{
	vR[i] = 1892;
}

}

}
else
{
	if(input[i]>(1889+offset0))
{
	if(input[i]==(1891+offset0))
{
	vR[i] = 1891;
}
else
{
	vR[i] = 1890;
}

}
else
{
	if(input[i]==(1889+offset0))
{
	vR[i] = 1889;
}
else
{
	vR[i] = 1888;
}

}

}

}

}

}
else
{
	if(input[i]>(1871+offset0))
{
	if(input[i]>(1879+offset0))
{
	if(input[i]>(1883+offset0))
{
	if(input[i]>(1885+offset0))
{
	if(input[i]==(1887+offset0))
{
	vR[i] = 1887;
}
else
{
	vR[i] = 1886;
}

}
else
{
	if(input[i]==(1885+offset0))
{
	vR[i] = 1885;
}
else
{
	vR[i] = 1884;
}

}

}
else
{
	if(input[i]>(1881+offset0))
{
	if(input[i]==(1883+offset0))
{
	vR[i] = 1883;
}
else
{
	vR[i] = 1882;
}

}
else
{
	if(input[i]==(1881+offset0))
{
	vR[i] = 1881;
}
else
{
	vR[i] = 1880;
}

}

}

}
else
{
	if(input[i]>(1875+offset0))
{
	if(input[i]>(1877+offset0))
{
	if(input[i]==(1879+offset0))
{
	vR[i] = 1879;
}
else
{
	vR[i] = 1878;
}

}
else
{
	if(input[i]==(1877+offset0))
{
	vR[i] = 1877;
}
else
{
	vR[i] = 1876;
}

}

}
else
{
	if(input[i]>(1873+offset0))
{
	if(input[i]==(1875+offset0))
{
	vR[i] = 1875;
}
else
{
	vR[i] = 1874;
}

}
else
{
	if(input[i]==(1873+offset0))
{
	vR[i] = 1873;
}
else
{
	vR[i] = 1872;
}

}

}

}

}
else
{
	if(input[i]>(1863+offset0))
{
	if(input[i]>(1867+offset0))
{
	if(input[i]>(1869+offset0))
{
	if(input[i]==(1871+offset0))
{
	vR[i] = 1871;
}
else
{
	vR[i] = 1870;
}

}
else
{
	if(input[i]==(1869+offset0))
{
	vR[i] = 1869;
}
else
{
	vR[i] = 1868;
}

}

}
else
{
	if(input[i]>(1865+offset0))
{
	if(input[i]==(1867+offset0))
{
	vR[i] = 1867;
}
else
{
	vR[i] = 1866;
}

}
else
{
	if(input[i]==(1865+offset0))
{
	vR[i] = 1865;
}
else
{
	vR[i] = 1864;
}

}

}

}
else
{
	if(input[i]>(1859+offset0))
{
	if(input[i]>(1861+offset0))
{
	if(input[i]==(1863+offset0))
{
	vR[i] = 1863;
}
else
{
	vR[i] = 1862;
}

}
else
{
	if(input[i]==(1861+offset0))
{
	vR[i] = 1861;
}
else
{
	vR[i] = 1860;
}

}

}
else
{
	if(input[i]>(1857+offset0))
{
	if(input[i]==(1859+offset0))
{
	vR[i] = 1859;
}
else
{
	vR[i] = 1858;
}

}
else
{
	if(input[i]==(1857+offset0))
{
	vR[i] = 1857;
}
else
{
	vR[i] = 1856;
}

}

}

}

}

}

}
else
{
	if(input[i]>(1823+offset0))
{
	if(input[i]>(1839+offset0))
{
	if(input[i]>(1847+offset0))
{
	if(input[i]>(1851+offset0))
{
	if(input[i]>(1853+offset0))
{
	if(input[i]==(1855+offset0))
{
	vR[i] = 1855;
}
else
{
	vR[i] = 1854;
}

}
else
{
	if(input[i]==(1853+offset0))
{
	vR[i] = 1853;
}
else
{
	vR[i] = 1852;
}

}

}
else
{
	if(input[i]>(1849+offset0))
{
	if(input[i]==(1851+offset0))
{
	vR[i] = 1851;
}
else
{
	vR[i] = 1850;
}

}
else
{
	if(input[i]==(1849+offset0))
{
	vR[i] = 1849;
}
else
{
	vR[i] = 1848;
}

}

}

}
else
{
	if(input[i]>(1843+offset0))
{
	if(input[i]>(1845+offset0))
{
	if(input[i]==(1847+offset0))
{
	vR[i] = 1847;
}
else
{
	vR[i] = 1846;
}

}
else
{
	if(input[i]==(1845+offset0))
{
	vR[i] = 1845;
}
else
{
	vR[i] = 1844;
}

}

}
else
{
	if(input[i]>(1841+offset0))
{
	if(input[i]==(1843+offset0))
{
	vR[i] = 1843;
}
else
{
	vR[i] = 1842;
}

}
else
{
	if(input[i]==(1841+offset0))
{
	vR[i] = 1841;
}
else
{
	vR[i] = 1840;
}

}

}

}

}
else
{
	if(input[i]>(1831+offset0))
{
	if(input[i]>(1835+offset0))
{
	if(input[i]>(1837+offset0))
{
	if(input[i]==(1839+offset0))
{
	vR[i] = 1839;
}
else
{
	vR[i] = 1838;
}

}
else
{
	if(input[i]==(1837+offset0))
{
	vR[i] = 1837;
}
else
{
	vR[i] = 1836;
}

}

}
else
{
	if(input[i]>(1833+offset0))
{
	if(input[i]==(1835+offset0))
{
	vR[i] = 1835;
}
else
{
	vR[i] = 1834;
}

}
else
{
	if(input[i]==(1833+offset0))
{
	vR[i] = 1833;
}
else
{
	vR[i] = 1832;
}

}

}

}
else
{
	if(input[i]>(1827+offset0))
{
	if(input[i]>(1829+offset0))
{
	if(input[i]==(1831+offset0))
{
	vR[i] = 1831;
}
else
{
	vR[i] = 1830;
}

}
else
{
	if(input[i]==(1829+offset0))
{
	vR[i] = 1829;
}
else
{
	vR[i] = 1828;
}

}

}
else
{
	if(input[i]>(1825+offset0))
{
	if(input[i]==(1827+offset0))
{
	vR[i] = 1827;
}
else
{
	vR[i] = 1826;
}

}
else
{
	if(input[i]==(1825+offset0))
{
	vR[i] = 1825;
}
else
{
	vR[i] = 1824;
}

}

}

}

}

}
else
{
	if(input[i]>(1807+offset0))
{
	if(input[i]>(1815+offset0))
{
	if(input[i]>(1819+offset0))
{
	if(input[i]>(1821+offset0))
{
	if(input[i]==(1823+offset0))
{
	vR[i] = 1823;
}
else
{
	vR[i] = 1822;
}

}
else
{
	if(input[i]==(1821+offset0))
{
	vR[i] = 1821;
}
else
{
	vR[i] = 1820;
}

}

}
else
{
	if(input[i]>(1817+offset0))
{
	if(input[i]==(1819+offset0))
{
	vR[i] = 1819;
}
else
{
	vR[i] = 1818;
}

}
else
{
	if(input[i]==(1817+offset0))
{
	vR[i] = 1817;
}
else
{
	vR[i] = 1816;
}

}

}

}
else
{
	if(input[i]>(1811+offset0))
{
	if(input[i]>(1813+offset0))
{
	if(input[i]==(1815+offset0))
{
	vR[i] = 1815;
}
else
{
	vR[i] = 1814;
}

}
else
{
	if(input[i]==(1813+offset0))
{
	vR[i] = 1813;
}
else
{
	vR[i] = 1812;
}

}

}
else
{
	if(input[i]>(1809+offset0))
{
	if(input[i]==(1811+offset0))
{
	vR[i] = 1811;
}
else
{
	vR[i] = 1810;
}

}
else
{
	if(input[i]==(1809+offset0))
{
	vR[i] = 1809;
}
else
{
	vR[i] = 1808;
}

}

}

}

}
else
{
	if(input[i]>(1799+offset0))
{
	if(input[i]>(1803+offset0))
{
	if(input[i]>(1805+offset0))
{
	if(input[i]==(1807+offset0))
{
	vR[i] = 1807;
}
else
{
	vR[i] = 1806;
}

}
else
{
	if(input[i]==(1805+offset0))
{
	vR[i] = 1805;
}
else
{
	vR[i] = 1804;
}

}

}
else
{
	if(input[i]>(1801+offset0))
{
	if(input[i]==(1803+offset0))
{
	vR[i] = 1803;
}
else
{
	vR[i] = 1802;
}

}
else
{
	if(input[i]==(1801+offset0))
{
	vR[i] = 1801;
}
else
{
	vR[i] = 1800;
}

}

}

}
else
{
	if(input[i]>(1795+offset0))
{
	if(input[i]>(1797+offset0))
{
	if(input[i]==(1799+offset0))
{
	vR[i] = 1799;
}
else
{
	vR[i] = 1798;
}

}
else
{
	if(input[i]==(1797+offset0))
{
	vR[i] = 1797;
}
else
{
	vR[i] = 1796;
}

}

}
else
{
	if(input[i]>(1793+offset0))
{
	if(input[i]==(1795+offset0))
{
	vR[i] = 1795;
}
else
{
	vR[i] = 1794;
}

}
else
{
	if(input[i]==(1793+offset0))
{
	vR[i] = 1793;
}
else
{
	vR[i] = 1792;
}

}

}

}

}

}

}

}

}
else
{
	if(input[i]>(1663+offset0))
{
	if(input[i]>(1727+offset0))
{
	if(input[i]>(1759+offset0))
{
	if(input[i]>(1775+offset0))
{
	if(input[i]>(1783+offset0))
{
	if(input[i]>(1787+offset0))
{
	if(input[i]>(1789+offset0))
{
	if(input[i]==(1791+offset0))
{
	vR[i] = 1791;
}
else
{
	vR[i] = 1790;
}

}
else
{
	if(input[i]==(1789+offset0))
{
	vR[i] = 1789;
}
else
{
	vR[i] = 1788;
}

}

}
else
{
	if(input[i]>(1785+offset0))
{
	if(input[i]==(1787+offset0))
{
	vR[i] = 1787;
}
else
{
	vR[i] = 1786;
}

}
else
{
	if(input[i]==(1785+offset0))
{
	vR[i] = 1785;
}
else
{
	vR[i] = 1784;
}

}

}

}
else
{
	if(input[i]>(1779+offset0))
{
	if(input[i]>(1781+offset0))
{
	if(input[i]==(1783+offset0))
{
	vR[i] = 1783;
}
else
{
	vR[i] = 1782;
}

}
else
{
	if(input[i]==(1781+offset0))
{
	vR[i] = 1781;
}
else
{
	vR[i] = 1780;
}

}

}
else
{
	if(input[i]>(1777+offset0))
{
	if(input[i]==(1779+offset0))
{
	vR[i] = 1779;
}
else
{
	vR[i] = 1778;
}

}
else
{
	if(input[i]==(1777+offset0))
{
	vR[i] = 1777;
}
else
{
	vR[i] = 1776;
}

}

}

}

}
else
{
	if(input[i]>(1767+offset0))
{
	if(input[i]>(1771+offset0))
{
	if(input[i]>(1773+offset0))
{
	if(input[i]==(1775+offset0))
{
	vR[i] = 1775;
}
else
{
	vR[i] = 1774;
}

}
else
{
	if(input[i]==(1773+offset0))
{
	vR[i] = 1773;
}
else
{
	vR[i] = 1772;
}

}

}
else
{
	if(input[i]>(1769+offset0))
{
	if(input[i]==(1771+offset0))
{
	vR[i] = 1771;
}
else
{
	vR[i] = 1770;
}

}
else
{
	if(input[i]==(1769+offset0))
{
	vR[i] = 1769;
}
else
{
	vR[i] = 1768;
}

}

}

}
else
{
	if(input[i]>(1763+offset0))
{
	if(input[i]>(1765+offset0))
{
	if(input[i]==(1767+offset0))
{
	vR[i] = 1767;
}
else
{
	vR[i] = 1766;
}

}
else
{
	if(input[i]==(1765+offset0))
{
	vR[i] = 1765;
}
else
{
	vR[i] = 1764;
}

}

}
else
{
	if(input[i]>(1761+offset0))
{
	if(input[i]==(1763+offset0))
{
	vR[i] = 1763;
}
else
{
	vR[i] = 1762;
}

}
else
{
	if(input[i]==(1761+offset0))
{
	vR[i] = 1761;
}
else
{
	vR[i] = 1760;
}

}

}

}

}

}
else
{
	if(input[i]>(1743+offset0))
{
	if(input[i]>(1751+offset0))
{
	if(input[i]>(1755+offset0))
{
	if(input[i]>(1757+offset0))
{
	if(input[i]==(1759+offset0))
{
	vR[i] = 1759;
}
else
{
	vR[i] = 1758;
}

}
else
{
	if(input[i]==(1757+offset0))
{
	vR[i] = 1757;
}
else
{
	vR[i] = 1756;
}

}

}
else
{
	if(input[i]>(1753+offset0))
{
	if(input[i]==(1755+offset0))
{
	vR[i] = 1755;
}
else
{
	vR[i] = 1754;
}

}
else
{
	if(input[i]==(1753+offset0))
{
	vR[i] = 1753;
}
else
{
	vR[i] = 1752;
}

}

}

}
else
{
	if(input[i]>(1747+offset0))
{
	if(input[i]>(1749+offset0))
{
	if(input[i]==(1751+offset0))
{
	vR[i] = 1751;
}
else
{
	vR[i] = 1750;
}

}
else
{
	if(input[i]==(1749+offset0))
{
	vR[i] = 1749;
}
else
{
	vR[i] = 1748;
}

}

}
else
{
	if(input[i]>(1745+offset0))
{
	if(input[i]==(1747+offset0))
{
	vR[i] = 1747;
}
else
{
	vR[i] = 1746;
}

}
else
{
	if(input[i]==(1745+offset0))
{
	vR[i] = 1745;
}
else
{
	vR[i] = 1744;
}

}

}

}

}
else
{
	if(input[i]>(1735+offset0))
{
	if(input[i]>(1739+offset0))
{
	if(input[i]>(1741+offset0))
{
	if(input[i]==(1743+offset0))
{
	vR[i] = 1743;
}
else
{
	vR[i] = 1742;
}

}
else
{
	if(input[i]==(1741+offset0))
{
	vR[i] = 1741;
}
else
{
	vR[i] = 1740;
}

}

}
else
{
	if(input[i]>(1737+offset0))
{
	if(input[i]==(1739+offset0))
{
	vR[i] = 1739;
}
else
{
	vR[i] = 1738;
}

}
else
{
	if(input[i]==(1737+offset0))
{
	vR[i] = 1737;
}
else
{
	vR[i] = 1736;
}

}

}

}
else
{
	if(input[i]>(1731+offset0))
{
	if(input[i]>(1733+offset0))
{
	if(input[i]==(1735+offset0))
{
	vR[i] = 1735;
}
else
{
	vR[i] = 1734;
}

}
else
{
	if(input[i]==(1733+offset0))
{
	vR[i] = 1733;
}
else
{
	vR[i] = 1732;
}

}

}
else
{
	if(input[i]>(1729+offset0))
{
	if(input[i]==(1731+offset0))
{
	vR[i] = 1731;
}
else
{
	vR[i] = 1730;
}

}
else
{
	if(input[i]==(1729+offset0))
{
	vR[i] = 1729;
}
else
{
	vR[i] = 1728;
}

}

}

}

}

}

}
else
{
	if(input[i]>(1695+offset0))
{
	if(input[i]>(1711+offset0))
{
	if(input[i]>(1719+offset0))
{
	if(input[i]>(1723+offset0))
{
	if(input[i]>(1725+offset0))
{
	if(input[i]==(1727+offset0))
{
	vR[i] = 1727;
}
else
{
	vR[i] = 1726;
}

}
else
{
	if(input[i]==(1725+offset0))
{
	vR[i] = 1725;
}
else
{
	vR[i] = 1724;
}

}

}
else
{
	if(input[i]>(1721+offset0))
{
	if(input[i]==(1723+offset0))
{
	vR[i] = 1723;
}
else
{
	vR[i] = 1722;
}

}
else
{
	if(input[i]==(1721+offset0))
{
	vR[i] = 1721;
}
else
{
	vR[i] = 1720;
}

}

}

}
else
{
	if(input[i]>(1715+offset0))
{
	if(input[i]>(1717+offset0))
{
	if(input[i]==(1719+offset0))
{
	vR[i] = 1719;
}
else
{
	vR[i] = 1718;
}

}
else
{
	if(input[i]==(1717+offset0))
{
	vR[i] = 1717;
}
else
{
	vR[i] = 1716;
}

}

}
else
{
	if(input[i]>(1713+offset0))
{
	if(input[i]==(1715+offset0))
{
	vR[i] = 1715;
}
else
{
	vR[i] = 1714;
}

}
else
{
	if(input[i]==(1713+offset0))
{
	vR[i] = 1713;
}
else
{
	vR[i] = 1712;
}

}

}

}

}
else
{
	if(input[i]>(1703+offset0))
{
	if(input[i]>(1707+offset0))
{
	if(input[i]>(1709+offset0))
{
	if(input[i]==(1711+offset0))
{
	vR[i] = 1711;
}
else
{
	vR[i] = 1710;
}

}
else
{
	if(input[i]==(1709+offset0))
{
	vR[i] = 1709;
}
else
{
	vR[i] = 1708;
}

}

}
else
{
	if(input[i]>(1705+offset0))
{
	if(input[i]==(1707+offset0))
{
	vR[i] = 1707;
}
else
{
	vR[i] = 1706;
}

}
else
{
	if(input[i]==(1705+offset0))
{
	vR[i] = 1705;
}
else
{
	vR[i] = 1704;
}

}

}

}
else
{
	if(input[i]>(1699+offset0))
{
	if(input[i]>(1701+offset0))
{
	if(input[i]==(1703+offset0))
{
	vR[i] = 1703;
}
else
{
	vR[i] = 1702;
}

}
else
{
	if(input[i]==(1701+offset0))
{
	vR[i] = 1701;
}
else
{
	vR[i] = 1700;
}

}

}
else
{
	if(input[i]>(1697+offset0))
{
	if(input[i]==(1699+offset0))
{
	vR[i] = 1699;
}
else
{
	vR[i] = 1698;
}

}
else
{
	if(input[i]==(1697+offset0))
{
	vR[i] = 1697;
}
else
{
	vR[i] = 1696;
}

}

}

}

}

}
else
{
	if(input[i]>(1679+offset0))
{
	if(input[i]>(1687+offset0))
{
	if(input[i]>(1691+offset0))
{
	if(input[i]>(1693+offset0))
{
	if(input[i]==(1695+offset0))
{
	vR[i] = 1695;
}
else
{
	vR[i] = 1694;
}

}
else
{
	if(input[i]==(1693+offset0))
{
	vR[i] = 1693;
}
else
{
	vR[i] = 1692;
}

}

}
else
{
	if(input[i]>(1689+offset0))
{
	if(input[i]==(1691+offset0))
{
	vR[i] = 1691;
}
else
{
	vR[i] = 1690;
}

}
else
{
	if(input[i]==(1689+offset0))
{
	vR[i] = 1689;
}
else
{
	vR[i] = 1688;
}

}

}

}
else
{
	if(input[i]>(1683+offset0))
{
	if(input[i]>(1685+offset0))
{
	if(input[i]==(1687+offset0))
{
	vR[i] = 1687;
}
else
{
	vR[i] = 1686;
}

}
else
{
	if(input[i]==(1685+offset0))
{
	vR[i] = 1685;
}
else
{
	vR[i] = 1684;
}

}

}
else
{
	if(input[i]>(1681+offset0))
{
	if(input[i]==(1683+offset0))
{
	vR[i] = 1683;
}
else
{
	vR[i] = 1682;
}

}
else
{
	if(input[i]==(1681+offset0))
{
	vR[i] = 1681;
}
else
{
	vR[i] = 1680;
}

}

}

}

}
else
{
	if(input[i]>(1671+offset0))
{
	if(input[i]>(1675+offset0))
{
	if(input[i]>(1677+offset0))
{
	if(input[i]==(1679+offset0))
{
	vR[i] = 1679;
}
else
{
	vR[i] = 1678;
}

}
else
{
	if(input[i]==(1677+offset0))
{
	vR[i] = 1677;
}
else
{
	vR[i] = 1676;
}

}

}
else
{
	if(input[i]>(1673+offset0))
{
	if(input[i]==(1675+offset0))
{
	vR[i] = 1675;
}
else
{
	vR[i] = 1674;
}

}
else
{
	if(input[i]==(1673+offset0))
{
	vR[i] = 1673;
}
else
{
	vR[i] = 1672;
}

}

}

}
else
{
	if(input[i]>(1667+offset0))
{
	if(input[i]>(1669+offset0))
{
	if(input[i]==(1671+offset0))
{
	vR[i] = 1671;
}
else
{
	vR[i] = 1670;
}

}
else
{
	if(input[i]==(1669+offset0))
{
	vR[i] = 1669;
}
else
{
	vR[i] = 1668;
}

}

}
else
{
	if(input[i]>(1665+offset0))
{
	if(input[i]==(1667+offset0))
{
	vR[i] = 1667;
}
else
{
	vR[i] = 1666;
}

}
else
{
	if(input[i]==(1665+offset0))
{
	vR[i] = 1665;
}
else
{
	vR[i] = 1664;
}

}

}

}

}

}

}

}
else
{
	if(input[i]>(1599+offset0))
{
	if(input[i]>(1631+offset0))
{
	if(input[i]>(1647+offset0))
{
	if(input[i]>(1655+offset0))
{
	if(input[i]>(1659+offset0))
{
	if(input[i]>(1661+offset0))
{
	if(input[i]==(1663+offset0))
{
	vR[i] = 1663;
}
else
{
	vR[i] = 1662;
}

}
else
{
	if(input[i]==(1661+offset0))
{
	vR[i] = 1661;
}
else
{
	vR[i] = 1660;
}

}

}
else
{
	if(input[i]>(1657+offset0))
{
	if(input[i]==(1659+offset0))
{
	vR[i] = 1659;
}
else
{
	vR[i] = 1658;
}

}
else
{
	if(input[i]==(1657+offset0))
{
	vR[i] = 1657;
}
else
{
	vR[i] = 1656;
}

}

}

}
else
{
	if(input[i]>(1651+offset0))
{
	if(input[i]>(1653+offset0))
{
	if(input[i]==(1655+offset0))
{
	vR[i] = 1655;
}
else
{
	vR[i] = 1654;
}

}
else
{
	if(input[i]==(1653+offset0))
{
	vR[i] = 1653;
}
else
{
	vR[i] = 1652;
}

}

}
else
{
	if(input[i]>(1649+offset0))
{
	if(input[i]==(1651+offset0))
{
	vR[i] = 1651;
}
else
{
	vR[i] = 1650;
}

}
else
{
	if(input[i]==(1649+offset0))
{
	vR[i] = 1649;
}
else
{
	vR[i] = 1648;
}

}

}

}

}
else
{
	if(input[i]>(1639+offset0))
{
	if(input[i]>(1643+offset0))
{
	if(input[i]>(1645+offset0))
{
	if(input[i]==(1647+offset0))
{
	vR[i] = 1647;
}
else
{
	vR[i] = 1646;
}

}
else
{
	if(input[i]==(1645+offset0))
{
	vR[i] = 1645;
}
else
{
	vR[i] = 1644;
}

}

}
else
{
	if(input[i]>(1641+offset0))
{
	if(input[i]==(1643+offset0))
{
	vR[i] = 1643;
}
else
{
	vR[i] = 1642;
}

}
else
{
	if(input[i]==(1641+offset0))
{
	vR[i] = 1641;
}
else
{
	vR[i] = 1640;
}

}

}

}
else
{
	if(input[i]>(1635+offset0))
{
	if(input[i]>(1637+offset0))
{
	if(input[i]==(1639+offset0))
{
	vR[i] = 1639;
}
else
{
	vR[i] = 1638;
}

}
else
{
	if(input[i]==(1637+offset0))
{
	vR[i] = 1637;
}
else
{
	vR[i] = 1636;
}

}

}
else
{
	if(input[i]>(1633+offset0))
{
	if(input[i]==(1635+offset0))
{
	vR[i] = 1635;
}
else
{
	vR[i] = 1634;
}

}
else
{
	if(input[i]==(1633+offset0))
{
	vR[i] = 1633;
}
else
{
	vR[i] = 1632;
}

}

}

}

}

}
else
{
	if(input[i]>(1615+offset0))
{
	if(input[i]>(1623+offset0))
{
	if(input[i]>(1627+offset0))
{
	if(input[i]>(1629+offset0))
{
	if(input[i]==(1631+offset0))
{
	vR[i] = 1631;
}
else
{
	vR[i] = 1630;
}

}
else
{
	if(input[i]==(1629+offset0))
{
	vR[i] = 1629;
}
else
{
	vR[i] = 1628;
}

}

}
else
{
	if(input[i]>(1625+offset0))
{
	if(input[i]==(1627+offset0))
{
	vR[i] = 1627;
}
else
{
	vR[i] = 1626;
}

}
else
{
	if(input[i]==(1625+offset0))
{
	vR[i] = 1625;
}
else
{
	vR[i] = 1624;
}

}

}

}
else
{
	if(input[i]>(1619+offset0))
{
	if(input[i]>(1621+offset0))
{
	if(input[i]==(1623+offset0))
{
	vR[i] = 1623;
}
else
{
	vR[i] = 1622;
}

}
else
{
	if(input[i]==(1621+offset0))
{
	vR[i] = 1621;
}
else
{
	vR[i] = 1620;
}

}

}
else
{
	if(input[i]>(1617+offset0))
{
	if(input[i]==(1619+offset0))
{
	vR[i] = 1619;
}
else
{
	vR[i] = 1618;
}

}
else
{
	if(input[i]==(1617+offset0))
{
	vR[i] = 1617;
}
else
{
	vR[i] = 1616;
}

}

}

}

}
else
{
	if(input[i]>(1607+offset0))
{
	if(input[i]>(1611+offset0))
{
	if(input[i]>(1613+offset0))
{
	if(input[i]==(1615+offset0))
{
	vR[i] = 1615;
}
else
{
	vR[i] = 1614;
}

}
else
{
	if(input[i]==(1613+offset0))
{
	vR[i] = 1613;
}
else
{
	vR[i] = 1612;
}

}

}
else
{
	if(input[i]>(1609+offset0))
{
	if(input[i]==(1611+offset0))
{
	vR[i] = 1611;
}
else
{
	vR[i] = 1610;
}

}
else
{
	if(input[i]==(1609+offset0))
{
	vR[i] = 1609;
}
else
{
	vR[i] = 1608;
}

}

}

}
else
{
	if(input[i]>(1603+offset0))
{
	if(input[i]>(1605+offset0))
{
	if(input[i]==(1607+offset0))
{
	vR[i] = 1607;
}
else
{
	vR[i] = 1606;
}

}
else
{
	if(input[i]==(1605+offset0))
{
	vR[i] = 1605;
}
else
{
	vR[i] = 1604;
}

}

}
else
{
	if(input[i]>(1601+offset0))
{
	if(input[i]==(1603+offset0))
{
	vR[i] = 1603;
}
else
{
	vR[i] = 1602;
}

}
else
{
	if(input[i]==(1601+offset0))
{
	vR[i] = 1601;
}
else
{
	vR[i] = 1600;
}

}

}

}

}

}

}
else
{
	if(input[i]>(1567+offset0))
{
	if(input[i]>(1583+offset0))
{
	if(input[i]>(1591+offset0))
{
	if(input[i]>(1595+offset0))
{
	if(input[i]>(1597+offset0))
{
	if(input[i]==(1599+offset0))
{
	vR[i] = 1599;
}
else
{
	vR[i] = 1598;
}

}
else
{
	if(input[i]==(1597+offset0))
{
	vR[i] = 1597;
}
else
{
	vR[i] = 1596;
}

}

}
else
{
	if(input[i]>(1593+offset0))
{
	if(input[i]==(1595+offset0))
{
	vR[i] = 1595;
}
else
{
	vR[i] = 1594;
}

}
else
{
	if(input[i]==(1593+offset0))
{
	vR[i] = 1593;
}
else
{
	vR[i] = 1592;
}

}

}

}
else
{
	if(input[i]>(1587+offset0))
{
	if(input[i]>(1589+offset0))
{
	if(input[i]==(1591+offset0))
{
	vR[i] = 1591;
}
else
{
	vR[i] = 1590;
}

}
else
{
	if(input[i]==(1589+offset0))
{
	vR[i] = 1589;
}
else
{
	vR[i] = 1588;
}

}

}
else
{
	if(input[i]>(1585+offset0))
{
	if(input[i]==(1587+offset0))
{
	vR[i] = 1587;
}
else
{
	vR[i] = 1586;
}

}
else
{
	if(input[i]==(1585+offset0))
{
	vR[i] = 1585;
}
else
{
	vR[i] = 1584;
}

}

}

}

}
else
{
	if(input[i]>(1575+offset0))
{
	if(input[i]>(1579+offset0))
{
	if(input[i]>(1581+offset0))
{
	if(input[i]==(1583+offset0))
{
	vR[i] = 1583;
}
else
{
	vR[i] = 1582;
}

}
else
{
	if(input[i]==(1581+offset0))
{
	vR[i] = 1581;
}
else
{
	vR[i] = 1580;
}

}

}
else
{
	if(input[i]>(1577+offset0))
{
	if(input[i]==(1579+offset0))
{
	vR[i] = 1579;
}
else
{
	vR[i] = 1578;
}

}
else
{
	if(input[i]==(1577+offset0))
{
	vR[i] = 1577;
}
else
{
	vR[i] = 1576;
}

}

}

}
else
{
	if(input[i]>(1571+offset0))
{
	if(input[i]>(1573+offset0))
{
	if(input[i]==(1575+offset0))
{
	vR[i] = 1575;
}
else
{
	vR[i] = 1574;
}

}
else
{
	if(input[i]==(1573+offset0))
{
	vR[i] = 1573;
}
else
{
	vR[i] = 1572;
}

}

}
else
{
	if(input[i]>(1569+offset0))
{
	if(input[i]==(1571+offset0))
{
	vR[i] = 1571;
}
else
{
	vR[i] = 1570;
}

}
else
{
	if(input[i]==(1569+offset0))
{
	vR[i] = 1569;
}
else
{
	vR[i] = 1568;
}

}

}

}

}

}
else
{
	if(input[i]>(1551+offset0))
{
	if(input[i]>(1559+offset0))
{
	if(input[i]>(1563+offset0))
{
	if(input[i]>(1565+offset0))
{
	if(input[i]==(1567+offset0))
{
	vR[i] = 1567;
}
else
{
	vR[i] = 1566;
}

}
else
{
	if(input[i]==(1565+offset0))
{
	vR[i] = 1565;
}
else
{
	vR[i] = 1564;
}

}

}
else
{
	if(input[i]>(1561+offset0))
{
	if(input[i]==(1563+offset0))
{
	vR[i] = 1563;
}
else
{
	vR[i] = 1562;
}

}
else
{
	if(input[i]==(1561+offset0))
{
	vR[i] = 1561;
}
else
{
	vR[i] = 1560;
}

}

}

}
else
{
	if(input[i]>(1555+offset0))
{
	if(input[i]>(1557+offset0))
{
	if(input[i]==(1559+offset0))
{
	vR[i] = 1559;
}
else
{
	vR[i] = 1558;
}

}
else
{
	if(input[i]==(1557+offset0))
{
	vR[i] = 1557;
}
else
{
	vR[i] = 1556;
}

}

}
else
{
	if(input[i]>(1553+offset0))
{
	if(input[i]==(1555+offset0))
{
	vR[i] = 1555;
}
else
{
	vR[i] = 1554;
}

}
else
{
	if(input[i]==(1553+offset0))
{
	vR[i] = 1553;
}
else
{
	vR[i] = 1552;
}

}

}

}

}
else
{
	if(input[i]>(1543+offset0))
{
	if(input[i]>(1547+offset0))
{
	if(input[i]>(1549+offset0))
{
	if(input[i]==(1551+offset0))
{
	vR[i] = 1551;
}
else
{
	vR[i] = 1550;
}

}
else
{
	if(input[i]==(1549+offset0))
{
	vR[i] = 1549;
}
else
{
	vR[i] = 1548;
}

}

}
else
{
	if(input[i]>(1545+offset0))
{
	if(input[i]==(1547+offset0))
{
	vR[i] = 1547;
}
else
{
	vR[i] = 1546;
}

}
else
{
	if(input[i]==(1545+offset0))
{
	vR[i] = 1545;
}
else
{
	vR[i] = 1544;
}

}

}

}
else
{
	if(input[i]>(1539+offset0))
{
	if(input[i]>(1541+offset0))
{
	if(input[i]==(1543+offset0))
{
	vR[i] = 1543;
}
else
{
	vR[i] = 1542;
}

}
else
{
	if(input[i]==(1541+offset0))
{
	vR[i] = 1541;
}
else
{
	vR[i] = 1540;
}

}

}
else
{
	if(input[i]>(1537+offset0))
{
	if(input[i]==(1539+offset0))
{
	vR[i] = 1539;
}
else
{
	vR[i] = 1538;
}

}
else
{
	if(input[i]==(1537+offset0))
{
	vR[i] = 1537;
}
else
{
	vR[i] = 1536;
}

}

}

}

}

}

}

}

}

}
else
{
	if(input[i]>(1279+offset0))
{
	if(input[i]>(1407+offset0))
{
	if(input[i]>(1471+offset0))
{
	if(input[i]>(1503+offset0))
{
	if(input[i]>(1519+offset0))
{
	if(input[i]>(1527+offset0))
{
	if(input[i]>(1531+offset0))
{
	if(input[i]>(1533+offset0))
{
	if(input[i]==(1535+offset0))
{
	vR[i] = 1535;
}
else
{
	vR[i] = 1534;
}

}
else
{
	if(input[i]==(1533+offset0))
{
	vR[i] = 1533;
}
else
{
	vR[i] = 1532;
}

}

}
else
{
	if(input[i]>(1529+offset0))
{
	if(input[i]==(1531+offset0))
{
	vR[i] = 1531;
}
else
{
	vR[i] = 1530;
}

}
else
{
	if(input[i]==(1529+offset0))
{
	vR[i] = 1529;
}
else
{
	vR[i] = 1528;
}

}

}

}
else
{
	if(input[i]>(1523+offset0))
{
	if(input[i]>(1525+offset0))
{
	if(input[i]==(1527+offset0))
{
	vR[i] = 1527;
}
else
{
	vR[i] = 1526;
}

}
else
{
	if(input[i]==(1525+offset0))
{
	vR[i] = 1525;
}
else
{
	vR[i] = 1524;
}

}

}
else
{
	if(input[i]>(1521+offset0))
{
	if(input[i]==(1523+offset0))
{
	vR[i] = 1523;
}
else
{
	vR[i] = 1522;
}

}
else
{
	if(input[i]==(1521+offset0))
{
	vR[i] = 1521;
}
else
{
	vR[i] = 1520;
}

}

}

}

}
else
{
	if(input[i]>(1511+offset0))
{
	if(input[i]>(1515+offset0))
{
	if(input[i]>(1517+offset0))
{
	if(input[i]==(1519+offset0))
{
	vR[i] = 1519;
}
else
{
	vR[i] = 1518;
}

}
else
{
	if(input[i]==(1517+offset0))
{
	vR[i] = 1517;
}
else
{
	vR[i] = 1516;
}

}

}
else
{
	if(input[i]>(1513+offset0))
{
	if(input[i]==(1515+offset0))
{
	vR[i] = 1515;
}
else
{
	vR[i] = 1514;
}

}
else
{
	if(input[i]==(1513+offset0))
{
	vR[i] = 1513;
}
else
{
	vR[i] = 1512;
}

}

}

}
else
{
	if(input[i]>(1507+offset0))
{
	if(input[i]>(1509+offset0))
{
	if(input[i]==(1511+offset0))
{
	vR[i] = 1511;
}
else
{
	vR[i] = 1510;
}

}
else
{
	if(input[i]==(1509+offset0))
{
	vR[i] = 1509;
}
else
{
	vR[i] = 1508;
}

}

}
else
{
	if(input[i]>(1505+offset0))
{
	if(input[i]==(1507+offset0))
{
	vR[i] = 1507;
}
else
{
	vR[i] = 1506;
}

}
else
{
	if(input[i]==(1505+offset0))
{
	vR[i] = 1505;
}
else
{
	vR[i] = 1504;
}

}

}

}

}

}
else
{
	if(input[i]>(1487+offset0))
{
	if(input[i]>(1495+offset0))
{
	if(input[i]>(1499+offset0))
{
	if(input[i]>(1501+offset0))
{
	if(input[i]==(1503+offset0))
{
	vR[i] = 1503;
}
else
{
	vR[i] = 1502;
}

}
else
{
	if(input[i]==(1501+offset0))
{
	vR[i] = 1501;
}
else
{
	vR[i] = 1500;
}

}

}
else
{
	if(input[i]>(1497+offset0))
{
	if(input[i]==(1499+offset0))
{
	vR[i] = 1499;
}
else
{
	vR[i] = 1498;
}

}
else
{
	if(input[i]==(1497+offset0))
{
	vR[i] = 1497;
}
else
{
	vR[i] = 1496;
}

}

}

}
else
{
	if(input[i]>(1491+offset0))
{
	if(input[i]>(1493+offset0))
{
	if(input[i]==(1495+offset0))
{
	vR[i] = 1495;
}
else
{
	vR[i] = 1494;
}

}
else
{
	if(input[i]==(1493+offset0))
{
	vR[i] = 1493;
}
else
{
	vR[i] = 1492;
}

}

}
else
{
	if(input[i]>(1489+offset0))
{
	if(input[i]==(1491+offset0))
{
	vR[i] = 1491;
}
else
{
	vR[i] = 1490;
}

}
else
{
	if(input[i]==(1489+offset0))
{
	vR[i] = 1489;
}
else
{
	vR[i] = 1488;
}

}

}

}

}
else
{
	if(input[i]>(1479+offset0))
{
	if(input[i]>(1483+offset0))
{
	if(input[i]>(1485+offset0))
{
	if(input[i]==(1487+offset0))
{
	vR[i] = 1487;
}
else
{
	vR[i] = 1486;
}

}
else
{
	if(input[i]==(1485+offset0))
{
	vR[i] = 1485;
}
else
{
	vR[i] = 1484;
}

}

}
else
{
	if(input[i]>(1481+offset0))
{
	if(input[i]==(1483+offset0))
{
	vR[i] = 1483;
}
else
{
	vR[i] = 1482;
}

}
else
{
	if(input[i]==(1481+offset0))
{
	vR[i] = 1481;
}
else
{
	vR[i] = 1480;
}

}

}

}
else
{
	if(input[i]>(1475+offset0))
{
	if(input[i]>(1477+offset0))
{
	if(input[i]==(1479+offset0))
{
	vR[i] = 1479;
}
else
{
	vR[i] = 1478;
}

}
else
{
	if(input[i]==(1477+offset0))
{
	vR[i] = 1477;
}
else
{
	vR[i] = 1476;
}

}

}
else
{
	if(input[i]>(1473+offset0))
{
	if(input[i]==(1475+offset0))
{
	vR[i] = 1475;
}
else
{
	vR[i] = 1474;
}

}
else
{
	if(input[i]==(1473+offset0))
{
	vR[i] = 1473;
}
else
{
	vR[i] = 1472;
}

}

}

}

}

}

}
else
{
	if(input[i]>(1439+offset0))
{
	if(input[i]>(1455+offset0))
{
	if(input[i]>(1463+offset0))
{
	if(input[i]>(1467+offset0))
{
	if(input[i]>(1469+offset0))
{
	if(input[i]==(1471+offset0))
{
	vR[i] = 1471;
}
else
{
	vR[i] = 1470;
}

}
else
{
	if(input[i]==(1469+offset0))
{
	vR[i] = 1469;
}
else
{
	vR[i] = 1468;
}

}

}
else
{
	if(input[i]>(1465+offset0))
{
	if(input[i]==(1467+offset0))
{
	vR[i] = 1467;
}
else
{
	vR[i] = 1466;
}

}
else
{
	if(input[i]==(1465+offset0))
{
	vR[i] = 1465;
}
else
{
	vR[i] = 1464;
}

}

}

}
else
{
	if(input[i]>(1459+offset0))
{
	if(input[i]>(1461+offset0))
{
	if(input[i]==(1463+offset0))
{
	vR[i] = 1463;
}
else
{
	vR[i] = 1462;
}

}
else
{
	if(input[i]==(1461+offset0))
{
	vR[i] = 1461;
}
else
{
	vR[i] = 1460;
}

}

}
else
{
	if(input[i]>(1457+offset0))
{
	if(input[i]==(1459+offset0))
{
	vR[i] = 1459;
}
else
{
	vR[i] = 1458;
}

}
else
{
	if(input[i]==(1457+offset0))
{
	vR[i] = 1457;
}
else
{
	vR[i] = 1456;
}

}

}

}

}
else
{
	if(input[i]>(1447+offset0))
{
	if(input[i]>(1451+offset0))
{
	if(input[i]>(1453+offset0))
{
	if(input[i]==(1455+offset0))
{
	vR[i] = 1455;
}
else
{
	vR[i] = 1454;
}

}
else
{
	if(input[i]==(1453+offset0))
{
	vR[i] = 1453;
}
else
{
	vR[i] = 1452;
}

}

}
else
{
	if(input[i]>(1449+offset0))
{
	if(input[i]==(1451+offset0))
{
	vR[i] = 1451;
}
else
{
	vR[i] = 1450;
}

}
else
{
	if(input[i]==(1449+offset0))
{
	vR[i] = 1449;
}
else
{
	vR[i] = 1448;
}

}

}

}
else
{
	if(input[i]>(1443+offset0))
{
	if(input[i]>(1445+offset0))
{
	if(input[i]==(1447+offset0))
{
	vR[i] = 1447;
}
else
{
	vR[i] = 1446;
}

}
else
{
	if(input[i]==(1445+offset0))
{
	vR[i] = 1445;
}
else
{
	vR[i] = 1444;
}

}

}
else
{
	if(input[i]>(1441+offset0))
{
	if(input[i]==(1443+offset0))
{
	vR[i] = 1443;
}
else
{
	vR[i] = 1442;
}

}
else
{
	if(input[i]==(1441+offset0))
{
	vR[i] = 1441;
}
else
{
	vR[i] = 1440;
}

}

}

}

}

}
else
{
	if(input[i]>(1423+offset0))
{
	if(input[i]>(1431+offset0))
{
	if(input[i]>(1435+offset0))
{
	if(input[i]>(1437+offset0))
{
	if(input[i]==(1439+offset0))
{
	vR[i] = 1439;
}
else
{
	vR[i] = 1438;
}

}
else
{
	if(input[i]==(1437+offset0))
{
	vR[i] = 1437;
}
else
{
	vR[i] = 1436;
}

}

}
else
{
	if(input[i]>(1433+offset0))
{
	if(input[i]==(1435+offset0))
{
	vR[i] = 1435;
}
else
{
	vR[i] = 1434;
}

}
else
{
	if(input[i]==(1433+offset0))
{
	vR[i] = 1433;
}
else
{
	vR[i] = 1432;
}

}

}

}
else
{
	if(input[i]>(1427+offset0))
{
	if(input[i]>(1429+offset0))
{
	if(input[i]==(1431+offset0))
{
	vR[i] = 1431;
}
else
{
	vR[i] = 1430;
}

}
else
{
	if(input[i]==(1429+offset0))
{
	vR[i] = 1429;
}
else
{
	vR[i] = 1428;
}

}

}
else
{
	if(input[i]>(1425+offset0))
{
	if(input[i]==(1427+offset0))
{
	vR[i] = 1427;
}
else
{
	vR[i] = 1426;
}

}
else
{
	if(input[i]==(1425+offset0))
{
	vR[i] = 1425;
}
else
{
	vR[i] = 1424;
}

}

}

}

}
else
{
	if(input[i]>(1415+offset0))
{
	if(input[i]>(1419+offset0))
{
	if(input[i]>(1421+offset0))
{
	if(input[i]==(1423+offset0))
{
	vR[i] = 1423;
}
else
{
	vR[i] = 1422;
}

}
else
{
	if(input[i]==(1421+offset0))
{
	vR[i] = 1421;
}
else
{
	vR[i] = 1420;
}

}

}
else
{
	if(input[i]>(1417+offset0))
{
	if(input[i]==(1419+offset0))
{
	vR[i] = 1419;
}
else
{
	vR[i] = 1418;
}

}
else
{
	if(input[i]==(1417+offset0))
{
	vR[i] = 1417;
}
else
{
	vR[i] = 1416;
}

}

}

}
else
{
	if(input[i]>(1411+offset0))
{
	if(input[i]>(1413+offset0))
{
	if(input[i]==(1415+offset0))
{
	vR[i] = 1415;
}
else
{
	vR[i] = 1414;
}

}
else
{
	if(input[i]==(1413+offset0))
{
	vR[i] = 1413;
}
else
{
	vR[i] = 1412;
}

}

}
else
{
	if(input[i]>(1409+offset0))
{
	if(input[i]==(1411+offset0))
{
	vR[i] = 1411;
}
else
{
	vR[i] = 1410;
}

}
else
{
	if(input[i]==(1409+offset0))
{
	vR[i] = 1409;
}
else
{
	vR[i] = 1408;
}

}

}

}

}

}

}

}
else
{
	if(input[i]>(1343+offset0))
{
	if(input[i]>(1375+offset0))
{
	if(input[i]>(1391+offset0))
{
	if(input[i]>(1399+offset0))
{
	if(input[i]>(1403+offset0))
{
	if(input[i]>(1405+offset0))
{
	if(input[i]==(1407+offset0))
{
	vR[i] = 1407;
}
else
{
	vR[i] = 1406;
}

}
else
{
	if(input[i]==(1405+offset0))
{
	vR[i] = 1405;
}
else
{
	vR[i] = 1404;
}

}

}
else
{
	if(input[i]>(1401+offset0))
{
	if(input[i]==(1403+offset0))
{
	vR[i] = 1403;
}
else
{
	vR[i] = 1402;
}

}
else
{
	if(input[i]==(1401+offset0))
{
	vR[i] = 1401;
}
else
{
	vR[i] = 1400;
}

}

}

}
else
{
	if(input[i]>(1395+offset0))
{
	if(input[i]>(1397+offset0))
{
	if(input[i]==(1399+offset0))
{
	vR[i] = 1399;
}
else
{
	vR[i] = 1398;
}

}
else
{
	if(input[i]==(1397+offset0))
{
	vR[i] = 1397;
}
else
{
	vR[i] = 1396;
}

}

}
else
{
	if(input[i]>(1393+offset0))
{
	if(input[i]==(1395+offset0))
{
	vR[i] = 1395;
}
else
{
	vR[i] = 1394;
}

}
else
{
	if(input[i]==(1393+offset0))
{
	vR[i] = 1393;
}
else
{
	vR[i] = 1392;
}

}

}

}

}
else
{
	if(input[i]>(1383+offset0))
{
	if(input[i]>(1387+offset0))
{
	if(input[i]>(1389+offset0))
{
	if(input[i]==(1391+offset0))
{
	vR[i] = 1391;
}
else
{
	vR[i] = 1390;
}

}
else
{
	if(input[i]==(1389+offset0))
{
	vR[i] = 1389;
}
else
{
	vR[i] = 1388;
}

}

}
else
{
	if(input[i]>(1385+offset0))
{
	if(input[i]==(1387+offset0))
{
	vR[i] = 1387;
}
else
{
	vR[i] = 1386;
}

}
else
{
	if(input[i]==(1385+offset0))
{
	vR[i] = 1385;
}
else
{
	vR[i] = 1384;
}

}

}

}
else
{
	if(input[i]>(1379+offset0))
{
	if(input[i]>(1381+offset0))
{
	if(input[i]==(1383+offset0))
{
	vR[i] = 1383;
}
else
{
	vR[i] = 1382;
}

}
else
{
	if(input[i]==(1381+offset0))
{
	vR[i] = 1381;
}
else
{
	vR[i] = 1380;
}

}

}
else
{
	if(input[i]>(1377+offset0))
{
	if(input[i]==(1379+offset0))
{
	vR[i] = 1379;
}
else
{
	vR[i] = 1378;
}

}
else
{
	if(input[i]==(1377+offset0))
{
	vR[i] = 1377;
}
else
{
	vR[i] = 1376;
}

}

}

}

}

}
else
{
	if(input[i]>(1359+offset0))
{
	if(input[i]>(1367+offset0))
{
	if(input[i]>(1371+offset0))
{
	if(input[i]>(1373+offset0))
{
	if(input[i]==(1375+offset0))
{
	vR[i] = 1375;
}
else
{
	vR[i] = 1374;
}

}
else
{
	if(input[i]==(1373+offset0))
{
	vR[i] = 1373;
}
else
{
	vR[i] = 1372;
}

}

}
else
{
	if(input[i]>(1369+offset0))
{
	if(input[i]==(1371+offset0))
{
	vR[i] = 1371;
}
else
{
	vR[i] = 1370;
}

}
else
{
	if(input[i]==(1369+offset0))
{
	vR[i] = 1369;
}
else
{
	vR[i] = 1368;
}

}

}

}
else
{
	if(input[i]>(1363+offset0))
{
	if(input[i]>(1365+offset0))
{
	if(input[i]==(1367+offset0))
{
	vR[i] = 1367;
}
else
{
	vR[i] = 1366;
}

}
else
{
	if(input[i]==(1365+offset0))
{
	vR[i] = 1365;
}
else
{
	vR[i] = 1364;
}

}

}
else
{
	if(input[i]>(1361+offset0))
{
	if(input[i]==(1363+offset0))
{
	vR[i] = 1363;
}
else
{
	vR[i] = 1362;
}

}
else
{
	if(input[i]==(1361+offset0))
{
	vR[i] = 1361;
}
else
{
	vR[i] = 1360;
}

}

}

}

}
else
{
	if(input[i]>(1351+offset0))
{
	if(input[i]>(1355+offset0))
{
	if(input[i]>(1357+offset0))
{
	if(input[i]==(1359+offset0))
{
	vR[i] = 1359;
}
else
{
	vR[i] = 1358;
}

}
else
{
	if(input[i]==(1357+offset0))
{
	vR[i] = 1357;
}
else
{
	vR[i] = 1356;
}

}

}
else
{
	if(input[i]>(1353+offset0))
{
	if(input[i]==(1355+offset0))
{
	vR[i] = 1355;
}
else
{
	vR[i] = 1354;
}

}
else
{
	if(input[i]==(1353+offset0))
{
	vR[i] = 1353;
}
else
{
	vR[i] = 1352;
}

}

}

}
else
{
	if(input[i]>(1347+offset0))
{
	if(input[i]>(1349+offset0))
{
	if(input[i]==(1351+offset0))
{
	vR[i] = 1351;
}
else
{
	vR[i] = 1350;
}

}
else
{
	if(input[i]==(1349+offset0))
{
	vR[i] = 1349;
}
else
{
	vR[i] = 1348;
}

}

}
else
{
	if(input[i]>(1345+offset0))
{
	if(input[i]==(1347+offset0))
{
	vR[i] = 1347;
}
else
{
	vR[i] = 1346;
}

}
else
{
	if(input[i]==(1345+offset0))
{
	vR[i] = 1345;
}
else
{
	vR[i] = 1344;
}

}

}

}

}

}

}
else
{
	if(input[i]>(1311+offset0))
{
	if(input[i]>(1327+offset0))
{
	if(input[i]>(1335+offset0))
{
	if(input[i]>(1339+offset0))
{
	if(input[i]>(1341+offset0))
{
	if(input[i]==(1343+offset0))
{
	vR[i] = 1343;
}
else
{
	vR[i] = 1342;
}

}
else
{
	if(input[i]==(1341+offset0))
{
	vR[i] = 1341;
}
else
{
	vR[i] = 1340;
}

}

}
else
{
	if(input[i]>(1337+offset0))
{
	if(input[i]==(1339+offset0))
{
	vR[i] = 1339;
}
else
{
	vR[i] = 1338;
}

}
else
{
	if(input[i]==(1337+offset0))
{
	vR[i] = 1337;
}
else
{
	vR[i] = 1336;
}

}

}

}
else
{
	if(input[i]>(1331+offset0))
{
	if(input[i]>(1333+offset0))
{
	if(input[i]==(1335+offset0))
{
	vR[i] = 1335;
}
else
{
	vR[i] = 1334;
}

}
else
{
	if(input[i]==(1333+offset0))
{
	vR[i] = 1333;
}
else
{
	vR[i] = 1332;
}

}

}
else
{
	if(input[i]>(1329+offset0))
{
	if(input[i]==(1331+offset0))
{
	vR[i] = 1331;
}
else
{
	vR[i] = 1330;
}

}
else
{
	if(input[i]==(1329+offset0))
{
	vR[i] = 1329;
}
else
{
	vR[i] = 1328;
}

}

}

}

}
else
{
	if(input[i]>(1319+offset0))
{
	if(input[i]>(1323+offset0))
{
	if(input[i]>(1325+offset0))
{
	if(input[i]==(1327+offset0))
{
	vR[i] = 1327;
}
else
{
	vR[i] = 1326;
}

}
else
{
	if(input[i]==(1325+offset0))
{
	vR[i] = 1325;
}
else
{
	vR[i] = 1324;
}

}

}
else
{
	if(input[i]>(1321+offset0))
{
	if(input[i]==(1323+offset0))
{
	vR[i] = 1323;
}
else
{
	vR[i] = 1322;
}

}
else
{
	if(input[i]==(1321+offset0))
{
	vR[i] = 1321;
}
else
{
	vR[i] = 1320;
}

}

}

}
else
{
	if(input[i]>(1315+offset0))
{
	if(input[i]>(1317+offset0))
{
	if(input[i]==(1319+offset0))
{
	vR[i] = 1319;
}
else
{
	vR[i] = 1318;
}

}
else
{
	if(input[i]==(1317+offset0))
{
	vR[i] = 1317;
}
else
{
	vR[i] = 1316;
}

}

}
else
{
	if(input[i]>(1313+offset0))
{
	if(input[i]==(1315+offset0))
{
	vR[i] = 1315;
}
else
{
	vR[i] = 1314;
}

}
else
{
	if(input[i]==(1313+offset0))
{
	vR[i] = 1313;
}
else
{
	vR[i] = 1312;
}

}

}

}

}

}
else
{
	if(input[i]>(1295+offset0))
{
	if(input[i]>(1303+offset0))
{
	if(input[i]>(1307+offset0))
{
	if(input[i]>(1309+offset0))
{
	if(input[i]==(1311+offset0))
{
	vR[i] = 1311;
}
else
{
	vR[i] = 1310;
}

}
else
{
	if(input[i]==(1309+offset0))
{
	vR[i] = 1309;
}
else
{
	vR[i] = 1308;
}

}

}
else
{
	if(input[i]>(1305+offset0))
{
	if(input[i]==(1307+offset0))
{
	vR[i] = 1307;
}
else
{
	vR[i] = 1306;
}

}
else
{
	if(input[i]==(1305+offset0))
{
	vR[i] = 1305;
}
else
{
	vR[i] = 1304;
}

}

}

}
else
{
	if(input[i]>(1299+offset0))
{
	if(input[i]>(1301+offset0))
{
	if(input[i]==(1303+offset0))
{
	vR[i] = 1303;
}
else
{
	vR[i] = 1302;
}

}
else
{
	if(input[i]==(1301+offset0))
{
	vR[i] = 1301;
}
else
{
	vR[i] = 1300;
}

}

}
else
{
	if(input[i]>(1297+offset0))
{
	if(input[i]==(1299+offset0))
{
	vR[i] = 1299;
}
else
{
	vR[i] = 1298;
}

}
else
{
	if(input[i]==(1297+offset0))
{
	vR[i] = 1297;
}
else
{
	vR[i] = 1296;
}

}

}

}

}
else
{
	if(input[i]>(1287+offset0))
{
	if(input[i]>(1291+offset0))
{
	if(input[i]>(1293+offset0))
{
	if(input[i]==(1295+offset0))
{
	vR[i] = 1295;
}
else
{
	vR[i] = 1294;
}

}
else
{
	if(input[i]==(1293+offset0))
{
	vR[i] = 1293;
}
else
{
	vR[i] = 1292;
}

}

}
else
{
	if(input[i]>(1289+offset0))
{
	if(input[i]==(1291+offset0))
{
	vR[i] = 1291;
}
else
{
	vR[i] = 1290;
}

}
else
{
	if(input[i]==(1289+offset0))
{
	vR[i] = 1289;
}
else
{
	vR[i] = 1288;
}

}

}

}
else
{
	if(input[i]>(1283+offset0))
{
	if(input[i]>(1285+offset0))
{
	if(input[i]==(1287+offset0))
{
	vR[i] = 1287;
}
else
{
	vR[i] = 1286;
}

}
else
{
	if(input[i]==(1285+offset0))
{
	vR[i] = 1285;
}
else
{
	vR[i] = 1284;
}

}

}
else
{
	if(input[i]>(1281+offset0))
{
	if(input[i]==(1283+offset0))
{
	vR[i] = 1283;
}
else
{
	vR[i] = 1282;
}

}
else
{
	if(input[i]==(1281+offset0))
{
	vR[i] = 1281;
}
else
{
	vR[i] = 1280;
}

}

}

}

}

}

}

}

}
else
{
	if(input[i]>(1151+offset0))
{
	if(input[i]>(1215+offset0))
{
	if(input[i]>(1247+offset0))
{
	if(input[i]>(1263+offset0))
{
	if(input[i]>(1271+offset0))
{
	if(input[i]>(1275+offset0))
{
	if(input[i]>(1277+offset0))
{
	if(input[i]==(1279+offset0))
{
	vR[i] = 1279;
}
else
{
	vR[i] = 1278;
}

}
else
{
	if(input[i]==(1277+offset0))
{
	vR[i] = 1277;
}
else
{
	vR[i] = 1276;
}

}

}
else
{
	if(input[i]>(1273+offset0))
{
	if(input[i]==(1275+offset0))
{
	vR[i] = 1275;
}
else
{
	vR[i] = 1274;
}

}
else
{
	if(input[i]==(1273+offset0))
{
	vR[i] = 1273;
}
else
{
	vR[i] = 1272;
}

}

}

}
else
{
	if(input[i]>(1267+offset0))
{
	if(input[i]>(1269+offset0))
{
	if(input[i]==(1271+offset0))
{
	vR[i] = 1271;
}
else
{
	vR[i] = 1270;
}

}
else
{
	if(input[i]==(1269+offset0))
{
	vR[i] = 1269;
}
else
{
	vR[i] = 1268;
}

}

}
else
{
	if(input[i]>(1265+offset0))
{
	if(input[i]==(1267+offset0))
{
	vR[i] = 1267;
}
else
{
	vR[i] = 1266;
}

}
else
{
	if(input[i]==(1265+offset0))
{
	vR[i] = 1265;
}
else
{
	vR[i] = 1264;
}

}

}

}

}
else
{
	if(input[i]>(1255+offset0))
{
	if(input[i]>(1259+offset0))
{
	if(input[i]>(1261+offset0))
{
	if(input[i]==(1263+offset0))
{
	vR[i] = 1263;
}
else
{
	vR[i] = 1262;
}

}
else
{
	if(input[i]==(1261+offset0))
{
	vR[i] = 1261;
}
else
{
	vR[i] = 1260;
}

}

}
else
{
	if(input[i]>(1257+offset0))
{
	if(input[i]==(1259+offset0))
{
	vR[i] = 1259;
}
else
{
	vR[i] = 1258;
}

}
else
{
	if(input[i]==(1257+offset0))
{
	vR[i] = 1257;
}
else
{
	vR[i] = 1256;
}

}

}

}
else
{
	if(input[i]>(1251+offset0))
{
	if(input[i]>(1253+offset0))
{
	if(input[i]==(1255+offset0))
{
	vR[i] = 1255;
}
else
{
	vR[i] = 1254;
}

}
else
{
	if(input[i]==(1253+offset0))
{
	vR[i] = 1253;
}
else
{
	vR[i] = 1252;
}

}

}
else
{
	if(input[i]>(1249+offset0))
{
	if(input[i]==(1251+offset0))
{
	vR[i] = 1251;
}
else
{
	vR[i] = 1250;
}

}
else
{
	if(input[i]==(1249+offset0))
{
	vR[i] = 1249;
}
else
{
	vR[i] = 1248;
}

}

}

}

}

}
else
{
	if(input[i]>(1231+offset0))
{
	if(input[i]>(1239+offset0))
{
	if(input[i]>(1243+offset0))
{
	if(input[i]>(1245+offset0))
{
	if(input[i]==(1247+offset0))
{
	vR[i] = 1247;
}
else
{
	vR[i] = 1246;
}

}
else
{
	if(input[i]==(1245+offset0))
{
	vR[i] = 1245;
}
else
{
	vR[i] = 1244;
}

}

}
else
{
	if(input[i]>(1241+offset0))
{
	if(input[i]==(1243+offset0))
{
	vR[i] = 1243;
}
else
{
	vR[i] = 1242;
}

}
else
{
	if(input[i]==(1241+offset0))
{
	vR[i] = 1241;
}
else
{
	vR[i] = 1240;
}

}

}

}
else
{
	if(input[i]>(1235+offset0))
{
	if(input[i]>(1237+offset0))
{
	if(input[i]==(1239+offset0))
{
	vR[i] = 1239;
}
else
{
	vR[i] = 1238;
}

}
else
{
	if(input[i]==(1237+offset0))
{
	vR[i] = 1237;
}
else
{
	vR[i] = 1236;
}

}

}
else
{
	if(input[i]>(1233+offset0))
{
	if(input[i]==(1235+offset0))
{
	vR[i] = 1235;
}
else
{
	vR[i] = 1234;
}

}
else
{
	if(input[i]==(1233+offset0))
{
	vR[i] = 1233;
}
else
{
	vR[i] = 1232;
}

}

}

}

}
else
{
	if(input[i]>(1223+offset0))
{
	if(input[i]>(1227+offset0))
{
	if(input[i]>(1229+offset0))
{
	if(input[i]==(1231+offset0))
{
	vR[i] = 1231;
}
else
{
	vR[i] = 1230;
}

}
else
{
	if(input[i]==(1229+offset0))
{
	vR[i] = 1229;
}
else
{
	vR[i] = 1228;
}

}

}
else
{
	if(input[i]>(1225+offset0))
{
	if(input[i]==(1227+offset0))
{
	vR[i] = 1227;
}
else
{
	vR[i] = 1226;
}

}
else
{
	if(input[i]==(1225+offset0))
{
	vR[i] = 1225;
}
else
{
	vR[i] = 1224;
}

}

}

}
else
{
	if(input[i]>(1219+offset0))
{
	if(input[i]>(1221+offset0))
{
	if(input[i]==(1223+offset0))
{
	vR[i] = 1223;
}
else
{
	vR[i] = 1222;
}

}
else
{
	if(input[i]==(1221+offset0))
{
	vR[i] = 1221;
}
else
{
	vR[i] = 1220;
}

}

}
else
{
	if(input[i]>(1217+offset0))
{
	if(input[i]==(1219+offset0))
{
	vR[i] = 1219;
}
else
{
	vR[i] = 1218;
}

}
else
{
	if(input[i]==(1217+offset0))
{
	vR[i] = 1217;
}
else
{
	vR[i] = 1216;
}

}

}

}

}

}

}
else
{
	if(input[i]>(1183+offset0))
{
	if(input[i]>(1199+offset0))
{
	if(input[i]>(1207+offset0))
{
	if(input[i]>(1211+offset0))
{
	if(input[i]>(1213+offset0))
{
	if(input[i]==(1215+offset0))
{
	vR[i] = 1215;
}
else
{
	vR[i] = 1214;
}

}
else
{
	if(input[i]==(1213+offset0))
{
	vR[i] = 1213;
}
else
{
	vR[i] = 1212;
}

}

}
else
{
	if(input[i]>(1209+offset0))
{
	if(input[i]==(1211+offset0))
{
	vR[i] = 1211;
}
else
{
	vR[i] = 1210;
}

}
else
{
	if(input[i]==(1209+offset0))
{
	vR[i] = 1209;
}
else
{
	vR[i] = 1208;
}

}

}

}
else
{
	if(input[i]>(1203+offset0))
{
	if(input[i]>(1205+offset0))
{
	if(input[i]==(1207+offset0))
{
	vR[i] = 1207;
}
else
{
	vR[i] = 1206;
}

}
else
{
	if(input[i]==(1205+offset0))
{
	vR[i] = 1205;
}
else
{
	vR[i] = 1204;
}

}

}
else
{
	if(input[i]>(1201+offset0))
{
	if(input[i]==(1203+offset0))
{
	vR[i] = 1203;
}
else
{
	vR[i] = 1202;
}

}
else
{
	if(input[i]==(1201+offset0))
{
	vR[i] = 1201;
}
else
{
	vR[i] = 1200;
}

}

}

}

}
else
{
	if(input[i]>(1191+offset0))
{
	if(input[i]>(1195+offset0))
{
	if(input[i]>(1197+offset0))
{
	if(input[i]==(1199+offset0))
{
	vR[i] = 1199;
}
else
{
	vR[i] = 1198;
}

}
else
{
	if(input[i]==(1197+offset0))
{
	vR[i] = 1197;
}
else
{
	vR[i] = 1196;
}

}

}
else
{
	if(input[i]>(1193+offset0))
{
	if(input[i]==(1195+offset0))
{
	vR[i] = 1195;
}
else
{
	vR[i] = 1194;
}

}
else
{
	if(input[i]==(1193+offset0))
{
	vR[i] = 1193;
}
else
{
	vR[i] = 1192;
}

}

}

}
else
{
	if(input[i]>(1187+offset0))
{
	if(input[i]>(1189+offset0))
{
	if(input[i]==(1191+offset0))
{
	vR[i] = 1191;
}
else
{
	vR[i] = 1190;
}

}
else
{
	if(input[i]==(1189+offset0))
{
	vR[i] = 1189;
}
else
{
	vR[i] = 1188;
}

}

}
else
{
	if(input[i]>(1185+offset0))
{
	if(input[i]==(1187+offset0))
{
	vR[i] = 1187;
}
else
{
	vR[i] = 1186;
}

}
else
{
	if(input[i]==(1185+offset0))
{
	vR[i] = 1185;
}
else
{
	vR[i] = 1184;
}

}

}

}

}

}
else
{
	if(input[i]>(1167+offset0))
{
	if(input[i]>(1175+offset0))
{
	if(input[i]>(1179+offset0))
{
	if(input[i]>(1181+offset0))
{
	if(input[i]==(1183+offset0))
{
	vR[i] = 1183;
}
else
{
	vR[i] = 1182;
}

}
else
{
	if(input[i]==(1181+offset0))
{
	vR[i] = 1181;
}
else
{
	vR[i] = 1180;
}

}

}
else
{
	if(input[i]>(1177+offset0))
{
	if(input[i]==(1179+offset0))
{
	vR[i] = 1179;
}
else
{
	vR[i] = 1178;
}

}
else
{
	if(input[i]==(1177+offset0))
{
	vR[i] = 1177;
}
else
{
	vR[i] = 1176;
}

}

}

}
else
{
	if(input[i]>(1171+offset0))
{
	if(input[i]>(1173+offset0))
{
	if(input[i]==(1175+offset0))
{
	vR[i] = 1175;
}
else
{
	vR[i] = 1174;
}

}
else
{
	if(input[i]==(1173+offset0))
{
	vR[i] = 1173;
}
else
{
	vR[i] = 1172;
}

}

}
else
{
	if(input[i]>(1169+offset0))
{
	if(input[i]==(1171+offset0))
{
	vR[i] = 1171;
}
else
{
	vR[i] = 1170;
}

}
else
{
	if(input[i]==(1169+offset0))
{
	vR[i] = 1169;
}
else
{
	vR[i] = 1168;
}

}

}

}

}
else
{
	if(input[i]>(1159+offset0))
{
	if(input[i]>(1163+offset0))
{
	if(input[i]>(1165+offset0))
{
	if(input[i]==(1167+offset0))
{
	vR[i] = 1167;
}
else
{
	vR[i] = 1166;
}

}
else
{
	if(input[i]==(1165+offset0))
{
	vR[i] = 1165;
}
else
{
	vR[i] = 1164;
}

}

}
else
{
	if(input[i]>(1161+offset0))
{
	if(input[i]==(1163+offset0))
{
	vR[i] = 1163;
}
else
{
	vR[i] = 1162;
}

}
else
{
	if(input[i]==(1161+offset0))
{
	vR[i] = 1161;
}
else
{
	vR[i] = 1160;
}

}

}

}
else
{
	if(input[i]>(1155+offset0))
{
	if(input[i]>(1157+offset0))
{
	if(input[i]==(1159+offset0))
{
	vR[i] = 1159;
}
else
{
	vR[i] = 1158;
}

}
else
{
	if(input[i]==(1157+offset0))
{
	vR[i] = 1157;
}
else
{
	vR[i] = 1156;
}

}

}
else
{
	if(input[i]>(1153+offset0))
{
	if(input[i]==(1155+offset0))
{
	vR[i] = 1155;
}
else
{
	vR[i] = 1154;
}

}
else
{
	if(input[i]==(1153+offset0))
{
	vR[i] = 1153;
}
else
{
	vR[i] = 1152;
}

}

}

}

}

}

}

}
else
{
	if(input[i]>(1087+offset0))
{
	if(input[i]>(1119+offset0))
{
	if(input[i]>(1135+offset0))
{
	if(input[i]>(1143+offset0))
{
	if(input[i]>(1147+offset0))
{
	if(input[i]>(1149+offset0))
{
	if(input[i]==(1151+offset0))
{
	vR[i] = 1151;
}
else
{
	vR[i] = 1150;
}

}
else
{
	if(input[i]==(1149+offset0))
{
	vR[i] = 1149;
}
else
{
	vR[i] = 1148;
}

}

}
else
{
	if(input[i]>(1145+offset0))
{
	if(input[i]==(1147+offset0))
{
	vR[i] = 1147;
}
else
{
	vR[i] = 1146;
}

}
else
{
	if(input[i]==(1145+offset0))
{
	vR[i] = 1145;
}
else
{
	vR[i] = 1144;
}

}

}

}
else
{
	if(input[i]>(1139+offset0))
{
	if(input[i]>(1141+offset0))
{
	if(input[i]==(1143+offset0))
{
	vR[i] = 1143;
}
else
{
	vR[i] = 1142;
}

}
else
{
	if(input[i]==(1141+offset0))
{
	vR[i] = 1141;
}
else
{
	vR[i] = 1140;
}

}

}
else
{
	if(input[i]>(1137+offset0))
{
	if(input[i]==(1139+offset0))
{
	vR[i] = 1139;
}
else
{
	vR[i] = 1138;
}

}
else
{
	if(input[i]==(1137+offset0))
{
	vR[i] = 1137;
}
else
{
	vR[i] = 1136;
}

}

}

}

}
else
{
	if(input[i]>(1127+offset0))
{
	if(input[i]>(1131+offset0))
{
	if(input[i]>(1133+offset0))
{
	if(input[i]==(1135+offset0))
{
	vR[i] = 1135;
}
else
{
	vR[i] = 1134;
}

}
else
{
	if(input[i]==(1133+offset0))
{
	vR[i] = 1133;
}
else
{
	vR[i] = 1132;
}

}

}
else
{
	if(input[i]>(1129+offset0))
{
	if(input[i]==(1131+offset0))
{
	vR[i] = 1131;
}
else
{
	vR[i] = 1130;
}

}
else
{
	if(input[i]==(1129+offset0))
{
	vR[i] = 1129;
}
else
{
	vR[i] = 1128;
}

}

}

}
else
{
	if(input[i]>(1123+offset0))
{
	if(input[i]>(1125+offset0))
{
	if(input[i]==(1127+offset0))
{
	vR[i] = 1127;
}
else
{
	vR[i] = 1126;
}

}
else
{
	if(input[i]==(1125+offset0))
{
	vR[i] = 1125;
}
else
{
	vR[i] = 1124;
}

}

}
else
{
	if(input[i]>(1121+offset0))
{
	if(input[i]==(1123+offset0))
{
	vR[i] = 1123;
}
else
{
	vR[i] = 1122;
}

}
else
{
	if(input[i]==(1121+offset0))
{
	vR[i] = 1121;
}
else
{
	vR[i] = 1120;
}

}

}

}

}

}
else
{
	if(input[i]>(1103+offset0))
{
	if(input[i]>(1111+offset0))
{
	if(input[i]>(1115+offset0))
{
	if(input[i]>(1117+offset0))
{
	if(input[i]==(1119+offset0))
{
	vR[i] = 1119;
}
else
{
	vR[i] = 1118;
}

}
else
{
	if(input[i]==(1117+offset0))
{
	vR[i] = 1117;
}
else
{
	vR[i] = 1116;
}

}

}
else
{
	if(input[i]>(1113+offset0))
{
	if(input[i]==(1115+offset0))
{
	vR[i] = 1115;
}
else
{
	vR[i] = 1114;
}

}
else
{
	if(input[i]==(1113+offset0))
{
	vR[i] = 1113;
}
else
{
	vR[i] = 1112;
}

}

}

}
else
{
	if(input[i]>(1107+offset0))
{
	if(input[i]>(1109+offset0))
{
	if(input[i]==(1111+offset0))
{
	vR[i] = 1111;
}
else
{
	vR[i] = 1110;
}

}
else
{
	if(input[i]==(1109+offset0))
{
	vR[i] = 1109;
}
else
{
	vR[i] = 1108;
}

}

}
else
{
	if(input[i]>(1105+offset0))
{
	if(input[i]==(1107+offset0))
{
	vR[i] = 1107;
}
else
{
	vR[i] = 1106;
}

}
else
{
	if(input[i]==(1105+offset0))
{
	vR[i] = 1105;
}
else
{
	vR[i] = 1104;
}

}

}

}

}
else
{
	if(input[i]>(1095+offset0))
{
	if(input[i]>(1099+offset0))
{
	if(input[i]>(1101+offset0))
{
	if(input[i]==(1103+offset0))
{
	vR[i] = 1103;
}
else
{
	vR[i] = 1102;
}

}
else
{
	if(input[i]==(1101+offset0))
{
	vR[i] = 1101;
}
else
{
	vR[i] = 1100;
}

}

}
else
{
	if(input[i]>(1097+offset0))
{
	if(input[i]==(1099+offset0))
{
	vR[i] = 1099;
}
else
{
	vR[i] = 1098;
}

}
else
{
	if(input[i]==(1097+offset0))
{
	vR[i] = 1097;
}
else
{
	vR[i] = 1096;
}

}

}

}
else
{
	if(input[i]>(1091+offset0))
{
	if(input[i]>(1093+offset0))
{
	if(input[i]==(1095+offset0))
{
	vR[i] = 1095;
}
else
{
	vR[i] = 1094;
}

}
else
{
	if(input[i]==(1093+offset0))
{
	vR[i] = 1093;
}
else
{
	vR[i] = 1092;
}

}

}
else
{
	if(input[i]>(1089+offset0))
{
	if(input[i]==(1091+offset0))
{
	vR[i] = 1091;
}
else
{
	vR[i] = 1090;
}

}
else
{
	if(input[i]==(1089+offset0))
{
	vR[i] = 1089;
}
else
{
	vR[i] = 1088;
}

}

}

}

}

}

}
else
{
	if(input[i]>(1055+offset0))
{
	if(input[i]>(1071+offset0))
{
	if(input[i]>(1079+offset0))
{
	if(input[i]>(1083+offset0))
{
	if(input[i]>(1085+offset0))
{
	if(input[i]==(1087+offset0))
{
	vR[i] = 1087;
}
else
{
	vR[i] = 1086;
}

}
else
{
	if(input[i]==(1085+offset0))
{
	vR[i] = 1085;
}
else
{
	vR[i] = 1084;
}

}

}
else
{
	if(input[i]>(1081+offset0))
{
	if(input[i]==(1083+offset0))
{
	vR[i] = 1083;
}
else
{
	vR[i] = 1082;
}

}
else
{
	if(input[i]==(1081+offset0))
{
	vR[i] = 1081;
}
else
{
	vR[i] = 1080;
}

}

}

}
else
{
	if(input[i]>(1075+offset0))
{
	if(input[i]>(1077+offset0))
{
	if(input[i]==(1079+offset0))
{
	vR[i] = 1079;
}
else
{
	vR[i] = 1078;
}

}
else
{
	if(input[i]==(1077+offset0))
{
	vR[i] = 1077;
}
else
{
	vR[i] = 1076;
}

}

}
else
{
	if(input[i]>(1073+offset0))
{
	if(input[i]==(1075+offset0))
{
	vR[i] = 1075;
}
else
{
	vR[i] = 1074;
}

}
else
{
	if(input[i]==(1073+offset0))
{
	vR[i] = 1073;
}
else
{
	vR[i] = 1072;
}

}

}

}

}
else
{
	if(input[i]>(1063+offset0))
{
	if(input[i]>(1067+offset0))
{
	if(input[i]>(1069+offset0))
{
	if(input[i]==(1071+offset0))
{
	vR[i] = 1071;
}
else
{
	vR[i] = 1070;
}

}
else
{
	if(input[i]==(1069+offset0))
{
	vR[i] = 1069;
}
else
{
	vR[i] = 1068;
}

}

}
else
{
	if(input[i]>(1065+offset0))
{
	if(input[i]==(1067+offset0))
{
	vR[i] = 1067;
}
else
{
	vR[i] = 1066;
}

}
else
{
	if(input[i]==(1065+offset0))
{
	vR[i] = 1065;
}
else
{
	vR[i] = 1064;
}

}

}

}
else
{
	if(input[i]>(1059+offset0))
{
	if(input[i]>(1061+offset0))
{
	if(input[i]==(1063+offset0))
{
	vR[i] = 1063;
}
else
{
	vR[i] = 1062;
}

}
else
{
	if(input[i]==(1061+offset0))
{
	vR[i] = 1061;
}
else
{
	vR[i] = 1060;
}

}

}
else
{
	if(input[i]>(1057+offset0))
{
	if(input[i]==(1059+offset0))
{
	vR[i] = 1059;
}
else
{
	vR[i] = 1058;
}

}
else
{
	if(input[i]==(1057+offset0))
{
	vR[i] = 1057;
}
else
{
	vR[i] = 1056;
}

}

}

}

}

}
else
{
	if(input[i]>(1039+offset0))
{
	if(input[i]>(1047+offset0))
{
	if(input[i]>(1051+offset0))
{
	if(input[i]>(1053+offset0))
{
	if(input[i]==(1055+offset0))
{
	vR[i] = 1055;
}
else
{
	vR[i] = 1054;
}

}
else
{
	if(input[i]==(1053+offset0))
{
	vR[i] = 1053;
}
else
{
	vR[i] = 1052;
}

}

}
else
{
	if(input[i]>(1049+offset0))
{
	if(input[i]==(1051+offset0))
{
	vR[i] = 1051;
}
else
{
	vR[i] = 1050;
}

}
else
{
	if(input[i]==(1049+offset0))
{
	vR[i] = 1049;
}
else
{
	vR[i] = 1048;
}

}

}

}
else
{
	if(input[i]>(1043+offset0))
{
	if(input[i]>(1045+offset0))
{
	if(input[i]==(1047+offset0))
{
	vR[i] = 1047;
}
else
{
	vR[i] = 1046;
}

}
else
{
	if(input[i]==(1045+offset0))
{
	vR[i] = 1045;
}
else
{
	vR[i] = 1044;
}

}

}
else
{
	if(input[i]>(1041+offset0))
{
	if(input[i]==(1043+offset0))
{
	vR[i] = 1043;
}
else
{
	vR[i] = 1042;
}

}
else
{
	if(input[i]==(1041+offset0))
{
	vR[i] = 1041;
}
else
{
	vR[i] = 1040;
}

}

}

}

}
else
{
	if(input[i]>(1031+offset0))
{
	if(input[i]>(1035+offset0))
{
	if(input[i]>(1037+offset0))
{
	if(input[i]==(1039+offset0))
{
	vR[i] = 1039;
}
else
{
	vR[i] = 1038;
}

}
else
{
	if(input[i]==(1037+offset0))
{
	vR[i] = 1037;
}
else
{
	vR[i] = 1036;
}

}

}
else
{
	if(input[i]>(1033+offset0))
{
	if(input[i]==(1035+offset0))
{
	vR[i] = 1035;
}
else
{
	vR[i] = 1034;
}

}
else
{
	if(input[i]==(1033+offset0))
{
	vR[i] = 1033;
}
else
{
	vR[i] = 1032;
}

}

}

}
else
{
	if(input[i]>(1027+offset0))
{
	if(input[i]>(1029+offset0))
{
	if(input[i]==(1031+offset0))
{
	vR[i] = 1031;
}
else
{
	vR[i] = 1030;
}

}
else
{
	if(input[i]==(1029+offset0))
{
	vR[i] = 1029;
}
else
{
	vR[i] = 1028;
}

}

}
else
{
	if(input[i]>(1025+offset0))
{
	if(input[i]==(1027+offset0))
{
	vR[i] = 1027;
}
else
{
	vR[i] = 1026;
}

}
else
{
	if(input[i]==(1025+offset0))
{
	vR[i] = 1025;
}
else
{
	vR[i] = 1024;
}

}

}

}

}

}

}

}

}

}

}
else
{
	if(input[i]>(511+offset0))
{
	if(input[i]>(767+offset0))
{
	if(input[i]>(895+offset0))
{
	if(input[i]>(959+offset0))
{
	if(input[i]>(991+offset0))
{
	if(input[i]>(1007+offset0))
{
	if(input[i]>(1015+offset0))
{
	if(input[i]>(1019+offset0))
{
	if(input[i]>(1021+offset0))
{
	if(input[i]==(1023+offset0))
{
	vR[i] = 1023;
}
else
{
	vR[i] = 1022;
}

}
else
{
	if(input[i]==(1021+offset0))
{
	vR[i] = 1021;
}
else
{
	vR[i] = 1020;
}

}

}
else
{
	if(input[i]>(1017+offset0))
{
	if(input[i]==(1019+offset0))
{
	vR[i] = 1019;
}
else
{
	vR[i] = 1018;
}

}
else
{
	if(input[i]==(1017+offset0))
{
	vR[i] = 1017;
}
else
{
	vR[i] = 1016;
}

}

}

}
else
{
	if(input[i]>(1011+offset0))
{
	if(input[i]>(1013+offset0))
{
	if(input[i]==(1015+offset0))
{
	vR[i] = 1015;
}
else
{
	vR[i] = 1014;
}

}
else
{
	if(input[i]==(1013+offset0))
{
	vR[i] = 1013;
}
else
{
	vR[i] = 1012;
}

}

}
else
{
	if(input[i]>(1009+offset0))
{
	if(input[i]==(1011+offset0))
{
	vR[i] = 1011;
}
else
{
	vR[i] = 1010;
}

}
else
{
	if(input[i]==(1009+offset0))
{
	vR[i] = 1009;
}
else
{
	vR[i] = 1008;
}

}

}

}

}
else
{
	if(input[i]>(999+offset0))
{
	if(input[i]>(1003+offset0))
{
	if(input[i]>(1005+offset0))
{
	if(input[i]==(1007+offset0))
{
	vR[i] = 1007;
}
else
{
	vR[i] = 1006;
}

}
else
{
	if(input[i]==(1005+offset0))
{
	vR[i] = 1005;
}
else
{
	vR[i] = 1004;
}

}

}
else
{
	if(input[i]>(1001+offset0))
{
	if(input[i]==(1003+offset0))
{
	vR[i] = 1003;
}
else
{
	vR[i] = 1002;
}

}
else
{
	if(input[i]==(1001+offset0))
{
	vR[i] = 1001;
}
else
{
	vR[i] = 1000;
}

}

}

}
else
{
	if(input[i]>(995+offset0))
{
	if(input[i]>(997+offset0))
{
	if(input[i]==(999+offset0))
{
	vR[i] = 999;
}
else
{
	vR[i] = 998;
}

}
else
{
	if(input[i]==(997+offset0))
{
	vR[i] = 997;
}
else
{
	vR[i] = 996;
}

}

}
else
{
	if(input[i]>(993+offset0))
{
	if(input[i]==(995+offset0))
{
	vR[i] = 995;
}
else
{
	vR[i] = 994;
}

}
else
{
	if(input[i]==(993+offset0))
{
	vR[i] = 993;
}
else
{
	vR[i] = 992;
}

}

}

}

}

}
else
{
	if(input[i]>(975+offset0))
{
	if(input[i]>(983+offset0))
{
	if(input[i]>(987+offset0))
{
	if(input[i]>(989+offset0))
{
	if(input[i]==(991+offset0))
{
	vR[i] = 991;
}
else
{
	vR[i] = 990;
}

}
else
{
	if(input[i]==(989+offset0))
{
	vR[i] = 989;
}
else
{
	vR[i] = 988;
}

}

}
else
{
	if(input[i]>(985+offset0))
{
	if(input[i]==(987+offset0))
{
	vR[i] = 987;
}
else
{
	vR[i] = 986;
}

}
else
{
	if(input[i]==(985+offset0))
{
	vR[i] = 985;
}
else
{
	vR[i] = 984;
}

}

}

}
else
{
	if(input[i]>(979+offset0))
{
	if(input[i]>(981+offset0))
{
	if(input[i]==(983+offset0))
{
	vR[i] = 983;
}
else
{
	vR[i] = 982;
}

}
else
{
	if(input[i]==(981+offset0))
{
	vR[i] = 981;
}
else
{
	vR[i] = 980;
}

}

}
else
{
	if(input[i]>(977+offset0))
{
	if(input[i]==(979+offset0))
{
	vR[i] = 979;
}
else
{
	vR[i] = 978;
}

}
else
{
	if(input[i]==(977+offset0))
{
	vR[i] = 977;
}
else
{
	vR[i] = 976;
}

}

}

}

}
else
{
	if(input[i]>(967+offset0))
{
	if(input[i]>(971+offset0))
{
	if(input[i]>(973+offset0))
{
	if(input[i]==(975+offset0))
{
	vR[i] = 975;
}
else
{
	vR[i] = 974;
}

}
else
{
	if(input[i]==(973+offset0))
{
	vR[i] = 973;
}
else
{
	vR[i] = 972;
}

}

}
else
{
	if(input[i]>(969+offset0))
{
	if(input[i]==(971+offset0))
{
	vR[i] = 971;
}
else
{
	vR[i] = 970;
}

}
else
{
	if(input[i]==(969+offset0))
{
	vR[i] = 969;
}
else
{
	vR[i] = 968;
}

}

}

}
else
{
	if(input[i]>(963+offset0))
{
	if(input[i]>(965+offset0))
{
	if(input[i]==(967+offset0))
{
	vR[i] = 967;
}
else
{
	vR[i] = 966;
}

}
else
{
	if(input[i]==(965+offset0))
{
	vR[i] = 965;
}
else
{
	vR[i] = 964;
}

}

}
else
{
	if(input[i]>(961+offset0))
{
	if(input[i]==(963+offset0))
{
	vR[i] = 963;
}
else
{
	vR[i] = 962;
}

}
else
{
	if(input[i]==(961+offset0))
{
	vR[i] = 961;
}
else
{
	vR[i] = 960;
}

}

}

}

}

}

}
else
{
	if(input[i]>(927+offset0))
{
	if(input[i]>(943+offset0))
{
	if(input[i]>(951+offset0))
{
	if(input[i]>(955+offset0))
{
	if(input[i]>(957+offset0))
{
	if(input[i]==(959+offset0))
{
	vR[i] = 959;
}
else
{
	vR[i] = 958;
}

}
else
{
	if(input[i]==(957+offset0))
{
	vR[i] = 957;
}
else
{
	vR[i] = 956;
}

}

}
else
{
	if(input[i]>(953+offset0))
{
	if(input[i]==(955+offset0))
{
	vR[i] = 955;
}
else
{
	vR[i] = 954;
}

}
else
{
	if(input[i]==(953+offset0))
{
	vR[i] = 953;
}
else
{
	vR[i] = 952;
}

}

}

}
else
{
	if(input[i]>(947+offset0))
{
	if(input[i]>(949+offset0))
{
	if(input[i]==(951+offset0))
{
	vR[i] = 951;
}
else
{
	vR[i] = 950;
}

}
else
{
	if(input[i]==(949+offset0))
{
	vR[i] = 949;
}
else
{
	vR[i] = 948;
}

}

}
else
{
	if(input[i]>(945+offset0))
{
	if(input[i]==(947+offset0))
{
	vR[i] = 947;
}
else
{
	vR[i] = 946;
}

}
else
{
	if(input[i]==(945+offset0))
{
	vR[i] = 945;
}
else
{
	vR[i] = 944;
}

}

}

}

}
else
{
	if(input[i]>(935+offset0))
{
	if(input[i]>(939+offset0))
{
	if(input[i]>(941+offset0))
{
	if(input[i]==(943+offset0))
{
	vR[i] = 943;
}
else
{
	vR[i] = 942;
}

}
else
{
	if(input[i]==(941+offset0))
{
	vR[i] = 941;
}
else
{
	vR[i] = 940;
}

}

}
else
{
	if(input[i]>(937+offset0))
{
	if(input[i]==(939+offset0))
{
	vR[i] = 939;
}
else
{
	vR[i] = 938;
}

}
else
{
	if(input[i]==(937+offset0))
{
	vR[i] = 937;
}
else
{
	vR[i] = 936;
}

}

}

}
else
{
	if(input[i]>(931+offset0))
{
	if(input[i]>(933+offset0))
{
	if(input[i]==(935+offset0))
{
	vR[i] = 935;
}
else
{
	vR[i] = 934;
}

}
else
{
	if(input[i]==(933+offset0))
{
	vR[i] = 933;
}
else
{
	vR[i] = 932;
}

}

}
else
{
	if(input[i]>(929+offset0))
{
	if(input[i]==(931+offset0))
{
	vR[i] = 931;
}
else
{
	vR[i] = 930;
}

}
else
{
	if(input[i]==(929+offset0))
{
	vR[i] = 929;
}
else
{
	vR[i] = 928;
}

}

}

}

}

}
else
{
	if(input[i]>(911+offset0))
{
	if(input[i]>(919+offset0))
{
	if(input[i]>(923+offset0))
{
	if(input[i]>(925+offset0))
{
	if(input[i]==(927+offset0))
{
	vR[i] = 927;
}
else
{
	vR[i] = 926;
}

}
else
{
	if(input[i]==(925+offset0))
{
	vR[i] = 925;
}
else
{
	vR[i] = 924;
}

}

}
else
{
	if(input[i]>(921+offset0))
{
	if(input[i]==(923+offset0))
{
	vR[i] = 923;
}
else
{
	vR[i] = 922;
}

}
else
{
	if(input[i]==(921+offset0))
{
	vR[i] = 921;
}
else
{
	vR[i] = 920;
}

}

}

}
else
{
	if(input[i]>(915+offset0))
{
	if(input[i]>(917+offset0))
{
	if(input[i]==(919+offset0))
{
	vR[i] = 919;
}
else
{
	vR[i] = 918;
}

}
else
{
	if(input[i]==(917+offset0))
{
	vR[i] = 917;
}
else
{
	vR[i] = 916;
}

}

}
else
{
	if(input[i]>(913+offset0))
{
	if(input[i]==(915+offset0))
{
	vR[i] = 915;
}
else
{
	vR[i] = 914;
}

}
else
{
	if(input[i]==(913+offset0))
{
	vR[i] = 913;
}
else
{
	vR[i] = 912;
}

}

}

}

}
else
{
	if(input[i]>(903+offset0))
{
	if(input[i]>(907+offset0))
{
	if(input[i]>(909+offset0))
{
	if(input[i]==(911+offset0))
{
	vR[i] = 911;
}
else
{
	vR[i] = 910;
}

}
else
{
	if(input[i]==(909+offset0))
{
	vR[i] = 909;
}
else
{
	vR[i] = 908;
}

}

}
else
{
	if(input[i]>(905+offset0))
{
	if(input[i]==(907+offset0))
{
	vR[i] = 907;
}
else
{
	vR[i] = 906;
}

}
else
{
	if(input[i]==(905+offset0))
{
	vR[i] = 905;
}
else
{
	vR[i] = 904;
}

}

}

}
else
{
	if(input[i]>(899+offset0))
{
	if(input[i]>(901+offset0))
{
	if(input[i]==(903+offset0))
{
	vR[i] = 903;
}
else
{
	vR[i] = 902;
}

}
else
{
	if(input[i]==(901+offset0))
{
	vR[i] = 901;
}
else
{
	vR[i] = 900;
}

}

}
else
{
	if(input[i]>(897+offset0))
{
	if(input[i]==(899+offset0))
{
	vR[i] = 899;
}
else
{
	vR[i] = 898;
}

}
else
{
	if(input[i]==(897+offset0))
{
	vR[i] = 897;
}
else
{
	vR[i] = 896;
}

}

}

}

}

}

}

}
else
{
	if(input[i]>(831+offset0))
{
	if(input[i]>(863+offset0))
{
	if(input[i]>(879+offset0))
{
	if(input[i]>(887+offset0))
{
	if(input[i]>(891+offset0))
{
	if(input[i]>(893+offset0))
{
	if(input[i]==(895+offset0))
{
	vR[i] = 895;
}
else
{
	vR[i] = 894;
}

}
else
{
	if(input[i]==(893+offset0))
{
	vR[i] = 893;
}
else
{
	vR[i] = 892;
}

}

}
else
{
	if(input[i]>(889+offset0))
{
	if(input[i]==(891+offset0))
{
	vR[i] = 891;
}
else
{
	vR[i] = 890;
}

}
else
{
	if(input[i]==(889+offset0))
{
	vR[i] = 889;
}
else
{
	vR[i] = 888;
}

}

}

}
else
{
	if(input[i]>(883+offset0))
{
	if(input[i]>(885+offset0))
{
	if(input[i]==(887+offset0))
{
	vR[i] = 887;
}
else
{
	vR[i] = 886;
}

}
else
{
	if(input[i]==(885+offset0))
{
	vR[i] = 885;
}
else
{
	vR[i] = 884;
}

}

}
else
{
	if(input[i]>(881+offset0))
{
	if(input[i]==(883+offset0))
{
	vR[i] = 883;
}
else
{
	vR[i] = 882;
}

}
else
{
	if(input[i]==(881+offset0))
{
	vR[i] = 881;
}
else
{
	vR[i] = 880;
}

}

}

}

}
else
{
	if(input[i]>(871+offset0))
{
	if(input[i]>(875+offset0))
{
	if(input[i]>(877+offset0))
{
	if(input[i]==(879+offset0))
{
	vR[i] = 879;
}
else
{
	vR[i] = 878;
}

}
else
{
	if(input[i]==(877+offset0))
{
	vR[i] = 877;
}
else
{
	vR[i] = 876;
}

}

}
else
{
	if(input[i]>(873+offset0))
{
	if(input[i]==(875+offset0))
{
	vR[i] = 875;
}
else
{
	vR[i] = 874;
}

}
else
{
	if(input[i]==(873+offset0))
{
	vR[i] = 873;
}
else
{
	vR[i] = 872;
}

}

}

}
else
{
	if(input[i]>(867+offset0))
{
	if(input[i]>(869+offset0))
{
	if(input[i]==(871+offset0))
{
	vR[i] = 871;
}
else
{
	vR[i] = 870;
}

}
else
{
	if(input[i]==(869+offset0))
{
	vR[i] = 869;
}
else
{
	vR[i] = 868;
}

}

}
else
{
	if(input[i]>(865+offset0))
{
	if(input[i]==(867+offset0))
{
	vR[i] = 867;
}
else
{
	vR[i] = 866;
}

}
else
{
	if(input[i]==(865+offset0))
{
	vR[i] = 865;
}
else
{
	vR[i] = 864;
}

}

}

}

}

}
else
{
	if(input[i]>(847+offset0))
{
	if(input[i]>(855+offset0))
{
	if(input[i]>(859+offset0))
{
	if(input[i]>(861+offset0))
{
	if(input[i]==(863+offset0))
{
	vR[i] = 863;
}
else
{
	vR[i] = 862;
}

}
else
{
	if(input[i]==(861+offset0))
{
	vR[i] = 861;
}
else
{
	vR[i] = 860;
}

}

}
else
{
	if(input[i]>(857+offset0))
{
	if(input[i]==(859+offset0))
{
	vR[i] = 859;
}
else
{
	vR[i] = 858;
}

}
else
{
	if(input[i]==(857+offset0))
{
	vR[i] = 857;
}
else
{
	vR[i] = 856;
}

}

}

}
else
{
	if(input[i]>(851+offset0))
{
	if(input[i]>(853+offset0))
{
	if(input[i]==(855+offset0))
{
	vR[i] = 855;
}
else
{
	vR[i] = 854;
}

}
else
{
	if(input[i]==(853+offset0))
{
	vR[i] = 853;
}
else
{
	vR[i] = 852;
}

}

}
else
{
	if(input[i]>(849+offset0))
{
	if(input[i]==(851+offset0))
{
	vR[i] = 851;
}
else
{
	vR[i] = 850;
}

}
else
{
	if(input[i]==(849+offset0))
{
	vR[i] = 849;
}
else
{
	vR[i] = 848;
}

}

}

}

}
else
{
	if(input[i]>(839+offset0))
{
	if(input[i]>(843+offset0))
{
	if(input[i]>(845+offset0))
{
	if(input[i]==(847+offset0))
{
	vR[i] = 847;
}
else
{
	vR[i] = 846;
}

}
else
{
	if(input[i]==(845+offset0))
{
	vR[i] = 845;
}
else
{
	vR[i] = 844;
}

}

}
else
{
	if(input[i]>(841+offset0))
{
	if(input[i]==(843+offset0))
{
	vR[i] = 843;
}
else
{
	vR[i] = 842;
}

}
else
{
	if(input[i]==(841+offset0))
{
	vR[i] = 841;
}
else
{
	vR[i] = 840;
}

}

}

}
else
{
	if(input[i]>(835+offset0))
{
	if(input[i]>(837+offset0))
{
	if(input[i]==(839+offset0))
{
	vR[i] = 839;
}
else
{
	vR[i] = 838;
}

}
else
{
	if(input[i]==(837+offset0))
{
	vR[i] = 837;
}
else
{
	vR[i] = 836;
}

}

}
else
{
	if(input[i]>(833+offset0))
{
	if(input[i]==(835+offset0))
{
	vR[i] = 835;
}
else
{
	vR[i] = 834;
}

}
else
{
	if(input[i]==(833+offset0))
{
	vR[i] = 833;
}
else
{
	vR[i] = 832;
}

}

}

}

}

}

}
else
{
	if(input[i]>(799+offset0))
{
	if(input[i]>(815+offset0))
{
	if(input[i]>(823+offset0))
{
	if(input[i]>(827+offset0))
{
	if(input[i]>(829+offset0))
{
	if(input[i]==(831+offset0))
{
	vR[i] = 831;
}
else
{
	vR[i] = 830;
}

}
else
{
	if(input[i]==(829+offset0))
{
	vR[i] = 829;
}
else
{
	vR[i] = 828;
}

}

}
else
{
	if(input[i]>(825+offset0))
{
	if(input[i]==(827+offset0))
{
	vR[i] = 827;
}
else
{
	vR[i] = 826;
}

}
else
{
	if(input[i]==(825+offset0))
{
	vR[i] = 825;
}
else
{
	vR[i] = 824;
}

}

}

}
else
{
	if(input[i]>(819+offset0))
{
	if(input[i]>(821+offset0))
{
	if(input[i]==(823+offset0))
{
	vR[i] = 823;
}
else
{
	vR[i] = 822;
}

}
else
{
	if(input[i]==(821+offset0))
{
	vR[i] = 821;
}
else
{
	vR[i] = 820;
}

}

}
else
{
	if(input[i]>(817+offset0))
{
	if(input[i]==(819+offset0))
{
	vR[i] = 819;
}
else
{
	vR[i] = 818;
}

}
else
{
	if(input[i]==(817+offset0))
{
	vR[i] = 817;
}
else
{
	vR[i] = 816;
}

}

}

}

}
else
{
	if(input[i]>(807+offset0))
{
	if(input[i]>(811+offset0))
{
	if(input[i]>(813+offset0))
{
	if(input[i]==(815+offset0))
{
	vR[i] = 815;
}
else
{
	vR[i] = 814;
}

}
else
{
	if(input[i]==(813+offset0))
{
	vR[i] = 813;
}
else
{
	vR[i] = 812;
}

}

}
else
{
	if(input[i]>(809+offset0))
{
	if(input[i]==(811+offset0))
{
	vR[i] = 811;
}
else
{
	vR[i] = 810;
}

}
else
{
	if(input[i]==(809+offset0))
{
	vR[i] = 809;
}
else
{
	vR[i] = 808;
}

}

}

}
else
{
	if(input[i]>(803+offset0))
{
	if(input[i]>(805+offset0))
{
	if(input[i]==(807+offset0))
{
	vR[i] = 807;
}
else
{
	vR[i] = 806;
}

}
else
{
	if(input[i]==(805+offset0))
{
	vR[i] = 805;
}
else
{
	vR[i] = 804;
}

}

}
else
{
	if(input[i]>(801+offset0))
{
	if(input[i]==(803+offset0))
{
	vR[i] = 803;
}
else
{
	vR[i] = 802;
}

}
else
{
	if(input[i]==(801+offset0))
{
	vR[i] = 801;
}
else
{
	vR[i] = 800;
}

}

}

}

}

}
else
{
	if(input[i]>(783+offset0))
{
	if(input[i]>(791+offset0))
{
	if(input[i]>(795+offset0))
{
	if(input[i]>(797+offset0))
{
	if(input[i]==(799+offset0))
{
	vR[i] = 799;
}
else
{
	vR[i] = 798;
}

}
else
{
	if(input[i]==(797+offset0))
{
	vR[i] = 797;
}
else
{
	vR[i] = 796;
}

}

}
else
{
	if(input[i]>(793+offset0))
{
	if(input[i]==(795+offset0))
{
	vR[i] = 795;
}
else
{
	vR[i] = 794;
}

}
else
{
	if(input[i]==(793+offset0))
{
	vR[i] = 793;
}
else
{
	vR[i] = 792;
}

}

}

}
else
{
	if(input[i]>(787+offset0))
{
	if(input[i]>(789+offset0))
{
	if(input[i]==(791+offset0))
{
	vR[i] = 791;
}
else
{
	vR[i] = 790;
}

}
else
{
	if(input[i]==(789+offset0))
{
	vR[i] = 789;
}
else
{
	vR[i] = 788;
}

}

}
else
{
	if(input[i]>(785+offset0))
{
	if(input[i]==(787+offset0))
{
	vR[i] = 787;
}
else
{
	vR[i] = 786;
}

}
else
{
	if(input[i]==(785+offset0))
{
	vR[i] = 785;
}
else
{
	vR[i] = 784;
}

}

}

}

}
else
{
	if(input[i]>(775+offset0))
{
	if(input[i]>(779+offset0))
{
	if(input[i]>(781+offset0))
{
	if(input[i]==(783+offset0))
{
	vR[i] = 783;
}
else
{
	vR[i] = 782;
}

}
else
{
	if(input[i]==(781+offset0))
{
	vR[i] = 781;
}
else
{
	vR[i] = 780;
}

}

}
else
{
	if(input[i]>(777+offset0))
{
	if(input[i]==(779+offset0))
{
	vR[i] = 779;
}
else
{
	vR[i] = 778;
}

}
else
{
	if(input[i]==(777+offset0))
{
	vR[i] = 777;
}
else
{
	vR[i] = 776;
}

}

}

}
else
{
	if(input[i]>(771+offset0))
{
	if(input[i]>(773+offset0))
{
	if(input[i]==(775+offset0))
{
	vR[i] = 775;
}
else
{
	vR[i] = 774;
}

}
else
{
	if(input[i]==(773+offset0))
{
	vR[i] = 773;
}
else
{
	vR[i] = 772;
}

}

}
else
{
	if(input[i]>(769+offset0))
{
	if(input[i]==(771+offset0))
{
	vR[i] = 771;
}
else
{
	vR[i] = 770;
}

}
else
{
	if(input[i]==(769+offset0))
{
	vR[i] = 769;
}
else
{
	vR[i] = 768;
}

}

}

}

}

}

}

}

}
else
{
	if(input[i]>(639+offset0))
{
	if(input[i]>(703+offset0))
{
	if(input[i]>(735+offset0))
{
	if(input[i]>(751+offset0))
{
	if(input[i]>(759+offset0))
{
	if(input[i]>(763+offset0))
{
	if(input[i]>(765+offset0))
{
	if(input[i]==(767+offset0))
{
	vR[i] = 767;
}
else
{
	vR[i] = 766;
}

}
else
{
	if(input[i]==(765+offset0))
{
	vR[i] = 765;
}
else
{
	vR[i] = 764;
}

}

}
else
{
	if(input[i]>(761+offset0))
{
	if(input[i]==(763+offset0))
{
	vR[i] = 763;
}
else
{
	vR[i] = 762;
}

}
else
{
	if(input[i]==(761+offset0))
{
	vR[i] = 761;
}
else
{
	vR[i] = 760;
}

}

}

}
else
{
	if(input[i]>(755+offset0))
{
	if(input[i]>(757+offset0))
{
	if(input[i]==(759+offset0))
{
	vR[i] = 759;
}
else
{
	vR[i] = 758;
}

}
else
{
	if(input[i]==(757+offset0))
{
	vR[i] = 757;
}
else
{
	vR[i] = 756;
}

}

}
else
{
	if(input[i]>(753+offset0))
{
	if(input[i]==(755+offset0))
{
	vR[i] = 755;
}
else
{
	vR[i] = 754;
}

}
else
{
	if(input[i]==(753+offset0))
{
	vR[i] = 753;
}
else
{
	vR[i] = 752;
}

}

}

}

}
else
{
	if(input[i]>(743+offset0))
{
	if(input[i]>(747+offset0))
{
	if(input[i]>(749+offset0))
{
	if(input[i]==(751+offset0))
{
	vR[i] = 751;
}
else
{
	vR[i] = 750;
}

}
else
{
	if(input[i]==(749+offset0))
{
	vR[i] = 749;
}
else
{
	vR[i] = 748;
}

}

}
else
{
	if(input[i]>(745+offset0))
{
	if(input[i]==(747+offset0))
{
	vR[i] = 747;
}
else
{
	vR[i] = 746;
}

}
else
{
	if(input[i]==(745+offset0))
{
	vR[i] = 745;
}
else
{
	vR[i] = 744;
}

}

}

}
else
{
	if(input[i]>(739+offset0))
{
	if(input[i]>(741+offset0))
{
	if(input[i]==(743+offset0))
{
	vR[i] = 743;
}
else
{
	vR[i] = 742;
}

}
else
{
	if(input[i]==(741+offset0))
{
	vR[i] = 741;
}
else
{
	vR[i] = 740;
}

}

}
else
{
	if(input[i]>(737+offset0))
{
	if(input[i]==(739+offset0))
{
	vR[i] = 739;
}
else
{
	vR[i] = 738;
}

}
else
{
	if(input[i]==(737+offset0))
{
	vR[i] = 737;
}
else
{
	vR[i] = 736;
}

}

}

}

}

}
else
{
	if(input[i]>(719+offset0))
{
	if(input[i]>(727+offset0))
{
	if(input[i]>(731+offset0))
{
	if(input[i]>(733+offset0))
{
	if(input[i]==(735+offset0))
{
	vR[i] = 735;
}
else
{
	vR[i] = 734;
}

}
else
{
	if(input[i]==(733+offset0))
{
	vR[i] = 733;
}
else
{
	vR[i] = 732;
}

}

}
else
{
	if(input[i]>(729+offset0))
{
	if(input[i]==(731+offset0))
{
	vR[i] = 731;
}
else
{
	vR[i] = 730;
}

}
else
{
	if(input[i]==(729+offset0))
{
	vR[i] = 729;
}
else
{
	vR[i] = 728;
}

}

}

}
else
{
	if(input[i]>(723+offset0))
{
	if(input[i]>(725+offset0))
{
	if(input[i]==(727+offset0))
{
	vR[i] = 727;
}
else
{
	vR[i] = 726;
}

}
else
{
	if(input[i]==(725+offset0))
{
	vR[i] = 725;
}
else
{
	vR[i] = 724;
}

}

}
else
{
	if(input[i]>(721+offset0))
{
	if(input[i]==(723+offset0))
{
	vR[i] = 723;
}
else
{
	vR[i] = 722;
}

}
else
{
	if(input[i]==(721+offset0))
{
	vR[i] = 721;
}
else
{
	vR[i] = 720;
}

}

}

}

}
else
{
	if(input[i]>(711+offset0))
{
	if(input[i]>(715+offset0))
{
	if(input[i]>(717+offset0))
{
	if(input[i]==(719+offset0))
{
	vR[i] = 719;
}
else
{
	vR[i] = 718;
}

}
else
{
	if(input[i]==(717+offset0))
{
	vR[i] = 717;
}
else
{
	vR[i] = 716;
}

}

}
else
{
	if(input[i]>(713+offset0))
{
	if(input[i]==(715+offset0))
{
	vR[i] = 715;
}
else
{
	vR[i] = 714;
}

}
else
{
	if(input[i]==(713+offset0))
{
	vR[i] = 713;
}
else
{
	vR[i] = 712;
}

}

}

}
else
{
	if(input[i]>(707+offset0))
{
	if(input[i]>(709+offset0))
{
	if(input[i]==(711+offset0))
{
	vR[i] = 711;
}
else
{
	vR[i] = 710;
}

}
else
{
	if(input[i]==(709+offset0))
{
	vR[i] = 709;
}
else
{
	vR[i] = 708;
}

}

}
else
{
	if(input[i]>(705+offset0))
{
	if(input[i]==(707+offset0))
{
	vR[i] = 707;
}
else
{
	vR[i] = 706;
}

}
else
{
	if(input[i]==(705+offset0))
{
	vR[i] = 705;
}
else
{
	vR[i] = 704;
}

}

}

}

}

}

}
else
{
	if(input[i]>(671+offset0))
{
	if(input[i]>(687+offset0))
{
	if(input[i]>(695+offset0))
{
	if(input[i]>(699+offset0))
{
	if(input[i]>(701+offset0))
{
	if(input[i]==(703+offset0))
{
	vR[i] = 703;
}
else
{
	vR[i] = 702;
}

}
else
{
	if(input[i]==(701+offset0))
{
	vR[i] = 701;
}
else
{
	vR[i] = 700;
}

}

}
else
{
	if(input[i]>(697+offset0))
{
	if(input[i]==(699+offset0))
{
	vR[i] = 699;
}
else
{
	vR[i] = 698;
}

}
else
{
	if(input[i]==(697+offset0))
{
	vR[i] = 697;
}
else
{
	vR[i] = 696;
}

}

}

}
else
{
	if(input[i]>(691+offset0))
{
	if(input[i]>(693+offset0))
{
	if(input[i]==(695+offset0))
{
	vR[i] = 695;
}
else
{
	vR[i] = 694;
}

}
else
{
	if(input[i]==(693+offset0))
{
	vR[i] = 693;
}
else
{
	vR[i] = 692;
}

}

}
else
{
	if(input[i]>(689+offset0))
{
	if(input[i]==(691+offset0))
{
	vR[i] = 691;
}
else
{
	vR[i] = 690;
}

}
else
{
	if(input[i]==(689+offset0))
{
	vR[i] = 689;
}
else
{
	vR[i] = 688;
}

}

}

}

}
else
{
	if(input[i]>(679+offset0))
{
	if(input[i]>(683+offset0))
{
	if(input[i]>(685+offset0))
{
	if(input[i]==(687+offset0))
{
	vR[i] = 687;
}
else
{
	vR[i] = 686;
}

}
else
{
	if(input[i]==(685+offset0))
{
	vR[i] = 685;
}
else
{
	vR[i] = 684;
}

}

}
else
{
	if(input[i]>(681+offset0))
{
	if(input[i]==(683+offset0))
{
	vR[i] = 683;
}
else
{
	vR[i] = 682;
}

}
else
{
	if(input[i]==(681+offset0))
{
	vR[i] = 681;
}
else
{
	vR[i] = 680;
}

}

}

}
else
{
	if(input[i]>(675+offset0))
{
	if(input[i]>(677+offset0))
{
	if(input[i]==(679+offset0))
{
	vR[i] = 679;
}
else
{
	vR[i] = 678;
}

}
else
{
	if(input[i]==(677+offset0))
{
	vR[i] = 677;
}
else
{
	vR[i] = 676;
}

}

}
else
{
	if(input[i]>(673+offset0))
{
	if(input[i]==(675+offset0))
{
	vR[i] = 675;
}
else
{
	vR[i] = 674;
}

}
else
{
	if(input[i]==(673+offset0))
{
	vR[i] = 673;
}
else
{
	vR[i] = 672;
}

}

}

}

}

}
else
{
	if(input[i]>(655+offset0))
{
	if(input[i]>(663+offset0))
{
	if(input[i]>(667+offset0))
{
	if(input[i]>(669+offset0))
{
	if(input[i]==(671+offset0))
{
	vR[i] = 671;
}
else
{
	vR[i] = 670;
}

}
else
{
	if(input[i]==(669+offset0))
{
	vR[i] = 669;
}
else
{
	vR[i] = 668;
}

}

}
else
{
	if(input[i]>(665+offset0))
{
	if(input[i]==(667+offset0))
{
	vR[i] = 667;
}
else
{
	vR[i] = 666;
}

}
else
{
	if(input[i]==(665+offset0))
{
	vR[i] = 665;
}
else
{
	vR[i] = 664;
}

}

}

}
else
{
	if(input[i]>(659+offset0))
{
	if(input[i]>(661+offset0))
{
	if(input[i]==(663+offset0))
{
	vR[i] = 663;
}
else
{
	vR[i] = 662;
}

}
else
{
	if(input[i]==(661+offset0))
{
	vR[i] = 661;
}
else
{
	vR[i] = 660;
}

}

}
else
{
	if(input[i]>(657+offset0))
{
	if(input[i]==(659+offset0))
{
	vR[i] = 659;
}
else
{
	vR[i] = 658;
}

}
else
{
	if(input[i]==(657+offset0))
{
	vR[i] = 657;
}
else
{
	vR[i] = 656;
}

}

}

}

}
else
{
	if(input[i]>(647+offset0))
{
	if(input[i]>(651+offset0))
{
	if(input[i]>(653+offset0))
{
	if(input[i]==(655+offset0))
{
	vR[i] = 655;
}
else
{
	vR[i] = 654;
}

}
else
{
	if(input[i]==(653+offset0))
{
	vR[i] = 653;
}
else
{
	vR[i] = 652;
}

}

}
else
{
	if(input[i]>(649+offset0))
{
	if(input[i]==(651+offset0))
{
	vR[i] = 651;
}
else
{
	vR[i] = 650;
}

}
else
{
	if(input[i]==(649+offset0))
{
	vR[i] = 649;
}
else
{
	vR[i] = 648;
}

}

}

}
else
{
	if(input[i]>(643+offset0))
{
	if(input[i]>(645+offset0))
{
	if(input[i]==(647+offset0))
{
	vR[i] = 647;
}
else
{
	vR[i] = 646;
}

}
else
{
	if(input[i]==(645+offset0))
{
	vR[i] = 645;
}
else
{
	vR[i] = 644;
}

}

}
else
{
	if(input[i]>(641+offset0))
{
	if(input[i]==(643+offset0))
{
	vR[i] = 643;
}
else
{
	vR[i] = 642;
}

}
else
{
	if(input[i]==(641+offset0))
{
	vR[i] = 641;
}
else
{
	vR[i] = 640;
}

}

}

}

}

}

}

}
else
{
	if(input[i]>(575+offset0))
{
	if(input[i]>(607+offset0))
{
	if(input[i]>(623+offset0))
{
	if(input[i]>(631+offset0))
{
	if(input[i]>(635+offset0))
{
	if(input[i]>(637+offset0))
{
	if(input[i]==(639+offset0))
{
	vR[i] = 639;
}
else
{
	vR[i] = 638;
}

}
else
{
	if(input[i]==(637+offset0))
{
	vR[i] = 637;
}
else
{
	vR[i] = 636;
}

}

}
else
{
	if(input[i]>(633+offset0))
{
	if(input[i]==(635+offset0))
{
	vR[i] = 635;
}
else
{
	vR[i] = 634;
}

}
else
{
	if(input[i]==(633+offset0))
{
	vR[i] = 633;
}
else
{
	vR[i] = 632;
}

}

}

}
else
{
	if(input[i]>(627+offset0))
{
	if(input[i]>(629+offset0))
{
	if(input[i]==(631+offset0))
{
	vR[i] = 631;
}
else
{
	vR[i] = 630;
}

}
else
{
	if(input[i]==(629+offset0))
{
	vR[i] = 629;
}
else
{
	vR[i] = 628;
}

}

}
else
{
	if(input[i]>(625+offset0))
{
	if(input[i]==(627+offset0))
{
	vR[i] = 627;
}
else
{
	vR[i] = 626;
}

}
else
{
	if(input[i]==(625+offset0))
{
	vR[i] = 625;
}
else
{
	vR[i] = 624;
}

}

}

}

}
else
{
	if(input[i]>(615+offset0))
{
	if(input[i]>(619+offset0))
{
	if(input[i]>(621+offset0))
{
	if(input[i]==(623+offset0))
{
	vR[i] = 623;
}
else
{
	vR[i] = 622;
}

}
else
{
	if(input[i]==(621+offset0))
{
	vR[i] = 621;
}
else
{
	vR[i] = 620;
}

}

}
else
{
	if(input[i]>(617+offset0))
{
	if(input[i]==(619+offset0))
{
	vR[i] = 619;
}
else
{
	vR[i] = 618;
}

}
else
{
	if(input[i]==(617+offset0))
{
	vR[i] = 617;
}
else
{
	vR[i] = 616;
}

}

}

}
else
{
	if(input[i]>(611+offset0))
{
	if(input[i]>(613+offset0))
{
	if(input[i]==(615+offset0))
{
	vR[i] = 615;
}
else
{
	vR[i] = 614;
}

}
else
{
	if(input[i]==(613+offset0))
{
	vR[i] = 613;
}
else
{
	vR[i] = 612;
}

}

}
else
{
	if(input[i]>(609+offset0))
{
	if(input[i]==(611+offset0))
{
	vR[i] = 611;
}
else
{
	vR[i] = 610;
}

}
else
{
	if(input[i]==(609+offset0))
{
	vR[i] = 609;
}
else
{
	vR[i] = 608;
}

}

}

}

}

}
else
{
	if(input[i]>(591+offset0))
{
	if(input[i]>(599+offset0))
{
	if(input[i]>(603+offset0))
{
	if(input[i]>(605+offset0))
{
	if(input[i]==(607+offset0))
{
	vR[i] = 607;
}
else
{
	vR[i] = 606;
}

}
else
{
	if(input[i]==(605+offset0))
{
	vR[i] = 605;
}
else
{
	vR[i] = 604;
}

}

}
else
{
	if(input[i]>(601+offset0))
{
	if(input[i]==(603+offset0))
{
	vR[i] = 603;
}
else
{
	vR[i] = 602;
}

}
else
{
	if(input[i]==(601+offset0))
{
	vR[i] = 601;
}
else
{
	vR[i] = 600;
}

}

}

}
else
{
	if(input[i]>(595+offset0))
{
	if(input[i]>(597+offset0))
{
	if(input[i]==(599+offset0))
{
	vR[i] = 599;
}
else
{
	vR[i] = 598;
}

}
else
{
	if(input[i]==(597+offset0))
{
	vR[i] = 597;
}
else
{
	vR[i] = 596;
}

}

}
else
{
	if(input[i]>(593+offset0))
{
	if(input[i]==(595+offset0))
{
	vR[i] = 595;
}
else
{
	vR[i] = 594;
}

}
else
{
	if(input[i]==(593+offset0))
{
	vR[i] = 593;
}
else
{
	vR[i] = 592;
}

}

}

}

}
else
{
	if(input[i]>(583+offset0))
{
	if(input[i]>(587+offset0))
{
	if(input[i]>(589+offset0))
{
	if(input[i]==(591+offset0))
{
	vR[i] = 591;
}
else
{
	vR[i] = 590;
}

}
else
{
	if(input[i]==(589+offset0))
{
	vR[i] = 589;
}
else
{
	vR[i] = 588;
}

}

}
else
{
	if(input[i]>(585+offset0))
{
	if(input[i]==(587+offset0))
{
	vR[i] = 587;
}
else
{
	vR[i] = 586;
}

}
else
{
	if(input[i]==(585+offset0))
{
	vR[i] = 585;
}
else
{
	vR[i] = 584;
}

}

}

}
else
{
	if(input[i]>(579+offset0))
{
	if(input[i]>(581+offset0))
{
	if(input[i]==(583+offset0))
{
	vR[i] = 583;
}
else
{
	vR[i] = 582;
}

}
else
{
	if(input[i]==(581+offset0))
{
	vR[i] = 581;
}
else
{
	vR[i] = 580;
}

}

}
else
{
	if(input[i]>(577+offset0))
{
	if(input[i]==(579+offset0))
{
	vR[i] = 579;
}
else
{
	vR[i] = 578;
}

}
else
{
	if(input[i]==(577+offset0))
{
	vR[i] = 577;
}
else
{
	vR[i] = 576;
}

}

}

}

}

}

}
else
{
	if(input[i]>(543+offset0))
{
	if(input[i]>(559+offset0))
{
	if(input[i]>(567+offset0))
{
	if(input[i]>(571+offset0))
{
	if(input[i]>(573+offset0))
{
	if(input[i]==(575+offset0))
{
	vR[i] = 575;
}
else
{
	vR[i] = 574;
}

}
else
{
	if(input[i]==(573+offset0))
{
	vR[i] = 573;
}
else
{
	vR[i] = 572;
}

}

}
else
{
	if(input[i]>(569+offset0))
{
	if(input[i]==(571+offset0))
{
	vR[i] = 571;
}
else
{
	vR[i] = 570;
}

}
else
{
	if(input[i]==(569+offset0))
{
	vR[i] = 569;
}
else
{
	vR[i] = 568;
}

}

}

}
else
{
	if(input[i]>(563+offset0))
{
	if(input[i]>(565+offset0))
{
	if(input[i]==(567+offset0))
{
	vR[i] = 567;
}
else
{
	vR[i] = 566;
}

}
else
{
	if(input[i]==(565+offset0))
{
	vR[i] = 565;
}
else
{
	vR[i] = 564;
}

}

}
else
{
	if(input[i]>(561+offset0))
{
	if(input[i]==(563+offset0))
{
	vR[i] = 563;
}
else
{
	vR[i] = 562;
}

}
else
{
	if(input[i]==(561+offset0))
{
	vR[i] = 561;
}
else
{
	vR[i] = 560;
}

}

}

}

}
else
{
	if(input[i]>(551+offset0))
{
	if(input[i]>(555+offset0))
{
	if(input[i]>(557+offset0))
{
	if(input[i]==(559+offset0))
{
	vR[i] = 559;
}
else
{
	vR[i] = 558;
}

}
else
{
	if(input[i]==(557+offset0))
{
	vR[i] = 557;
}
else
{
	vR[i] = 556;
}

}

}
else
{
	if(input[i]>(553+offset0))
{
	if(input[i]==(555+offset0))
{
	vR[i] = 555;
}
else
{
	vR[i] = 554;
}

}
else
{
	if(input[i]==(553+offset0))
{
	vR[i] = 553;
}
else
{
	vR[i] = 552;
}

}

}

}
else
{
	if(input[i]>(547+offset0))
{
	if(input[i]>(549+offset0))
{
	if(input[i]==(551+offset0))
{
	vR[i] = 551;
}
else
{
	vR[i] = 550;
}

}
else
{
	if(input[i]==(549+offset0))
{
	vR[i] = 549;
}
else
{
	vR[i] = 548;
}

}

}
else
{
	if(input[i]>(545+offset0))
{
	if(input[i]==(547+offset0))
{
	vR[i] = 547;
}
else
{
	vR[i] = 546;
}

}
else
{
	if(input[i]==(545+offset0))
{
	vR[i] = 545;
}
else
{
	vR[i] = 544;
}

}

}

}

}

}
else
{
	if(input[i]>(527+offset0))
{
	if(input[i]>(535+offset0))
{
	if(input[i]>(539+offset0))
{
	if(input[i]>(541+offset0))
{
	if(input[i]==(543+offset0))
{
	vR[i] = 543;
}
else
{
	vR[i] = 542;
}

}
else
{
	if(input[i]==(541+offset0))
{
	vR[i] = 541;
}
else
{
	vR[i] = 540;
}

}

}
else
{
	if(input[i]>(537+offset0))
{
	if(input[i]==(539+offset0))
{
	vR[i] = 539;
}
else
{
	vR[i] = 538;
}

}
else
{
	if(input[i]==(537+offset0))
{
	vR[i] = 537;
}
else
{
	vR[i] = 536;
}

}

}

}
else
{
	if(input[i]>(531+offset0))
{
	if(input[i]>(533+offset0))
{
	if(input[i]==(535+offset0))
{
	vR[i] = 535;
}
else
{
	vR[i] = 534;
}

}
else
{
	if(input[i]==(533+offset0))
{
	vR[i] = 533;
}
else
{
	vR[i] = 532;
}

}

}
else
{
	if(input[i]>(529+offset0))
{
	if(input[i]==(531+offset0))
{
	vR[i] = 531;
}
else
{
	vR[i] = 530;
}

}
else
{
	if(input[i]==(529+offset0))
{
	vR[i] = 529;
}
else
{
	vR[i] = 528;
}

}

}

}

}
else
{
	if(input[i]>(519+offset0))
{
	if(input[i]>(523+offset0))
{
	if(input[i]>(525+offset0))
{
	if(input[i]==(527+offset0))
{
	vR[i] = 527;
}
else
{
	vR[i] = 526;
}

}
else
{
	if(input[i]==(525+offset0))
{
	vR[i] = 525;
}
else
{
	vR[i] = 524;
}

}

}
else
{
	if(input[i]>(521+offset0))
{
	if(input[i]==(523+offset0))
{
	vR[i] = 523;
}
else
{
	vR[i] = 522;
}

}
else
{
	if(input[i]==(521+offset0))
{
	vR[i] = 521;
}
else
{
	vR[i] = 520;
}

}

}

}
else
{
	if(input[i]>(515+offset0))
{
	if(input[i]>(517+offset0))
{
	if(input[i]==(519+offset0))
{
	vR[i] = 519;
}
else
{
	vR[i] = 518;
}

}
else
{
	if(input[i]==(517+offset0))
{
	vR[i] = 517;
}
else
{
	vR[i] = 516;
}

}

}
else
{
	if(input[i]>(513+offset0))
{
	if(input[i]==(515+offset0))
{
	vR[i] = 515;
}
else
{
	vR[i] = 514;
}

}
else
{
	if(input[i]==(513+offset0))
{
	vR[i] = 513;
}
else
{
	vR[i] = 512;
}

}

}

}

}

}

}

}

}

}
else
{
	if(input[i]>(255+offset0))
{
	if(input[i]>(383+offset0))
{
	if(input[i]>(447+offset0))
{
	if(input[i]>(479+offset0))
{
	if(input[i]>(495+offset0))
{
	if(input[i]>(503+offset0))
{
	if(input[i]>(507+offset0))
{
	if(input[i]>(509+offset0))
{
	if(input[i]==(511+offset0))
{
	vR[i] = 511;
}
else
{
	vR[i] = 510;
}

}
else
{
	if(input[i]==(509+offset0))
{
	vR[i] = 509;
}
else
{
	vR[i] = 508;
}

}

}
else
{
	if(input[i]>(505+offset0))
{
	if(input[i]==(507+offset0))
{
	vR[i] = 507;
}
else
{
	vR[i] = 506;
}

}
else
{
	if(input[i]==(505+offset0))
{
	vR[i] = 505;
}
else
{
	vR[i] = 504;
}

}

}

}
else
{
	if(input[i]>(499+offset0))
{
	if(input[i]>(501+offset0))
{
	if(input[i]==(503+offset0))
{
	vR[i] = 503;
}
else
{
	vR[i] = 502;
}

}
else
{
	if(input[i]==(501+offset0))
{
	vR[i] = 501;
}
else
{
	vR[i] = 500;
}

}

}
else
{
	if(input[i]>(497+offset0))
{
	if(input[i]==(499+offset0))
{
	vR[i] = 499;
}
else
{
	vR[i] = 498;
}

}
else
{
	if(input[i]==(497+offset0))
{
	vR[i] = 497;
}
else
{
	vR[i] = 496;
}

}

}

}

}
else
{
	if(input[i]>(487+offset0))
{
	if(input[i]>(491+offset0))
{
	if(input[i]>(493+offset0))
{
	if(input[i]==(495+offset0))
{
	vR[i] = 495;
}
else
{
	vR[i] = 494;
}

}
else
{
	if(input[i]==(493+offset0))
{
	vR[i] = 493;
}
else
{
	vR[i] = 492;
}

}

}
else
{
	if(input[i]>(489+offset0))
{
	if(input[i]==(491+offset0))
{
	vR[i] = 491;
}
else
{
	vR[i] = 490;
}

}
else
{
	if(input[i]==(489+offset0))
{
	vR[i] = 489;
}
else
{
	vR[i] = 488;
}

}

}

}
else
{
	if(input[i]>(483+offset0))
{
	if(input[i]>(485+offset0))
{
	if(input[i]==(487+offset0))
{
	vR[i] = 487;
}
else
{
	vR[i] = 486;
}

}
else
{
	if(input[i]==(485+offset0))
{
	vR[i] = 485;
}
else
{
	vR[i] = 484;
}

}

}
else
{
	if(input[i]>(481+offset0))
{
	if(input[i]==(483+offset0))
{
	vR[i] = 483;
}
else
{
	vR[i] = 482;
}

}
else
{
	if(input[i]==(481+offset0))
{
	vR[i] = 481;
}
else
{
	vR[i] = 480;
}

}

}

}

}

}
else
{
	if(input[i]>(463+offset0))
{
	if(input[i]>(471+offset0))
{
	if(input[i]>(475+offset0))
{
	if(input[i]>(477+offset0))
{
	if(input[i]==(479+offset0))
{
	vR[i] = 479;
}
else
{
	vR[i] = 478;
}

}
else
{
	if(input[i]==(477+offset0))
{
	vR[i] = 477;
}
else
{
	vR[i] = 476;
}

}

}
else
{
	if(input[i]>(473+offset0))
{
	if(input[i]==(475+offset0))
{
	vR[i] = 475;
}
else
{
	vR[i] = 474;
}

}
else
{
	if(input[i]==(473+offset0))
{
	vR[i] = 473;
}
else
{
	vR[i] = 472;
}

}

}

}
else
{
	if(input[i]>(467+offset0))
{
	if(input[i]>(469+offset0))
{
	if(input[i]==(471+offset0))
{
	vR[i] = 471;
}
else
{
	vR[i] = 470;
}

}
else
{
	if(input[i]==(469+offset0))
{
	vR[i] = 469;
}
else
{
	vR[i] = 468;
}

}

}
else
{
	if(input[i]>(465+offset0))
{
	if(input[i]==(467+offset0))
{
	vR[i] = 467;
}
else
{
	vR[i] = 466;
}

}
else
{
	if(input[i]==(465+offset0))
{
	vR[i] = 465;
}
else
{
	vR[i] = 464;
}

}

}

}

}
else
{
	if(input[i]>(455+offset0))
{
	if(input[i]>(459+offset0))
{
	if(input[i]>(461+offset0))
{
	if(input[i]==(463+offset0))
{
	vR[i] = 463;
}
else
{
	vR[i] = 462;
}

}
else
{
	if(input[i]==(461+offset0))
{
	vR[i] = 461;
}
else
{
	vR[i] = 460;
}

}

}
else
{
	if(input[i]>(457+offset0))
{
	if(input[i]==(459+offset0))
{
	vR[i] = 459;
}
else
{
	vR[i] = 458;
}

}
else
{
	if(input[i]==(457+offset0))
{
	vR[i] = 457;
}
else
{
	vR[i] = 456;
}

}

}

}
else
{
	if(input[i]>(451+offset0))
{
	if(input[i]>(453+offset0))
{
	if(input[i]==(455+offset0))
{
	vR[i] = 455;
}
else
{
	vR[i] = 454;
}

}
else
{
	if(input[i]==(453+offset0))
{
	vR[i] = 453;
}
else
{
	vR[i] = 452;
}

}

}
else
{
	if(input[i]>(449+offset0))
{
	if(input[i]==(451+offset0))
{
	vR[i] = 451;
}
else
{
	vR[i] = 450;
}

}
else
{
	if(input[i]==(449+offset0))
{
	vR[i] = 449;
}
else
{
	vR[i] = 448;
}

}

}

}

}

}

}
else
{
	if(input[i]>(415+offset0))
{
	if(input[i]>(431+offset0))
{
	if(input[i]>(439+offset0))
{
	if(input[i]>(443+offset0))
{
	if(input[i]>(445+offset0))
{
	if(input[i]==(447+offset0))
{
	vR[i] = 447;
}
else
{
	vR[i] = 446;
}

}
else
{
	if(input[i]==(445+offset0))
{
	vR[i] = 445;
}
else
{
	vR[i] = 444;
}

}

}
else
{
	if(input[i]>(441+offset0))
{
	if(input[i]==(443+offset0))
{
	vR[i] = 443;
}
else
{
	vR[i] = 442;
}

}
else
{
	if(input[i]==(441+offset0))
{
	vR[i] = 441;
}
else
{
	vR[i] = 440;
}

}

}

}
else
{
	if(input[i]>(435+offset0))
{
	if(input[i]>(437+offset0))
{
	if(input[i]==(439+offset0))
{
	vR[i] = 439;
}
else
{
	vR[i] = 438;
}

}
else
{
	if(input[i]==(437+offset0))
{
	vR[i] = 437;
}
else
{
	vR[i] = 436;
}

}

}
else
{
	if(input[i]>(433+offset0))
{
	if(input[i]==(435+offset0))
{
	vR[i] = 435;
}
else
{
	vR[i] = 434;
}

}
else
{
	if(input[i]==(433+offset0))
{
	vR[i] = 433;
}
else
{
	vR[i] = 432;
}

}

}

}

}
else
{
	if(input[i]>(423+offset0))
{
	if(input[i]>(427+offset0))
{
	if(input[i]>(429+offset0))
{
	if(input[i]==(431+offset0))
{
	vR[i] = 431;
}
else
{
	vR[i] = 430;
}

}
else
{
	if(input[i]==(429+offset0))
{
	vR[i] = 429;
}
else
{
	vR[i] = 428;
}

}

}
else
{
	if(input[i]>(425+offset0))
{
	if(input[i]==(427+offset0))
{
	vR[i] = 427;
}
else
{
	vR[i] = 426;
}

}
else
{
	if(input[i]==(425+offset0))
{
	vR[i] = 425;
}
else
{
	vR[i] = 424;
}

}

}

}
else
{
	if(input[i]>(419+offset0))
{
	if(input[i]>(421+offset0))
{
	if(input[i]==(423+offset0))
{
	vR[i] = 423;
}
else
{
	vR[i] = 422;
}

}
else
{
	if(input[i]==(421+offset0))
{
	vR[i] = 421;
}
else
{
	vR[i] = 420;
}

}

}
else
{
	if(input[i]>(417+offset0))
{
	if(input[i]==(419+offset0))
{
	vR[i] = 419;
}
else
{
	vR[i] = 418;
}

}
else
{
	if(input[i]==(417+offset0))
{
	vR[i] = 417;
}
else
{
	vR[i] = 416;
}

}

}

}

}

}
else
{
	if(input[i]>(399+offset0))
{
	if(input[i]>(407+offset0))
{
	if(input[i]>(411+offset0))
{
	if(input[i]>(413+offset0))
{
	if(input[i]==(415+offset0))
{
	vR[i] = 415;
}
else
{
	vR[i] = 414;
}

}
else
{
	if(input[i]==(413+offset0))
{
	vR[i] = 413;
}
else
{
	vR[i] = 412;
}

}

}
else
{
	if(input[i]>(409+offset0))
{
	if(input[i]==(411+offset0))
{
	vR[i] = 411;
}
else
{
	vR[i] = 410;
}

}
else
{
	if(input[i]==(409+offset0))
{
	vR[i] = 409;
}
else
{
	vR[i] = 408;
}

}

}

}
else
{
	if(input[i]>(403+offset0))
{
	if(input[i]>(405+offset0))
{
	if(input[i]==(407+offset0))
{
	vR[i] = 407;
}
else
{
	vR[i] = 406;
}

}
else
{
	if(input[i]==(405+offset0))
{
	vR[i] = 405;
}
else
{
	vR[i] = 404;
}

}

}
else
{
	if(input[i]>(401+offset0))
{
	if(input[i]==(403+offset0))
{
	vR[i] = 403;
}
else
{
	vR[i] = 402;
}

}
else
{
	if(input[i]==(401+offset0))
{
	vR[i] = 401;
}
else
{
	vR[i] = 400;
}

}

}

}

}
else
{
	if(input[i]>(391+offset0))
{
	if(input[i]>(395+offset0))
{
	if(input[i]>(397+offset0))
{
	if(input[i]==(399+offset0))
{
	vR[i] = 399;
}
else
{
	vR[i] = 398;
}

}
else
{
	if(input[i]==(397+offset0))
{
	vR[i] = 397;
}
else
{
	vR[i] = 396;
}

}

}
else
{
	if(input[i]>(393+offset0))
{
	if(input[i]==(395+offset0))
{
	vR[i] = 395;
}
else
{
	vR[i] = 394;
}

}
else
{
	if(input[i]==(393+offset0))
{
	vR[i] = 393;
}
else
{
	vR[i] = 392;
}

}

}

}
else
{
	if(input[i]>(387+offset0))
{
	if(input[i]>(389+offset0))
{
	if(input[i]==(391+offset0))
{
	vR[i] = 391;
}
else
{
	vR[i] = 390;
}

}
else
{
	if(input[i]==(389+offset0))
{
	vR[i] = 389;
}
else
{
	vR[i] = 388;
}

}

}
else
{
	if(input[i]>(385+offset0))
{
	if(input[i]==(387+offset0))
{
	vR[i] = 387;
}
else
{
	vR[i] = 386;
}

}
else
{
	if(input[i]==(385+offset0))
{
	vR[i] = 385;
}
else
{
	vR[i] = 384;
}

}

}

}

}

}

}

}
else
{
	if(input[i]>(319+offset0))
{
	if(input[i]>(351+offset0))
{
	if(input[i]>(367+offset0))
{
	if(input[i]>(375+offset0))
{
	if(input[i]>(379+offset0))
{
	if(input[i]>(381+offset0))
{
	if(input[i]==(383+offset0))
{
	vR[i] = 383;
}
else
{
	vR[i] = 382;
}

}
else
{
	if(input[i]==(381+offset0))
{
	vR[i] = 381;
}
else
{
	vR[i] = 380;
}

}

}
else
{
	if(input[i]>(377+offset0))
{
	if(input[i]==(379+offset0))
{
	vR[i] = 379;
}
else
{
	vR[i] = 378;
}

}
else
{
	if(input[i]==(377+offset0))
{
	vR[i] = 377;
}
else
{
	vR[i] = 376;
}

}

}

}
else
{
	if(input[i]>(371+offset0))
{
	if(input[i]>(373+offset0))
{
	if(input[i]==(375+offset0))
{
	vR[i] = 375;
}
else
{
	vR[i] = 374;
}

}
else
{
	if(input[i]==(373+offset0))
{
	vR[i] = 373;
}
else
{
	vR[i] = 372;
}

}

}
else
{
	if(input[i]>(369+offset0))
{
	if(input[i]==(371+offset0))
{
	vR[i] = 371;
}
else
{
	vR[i] = 370;
}

}
else
{
	if(input[i]==(369+offset0))
{
	vR[i] = 369;
}
else
{
	vR[i] = 368;
}

}

}

}

}
else
{
	if(input[i]>(359+offset0))
{
	if(input[i]>(363+offset0))
{
	if(input[i]>(365+offset0))
{
	if(input[i]==(367+offset0))
{
	vR[i] = 367;
}
else
{
	vR[i] = 366;
}

}
else
{
	if(input[i]==(365+offset0))
{
	vR[i] = 365;
}
else
{
	vR[i] = 364;
}

}

}
else
{
	if(input[i]>(361+offset0))
{
	if(input[i]==(363+offset0))
{
	vR[i] = 363;
}
else
{
	vR[i] = 362;
}

}
else
{
	if(input[i]==(361+offset0))
{
	vR[i] = 361;
}
else
{
	vR[i] = 360;
}

}

}

}
else
{
	if(input[i]>(355+offset0))
{
	if(input[i]>(357+offset0))
{
	if(input[i]==(359+offset0))
{
	vR[i] = 359;
}
else
{
	vR[i] = 358;
}

}
else
{
	if(input[i]==(357+offset0))
{
	vR[i] = 357;
}
else
{
	vR[i] = 356;
}

}

}
else
{
	if(input[i]>(353+offset0))
{
	if(input[i]==(355+offset0))
{
	vR[i] = 355;
}
else
{
	vR[i] = 354;
}

}
else
{
	if(input[i]==(353+offset0))
{
	vR[i] = 353;
}
else
{
	vR[i] = 352;
}

}

}

}

}

}
else
{
	if(input[i]>(335+offset0))
{
	if(input[i]>(343+offset0))
{
	if(input[i]>(347+offset0))
{
	if(input[i]>(349+offset0))
{
	if(input[i]==(351+offset0))
{
	vR[i] = 351;
}
else
{
	vR[i] = 350;
}

}
else
{
	if(input[i]==(349+offset0))
{
	vR[i] = 349;
}
else
{
	vR[i] = 348;
}

}

}
else
{
	if(input[i]>(345+offset0))
{
	if(input[i]==(347+offset0))
{
	vR[i] = 347;
}
else
{
	vR[i] = 346;
}

}
else
{
	if(input[i]==(345+offset0))
{
	vR[i] = 345;
}
else
{
	vR[i] = 344;
}

}

}

}
else
{
	if(input[i]>(339+offset0))
{
	if(input[i]>(341+offset0))
{
	if(input[i]==(343+offset0))
{
	vR[i] = 343;
}
else
{
	vR[i] = 342;
}

}
else
{
	if(input[i]==(341+offset0))
{
	vR[i] = 341;
}
else
{
	vR[i] = 340;
}

}

}
else
{
	if(input[i]>(337+offset0))
{
	if(input[i]==(339+offset0))
{
	vR[i] = 339;
}
else
{
	vR[i] = 338;
}

}
else
{
	if(input[i]==(337+offset0))
{
	vR[i] = 337;
}
else
{
	vR[i] = 336;
}

}

}

}

}
else
{
	if(input[i]>(327+offset0))
{
	if(input[i]>(331+offset0))
{
	if(input[i]>(333+offset0))
{
	if(input[i]==(335+offset0))
{
	vR[i] = 335;
}
else
{
	vR[i] = 334;
}

}
else
{
	if(input[i]==(333+offset0))
{
	vR[i] = 333;
}
else
{
	vR[i] = 332;
}

}

}
else
{
	if(input[i]>(329+offset0))
{
	if(input[i]==(331+offset0))
{
	vR[i] = 331;
}
else
{
	vR[i] = 330;
}

}
else
{
	if(input[i]==(329+offset0))
{
	vR[i] = 329;
}
else
{
	vR[i] = 328;
}

}

}

}
else
{
	if(input[i]>(323+offset0))
{
	if(input[i]>(325+offset0))
{
	if(input[i]==(327+offset0))
{
	vR[i] = 327;
}
else
{
	vR[i] = 326;
}

}
else
{
	if(input[i]==(325+offset0))
{
	vR[i] = 325;
}
else
{
	vR[i] = 324;
}

}

}
else
{
	if(input[i]>(321+offset0))
{
	if(input[i]==(323+offset0))
{
	vR[i] = 323;
}
else
{
	vR[i] = 322;
}

}
else
{
	if(input[i]==(321+offset0))
{
	vR[i] = 321;
}
else
{
	vR[i] = 320;
}

}

}

}

}

}

}
else
{
	if(input[i]>(287+offset0))
{
	if(input[i]>(303+offset0))
{
	if(input[i]>(311+offset0))
{
	if(input[i]>(315+offset0))
{
	if(input[i]>(317+offset0))
{
	if(input[i]==(319+offset0))
{
	vR[i] = 319;
}
else
{
	vR[i] = 318;
}

}
else
{
	if(input[i]==(317+offset0))
{
	vR[i] = 317;
}
else
{
	vR[i] = 316;
}

}

}
else
{
	if(input[i]>(313+offset0))
{
	if(input[i]==(315+offset0))
{
	vR[i] = 315;
}
else
{
	vR[i] = 314;
}

}
else
{
	if(input[i]==(313+offset0))
{
	vR[i] = 313;
}
else
{
	vR[i] = 312;
}

}

}

}
else
{
	if(input[i]>(307+offset0))
{
	if(input[i]>(309+offset0))
{
	if(input[i]==(311+offset0))
{
	vR[i] = 311;
}
else
{
	vR[i] = 310;
}

}
else
{
	if(input[i]==(309+offset0))
{
	vR[i] = 309;
}
else
{
	vR[i] = 308;
}

}

}
else
{
	if(input[i]>(305+offset0))
{
	if(input[i]==(307+offset0))
{
	vR[i] = 307;
}
else
{
	vR[i] = 306;
}

}
else
{
	if(input[i]==(305+offset0))
{
	vR[i] = 305;
}
else
{
	vR[i] = 304;
}

}

}

}

}
else
{
	if(input[i]>(295+offset0))
{
	if(input[i]>(299+offset0))
{
	if(input[i]>(301+offset0))
{
	if(input[i]==(303+offset0))
{
	vR[i] = 303;
}
else
{
	vR[i] = 302;
}

}
else
{
	if(input[i]==(301+offset0))
{
	vR[i] = 301;
}
else
{
	vR[i] = 300;
}

}

}
else
{
	if(input[i]>(297+offset0))
{
	if(input[i]==(299+offset0))
{
	vR[i] = 299;
}
else
{
	vR[i] = 298;
}

}
else
{
	if(input[i]==(297+offset0))
{
	vR[i] = 297;
}
else
{
	vR[i] = 296;
}

}

}

}
else
{
	if(input[i]>(291+offset0))
{
	if(input[i]>(293+offset0))
{
	if(input[i]==(295+offset0))
{
	vR[i] = 295;
}
else
{
	vR[i] = 294;
}

}
else
{
	if(input[i]==(293+offset0))
{
	vR[i] = 293;
}
else
{
	vR[i] = 292;
}

}

}
else
{
	if(input[i]>(289+offset0))
{
	if(input[i]==(291+offset0))
{
	vR[i] = 291;
}
else
{
	vR[i] = 290;
}

}
else
{
	if(input[i]==(289+offset0))
{
	vR[i] = 289;
}
else
{
	vR[i] = 288;
}

}

}

}

}

}
else
{
	if(input[i]>(271+offset0))
{
	if(input[i]>(279+offset0))
{
	if(input[i]>(283+offset0))
{
	if(input[i]>(285+offset0))
{
	if(input[i]==(287+offset0))
{
	vR[i] = 287;
}
else
{
	vR[i] = 286;
}

}
else
{
	if(input[i]==(285+offset0))
{
	vR[i] = 285;
}
else
{
	vR[i] = 284;
}

}

}
else
{
	if(input[i]>(281+offset0))
{
	if(input[i]==(283+offset0))
{
	vR[i] = 283;
}
else
{
	vR[i] = 282;
}

}
else
{
	if(input[i]==(281+offset0))
{
	vR[i] = 281;
}
else
{
	vR[i] = 280;
}

}

}

}
else
{
	if(input[i]>(275+offset0))
{
	if(input[i]>(277+offset0))
{
	if(input[i]==(279+offset0))
{
	vR[i] = 279;
}
else
{
	vR[i] = 278;
}

}
else
{
	if(input[i]==(277+offset0))
{
	vR[i] = 277;
}
else
{
	vR[i] = 276;
}

}

}
else
{
	if(input[i]>(273+offset0))
{
	if(input[i]==(275+offset0))
{
	vR[i] = 275;
}
else
{
	vR[i] = 274;
}

}
else
{
	if(input[i]==(273+offset0))
{
	vR[i] = 273;
}
else
{
	vR[i] = 272;
}

}

}

}

}
else
{
	if(input[i]>(263+offset0))
{
	if(input[i]>(267+offset0))
{
	if(input[i]>(269+offset0))
{
	if(input[i]==(271+offset0))
{
	vR[i] = 271;
}
else
{
	vR[i] = 270;
}

}
else
{
	if(input[i]==(269+offset0))
{
	vR[i] = 269;
}
else
{
	vR[i] = 268;
}

}

}
else
{
	if(input[i]>(265+offset0))
{
	if(input[i]==(267+offset0))
{
	vR[i] = 267;
}
else
{
	vR[i] = 266;
}

}
else
{
	if(input[i]==(265+offset0))
{
	vR[i] = 265;
}
else
{
	vR[i] = 264;
}

}

}

}
else
{
	if(input[i]>(259+offset0))
{
	if(input[i]>(261+offset0))
{
	if(input[i]==(263+offset0))
{
	vR[i] = 263;
}
else
{
	vR[i] = 262;
}

}
else
{
	if(input[i]==(261+offset0))
{
	vR[i] = 261;
}
else
{
	vR[i] = 260;
}

}

}
else
{
	if(input[i]>(257+offset0))
{
	if(input[i]==(259+offset0))
{
	vR[i] = 259;
}
else
{
	vR[i] = 258;
}

}
else
{
	if(input[i]==(257+offset0))
{
	vR[i] = 257;
}
else
{
	vR[i] = 256;
}

}

}

}

}

}

}

}

}
else
{
	if(input[i]>(127+offset0))
{
	if(input[i]>(191+offset0))
{
	if(input[i]>(223+offset0))
{
	if(input[i]>(239+offset0))
{
	if(input[i]>(247+offset0))
{
	if(input[i]>(251+offset0))
{
	if(input[i]>(253+offset0))
{
	if(input[i]==(255+offset0))
{
	vR[i] = 255;
}
else
{
	vR[i] = 254;
}

}
else
{
	if(input[i]==(253+offset0))
{
	vR[i] = 253;
}
else
{
	vR[i] = 252;
}

}

}
else
{
	if(input[i]>(249+offset0))
{
	if(input[i]==(251+offset0))
{
	vR[i] = 251;
}
else
{
	vR[i] = 250;
}

}
else
{
	if(input[i]==(249+offset0))
{
	vR[i] = 249;
}
else
{
	vR[i] = 248;
}

}

}

}
else
{
	if(input[i]>(243+offset0))
{
	if(input[i]>(245+offset0))
{
	if(input[i]==(247+offset0))
{
	vR[i] = 247;
}
else
{
	vR[i] = 246;
}

}
else
{
	if(input[i]==(245+offset0))
{
	vR[i] = 245;
}
else
{
	vR[i] = 244;
}

}

}
else
{
	if(input[i]>(241+offset0))
{
	if(input[i]==(243+offset0))
{
	vR[i] = 243;
}
else
{
	vR[i] = 242;
}

}
else
{
	if(input[i]==(241+offset0))
{
	vR[i] = 241;
}
else
{
	vR[i] = 240;
}

}

}

}

}
else
{
	if(input[i]>(231+offset0))
{
	if(input[i]>(235+offset0))
{
	if(input[i]>(237+offset0))
{
	if(input[i]==(239+offset0))
{
	vR[i] = 239;
}
else
{
	vR[i] = 238;
}

}
else
{
	if(input[i]==(237+offset0))
{
	vR[i] = 237;
}
else
{
	vR[i] = 236;
}

}

}
else
{
	if(input[i]>(233+offset0))
{
	if(input[i]==(235+offset0))
{
	vR[i] = 235;
}
else
{
	vR[i] = 234;
}

}
else
{
	if(input[i]==(233+offset0))
{
	vR[i] = 233;
}
else
{
	vR[i] = 232;
}

}

}

}
else
{
	if(input[i]>(227+offset0))
{
	if(input[i]>(229+offset0))
{
	if(input[i]==(231+offset0))
{
	vR[i] = 231;
}
else
{
	vR[i] = 230;
}

}
else
{
	if(input[i]==(229+offset0))
{
	vR[i] = 229;
}
else
{
	vR[i] = 228;
}

}

}
else
{
	if(input[i]>(225+offset0))
{
	if(input[i]==(227+offset0))
{
	vR[i] = 227;
}
else
{
	vR[i] = 226;
}

}
else
{
	if(input[i]==(225+offset0))
{
	vR[i] = 225;
}
else
{
	vR[i] = 224;
}

}

}

}

}

}
else
{
	if(input[i]>(207+offset0))
{
	if(input[i]>(215+offset0))
{
	if(input[i]>(219+offset0))
{
	if(input[i]>(221+offset0))
{
	if(input[i]==(223+offset0))
{
	vR[i] = 223;
}
else
{
	vR[i] = 222;
}

}
else
{
	if(input[i]==(221+offset0))
{
	vR[i] = 221;
}
else
{
	vR[i] = 220;
}

}

}
else
{
	if(input[i]>(217+offset0))
{
	if(input[i]==(219+offset0))
{
	vR[i] = 219;
}
else
{
	vR[i] = 218;
}

}
else
{
	if(input[i]==(217+offset0))
{
	vR[i] = 217;
}
else
{
	vR[i] = 216;
}

}

}

}
else
{
	if(input[i]>(211+offset0))
{
	if(input[i]>(213+offset0))
{
	if(input[i]==(215+offset0))
{
	vR[i] = 215;
}
else
{
	vR[i] = 214;
}

}
else
{
	if(input[i]==(213+offset0))
{
	vR[i] = 213;
}
else
{
	vR[i] = 212;
}

}

}
else
{
	if(input[i]>(209+offset0))
{
	if(input[i]==(211+offset0))
{
	vR[i] = 211;
}
else
{
	vR[i] = 210;
}

}
else
{
	if(input[i]==(209+offset0))
{
	vR[i] = 209;
}
else
{
	vR[i] = 208;
}

}

}

}

}
else
{
	if(input[i]>(199+offset0))
{
	if(input[i]>(203+offset0))
{
	if(input[i]>(205+offset0))
{
	if(input[i]==(207+offset0))
{
	vR[i] = 207;
}
else
{
	vR[i] = 206;
}

}
else
{
	if(input[i]==(205+offset0))
{
	vR[i] = 205;
}
else
{
	vR[i] = 204;
}

}

}
else
{
	if(input[i]>(201+offset0))
{
	if(input[i]==(203+offset0))
{
	vR[i] = 203;
}
else
{
	vR[i] = 202;
}

}
else
{
	if(input[i]==(201+offset0))
{
	vR[i] = 201;
}
else
{
	vR[i] = 200;
}

}

}

}
else
{
	if(input[i]>(195+offset0))
{
	if(input[i]>(197+offset0))
{
	if(input[i]==(199+offset0))
{
	vR[i] = 199;
}
else
{
	vR[i] = 198;
}

}
else
{
	if(input[i]==(197+offset0))
{
	vR[i] = 197;
}
else
{
	vR[i] = 196;
}

}

}
else
{
	if(input[i]>(193+offset0))
{
	if(input[i]==(195+offset0))
{
	vR[i] = 195;
}
else
{
	vR[i] = 194;
}

}
else
{
	if(input[i]==(193+offset0))
{
	vR[i] = 193;
}
else
{
	vR[i] = 192;
}

}

}

}

}

}

}
else
{
	if(input[i]>(159+offset0))
{
	if(input[i]>(175+offset0))
{
	if(input[i]>(183+offset0))
{
	if(input[i]>(187+offset0))
{
	if(input[i]>(189+offset0))
{
	if(input[i]==(191+offset0))
{
	vR[i] = 191;
}
else
{
	vR[i] = 190;
}

}
else
{
	if(input[i]==(189+offset0))
{
	vR[i] = 189;
}
else
{
	vR[i] = 188;
}

}

}
else
{
	if(input[i]>(185+offset0))
{
	if(input[i]==(187+offset0))
{
	vR[i] = 187;
}
else
{
	vR[i] = 186;
}

}
else
{
	if(input[i]==(185+offset0))
{
	vR[i] = 185;
}
else
{
	vR[i] = 184;
}

}

}

}
else
{
	if(input[i]>(179+offset0))
{
	if(input[i]>(181+offset0))
{
	if(input[i]==(183+offset0))
{
	vR[i] = 183;
}
else
{
	vR[i] = 182;
}

}
else
{
	if(input[i]==(181+offset0))
{
	vR[i] = 181;
}
else
{
	vR[i] = 180;
}

}

}
else
{
	if(input[i]>(177+offset0))
{
	if(input[i]==(179+offset0))
{
	vR[i] = 179;
}
else
{
	vR[i] = 178;
}

}
else
{
	if(input[i]==(177+offset0))
{
	vR[i] = 177;
}
else
{
	vR[i] = 176;
}

}

}

}

}
else
{
	if(input[i]>(167+offset0))
{
	if(input[i]>(171+offset0))
{
	if(input[i]>(173+offset0))
{
	if(input[i]==(175+offset0))
{
	vR[i] = 175;
}
else
{
	vR[i] = 174;
}

}
else
{
	if(input[i]==(173+offset0))
{
	vR[i] = 173;
}
else
{
	vR[i] = 172;
}

}

}
else
{
	if(input[i]>(169+offset0))
{
	if(input[i]==(171+offset0))
{
	vR[i] = 171;
}
else
{
	vR[i] = 170;
}

}
else
{
	if(input[i]==(169+offset0))
{
	vR[i] = 169;
}
else
{
	vR[i] = 168;
}

}

}

}
else
{
	if(input[i]>(163+offset0))
{
	if(input[i]>(165+offset0))
{
	if(input[i]==(167+offset0))
{
	vR[i] = 167;
}
else
{
	vR[i] = 166;
}

}
else
{
	if(input[i]==(165+offset0))
{
	vR[i] = 165;
}
else
{
	vR[i] = 164;
}

}

}
else
{
	if(input[i]>(161+offset0))
{
	if(input[i]==(163+offset0))
{
	vR[i] = 163;
}
else
{
	vR[i] = 162;
}

}
else
{
	if(input[i]==(161+offset0))
{
	vR[i] = 161;
}
else
{
	vR[i] = 160;
}

}

}

}

}

}
else
{
	if(input[i]>(143+offset0))
{
	if(input[i]>(151+offset0))
{
	if(input[i]>(155+offset0))
{
	if(input[i]>(157+offset0))
{
	if(input[i]==(159+offset0))
{
	vR[i] = 159;
}
else
{
	vR[i] = 158;
}

}
else
{
	if(input[i]==(157+offset0))
{
	vR[i] = 157;
}
else
{
	vR[i] = 156;
}

}

}
else
{
	if(input[i]>(153+offset0))
{
	if(input[i]==(155+offset0))
{
	vR[i] = 155;
}
else
{
	vR[i] = 154;
}

}
else
{
	if(input[i]==(153+offset0))
{
	vR[i] = 153;
}
else
{
	vR[i] = 152;
}

}

}

}
else
{
	if(input[i]>(147+offset0))
{
	if(input[i]>(149+offset0))
{
	if(input[i]==(151+offset0))
{
	vR[i] = 151;
}
else
{
	vR[i] = 150;
}

}
else
{
	if(input[i]==(149+offset0))
{
	vR[i] = 149;
}
else
{
	vR[i] = 148;
}

}

}
else
{
	if(input[i]>(145+offset0))
{
	if(input[i]==(147+offset0))
{
	vR[i] = 147;
}
else
{
	vR[i] = 146;
}

}
else
{
	if(input[i]==(145+offset0))
{
	vR[i] = 145;
}
else
{
	vR[i] = 144;
}

}

}

}

}
else
{
	if(input[i]>(135+offset0))
{
	if(input[i]>(139+offset0))
{
	if(input[i]>(141+offset0))
{
	if(input[i]==(143+offset0))
{
	vR[i] = 143;
}
else
{
	vR[i] = 142;
}

}
else
{
	if(input[i]==(141+offset0))
{
	vR[i] = 141;
}
else
{
	vR[i] = 140;
}

}

}
else
{
	if(input[i]>(137+offset0))
{
	if(input[i]==(139+offset0))
{
	vR[i] = 139;
}
else
{
	vR[i] = 138;
}

}
else
{
	if(input[i]==(137+offset0))
{
	vR[i] = 137;
}
else
{
	vR[i] = 136;
}

}

}

}
else
{
	if(input[i]>(131+offset0))
{
	if(input[i]>(133+offset0))
{
	if(input[i]==(135+offset0))
{
	vR[i] = 135;
}
else
{
	vR[i] = 134;
}

}
else
{
	if(input[i]==(133+offset0))
{
	vR[i] = 133;
}
else
{
	vR[i] = 132;
}

}

}
else
{
	if(input[i]>(129+offset0))
{
	if(input[i]==(131+offset0))
{
	vR[i] = 131;
}
else
{
	vR[i] = 130;
}

}
else
{
	if(input[i]==(129+offset0))
{
	vR[i] = 129;
}
else
{
	vR[i] = 128;
}

}

}

}

}

}

}

}
else
{
	if(input[i]>(63+offset0))
{
	if(input[i]>(95+offset0))
{
	if(input[i]>(111+offset0))
{
	if(input[i]>(119+offset0))
{
	if(input[i]>(123+offset0))
{
	if(input[i]>(125+offset0))
{
	if(input[i]==(127+offset0))
{
	vR[i] = 127;
}
else
{
	vR[i] = 126;
}

}
else
{
	if(input[i]==(125+offset0))
{
	vR[i] = 125;
}
else
{
	vR[i] = 124;
}

}

}
else
{
	if(input[i]>(121+offset0))
{
	if(input[i]==(123+offset0))
{
	vR[i] = 123;
}
else
{
	vR[i] = 122;
}

}
else
{
	if(input[i]==(121+offset0))
{
	vR[i] = 121;
}
else
{
	vR[i] = 120;
}

}

}

}
else
{
	if(input[i]>(115+offset0))
{
	if(input[i]>(117+offset0))
{
	if(input[i]==(119+offset0))
{
	vR[i] = 119;
}
else
{
	vR[i] = 118;
}

}
else
{
	if(input[i]==(117+offset0))
{
	vR[i] = 117;
}
else
{
	vR[i] = 116;
}

}

}
else
{
	if(input[i]>(113+offset0))
{
	if(input[i]==(115+offset0))
{
	vR[i] = 115;
}
else
{
	vR[i] = 114;
}

}
else
{
	if(input[i]==(113+offset0))
{
	vR[i] = 113;
}
else
{
	vR[i] = 112;
}

}

}

}

}
else
{
	if(input[i]>(103+offset0))
{
	if(input[i]>(107+offset0))
{
	if(input[i]>(109+offset0))
{
	if(input[i]==(111+offset0))
{
	vR[i] = 111;
}
else
{
	vR[i] = 110;
}

}
else
{
	if(input[i]==(109+offset0))
{
	vR[i] = 109;
}
else
{
	vR[i] = 108;
}

}

}
else
{
	if(input[i]>(105+offset0))
{
	if(input[i]==(107+offset0))
{
	vR[i] = 107;
}
else
{
	vR[i] = 106;
}

}
else
{
	if(input[i]==(105+offset0))
{
	vR[i] = 105;
}
else
{
	vR[i] = 104;
}

}

}

}
else
{
	if(input[i]>(99+offset0))
{
	if(input[i]>(101+offset0))
{
	if(input[i]==(103+offset0))
{
	vR[i] = 103;
}
else
{
	vR[i] = 102;
}

}
else
{
	if(input[i]==(101+offset0))
{
	vR[i] = 101;
}
else
{
	vR[i] = 100;
}

}

}
else
{
	if(input[i]>(97+offset0))
{
	if(input[i]==(99+offset0))
{
	vR[i] = 99;
}
else
{
	vR[i] = 98;
}

}
else
{
	if(input[i]==(97+offset0))
{
	vR[i] = 97;
}
else
{
	vR[i] = 96;
}

}

}

}

}

}
else
{
	if(input[i]>(79+offset0))
{
	if(input[i]>(87+offset0))
{
	if(input[i]>(91+offset0))
{
	if(input[i]>(93+offset0))
{
	if(input[i]==(95+offset0))
{
	vR[i] = 95;
}
else
{
	vR[i] = 94;
}

}
else
{
	if(input[i]==(93+offset0))
{
	vR[i] = 93;
}
else
{
	vR[i] = 92;
}

}

}
else
{
	if(input[i]>(89+offset0))
{
	if(input[i]==(91+offset0))
{
	vR[i] = 91;
}
else
{
	vR[i] = 90;
}

}
else
{
	if(input[i]==(89+offset0))
{
	vR[i] = 89;
}
else
{
	vR[i] = 88;
}

}

}

}
else
{
	if(input[i]>(83+offset0))
{
	if(input[i]>(85+offset0))
{
	if(input[i]==(87+offset0))
{
	vR[i] = 87;
}
else
{
	vR[i] = 86;
}

}
else
{
	if(input[i]==(85+offset0))
{
	vR[i] = 85;
}
else
{
	vR[i] = 84;
}

}

}
else
{
	if(input[i]>(81+offset0))
{
	if(input[i]==(83+offset0))
{
	vR[i] = 83;
}
else
{
	vR[i] = 82;
}

}
else
{
	if(input[i]==(81+offset0))
{
	vR[i] = 81;
}
else
{
	vR[i] = 80;
}

}

}

}

}
else
{
	if(input[i]>(71+offset0))
{
	if(input[i]>(75+offset0))
{
	if(input[i]>(77+offset0))
{
	if(input[i]==(79+offset0))
{
	vR[i] = 79;
}
else
{
	vR[i] = 78;
}

}
else
{
	if(input[i]==(77+offset0))
{
	vR[i] = 77;
}
else
{
	vR[i] = 76;
}

}

}
else
{
	if(input[i]>(73+offset0))
{
	if(input[i]==(75+offset0))
{
	vR[i] = 75;
}
else
{
	vR[i] = 74;
}

}
else
{
	if(input[i]==(73+offset0))
{
	vR[i] = 73;
}
else
{
	vR[i] = 72;
}

}

}

}
else
{
	if(input[i]>(67+offset0))
{
	if(input[i]>(69+offset0))
{
	if(input[i]==(71+offset0))
{
	vR[i] = 71;
}
else
{
	vR[i] = 70;
}

}
else
{
	if(input[i]==(69+offset0))
{
	vR[i] = 69;
}
else
{
	vR[i] = 68;
}

}

}
else
{
	if(input[i]>(65+offset0))
{
	if(input[i]==(67+offset0))
{
	vR[i] = 67;
}
else
{
	vR[i] = 66;
}

}
else
{
	if(input[i]==(65+offset0))
{
	vR[i] = 65;
}
else
{
	vR[i] = 64;
}

}

}

}

}

}

}
else
{
	if(input[i]>(31+offset0))
{
	if(input[i]>(47+offset0))
{
	if(input[i]>(55+offset0))
{
	if(input[i]>(59+offset0))
{
	if(input[i]>(61+offset0))
{
	if(input[i]==(63+offset0))
{
	vR[i] = 63;
}
else
{
	vR[i] = 62;
}

}
else
{
	if(input[i]==(61+offset0))
{
	vR[i] = 61;
}
else
{
	vR[i] = 60;
}

}

}
else
{
	if(input[i]>(57+offset0))
{
	if(input[i]==(59+offset0))
{
	vR[i] = 59;
}
else
{
	vR[i] = 58;
}

}
else
{
	if(input[i]==(57+offset0))
{
	vR[i] = 57;
}
else
{
	vR[i] = 56;
}

}

}

}
else
{
	if(input[i]>(51+offset0))
{
	if(input[i]>(53+offset0))
{
	if(input[i]==(55+offset0))
{
	vR[i] = 55;
}
else
{
	vR[i] = 54;
}

}
else
{
	if(input[i]==(53+offset0))
{
	vR[i] = 53;
}
else
{
	vR[i] = 52;
}

}

}
else
{
	if(input[i]>(49+offset0))
{
	if(input[i]==(51+offset0))
{
	vR[i] = 51;
}
else
{
	vR[i] = 50;
}

}
else
{
	if(input[i]==(49+offset0))
{
	vR[i] = 49;
}
else
{
	vR[i] = 48;
}

}

}

}

}
else
{
	if(input[i]>(39+offset0))
{
	if(input[i]>(43+offset0))
{
	if(input[i]>(45+offset0))
{
	if(input[i]==(47+offset0))
{
	vR[i] = 47;
}
else
{
	vR[i] = 46;
}

}
else
{
	if(input[i]==(45+offset0))
{
	vR[i] = 45;
}
else
{
	vR[i] = 44;
}

}

}
else
{
	if(input[i]>(41+offset0))
{
	if(input[i]==(43+offset0))
{
	vR[i] = 43;
}
else
{
	vR[i] = 42;
}

}
else
{
	if(input[i]==(41+offset0))
{
	vR[i] = 41;
}
else
{
	vR[i] = 40;
}

}

}

}
else
{
	if(input[i]>(35+offset0))
{
	if(input[i]>(37+offset0))
{
	if(input[i]==(39+offset0))
{
	vR[i] = 39;
}
else
{
	vR[i] = 38;
}

}
else
{
	if(input[i]==(37+offset0))
{
	vR[i] = 37;
}
else
{
	vR[i] = 36;
}

}

}
else
{
	if(input[i]>(33+offset0))
{
	if(input[i]==(35+offset0))
{
	vR[i] = 35;
}
else
{
	vR[i] = 34;
}

}
else
{
	if(input[i]==(33+offset0))
{
	vR[i] = 33;
}
else
{
	vR[i] = 32;
}

}

}

}

}

}
else
{
	if(input[i]>(15+offset0))
{
	if(input[i]>(23+offset0))
{
	if(input[i]>(27+offset0))
{
	if(input[i]>(29+offset0))
{
	if(input[i]==(31+offset0))
{
	vR[i] = 31;
}
else
{
	vR[i] = 30;
}

}
else
{
	if(input[i]==(29+offset0))
{
	vR[i] = 29;
}
else
{
	vR[i] = 28;
}

}

}
else
{
	if(input[i]>(25+offset0))
{
	if(input[i]==(27+offset0))
{
	vR[i] = 27;
}
else
{
	vR[i] = 26;
}

}
else
{
	if(input[i]==(25+offset0))
{
	vR[i] = 25;
}
else
{
	vR[i] = 24;
}

}

}

}
else
{
	if(input[i]>(19+offset0))
{
	if(input[i]>(21+offset0))
{
	if(input[i]==(23+offset0))
{
	vR[i] = 23;
}
else
{
	vR[i] = 22;
}

}
else
{
	if(input[i]==(21+offset0))
{
	vR[i] = 21;
}
else
{
	vR[i] = 20;
}

}

}
else
{
	if(input[i]>(17+offset0))
{
	if(input[i]==(19+offset0))
{
	vR[i] = 19;
}
else
{
	vR[i] = 18;
}

}
else
{
	if(input[i]==(17+offset0))
{
	vR[i] = 17;
}
else
{
	vR[i] = 16;
}

}

}

}

}
else
{
	if(input[i]>(7+offset0))
{
	if(input[i]>(11+offset0))
{
	if(input[i]>(13+offset0))
{
	if(input[i]==(15+offset0))
{
	vR[i] = 15;
}
else
{
	vR[i] = 14;
}

}
else
{
	if(input[i]==(13+offset0))
{
	vR[i] = 13;
}
else
{
	vR[i] = 12;
}

}

}
else
{
	if(input[i]>(9+offset0))
{
	if(input[i]==(11+offset0))
{
	vR[i] = 11;
}
else
{
	vR[i] = 10;
}

}
else
{
	if(input[i]==(9+offset0))
{
	vR[i] = 9;
}
else
{
	vR[i] = 8;
}

}

}

}
else
{
	if(input[i]>(3+offset0))
{
	if(input[i]>(5+offset0))
{
	if(input[i]==(7+offset0))
{
	vR[i] = 7;
}
else
{
	vR[i] = 6;
}

}
else
{
	if(input[i]==(5+offset0))
{
	vR[i] = 5;
}
else
{
	vR[i] = 4;
}

}

}
else
{
	if(input[i]>(1+offset0))
{
	if(input[i]==(3+offset0))
{
	vR[i] = 3;
}
else
{
	vR[i] = 2;
}

}
else
{
	if(input[i]==(1+offset0))
{
	vR[i] = 1;
}
else
{
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

}

}

}

}

}


	}
}

int main(int argc, char **argv)
{
	float elapsed_time[TIMES], avg = 0.0, sd = 0.0;
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

	for (int t = 0; t < TIMES; t++)
	{
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
		CHECK(cudaEventElapsedTime(&elapsed_time[t], start, stop));
		printf("[CUDA - Random Forest]: %s - execution time = %.6fms\n", EXP_NAME, elapsed_time[t]);
		registerTime(elapsed_time[t]]);

		avg += elapsed_time[t];
	}
	// copy kernel result back to host side
	CHECK(cudaMemcpy(h_vR, d_vR, nBytes, cudaMemcpyDeviceToHost));
	CHECK(cudaGetLastError());

	//Verify the answers
	char flag = 1;
	for (int i = 0; i < nElem; i++)
	{
		if (i < 32)
		{
			//printf("%.3f ", h_vR[i]);
		}
		if (h_input[i] != h_vR[i])
		{
			flag = 0;
			break;
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

	// avg and standard deviation
	avg = (float)avg / TIMES;
	for (int t = 0; t < TIMES; t++)
	{
		sd+=pow(elapsed_time[t]-avg,2);
	}
	sd = (float) sd/TIMES;
	sd = sqrt(sd);
	printf("\nAVG = %fms, SD = %fms\n", avg,sd);
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

#if defined(_BEST)
		ip[i] = (float)(0);
#else
		if(WARP_SIZE < _MOD)
		{
			int aux = _MOD / WARP_SIZE;
			ip[i] = (float)((i * aux) % _MOD);
		}
		else
		{
			ip[i] = (float)(i % _MOD);
		}
#endif
	}
	return;
}

void registerTime(float value)
{
	printf("[CUDA - Random Forest]: Time spent: %f.\n", value);
}
