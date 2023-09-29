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

#define _MOD 8192
#define _1TREE
#define EXP_NAME "_RF_8191IF_1TREE_1INPUT__WORST_50000000"

// RF_with_if

__global__ void RF_kernel(float *input, const int n, const int offset0, float *vR)
{
	int i = blockIdx.x * blockDim.x + threadIdx.x;
	if (i < n)
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
