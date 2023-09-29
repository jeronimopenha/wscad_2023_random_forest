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

#define _MOD 1024
#define _3TREE
#define EXP_NAME "_RF_1023IF_3TREE_1INPUT__WORST_50000000"

// RF_with_if

__global__ void RF_kernel(float *input, const int n, const int offset0, const int offset1, const int offset2, float *vR)
{
	int i = blockIdx.x * blockDim.x + threadIdx.x;
	if (i < n)
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


if(input[i]>(511+offset1))
{
	if(input[i]>(767+offset1))
{
	if(input[i]>(895+offset1))
{
	if(input[i]>(959+offset1))
{
	if(input[i]>(991+offset1))
{
	if(input[i]>(1007+offset1))
{
	if(input[i]>(1015+offset1))
{
	if(input[i]>(1019+offset1))
{
	if(input[i]>(1021+offset1))
{
	if(input[i]==(1023+offset1))
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
	if(input[i]==(1021+offset1))
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
	if(input[i]>(1017+offset1))
{
	if(input[i]==(1019+offset1))
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
	if(input[i]==(1017+offset1))
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
	if(input[i]>(1011+offset1))
{
	if(input[i]>(1013+offset1))
{
	if(input[i]==(1015+offset1))
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
	if(input[i]==(1013+offset1))
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
	if(input[i]>(1009+offset1))
{
	if(input[i]==(1011+offset1))
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
	if(input[i]==(1009+offset1))
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
	if(input[i]>(999+offset1))
{
	if(input[i]>(1003+offset1))
{
	if(input[i]>(1005+offset1))
{
	if(input[i]==(1007+offset1))
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
	if(input[i]==(1005+offset1))
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
	if(input[i]>(1001+offset1))
{
	if(input[i]==(1003+offset1))
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
	if(input[i]==(1001+offset1))
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
	if(input[i]>(995+offset1))
{
	if(input[i]>(997+offset1))
{
	if(input[i]==(999+offset1))
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
	if(input[i]==(997+offset1))
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
	if(input[i]>(993+offset1))
{
	if(input[i]==(995+offset1))
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
	if(input[i]==(993+offset1))
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
	if(input[i]>(975+offset1))
{
	if(input[i]>(983+offset1))
{
	if(input[i]>(987+offset1))
{
	if(input[i]>(989+offset1))
{
	if(input[i]==(991+offset1))
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
	if(input[i]==(989+offset1))
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
	if(input[i]>(985+offset1))
{
	if(input[i]==(987+offset1))
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
	if(input[i]==(985+offset1))
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
	if(input[i]>(979+offset1))
{
	if(input[i]>(981+offset1))
{
	if(input[i]==(983+offset1))
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
	if(input[i]==(981+offset1))
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
	if(input[i]>(977+offset1))
{
	if(input[i]==(979+offset1))
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
	if(input[i]==(977+offset1))
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
	if(input[i]>(967+offset1))
{
	if(input[i]>(971+offset1))
{
	if(input[i]>(973+offset1))
{
	if(input[i]==(975+offset1))
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
	if(input[i]==(973+offset1))
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
	if(input[i]>(969+offset1))
{
	if(input[i]==(971+offset1))
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
	if(input[i]==(969+offset1))
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
	if(input[i]>(963+offset1))
{
	if(input[i]>(965+offset1))
{
	if(input[i]==(967+offset1))
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
	if(input[i]==(965+offset1))
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
	if(input[i]>(961+offset1))
{
	if(input[i]==(963+offset1))
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
	if(input[i]==(961+offset1))
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
	if(input[i]>(927+offset1))
{
	if(input[i]>(943+offset1))
{
	if(input[i]>(951+offset1))
{
	if(input[i]>(955+offset1))
{
	if(input[i]>(957+offset1))
{
	if(input[i]==(959+offset1))
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
	if(input[i]==(957+offset1))
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
	if(input[i]>(953+offset1))
{
	if(input[i]==(955+offset1))
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
	if(input[i]==(953+offset1))
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
	if(input[i]>(947+offset1))
{
	if(input[i]>(949+offset1))
{
	if(input[i]==(951+offset1))
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
	if(input[i]==(949+offset1))
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
	if(input[i]>(945+offset1))
{
	if(input[i]==(947+offset1))
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
	if(input[i]==(945+offset1))
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
	if(input[i]>(935+offset1))
{
	if(input[i]>(939+offset1))
{
	if(input[i]>(941+offset1))
{
	if(input[i]==(943+offset1))
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
	if(input[i]==(941+offset1))
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
	if(input[i]>(937+offset1))
{
	if(input[i]==(939+offset1))
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
	if(input[i]==(937+offset1))
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
	if(input[i]>(931+offset1))
{
	if(input[i]>(933+offset1))
{
	if(input[i]==(935+offset1))
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
	if(input[i]==(933+offset1))
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
	if(input[i]>(929+offset1))
{
	if(input[i]==(931+offset1))
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
	if(input[i]==(929+offset1))
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
	if(input[i]>(911+offset1))
{
	if(input[i]>(919+offset1))
{
	if(input[i]>(923+offset1))
{
	if(input[i]>(925+offset1))
{
	if(input[i]==(927+offset1))
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
	if(input[i]==(925+offset1))
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
	if(input[i]>(921+offset1))
{
	if(input[i]==(923+offset1))
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
	if(input[i]==(921+offset1))
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
	if(input[i]>(915+offset1))
{
	if(input[i]>(917+offset1))
{
	if(input[i]==(919+offset1))
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
	if(input[i]==(917+offset1))
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
	if(input[i]>(913+offset1))
{
	if(input[i]==(915+offset1))
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
	if(input[i]==(913+offset1))
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
	if(input[i]>(903+offset1))
{
	if(input[i]>(907+offset1))
{
	if(input[i]>(909+offset1))
{
	if(input[i]==(911+offset1))
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
	if(input[i]==(909+offset1))
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
	if(input[i]>(905+offset1))
{
	if(input[i]==(907+offset1))
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
	if(input[i]==(905+offset1))
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
	if(input[i]>(899+offset1))
{
	if(input[i]>(901+offset1))
{
	if(input[i]==(903+offset1))
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
	if(input[i]==(901+offset1))
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
	if(input[i]>(897+offset1))
{
	if(input[i]==(899+offset1))
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
	if(input[i]==(897+offset1))
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
	if(input[i]>(831+offset1))
{
	if(input[i]>(863+offset1))
{
	if(input[i]>(879+offset1))
{
	if(input[i]>(887+offset1))
{
	if(input[i]>(891+offset1))
{
	if(input[i]>(893+offset1))
{
	if(input[i]==(895+offset1))
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
	if(input[i]==(893+offset1))
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
	if(input[i]>(889+offset1))
{
	if(input[i]==(891+offset1))
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
	if(input[i]==(889+offset1))
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
	if(input[i]>(883+offset1))
{
	if(input[i]>(885+offset1))
{
	if(input[i]==(887+offset1))
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
	if(input[i]==(885+offset1))
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
	if(input[i]>(881+offset1))
{
	if(input[i]==(883+offset1))
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
	if(input[i]==(881+offset1))
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
	if(input[i]>(871+offset1))
{
	if(input[i]>(875+offset1))
{
	if(input[i]>(877+offset1))
{
	if(input[i]==(879+offset1))
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
	if(input[i]==(877+offset1))
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
	if(input[i]>(873+offset1))
{
	if(input[i]==(875+offset1))
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
	if(input[i]==(873+offset1))
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
	if(input[i]>(867+offset1))
{
	if(input[i]>(869+offset1))
{
	if(input[i]==(871+offset1))
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
	if(input[i]==(869+offset1))
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
	if(input[i]>(865+offset1))
{
	if(input[i]==(867+offset1))
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
	if(input[i]==(865+offset1))
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
	if(input[i]>(847+offset1))
{
	if(input[i]>(855+offset1))
{
	if(input[i]>(859+offset1))
{
	if(input[i]>(861+offset1))
{
	if(input[i]==(863+offset1))
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
	if(input[i]==(861+offset1))
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
	if(input[i]>(857+offset1))
{
	if(input[i]==(859+offset1))
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
	if(input[i]==(857+offset1))
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
	if(input[i]>(851+offset1))
{
	if(input[i]>(853+offset1))
{
	if(input[i]==(855+offset1))
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
	if(input[i]==(853+offset1))
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
	if(input[i]>(849+offset1))
{
	if(input[i]==(851+offset1))
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
	if(input[i]==(849+offset1))
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
	if(input[i]>(839+offset1))
{
	if(input[i]>(843+offset1))
{
	if(input[i]>(845+offset1))
{
	if(input[i]==(847+offset1))
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
	if(input[i]==(845+offset1))
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
	if(input[i]>(841+offset1))
{
	if(input[i]==(843+offset1))
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
	if(input[i]==(841+offset1))
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
	if(input[i]>(835+offset1))
{
	if(input[i]>(837+offset1))
{
	if(input[i]==(839+offset1))
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
	if(input[i]==(837+offset1))
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
	if(input[i]>(833+offset1))
{
	if(input[i]==(835+offset1))
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
	if(input[i]==(833+offset1))
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
	if(input[i]>(799+offset1))
{
	if(input[i]>(815+offset1))
{
	if(input[i]>(823+offset1))
{
	if(input[i]>(827+offset1))
{
	if(input[i]>(829+offset1))
{
	if(input[i]==(831+offset1))
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
	if(input[i]==(829+offset1))
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
	if(input[i]>(825+offset1))
{
	if(input[i]==(827+offset1))
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
	if(input[i]==(825+offset1))
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
	if(input[i]>(819+offset1))
{
	if(input[i]>(821+offset1))
{
	if(input[i]==(823+offset1))
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
	if(input[i]==(821+offset1))
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
	if(input[i]>(817+offset1))
{
	if(input[i]==(819+offset1))
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
	if(input[i]==(817+offset1))
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
	if(input[i]>(807+offset1))
{
	if(input[i]>(811+offset1))
{
	if(input[i]>(813+offset1))
{
	if(input[i]==(815+offset1))
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
	if(input[i]==(813+offset1))
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
	if(input[i]>(809+offset1))
{
	if(input[i]==(811+offset1))
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
	if(input[i]==(809+offset1))
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
	if(input[i]>(803+offset1))
{
	if(input[i]>(805+offset1))
{
	if(input[i]==(807+offset1))
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
	if(input[i]==(805+offset1))
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
	if(input[i]>(801+offset1))
{
	if(input[i]==(803+offset1))
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
	if(input[i]==(801+offset1))
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
	if(input[i]>(783+offset1))
{
	if(input[i]>(791+offset1))
{
	if(input[i]>(795+offset1))
{
	if(input[i]>(797+offset1))
{
	if(input[i]==(799+offset1))
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
	if(input[i]==(797+offset1))
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
	if(input[i]>(793+offset1))
{
	if(input[i]==(795+offset1))
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
	if(input[i]==(793+offset1))
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
	if(input[i]>(787+offset1))
{
	if(input[i]>(789+offset1))
{
	if(input[i]==(791+offset1))
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
	if(input[i]==(789+offset1))
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
	if(input[i]>(785+offset1))
{
	if(input[i]==(787+offset1))
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
	if(input[i]==(785+offset1))
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
	if(input[i]>(775+offset1))
{
	if(input[i]>(779+offset1))
{
	if(input[i]>(781+offset1))
{
	if(input[i]==(783+offset1))
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
	if(input[i]==(781+offset1))
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
	if(input[i]>(777+offset1))
{
	if(input[i]==(779+offset1))
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
	if(input[i]==(777+offset1))
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
	if(input[i]>(771+offset1))
{
	if(input[i]>(773+offset1))
{
	if(input[i]==(775+offset1))
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
	if(input[i]==(773+offset1))
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
	if(input[i]>(769+offset1))
{
	if(input[i]==(771+offset1))
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
	if(input[i]==(769+offset1))
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
	if(input[i]>(639+offset1))
{
	if(input[i]>(703+offset1))
{
	if(input[i]>(735+offset1))
{
	if(input[i]>(751+offset1))
{
	if(input[i]>(759+offset1))
{
	if(input[i]>(763+offset1))
{
	if(input[i]>(765+offset1))
{
	if(input[i]==(767+offset1))
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
	if(input[i]==(765+offset1))
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
	if(input[i]>(761+offset1))
{
	if(input[i]==(763+offset1))
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
	if(input[i]==(761+offset1))
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
	if(input[i]>(755+offset1))
{
	if(input[i]>(757+offset1))
{
	if(input[i]==(759+offset1))
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
	if(input[i]==(757+offset1))
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
	if(input[i]>(753+offset1))
{
	if(input[i]==(755+offset1))
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
	if(input[i]==(753+offset1))
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
	if(input[i]>(743+offset1))
{
	if(input[i]>(747+offset1))
{
	if(input[i]>(749+offset1))
{
	if(input[i]==(751+offset1))
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
	if(input[i]==(749+offset1))
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
	if(input[i]>(745+offset1))
{
	if(input[i]==(747+offset1))
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
	if(input[i]==(745+offset1))
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
	if(input[i]>(739+offset1))
{
	if(input[i]>(741+offset1))
{
	if(input[i]==(743+offset1))
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
	if(input[i]==(741+offset1))
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
	if(input[i]>(737+offset1))
{
	if(input[i]==(739+offset1))
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
	if(input[i]==(737+offset1))
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
	if(input[i]>(719+offset1))
{
	if(input[i]>(727+offset1))
{
	if(input[i]>(731+offset1))
{
	if(input[i]>(733+offset1))
{
	if(input[i]==(735+offset1))
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
	if(input[i]==(733+offset1))
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
	if(input[i]>(729+offset1))
{
	if(input[i]==(731+offset1))
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
	if(input[i]==(729+offset1))
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
	if(input[i]>(723+offset1))
{
	if(input[i]>(725+offset1))
{
	if(input[i]==(727+offset1))
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
	if(input[i]==(725+offset1))
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
	if(input[i]>(721+offset1))
{
	if(input[i]==(723+offset1))
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
	if(input[i]==(721+offset1))
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
	if(input[i]>(711+offset1))
{
	if(input[i]>(715+offset1))
{
	if(input[i]>(717+offset1))
{
	if(input[i]==(719+offset1))
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
	if(input[i]==(717+offset1))
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
	if(input[i]>(713+offset1))
{
	if(input[i]==(715+offset1))
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
	if(input[i]==(713+offset1))
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
	if(input[i]>(707+offset1))
{
	if(input[i]>(709+offset1))
{
	if(input[i]==(711+offset1))
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
	if(input[i]==(709+offset1))
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
	if(input[i]>(705+offset1))
{
	if(input[i]==(707+offset1))
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
	if(input[i]==(705+offset1))
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
	if(input[i]>(671+offset1))
{
	if(input[i]>(687+offset1))
{
	if(input[i]>(695+offset1))
{
	if(input[i]>(699+offset1))
{
	if(input[i]>(701+offset1))
{
	if(input[i]==(703+offset1))
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
	if(input[i]==(701+offset1))
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
	if(input[i]>(697+offset1))
{
	if(input[i]==(699+offset1))
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
	if(input[i]==(697+offset1))
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
	if(input[i]>(691+offset1))
{
	if(input[i]>(693+offset1))
{
	if(input[i]==(695+offset1))
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
	if(input[i]==(693+offset1))
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
	if(input[i]>(689+offset1))
{
	if(input[i]==(691+offset1))
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
	if(input[i]==(689+offset1))
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
	if(input[i]>(679+offset1))
{
	if(input[i]>(683+offset1))
{
	if(input[i]>(685+offset1))
{
	if(input[i]==(687+offset1))
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
	if(input[i]==(685+offset1))
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
	if(input[i]>(681+offset1))
{
	if(input[i]==(683+offset1))
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
	if(input[i]==(681+offset1))
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
	if(input[i]>(675+offset1))
{
	if(input[i]>(677+offset1))
{
	if(input[i]==(679+offset1))
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
	if(input[i]==(677+offset1))
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
	if(input[i]>(673+offset1))
{
	if(input[i]==(675+offset1))
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
	if(input[i]==(673+offset1))
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
	if(input[i]>(655+offset1))
{
	if(input[i]>(663+offset1))
{
	if(input[i]>(667+offset1))
{
	if(input[i]>(669+offset1))
{
	if(input[i]==(671+offset1))
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
	if(input[i]==(669+offset1))
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
	if(input[i]>(665+offset1))
{
	if(input[i]==(667+offset1))
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
	if(input[i]==(665+offset1))
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
	if(input[i]>(659+offset1))
{
	if(input[i]>(661+offset1))
{
	if(input[i]==(663+offset1))
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
	if(input[i]==(661+offset1))
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
	if(input[i]>(657+offset1))
{
	if(input[i]==(659+offset1))
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
	if(input[i]==(657+offset1))
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
	if(input[i]>(647+offset1))
{
	if(input[i]>(651+offset1))
{
	if(input[i]>(653+offset1))
{
	if(input[i]==(655+offset1))
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
	if(input[i]==(653+offset1))
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
	if(input[i]>(649+offset1))
{
	if(input[i]==(651+offset1))
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
	if(input[i]==(649+offset1))
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
	if(input[i]>(643+offset1))
{
	if(input[i]>(645+offset1))
{
	if(input[i]==(647+offset1))
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
	if(input[i]==(645+offset1))
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
	if(input[i]>(641+offset1))
{
	if(input[i]==(643+offset1))
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
	if(input[i]==(641+offset1))
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
	if(input[i]>(575+offset1))
{
	if(input[i]>(607+offset1))
{
	if(input[i]>(623+offset1))
{
	if(input[i]>(631+offset1))
{
	if(input[i]>(635+offset1))
{
	if(input[i]>(637+offset1))
{
	if(input[i]==(639+offset1))
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
	if(input[i]==(637+offset1))
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
	if(input[i]>(633+offset1))
{
	if(input[i]==(635+offset1))
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
	if(input[i]==(633+offset1))
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
	if(input[i]>(627+offset1))
{
	if(input[i]>(629+offset1))
{
	if(input[i]==(631+offset1))
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
	if(input[i]==(629+offset1))
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
	if(input[i]>(625+offset1))
{
	if(input[i]==(627+offset1))
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
	if(input[i]==(625+offset1))
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
	if(input[i]>(615+offset1))
{
	if(input[i]>(619+offset1))
{
	if(input[i]>(621+offset1))
{
	if(input[i]==(623+offset1))
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
	if(input[i]==(621+offset1))
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
	if(input[i]>(617+offset1))
{
	if(input[i]==(619+offset1))
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
	if(input[i]==(617+offset1))
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
	if(input[i]>(611+offset1))
{
	if(input[i]>(613+offset1))
{
	if(input[i]==(615+offset1))
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
	if(input[i]==(613+offset1))
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
	if(input[i]>(609+offset1))
{
	if(input[i]==(611+offset1))
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
	if(input[i]==(609+offset1))
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
	if(input[i]>(591+offset1))
{
	if(input[i]>(599+offset1))
{
	if(input[i]>(603+offset1))
{
	if(input[i]>(605+offset1))
{
	if(input[i]==(607+offset1))
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
	if(input[i]==(605+offset1))
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
	if(input[i]>(601+offset1))
{
	if(input[i]==(603+offset1))
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
	if(input[i]==(601+offset1))
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
	if(input[i]>(595+offset1))
{
	if(input[i]>(597+offset1))
{
	if(input[i]==(599+offset1))
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
	if(input[i]==(597+offset1))
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
	if(input[i]>(593+offset1))
{
	if(input[i]==(595+offset1))
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
	if(input[i]==(593+offset1))
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
	if(input[i]>(583+offset1))
{
	if(input[i]>(587+offset1))
{
	if(input[i]>(589+offset1))
{
	if(input[i]==(591+offset1))
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
	if(input[i]==(589+offset1))
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
	if(input[i]>(585+offset1))
{
	if(input[i]==(587+offset1))
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
	if(input[i]==(585+offset1))
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
	if(input[i]>(579+offset1))
{
	if(input[i]>(581+offset1))
{
	if(input[i]==(583+offset1))
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
	if(input[i]==(581+offset1))
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
	if(input[i]>(577+offset1))
{
	if(input[i]==(579+offset1))
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
	if(input[i]==(577+offset1))
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
	if(input[i]>(543+offset1))
{
	if(input[i]>(559+offset1))
{
	if(input[i]>(567+offset1))
{
	if(input[i]>(571+offset1))
{
	if(input[i]>(573+offset1))
{
	if(input[i]==(575+offset1))
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
	if(input[i]==(573+offset1))
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
	if(input[i]>(569+offset1))
{
	if(input[i]==(571+offset1))
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
	if(input[i]==(569+offset1))
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
	if(input[i]>(563+offset1))
{
	if(input[i]>(565+offset1))
{
	if(input[i]==(567+offset1))
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
	if(input[i]==(565+offset1))
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
	if(input[i]>(561+offset1))
{
	if(input[i]==(563+offset1))
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
	if(input[i]==(561+offset1))
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
	if(input[i]>(551+offset1))
{
	if(input[i]>(555+offset1))
{
	if(input[i]>(557+offset1))
{
	if(input[i]==(559+offset1))
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
	if(input[i]==(557+offset1))
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
	if(input[i]>(553+offset1))
{
	if(input[i]==(555+offset1))
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
	if(input[i]==(553+offset1))
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
	if(input[i]>(547+offset1))
{
	if(input[i]>(549+offset1))
{
	if(input[i]==(551+offset1))
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
	if(input[i]==(549+offset1))
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
	if(input[i]>(545+offset1))
{
	if(input[i]==(547+offset1))
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
	if(input[i]==(545+offset1))
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
	if(input[i]>(527+offset1))
{
	if(input[i]>(535+offset1))
{
	if(input[i]>(539+offset1))
{
	if(input[i]>(541+offset1))
{
	if(input[i]==(543+offset1))
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
	if(input[i]==(541+offset1))
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
	if(input[i]>(537+offset1))
{
	if(input[i]==(539+offset1))
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
	if(input[i]==(537+offset1))
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
	if(input[i]>(531+offset1))
{
	if(input[i]>(533+offset1))
{
	if(input[i]==(535+offset1))
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
	if(input[i]==(533+offset1))
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
	if(input[i]>(529+offset1))
{
	if(input[i]==(531+offset1))
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
	if(input[i]==(529+offset1))
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
	if(input[i]>(519+offset1))
{
	if(input[i]>(523+offset1))
{
	if(input[i]>(525+offset1))
{
	if(input[i]==(527+offset1))
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
	if(input[i]==(525+offset1))
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
	if(input[i]>(521+offset1))
{
	if(input[i]==(523+offset1))
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
	if(input[i]==(521+offset1))
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
	if(input[i]>(515+offset1))
{
	if(input[i]>(517+offset1))
{
	if(input[i]==(519+offset1))
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
	if(input[i]==(517+offset1))
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
	if(input[i]>(513+offset1))
{
	if(input[i]==(515+offset1))
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
	if(input[i]==(513+offset1))
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
	if(input[i]>(255+offset1))
{
	if(input[i]>(383+offset1))
{
	if(input[i]>(447+offset1))
{
	if(input[i]>(479+offset1))
{
	if(input[i]>(495+offset1))
{
	if(input[i]>(503+offset1))
{
	if(input[i]>(507+offset1))
{
	if(input[i]>(509+offset1))
{
	if(input[i]==(511+offset1))
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
	if(input[i]==(509+offset1))
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
	if(input[i]>(505+offset1))
{
	if(input[i]==(507+offset1))
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
	if(input[i]==(505+offset1))
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
	if(input[i]>(499+offset1))
{
	if(input[i]>(501+offset1))
{
	if(input[i]==(503+offset1))
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
	if(input[i]==(501+offset1))
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
	if(input[i]>(497+offset1))
{
	if(input[i]==(499+offset1))
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
	if(input[i]==(497+offset1))
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
	if(input[i]>(487+offset1))
{
	if(input[i]>(491+offset1))
{
	if(input[i]>(493+offset1))
{
	if(input[i]==(495+offset1))
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
	if(input[i]==(493+offset1))
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
	if(input[i]>(489+offset1))
{
	if(input[i]==(491+offset1))
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
	if(input[i]==(489+offset1))
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
	if(input[i]>(483+offset1))
{
	if(input[i]>(485+offset1))
{
	if(input[i]==(487+offset1))
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
	if(input[i]==(485+offset1))
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
	if(input[i]>(481+offset1))
{
	if(input[i]==(483+offset1))
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
	if(input[i]==(481+offset1))
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
	if(input[i]>(463+offset1))
{
	if(input[i]>(471+offset1))
{
	if(input[i]>(475+offset1))
{
	if(input[i]>(477+offset1))
{
	if(input[i]==(479+offset1))
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
	if(input[i]==(477+offset1))
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
	if(input[i]>(473+offset1))
{
	if(input[i]==(475+offset1))
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
	if(input[i]==(473+offset1))
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
	if(input[i]>(467+offset1))
{
	if(input[i]>(469+offset1))
{
	if(input[i]==(471+offset1))
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
	if(input[i]==(469+offset1))
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
	if(input[i]>(465+offset1))
{
	if(input[i]==(467+offset1))
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
	if(input[i]==(465+offset1))
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
	if(input[i]>(455+offset1))
{
	if(input[i]>(459+offset1))
{
	if(input[i]>(461+offset1))
{
	if(input[i]==(463+offset1))
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
	if(input[i]==(461+offset1))
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
	if(input[i]>(457+offset1))
{
	if(input[i]==(459+offset1))
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
	if(input[i]==(457+offset1))
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
	if(input[i]>(451+offset1))
{
	if(input[i]>(453+offset1))
{
	if(input[i]==(455+offset1))
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
	if(input[i]==(453+offset1))
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
	if(input[i]>(449+offset1))
{
	if(input[i]==(451+offset1))
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
	if(input[i]==(449+offset1))
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
	if(input[i]>(415+offset1))
{
	if(input[i]>(431+offset1))
{
	if(input[i]>(439+offset1))
{
	if(input[i]>(443+offset1))
{
	if(input[i]>(445+offset1))
{
	if(input[i]==(447+offset1))
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
	if(input[i]==(445+offset1))
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
	if(input[i]>(441+offset1))
{
	if(input[i]==(443+offset1))
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
	if(input[i]==(441+offset1))
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
	if(input[i]>(435+offset1))
{
	if(input[i]>(437+offset1))
{
	if(input[i]==(439+offset1))
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
	if(input[i]==(437+offset1))
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
	if(input[i]>(433+offset1))
{
	if(input[i]==(435+offset1))
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
	if(input[i]==(433+offset1))
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
	if(input[i]>(423+offset1))
{
	if(input[i]>(427+offset1))
{
	if(input[i]>(429+offset1))
{
	if(input[i]==(431+offset1))
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
	if(input[i]==(429+offset1))
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
	if(input[i]>(425+offset1))
{
	if(input[i]==(427+offset1))
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
	if(input[i]==(425+offset1))
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
	if(input[i]>(419+offset1))
{
	if(input[i]>(421+offset1))
{
	if(input[i]==(423+offset1))
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
	if(input[i]==(421+offset1))
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
	if(input[i]>(417+offset1))
{
	if(input[i]==(419+offset1))
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
	if(input[i]==(417+offset1))
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
	if(input[i]>(399+offset1))
{
	if(input[i]>(407+offset1))
{
	if(input[i]>(411+offset1))
{
	if(input[i]>(413+offset1))
{
	if(input[i]==(415+offset1))
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
	if(input[i]==(413+offset1))
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
	if(input[i]>(409+offset1))
{
	if(input[i]==(411+offset1))
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
	if(input[i]==(409+offset1))
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
	if(input[i]>(403+offset1))
{
	if(input[i]>(405+offset1))
{
	if(input[i]==(407+offset1))
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
	if(input[i]==(405+offset1))
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
	if(input[i]>(401+offset1))
{
	if(input[i]==(403+offset1))
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
	if(input[i]==(401+offset1))
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
	if(input[i]>(391+offset1))
{
	if(input[i]>(395+offset1))
{
	if(input[i]>(397+offset1))
{
	if(input[i]==(399+offset1))
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
	if(input[i]==(397+offset1))
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
	if(input[i]>(393+offset1))
{
	if(input[i]==(395+offset1))
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
	if(input[i]==(393+offset1))
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
	if(input[i]>(387+offset1))
{
	if(input[i]>(389+offset1))
{
	if(input[i]==(391+offset1))
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
	if(input[i]==(389+offset1))
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
	if(input[i]>(385+offset1))
{
	if(input[i]==(387+offset1))
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
	if(input[i]==(385+offset1))
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
	if(input[i]>(319+offset1))
{
	if(input[i]>(351+offset1))
{
	if(input[i]>(367+offset1))
{
	if(input[i]>(375+offset1))
{
	if(input[i]>(379+offset1))
{
	if(input[i]>(381+offset1))
{
	if(input[i]==(383+offset1))
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
	if(input[i]==(381+offset1))
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
	if(input[i]>(377+offset1))
{
	if(input[i]==(379+offset1))
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
	if(input[i]==(377+offset1))
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
	if(input[i]>(371+offset1))
{
	if(input[i]>(373+offset1))
{
	if(input[i]==(375+offset1))
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
	if(input[i]==(373+offset1))
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
	if(input[i]>(369+offset1))
{
	if(input[i]==(371+offset1))
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
	if(input[i]==(369+offset1))
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
	if(input[i]>(359+offset1))
{
	if(input[i]>(363+offset1))
{
	if(input[i]>(365+offset1))
{
	if(input[i]==(367+offset1))
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
	if(input[i]==(365+offset1))
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
	if(input[i]>(361+offset1))
{
	if(input[i]==(363+offset1))
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
	if(input[i]==(361+offset1))
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
	if(input[i]>(355+offset1))
{
	if(input[i]>(357+offset1))
{
	if(input[i]==(359+offset1))
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
	if(input[i]==(357+offset1))
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
	if(input[i]>(353+offset1))
{
	if(input[i]==(355+offset1))
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
	if(input[i]==(353+offset1))
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
	if(input[i]>(335+offset1))
{
	if(input[i]>(343+offset1))
{
	if(input[i]>(347+offset1))
{
	if(input[i]>(349+offset1))
{
	if(input[i]==(351+offset1))
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
	if(input[i]==(349+offset1))
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
	if(input[i]>(345+offset1))
{
	if(input[i]==(347+offset1))
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
	if(input[i]==(345+offset1))
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
	if(input[i]>(339+offset1))
{
	if(input[i]>(341+offset1))
{
	if(input[i]==(343+offset1))
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
	if(input[i]==(341+offset1))
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
	if(input[i]>(337+offset1))
{
	if(input[i]==(339+offset1))
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
	if(input[i]==(337+offset1))
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
	if(input[i]>(327+offset1))
{
	if(input[i]>(331+offset1))
{
	if(input[i]>(333+offset1))
{
	if(input[i]==(335+offset1))
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
	if(input[i]==(333+offset1))
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
	if(input[i]>(329+offset1))
{
	if(input[i]==(331+offset1))
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
	if(input[i]==(329+offset1))
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
	if(input[i]>(323+offset1))
{
	if(input[i]>(325+offset1))
{
	if(input[i]==(327+offset1))
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
	if(input[i]==(325+offset1))
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
	if(input[i]>(321+offset1))
{
	if(input[i]==(323+offset1))
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
	if(input[i]==(321+offset1))
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
	if(input[i]>(287+offset1))
{
	if(input[i]>(303+offset1))
{
	if(input[i]>(311+offset1))
{
	if(input[i]>(315+offset1))
{
	if(input[i]>(317+offset1))
{
	if(input[i]==(319+offset1))
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
	if(input[i]==(317+offset1))
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
	if(input[i]>(313+offset1))
{
	if(input[i]==(315+offset1))
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
	if(input[i]==(313+offset1))
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
	if(input[i]>(307+offset1))
{
	if(input[i]>(309+offset1))
{
	if(input[i]==(311+offset1))
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
	if(input[i]==(309+offset1))
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
	if(input[i]>(305+offset1))
{
	if(input[i]==(307+offset1))
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
	if(input[i]==(305+offset1))
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
	if(input[i]>(295+offset1))
{
	if(input[i]>(299+offset1))
{
	if(input[i]>(301+offset1))
{
	if(input[i]==(303+offset1))
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
	if(input[i]==(301+offset1))
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
	if(input[i]>(297+offset1))
{
	if(input[i]==(299+offset1))
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
	if(input[i]==(297+offset1))
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
	if(input[i]>(291+offset1))
{
	if(input[i]>(293+offset1))
{
	if(input[i]==(295+offset1))
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
	if(input[i]==(293+offset1))
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
	if(input[i]>(289+offset1))
{
	if(input[i]==(291+offset1))
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
	if(input[i]==(289+offset1))
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
	if(input[i]>(271+offset1))
{
	if(input[i]>(279+offset1))
{
	if(input[i]>(283+offset1))
{
	if(input[i]>(285+offset1))
{
	if(input[i]==(287+offset1))
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
	if(input[i]==(285+offset1))
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
	if(input[i]>(281+offset1))
{
	if(input[i]==(283+offset1))
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
	if(input[i]==(281+offset1))
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
	if(input[i]>(275+offset1))
{
	if(input[i]>(277+offset1))
{
	if(input[i]==(279+offset1))
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
	if(input[i]==(277+offset1))
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
	if(input[i]>(273+offset1))
{
	if(input[i]==(275+offset1))
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
	if(input[i]==(273+offset1))
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
	if(input[i]>(263+offset1))
{
	if(input[i]>(267+offset1))
{
	if(input[i]>(269+offset1))
{
	if(input[i]==(271+offset1))
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
	if(input[i]==(269+offset1))
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
	if(input[i]>(265+offset1))
{
	if(input[i]==(267+offset1))
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
	if(input[i]==(265+offset1))
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
	if(input[i]>(259+offset1))
{
	if(input[i]>(261+offset1))
{
	if(input[i]==(263+offset1))
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
	if(input[i]==(261+offset1))
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
	if(input[i]>(257+offset1))
{
	if(input[i]==(259+offset1))
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
	if(input[i]==(257+offset1))
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
	if(input[i]>(127+offset1))
{
	if(input[i]>(191+offset1))
{
	if(input[i]>(223+offset1))
{
	if(input[i]>(239+offset1))
{
	if(input[i]>(247+offset1))
{
	if(input[i]>(251+offset1))
{
	if(input[i]>(253+offset1))
{
	if(input[i]==(255+offset1))
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
	if(input[i]==(253+offset1))
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
	if(input[i]>(249+offset1))
{
	if(input[i]==(251+offset1))
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
	if(input[i]==(249+offset1))
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
	if(input[i]>(243+offset1))
{
	if(input[i]>(245+offset1))
{
	if(input[i]==(247+offset1))
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
	if(input[i]==(245+offset1))
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
	if(input[i]>(241+offset1))
{
	if(input[i]==(243+offset1))
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
	if(input[i]==(241+offset1))
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
	if(input[i]>(231+offset1))
{
	if(input[i]>(235+offset1))
{
	if(input[i]>(237+offset1))
{
	if(input[i]==(239+offset1))
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
	if(input[i]==(237+offset1))
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
	if(input[i]>(233+offset1))
{
	if(input[i]==(235+offset1))
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
	if(input[i]==(233+offset1))
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
	if(input[i]>(227+offset1))
{
	if(input[i]>(229+offset1))
{
	if(input[i]==(231+offset1))
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
	if(input[i]==(229+offset1))
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
	if(input[i]>(225+offset1))
{
	if(input[i]==(227+offset1))
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
	if(input[i]==(225+offset1))
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
	if(input[i]>(207+offset1))
{
	if(input[i]>(215+offset1))
{
	if(input[i]>(219+offset1))
{
	if(input[i]>(221+offset1))
{
	if(input[i]==(223+offset1))
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
	if(input[i]==(221+offset1))
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
	if(input[i]>(217+offset1))
{
	if(input[i]==(219+offset1))
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
	if(input[i]==(217+offset1))
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
	if(input[i]>(211+offset1))
{
	if(input[i]>(213+offset1))
{
	if(input[i]==(215+offset1))
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
	if(input[i]==(213+offset1))
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
	if(input[i]>(209+offset1))
{
	if(input[i]==(211+offset1))
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
	if(input[i]==(209+offset1))
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
	if(input[i]>(199+offset1))
{
	if(input[i]>(203+offset1))
{
	if(input[i]>(205+offset1))
{
	if(input[i]==(207+offset1))
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
	if(input[i]==(205+offset1))
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
	if(input[i]>(201+offset1))
{
	if(input[i]==(203+offset1))
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
	if(input[i]==(201+offset1))
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
	if(input[i]>(195+offset1))
{
	if(input[i]>(197+offset1))
{
	if(input[i]==(199+offset1))
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
	if(input[i]==(197+offset1))
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
	if(input[i]>(193+offset1))
{
	if(input[i]==(195+offset1))
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
	if(input[i]==(193+offset1))
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
	if(input[i]>(159+offset1))
{
	if(input[i]>(175+offset1))
{
	if(input[i]>(183+offset1))
{
	if(input[i]>(187+offset1))
{
	if(input[i]>(189+offset1))
{
	if(input[i]==(191+offset1))
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
	if(input[i]==(189+offset1))
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
	if(input[i]>(185+offset1))
{
	if(input[i]==(187+offset1))
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
	if(input[i]==(185+offset1))
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
	if(input[i]>(179+offset1))
{
	if(input[i]>(181+offset1))
{
	if(input[i]==(183+offset1))
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
	if(input[i]==(181+offset1))
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
	if(input[i]>(177+offset1))
{
	if(input[i]==(179+offset1))
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
	if(input[i]==(177+offset1))
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
	if(input[i]>(167+offset1))
{
	if(input[i]>(171+offset1))
{
	if(input[i]>(173+offset1))
{
	if(input[i]==(175+offset1))
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
	if(input[i]==(173+offset1))
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
	if(input[i]>(169+offset1))
{
	if(input[i]==(171+offset1))
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
	if(input[i]==(169+offset1))
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
	if(input[i]>(163+offset1))
{
	if(input[i]>(165+offset1))
{
	if(input[i]==(167+offset1))
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
	if(input[i]==(165+offset1))
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
	if(input[i]>(161+offset1))
{
	if(input[i]==(163+offset1))
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
	if(input[i]==(161+offset1))
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
	if(input[i]>(143+offset1))
{
	if(input[i]>(151+offset1))
{
	if(input[i]>(155+offset1))
{
	if(input[i]>(157+offset1))
{
	if(input[i]==(159+offset1))
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
	if(input[i]==(157+offset1))
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
	if(input[i]>(153+offset1))
{
	if(input[i]==(155+offset1))
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
	if(input[i]==(153+offset1))
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
	if(input[i]>(147+offset1))
{
	if(input[i]>(149+offset1))
{
	if(input[i]==(151+offset1))
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
	if(input[i]==(149+offset1))
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
	if(input[i]>(145+offset1))
{
	if(input[i]==(147+offset1))
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
	if(input[i]==(145+offset1))
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
	if(input[i]>(135+offset1))
{
	if(input[i]>(139+offset1))
{
	if(input[i]>(141+offset1))
{
	if(input[i]==(143+offset1))
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
	if(input[i]==(141+offset1))
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
	if(input[i]>(137+offset1))
{
	if(input[i]==(139+offset1))
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
	if(input[i]==(137+offset1))
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
	if(input[i]>(131+offset1))
{
	if(input[i]>(133+offset1))
{
	if(input[i]==(135+offset1))
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
	if(input[i]==(133+offset1))
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
	if(input[i]>(129+offset1))
{
	if(input[i]==(131+offset1))
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
	if(input[i]==(129+offset1))
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
	if(input[i]>(63+offset1))
{
	if(input[i]>(95+offset1))
{
	if(input[i]>(111+offset1))
{
	if(input[i]>(119+offset1))
{
	if(input[i]>(123+offset1))
{
	if(input[i]>(125+offset1))
{
	if(input[i]==(127+offset1))
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
	if(input[i]==(125+offset1))
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
	if(input[i]>(121+offset1))
{
	if(input[i]==(123+offset1))
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
	if(input[i]==(121+offset1))
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
	if(input[i]>(115+offset1))
{
	if(input[i]>(117+offset1))
{
	if(input[i]==(119+offset1))
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
	if(input[i]==(117+offset1))
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
	if(input[i]>(113+offset1))
{
	if(input[i]==(115+offset1))
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
	if(input[i]==(113+offset1))
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
	if(input[i]>(103+offset1))
{
	if(input[i]>(107+offset1))
{
	if(input[i]>(109+offset1))
{
	if(input[i]==(111+offset1))
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
	if(input[i]==(109+offset1))
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
	if(input[i]>(105+offset1))
{
	if(input[i]==(107+offset1))
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
	if(input[i]==(105+offset1))
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
	if(input[i]>(99+offset1))
{
	if(input[i]>(101+offset1))
{
	if(input[i]==(103+offset1))
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
	if(input[i]==(101+offset1))
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
	if(input[i]>(97+offset1))
{
	if(input[i]==(99+offset1))
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
	if(input[i]==(97+offset1))
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
	if(input[i]>(79+offset1))
{
	if(input[i]>(87+offset1))
{
	if(input[i]>(91+offset1))
{
	if(input[i]>(93+offset1))
{
	if(input[i]==(95+offset1))
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
	if(input[i]==(93+offset1))
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
	if(input[i]>(89+offset1))
{
	if(input[i]==(91+offset1))
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
	if(input[i]==(89+offset1))
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
	if(input[i]>(83+offset1))
{
	if(input[i]>(85+offset1))
{
	if(input[i]==(87+offset1))
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
	if(input[i]==(85+offset1))
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
	if(input[i]>(81+offset1))
{
	if(input[i]==(83+offset1))
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
	if(input[i]==(81+offset1))
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
	if(input[i]>(71+offset1))
{
	if(input[i]>(75+offset1))
{
	if(input[i]>(77+offset1))
{
	if(input[i]==(79+offset1))
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
	if(input[i]==(77+offset1))
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
	if(input[i]>(73+offset1))
{
	if(input[i]==(75+offset1))
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
	if(input[i]==(73+offset1))
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
	if(input[i]>(67+offset1))
{
	if(input[i]>(69+offset1))
{
	if(input[i]==(71+offset1))
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
	if(input[i]==(69+offset1))
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
	if(input[i]>(65+offset1))
{
	if(input[i]==(67+offset1))
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
	if(input[i]==(65+offset1))
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
	if(input[i]>(31+offset1))
{
	if(input[i]>(47+offset1))
{
	if(input[i]>(55+offset1))
{
	if(input[i]>(59+offset1))
{
	if(input[i]>(61+offset1))
{
	if(input[i]==(63+offset1))
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
	if(input[i]==(61+offset1))
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
	if(input[i]>(57+offset1))
{
	if(input[i]==(59+offset1))
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
	if(input[i]==(57+offset1))
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
	if(input[i]>(51+offset1))
{
	if(input[i]>(53+offset1))
{
	if(input[i]==(55+offset1))
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
	if(input[i]==(53+offset1))
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
	if(input[i]>(49+offset1))
{
	if(input[i]==(51+offset1))
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
	if(input[i]==(49+offset1))
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
	if(input[i]>(39+offset1))
{
	if(input[i]>(43+offset1))
{
	if(input[i]>(45+offset1))
{
	if(input[i]==(47+offset1))
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
	if(input[i]==(45+offset1))
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
	if(input[i]>(41+offset1))
{
	if(input[i]==(43+offset1))
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
	if(input[i]==(41+offset1))
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
	if(input[i]>(35+offset1))
{
	if(input[i]>(37+offset1))
{
	if(input[i]==(39+offset1))
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
	if(input[i]==(37+offset1))
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
	if(input[i]>(33+offset1))
{
	if(input[i]==(35+offset1))
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
	if(input[i]==(33+offset1))
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
	if(input[i]>(15+offset1))
{
	if(input[i]>(23+offset1))
{
	if(input[i]>(27+offset1))
{
	if(input[i]>(29+offset1))
{
	if(input[i]==(31+offset1))
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
	if(input[i]==(29+offset1))
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
	if(input[i]>(25+offset1))
{
	if(input[i]==(27+offset1))
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
	if(input[i]==(25+offset1))
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
	if(input[i]>(19+offset1))
{
	if(input[i]>(21+offset1))
{
	if(input[i]==(23+offset1))
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
	if(input[i]==(21+offset1))
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
	if(input[i]>(17+offset1))
{
	if(input[i]==(19+offset1))
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
	if(input[i]==(17+offset1))
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
	if(input[i]>(7+offset1))
{
	if(input[i]>(11+offset1))
{
	if(input[i]>(13+offset1))
{
	if(input[i]==(15+offset1))
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
	if(input[i]==(13+offset1))
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
	if(input[i]>(9+offset1))
{
	if(input[i]==(11+offset1))
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
	if(input[i]==(9+offset1))
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
	if(input[i]>(3+offset1))
{
	if(input[i]>(5+offset1))
{
	if(input[i]==(7+offset1))
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
	if(input[i]==(5+offset1))
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
	if(input[i]>(1+offset1))
{
	if(input[i]==(3+offset1))
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
	if(input[i]==(1+offset1))
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


if(input[i]>(511+offset2))
{
	if(input[i]>(767+offset2))
{
	if(input[i]>(895+offset2))
{
	if(input[i]>(959+offset2))
{
	if(input[i]>(991+offset2))
{
	if(input[i]>(1007+offset2))
{
	if(input[i]>(1015+offset2))
{
	if(input[i]>(1019+offset2))
{
	if(input[i]>(1021+offset2))
{
	if(input[i]==(1023+offset2))
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
	if(input[i]==(1021+offset2))
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
	if(input[i]>(1017+offset2))
{
	if(input[i]==(1019+offset2))
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
	if(input[i]==(1017+offset2))
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
	if(input[i]>(1011+offset2))
{
	if(input[i]>(1013+offset2))
{
	if(input[i]==(1015+offset2))
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
	if(input[i]==(1013+offset2))
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
	if(input[i]>(1009+offset2))
{
	if(input[i]==(1011+offset2))
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
	if(input[i]==(1009+offset2))
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
	if(input[i]>(999+offset2))
{
	if(input[i]>(1003+offset2))
{
	if(input[i]>(1005+offset2))
{
	if(input[i]==(1007+offset2))
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
	if(input[i]==(1005+offset2))
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
	if(input[i]>(1001+offset2))
{
	if(input[i]==(1003+offset2))
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
	if(input[i]==(1001+offset2))
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
	if(input[i]>(995+offset2))
{
	if(input[i]>(997+offset2))
{
	if(input[i]==(999+offset2))
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
	if(input[i]==(997+offset2))
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
	if(input[i]>(993+offset2))
{
	if(input[i]==(995+offset2))
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
	if(input[i]==(993+offset2))
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
	if(input[i]>(975+offset2))
{
	if(input[i]>(983+offset2))
{
	if(input[i]>(987+offset2))
{
	if(input[i]>(989+offset2))
{
	if(input[i]==(991+offset2))
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
	if(input[i]==(989+offset2))
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
	if(input[i]>(985+offset2))
{
	if(input[i]==(987+offset2))
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
	if(input[i]==(985+offset2))
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
	if(input[i]>(979+offset2))
{
	if(input[i]>(981+offset2))
{
	if(input[i]==(983+offset2))
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
	if(input[i]==(981+offset2))
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
	if(input[i]>(977+offset2))
{
	if(input[i]==(979+offset2))
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
	if(input[i]==(977+offset2))
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
	if(input[i]>(967+offset2))
{
	if(input[i]>(971+offset2))
{
	if(input[i]>(973+offset2))
{
	if(input[i]==(975+offset2))
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
	if(input[i]==(973+offset2))
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
	if(input[i]>(969+offset2))
{
	if(input[i]==(971+offset2))
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
	if(input[i]==(969+offset2))
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
	if(input[i]>(963+offset2))
{
	if(input[i]>(965+offset2))
{
	if(input[i]==(967+offset2))
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
	if(input[i]==(965+offset2))
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
	if(input[i]>(961+offset2))
{
	if(input[i]==(963+offset2))
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
	if(input[i]==(961+offset2))
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
	if(input[i]>(927+offset2))
{
	if(input[i]>(943+offset2))
{
	if(input[i]>(951+offset2))
{
	if(input[i]>(955+offset2))
{
	if(input[i]>(957+offset2))
{
	if(input[i]==(959+offset2))
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
	if(input[i]==(957+offset2))
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
	if(input[i]>(953+offset2))
{
	if(input[i]==(955+offset2))
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
	if(input[i]==(953+offset2))
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
	if(input[i]>(947+offset2))
{
	if(input[i]>(949+offset2))
{
	if(input[i]==(951+offset2))
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
	if(input[i]==(949+offset2))
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
	if(input[i]>(945+offset2))
{
	if(input[i]==(947+offset2))
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
	if(input[i]==(945+offset2))
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
	if(input[i]>(935+offset2))
{
	if(input[i]>(939+offset2))
{
	if(input[i]>(941+offset2))
{
	if(input[i]==(943+offset2))
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
	if(input[i]==(941+offset2))
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
	if(input[i]>(937+offset2))
{
	if(input[i]==(939+offset2))
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
	if(input[i]==(937+offset2))
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
	if(input[i]>(931+offset2))
{
	if(input[i]>(933+offset2))
{
	if(input[i]==(935+offset2))
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
	if(input[i]==(933+offset2))
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
	if(input[i]>(929+offset2))
{
	if(input[i]==(931+offset2))
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
	if(input[i]==(929+offset2))
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
	if(input[i]>(911+offset2))
{
	if(input[i]>(919+offset2))
{
	if(input[i]>(923+offset2))
{
	if(input[i]>(925+offset2))
{
	if(input[i]==(927+offset2))
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
	if(input[i]==(925+offset2))
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
	if(input[i]>(921+offset2))
{
	if(input[i]==(923+offset2))
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
	if(input[i]==(921+offset2))
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
	if(input[i]>(915+offset2))
{
	if(input[i]>(917+offset2))
{
	if(input[i]==(919+offset2))
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
	if(input[i]==(917+offset2))
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
	if(input[i]>(913+offset2))
{
	if(input[i]==(915+offset2))
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
	if(input[i]==(913+offset2))
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
	if(input[i]>(903+offset2))
{
	if(input[i]>(907+offset2))
{
	if(input[i]>(909+offset2))
{
	if(input[i]==(911+offset2))
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
	if(input[i]==(909+offset2))
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
	if(input[i]>(905+offset2))
{
	if(input[i]==(907+offset2))
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
	if(input[i]==(905+offset2))
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
	if(input[i]>(899+offset2))
{
	if(input[i]>(901+offset2))
{
	if(input[i]==(903+offset2))
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
	if(input[i]==(901+offset2))
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
	if(input[i]>(897+offset2))
{
	if(input[i]==(899+offset2))
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
	if(input[i]==(897+offset2))
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
	if(input[i]>(831+offset2))
{
	if(input[i]>(863+offset2))
{
	if(input[i]>(879+offset2))
{
	if(input[i]>(887+offset2))
{
	if(input[i]>(891+offset2))
{
	if(input[i]>(893+offset2))
{
	if(input[i]==(895+offset2))
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
	if(input[i]==(893+offset2))
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
	if(input[i]>(889+offset2))
{
	if(input[i]==(891+offset2))
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
	if(input[i]==(889+offset2))
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
	if(input[i]>(883+offset2))
{
	if(input[i]>(885+offset2))
{
	if(input[i]==(887+offset2))
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
	if(input[i]==(885+offset2))
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
	if(input[i]>(881+offset2))
{
	if(input[i]==(883+offset2))
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
	if(input[i]==(881+offset2))
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
	if(input[i]>(871+offset2))
{
	if(input[i]>(875+offset2))
{
	if(input[i]>(877+offset2))
{
	if(input[i]==(879+offset2))
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
	if(input[i]==(877+offset2))
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
	if(input[i]>(873+offset2))
{
	if(input[i]==(875+offset2))
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
	if(input[i]==(873+offset2))
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
	if(input[i]>(867+offset2))
{
	if(input[i]>(869+offset2))
{
	if(input[i]==(871+offset2))
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
	if(input[i]==(869+offset2))
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
	if(input[i]>(865+offset2))
{
	if(input[i]==(867+offset2))
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
	if(input[i]==(865+offset2))
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
	if(input[i]>(847+offset2))
{
	if(input[i]>(855+offset2))
{
	if(input[i]>(859+offset2))
{
	if(input[i]>(861+offset2))
{
	if(input[i]==(863+offset2))
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
	if(input[i]==(861+offset2))
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
	if(input[i]>(857+offset2))
{
	if(input[i]==(859+offset2))
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
	if(input[i]==(857+offset2))
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
	if(input[i]>(851+offset2))
{
	if(input[i]>(853+offset2))
{
	if(input[i]==(855+offset2))
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
	if(input[i]==(853+offset2))
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
	if(input[i]>(849+offset2))
{
	if(input[i]==(851+offset2))
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
	if(input[i]==(849+offset2))
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
	if(input[i]>(839+offset2))
{
	if(input[i]>(843+offset2))
{
	if(input[i]>(845+offset2))
{
	if(input[i]==(847+offset2))
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
	if(input[i]==(845+offset2))
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
	if(input[i]>(841+offset2))
{
	if(input[i]==(843+offset2))
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
	if(input[i]==(841+offset2))
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
	if(input[i]>(835+offset2))
{
	if(input[i]>(837+offset2))
{
	if(input[i]==(839+offset2))
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
	if(input[i]==(837+offset2))
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
	if(input[i]>(833+offset2))
{
	if(input[i]==(835+offset2))
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
	if(input[i]==(833+offset2))
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
	if(input[i]>(799+offset2))
{
	if(input[i]>(815+offset2))
{
	if(input[i]>(823+offset2))
{
	if(input[i]>(827+offset2))
{
	if(input[i]>(829+offset2))
{
	if(input[i]==(831+offset2))
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
	if(input[i]==(829+offset2))
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
	if(input[i]>(825+offset2))
{
	if(input[i]==(827+offset2))
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
	if(input[i]==(825+offset2))
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
	if(input[i]>(819+offset2))
{
	if(input[i]>(821+offset2))
{
	if(input[i]==(823+offset2))
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
	if(input[i]==(821+offset2))
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
	if(input[i]>(817+offset2))
{
	if(input[i]==(819+offset2))
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
	if(input[i]==(817+offset2))
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
	if(input[i]>(807+offset2))
{
	if(input[i]>(811+offset2))
{
	if(input[i]>(813+offset2))
{
	if(input[i]==(815+offset2))
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
	if(input[i]==(813+offset2))
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
	if(input[i]>(809+offset2))
{
	if(input[i]==(811+offset2))
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
	if(input[i]==(809+offset2))
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
	if(input[i]>(803+offset2))
{
	if(input[i]>(805+offset2))
{
	if(input[i]==(807+offset2))
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
	if(input[i]==(805+offset2))
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
	if(input[i]>(801+offset2))
{
	if(input[i]==(803+offset2))
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
	if(input[i]==(801+offset2))
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
	if(input[i]>(783+offset2))
{
	if(input[i]>(791+offset2))
{
	if(input[i]>(795+offset2))
{
	if(input[i]>(797+offset2))
{
	if(input[i]==(799+offset2))
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
	if(input[i]==(797+offset2))
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
	if(input[i]>(793+offset2))
{
	if(input[i]==(795+offset2))
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
	if(input[i]==(793+offset2))
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
	if(input[i]>(787+offset2))
{
	if(input[i]>(789+offset2))
{
	if(input[i]==(791+offset2))
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
	if(input[i]==(789+offset2))
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
	if(input[i]>(785+offset2))
{
	if(input[i]==(787+offset2))
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
	if(input[i]==(785+offset2))
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
	if(input[i]>(775+offset2))
{
	if(input[i]>(779+offset2))
{
	if(input[i]>(781+offset2))
{
	if(input[i]==(783+offset2))
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
	if(input[i]==(781+offset2))
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
	if(input[i]>(777+offset2))
{
	if(input[i]==(779+offset2))
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
	if(input[i]==(777+offset2))
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
	if(input[i]>(771+offset2))
{
	if(input[i]>(773+offset2))
{
	if(input[i]==(775+offset2))
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
	if(input[i]==(773+offset2))
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
	if(input[i]>(769+offset2))
{
	if(input[i]==(771+offset2))
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
	if(input[i]==(769+offset2))
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
	if(input[i]>(639+offset2))
{
	if(input[i]>(703+offset2))
{
	if(input[i]>(735+offset2))
{
	if(input[i]>(751+offset2))
{
	if(input[i]>(759+offset2))
{
	if(input[i]>(763+offset2))
{
	if(input[i]>(765+offset2))
{
	if(input[i]==(767+offset2))
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
	if(input[i]==(765+offset2))
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
	if(input[i]>(761+offset2))
{
	if(input[i]==(763+offset2))
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
	if(input[i]==(761+offset2))
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
	if(input[i]>(755+offset2))
{
	if(input[i]>(757+offset2))
{
	if(input[i]==(759+offset2))
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
	if(input[i]==(757+offset2))
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
	if(input[i]>(753+offset2))
{
	if(input[i]==(755+offset2))
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
	if(input[i]==(753+offset2))
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
	if(input[i]>(743+offset2))
{
	if(input[i]>(747+offset2))
{
	if(input[i]>(749+offset2))
{
	if(input[i]==(751+offset2))
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
	if(input[i]==(749+offset2))
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
	if(input[i]>(745+offset2))
{
	if(input[i]==(747+offset2))
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
	if(input[i]==(745+offset2))
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
	if(input[i]>(739+offset2))
{
	if(input[i]>(741+offset2))
{
	if(input[i]==(743+offset2))
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
	if(input[i]==(741+offset2))
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
	if(input[i]>(737+offset2))
{
	if(input[i]==(739+offset2))
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
	if(input[i]==(737+offset2))
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
	if(input[i]>(719+offset2))
{
	if(input[i]>(727+offset2))
{
	if(input[i]>(731+offset2))
{
	if(input[i]>(733+offset2))
{
	if(input[i]==(735+offset2))
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
	if(input[i]==(733+offset2))
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
	if(input[i]>(729+offset2))
{
	if(input[i]==(731+offset2))
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
	if(input[i]==(729+offset2))
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
	if(input[i]>(723+offset2))
{
	if(input[i]>(725+offset2))
{
	if(input[i]==(727+offset2))
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
	if(input[i]==(725+offset2))
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
	if(input[i]>(721+offset2))
{
	if(input[i]==(723+offset2))
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
	if(input[i]==(721+offset2))
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
	if(input[i]>(711+offset2))
{
	if(input[i]>(715+offset2))
{
	if(input[i]>(717+offset2))
{
	if(input[i]==(719+offset2))
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
	if(input[i]==(717+offset2))
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
	if(input[i]>(713+offset2))
{
	if(input[i]==(715+offset2))
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
	if(input[i]==(713+offset2))
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
	if(input[i]>(707+offset2))
{
	if(input[i]>(709+offset2))
{
	if(input[i]==(711+offset2))
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
	if(input[i]==(709+offset2))
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
	if(input[i]>(705+offset2))
{
	if(input[i]==(707+offset2))
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
	if(input[i]==(705+offset2))
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
	if(input[i]>(671+offset2))
{
	if(input[i]>(687+offset2))
{
	if(input[i]>(695+offset2))
{
	if(input[i]>(699+offset2))
{
	if(input[i]>(701+offset2))
{
	if(input[i]==(703+offset2))
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
	if(input[i]==(701+offset2))
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
	if(input[i]>(697+offset2))
{
	if(input[i]==(699+offset2))
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
	if(input[i]==(697+offset2))
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
	if(input[i]>(691+offset2))
{
	if(input[i]>(693+offset2))
{
	if(input[i]==(695+offset2))
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
	if(input[i]==(693+offset2))
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
	if(input[i]>(689+offset2))
{
	if(input[i]==(691+offset2))
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
	if(input[i]==(689+offset2))
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
	if(input[i]>(679+offset2))
{
	if(input[i]>(683+offset2))
{
	if(input[i]>(685+offset2))
{
	if(input[i]==(687+offset2))
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
	if(input[i]==(685+offset2))
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
	if(input[i]>(681+offset2))
{
	if(input[i]==(683+offset2))
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
	if(input[i]==(681+offset2))
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
	if(input[i]>(675+offset2))
{
	if(input[i]>(677+offset2))
{
	if(input[i]==(679+offset2))
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
	if(input[i]==(677+offset2))
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
	if(input[i]>(673+offset2))
{
	if(input[i]==(675+offset2))
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
	if(input[i]==(673+offset2))
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
	if(input[i]>(655+offset2))
{
	if(input[i]>(663+offset2))
{
	if(input[i]>(667+offset2))
{
	if(input[i]>(669+offset2))
{
	if(input[i]==(671+offset2))
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
	if(input[i]==(669+offset2))
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
	if(input[i]>(665+offset2))
{
	if(input[i]==(667+offset2))
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
	if(input[i]==(665+offset2))
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
	if(input[i]>(659+offset2))
{
	if(input[i]>(661+offset2))
{
	if(input[i]==(663+offset2))
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
	if(input[i]==(661+offset2))
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
	if(input[i]>(657+offset2))
{
	if(input[i]==(659+offset2))
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
	if(input[i]==(657+offset2))
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
	if(input[i]>(647+offset2))
{
	if(input[i]>(651+offset2))
{
	if(input[i]>(653+offset2))
{
	if(input[i]==(655+offset2))
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
	if(input[i]==(653+offset2))
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
	if(input[i]>(649+offset2))
{
	if(input[i]==(651+offset2))
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
	if(input[i]==(649+offset2))
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
	if(input[i]>(643+offset2))
{
	if(input[i]>(645+offset2))
{
	if(input[i]==(647+offset2))
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
	if(input[i]==(645+offset2))
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
	if(input[i]>(641+offset2))
{
	if(input[i]==(643+offset2))
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
	if(input[i]==(641+offset2))
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
	if(input[i]>(575+offset2))
{
	if(input[i]>(607+offset2))
{
	if(input[i]>(623+offset2))
{
	if(input[i]>(631+offset2))
{
	if(input[i]>(635+offset2))
{
	if(input[i]>(637+offset2))
{
	if(input[i]==(639+offset2))
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
	if(input[i]==(637+offset2))
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
	if(input[i]>(633+offset2))
{
	if(input[i]==(635+offset2))
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
	if(input[i]==(633+offset2))
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
	if(input[i]>(627+offset2))
{
	if(input[i]>(629+offset2))
{
	if(input[i]==(631+offset2))
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
	if(input[i]==(629+offset2))
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
	if(input[i]>(625+offset2))
{
	if(input[i]==(627+offset2))
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
	if(input[i]==(625+offset2))
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
	if(input[i]>(615+offset2))
{
	if(input[i]>(619+offset2))
{
	if(input[i]>(621+offset2))
{
	if(input[i]==(623+offset2))
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
	if(input[i]==(621+offset2))
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
	if(input[i]>(617+offset2))
{
	if(input[i]==(619+offset2))
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
	if(input[i]==(617+offset2))
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
	if(input[i]>(611+offset2))
{
	if(input[i]>(613+offset2))
{
	if(input[i]==(615+offset2))
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
	if(input[i]==(613+offset2))
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
	if(input[i]>(609+offset2))
{
	if(input[i]==(611+offset2))
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
	if(input[i]==(609+offset2))
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
	if(input[i]>(591+offset2))
{
	if(input[i]>(599+offset2))
{
	if(input[i]>(603+offset2))
{
	if(input[i]>(605+offset2))
{
	if(input[i]==(607+offset2))
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
	if(input[i]==(605+offset2))
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
	if(input[i]>(601+offset2))
{
	if(input[i]==(603+offset2))
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
	if(input[i]==(601+offset2))
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
	if(input[i]>(595+offset2))
{
	if(input[i]>(597+offset2))
{
	if(input[i]==(599+offset2))
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
	if(input[i]==(597+offset2))
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
	if(input[i]>(593+offset2))
{
	if(input[i]==(595+offset2))
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
	if(input[i]==(593+offset2))
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
	if(input[i]>(583+offset2))
{
	if(input[i]>(587+offset2))
{
	if(input[i]>(589+offset2))
{
	if(input[i]==(591+offset2))
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
	if(input[i]==(589+offset2))
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
	if(input[i]>(585+offset2))
{
	if(input[i]==(587+offset2))
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
	if(input[i]==(585+offset2))
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
	if(input[i]>(579+offset2))
{
	if(input[i]>(581+offset2))
{
	if(input[i]==(583+offset2))
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
	if(input[i]==(581+offset2))
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
	if(input[i]>(577+offset2))
{
	if(input[i]==(579+offset2))
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
	if(input[i]==(577+offset2))
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
	if(input[i]>(543+offset2))
{
	if(input[i]>(559+offset2))
{
	if(input[i]>(567+offset2))
{
	if(input[i]>(571+offset2))
{
	if(input[i]>(573+offset2))
{
	if(input[i]==(575+offset2))
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
	if(input[i]==(573+offset2))
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
	if(input[i]>(569+offset2))
{
	if(input[i]==(571+offset2))
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
	if(input[i]==(569+offset2))
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
	if(input[i]>(563+offset2))
{
	if(input[i]>(565+offset2))
{
	if(input[i]==(567+offset2))
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
	if(input[i]==(565+offset2))
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
	if(input[i]>(561+offset2))
{
	if(input[i]==(563+offset2))
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
	if(input[i]==(561+offset2))
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
	if(input[i]>(551+offset2))
{
	if(input[i]>(555+offset2))
{
	if(input[i]>(557+offset2))
{
	if(input[i]==(559+offset2))
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
	if(input[i]==(557+offset2))
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
	if(input[i]>(553+offset2))
{
	if(input[i]==(555+offset2))
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
	if(input[i]==(553+offset2))
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
	if(input[i]>(547+offset2))
{
	if(input[i]>(549+offset2))
{
	if(input[i]==(551+offset2))
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
	if(input[i]==(549+offset2))
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
	if(input[i]>(545+offset2))
{
	if(input[i]==(547+offset2))
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
	if(input[i]==(545+offset2))
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
	if(input[i]>(527+offset2))
{
	if(input[i]>(535+offset2))
{
	if(input[i]>(539+offset2))
{
	if(input[i]>(541+offset2))
{
	if(input[i]==(543+offset2))
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
	if(input[i]==(541+offset2))
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
	if(input[i]>(537+offset2))
{
	if(input[i]==(539+offset2))
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
	if(input[i]==(537+offset2))
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
	if(input[i]>(531+offset2))
{
	if(input[i]>(533+offset2))
{
	if(input[i]==(535+offset2))
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
	if(input[i]==(533+offset2))
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
	if(input[i]>(529+offset2))
{
	if(input[i]==(531+offset2))
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
	if(input[i]==(529+offset2))
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
	if(input[i]>(519+offset2))
{
	if(input[i]>(523+offset2))
{
	if(input[i]>(525+offset2))
{
	if(input[i]==(527+offset2))
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
	if(input[i]==(525+offset2))
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
	if(input[i]>(521+offset2))
{
	if(input[i]==(523+offset2))
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
	if(input[i]==(521+offset2))
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
	if(input[i]>(515+offset2))
{
	if(input[i]>(517+offset2))
{
	if(input[i]==(519+offset2))
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
	if(input[i]==(517+offset2))
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
	if(input[i]>(513+offset2))
{
	if(input[i]==(515+offset2))
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
	if(input[i]==(513+offset2))
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
	if(input[i]>(255+offset2))
{
	if(input[i]>(383+offset2))
{
	if(input[i]>(447+offset2))
{
	if(input[i]>(479+offset2))
{
	if(input[i]>(495+offset2))
{
	if(input[i]>(503+offset2))
{
	if(input[i]>(507+offset2))
{
	if(input[i]>(509+offset2))
{
	if(input[i]==(511+offset2))
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
	if(input[i]==(509+offset2))
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
	if(input[i]>(505+offset2))
{
	if(input[i]==(507+offset2))
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
	if(input[i]==(505+offset2))
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
	if(input[i]>(499+offset2))
{
	if(input[i]>(501+offset2))
{
	if(input[i]==(503+offset2))
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
	if(input[i]==(501+offset2))
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
	if(input[i]>(497+offset2))
{
	if(input[i]==(499+offset2))
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
	if(input[i]==(497+offset2))
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
	if(input[i]>(487+offset2))
{
	if(input[i]>(491+offset2))
{
	if(input[i]>(493+offset2))
{
	if(input[i]==(495+offset2))
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
	if(input[i]==(493+offset2))
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
	if(input[i]>(489+offset2))
{
	if(input[i]==(491+offset2))
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
	if(input[i]==(489+offset2))
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
	if(input[i]>(483+offset2))
{
	if(input[i]>(485+offset2))
{
	if(input[i]==(487+offset2))
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
	if(input[i]==(485+offset2))
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
	if(input[i]>(481+offset2))
{
	if(input[i]==(483+offset2))
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
	if(input[i]==(481+offset2))
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
	if(input[i]>(463+offset2))
{
	if(input[i]>(471+offset2))
{
	if(input[i]>(475+offset2))
{
	if(input[i]>(477+offset2))
{
	if(input[i]==(479+offset2))
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
	if(input[i]==(477+offset2))
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
	if(input[i]>(473+offset2))
{
	if(input[i]==(475+offset2))
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
	if(input[i]==(473+offset2))
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
	if(input[i]>(467+offset2))
{
	if(input[i]>(469+offset2))
{
	if(input[i]==(471+offset2))
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
	if(input[i]==(469+offset2))
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
	if(input[i]>(465+offset2))
{
	if(input[i]==(467+offset2))
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
	if(input[i]==(465+offset2))
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
	if(input[i]>(455+offset2))
{
	if(input[i]>(459+offset2))
{
	if(input[i]>(461+offset2))
{
	if(input[i]==(463+offset2))
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
	if(input[i]==(461+offset2))
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
	if(input[i]>(457+offset2))
{
	if(input[i]==(459+offset2))
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
	if(input[i]==(457+offset2))
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
	if(input[i]>(451+offset2))
{
	if(input[i]>(453+offset2))
{
	if(input[i]==(455+offset2))
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
	if(input[i]==(453+offset2))
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
	if(input[i]>(449+offset2))
{
	if(input[i]==(451+offset2))
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
	if(input[i]==(449+offset2))
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
	if(input[i]>(415+offset2))
{
	if(input[i]>(431+offset2))
{
	if(input[i]>(439+offset2))
{
	if(input[i]>(443+offset2))
{
	if(input[i]>(445+offset2))
{
	if(input[i]==(447+offset2))
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
	if(input[i]==(445+offset2))
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
	if(input[i]>(441+offset2))
{
	if(input[i]==(443+offset2))
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
	if(input[i]==(441+offset2))
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
	if(input[i]>(435+offset2))
{
	if(input[i]>(437+offset2))
{
	if(input[i]==(439+offset2))
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
	if(input[i]==(437+offset2))
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
	if(input[i]>(433+offset2))
{
	if(input[i]==(435+offset2))
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
	if(input[i]==(433+offset2))
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
	if(input[i]>(423+offset2))
{
	if(input[i]>(427+offset2))
{
	if(input[i]>(429+offset2))
{
	if(input[i]==(431+offset2))
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
	if(input[i]==(429+offset2))
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
	if(input[i]>(425+offset2))
{
	if(input[i]==(427+offset2))
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
	if(input[i]==(425+offset2))
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
	if(input[i]>(419+offset2))
{
	if(input[i]>(421+offset2))
{
	if(input[i]==(423+offset2))
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
	if(input[i]==(421+offset2))
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
	if(input[i]>(417+offset2))
{
	if(input[i]==(419+offset2))
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
	if(input[i]==(417+offset2))
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
	if(input[i]>(399+offset2))
{
	if(input[i]>(407+offset2))
{
	if(input[i]>(411+offset2))
{
	if(input[i]>(413+offset2))
{
	if(input[i]==(415+offset2))
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
	if(input[i]==(413+offset2))
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
	if(input[i]>(409+offset2))
{
	if(input[i]==(411+offset2))
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
	if(input[i]==(409+offset2))
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
	if(input[i]>(403+offset2))
{
	if(input[i]>(405+offset2))
{
	if(input[i]==(407+offset2))
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
	if(input[i]==(405+offset2))
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
	if(input[i]>(401+offset2))
{
	if(input[i]==(403+offset2))
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
	if(input[i]==(401+offset2))
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
	if(input[i]>(391+offset2))
{
	if(input[i]>(395+offset2))
{
	if(input[i]>(397+offset2))
{
	if(input[i]==(399+offset2))
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
	if(input[i]==(397+offset2))
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
	if(input[i]>(393+offset2))
{
	if(input[i]==(395+offset2))
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
	if(input[i]==(393+offset2))
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
	if(input[i]>(387+offset2))
{
	if(input[i]>(389+offset2))
{
	if(input[i]==(391+offset2))
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
	if(input[i]==(389+offset2))
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
	if(input[i]>(385+offset2))
{
	if(input[i]==(387+offset2))
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
	if(input[i]==(385+offset2))
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
	if(input[i]>(319+offset2))
{
	if(input[i]>(351+offset2))
{
	if(input[i]>(367+offset2))
{
	if(input[i]>(375+offset2))
{
	if(input[i]>(379+offset2))
{
	if(input[i]>(381+offset2))
{
	if(input[i]==(383+offset2))
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
	if(input[i]==(381+offset2))
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
	if(input[i]>(377+offset2))
{
	if(input[i]==(379+offset2))
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
	if(input[i]==(377+offset2))
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
	if(input[i]>(371+offset2))
{
	if(input[i]>(373+offset2))
{
	if(input[i]==(375+offset2))
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
	if(input[i]==(373+offset2))
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
	if(input[i]>(369+offset2))
{
	if(input[i]==(371+offset2))
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
	if(input[i]==(369+offset2))
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
	if(input[i]>(359+offset2))
{
	if(input[i]>(363+offset2))
{
	if(input[i]>(365+offset2))
{
	if(input[i]==(367+offset2))
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
	if(input[i]==(365+offset2))
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
	if(input[i]>(361+offset2))
{
	if(input[i]==(363+offset2))
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
	if(input[i]==(361+offset2))
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
	if(input[i]>(355+offset2))
{
	if(input[i]>(357+offset2))
{
	if(input[i]==(359+offset2))
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
	if(input[i]==(357+offset2))
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
	if(input[i]>(353+offset2))
{
	if(input[i]==(355+offset2))
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
	if(input[i]==(353+offset2))
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
	if(input[i]>(335+offset2))
{
	if(input[i]>(343+offset2))
{
	if(input[i]>(347+offset2))
{
	if(input[i]>(349+offset2))
{
	if(input[i]==(351+offset2))
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
	if(input[i]==(349+offset2))
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
	if(input[i]>(345+offset2))
{
	if(input[i]==(347+offset2))
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
	if(input[i]==(345+offset2))
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
	if(input[i]>(339+offset2))
{
	if(input[i]>(341+offset2))
{
	if(input[i]==(343+offset2))
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
	if(input[i]==(341+offset2))
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
	if(input[i]>(337+offset2))
{
	if(input[i]==(339+offset2))
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
	if(input[i]==(337+offset2))
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
	if(input[i]>(327+offset2))
{
	if(input[i]>(331+offset2))
{
	if(input[i]>(333+offset2))
{
	if(input[i]==(335+offset2))
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
	if(input[i]==(333+offset2))
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
	if(input[i]>(329+offset2))
{
	if(input[i]==(331+offset2))
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
	if(input[i]==(329+offset2))
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
	if(input[i]>(323+offset2))
{
	if(input[i]>(325+offset2))
{
	if(input[i]==(327+offset2))
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
	if(input[i]==(325+offset2))
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
	if(input[i]>(321+offset2))
{
	if(input[i]==(323+offset2))
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
	if(input[i]==(321+offset2))
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
	if(input[i]>(287+offset2))
{
	if(input[i]>(303+offset2))
{
	if(input[i]>(311+offset2))
{
	if(input[i]>(315+offset2))
{
	if(input[i]>(317+offset2))
{
	if(input[i]==(319+offset2))
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
	if(input[i]==(317+offset2))
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
	if(input[i]>(313+offset2))
{
	if(input[i]==(315+offset2))
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
	if(input[i]==(313+offset2))
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
	if(input[i]>(307+offset2))
{
	if(input[i]>(309+offset2))
{
	if(input[i]==(311+offset2))
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
	if(input[i]==(309+offset2))
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
	if(input[i]>(305+offset2))
{
	if(input[i]==(307+offset2))
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
	if(input[i]==(305+offset2))
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
	if(input[i]>(295+offset2))
{
	if(input[i]>(299+offset2))
{
	if(input[i]>(301+offset2))
{
	if(input[i]==(303+offset2))
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
	if(input[i]==(301+offset2))
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
	if(input[i]>(297+offset2))
{
	if(input[i]==(299+offset2))
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
	if(input[i]==(297+offset2))
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
	if(input[i]>(291+offset2))
{
	if(input[i]>(293+offset2))
{
	if(input[i]==(295+offset2))
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
	if(input[i]==(293+offset2))
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
	if(input[i]>(289+offset2))
{
	if(input[i]==(291+offset2))
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
	if(input[i]==(289+offset2))
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
	if(input[i]>(271+offset2))
{
	if(input[i]>(279+offset2))
{
	if(input[i]>(283+offset2))
{
	if(input[i]>(285+offset2))
{
	if(input[i]==(287+offset2))
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
	if(input[i]==(285+offset2))
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
	if(input[i]>(281+offset2))
{
	if(input[i]==(283+offset2))
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
	if(input[i]==(281+offset2))
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
	if(input[i]>(275+offset2))
{
	if(input[i]>(277+offset2))
{
	if(input[i]==(279+offset2))
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
	if(input[i]==(277+offset2))
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
	if(input[i]>(273+offset2))
{
	if(input[i]==(275+offset2))
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
	if(input[i]==(273+offset2))
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
	if(input[i]>(263+offset2))
{
	if(input[i]>(267+offset2))
{
	if(input[i]>(269+offset2))
{
	if(input[i]==(271+offset2))
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
	if(input[i]==(269+offset2))
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
	if(input[i]>(265+offset2))
{
	if(input[i]==(267+offset2))
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
	if(input[i]==(265+offset2))
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
	if(input[i]>(259+offset2))
{
	if(input[i]>(261+offset2))
{
	if(input[i]==(263+offset2))
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
	if(input[i]==(261+offset2))
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
	if(input[i]>(257+offset2))
{
	if(input[i]==(259+offset2))
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
	if(input[i]==(257+offset2))
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
	if(input[i]>(127+offset2))
{
	if(input[i]>(191+offset2))
{
	if(input[i]>(223+offset2))
{
	if(input[i]>(239+offset2))
{
	if(input[i]>(247+offset2))
{
	if(input[i]>(251+offset2))
{
	if(input[i]>(253+offset2))
{
	if(input[i]==(255+offset2))
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
	if(input[i]==(253+offset2))
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
	if(input[i]>(249+offset2))
{
	if(input[i]==(251+offset2))
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
	if(input[i]==(249+offset2))
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
	if(input[i]>(243+offset2))
{
	if(input[i]>(245+offset2))
{
	if(input[i]==(247+offset2))
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
	if(input[i]==(245+offset2))
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
	if(input[i]>(241+offset2))
{
	if(input[i]==(243+offset2))
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
	if(input[i]==(241+offset2))
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
	if(input[i]>(231+offset2))
{
	if(input[i]>(235+offset2))
{
	if(input[i]>(237+offset2))
{
	if(input[i]==(239+offset2))
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
	if(input[i]==(237+offset2))
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
	if(input[i]>(233+offset2))
{
	if(input[i]==(235+offset2))
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
	if(input[i]==(233+offset2))
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
	if(input[i]>(227+offset2))
{
	if(input[i]>(229+offset2))
{
	if(input[i]==(231+offset2))
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
	if(input[i]==(229+offset2))
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
	if(input[i]>(225+offset2))
{
	if(input[i]==(227+offset2))
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
	if(input[i]==(225+offset2))
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
	if(input[i]>(207+offset2))
{
	if(input[i]>(215+offset2))
{
	if(input[i]>(219+offset2))
{
	if(input[i]>(221+offset2))
{
	if(input[i]==(223+offset2))
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
	if(input[i]==(221+offset2))
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
	if(input[i]>(217+offset2))
{
	if(input[i]==(219+offset2))
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
	if(input[i]==(217+offset2))
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
	if(input[i]>(211+offset2))
{
	if(input[i]>(213+offset2))
{
	if(input[i]==(215+offset2))
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
	if(input[i]==(213+offset2))
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
	if(input[i]>(209+offset2))
{
	if(input[i]==(211+offset2))
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
	if(input[i]==(209+offset2))
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
	if(input[i]>(199+offset2))
{
	if(input[i]>(203+offset2))
{
	if(input[i]>(205+offset2))
{
	if(input[i]==(207+offset2))
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
	if(input[i]==(205+offset2))
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
	if(input[i]>(201+offset2))
{
	if(input[i]==(203+offset2))
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
	if(input[i]==(201+offset2))
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
	if(input[i]>(195+offset2))
{
	if(input[i]>(197+offset2))
{
	if(input[i]==(199+offset2))
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
	if(input[i]==(197+offset2))
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
	if(input[i]>(193+offset2))
{
	if(input[i]==(195+offset2))
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
	if(input[i]==(193+offset2))
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
	if(input[i]>(159+offset2))
{
	if(input[i]>(175+offset2))
{
	if(input[i]>(183+offset2))
{
	if(input[i]>(187+offset2))
{
	if(input[i]>(189+offset2))
{
	if(input[i]==(191+offset2))
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
	if(input[i]==(189+offset2))
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
	if(input[i]>(185+offset2))
{
	if(input[i]==(187+offset2))
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
	if(input[i]==(185+offset2))
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
	if(input[i]>(179+offset2))
{
	if(input[i]>(181+offset2))
{
	if(input[i]==(183+offset2))
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
	if(input[i]==(181+offset2))
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
	if(input[i]>(177+offset2))
{
	if(input[i]==(179+offset2))
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
	if(input[i]==(177+offset2))
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
	if(input[i]>(167+offset2))
{
	if(input[i]>(171+offset2))
{
	if(input[i]>(173+offset2))
{
	if(input[i]==(175+offset2))
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
	if(input[i]==(173+offset2))
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
	if(input[i]>(169+offset2))
{
	if(input[i]==(171+offset2))
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
	if(input[i]==(169+offset2))
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
	if(input[i]>(163+offset2))
{
	if(input[i]>(165+offset2))
{
	if(input[i]==(167+offset2))
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
	if(input[i]==(165+offset2))
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
	if(input[i]>(161+offset2))
{
	if(input[i]==(163+offset2))
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
	if(input[i]==(161+offset2))
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
	if(input[i]>(143+offset2))
{
	if(input[i]>(151+offset2))
{
	if(input[i]>(155+offset2))
{
	if(input[i]>(157+offset2))
{
	if(input[i]==(159+offset2))
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
	if(input[i]==(157+offset2))
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
	if(input[i]>(153+offset2))
{
	if(input[i]==(155+offset2))
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
	if(input[i]==(153+offset2))
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
	if(input[i]>(147+offset2))
{
	if(input[i]>(149+offset2))
{
	if(input[i]==(151+offset2))
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
	if(input[i]==(149+offset2))
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
	if(input[i]>(145+offset2))
{
	if(input[i]==(147+offset2))
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
	if(input[i]==(145+offset2))
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
	if(input[i]>(135+offset2))
{
	if(input[i]>(139+offset2))
{
	if(input[i]>(141+offset2))
{
	if(input[i]==(143+offset2))
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
	if(input[i]==(141+offset2))
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
	if(input[i]>(137+offset2))
{
	if(input[i]==(139+offset2))
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
	if(input[i]==(137+offset2))
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
	if(input[i]>(131+offset2))
{
	if(input[i]>(133+offset2))
{
	if(input[i]==(135+offset2))
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
	if(input[i]==(133+offset2))
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
	if(input[i]>(129+offset2))
{
	if(input[i]==(131+offset2))
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
	if(input[i]==(129+offset2))
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
	if(input[i]>(63+offset2))
{
	if(input[i]>(95+offset2))
{
	if(input[i]>(111+offset2))
{
	if(input[i]>(119+offset2))
{
	if(input[i]>(123+offset2))
{
	if(input[i]>(125+offset2))
{
	if(input[i]==(127+offset2))
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
	if(input[i]==(125+offset2))
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
	if(input[i]>(121+offset2))
{
	if(input[i]==(123+offset2))
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
	if(input[i]==(121+offset2))
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
	if(input[i]>(115+offset2))
{
	if(input[i]>(117+offset2))
{
	if(input[i]==(119+offset2))
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
	if(input[i]==(117+offset2))
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
	if(input[i]>(113+offset2))
{
	if(input[i]==(115+offset2))
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
	if(input[i]==(113+offset2))
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
	if(input[i]>(103+offset2))
{
	if(input[i]>(107+offset2))
{
	if(input[i]>(109+offset2))
{
	if(input[i]==(111+offset2))
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
	if(input[i]==(109+offset2))
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
	if(input[i]>(105+offset2))
{
	if(input[i]==(107+offset2))
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
	if(input[i]==(105+offset2))
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
	if(input[i]>(99+offset2))
{
	if(input[i]>(101+offset2))
{
	if(input[i]==(103+offset2))
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
	if(input[i]==(101+offset2))
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
	if(input[i]>(97+offset2))
{
	if(input[i]==(99+offset2))
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
	if(input[i]==(97+offset2))
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
	if(input[i]>(79+offset2))
{
	if(input[i]>(87+offset2))
{
	if(input[i]>(91+offset2))
{
	if(input[i]>(93+offset2))
{
	if(input[i]==(95+offset2))
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
	if(input[i]==(93+offset2))
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
	if(input[i]>(89+offset2))
{
	if(input[i]==(91+offset2))
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
	if(input[i]==(89+offset2))
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
	if(input[i]>(83+offset2))
{
	if(input[i]>(85+offset2))
{
	if(input[i]==(87+offset2))
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
	if(input[i]==(85+offset2))
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
	if(input[i]>(81+offset2))
{
	if(input[i]==(83+offset2))
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
	if(input[i]==(81+offset2))
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
	if(input[i]>(71+offset2))
{
	if(input[i]>(75+offset2))
{
	if(input[i]>(77+offset2))
{
	if(input[i]==(79+offset2))
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
	if(input[i]==(77+offset2))
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
	if(input[i]>(73+offset2))
{
	if(input[i]==(75+offset2))
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
	if(input[i]==(73+offset2))
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
	if(input[i]>(67+offset2))
{
	if(input[i]>(69+offset2))
{
	if(input[i]==(71+offset2))
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
	if(input[i]==(69+offset2))
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
	if(input[i]>(65+offset2))
{
	if(input[i]==(67+offset2))
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
	if(input[i]==(65+offset2))
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
	if(input[i]>(31+offset2))
{
	if(input[i]>(47+offset2))
{
	if(input[i]>(55+offset2))
{
	if(input[i]>(59+offset2))
{
	if(input[i]>(61+offset2))
{
	if(input[i]==(63+offset2))
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
	if(input[i]==(61+offset2))
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
	if(input[i]>(57+offset2))
{
	if(input[i]==(59+offset2))
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
	if(input[i]==(57+offset2))
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
	if(input[i]>(51+offset2))
{
	if(input[i]>(53+offset2))
{
	if(input[i]==(55+offset2))
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
	if(input[i]==(53+offset2))
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
	if(input[i]>(49+offset2))
{
	if(input[i]==(51+offset2))
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
	if(input[i]==(49+offset2))
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
	if(input[i]>(39+offset2))
{
	if(input[i]>(43+offset2))
{
	if(input[i]>(45+offset2))
{
	if(input[i]==(47+offset2))
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
	if(input[i]==(45+offset2))
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
	if(input[i]>(41+offset2))
{
	if(input[i]==(43+offset2))
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
	if(input[i]==(41+offset2))
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
	if(input[i]>(35+offset2))
{
	if(input[i]>(37+offset2))
{
	if(input[i]==(39+offset2))
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
	if(input[i]==(37+offset2))
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
	if(input[i]>(33+offset2))
{
	if(input[i]==(35+offset2))
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
	if(input[i]==(33+offset2))
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
	if(input[i]>(15+offset2))
{
	if(input[i]>(23+offset2))
{
	if(input[i]>(27+offset2))
{
	if(input[i]>(29+offset2))
{
	if(input[i]==(31+offset2))
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
	if(input[i]==(29+offset2))
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
	if(input[i]>(25+offset2))
{
	if(input[i]==(27+offset2))
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
	if(input[i]==(25+offset2))
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
	if(input[i]>(19+offset2))
{
	if(input[i]>(21+offset2))
{
	if(input[i]==(23+offset2))
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
	if(input[i]==(21+offset2))
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
	if(input[i]>(17+offset2))
{
	if(input[i]==(19+offset2))
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
	if(input[i]==(17+offset2))
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
	if(input[i]>(7+offset2))
{
	if(input[i]>(11+offset2))
{
	if(input[i]>(13+offset2))
{
	if(input[i]==(15+offset2))
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
	if(input[i]==(13+offset2))
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
	if(input[i]>(9+offset2))
{
	if(input[i]==(11+offset2))
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
	if(input[i]==(9+offset2))
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
	if(input[i]>(3+offset2))
{
	if(input[i]>(5+offset2))
{
	if(input[i]==(7+offset2))
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
	if(input[i]==(5+offset2))
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
	if(input[i]>(1+offset2))
{
	if(input[i]==(3+offset2))
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
	if(input[i]==(1+offset2))
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
		registerTime(elapsed_time[t]);

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
