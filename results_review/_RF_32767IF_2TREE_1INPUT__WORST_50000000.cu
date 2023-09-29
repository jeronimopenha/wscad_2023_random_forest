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

#define _MOD 32768
#define _2TREE
#define EXP_NAME "_RF_32767IF_2TREE_1INPUT__WORST_50000000"

// RF_with_if

__global__ void RF_kernel(float *input, const int n, const int offset0, const int offset1, float *vR)
{
	int i = blockIdx.x * blockDim.x + threadIdx.x;
	if (i < n)
	{
if(input[i]>(16383+offset0))
{
	if(input[i]>(24575+offset0))
{
	if(input[i]>(28671+offset0))
{
	if(input[i]>(30719+offset0))
{
	if(input[i]>(31743+offset0))
{
	if(input[i]>(32255+offset0))
{
	if(input[i]>(32511+offset0))
{
	if(input[i]>(32639+offset0))
{
	if(input[i]>(32703+offset0))
{
	if(input[i]>(32735+offset0))
{
	if(input[i]>(32751+offset0))
{
	if(input[i]>(32759+offset0))
{
	if(input[i]>(32763+offset0))
{
	if(input[i]>(32765+offset0))
{
	if(input[i]==(32767+offset0))
{
	vR[i] = 32767;
}
else
{
	vR[i] = 32766;
}

}
else
{
	if(input[i]==(32765+offset0))
{
	vR[i] = 32765;
}
else
{
	vR[i] = 32764;
}

}

}
else
{
	if(input[i]>(32761+offset0))
{
	if(input[i]==(32763+offset0))
{
	vR[i] = 32763;
}
else
{
	vR[i] = 32762;
}

}
else
{
	if(input[i]==(32761+offset0))
{
	vR[i] = 32761;
}
else
{
	vR[i] = 32760;
}

}

}

}
else
{
	if(input[i]>(32755+offset0))
{
	if(input[i]>(32757+offset0))
{
	if(input[i]==(32759+offset0))
{
	vR[i] = 32759;
}
else
{
	vR[i] = 32758;
}

}
else
{
	if(input[i]==(32757+offset0))
{
	vR[i] = 32757;
}
else
{
	vR[i] = 32756;
}

}

}
else
{
	if(input[i]>(32753+offset0))
{
	if(input[i]==(32755+offset0))
{
	vR[i] = 32755;
}
else
{
	vR[i] = 32754;
}

}
else
{
	if(input[i]==(32753+offset0))
{
	vR[i] = 32753;
}
else
{
	vR[i] = 32752;
}

}

}

}

}
else
{
	if(input[i]>(32743+offset0))
{
	if(input[i]>(32747+offset0))
{
	if(input[i]>(32749+offset0))
{
	if(input[i]==(32751+offset0))
{
	vR[i] = 32751;
}
else
{
	vR[i] = 32750;
}

}
else
{
	if(input[i]==(32749+offset0))
{
	vR[i] = 32749;
}
else
{
	vR[i] = 32748;
}

}

}
else
{
	if(input[i]>(32745+offset0))
{
	if(input[i]==(32747+offset0))
{
	vR[i] = 32747;
}
else
{
	vR[i] = 32746;
}

}
else
{
	if(input[i]==(32745+offset0))
{
	vR[i] = 32745;
}
else
{
	vR[i] = 32744;
}

}

}

}
else
{
	if(input[i]>(32739+offset0))
{
	if(input[i]>(32741+offset0))
{
	if(input[i]==(32743+offset0))
{
	vR[i] = 32743;
}
else
{
	vR[i] = 32742;
}

}
else
{
	if(input[i]==(32741+offset0))
{
	vR[i] = 32741;
}
else
{
	vR[i] = 32740;
}

}

}
else
{
	if(input[i]>(32737+offset0))
{
	if(input[i]==(32739+offset0))
{
	vR[i] = 32739;
}
else
{
	vR[i] = 32738;
}

}
else
{
	if(input[i]==(32737+offset0))
{
	vR[i] = 32737;
}
else
{
	vR[i] = 32736;
}

}

}

}

}

}
else
{
	if(input[i]>(32719+offset0))
{
	if(input[i]>(32727+offset0))
{
	if(input[i]>(32731+offset0))
{
	if(input[i]>(32733+offset0))
{
	if(input[i]==(32735+offset0))
{
	vR[i] = 32735;
}
else
{
	vR[i] = 32734;
}

}
else
{
	if(input[i]==(32733+offset0))
{
	vR[i] = 32733;
}
else
{
	vR[i] = 32732;
}

}

}
else
{
	if(input[i]>(32729+offset0))
{
	if(input[i]==(32731+offset0))
{
	vR[i] = 32731;
}
else
{
	vR[i] = 32730;
}

}
else
{
	if(input[i]==(32729+offset0))
{
	vR[i] = 32729;
}
else
{
	vR[i] = 32728;
}

}

}

}
else
{
	if(input[i]>(32723+offset0))
{
	if(input[i]>(32725+offset0))
{
	if(input[i]==(32727+offset0))
{
	vR[i] = 32727;
}
else
{
	vR[i] = 32726;
}

}
else
{
	if(input[i]==(32725+offset0))
{
	vR[i] = 32725;
}
else
{
	vR[i] = 32724;
}

}

}
else
{
	if(input[i]>(32721+offset0))
{
	if(input[i]==(32723+offset0))
{
	vR[i] = 32723;
}
else
{
	vR[i] = 32722;
}

}
else
{
	if(input[i]==(32721+offset0))
{
	vR[i] = 32721;
}
else
{
	vR[i] = 32720;
}

}

}

}

}
else
{
	if(input[i]>(32711+offset0))
{
	if(input[i]>(32715+offset0))
{
	if(input[i]>(32717+offset0))
{
	if(input[i]==(32719+offset0))
{
	vR[i] = 32719;
}
else
{
	vR[i] = 32718;
}

}
else
{
	if(input[i]==(32717+offset0))
{
	vR[i] = 32717;
}
else
{
	vR[i] = 32716;
}

}

}
else
{
	if(input[i]>(32713+offset0))
{
	if(input[i]==(32715+offset0))
{
	vR[i] = 32715;
}
else
{
	vR[i] = 32714;
}

}
else
{
	if(input[i]==(32713+offset0))
{
	vR[i] = 32713;
}
else
{
	vR[i] = 32712;
}

}

}

}
else
{
	if(input[i]>(32707+offset0))
{
	if(input[i]>(32709+offset0))
{
	if(input[i]==(32711+offset0))
{
	vR[i] = 32711;
}
else
{
	vR[i] = 32710;
}

}
else
{
	if(input[i]==(32709+offset0))
{
	vR[i] = 32709;
}
else
{
	vR[i] = 32708;
}

}

}
else
{
	if(input[i]>(32705+offset0))
{
	if(input[i]==(32707+offset0))
{
	vR[i] = 32707;
}
else
{
	vR[i] = 32706;
}

}
else
{
	if(input[i]==(32705+offset0))
{
	vR[i] = 32705;
}
else
{
	vR[i] = 32704;
}

}

}

}

}

}

}
else
{
	if(input[i]>(32671+offset0))
{
	if(input[i]>(32687+offset0))
{
	if(input[i]>(32695+offset0))
{
	if(input[i]>(32699+offset0))
{
	if(input[i]>(32701+offset0))
{
	if(input[i]==(32703+offset0))
{
	vR[i] = 32703;
}
else
{
	vR[i] = 32702;
}

}
else
{
	if(input[i]==(32701+offset0))
{
	vR[i] = 32701;
}
else
{
	vR[i] = 32700;
}

}

}
else
{
	if(input[i]>(32697+offset0))
{
	if(input[i]==(32699+offset0))
{
	vR[i] = 32699;
}
else
{
	vR[i] = 32698;
}

}
else
{
	if(input[i]==(32697+offset0))
{
	vR[i] = 32697;
}
else
{
	vR[i] = 32696;
}

}

}

}
else
{
	if(input[i]>(32691+offset0))
{
	if(input[i]>(32693+offset0))
{
	if(input[i]==(32695+offset0))
{
	vR[i] = 32695;
}
else
{
	vR[i] = 32694;
}

}
else
{
	if(input[i]==(32693+offset0))
{
	vR[i] = 32693;
}
else
{
	vR[i] = 32692;
}

}

}
else
{
	if(input[i]>(32689+offset0))
{
	if(input[i]==(32691+offset0))
{
	vR[i] = 32691;
}
else
{
	vR[i] = 32690;
}

}
else
{
	if(input[i]==(32689+offset0))
{
	vR[i] = 32689;
}
else
{
	vR[i] = 32688;
}

}

}

}

}
else
{
	if(input[i]>(32679+offset0))
{
	if(input[i]>(32683+offset0))
{
	if(input[i]>(32685+offset0))
{
	if(input[i]==(32687+offset0))
{
	vR[i] = 32687;
}
else
{
	vR[i] = 32686;
}

}
else
{
	if(input[i]==(32685+offset0))
{
	vR[i] = 32685;
}
else
{
	vR[i] = 32684;
}

}

}
else
{
	if(input[i]>(32681+offset0))
{
	if(input[i]==(32683+offset0))
{
	vR[i] = 32683;
}
else
{
	vR[i] = 32682;
}

}
else
{
	if(input[i]==(32681+offset0))
{
	vR[i] = 32681;
}
else
{
	vR[i] = 32680;
}

}

}

}
else
{
	if(input[i]>(32675+offset0))
{
	if(input[i]>(32677+offset0))
{
	if(input[i]==(32679+offset0))
{
	vR[i] = 32679;
}
else
{
	vR[i] = 32678;
}

}
else
{
	if(input[i]==(32677+offset0))
{
	vR[i] = 32677;
}
else
{
	vR[i] = 32676;
}

}

}
else
{
	if(input[i]>(32673+offset0))
{
	if(input[i]==(32675+offset0))
{
	vR[i] = 32675;
}
else
{
	vR[i] = 32674;
}

}
else
{
	if(input[i]==(32673+offset0))
{
	vR[i] = 32673;
}
else
{
	vR[i] = 32672;
}

}

}

}

}

}
else
{
	if(input[i]>(32655+offset0))
{
	if(input[i]>(32663+offset0))
{
	if(input[i]>(32667+offset0))
{
	if(input[i]>(32669+offset0))
{
	if(input[i]==(32671+offset0))
{
	vR[i] = 32671;
}
else
{
	vR[i] = 32670;
}

}
else
{
	if(input[i]==(32669+offset0))
{
	vR[i] = 32669;
}
else
{
	vR[i] = 32668;
}

}

}
else
{
	if(input[i]>(32665+offset0))
{
	if(input[i]==(32667+offset0))
{
	vR[i] = 32667;
}
else
{
	vR[i] = 32666;
}

}
else
{
	if(input[i]==(32665+offset0))
{
	vR[i] = 32665;
}
else
{
	vR[i] = 32664;
}

}

}

}
else
{
	if(input[i]>(32659+offset0))
{
	if(input[i]>(32661+offset0))
{
	if(input[i]==(32663+offset0))
{
	vR[i] = 32663;
}
else
{
	vR[i] = 32662;
}

}
else
{
	if(input[i]==(32661+offset0))
{
	vR[i] = 32661;
}
else
{
	vR[i] = 32660;
}

}

}
else
{
	if(input[i]>(32657+offset0))
{
	if(input[i]==(32659+offset0))
{
	vR[i] = 32659;
}
else
{
	vR[i] = 32658;
}

}
else
{
	if(input[i]==(32657+offset0))
{
	vR[i] = 32657;
}
else
{
	vR[i] = 32656;
}

}

}

}

}
else
{
	if(input[i]>(32647+offset0))
{
	if(input[i]>(32651+offset0))
{
	if(input[i]>(32653+offset0))
{
	if(input[i]==(32655+offset0))
{
	vR[i] = 32655;
}
else
{
	vR[i] = 32654;
}

}
else
{
	if(input[i]==(32653+offset0))
{
	vR[i] = 32653;
}
else
{
	vR[i] = 32652;
}

}

}
else
{
	if(input[i]>(32649+offset0))
{
	if(input[i]==(32651+offset0))
{
	vR[i] = 32651;
}
else
{
	vR[i] = 32650;
}

}
else
{
	if(input[i]==(32649+offset0))
{
	vR[i] = 32649;
}
else
{
	vR[i] = 32648;
}

}

}

}
else
{
	if(input[i]>(32643+offset0))
{
	if(input[i]>(32645+offset0))
{
	if(input[i]==(32647+offset0))
{
	vR[i] = 32647;
}
else
{
	vR[i] = 32646;
}

}
else
{
	if(input[i]==(32645+offset0))
{
	vR[i] = 32645;
}
else
{
	vR[i] = 32644;
}

}

}
else
{
	if(input[i]>(32641+offset0))
{
	if(input[i]==(32643+offset0))
{
	vR[i] = 32643;
}
else
{
	vR[i] = 32642;
}

}
else
{
	if(input[i]==(32641+offset0))
{
	vR[i] = 32641;
}
else
{
	vR[i] = 32640;
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
	if(input[i]>(32575+offset0))
{
	if(input[i]>(32607+offset0))
{
	if(input[i]>(32623+offset0))
{
	if(input[i]>(32631+offset0))
{
	if(input[i]>(32635+offset0))
{
	if(input[i]>(32637+offset0))
{
	if(input[i]==(32639+offset0))
{
	vR[i] = 32639;
}
else
{
	vR[i] = 32638;
}

}
else
{
	if(input[i]==(32637+offset0))
{
	vR[i] = 32637;
}
else
{
	vR[i] = 32636;
}

}

}
else
{
	if(input[i]>(32633+offset0))
{
	if(input[i]==(32635+offset0))
{
	vR[i] = 32635;
}
else
{
	vR[i] = 32634;
}

}
else
{
	if(input[i]==(32633+offset0))
{
	vR[i] = 32633;
}
else
{
	vR[i] = 32632;
}

}

}

}
else
{
	if(input[i]>(32627+offset0))
{
	if(input[i]>(32629+offset0))
{
	if(input[i]==(32631+offset0))
{
	vR[i] = 32631;
}
else
{
	vR[i] = 32630;
}

}
else
{
	if(input[i]==(32629+offset0))
{
	vR[i] = 32629;
}
else
{
	vR[i] = 32628;
}

}

}
else
{
	if(input[i]>(32625+offset0))
{
	if(input[i]==(32627+offset0))
{
	vR[i] = 32627;
}
else
{
	vR[i] = 32626;
}

}
else
{
	if(input[i]==(32625+offset0))
{
	vR[i] = 32625;
}
else
{
	vR[i] = 32624;
}

}

}

}

}
else
{
	if(input[i]>(32615+offset0))
{
	if(input[i]>(32619+offset0))
{
	if(input[i]>(32621+offset0))
{
	if(input[i]==(32623+offset0))
{
	vR[i] = 32623;
}
else
{
	vR[i] = 32622;
}

}
else
{
	if(input[i]==(32621+offset0))
{
	vR[i] = 32621;
}
else
{
	vR[i] = 32620;
}

}

}
else
{
	if(input[i]>(32617+offset0))
{
	if(input[i]==(32619+offset0))
{
	vR[i] = 32619;
}
else
{
	vR[i] = 32618;
}

}
else
{
	if(input[i]==(32617+offset0))
{
	vR[i] = 32617;
}
else
{
	vR[i] = 32616;
}

}

}

}
else
{
	if(input[i]>(32611+offset0))
{
	if(input[i]>(32613+offset0))
{
	if(input[i]==(32615+offset0))
{
	vR[i] = 32615;
}
else
{
	vR[i] = 32614;
}

}
else
{
	if(input[i]==(32613+offset0))
{
	vR[i] = 32613;
}
else
{
	vR[i] = 32612;
}

}

}
else
{
	if(input[i]>(32609+offset0))
{
	if(input[i]==(32611+offset0))
{
	vR[i] = 32611;
}
else
{
	vR[i] = 32610;
}

}
else
{
	if(input[i]==(32609+offset0))
{
	vR[i] = 32609;
}
else
{
	vR[i] = 32608;
}

}

}

}

}

}
else
{
	if(input[i]>(32591+offset0))
{
	if(input[i]>(32599+offset0))
{
	if(input[i]>(32603+offset0))
{
	if(input[i]>(32605+offset0))
{
	if(input[i]==(32607+offset0))
{
	vR[i] = 32607;
}
else
{
	vR[i] = 32606;
}

}
else
{
	if(input[i]==(32605+offset0))
{
	vR[i] = 32605;
}
else
{
	vR[i] = 32604;
}

}

}
else
{
	if(input[i]>(32601+offset0))
{
	if(input[i]==(32603+offset0))
{
	vR[i] = 32603;
}
else
{
	vR[i] = 32602;
}

}
else
{
	if(input[i]==(32601+offset0))
{
	vR[i] = 32601;
}
else
{
	vR[i] = 32600;
}

}

}

}
else
{
	if(input[i]>(32595+offset0))
{
	if(input[i]>(32597+offset0))
{
	if(input[i]==(32599+offset0))
{
	vR[i] = 32599;
}
else
{
	vR[i] = 32598;
}

}
else
{
	if(input[i]==(32597+offset0))
{
	vR[i] = 32597;
}
else
{
	vR[i] = 32596;
}

}

}
else
{
	if(input[i]>(32593+offset0))
{
	if(input[i]==(32595+offset0))
{
	vR[i] = 32595;
}
else
{
	vR[i] = 32594;
}

}
else
{
	if(input[i]==(32593+offset0))
{
	vR[i] = 32593;
}
else
{
	vR[i] = 32592;
}

}

}

}

}
else
{
	if(input[i]>(32583+offset0))
{
	if(input[i]>(32587+offset0))
{
	if(input[i]>(32589+offset0))
{
	if(input[i]==(32591+offset0))
{
	vR[i] = 32591;
}
else
{
	vR[i] = 32590;
}

}
else
{
	if(input[i]==(32589+offset0))
{
	vR[i] = 32589;
}
else
{
	vR[i] = 32588;
}

}

}
else
{
	if(input[i]>(32585+offset0))
{
	if(input[i]==(32587+offset0))
{
	vR[i] = 32587;
}
else
{
	vR[i] = 32586;
}

}
else
{
	if(input[i]==(32585+offset0))
{
	vR[i] = 32585;
}
else
{
	vR[i] = 32584;
}

}

}

}
else
{
	if(input[i]>(32579+offset0))
{
	if(input[i]>(32581+offset0))
{
	if(input[i]==(32583+offset0))
{
	vR[i] = 32583;
}
else
{
	vR[i] = 32582;
}

}
else
{
	if(input[i]==(32581+offset0))
{
	vR[i] = 32581;
}
else
{
	vR[i] = 32580;
}

}

}
else
{
	if(input[i]>(32577+offset0))
{
	if(input[i]==(32579+offset0))
{
	vR[i] = 32579;
}
else
{
	vR[i] = 32578;
}

}
else
{
	if(input[i]==(32577+offset0))
{
	vR[i] = 32577;
}
else
{
	vR[i] = 32576;
}

}

}

}

}

}

}
else
{
	if(input[i]>(32543+offset0))
{
	if(input[i]>(32559+offset0))
{
	if(input[i]>(32567+offset0))
{
	if(input[i]>(32571+offset0))
{
	if(input[i]>(32573+offset0))
{
	if(input[i]==(32575+offset0))
{
	vR[i] = 32575;
}
else
{
	vR[i] = 32574;
}

}
else
{
	if(input[i]==(32573+offset0))
{
	vR[i] = 32573;
}
else
{
	vR[i] = 32572;
}

}

}
else
{
	if(input[i]>(32569+offset0))
{
	if(input[i]==(32571+offset0))
{
	vR[i] = 32571;
}
else
{
	vR[i] = 32570;
}

}
else
{
	if(input[i]==(32569+offset0))
{
	vR[i] = 32569;
}
else
{
	vR[i] = 32568;
}

}

}

}
else
{
	if(input[i]>(32563+offset0))
{
	if(input[i]>(32565+offset0))
{
	if(input[i]==(32567+offset0))
{
	vR[i] = 32567;
}
else
{
	vR[i] = 32566;
}

}
else
{
	if(input[i]==(32565+offset0))
{
	vR[i] = 32565;
}
else
{
	vR[i] = 32564;
}

}

}
else
{
	if(input[i]>(32561+offset0))
{
	if(input[i]==(32563+offset0))
{
	vR[i] = 32563;
}
else
{
	vR[i] = 32562;
}

}
else
{
	if(input[i]==(32561+offset0))
{
	vR[i] = 32561;
}
else
{
	vR[i] = 32560;
}

}

}

}

}
else
{
	if(input[i]>(32551+offset0))
{
	if(input[i]>(32555+offset0))
{
	if(input[i]>(32557+offset0))
{
	if(input[i]==(32559+offset0))
{
	vR[i] = 32559;
}
else
{
	vR[i] = 32558;
}

}
else
{
	if(input[i]==(32557+offset0))
{
	vR[i] = 32557;
}
else
{
	vR[i] = 32556;
}

}

}
else
{
	if(input[i]>(32553+offset0))
{
	if(input[i]==(32555+offset0))
{
	vR[i] = 32555;
}
else
{
	vR[i] = 32554;
}

}
else
{
	if(input[i]==(32553+offset0))
{
	vR[i] = 32553;
}
else
{
	vR[i] = 32552;
}

}

}

}
else
{
	if(input[i]>(32547+offset0))
{
	if(input[i]>(32549+offset0))
{
	if(input[i]==(32551+offset0))
{
	vR[i] = 32551;
}
else
{
	vR[i] = 32550;
}

}
else
{
	if(input[i]==(32549+offset0))
{
	vR[i] = 32549;
}
else
{
	vR[i] = 32548;
}

}

}
else
{
	if(input[i]>(32545+offset0))
{
	if(input[i]==(32547+offset0))
{
	vR[i] = 32547;
}
else
{
	vR[i] = 32546;
}

}
else
{
	if(input[i]==(32545+offset0))
{
	vR[i] = 32545;
}
else
{
	vR[i] = 32544;
}

}

}

}

}

}
else
{
	if(input[i]>(32527+offset0))
{
	if(input[i]>(32535+offset0))
{
	if(input[i]>(32539+offset0))
{
	if(input[i]>(32541+offset0))
{
	if(input[i]==(32543+offset0))
{
	vR[i] = 32543;
}
else
{
	vR[i] = 32542;
}

}
else
{
	if(input[i]==(32541+offset0))
{
	vR[i] = 32541;
}
else
{
	vR[i] = 32540;
}

}

}
else
{
	if(input[i]>(32537+offset0))
{
	if(input[i]==(32539+offset0))
{
	vR[i] = 32539;
}
else
{
	vR[i] = 32538;
}

}
else
{
	if(input[i]==(32537+offset0))
{
	vR[i] = 32537;
}
else
{
	vR[i] = 32536;
}

}

}

}
else
{
	if(input[i]>(32531+offset0))
{
	if(input[i]>(32533+offset0))
{
	if(input[i]==(32535+offset0))
{
	vR[i] = 32535;
}
else
{
	vR[i] = 32534;
}

}
else
{
	if(input[i]==(32533+offset0))
{
	vR[i] = 32533;
}
else
{
	vR[i] = 32532;
}

}

}
else
{
	if(input[i]>(32529+offset0))
{
	if(input[i]==(32531+offset0))
{
	vR[i] = 32531;
}
else
{
	vR[i] = 32530;
}

}
else
{
	if(input[i]==(32529+offset0))
{
	vR[i] = 32529;
}
else
{
	vR[i] = 32528;
}

}

}

}

}
else
{
	if(input[i]>(32519+offset0))
{
	if(input[i]>(32523+offset0))
{
	if(input[i]>(32525+offset0))
{
	if(input[i]==(32527+offset0))
{
	vR[i] = 32527;
}
else
{
	vR[i] = 32526;
}

}
else
{
	if(input[i]==(32525+offset0))
{
	vR[i] = 32525;
}
else
{
	vR[i] = 32524;
}

}

}
else
{
	if(input[i]>(32521+offset0))
{
	if(input[i]==(32523+offset0))
{
	vR[i] = 32523;
}
else
{
	vR[i] = 32522;
}

}
else
{
	if(input[i]==(32521+offset0))
{
	vR[i] = 32521;
}
else
{
	vR[i] = 32520;
}

}

}

}
else
{
	if(input[i]>(32515+offset0))
{
	if(input[i]>(32517+offset0))
{
	if(input[i]==(32519+offset0))
{
	vR[i] = 32519;
}
else
{
	vR[i] = 32518;
}

}
else
{
	if(input[i]==(32517+offset0))
{
	vR[i] = 32517;
}
else
{
	vR[i] = 32516;
}

}

}
else
{
	if(input[i]>(32513+offset0))
{
	if(input[i]==(32515+offset0))
{
	vR[i] = 32515;
}
else
{
	vR[i] = 32514;
}

}
else
{
	if(input[i]==(32513+offset0))
{
	vR[i] = 32513;
}
else
{
	vR[i] = 32512;
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
	if(input[i]>(32383+offset0))
{
	if(input[i]>(32447+offset0))
{
	if(input[i]>(32479+offset0))
{
	if(input[i]>(32495+offset0))
{
	if(input[i]>(32503+offset0))
{
	if(input[i]>(32507+offset0))
{
	if(input[i]>(32509+offset0))
{
	if(input[i]==(32511+offset0))
{
	vR[i] = 32511;
}
else
{
	vR[i] = 32510;
}

}
else
{
	if(input[i]==(32509+offset0))
{
	vR[i] = 32509;
}
else
{
	vR[i] = 32508;
}

}

}
else
{
	if(input[i]>(32505+offset0))
{
	if(input[i]==(32507+offset0))
{
	vR[i] = 32507;
}
else
{
	vR[i] = 32506;
}

}
else
{
	if(input[i]==(32505+offset0))
{
	vR[i] = 32505;
}
else
{
	vR[i] = 32504;
}

}

}

}
else
{
	if(input[i]>(32499+offset0))
{
	if(input[i]>(32501+offset0))
{
	if(input[i]==(32503+offset0))
{
	vR[i] = 32503;
}
else
{
	vR[i] = 32502;
}

}
else
{
	if(input[i]==(32501+offset0))
{
	vR[i] = 32501;
}
else
{
	vR[i] = 32500;
}

}

}
else
{
	if(input[i]>(32497+offset0))
{
	if(input[i]==(32499+offset0))
{
	vR[i] = 32499;
}
else
{
	vR[i] = 32498;
}

}
else
{
	if(input[i]==(32497+offset0))
{
	vR[i] = 32497;
}
else
{
	vR[i] = 32496;
}

}

}

}

}
else
{
	if(input[i]>(32487+offset0))
{
	if(input[i]>(32491+offset0))
{
	if(input[i]>(32493+offset0))
{
	if(input[i]==(32495+offset0))
{
	vR[i] = 32495;
}
else
{
	vR[i] = 32494;
}

}
else
{
	if(input[i]==(32493+offset0))
{
	vR[i] = 32493;
}
else
{
	vR[i] = 32492;
}

}

}
else
{
	if(input[i]>(32489+offset0))
{
	if(input[i]==(32491+offset0))
{
	vR[i] = 32491;
}
else
{
	vR[i] = 32490;
}

}
else
{
	if(input[i]==(32489+offset0))
{
	vR[i] = 32489;
}
else
{
	vR[i] = 32488;
}

}

}

}
else
{
	if(input[i]>(32483+offset0))
{
	if(input[i]>(32485+offset0))
{
	if(input[i]==(32487+offset0))
{
	vR[i] = 32487;
}
else
{
	vR[i] = 32486;
}

}
else
{
	if(input[i]==(32485+offset0))
{
	vR[i] = 32485;
}
else
{
	vR[i] = 32484;
}

}

}
else
{
	if(input[i]>(32481+offset0))
{
	if(input[i]==(32483+offset0))
{
	vR[i] = 32483;
}
else
{
	vR[i] = 32482;
}

}
else
{
	if(input[i]==(32481+offset0))
{
	vR[i] = 32481;
}
else
{
	vR[i] = 32480;
}

}

}

}

}

}
else
{
	if(input[i]>(32463+offset0))
{
	if(input[i]>(32471+offset0))
{
	if(input[i]>(32475+offset0))
{
	if(input[i]>(32477+offset0))
{
	if(input[i]==(32479+offset0))
{
	vR[i] = 32479;
}
else
{
	vR[i] = 32478;
}

}
else
{
	if(input[i]==(32477+offset0))
{
	vR[i] = 32477;
}
else
{
	vR[i] = 32476;
}

}

}
else
{
	if(input[i]>(32473+offset0))
{
	if(input[i]==(32475+offset0))
{
	vR[i] = 32475;
}
else
{
	vR[i] = 32474;
}

}
else
{
	if(input[i]==(32473+offset0))
{
	vR[i] = 32473;
}
else
{
	vR[i] = 32472;
}

}

}

}
else
{
	if(input[i]>(32467+offset0))
{
	if(input[i]>(32469+offset0))
{
	if(input[i]==(32471+offset0))
{
	vR[i] = 32471;
}
else
{
	vR[i] = 32470;
}

}
else
{
	if(input[i]==(32469+offset0))
{
	vR[i] = 32469;
}
else
{
	vR[i] = 32468;
}

}

}
else
{
	if(input[i]>(32465+offset0))
{
	if(input[i]==(32467+offset0))
{
	vR[i] = 32467;
}
else
{
	vR[i] = 32466;
}

}
else
{
	if(input[i]==(32465+offset0))
{
	vR[i] = 32465;
}
else
{
	vR[i] = 32464;
}

}

}

}

}
else
{
	if(input[i]>(32455+offset0))
{
	if(input[i]>(32459+offset0))
{
	if(input[i]>(32461+offset0))
{
	if(input[i]==(32463+offset0))
{
	vR[i] = 32463;
}
else
{
	vR[i] = 32462;
}

}
else
{
	if(input[i]==(32461+offset0))
{
	vR[i] = 32461;
}
else
{
	vR[i] = 32460;
}

}

}
else
{
	if(input[i]>(32457+offset0))
{
	if(input[i]==(32459+offset0))
{
	vR[i] = 32459;
}
else
{
	vR[i] = 32458;
}

}
else
{
	if(input[i]==(32457+offset0))
{
	vR[i] = 32457;
}
else
{
	vR[i] = 32456;
}

}

}

}
else
{
	if(input[i]>(32451+offset0))
{
	if(input[i]>(32453+offset0))
{
	if(input[i]==(32455+offset0))
{
	vR[i] = 32455;
}
else
{
	vR[i] = 32454;
}

}
else
{
	if(input[i]==(32453+offset0))
{
	vR[i] = 32453;
}
else
{
	vR[i] = 32452;
}

}

}
else
{
	if(input[i]>(32449+offset0))
{
	if(input[i]==(32451+offset0))
{
	vR[i] = 32451;
}
else
{
	vR[i] = 32450;
}

}
else
{
	if(input[i]==(32449+offset0))
{
	vR[i] = 32449;
}
else
{
	vR[i] = 32448;
}

}

}

}

}

}

}
else
{
	if(input[i]>(32415+offset0))
{
	if(input[i]>(32431+offset0))
{
	if(input[i]>(32439+offset0))
{
	if(input[i]>(32443+offset0))
{
	if(input[i]>(32445+offset0))
{
	if(input[i]==(32447+offset0))
{
	vR[i] = 32447;
}
else
{
	vR[i] = 32446;
}

}
else
{
	if(input[i]==(32445+offset0))
{
	vR[i] = 32445;
}
else
{
	vR[i] = 32444;
}

}

}
else
{
	if(input[i]>(32441+offset0))
{
	if(input[i]==(32443+offset0))
{
	vR[i] = 32443;
}
else
{
	vR[i] = 32442;
}

}
else
{
	if(input[i]==(32441+offset0))
{
	vR[i] = 32441;
}
else
{
	vR[i] = 32440;
}

}

}

}
else
{
	if(input[i]>(32435+offset0))
{
	if(input[i]>(32437+offset0))
{
	if(input[i]==(32439+offset0))
{
	vR[i] = 32439;
}
else
{
	vR[i] = 32438;
}

}
else
{
	if(input[i]==(32437+offset0))
{
	vR[i] = 32437;
}
else
{
	vR[i] = 32436;
}

}

}
else
{
	if(input[i]>(32433+offset0))
{
	if(input[i]==(32435+offset0))
{
	vR[i] = 32435;
}
else
{
	vR[i] = 32434;
}

}
else
{
	if(input[i]==(32433+offset0))
{
	vR[i] = 32433;
}
else
{
	vR[i] = 32432;
}

}

}

}

}
else
{
	if(input[i]>(32423+offset0))
{
	if(input[i]>(32427+offset0))
{
	if(input[i]>(32429+offset0))
{
	if(input[i]==(32431+offset0))
{
	vR[i] = 32431;
}
else
{
	vR[i] = 32430;
}

}
else
{
	if(input[i]==(32429+offset0))
{
	vR[i] = 32429;
}
else
{
	vR[i] = 32428;
}

}

}
else
{
	if(input[i]>(32425+offset0))
{
	if(input[i]==(32427+offset0))
{
	vR[i] = 32427;
}
else
{
	vR[i] = 32426;
}

}
else
{
	if(input[i]==(32425+offset0))
{
	vR[i] = 32425;
}
else
{
	vR[i] = 32424;
}

}

}

}
else
{
	if(input[i]>(32419+offset0))
{
	if(input[i]>(32421+offset0))
{
	if(input[i]==(32423+offset0))
{
	vR[i] = 32423;
}
else
{
	vR[i] = 32422;
}

}
else
{
	if(input[i]==(32421+offset0))
{
	vR[i] = 32421;
}
else
{
	vR[i] = 32420;
}

}

}
else
{
	if(input[i]>(32417+offset0))
{
	if(input[i]==(32419+offset0))
{
	vR[i] = 32419;
}
else
{
	vR[i] = 32418;
}

}
else
{
	if(input[i]==(32417+offset0))
{
	vR[i] = 32417;
}
else
{
	vR[i] = 32416;
}

}

}

}

}

}
else
{
	if(input[i]>(32399+offset0))
{
	if(input[i]>(32407+offset0))
{
	if(input[i]>(32411+offset0))
{
	if(input[i]>(32413+offset0))
{
	if(input[i]==(32415+offset0))
{
	vR[i] = 32415;
}
else
{
	vR[i] = 32414;
}

}
else
{
	if(input[i]==(32413+offset0))
{
	vR[i] = 32413;
}
else
{
	vR[i] = 32412;
}

}

}
else
{
	if(input[i]>(32409+offset0))
{
	if(input[i]==(32411+offset0))
{
	vR[i] = 32411;
}
else
{
	vR[i] = 32410;
}

}
else
{
	if(input[i]==(32409+offset0))
{
	vR[i] = 32409;
}
else
{
	vR[i] = 32408;
}

}

}

}
else
{
	if(input[i]>(32403+offset0))
{
	if(input[i]>(32405+offset0))
{
	if(input[i]==(32407+offset0))
{
	vR[i] = 32407;
}
else
{
	vR[i] = 32406;
}

}
else
{
	if(input[i]==(32405+offset0))
{
	vR[i] = 32405;
}
else
{
	vR[i] = 32404;
}

}

}
else
{
	if(input[i]>(32401+offset0))
{
	if(input[i]==(32403+offset0))
{
	vR[i] = 32403;
}
else
{
	vR[i] = 32402;
}

}
else
{
	if(input[i]==(32401+offset0))
{
	vR[i] = 32401;
}
else
{
	vR[i] = 32400;
}

}

}

}

}
else
{
	if(input[i]>(32391+offset0))
{
	if(input[i]>(32395+offset0))
{
	if(input[i]>(32397+offset0))
{
	if(input[i]==(32399+offset0))
{
	vR[i] = 32399;
}
else
{
	vR[i] = 32398;
}

}
else
{
	if(input[i]==(32397+offset0))
{
	vR[i] = 32397;
}
else
{
	vR[i] = 32396;
}

}

}
else
{
	if(input[i]>(32393+offset0))
{
	if(input[i]==(32395+offset0))
{
	vR[i] = 32395;
}
else
{
	vR[i] = 32394;
}

}
else
{
	if(input[i]==(32393+offset0))
{
	vR[i] = 32393;
}
else
{
	vR[i] = 32392;
}

}

}

}
else
{
	if(input[i]>(32387+offset0))
{
	if(input[i]>(32389+offset0))
{
	if(input[i]==(32391+offset0))
{
	vR[i] = 32391;
}
else
{
	vR[i] = 32390;
}

}
else
{
	if(input[i]==(32389+offset0))
{
	vR[i] = 32389;
}
else
{
	vR[i] = 32388;
}

}

}
else
{
	if(input[i]>(32385+offset0))
{
	if(input[i]==(32387+offset0))
{
	vR[i] = 32387;
}
else
{
	vR[i] = 32386;
}

}
else
{
	if(input[i]==(32385+offset0))
{
	vR[i] = 32385;
}
else
{
	vR[i] = 32384;
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
	if(input[i]>(32319+offset0))
{
	if(input[i]>(32351+offset0))
{
	if(input[i]>(32367+offset0))
{
	if(input[i]>(32375+offset0))
{
	if(input[i]>(32379+offset0))
{
	if(input[i]>(32381+offset0))
{
	if(input[i]==(32383+offset0))
{
	vR[i] = 32383;
}
else
{
	vR[i] = 32382;
}

}
else
{
	if(input[i]==(32381+offset0))
{
	vR[i] = 32381;
}
else
{
	vR[i] = 32380;
}

}

}
else
{
	if(input[i]>(32377+offset0))
{
	if(input[i]==(32379+offset0))
{
	vR[i] = 32379;
}
else
{
	vR[i] = 32378;
}

}
else
{
	if(input[i]==(32377+offset0))
{
	vR[i] = 32377;
}
else
{
	vR[i] = 32376;
}

}

}

}
else
{
	if(input[i]>(32371+offset0))
{
	if(input[i]>(32373+offset0))
{
	if(input[i]==(32375+offset0))
{
	vR[i] = 32375;
}
else
{
	vR[i] = 32374;
}

}
else
{
	if(input[i]==(32373+offset0))
{
	vR[i] = 32373;
}
else
{
	vR[i] = 32372;
}

}

}
else
{
	if(input[i]>(32369+offset0))
{
	if(input[i]==(32371+offset0))
{
	vR[i] = 32371;
}
else
{
	vR[i] = 32370;
}

}
else
{
	if(input[i]==(32369+offset0))
{
	vR[i] = 32369;
}
else
{
	vR[i] = 32368;
}

}

}

}

}
else
{
	if(input[i]>(32359+offset0))
{
	if(input[i]>(32363+offset0))
{
	if(input[i]>(32365+offset0))
{
	if(input[i]==(32367+offset0))
{
	vR[i] = 32367;
}
else
{
	vR[i] = 32366;
}

}
else
{
	if(input[i]==(32365+offset0))
{
	vR[i] = 32365;
}
else
{
	vR[i] = 32364;
}

}

}
else
{
	if(input[i]>(32361+offset0))
{
	if(input[i]==(32363+offset0))
{
	vR[i] = 32363;
}
else
{
	vR[i] = 32362;
}

}
else
{
	if(input[i]==(32361+offset0))
{
	vR[i] = 32361;
}
else
{
	vR[i] = 32360;
}

}

}

}
else
{
	if(input[i]>(32355+offset0))
{
	if(input[i]>(32357+offset0))
{
	if(input[i]==(32359+offset0))
{
	vR[i] = 32359;
}
else
{
	vR[i] = 32358;
}

}
else
{
	if(input[i]==(32357+offset0))
{
	vR[i] = 32357;
}
else
{
	vR[i] = 32356;
}

}

}
else
{
	if(input[i]>(32353+offset0))
{
	if(input[i]==(32355+offset0))
{
	vR[i] = 32355;
}
else
{
	vR[i] = 32354;
}

}
else
{
	if(input[i]==(32353+offset0))
{
	vR[i] = 32353;
}
else
{
	vR[i] = 32352;
}

}

}

}

}

}
else
{
	if(input[i]>(32335+offset0))
{
	if(input[i]>(32343+offset0))
{
	if(input[i]>(32347+offset0))
{
	if(input[i]>(32349+offset0))
{
	if(input[i]==(32351+offset0))
{
	vR[i] = 32351;
}
else
{
	vR[i] = 32350;
}

}
else
{
	if(input[i]==(32349+offset0))
{
	vR[i] = 32349;
}
else
{
	vR[i] = 32348;
}

}

}
else
{
	if(input[i]>(32345+offset0))
{
	if(input[i]==(32347+offset0))
{
	vR[i] = 32347;
}
else
{
	vR[i] = 32346;
}

}
else
{
	if(input[i]==(32345+offset0))
{
	vR[i] = 32345;
}
else
{
	vR[i] = 32344;
}

}

}

}
else
{
	if(input[i]>(32339+offset0))
{
	if(input[i]>(32341+offset0))
{
	if(input[i]==(32343+offset0))
{
	vR[i] = 32343;
}
else
{
	vR[i] = 32342;
}

}
else
{
	if(input[i]==(32341+offset0))
{
	vR[i] = 32341;
}
else
{
	vR[i] = 32340;
}

}

}
else
{
	if(input[i]>(32337+offset0))
{
	if(input[i]==(32339+offset0))
{
	vR[i] = 32339;
}
else
{
	vR[i] = 32338;
}

}
else
{
	if(input[i]==(32337+offset0))
{
	vR[i] = 32337;
}
else
{
	vR[i] = 32336;
}

}

}

}

}
else
{
	if(input[i]>(32327+offset0))
{
	if(input[i]>(32331+offset0))
{
	if(input[i]>(32333+offset0))
{
	if(input[i]==(32335+offset0))
{
	vR[i] = 32335;
}
else
{
	vR[i] = 32334;
}

}
else
{
	if(input[i]==(32333+offset0))
{
	vR[i] = 32333;
}
else
{
	vR[i] = 32332;
}

}

}
else
{
	if(input[i]>(32329+offset0))
{
	if(input[i]==(32331+offset0))
{
	vR[i] = 32331;
}
else
{
	vR[i] = 32330;
}

}
else
{
	if(input[i]==(32329+offset0))
{
	vR[i] = 32329;
}
else
{
	vR[i] = 32328;
}

}

}

}
else
{
	if(input[i]>(32323+offset0))
{
	if(input[i]>(32325+offset0))
{
	if(input[i]==(32327+offset0))
{
	vR[i] = 32327;
}
else
{
	vR[i] = 32326;
}

}
else
{
	if(input[i]==(32325+offset0))
{
	vR[i] = 32325;
}
else
{
	vR[i] = 32324;
}

}

}
else
{
	if(input[i]>(32321+offset0))
{
	if(input[i]==(32323+offset0))
{
	vR[i] = 32323;
}
else
{
	vR[i] = 32322;
}

}
else
{
	if(input[i]==(32321+offset0))
{
	vR[i] = 32321;
}
else
{
	vR[i] = 32320;
}

}

}

}

}

}

}
else
{
	if(input[i]>(32287+offset0))
{
	if(input[i]>(32303+offset0))
{
	if(input[i]>(32311+offset0))
{
	if(input[i]>(32315+offset0))
{
	if(input[i]>(32317+offset0))
{
	if(input[i]==(32319+offset0))
{
	vR[i] = 32319;
}
else
{
	vR[i] = 32318;
}

}
else
{
	if(input[i]==(32317+offset0))
{
	vR[i] = 32317;
}
else
{
	vR[i] = 32316;
}

}

}
else
{
	if(input[i]>(32313+offset0))
{
	if(input[i]==(32315+offset0))
{
	vR[i] = 32315;
}
else
{
	vR[i] = 32314;
}

}
else
{
	if(input[i]==(32313+offset0))
{
	vR[i] = 32313;
}
else
{
	vR[i] = 32312;
}

}

}

}
else
{
	if(input[i]>(32307+offset0))
{
	if(input[i]>(32309+offset0))
{
	if(input[i]==(32311+offset0))
{
	vR[i] = 32311;
}
else
{
	vR[i] = 32310;
}

}
else
{
	if(input[i]==(32309+offset0))
{
	vR[i] = 32309;
}
else
{
	vR[i] = 32308;
}

}

}
else
{
	if(input[i]>(32305+offset0))
{
	if(input[i]==(32307+offset0))
{
	vR[i] = 32307;
}
else
{
	vR[i] = 32306;
}

}
else
{
	if(input[i]==(32305+offset0))
{
	vR[i] = 32305;
}
else
{
	vR[i] = 32304;
}

}

}

}

}
else
{
	if(input[i]>(32295+offset0))
{
	if(input[i]>(32299+offset0))
{
	if(input[i]>(32301+offset0))
{
	if(input[i]==(32303+offset0))
{
	vR[i] = 32303;
}
else
{
	vR[i] = 32302;
}

}
else
{
	if(input[i]==(32301+offset0))
{
	vR[i] = 32301;
}
else
{
	vR[i] = 32300;
}

}

}
else
{
	if(input[i]>(32297+offset0))
{
	if(input[i]==(32299+offset0))
{
	vR[i] = 32299;
}
else
{
	vR[i] = 32298;
}

}
else
{
	if(input[i]==(32297+offset0))
{
	vR[i] = 32297;
}
else
{
	vR[i] = 32296;
}

}

}

}
else
{
	if(input[i]>(32291+offset0))
{
	if(input[i]>(32293+offset0))
{
	if(input[i]==(32295+offset0))
{
	vR[i] = 32295;
}
else
{
	vR[i] = 32294;
}

}
else
{
	if(input[i]==(32293+offset0))
{
	vR[i] = 32293;
}
else
{
	vR[i] = 32292;
}

}

}
else
{
	if(input[i]>(32289+offset0))
{
	if(input[i]==(32291+offset0))
{
	vR[i] = 32291;
}
else
{
	vR[i] = 32290;
}

}
else
{
	if(input[i]==(32289+offset0))
{
	vR[i] = 32289;
}
else
{
	vR[i] = 32288;
}

}

}

}

}

}
else
{
	if(input[i]>(32271+offset0))
{
	if(input[i]>(32279+offset0))
{
	if(input[i]>(32283+offset0))
{
	if(input[i]>(32285+offset0))
{
	if(input[i]==(32287+offset0))
{
	vR[i] = 32287;
}
else
{
	vR[i] = 32286;
}

}
else
{
	if(input[i]==(32285+offset0))
{
	vR[i] = 32285;
}
else
{
	vR[i] = 32284;
}

}

}
else
{
	if(input[i]>(32281+offset0))
{
	if(input[i]==(32283+offset0))
{
	vR[i] = 32283;
}
else
{
	vR[i] = 32282;
}

}
else
{
	if(input[i]==(32281+offset0))
{
	vR[i] = 32281;
}
else
{
	vR[i] = 32280;
}

}

}

}
else
{
	if(input[i]>(32275+offset0))
{
	if(input[i]>(32277+offset0))
{
	if(input[i]==(32279+offset0))
{
	vR[i] = 32279;
}
else
{
	vR[i] = 32278;
}

}
else
{
	if(input[i]==(32277+offset0))
{
	vR[i] = 32277;
}
else
{
	vR[i] = 32276;
}

}

}
else
{
	if(input[i]>(32273+offset0))
{
	if(input[i]==(32275+offset0))
{
	vR[i] = 32275;
}
else
{
	vR[i] = 32274;
}

}
else
{
	if(input[i]==(32273+offset0))
{
	vR[i] = 32273;
}
else
{
	vR[i] = 32272;
}

}

}

}

}
else
{
	if(input[i]>(32263+offset0))
{
	if(input[i]>(32267+offset0))
{
	if(input[i]>(32269+offset0))
{
	if(input[i]==(32271+offset0))
{
	vR[i] = 32271;
}
else
{
	vR[i] = 32270;
}

}
else
{
	if(input[i]==(32269+offset0))
{
	vR[i] = 32269;
}
else
{
	vR[i] = 32268;
}

}

}
else
{
	if(input[i]>(32265+offset0))
{
	if(input[i]==(32267+offset0))
{
	vR[i] = 32267;
}
else
{
	vR[i] = 32266;
}

}
else
{
	if(input[i]==(32265+offset0))
{
	vR[i] = 32265;
}
else
{
	vR[i] = 32264;
}

}

}

}
else
{
	if(input[i]>(32259+offset0))
{
	if(input[i]>(32261+offset0))
{
	if(input[i]==(32263+offset0))
{
	vR[i] = 32263;
}
else
{
	vR[i] = 32262;
}

}
else
{
	if(input[i]==(32261+offset0))
{
	vR[i] = 32261;
}
else
{
	vR[i] = 32260;
}

}

}
else
{
	if(input[i]>(32257+offset0))
{
	if(input[i]==(32259+offset0))
{
	vR[i] = 32259;
}
else
{
	vR[i] = 32258;
}

}
else
{
	if(input[i]==(32257+offset0))
{
	vR[i] = 32257;
}
else
{
	vR[i] = 32256;
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
	if(input[i]>(31999+offset0))
{
	if(input[i]>(32127+offset0))
{
	if(input[i]>(32191+offset0))
{
	if(input[i]>(32223+offset0))
{
	if(input[i]>(32239+offset0))
{
	if(input[i]>(32247+offset0))
{
	if(input[i]>(32251+offset0))
{
	if(input[i]>(32253+offset0))
{
	if(input[i]==(32255+offset0))
{
	vR[i] = 32255;
}
else
{
	vR[i] = 32254;
}

}
else
{
	if(input[i]==(32253+offset0))
{
	vR[i] = 32253;
}
else
{
	vR[i] = 32252;
}

}

}
else
{
	if(input[i]>(32249+offset0))
{
	if(input[i]==(32251+offset0))
{
	vR[i] = 32251;
}
else
{
	vR[i] = 32250;
}

}
else
{
	if(input[i]==(32249+offset0))
{
	vR[i] = 32249;
}
else
{
	vR[i] = 32248;
}

}

}

}
else
{
	if(input[i]>(32243+offset0))
{
	if(input[i]>(32245+offset0))
{
	if(input[i]==(32247+offset0))
{
	vR[i] = 32247;
}
else
{
	vR[i] = 32246;
}

}
else
{
	if(input[i]==(32245+offset0))
{
	vR[i] = 32245;
}
else
{
	vR[i] = 32244;
}

}

}
else
{
	if(input[i]>(32241+offset0))
{
	if(input[i]==(32243+offset0))
{
	vR[i] = 32243;
}
else
{
	vR[i] = 32242;
}

}
else
{
	if(input[i]==(32241+offset0))
{
	vR[i] = 32241;
}
else
{
	vR[i] = 32240;
}

}

}

}

}
else
{
	if(input[i]>(32231+offset0))
{
	if(input[i]>(32235+offset0))
{
	if(input[i]>(32237+offset0))
{
	if(input[i]==(32239+offset0))
{
	vR[i] = 32239;
}
else
{
	vR[i] = 32238;
}

}
else
{
	if(input[i]==(32237+offset0))
{
	vR[i] = 32237;
}
else
{
	vR[i] = 32236;
}

}

}
else
{
	if(input[i]>(32233+offset0))
{
	if(input[i]==(32235+offset0))
{
	vR[i] = 32235;
}
else
{
	vR[i] = 32234;
}

}
else
{
	if(input[i]==(32233+offset0))
{
	vR[i] = 32233;
}
else
{
	vR[i] = 32232;
}

}

}

}
else
{
	if(input[i]>(32227+offset0))
{
	if(input[i]>(32229+offset0))
{
	if(input[i]==(32231+offset0))
{
	vR[i] = 32231;
}
else
{
	vR[i] = 32230;
}

}
else
{
	if(input[i]==(32229+offset0))
{
	vR[i] = 32229;
}
else
{
	vR[i] = 32228;
}

}

}
else
{
	if(input[i]>(32225+offset0))
{
	if(input[i]==(32227+offset0))
{
	vR[i] = 32227;
}
else
{
	vR[i] = 32226;
}

}
else
{
	if(input[i]==(32225+offset0))
{
	vR[i] = 32225;
}
else
{
	vR[i] = 32224;
}

}

}

}

}

}
else
{
	if(input[i]>(32207+offset0))
{
	if(input[i]>(32215+offset0))
{
	if(input[i]>(32219+offset0))
{
	if(input[i]>(32221+offset0))
{
	if(input[i]==(32223+offset0))
{
	vR[i] = 32223;
}
else
{
	vR[i] = 32222;
}

}
else
{
	if(input[i]==(32221+offset0))
{
	vR[i] = 32221;
}
else
{
	vR[i] = 32220;
}

}

}
else
{
	if(input[i]>(32217+offset0))
{
	if(input[i]==(32219+offset0))
{
	vR[i] = 32219;
}
else
{
	vR[i] = 32218;
}

}
else
{
	if(input[i]==(32217+offset0))
{
	vR[i] = 32217;
}
else
{
	vR[i] = 32216;
}

}

}

}
else
{
	if(input[i]>(32211+offset0))
{
	if(input[i]>(32213+offset0))
{
	if(input[i]==(32215+offset0))
{
	vR[i] = 32215;
}
else
{
	vR[i] = 32214;
}

}
else
{
	if(input[i]==(32213+offset0))
{
	vR[i] = 32213;
}
else
{
	vR[i] = 32212;
}

}

}
else
{
	if(input[i]>(32209+offset0))
{
	if(input[i]==(32211+offset0))
{
	vR[i] = 32211;
}
else
{
	vR[i] = 32210;
}

}
else
{
	if(input[i]==(32209+offset0))
{
	vR[i] = 32209;
}
else
{
	vR[i] = 32208;
}

}

}

}

}
else
{
	if(input[i]>(32199+offset0))
{
	if(input[i]>(32203+offset0))
{
	if(input[i]>(32205+offset0))
{
	if(input[i]==(32207+offset0))
{
	vR[i] = 32207;
}
else
{
	vR[i] = 32206;
}

}
else
{
	if(input[i]==(32205+offset0))
{
	vR[i] = 32205;
}
else
{
	vR[i] = 32204;
}

}

}
else
{
	if(input[i]>(32201+offset0))
{
	if(input[i]==(32203+offset0))
{
	vR[i] = 32203;
}
else
{
	vR[i] = 32202;
}

}
else
{
	if(input[i]==(32201+offset0))
{
	vR[i] = 32201;
}
else
{
	vR[i] = 32200;
}

}

}

}
else
{
	if(input[i]>(32195+offset0))
{
	if(input[i]>(32197+offset0))
{
	if(input[i]==(32199+offset0))
{
	vR[i] = 32199;
}
else
{
	vR[i] = 32198;
}

}
else
{
	if(input[i]==(32197+offset0))
{
	vR[i] = 32197;
}
else
{
	vR[i] = 32196;
}

}

}
else
{
	if(input[i]>(32193+offset0))
{
	if(input[i]==(32195+offset0))
{
	vR[i] = 32195;
}
else
{
	vR[i] = 32194;
}

}
else
{
	if(input[i]==(32193+offset0))
{
	vR[i] = 32193;
}
else
{
	vR[i] = 32192;
}

}

}

}

}

}

}
else
{
	if(input[i]>(32159+offset0))
{
	if(input[i]>(32175+offset0))
{
	if(input[i]>(32183+offset0))
{
	if(input[i]>(32187+offset0))
{
	if(input[i]>(32189+offset0))
{
	if(input[i]==(32191+offset0))
{
	vR[i] = 32191;
}
else
{
	vR[i] = 32190;
}

}
else
{
	if(input[i]==(32189+offset0))
{
	vR[i] = 32189;
}
else
{
	vR[i] = 32188;
}

}

}
else
{
	if(input[i]>(32185+offset0))
{
	if(input[i]==(32187+offset0))
{
	vR[i] = 32187;
}
else
{
	vR[i] = 32186;
}

}
else
{
	if(input[i]==(32185+offset0))
{
	vR[i] = 32185;
}
else
{
	vR[i] = 32184;
}

}

}

}
else
{
	if(input[i]>(32179+offset0))
{
	if(input[i]>(32181+offset0))
{
	if(input[i]==(32183+offset0))
{
	vR[i] = 32183;
}
else
{
	vR[i] = 32182;
}

}
else
{
	if(input[i]==(32181+offset0))
{
	vR[i] = 32181;
}
else
{
	vR[i] = 32180;
}

}

}
else
{
	if(input[i]>(32177+offset0))
{
	if(input[i]==(32179+offset0))
{
	vR[i] = 32179;
}
else
{
	vR[i] = 32178;
}

}
else
{
	if(input[i]==(32177+offset0))
{
	vR[i] = 32177;
}
else
{
	vR[i] = 32176;
}

}

}

}

}
else
{
	if(input[i]>(32167+offset0))
{
	if(input[i]>(32171+offset0))
{
	if(input[i]>(32173+offset0))
{
	if(input[i]==(32175+offset0))
{
	vR[i] = 32175;
}
else
{
	vR[i] = 32174;
}

}
else
{
	if(input[i]==(32173+offset0))
{
	vR[i] = 32173;
}
else
{
	vR[i] = 32172;
}

}

}
else
{
	if(input[i]>(32169+offset0))
{
	if(input[i]==(32171+offset0))
{
	vR[i] = 32171;
}
else
{
	vR[i] = 32170;
}

}
else
{
	if(input[i]==(32169+offset0))
{
	vR[i] = 32169;
}
else
{
	vR[i] = 32168;
}

}

}

}
else
{
	if(input[i]>(32163+offset0))
{
	if(input[i]>(32165+offset0))
{
	if(input[i]==(32167+offset0))
{
	vR[i] = 32167;
}
else
{
	vR[i] = 32166;
}

}
else
{
	if(input[i]==(32165+offset0))
{
	vR[i] = 32165;
}
else
{
	vR[i] = 32164;
}

}

}
else
{
	if(input[i]>(32161+offset0))
{
	if(input[i]==(32163+offset0))
{
	vR[i] = 32163;
}
else
{
	vR[i] = 32162;
}

}
else
{
	if(input[i]==(32161+offset0))
{
	vR[i] = 32161;
}
else
{
	vR[i] = 32160;
}

}

}

}

}

}
else
{
	if(input[i]>(32143+offset0))
{
	if(input[i]>(32151+offset0))
{
	if(input[i]>(32155+offset0))
{
	if(input[i]>(32157+offset0))
{
	if(input[i]==(32159+offset0))
{
	vR[i] = 32159;
}
else
{
	vR[i] = 32158;
}

}
else
{
	if(input[i]==(32157+offset0))
{
	vR[i] = 32157;
}
else
{
	vR[i] = 32156;
}

}

}
else
{
	if(input[i]>(32153+offset0))
{
	if(input[i]==(32155+offset0))
{
	vR[i] = 32155;
}
else
{
	vR[i] = 32154;
}

}
else
{
	if(input[i]==(32153+offset0))
{
	vR[i] = 32153;
}
else
{
	vR[i] = 32152;
}

}

}

}
else
{
	if(input[i]>(32147+offset0))
{
	if(input[i]>(32149+offset0))
{
	if(input[i]==(32151+offset0))
{
	vR[i] = 32151;
}
else
{
	vR[i] = 32150;
}

}
else
{
	if(input[i]==(32149+offset0))
{
	vR[i] = 32149;
}
else
{
	vR[i] = 32148;
}

}

}
else
{
	if(input[i]>(32145+offset0))
{
	if(input[i]==(32147+offset0))
{
	vR[i] = 32147;
}
else
{
	vR[i] = 32146;
}

}
else
{
	if(input[i]==(32145+offset0))
{
	vR[i] = 32145;
}
else
{
	vR[i] = 32144;
}

}

}

}

}
else
{
	if(input[i]>(32135+offset0))
{
	if(input[i]>(32139+offset0))
{
	if(input[i]>(32141+offset0))
{
	if(input[i]==(32143+offset0))
{
	vR[i] = 32143;
}
else
{
	vR[i] = 32142;
}

}
else
{
	if(input[i]==(32141+offset0))
{
	vR[i] = 32141;
}
else
{
	vR[i] = 32140;
}

}

}
else
{
	if(input[i]>(32137+offset0))
{
	if(input[i]==(32139+offset0))
{
	vR[i] = 32139;
}
else
{
	vR[i] = 32138;
}

}
else
{
	if(input[i]==(32137+offset0))
{
	vR[i] = 32137;
}
else
{
	vR[i] = 32136;
}

}

}

}
else
{
	if(input[i]>(32131+offset0))
{
	if(input[i]>(32133+offset0))
{
	if(input[i]==(32135+offset0))
{
	vR[i] = 32135;
}
else
{
	vR[i] = 32134;
}

}
else
{
	if(input[i]==(32133+offset0))
{
	vR[i] = 32133;
}
else
{
	vR[i] = 32132;
}

}

}
else
{
	if(input[i]>(32129+offset0))
{
	if(input[i]==(32131+offset0))
{
	vR[i] = 32131;
}
else
{
	vR[i] = 32130;
}

}
else
{
	if(input[i]==(32129+offset0))
{
	vR[i] = 32129;
}
else
{
	vR[i] = 32128;
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
	if(input[i]>(32063+offset0))
{
	if(input[i]>(32095+offset0))
{
	if(input[i]>(32111+offset0))
{
	if(input[i]>(32119+offset0))
{
	if(input[i]>(32123+offset0))
{
	if(input[i]>(32125+offset0))
{
	if(input[i]==(32127+offset0))
{
	vR[i] = 32127;
}
else
{
	vR[i] = 32126;
}

}
else
{
	if(input[i]==(32125+offset0))
{
	vR[i] = 32125;
}
else
{
	vR[i] = 32124;
}

}

}
else
{
	if(input[i]>(32121+offset0))
{
	if(input[i]==(32123+offset0))
{
	vR[i] = 32123;
}
else
{
	vR[i] = 32122;
}

}
else
{
	if(input[i]==(32121+offset0))
{
	vR[i] = 32121;
}
else
{
	vR[i] = 32120;
}

}

}

}
else
{
	if(input[i]>(32115+offset0))
{
	if(input[i]>(32117+offset0))
{
	if(input[i]==(32119+offset0))
{
	vR[i] = 32119;
}
else
{
	vR[i] = 32118;
}

}
else
{
	if(input[i]==(32117+offset0))
{
	vR[i] = 32117;
}
else
{
	vR[i] = 32116;
}

}

}
else
{
	if(input[i]>(32113+offset0))
{
	if(input[i]==(32115+offset0))
{
	vR[i] = 32115;
}
else
{
	vR[i] = 32114;
}

}
else
{
	if(input[i]==(32113+offset0))
{
	vR[i] = 32113;
}
else
{
	vR[i] = 32112;
}

}

}

}

}
else
{
	if(input[i]>(32103+offset0))
{
	if(input[i]>(32107+offset0))
{
	if(input[i]>(32109+offset0))
{
	if(input[i]==(32111+offset0))
{
	vR[i] = 32111;
}
else
{
	vR[i] = 32110;
}

}
else
{
	if(input[i]==(32109+offset0))
{
	vR[i] = 32109;
}
else
{
	vR[i] = 32108;
}

}

}
else
{
	if(input[i]>(32105+offset0))
{
	if(input[i]==(32107+offset0))
{
	vR[i] = 32107;
}
else
{
	vR[i] = 32106;
}

}
else
{
	if(input[i]==(32105+offset0))
{
	vR[i] = 32105;
}
else
{
	vR[i] = 32104;
}

}

}

}
else
{
	if(input[i]>(32099+offset0))
{
	if(input[i]>(32101+offset0))
{
	if(input[i]==(32103+offset0))
{
	vR[i] = 32103;
}
else
{
	vR[i] = 32102;
}

}
else
{
	if(input[i]==(32101+offset0))
{
	vR[i] = 32101;
}
else
{
	vR[i] = 32100;
}

}

}
else
{
	if(input[i]>(32097+offset0))
{
	if(input[i]==(32099+offset0))
{
	vR[i] = 32099;
}
else
{
	vR[i] = 32098;
}

}
else
{
	if(input[i]==(32097+offset0))
{
	vR[i] = 32097;
}
else
{
	vR[i] = 32096;
}

}

}

}

}

}
else
{
	if(input[i]>(32079+offset0))
{
	if(input[i]>(32087+offset0))
{
	if(input[i]>(32091+offset0))
{
	if(input[i]>(32093+offset0))
{
	if(input[i]==(32095+offset0))
{
	vR[i] = 32095;
}
else
{
	vR[i] = 32094;
}

}
else
{
	if(input[i]==(32093+offset0))
{
	vR[i] = 32093;
}
else
{
	vR[i] = 32092;
}

}

}
else
{
	if(input[i]>(32089+offset0))
{
	if(input[i]==(32091+offset0))
{
	vR[i] = 32091;
}
else
{
	vR[i] = 32090;
}

}
else
{
	if(input[i]==(32089+offset0))
{
	vR[i] = 32089;
}
else
{
	vR[i] = 32088;
}

}

}

}
else
{
	if(input[i]>(32083+offset0))
{
	if(input[i]>(32085+offset0))
{
	if(input[i]==(32087+offset0))
{
	vR[i] = 32087;
}
else
{
	vR[i] = 32086;
}

}
else
{
	if(input[i]==(32085+offset0))
{
	vR[i] = 32085;
}
else
{
	vR[i] = 32084;
}

}

}
else
{
	if(input[i]>(32081+offset0))
{
	if(input[i]==(32083+offset0))
{
	vR[i] = 32083;
}
else
{
	vR[i] = 32082;
}

}
else
{
	if(input[i]==(32081+offset0))
{
	vR[i] = 32081;
}
else
{
	vR[i] = 32080;
}

}

}

}

}
else
{
	if(input[i]>(32071+offset0))
{
	if(input[i]>(32075+offset0))
{
	if(input[i]>(32077+offset0))
{
	if(input[i]==(32079+offset0))
{
	vR[i] = 32079;
}
else
{
	vR[i] = 32078;
}

}
else
{
	if(input[i]==(32077+offset0))
{
	vR[i] = 32077;
}
else
{
	vR[i] = 32076;
}

}

}
else
{
	if(input[i]>(32073+offset0))
{
	if(input[i]==(32075+offset0))
{
	vR[i] = 32075;
}
else
{
	vR[i] = 32074;
}

}
else
{
	if(input[i]==(32073+offset0))
{
	vR[i] = 32073;
}
else
{
	vR[i] = 32072;
}

}

}

}
else
{
	if(input[i]>(32067+offset0))
{
	if(input[i]>(32069+offset0))
{
	if(input[i]==(32071+offset0))
{
	vR[i] = 32071;
}
else
{
	vR[i] = 32070;
}

}
else
{
	if(input[i]==(32069+offset0))
{
	vR[i] = 32069;
}
else
{
	vR[i] = 32068;
}

}

}
else
{
	if(input[i]>(32065+offset0))
{
	if(input[i]==(32067+offset0))
{
	vR[i] = 32067;
}
else
{
	vR[i] = 32066;
}

}
else
{
	if(input[i]==(32065+offset0))
{
	vR[i] = 32065;
}
else
{
	vR[i] = 32064;
}

}

}

}

}

}

}
else
{
	if(input[i]>(32031+offset0))
{
	if(input[i]>(32047+offset0))
{
	if(input[i]>(32055+offset0))
{
	if(input[i]>(32059+offset0))
{
	if(input[i]>(32061+offset0))
{
	if(input[i]==(32063+offset0))
{
	vR[i] = 32063;
}
else
{
	vR[i] = 32062;
}

}
else
{
	if(input[i]==(32061+offset0))
{
	vR[i] = 32061;
}
else
{
	vR[i] = 32060;
}

}

}
else
{
	if(input[i]>(32057+offset0))
{
	if(input[i]==(32059+offset0))
{
	vR[i] = 32059;
}
else
{
	vR[i] = 32058;
}

}
else
{
	if(input[i]==(32057+offset0))
{
	vR[i] = 32057;
}
else
{
	vR[i] = 32056;
}

}

}

}
else
{
	if(input[i]>(32051+offset0))
{
	if(input[i]>(32053+offset0))
{
	if(input[i]==(32055+offset0))
{
	vR[i] = 32055;
}
else
{
	vR[i] = 32054;
}

}
else
{
	if(input[i]==(32053+offset0))
{
	vR[i] = 32053;
}
else
{
	vR[i] = 32052;
}

}

}
else
{
	if(input[i]>(32049+offset0))
{
	if(input[i]==(32051+offset0))
{
	vR[i] = 32051;
}
else
{
	vR[i] = 32050;
}

}
else
{
	if(input[i]==(32049+offset0))
{
	vR[i] = 32049;
}
else
{
	vR[i] = 32048;
}

}

}

}

}
else
{
	if(input[i]>(32039+offset0))
{
	if(input[i]>(32043+offset0))
{
	if(input[i]>(32045+offset0))
{
	if(input[i]==(32047+offset0))
{
	vR[i] = 32047;
}
else
{
	vR[i] = 32046;
}

}
else
{
	if(input[i]==(32045+offset0))
{
	vR[i] = 32045;
}
else
{
	vR[i] = 32044;
}

}

}
else
{
	if(input[i]>(32041+offset0))
{
	if(input[i]==(32043+offset0))
{
	vR[i] = 32043;
}
else
{
	vR[i] = 32042;
}

}
else
{
	if(input[i]==(32041+offset0))
{
	vR[i] = 32041;
}
else
{
	vR[i] = 32040;
}

}

}

}
else
{
	if(input[i]>(32035+offset0))
{
	if(input[i]>(32037+offset0))
{
	if(input[i]==(32039+offset0))
{
	vR[i] = 32039;
}
else
{
	vR[i] = 32038;
}

}
else
{
	if(input[i]==(32037+offset0))
{
	vR[i] = 32037;
}
else
{
	vR[i] = 32036;
}

}

}
else
{
	if(input[i]>(32033+offset0))
{
	if(input[i]==(32035+offset0))
{
	vR[i] = 32035;
}
else
{
	vR[i] = 32034;
}

}
else
{
	if(input[i]==(32033+offset0))
{
	vR[i] = 32033;
}
else
{
	vR[i] = 32032;
}

}

}

}

}

}
else
{
	if(input[i]>(32015+offset0))
{
	if(input[i]>(32023+offset0))
{
	if(input[i]>(32027+offset0))
{
	if(input[i]>(32029+offset0))
{
	if(input[i]==(32031+offset0))
{
	vR[i] = 32031;
}
else
{
	vR[i] = 32030;
}

}
else
{
	if(input[i]==(32029+offset0))
{
	vR[i] = 32029;
}
else
{
	vR[i] = 32028;
}

}

}
else
{
	if(input[i]>(32025+offset0))
{
	if(input[i]==(32027+offset0))
{
	vR[i] = 32027;
}
else
{
	vR[i] = 32026;
}

}
else
{
	if(input[i]==(32025+offset0))
{
	vR[i] = 32025;
}
else
{
	vR[i] = 32024;
}

}

}

}
else
{
	if(input[i]>(32019+offset0))
{
	if(input[i]>(32021+offset0))
{
	if(input[i]==(32023+offset0))
{
	vR[i] = 32023;
}
else
{
	vR[i] = 32022;
}

}
else
{
	if(input[i]==(32021+offset0))
{
	vR[i] = 32021;
}
else
{
	vR[i] = 32020;
}

}

}
else
{
	if(input[i]>(32017+offset0))
{
	if(input[i]==(32019+offset0))
{
	vR[i] = 32019;
}
else
{
	vR[i] = 32018;
}

}
else
{
	if(input[i]==(32017+offset0))
{
	vR[i] = 32017;
}
else
{
	vR[i] = 32016;
}

}

}

}

}
else
{
	if(input[i]>(32007+offset0))
{
	if(input[i]>(32011+offset0))
{
	if(input[i]>(32013+offset0))
{
	if(input[i]==(32015+offset0))
{
	vR[i] = 32015;
}
else
{
	vR[i] = 32014;
}

}
else
{
	if(input[i]==(32013+offset0))
{
	vR[i] = 32013;
}
else
{
	vR[i] = 32012;
}

}

}
else
{
	if(input[i]>(32009+offset0))
{
	if(input[i]==(32011+offset0))
{
	vR[i] = 32011;
}
else
{
	vR[i] = 32010;
}

}
else
{
	if(input[i]==(32009+offset0))
{
	vR[i] = 32009;
}
else
{
	vR[i] = 32008;
}

}

}

}
else
{
	if(input[i]>(32003+offset0))
{
	if(input[i]>(32005+offset0))
{
	if(input[i]==(32007+offset0))
{
	vR[i] = 32007;
}
else
{
	vR[i] = 32006;
}

}
else
{
	if(input[i]==(32005+offset0))
{
	vR[i] = 32005;
}
else
{
	vR[i] = 32004;
}

}

}
else
{
	if(input[i]>(32001+offset0))
{
	if(input[i]==(32003+offset0))
{
	vR[i] = 32003;
}
else
{
	vR[i] = 32002;
}

}
else
{
	if(input[i]==(32001+offset0))
{
	vR[i] = 32001;
}
else
{
	vR[i] = 32000;
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
	if(input[i]>(31871+offset0))
{
	if(input[i]>(31935+offset0))
{
	if(input[i]>(31967+offset0))
{
	if(input[i]>(31983+offset0))
{
	if(input[i]>(31991+offset0))
{
	if(input[i]>(31995+offset0))
{
	if(input[i]>(31997+offset0))
{
	if(input[i]==(31999+offset0))
{
	vR[i] = 31999;
}
else
{
	vR[i] = 31998;
}

}
else
{
	if(input[i]==(31997+offset0))
{
	vR[i] = 31997;
}
else
{
	vR[i] = 31996;
}

}

}
else
{
	if(input[i]>(31993+offset0))
{
	if(input[i]==(31995+offset0))
{
	vR[i] = 31995;
}
else
{
	vR[i] = 31994;
}

}
else
{
	if(input[i]==(31993+offset0))
{
	vR[i] = 31993;
}
else
{
	vR[i] = 31992;
}

}

}

}
else
{
	if(input[i]>(31987+offset0))
{
	if(input[i]>(31989+offset0))
{
	if(input[i]==(31991+offset0))
{
	vR[i] = 31991;
}
else
{
	vR[i] = 31990;
}

}
else
{
	if(input[i]==(31989+offset0))
{
	vR[i] = 31989;
}
else
{
	vR[i] = 31988;
}

}

}
else
{
	if(input[i]>(31985+offset0))
{
	if(input[i]==(31987+offset0))
{
	vR[i] = 31987;
}
else
{
	vR[i] = 31986;
}

}
else
{
	if(input[i]==(31985+offset0))
{
	vR[i] = 31985;
}
else
{
	vR[i] = 31984;
}

}

}

}

}
else
{
	if(input[i]>(31975+offset0))
{
	if(input[i]>(31979+offset0))
{
	if(input[i]>(31981+offset0))
{
	if(input[i]==(31983+offset0))
{
	vR[i] = 31983;
}
else
{
	vR[i] = 31982;
}

}
else
{
	if(input[i]==(31981+offset0))
{
	vR[i] = 31981;
}
else
{
	vR[i] = 31980;
}

}

}
else
{
	if(input[i]>(31977+offset0))
{
	if(input[i]==(31979+offset0))
{
	vR[i] = 31979;
}
else
{
	vR[i] = 31978;
}

}
else
{
	if(input[i]==(31977+offset0))
{
	vR[i] = 31977;
}
else
{
	vR[i] = 31976;
}

}

}

}
else
{
	if(input[i]>(31971+offset0))
{
	if(input[i]>(31973+offset0))
{
	if(input[i]==(31975+offset0))
{
	vR[i] = 31975;
}
else
{
	vR[i] = 31974;
}

}
else
{
	if(input[i]==(31973+offset0))
{
	vR[i] = 31973;
}
else
{
	vR[i] = 31972;
}

}

}
else
{
	if(input[i]>(31969+offset0))
{
	if(input[i]==(31971+offset0))
{
	vR[i] = 31971;
}
else
{
	vR[i] = 31970;
}

}
else
{
	if(input[i]==(31969+offset0))
{
	vR[i] = 31969;
}
else
{
	vR[i] = 31968;
}

}

}

}

}

}
else
{
	if(input[i]>(31951+offset0))
{
	if(input[i]>(31959+offset0))
{
	if(input[i]>(31963+offset0))
{
	if(input[i]>(31965+offset0))
{
	if(input[i]==(31967+offset0))
{
	vR[i] = 31967;
}
else
{
	vR[i] = 31966;
}

}
else
{
	if(input[i]==(31965+offset0))
{
	vR[i] = 31965;
}
else
{
	vR[i] = 31964;
}

}

}
else
{
	if(input[i]>(31961+offset0))
{
	if(input[i]==(31963+offset0))
{
	vR[i] = 31963;
}
else
{
	vR[i] = 31962;
}

}
else
{
	if(input[i]==(31961+offset0))
{
	vR[i] = 31961;
}
else
{
	vR[i] = 31960;
}

}

}

}
else
{
	if(input[i]>(31955+offset0))
{
	if(input[i]>(31957+offset0))
{
	if(input[i]==(31959+offset0))
{
	vR[i] = 31959;
}
else
{
	vR[i] = 31958;
}

}
else
{
	if(input[i]==(31957+offset0))
{
	vR[i] = 31957;
}
else
{
	vR[i] = 31956;
}

}

}
else
{
	if(input[i]>(31953+offset0))
{
	if(input[i]==(31955+offset0))
{
	vR[i] = 31955;
}
else
{
	vR[i] = 31954;
}

}
else
{
	if(input[i]==(31953+offset0))
{
	vR[i] = 31953;
}
else
{
	vR[i] = 31952;
}

}

}

}

}
else
{
	if(input[i]>(31943+offset0))
{
	if(input[i]>(31947+offset0))
{
	if(input[i]>(31949+offset0))
{
	if(input[i]==(31951+offset0))
{
	vR[i] = 31951;
}
else
{
	vR[i] = 31950;
}

}
else
{
	if(input[i]==(31949+offset0))
{
	vR[i] = 31949;
}
else
{
	vR[i] = 31948;
}

}

}
else
{
	if(input[i]>(31945+offset0))
{
	if(input[i]==(31947+offset0))
{
	vR[i] = 31947;
}
else
{
	vR[i] = 31946;
}

}
else
{
	if(input[i]==(31945+offset0))
{
	vR[i] = 31945;
}
else
{
	vR[i] = 31944;
}

}

}

}
else
{
	if(input[i]>(31939+offset0))
{
	if(input[i]>(31941+offset0))
{
	if(input[i]==(31943+offset0))
{
	vR[i] = 31943;
}
else
{
	vR[i] = 31942;
}

}
else
{
	if(input[i]==(31941+offset0))
{
	vR[i] = 31941;
}
else
{
	vR[i] = 31940;
}

}

}
else
{
	if(input[i]>(31937+offset0))
{
	if(input[i]==(31939+offset0))
{
	vR[i] = 31939;
}
else
{
	vR[i] = 31938;
}

}
else
{
	if(input[i]==(31937+offset0))
{
	vR[i] = 31937;
}
else
{
	vR[i] = 31936;
}

}

}

}

}

}

}
else
{
	if(input[i]>(31903+offset0))
{
	if(input[i]>(31919+offset0))
{
	if(input[i]>(31927+offset0))
{
	if(input[i]>(31931+offset0))
{
	if(input[i]>(31933+offset0))
{
	if(input[i]==(31935+offset0))
{
	vR[i] = 31935;
}
else
{
	vR[i] = 31934;
}

}
else
{
	if(input[i]==(31933+offset0))
{
	vR[i] = 31933;
}
else
{
	vR[i] = 31932;
}

}

}
else
{
	if(input[i]>(31929+offset0))
{
	if(input[i]==(31931+offset0))
{
	vR[i] = 31931;
}
else
{
	vR[i] = 31930;
}

}
else
{
	if(input[i]==(31929+offset0))
{
	vR[i] = 31929;
}
else
{
	vR[i] = 31928;
}

}

}

}
else
{
	if(input[i]>(31923+offset0))
{
	if(input[i]>(31925+offset0))
{
	if(input[i]==(31927+offset0))
{
	vR[i] = 31927;
}
else
{
	vR[i] = 31926;
}

}
else
{
	if(input[i]==(31925+offset0))
{
	vR[i] = 31925;
}
else
{
	vR[i] = 31924;
}

}

}
else
{
	if(input[i]>(31921+offset0))
{
	if(input[i]==(31923+offset0))
{
	vR[i] = 31923;
}
else
{
	vR[i] = 31922;
}

}
else
{
	if(input[i]==(31921+offset0))
{
	vR[i] = 31921;
}
else
{
	vR[i] = 31920;
}

}

}

}

}
else
{
	if(input[i]>(31911+offset0))
{
	if(input[i]>(31915+offset0))
{
	if(input[i]>(31917+offset0))
{
	if(input[i]==(31919+offset0))
{
	vR[i] = 31919;
}
else
{
	vR[i] = 31918;
}

}
else
{
	if(input[i]==(31917+offset0))
{
	vR[i] = 31917;
}
else
{
	vR[i] = 31916;
}

}

}
else
{
	if(input[i]>(31913+offset0))
{
	if(input[i]==(31915+offset0))
{
	vR[i] = 31915;
}
else
{
	vR[i] = 31914;
}

}
else
{
	if(input[i]==(31913+offset0))
{
	vR[i] = 31913;
}
else
{
	vR[i] = 31912;
}

}

}

}
else
{
	if(input[i]>(31907+offset0))
{
	if(input[i]>(31909+offset0))
{
	if(input[i]==(31911+offset0))
{
	vR[i] = 31911;
}
else
{
	vR[i] = 31910;
}

}
else
{
	if(input[i]==(31909+offset0))
{
	vR[i] = 31909;
}
else
{
	vR[i] = 31908;
}

}

}
else
{
	if(input[i]>(31905+offset0))
{
	if(input[i]==(31907+offset0))
{
	vR[i] = 31907;
}
else
{
	vR[i] = 31906;
}

}
else
{
	if(input[i]==(31905+offset0))
{
	vR[i] = 31905;
}
else
{
	vR[i] = 31904;
}

}

}

}

}

}
else
{
	if(input[i]>(31887+offset0))
{
	if(input[i]>(31895+offset0))
{
	if(input[i]>(31899+offset0))
{
	if(input[i]>(31901+offset0))
{
	if(input[i]==(31903+offset0))
{
	vR[i] = 31903;
}
else
{
	vR[i] = 31902;
}

}
else
{
	if(input[i]==(31901+offset0))
{
	vR[i] = 31901;
}
else
{
	vR[i] = 31900;
}

}

}
else
{
	if(input[i]>(31897+offset0))
{
	if(input[i]==(31899+offset0))
{
	vR[i] = 31899;
}
else
{
	vR[i] = 31898;
}

}
else
{
	if(input[i]==(31897+offset0))
{
	vR[i] = 31897;
}
else
{
	vR[i] = 31896;
}

}

}

}
else
{
	if(input[i]>(31891+offset0))
{
	if(input[i]>(31893+offset0))
{
	if(input[i]==(31895+offset0))
{
	vR[i] = 31895;
}
else
{
	vR[i] = 31894;
}

}
else
{
	if(input[i]==(31893+offset0))
{
	vR[i] = 31893;
}
else
{
	vR[i] = 31892;
}

}

}
else
{
	if(input[i]>(31889+offset0))
{
	if(input[i]==(31891+offset0))
{
	vR[i] = 31891;
}
else
{
	vR[i] = 31890;
}

}
else
{
	if(input[i]==(31889+offset0))
{
	vR[i] = 31889;
}
else
{
	vR[i] = 31888;
}

}

}

}

}
else
{
	if(input[i]>(31879+offset0))
{
	if(input[i]>(31883+offset0))
{
	if(input[i]>(31885+offset0))
{
	if(input[i]==(31887+offset0))
{
	vR[i] = 31887;
}
else
{
	vR[i] = 31886;
}

}
else
{
	if(input[i]==(31885+offset0))
{
	vR[i] = 31885;
}
else
{
	vR[i] = 31884;
}

}

}
else
{
	if(input[i]>(31881+offset0))
{
	if(input[i]==(31883+offset0))
{
	vR[i] = 31883;
}
else
{
	vR[i] = 31882;
}

}
else
{
	if(input[i]==(31881+offset0))
{
	vR[i] = 31881;
}
else
{
	vR[i] = 31880;
}

}

}

}
else
{
	if(input[i]>(31875+offset0))
{
	if(input[i]>(31877+offset0))
{
	if(input[i]==(31879+offset0))
{
	vR[i] = 31879;
}
else
{
	vR[i] = 31878;
}

}
else
{
	if(input[i]==(31877+offset0))
{
	vR[i] = 31877;
}
else
{
	vR[i] = 31876;
}

}

}
else
{
	if(input[i]>(31873+offset0))
{
	if(input[i]==(31875+offset0))
{
	vR[i] = 31875;
}
else
{
	vR[i] = 31874;
}

}
else
{
	if(input[i]==(31873+offset0))
{
	vR[i] = 31873;
}
else
{
	vR[i] = 31872;
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
	if(input[i]>(31807+offset0))
{
	if(input[i]>(31839+offset0))
{
	if(input[i]>(31855+offset0))
{
	if(input[i]>(31863+offset0))
{
	if(input[i]>(31867+offset0))
{
	if(input[i]>(31869+offset0))
{
	if(input[i]==(31871+offset0))
{
	vR[i] = 31871;
}
else
{
	vR[i] = 31870;
}

}
else
{
	if(input[i]==(31869+offset0))
{
	vR[i] = 31869;
}
else
{
	vR[i] = 31868;
}

}

}
else
{
	if(input[i]>(31865+offset0))
{
	if(input[i]==(31867+offset0))
{
	vR[i] = 31867;
}
else
{
	vR[i] = 31866;
}

}
else
{
	if(input[i]==(31865+offset0))
{
	vR[i] = 31865;
}
else
{
	vR[i] = 31864;
}

}

}

}
else
{
	if(input[i]>(31859+offset0))
{
	if(input[i]>(31861+offset0))
{
	if(input[i]==(31863+offset0))
{
	vR[i] = 31863;
}
else
{
	vR[i] = 31862;
}

}
else
{
	if(input[i]==(31861+offset0))
{
	vR[i] = 31861;
}
else
{
	vR[i] = 31860;
}

}

}
else
{
	if(input[i]>(31857+offset0))
{
	if(input[i]==(31859+offset0))
{
	vR[i] = 31859;
}
else
{
	vR[i] = 31858;
}

}
else
{
	if(input[i]==(31857+offset0))
{
	vR[i] = 31857;
}
else
{
	vR[i] = 31856;
}

}

}

}

}
else
{
	if(input[i]>(31847+offset0))
{
	if(input[i]>(31851+offset0))
{
	if(input[i]>(31853+offset0))
{
	if(input[i]==(31855+offset0))
{
	vR[i] = 31855;
}
else
{
	vR[i] = 31854;
}

}
else
{
	if(input[i]==(31853+offset0))
{
	vR[i] = 31853;
}
else
{
	vR[i] = 31852;
}

}

}
else
{
	if(input[i]>(31849+offset0))
{
	if(input[i]==(31851+offset0))
{
	vR[i] = 31851;
}
else
{
	vR[i] = 31850;
}

}
else
{
	if(input[i]==(31849+offset0))
{
	vR[i] = 31849;
}
else
{
	vR[i] = 31848;
}

}

}

}
else
{
	if(input[i]>(31843+offset0))
{
	if(input[i]>(31845+offset0))
{
	if(input[i]==(31847+offset0))
{
	vR[i] = 31847;
}
else
{
	vR[i] = 31846;
}

}
else
{
	if(input[i]==(31845+offset0))
{
	vR[i] = 31845;
}
else
{
	vR[i] = 31844;
}

}

}
else
{
	if(input[i]>(31841+offset0))
{
	if(input[i]==(31843+offset0))
{
	vR[i] = 31843;
}
else
{
	vR[i] = 31842;
}

}
else
{
	if(input[i]==(31841+offset0))
{
	vR[i] = 31841;
}
else
{
	vR[i] = 31840;
}

}

}

}

}

}
else
{
	if(input[i]>(31823+offset0))
{
	if(input[i]>(31831+offset0))
{
	if(input[i]>(31835+offset0))
{
	if(input[i]>(31837+offset0))
{
	if(input[i]==(31839+offset0))
{
	vR[i] = 31839;
}
else
{
	vR[i] = 31838;
}

}
else
{
	if(input[i]==(31837+offset0))
{
	vR[i] = 31837;
}
else
{
	vR[i] = 31836;
}

}

}
else
{
	if(input[i]>(31833+offset0))
{
	if(input[i]==(31835+offset0))
{
	vR[i] = 31835;
}
else
{
	vR[i] = 31834;
}

}
else
{
	if(input[i]==(31833+offset0))
{
	vR[i] = 31833;
}
else
{
	vR[i] = 31832;
}

}

}

}
else
{
	if(input[i]>(31827+offset0))
{
	if(input[i]>(31829+offset0))
{
	if(input[i]==(31831+offset0))
{
	vR[i] = 31831;
}
else
{
	vR[i] = 31830;
}

}
else
{
	if(input[i]==(31829+offset0))
{
	vR[i] = 31829;
}
else
{
	vR[i] = 31828;
}

}

}
else
{
	if(input[i]>(31825+offset0))
{
	if(input[i]==(31827+offset0))
{
	vR[i] = 31827;
}
else
{
	vR[i] = 31826;
}

}
else
{
	if(input[i]==(31825+offset0))
{
	vR[i] = 31825;
}
else
{
	vR[i] = 31824;
}

}

}

}

}
else
{
	if(input[i]>(31815+offset0))
{
	if(input[i]>(31819+offset0))
{
	if(input[i]>(31821+offset0))
{
	if(input[i]==(31823+offset0))
{
	vR[i] = 31823;
}
else
{
	vR[i] = 31822;
}

}
else
{
	if(input[i]==(31821+offset0))
{
	vR[i] = 31821;
}
else
{
	vR[i] = 31820;
}

}

}
else
{
	if(input[i]>(31817+offset0))
{
	if(input[i]==(31819+offset0))
{
	vR[i] = 31819;
}
else
{
	vR[i] = 31818;
}

}
else
{
	if(input[i]==(31817+offset0))
{
	vR[i] = 31817;
}
else
{
	vR[i] = 31816;
}

}

}

}
else
{
	if(input[i]>(31811+offset0))
{
	if(input[i]>(31813+offset0))
{
	if(input[i]==(31815+offset0))
{
	vR[i] = 31815;
}
else
{
	vR[i] = 31814;
}

}
else
{
	if(input[i]==(31813+offset0))
{
	vR[i] = 31813;
}
else
{
	vR[i] = 31812;
}

}

}
else
{
	if(input[i]>(31809+offset0))
{
	if(input[i]==(31811+offset0))
{
	vR[i] = 31811;
}
else
{
	vR[i] = 31810;
}

}
else
{
	if(input[i]==(31809+offset0))
{
	vR[i] = 31809;
}
else
{
	vR[i] = 31808;
}

}

}

}

}

}

}
else
{
	if(input[i]>(31775+offset0))
{
	if(input[i]>(31791+offset0))
{
	if(input[i]>(31799+offset0))
{
	if(input[i]>(31803+offset0))
{
	if(input[i]>(31805+offset0))
{
	if(input[i]==(31807+offset0))
{
	vR[i] = 31807;
}
else
{
	vR[i] = 31806;
}

}
else
{
	if(input[i]==(31805+offset0))
{
	vR[i] = 31805;
}
else
{
	vR[i] = 31804;
}

}

}
else
{
	if(input[i]>(31801+offset0))
{
	if(input[i]==(31803+offset0))
{
	vR[i] = 31803;
}
else
{
	vR[i] = 31802;
}

}
else
{
	if(input[i]==(31801+offset0))
{
	vR[i] = 31801;
}
else
{
	vR[i] = 31800;
}

}

}

}
else
{
	if(input[i]>(31795+offset0))
{
	if(input[i]>(31797+offset0))
{
	if(input[i]==(31799+offset0))
{
	vR[i] = 31799;
}
else
{
	vR[i] = 31798;
}

}
else
{
	if(input[i]==(31797+offset0))
{
	vR[i] = 31797;
}
else
{
	vR[i] = 31796;
}

}

}
else
{
	if(input[i]>(31793+offset0))
{
	if(input[i]==(31795+offset0))
{
	vR[i] = 31795;
}
else
{
	vR[i] = 31794;
}

}
else
{
	if(input[i]==(31793+offset0))
{
	vR[i] = 31793;
}
else
{
	vR[i] = 31792;
}

}

}

}

}
else
{
	if(input[i]>(31783+offset0))
{
	if(input[i]>(31787+offset0))
{
	if(input[i]>(31789+offset0))
{
	if(input[i]==(31791+offset0))
{
	vR[i] = 31791;
}
else
{
	vR[i] = 31790;
}

}
else
{
	if(input[i]==(31789+offset0))
{
	vR[i] = 31789;
}
else
{
	vR[i] = 31788;
}

}

}
else
{
	if(input[i]>(31785+offset0))
{
	if(input[i]==(31787+offset0))
{
	vR[i] = 31787;
}
else
{
	vR[i] = 31786;
}

}
else
{
	if(input[i]==(31785+offset0))
{
	vR[i] = 31785;
}
else
{
	vR[i] = 31784;
}

}

}

}
else
{
	if(input[i]>(31779+offset0))
{
	if(input[i]>(31781+offset0))
{
	if(input[i]==(31783+offset0))
{
	vR[i] = 31783;
}
else
{
	vR[i] = 31782;
}

}
else
{
	if(input[i]==(31781+offset0))
{
	vR[i] = 31781;
}
else
{
	vR[i] = 31780;
}

}

}
else
{
	if(input[i]>(31777+offset0))
{
	if(input[i]==(31779+offset0))
{
	vR[i] = 31779;
}
else
{
	vR[i] = 31778;
}

}
else
{
	if(input[i]==(31777+offset0))
{
	vR[i] = 31777;
}
else
{
	vR[i] = 31776;
}

}

}

}

}

}
else
{
	if(input[i]>(31759+offset0))
{
	if(input[i]>(31767+offset0))
{
	if(input[i]>(31771+offset0))
{
	if(input[i]>(31773+offset0))
{
	if(input[i]==(31775+offset0))
{
	vR[i] = 31775;
}
else
{
	vR[i] = 31774;
}

}
else
{
	if(input[i]==(31773+offset0))
{
	vR[i] = 31773;
}
else
{
	vR[i] = 31772;
}

}

}
else
{
	if(input[i]>(31769+offset0))
{
	if(input[i]==(31771+offset0))
{
	vR[i] = 31771;
}
else
{
	vR[i] = 31770;
}

}
else
{
	if(input[i]==(31769+offset0))
{
	vR[i] = 31769;
}
else
{
	vR[i] = 31768;
}

}

}

}
else
{
	if(input[i]>(31763+offset0))
{
	if(input[i]>(31765+offset0))
{
	if(input[i]==(31767+offset0))
{
	vR[i] = 31767;
}
else
{
	vR[i] = 31766;
}

}
else
{
	if(input[i]==(31765+offset0))
{
	vR[i] = 31765;
}
else
{
	vR[i] = 31764;
}

}

}
else
{
	if(input[i]>(31761+offset0))
{
	if(input[i]==(31763+offset0))
{
	vR[i] = 31763;
}
else
{
	vR[i] = 31762;
}

}
else
{
	if(input[i]==(31761+offset0))
{
	vR[i] = 31761;
}
else
{
	vR[i] = 31760;
}

}

}

}

}
else
{
	if(input[i]>(31751+offset0))
{
	if(input[i]>(31755+offset0))
{
	if(input[i]>(31757+offset0))
{
	if(input[i]==(31759+offset0))
{
	vR[i] = 31759;
}
else
{
	vR[i] = 31758;
}

}
else
{
	if(input[i]==(31757+offset0))
{
	vR[i] = 31757;
}
else
{
	vR[i] = 31756;
}

}

}
else
{
	if(input[i]>(31753+offset0))
{
	if(input[i]==(31755+offset0))
{
	vR[i] = 31755;
}
else
{
	vR[i] = 31754;
}

}
else
{
	if(input[i]==(31753+offset0))
{
	vR[i] = 31753;
}
else
{
	vR[i] = 31752;
}

}

}

}
else
{
	if(input[i]>(31747+offset0))
{
	if(input[i]>(31749+offset0))
{
	if(input[i]==(31751+offset0))
{
	vR[i] = 31751;
}
else
{
	vR[i] = 31750;
}

}
else
{
	if(input[i]==(31749+offset0))
{
	vR[i] = 31749;
}
else
{
	vR[i] = 31748;
}

}

}
else
{
	if(input[i]>(31745+offset0))
{
	if(input[i]==(31747+offset0))
{
	vR[i] = 31747;
}
else
{
	vR[i] = 31746;
}

}
else
{
	if(input[i]==(31745+offset0))
{
	vR[i] = 31745;
}
else
{
	vR[i] = 31744;
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
	if(input[i]>(31231+offset0))
{
	if(input[i]>(31487+offset0))
{
	if(input[i]>(31615+offset0))
{
	if(input[i]>(31679+offset0))
{
	if(input[i]>(31711+offset0))
{
	if(input[i]>(31727+offset0))
{
	if(input[i]>(31735+offset0))
{
	if(input[i]>(31739+offset0))
{
	if(input[i]>(31741+offset0))
{
	if(input[i]==(31743+offset0))
{
	vR[i] = 31743;
}
else
{
	vR[i] = 31742;
}

}
else
{
	if(input[i]==(31741+offset0))
{
	vR[i] = 31741;
}
else
{
	vR[i] = 31740;
}

}

}
else
{
	if(input[i]>(31737+offset0))
{
	if(input[i]==(31739+offset0))
{
	vR[i] = 31739;
}
else
{
	vR[i] = 31738;
}

}
else
{
	if(input[i]==(31737+offset0))
{
	vR[i] = 31737;
}
else
{
	vR[i] = 31736;
}

}

}

}
else
{
	if(input[i]>(31731+offset0))
{
	if(input[i]>(31733+offset0))
{
	if(input[i]==(31735+offset0))
{
	vR[i] = 31735;
}
else
{
	vR[i] = 31734;
}

}
else
{
	if(input[i]==(31733+offset0))
{
	vR[i] = 31733;
}
else
{
	vR[i] = 31732;
}

}

}
else
{
	if(input[i]>(31729+offset0))
{
	if(input[i]==(31731+offset0))
{
	vR[i] = 31731;
}
else
{
	vR[i] = 31730;
}

}
else
{
	if(input[i]==(31729+offset0))
{
	vR[i] = 31729;
}
else
{
	vR[i] = 31728;
}

}

}

}

}
else
{
	if(input[i]>(31719+offset0))
{
	if(input[i]>(31723+offset0))
{
	if(input[i]>(31725+offset0))
{
	if(input[i]==(31727+offset0))
{
	vR[i] = 31727;
}
else
{
	vR[i] = 31726;
}

}
else
{
	if(input[i]==(31725+offset0))
{
	vR[i] = 31725;
}
else
{
	vR[i] = 31724;
}

}

}
else
{
	if(input[i]>(31721+offset0))
{
	if(input[i]==(31723+offset0))
{
	vR[i] = 31723;
}
else
{
	vR[i] = 31722;
}

}
else
{
	if(input[i]==(31721+offset0))
{
	vR[i] = 31721;
}
else
{
	vR[i] = 31720;
}

}

}

}
else
{
	if(input[i]>(31715+offset0))
{
	if(input[i]>(31717+offset0))
{
	if(input[i]==(31719+offset0))
{
	vR[i] = 31719;
}
else
{
	vR[i] = 31718;
}

}
else
{
	if(input[i]==(31717+offset0))
{
	vR[i] = 31717;
}
else
{
	vR[i] = 31716;
}

}

}
else
{
	if(input[i]>(31713+offset0))
{
	if(input[i]==(31715+offset0))
{
	vR[i] = 31715;
}
else
{
	vR[i] = 31714;
}

}
else
{
	if(input[i]==(31713+offset0))
{
	vR[i] = 31713;
}
else
{
	vR[i] = 31712;
}

}

}

}

}

}
else
{
	if(input[i]>(31695+offset0))
{
	if(input[i]>(31703+offset0))
{
	if(input[i]>(31707+offset0))
{
	if(input[i]>(31709+offset0))
{
	if(input[i]==(31711+offset0))
{
	vR[i] = 31711;
}
else
{
	vR[i] = 31710;
}

}
else
{
	if(input[i]==(31709+offset0))
{
	vR[i] = 31709;
}
else
{
	vR[i] = 31708;
}

}

}
else
{
	if(input[i]>(31705+offset0))
{
	if(input[i]==(31707+offset0))
{
	vR[i] = 31707;
}
else
{
	vR[i] = 31706;
}

}
else
{
	if(input[i]==(31705+offset0))
{
	vR[i] = 31705;
}
else
{
	vR[i] = 31704;
}

}

}

}
else
{
	if(input[i]>(31699+offset0))
{
	if(input[i]>(31701+offset0))
{
	if(input[i]==(31703+offset0))
{
	vR[i] = 31703;
}
else
{
	vR[i] = 31702;
}

}
else
{
	if(input[i]==(31701+offset0))
{
	vR[i] = 31701;
}
else
{
	vR[i] = 31700;
}

}

}
else
{
	if(input[i]>(31697+offset0))
{
	if(input[i]==(31699+offset0))
{
	vR[i] = 31699;
}
else
{
	vR[i] = 31698;
}

}
else
{
	if(input[i]==(31697+offset0))
{
	vR[i] = 31697;
}
else
{
	vR[i] = 31696;
}

}

}

}

}
else
{
	if(input[i]>(31687+offset0))
{
	if(input[i]>(31691+offset0))
{
	if(input[i]>(31693+offset0))
{
	if(input[i]==(31695+offset0))
{
	vR[i] = 31695;
}
else
{
	vR[i] = 31694;
}

}
else
{
	if(input[i]==(31693+offset0))
{
	vR[i] = 31693;
}
else
{
	vR[i] = 31692;
}

}

}
else
{
	if(input[i]>(31689+offset0))
{
	if(input[i]==(31691+offset0))
{
	vR[i] = 31691;
}
else
{
	vR[i] = 31690;
}

}
else
{
	if(input[i]==(31689+offset0))
{
	vR[i] = 31689;
}
else
{
	vR[i] = 31688;
}

}

}

}
else
{
	if(input[i]>(31683+offset0))
{
	if(input[i]>(31685+offset0))
{
	if(input[i]==(31687+offset0))
{
	vR[i] = 31687;
}
else
{
	vR[i] = 31686;
}

}
else
{
	if(input[i]==(31685+offset0))
{
	vR[i] = 31685;
}
else
{
	vR[i] = 31684;
}

}

}
else
{
	if(input[i]>(31681+offset0))
{
	if(input[i]==(31683+offset0))
{
	vR[i] = 31683;
}
else
{
	vR[i] = 31682;
}

}
else
{
	if(input[i]==(31681+offset0))
{
	vR[i] = 31681;
}
else
{
	vR[i] = 31680;
}

}

}

}

}

}

}
else
{
	if(input[i]>(31647+offset0))
{
	if(input[i]>(31663+offset0))
{
	if(input[i]>(31671+offset0))
{
	if(input[i]>(31675+offset0))
{
	if(input[i]>(31677+offset0))
{
	if(input[i]==(31679+offset0))
{
	vR[i] = 31679;
}
else
{
	vR[i] = 31678;
}

}
else
{
	if(input[i]==(31677+offset0))
{
	vR[i] = 31677;
}
else
{
	vR[i] = 31676;
}

}

}
else
{
	if(input[i]>(31673+offset0))
{
	if(input[i]==(31675+offset0))
{
	vR[i] = 31675;
}
else
{
	vR[i] = 31674;
}

}
else
{
	if(input[i]==(31673+offset0))
{
	vR[i] = 31673;
}
else
{
	vR[i] = 31672;
}

}

}

}
else
{
	if(input[i]>(31667+offset0))
{
	if(input[i]>(31669+offset0))
{
	if(input[i]==(31671+offset0))
{
	vR[i] = 31671;
}
else
{
	vR[i] = 31670;
}

}
else
{
	if(input[i]==(31669+offset0))
{
	vR[i] = 31669;
}
else
{
	vR[i] = 31668;
}

}

}
else
{
	if(input[i]>(31665+offset0))
{
	if(input[i]==(31667+offset0))
{
	vR[i] = 31667;
}
else
{
	vR[i] = 31666;
}

}
else
{
	if(input[i]==(31665+offset0))
{
	vR[i] = 31665;
}
else
{
	vR[i] = 31664;
}

}

}

}

}
else
{
	if(input[i]>(31655+offset0))
{
	if(input[i]>(31659+offset0))
{
	if(input[i]>(31661+offset0))
{
	if(input[i]==(31663+offset0))
{
	vR[i] = 31663;
}
else
{
	vR[i] = 31662;
}

}
else
{
	if(input[i]==(31661+offset0))
{
	vR[i] = 31661;
}
else
{
	vR[i] = 31660;
}

}

}
else
{
	if(input[i]>(31657+offset0))
{
	if(input[i]==(31659+offset0))
{
	vR[i] = 31659;
}
else
{
	vR[i] = 31658;
}

}
else
{
	if(input[i]==(31657+offset0))
{
	vR[i] = 31657;
}
else
{
	vR[i] = 31656;
}

}

}

}
else
{
	if(input[i]>(31651+offset0))
{
	if(input[i]>(31653+offset0))
{
	if(input[i]==(31655+offset0))
{
	vR[i] = 31655;
}
else
{
	vR[i] = 31654;
}

}
else
{
	if(input[i]==(31653+offset0))
{
	vR[i] = 31653;
}
else
{
	vR[i] = 31652;
}

}

}
else
{
	if(input[i]>(31649+offset0))
{
	if(input[i]==(31651+offset0))
{
	vR[i] = 31651;
}
else
{
	vR[i] = 31650;
}

}
else
{
	if(input[i]==(31649+offset0))
{
	vR[i] = 31649;
}
else
{
	vR[i] = 31648;
}

}

}

}

}

}
else
{
	if(input[i]>(31631+offset0))
{
	if(input[i]>(31639+offset0))
{
	if(input[i]>(31643+offset0))
{
	if(input[i]>(31645+offset0))
{
	if(input[i]==(31647+offset0))
{
	vR[i] = 31647;
}
else
{
	vR[i] = 31646;
}

}
else
{
	if(input[i]==(31645+offset0))
{
	vR[i] = 31645;
}
else
{
	vR[i] = 31644;
}

}

}
else
{
	if(input[i]>(31641+offset0))
{
	if(input[i]==(31643+offset0))
{
	vR[i] = 31643;
}
else
{
	vR[i] = 31642;
}

}
else
{
	if(input[i]==(31641+offset0))
{
	vR[i] = 31641;
}
else
{
	vR[i] = 31640;
}

}

}

}
else
{
	if(input[i]>(31635+offset0))
{
	if(input[i]>(31637+offset0))
{
	if(input[i]==(31639+offset0))
{
	vR[i] = 31639;
}
else
{
	vR[i] = 31638;
}

}
else
{
	if(input[i]==(31637+offset0))
{
	vR[i] = 31637;
}
else
{
	vR[i] = 31636;
}

}

}
else
{
	if(input[i]>(31633+offset0))
{
	if(input[i]==(31635+offset0))
{
	vR[i] = 31635;
}
else
{
	vR[i] = 31634;
}

}
else
{
	if(input[i]==(31633+offset0))
{
	vR[i] = 31633;
}
else
{
	vR[i] = 31632;
}

}

}

}

}
else
{
	if(input[i]>(31623+offset0))
{
	if(input[i]>(31627+offset0))
{
	if(input[i]>(31629+offset0))
{
	if(input[i]==(31631+offset0))
{
	vR[i] = 31631;
}
else
{
	vR[i] = 31630;
}

}
else
{
	if(input[i]==(31629+offset0))
{
	vR[i] = 31629;
}
else
{
	vR[i] = 31628;
}

}

}
else
{
	if(input[i]>(31625+offset0))
{
	if(input[i]==(31627+offset0))
{
	vR[i] = 31627;
}
else
{
	vR[i] = 31626;
}

}
else
{
	if(input[i]==(31625+offset0))
{
	vR[i] = 31625;
}
else
{
	vR[i] = 31624;
}

}

}

}
else
{
	if(input[i]>(31619+offset0))
{
	if(input[i]>(31621+offset0))
{
	if(input[i]==(31623+offset0))
{
	vR[i] = 31623;
}
else
{
	vR[i] = 31622;
}

}
else
{
	if(input[i]==(31621+offset0))
{
	vR[i] = 31621;
}
else
{
	vR[i] = 31620;
}

}

}
else
{
	if(input[i]>(31617+offset0))
{
	if(input[i]==(31619+offset0))
{
	vR[i] = 31619;
}
else
{
	vR[i] = 31618;
}

}
else
{
	if(input[i]==(31617+offset0))
{
	vR[i] = 31617;
}
else
{
	vR[i] = 31616;
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
	if(input[i]>(31551+offset0))
{
	if(input[i]>(31583+offset0))
{
	if(input[i]>(31599+offset0))
{
	if(input[i]>(31607+offset0))
{
	if(input[i]>(31611+offset0))
{
	if(input[i]>(31613+offset0))
{
	if(input[i]==(31615+offset0))
{
	vR[i] = 31615;
}
else
{
	vR[i] = 31614;
}

}
else
{
	if(input[i]==(31613+offset0))
{
	vR[i] = 31613;
}
else
{
	vR[i] = 31612;
}

}

}
else
{
	if(input[i]>(31609+offset0))
{
	if(input[i]==(31611+offset0))
{
	vR[i] = 31611;
}
else
{
	vR[i] = 31610;
}

}
else
{
	if(input[i]==(31609+offset0))
{
	vR[i] = 31609;
}
else
{
	vR[i] = 31608;
}

}

}

}
else
{
	if(input[i]>(31603+offset0))
{
	if(input[i]>(31605+offset0))
{
	if(input[i]==(31607+offset0))
{
	vR[i] = 31607;
}
else
{
	vR[i] = 31606;
}

}
else
{
	if(input[i]==(31605+offset0))
{
	vR[i] = 31605;
}
else
{
	vR[i] = 31604;
}

}

}
else
{
	if(input[i]>(31601+offset0))
{
	if(input[i]==(31603+offset0))
{
	vR[i] = 31603;
}
else
{
	vR[i] = 31602;
}

}
else
{
	if(input[i]==(31601+offset0))
{
	vR[i] = 31601;
}
else
{
	vR[i] = 31600;
}

}

}

}

}
else
{
	if(input[i]>(31591+offset0))
{
	if(input[i]>(31595+offset0))
{
	if(input[i]>(31597+offset0))
{
	if(input[i]==(31599+offset0))
{
	vR[i] = 31599;
}
else
{
	vR[i] = 31598;
}

}
else
{
	if(input[i]==(31597+offset0))
{
	vR[i] = 31597;
}
else
{
	vR[i] = 31596;
}

}

}
else
{
	if(input[i]>(31593+offset0))
{
	if(input[i]==(31595+offset0))
{
	vR[i] = 31595;
}
else
{
	vR[i] = 31594;
}

}
else
{
	if(input[i]==(31593+offset0))
{
	vR[i] = 31593;
}
else
{
	vR[i] = 31592;
}

}

}

}
else
{
	if(input[i]>(31587+offset0))
{
	if(input[i]>(31589+offset0))
{
	if(input[i]==(31591+offset0))
{
	vR[i] = 31591;
}
else
{
	vR[i] = 31590;
}

}
else
{
	if(input[i]==(31589+offset0))
{
	vR[i] = 31589;
}
else
{
	vR[i] = 31588;
}

}

}
else
{
	if(input[i]>(31585+offset0))
{
	if(input[i]==(31587+offset0))
{
	vR[i] = 31587;
}
else
{
	vR[i] = 31586;
}

}
else
{
	if(input[i]==(31585+offset0))
{
	vR[i] = 31585;
}
else
{
	vR[i] = 31584;
}

}

}

}

}

}
else
{
	if(input[i]>(31567+offset0))
{
	if(input[i]>(31575+offset0))
{
	if(input[i]>(31579+offset0))
{
	if(input[i]>(31581+offset0))
{
	if(input[i]==(31583+offset0))
{
	vR[i] = 31583;
}
else
{
	vR[i] = 31582;
}

}
else
{
	if(input[i]==(31581+offset0))
{
	vR[i] = 31581;
}
else
{
	vR[i] = 31580;
}

}

}
else
{
	if(input[i]>(31577+offset0))
{
	if(input[i]==(31579+offset0))
{
	vR[i] = 31579;
}
else
{
	vR[i] = 31578;
}

}
else
{
	if(input[i]==(31577+offset0))
{
	vR[i] = 31577;
}
else
{
	vR[i] = 31576;
}

}

}

}
else
{
	if(input[i]>(31571+offset0))
{
	if(input[i]>(31573+offset0))
{
	if(input[i]==(31575+offset0))
{
	vR[i] = 31575;
}
else
{
	vR[i] = 31574;
}

}
else
{
	if(input[i]==(31573+offset0))
{
	vR[i] = 31573;
}
else
{
	vR[i] = 31572;
}

}

}
else
{
	if(input[i]>(31569+offset0))
{
	if(input[i]==(31571+offset0))
{
	vR[i] = 31571;
}
else
{
	vR[i] = 31570;
}

}
else
{
	if(input[i]==(31569+offset0))
{
	vR[i] = 31569;
}
else
{
	vR[i] = 31568;
}

}

}

}

}
else
{
	if(input[i]>(31559+offset0))
{
	if(input[i]>(31563+offset0))
{
	if(input[i]>(31565+offset0))
{
	if(input[i]==(31567+offset0))
{
	vR[i] = 31567;
}
else
{
	vR[i] = 31566;
}

}
else
{
	if(input[i]==(31565+offset0))
{
	vR[i] = 31565;
}
else
{
	vR[i] = 31564;
}

}

}
else
{
	if(input[i]>(31561+offset0))
{
	if(input[i]==(31563+offset0))
{
	vR[i] = 31563;
}
else
{
	vR[i] = 31562;
}

}
else
{
	if(input[i]==(31561+offset0))
{
	vR[i] = 31561;
}
else
{
	vR[i] = 31560;
}

}

}

}
else
{
	if(input[i]>(31555+offset0))
{
	if(input[i]>(31557+offset0))
{
	if(input[i]==(31559+offset0))
{
	vR[i] = 31559;
}
else
{
	vR[i] = 31558;
}

}
else
{
	if(input[i]==(31557+offset0))
{
	vR[i] = 31557;
}
else
{
	vR[i] = 31556;
}

}

}
else
{
	if(input[i]>(31553+offset0))
{
	if(input[i]==(31555+offset0))
{
	vR[i] = 31555;
}
else
{
	vR[i] = 31554;
}

}
else
{
	if(input[i]==(31553+offset0))
{
	vR[i] = 31553;
}
else
{
	vR[i] = 31552;
}

}

}

}

}

}

}
else
{
	if(input[i]>(31519+offset0))
{
	if(input[i]>(31535+offset0))
{
	if(input[i]>(31543+offset0))
{
	if(input[i]>(31547+offset0))
{
	if(input[i]>(31549+offset0))
{
	if(input[i]==(31551+offset0))
{
	vR[i] = 31551;
}
else
{
	vR[i] = 31550;
}

}
else
{
	if(input[i]==(31549+offset0))
{
	vR[i] = 31549;
}
else
{
	vR[i] = 31548;
}

}

}
else
{
	if(input[i]>(31545+offset0))
{
	if(input[i]==(31547+offset0))
{
	vR[i] = 31547;
}
else
{
	vR[i] = 31546;
}

}
else
{
	if(input[i]==(31545+offset0))
{
	vR[i] = 31545;
}
else
{
	vR[i] = 31544;
}

}

}

}
else
{
	if(input[i]>(31539+offset0))
{
	if(input[i]>(31541+offset0))
{
	if(input[i]==(31543+offset0))
{
	vR[i] = 31543;
}
else
{
	vR[i] = 31542;
}

}
else
{
	if(input[i]==(31541+offset0))
{
	vR[i] = 31541;
}
else
{
	vR[i] = 31540;
}

}

}
else
{
	if(input[i]>(31537+offset0))
{
	if(input[i]==(31539+offset0))
{
	vR[i] = 31539;
}
else
{
	vR[i] = 31538;
}

}
else
{
	if(input[i]==(31537+offset0))
{
	vR[i] = 31537;
}
else
{
	vR[i] = 31536;
}

}

}

}

}
else
{
	if(input[i]>(31527+offset0))
{
	if(input[i]>(31531+offset0))
{
	if(input[i]>(31533+offset0))
{
	if(input[i]==(31535+offset0))
{
	vR[i] = 31535;
}
else
{
	vR[i] = 31534;
}

}
else
{
	if(input[i]==(31533+offset0))
{
	vR[i] = 31533;
}
else
{
	vR[i] = 31532;
}

}

}
else
{
	if(input[i]>(31529+offset0))
{
	if(input[i]==(31531+offset0))
{
	vR[i] = 31531;
}
else
{
	vR[i] = 31530;
}

}
else
{
	if(input[i]==(31529+offset0))
{
	vR[i] = 31529;
}
else
{
	vR[i] = 31528;
}

}

}

}
else
{
	if(input[i]>(31523+offset0))
{
	if(input[i]>(31525+offset0))
{
	if(input[i]==(31527+offset0))
{
	vR[i] = 31527;
}
else
{
	vR[i] = 31526;
}

}
else
{
	if(input[i]==(31525+offset0))
{
	vR[i] = 31525;
}
else
{
	vR[i] = 31524;
}

}

}
else
{
	if(input[i]>(31521+offset0))
{
	if(input[i]==(31523+offset0))
{
	vR[i] = 31523;
}
else
{
	vR[i] = 31522;
}

}
else
{
	if(input[i]==(31521+offset0))
{
	vR[i] = 31521;
}
else
{
	vR[i] = 31520;
}

}

}

}

}

}
else
{
	if(input[i]>(31503+offset0))
{
	if(input[i]>(31511+offset0))
{
	if(input[i]>(31515+offset0))
{
	if(input[i]>(31517+offset0))
{
	if(input[i]==(31519+offset0))
{
	vR[i] = 31519;
}
else
{
	vR[i] = 31518;
}

}
else
{
	if(input[i]==(31517+offset0))
{
	vR[i] = 31517;
}
else
{
	vR[i] = 31516;
}

}

}
else
{
	if(input[i]>(31513+offset0))
{
	if(input[i]==(31515+offset0))
{
	vR[i] = 31515;
}
else
{
	vR[i] = 31514;
}

}
else
{
	if(input[i]==(31513+offset0))
{
	vR[i] = 31513;
}
else
{
	vR[i] = 31512;
}

}

}

}
else
{
	if(input[i]>(31507+offset0))
{
	if(input[i]>(31509+offset0))
{
	if(input[i]==(31511+offset0))
{
	vR[i] = 31511;
}
else
{
	vR[i] = 31510;
}

}
else
{
	if(input[i]==(31509+offset0))
{
	vR[i] = 31509;
}
else
{
	vR[i] = 31508;
}

}

}
else
{
	if(input[i]>(31505+offset0))
{
	if(input[i]==(31507+offset0))
{
	vR[i] = 31507;
}
else
{
	vR[i] = 31506;
}

}
else
{
	if(input[i]==(31505+offset0))
{
	vR[i] = 31505;
}
else
{
	vR[i] = 31504;
}

}

}

}

}
else
{
	if(input[i]>(31495+offset0))
{
	if(input[i]>(31499+offset0))
{
	if(input[i]>(31501+offset0))
{
	if(input[i]==(31503+offset0))
{
	vR[i] = 31503;
}
else
{
	vR[i] = 31502;
}

}
else
{
	if(input[i]==(31501+offset0))
{
	vR[i] = 31501;
}
else
{
	vR[i] = 31500;
}

}

}
else
{
	if(input[i]>(31497+offset0))
{
	if(input[i]==(31499+offset0))
{
	vR[i] = 31499;
}
else
{
	vR[i] = 31498;
}

}
else
{
	if(input[i]==(31497+offset0))
{
	vR[i] = 31497;
}
else
{
	vR[i] = 31496;
}

}

}

}
else
{
	if(input[i]>(31491+offset0))
{
	if(input[i]>(31493+offset0))
{
	if(input[i]==(31495+offset0))
{
	vR[i] = 31495;
}
else
{
	vR[i] = 31494;
}

}
else
{
	if(input[i]==(31493+offset0))
{
	vR[i] = 31493;
}
else
{
	vR[i] = 31492;
}

}

}
else
{
	if(input[i]>(31489+offset0))
{
	if(input[i]==(31491+offset0))
{
	vR[i] = 31491;
}
else
{
	vR[i] = 31490;
}

}
else
{
	if(input[i]==(31489+offset0))
{
	vR[i] = 31489;
}
else
{
	vR[i] = 31488;
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
	if(input[i]>(31359+offset0))
{
	if(input[i]>(31423+offset0))
{
	if(input[i]>(31455+offset0))
{
	if(input[i]>(31471+offset0))
{
	if(input[i]>(31479+offset0))
{
	if(input[i]>(31483+offset0))
{
	if(input[i]>(31485+offset0))
{
	if(input[i]==(31487+offset0))
{
	vR[i] = 31487;
}
else
{
	vR[i] = 31486;
}

}
else
{
	if(input[i]==(31485+offset0))
{
	vR[i] = 31485;
}
else
{
	vR[i] = 31484;
}

}

}
else
{
	if(input[i]>(31481+offset0))
{
	if(input[i]==(31483+offset0))
{
	vR[i] = 31483;
}
else
{
	vR[i] = 31482;
}

}
else
{
	if(input[i]==(31481+offset0))
{
	vR[i] = 31481;
}
else
{
	vR[i] = 31480;
}

}

}

}
else
{
	if(input[i]>(31475+offset0))
{
	if(input[i]>(31477+offset0))
{
	if(input[i]==(31479+offset0))
{
	vR[i] = 31479;
}
else
{
	vR[i] = 31478;
}

}
else
{
	if(input[i]==(31477+offset0))
{
	vR[i] = 31477;
}
else
{
	vR[i] = 31476;
}

}

}
else
{
	if(input[i]>(31473+offset0))
{
	if(input[i]==(31475+offset0))
{
	vR[i] = 31475;
}
else
{
	vR[i] = 31474;
}

}
else
{
	if(input[i]==(31473+offset0))
{
	vR[i] = 31473;
}
else
{
	vR[i] = 31472;
}

}

}

}

}
else
{
	if(input[i]>(31463+offset0))
{
	if(input[i]>(31467+offset0))
{
	if(input[i]>(31469+offset0))
{
	if(input[i]==(31471+offset0))
{
	vR[i] = 31471;
}
else
{
	vR[i] = 31470;
}

}
else
{
	if(input[i]==(31469+offset0))
{
	vR[i] = 31469;
}
else
{
	vR[i] = 31468;
}

}

}
else
{
	if(input[i]>(31465+offset0))
{
	if(input[i]==(31467+offset0))
{
	vR[i] = 31467;
}
else
{
	vR[i] = 31466;
}

}
else
{
	if(input[i]==(31465+offset0))
{
	vR[i] = 31465;
}
else
{
	vR[i] = 31464;
}

}

}

}
else
{
	if(input[i]>(31459+offset0))
{
	if(input[i]>(31461+offset0))
{
	if(input[i]==(31463+offset0))
{
	vR[i] = 31463;
}
else
{
	vR[i] = 31462;
}

}
else
{
	if(input[i]==(31461+offset0))
{
	vR[i] = 31461;
}
else
{
	vR[i] = 31460;
}

}

}
else
{
	if(input[i]>(31457+offset0))
{
	if(input[i]==(31459+offset0))
{
	vR[i] = 31459;
}
else
{
	vR[i] = 31458;
}

}
else
{
	if(input[i]==(31457+offset0))
{
	vR[i] = 31457;
}
else
{
	vR[i] = 31456;
}

}

}

}

}

}
else
{
	if(input[i]>(31439+offset0))
{
	if(input[i]>(31447+offset0))
{
	if(input[i]>(31451+offset0))
{
	if(input[i]>(31453+offset0))
{
	if(input[i]==(31455+offset0))
{
	vR[i] = 31455;
}
else
{
	vR[i] = 31454;
}

}
else
{
	if(input[i]==(31453+offset0))
{
	vR[i] = 31453;
}
else
{
	vR[i] = 31452;
}

}

}
else
{
	if(input[i]>(31449+offset0))
{
	if(input[i]==(31451+offset0))
{
	vR[i] = 31451;
}
else
{
	vR[i] = 31450;
}

}
else
{
	if(input[i]==(31449+offset0))
{
	vR[i] = 31449;
}
else
{
	vR[i] = 31448;
}

}

}

}
else
{
	if(input[i]>(31443+offset0))
{
	if(input[i]>(31445+offset0))
{
	if(input[i]==(31447+offset0))
{
	vR[i] = 31447;
}
else
{
	vR[i] = 31446;
}

}
else
{
	if(input[i]==(31445+offset0))
{
	vR[i] = 31445;
}
else
{
	vR[i] = 31444;
}

}

}
else
{
	if(input[i]>(31441+offset0))
{
	if(input[i]==(31443+offset0))
{
	vR[i] = 31443;
}
else
{
	vR[i] = 31442;
}

}
else
{
	if(input[i]==(31441+offset0))
{
	vR[i] = 31441;
}
else
{
	vR[i] = 31440;
}

}

}

}

}
else
{
	if(input[i]>(31431+offset0))
{
	if(input[i]>(31435+offset0))
{
	if(input[i]>(31437+offset0))
{
	if(input[i]==(31439+offset0))
{
	vR[i] = 31439;
}
else
{
	vR[i] = 31438;
}

}
else
{
	if(input[i]==(31437+offset0))
{
	vR[i] = 31437;
}
else
{
	vR[i] = 31436;
}

}

}
else
{
	if(input[i]>(31433+offset0))
{
	if(input[i]==(31435+offset0))
{
	vR[i] = 31435;
}
else
{
	vR[i] = 31434;
}

}
else
{
	if(input[i]==(31433+offset0))
{
	vR[i] = 31433;
}
else
{
	vR[i] = 31432;
}

}

}

}
else
{
	if(input[i]>(31427+offset0))
{
	if(input[i]>(31429+offset0))
{
	if(input[i]==(31431+offset0))
{
	vR[i] = 31431;
}
else
{
	vR[i] = 31430;
}

}
else
{
	if(input[i]==(31429+offset0))
{
	vR[i] = 31429;
}
else
{
	vR[i] = 31428;
}

}

}
else
{
	if(input[i]>(31425+offset0))
{
	if(input[i]==(31427+offset0))
{
	vR[i] = 31427;
}
else
{
	vR[i] = 31426;
}

}
else
{
	if(input[i]==(31425+offset0))
{
	vR[i] = 31425;
}
else
{
	vR[i] = 31424;
}

}

}

}

}

}

}
else
{
	if(input[i]>(31391+offset0))
{
	if(input[i]>(31407+offset0))
{
	if(input[i]>(31415+offset0))
{
	if(input[i]>(31419+offset0))
{
	if(input[i]>(31421+offset0))
{
	if(input[i]==(31423+offset0))
{
	vR[i] = 31423;
}
else
{
	vR[i] = 31422;
}

}
else
{
	if(input[i]==(31421+offset0))
{
	vR[i] = 31421;
}
else
{
	vR[i] = 31420;
}

}

}
else
{
	if(input[i]>(31417+offset0))
{
	if(input[i]==(31419+offset0))
{
	vR[i] = 31419;
}
else
{
	vR[i] = 31418;
}

}
else
{
	if(input[i]==(31417+offset0))
{
	vR[i] = 31417;
}
else
{
	vR[i] = 31416;
}

}

}

}
else
{
	if(input[i]>(31411+offset0))
{
	if(input[i]>(31413+offset0))
{
	if(input[i]==(31415+offset0))
{
	vR[i] = 31415;
}
else
{
	vR[i] = 31414;
}

}
else
{
	if(input[i]==(31413+offset0))
{
	vR[i] = 31413;
}
else
{
	vR[i] = 31412;
}

}

}
else
{
	if(input[i]>(31409+offset0))
{
	if(input[i]==(31411+offset0))
{
	vR[i] = 31411;
}
else
{
	vR[i] = 31410;
}

}
else
{
	if(input[i]==(31409+offset0))
{
	vR[i] = 31409;
}
else
{
	vR[i] = 31408;
}

}

}

}

}
else
{
	if(input[i]>(31399+offset0))
{
	if(input[i]>(31403+offset0))
{
	if(input[i]>(31405+offset0))
{
	if(input[i]==(31407+offset0))
{
	vR[i] = 31407;
}
else
{
	vR[i] = 31406;
}

}
else
{
	if(input[i]==(31405+offset0))
{
	vR[i] = 31405;
}
else
{
	vR[i] = 31404;
}

}

}
else
{
	if(input[i]>(31401+offset0))
{
	if(input[i]==(31403+offset0))
{
	vR[i] = 31403;
}
else
{
	vR[i] = 31402;
}

}
else
{
	if(input[i]==(31401+offset0))
{
	vR[i] = 31401;
}
else
{
	vR[i] = 31400;
}

}

}

}
else
{
	if(input[i]>(31395+offset0))
{
	if(input[i]>(31397+offset0))
{
	if(input[i]==(31399+offset0))
{
	vR[i] = 31399;
}
else
{
	vR[i] = 31398;
}

}
else
{
	if(input[i]==(31397+offset0))
{
	vR[i] = 31397;
}
else
{
	vR[i] = 31396;
}

}

}
else
{
	if(input[i]>(31393+offset0))
{
	if(input[i]==(31395+offset0))
{
	vR[i] = 31395;
}
else
{
	vR[i] = 31394;
}

}
else
{
	if(input[i]==(31393+offset0))
{
	vR[i] = 31393;
}
else
{
	vR[i] = 31392;
}

}

}

}

}

}
else
{
	if(input[i]>(31375+offset0))
{
	if(input[i]>(31383+offset0))
{
	if(input[i]>(31387+offset0))
{
	if(input[i]>(31389+offset0))
{
	if(input[i]==(31391+offset0))
{
	vR[i] = 31391;
}
else
{
	vR[i] = 31390;
}

}
else
{
	if(input[i]==(31389+offset0))
{
	vR[i] = 31389;
}
else
{
	vR[i] = 31388;
}

}

}
else
{
	if(input[i]>(31385+offset0))
{
	if(input[i]==(31387+offset0))
{
	vR[i] = 31387;
}
else
{
	vR[i] = 31386;
}

}
else
{
	if(input[i]==(31385+offset0))
{
	vR[i] = 31385;
}
else
{
	vR[i] = 31384;
}

}

}

}
else
{
	if(input[i]>(31379+offset0))
{
	if(input[i]>(31381+offset0))
{
	if(input[i]==(31383+offset0))
{
	vR[i] = 31383;
}
else
{
	vR[i] = 31382;
}

}
else
{
	if(input[i]==(31381+offset0))
{
	vR[i] = 31381;
}
else
{
	vR[i] = 31380;
}

}

}
else
{
	if(input[i]>(31377+offset0))
{
	if(input[i]==(31379+offset0))
{
	vR[i] = 31379;
}
else
{
	vR[i] = 31378;
}

}
else
{
	if(input[i]==(31377+offset0))
{
	vR[i] = 31377;
}
else
{
	vR[i] = 31376;
}

}

}

}

}
else
{
	if(input[i]>(31367+offset0))
{
	if(input[i]>(31371+offset0))
{
	if(input[i]>(31373+offset0))
{
	if(input[i]==(31375+offset0))
{
	vR[i] = 31375;
}
else
{
	vR[i] = 31374;
}

}
else
{
	if(input[i]==(31373+offset0))
{
	vR[i] = 31373;
}
else
{
	vR[i] = 31372;
}

}

}
else
{
	if(input[i]>(31369+offset0))
{
	if(input[i]==(31371+offset0))
{
	vR[i] = 31371;
}
else
{
	vR[i] = 31370;
}

}
else
{
	if(input[i]==(31369+offset0))
{
	vR[i] = 31369;
}
else
{
	vR[i] = 31368;
}

}

}

}
else
{
	if(input[i]>(31363+offset0))
{
	if(input[i]>(31365+offset0))
{
	if(input[i]==(31367+offset0))
{
	vR[i] = 31367;
}
else
{
	vR[i] = 31366;
}

}
else
{
	if(input[i]==(31365+offset0))
{
	vR[i] = 31365;
}
else
{
	vR[i] = 31364;
}

}

}
else
{
	if(input[i]>(31361+offset0))
{
	if(input[i]==(31363+offset0))
{
	vR[i] = 31363;
}
else
{
	vR[i] = 31362;
}

}
else
{
	if(input[i]==(31361+offset0))
{
	vR[i] = 31361;
}
else
{
	vR[i] = 31360;
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
	if(input[i]>(31295+offset0))
{
	if(input[i]>(31327+offset0))
{
	if(input[i]>(31343+offset0))
{
	if(input[i]>(31351+offset0))
{
	if(input[i]>(31355+offset0))
{
	if(input[i]>(31357+offset0))
{
	if(input[i]==(31359+offset0))
{
	vR[i] = 31359;
}
else
{
	vR[i] = 31358;
}

}
else
{
	if(input[i]==(31357+offset0))
{
	vR[i] = 31357;
}
else
{
	vR[i] = 31356;
}

}

}
else
{
	if(input[i]>(31353+offset0))
{
	if(input[i]==(31355+offset0))
{
	vR[i] = 31355;
}
else
{
	vR[i] = 31354;
}

}
else
{
	if(input[i]==(31353+offset0))
{
	vR[i] = 31353;
}
else
{
	vR[i] = 31352;
}

}

}

}
else
{
	if(input[i]>(31347+offset0))
{
	if(input[i]>(31349+offset0))
{
	if(input[i]==(31351+offset0))
{
	vR[i] = 31351;
}
else
{
	vR[i] = 31350;
}

}
else
{
	if(input[i]==(31349+offset0))
{
	vR[i] = 31349;
}
else
{
	vR[i] = 31348;
}

}

}
else
{
	if(input[i]>(31345+offset0))
{
	if(input[i]==(31347+offset0))
{
	vR[i] = 31347;
}
else
{
	vR[i] = 31346;
}

}
else
{
	if(input[i]==(31345+offset0))
{
	vR[i] = 31345;
}
else
{
	vR[i] = 31344;
}

}

}

}

}
else
{
	if(input[i]>(31335+offset0))
{
	if(input[i]>(31339+offset0))
{
	if(input[i]>(31341+offset0))
{
	if(input[i]==(31343+offset0))
{
	vR[i] = 31343;
}
else
{
	vR[i] = 31342;
}

}
else
{
	if(input[i]==(31341+offset0))
{
	vR[i] = 31341;
}
else
{
	vR[i] = 31340;
}

}

}
else
{
	if(input[i]>(31337+offset0))
{
	if(input[i]==(31339+offset0))
{
	vR[i] = 31339;
}
else
{
	vR[i] = 31338;
}

}
else
{
	if(input[i]==(31337+offset0))
{
	vR[i] = 31337;
}
else
{
	vR[i] = 31336;
}

}

}

}
else
{
	if(input[i]>(31331+offset0))
{
	if(input[i]>(31333+offset0))
{
	if(input[i]==(31335+offset0))
{
	vR[i] = 31335;
}
else
{
	vR[i] = 31334;
}

}
else
{
	if(input[i]==(31333+offset0))
{
	vR[i] = 31333;
}
else
{
	vR[i] = 31332;
}

}

}
else
{
	if(input[i]>(31329+offset0))
{
	if(input[i]==(31331+offset0))
{
	vR[i] = 31331;
}
else
{
	vR[i] = 31330;
}

}
else
{
	if(input[i]==(31329+offset0))
{
	vR[i] = 31329;
}
else
{
	vR[i] = 31328;
}

}

}

}

}

}
else
{
	if(input[i]>(31311+offset0))
{
	if(input[i]>(31319+offset0))
{
	if(input[i]>(31323+offset0))
{
	if(input[i]>(31325+offset0))
{
	if(input[i]==(31327+offset0))
{
	vR[i] = 31327;
}
else
{
	vR[i] = 31326;
}

}
else
{
	if(input[i]==(31325+offset0))
{
	vR[i] = 31325;
}
else
{
	vR[i] = 31324;
}

}

}
else
{
	if(input[i]>(31321+offset0))
{
	if(input[i]==(31323+offset0))
{
	vR[i] = 31323;
}
else
{
	vR[i] = 31322;
}

}
else
{
	if(input[i]==(31321+offset0))
{
	vR[i] = 31321;
}
else
{
	vR[i] = 31320;
}

}

}

}
else
{
	if(input[i]>(31315+offset0))
{
	if(input[i]>(31317+offset0))
{
	if(input[i]==(31319+offset0))
{
	vR[i] = 31319;
}
else
{
	vR[i] = 31318;
}

}
else
{
	if(input[i]==(31317+offset0))
{
	vR[i] = 31317;
}
else
{
	vR[i] = 31316;
}

}

}
else
{
	if(input[i]>(31313+offset0))
{
	if(input[i]==(31315+offset0))
{
	vR[i] = 31315;
}
else
{
	vR[i] = 31314;
}

}
else
{
	if(input[i]==(31313+offset0))
{
	vR[i] = 31313;
}
else
{
	vR[i] = 31312;
}

}

}

}

}
else
{
	if(input[i]>(31303+offset0))
{
	if(input[i]>(31307+offset0))
{
	if(input[i]>(31309+offset0))
{
	if(input[i]==(31311+offset0))
{
	vR[i] = 31311;
}
else
{
	vR[i] = 31310;
}

}
else
{
	if(input[i]==(31309+offset0))
{
	vR[i] = 31309;
}
else
{
	vR[i] = 31308;
}

}

}
else
{
	if(input[i]>(31305+offset0))
{
	if(input[i]==(31307+offset0))
{
	vR[i] = 31307;
}
else
{
	vR[i] = 31306;
}

}
else
{
	if(input[i]==(31305+offset0))
{
	vR[i] = 31305;
}
else
{
	vR[i] = 31304;
}

}

}

}
else
{
	if(input[i]>(31299+offset0))
{
	if(input[i]>(31301+offset0))
{
	if(input[i]==(31303+offset0))
{
	vR[i] = 31303;
}
else
{
	vR[i] = 31302;
}

}
else
{
	if(input[i]==(31301+offset0))
{
	vR[i] = 31301;
}
else
{
	vR[i] = 31300;
}

}

}
else
{
	if(input[i]>(31297+offset0))
{
	if(input[i]==(31299+offset0))
{
	vR[i] = 31299;
}
else
{
	vR[i] = 31298;
}

}
else
{
	if(input[i]==(31297+offset0))
{
	vR[i] = 31297;
}
else
{
	vR[i] = 31296;
}

}

}

}

}

}

}
else
{
	if(input[i]>(31263+offset0))
{
	if(input[i]>(31279+offset0))
{
	if(input[i]>(31287+offset0))
{
	if(input[i]>(31291+offset0))
{
	if(input[i]>(31293+offset0))
{
	if(input[i]==(31295+offset0))
{
	vR[i] = 31295;
}
else
{
	vR[i] = 31294;
}

}
else
{
	if(input[i]==(31293+offset0))
{
	vR[i] = 31293;
}
else
{
	vR[i] = 31292;
}

}

}
else
{
	if(input[i]>(31289+offset0))
{
	if(input[i]==(31291+offset0))
{
	vR[i] = 31291;
}
else
{
	vR[i] = 31290;
}

}
else
{
	if(input[i]==(31289+offset0))
{
	vR[i] = 31289;
}
else
{
	vR[i] = 31288;
}

}

}

}
else
{
	if(input[i]>(31283+offset0))
{
	if(input[i]>(31285+offset0))
{
	if(input[i]==(31287+offset0))
{
	vR[i] = 31287;
}
else
{
	vR[i] = 31286;
}

}
else
{
	if(input[i]==(31285+offset0))
{
	vR[i] = 31285;
}
else
{
	vR[i] = 31284;
}

}

}
else
{
	if(input[i]>(31281+offset0))
{
	if(input[i]==(31283+offset0))
{
	vR[i] = 31283;
}
else
{
	vR[i] = 31282;
}

}
else
{
	if(input[i]==(31281+offset0))
{
	vR[i] = 31281;
}
else
{
	vR[i] = 31280;
}

}

}

}

}
else
{
	if(input[i]>(31271+offset0))
{
	if(input[i]>(31275+offset0))
{
	if(input[i]>(31277+offset0))
{
	if(input[i]==(31279+offset0))
{
	vR[i] = 31279;
}
else
{
	vR[i] = 31278;
}

}
else
{
	if(input[i]==(31277+offset0))
{
	vR[i] = 31277;
}
else
{
	vR[i] = 31276;
}

}

}
else
{
	if(input[i]>(31273+offset0))
{
	if(input[i]==(31275+offset0))
{
	vR[i] = 31275;
}
else
{
	vR[i] = 31274;
}

}
else
{
	if(input[i]==(31273+offset0))
{
	vR[i] = 31273;
}
else
{
	vR[i] = 31272;
}

}

}

}
else
{
	if(input[i]>(31267+offset0))
{
	if(input[i]>(31269+offset0))
{
	if(input[i]==(31271+offset0))
{
	vR[i] = 31271;
}
else
{
	vR[i] = 31270;
}

}
else
{
	if(input[i]==(31269+offset0))
{
	vR[i] = 31269;
}
else
{
	vR[i] = 31268;
}

}

}
else
{
	if(input[i]>(31265+offset0))
{
	if(input[i]==(31267+offset0))
{
	vR[i] = 31267;
}
else
{
	vR[i] = 31266;
}

}
else
{
	if(input[i]==(31265+offset0))
{
	vR[i] = 31265;
}
else
{
	vR[i] = 31264;
}

}

}

}

}

}
else
{
	if(input[i]>(31247+offset0))
{
	if(input[i]>(31255+offset0))
{
	if(input[i]>(31259+offset0))
{
	if(input[i]>(31261+offset0))
{
	if(input[i]==(31263+offset0))
{
	vR[i] = 31263;
}
else
{
	vR[i] = 31262;
}

}
else
{
	if(input[i]==(31261+offset0))
{
	vR[i] = 31261;
}
else
{
	vR[i] = 31260;
}

}

}
else
{
	if(input[i]>(31257+offset0))
{
	if(input[i]==(31259+offset0))
{
	vR[i] = 31259;
}
else
{
	vR[i] = 31258;
}

}
else
{
	if(input[i]==(31257+offset0))
{
	vR[i] = 31257;
}
else
{
	vR[i] = 31256;
}

}

}

}
else
{
	if(input[i]>(31251+offset0))
{
	if(input[i]>(31253+offset0))
{
	if(input[i]==(31255+offset0))
{
	vR[i] = 31255;
}
else
{
	vR[i] = 31254;
}

}
else
{
	if(input[i]==(31253+offset0))
{
	vR[i] = 31253;
}
else
{
	vR[i] = 31252;
}

}

}
else
{
	if(input[i]>(31249+offset0))
{
	if(input[i]==(31251+offset0))
{
	vR[i] = 31251;
}
else
{
	vR[i] = 31250;
}

}
else
{
	if(input[i]==(31249+offset0))
{
	vR[i] = 31249;
}
else
{
	vR[i] = 31248;
}

}

}

}

}
else
{
	if(input[i]>(31239+offset0))
{
	if(input[i]>(31243+offset0))
{
	if(input[i]>(31245+offset0))
{
	if(input[i]==(31247+offset0))
{
	vR[i] = 31247;
}
else
{
	vR[i] = 31246;
}

}
else
{
	if(input[i]==(31245+offset0))
{
	vR[i] = 31245;
}
else
{
	vR[i] = 31244;
}

}

}
else
{
	if(input[i]>(31241+offset0))
{
	if(input[i]==(31243+offset0))
{
	vR[i] = 31243;
}
else
{
	vR[i] = 31242;
}

}
else
{
	if(input[i]==(31241+offset0))
{
	vR[i] = 31241;
}
else
{
	vR[i] = 31240;
}

}

}

}
else
{
	if(input[i]>(31235+offset0))
{
	if(input[i]>(31237+offset0))
{
	if(input[i]==(31239+offset0))
{
	vR[i] = 31239;
}
else
{
	vR[i] = 31238;
}

}
else
{
	if(input[i]==(31237+offset0))
{
	vR[i] = 31237;
}
else
{
	vR[i] = 31236;
}

}

}
else
{
	if(input[i]>(31233+offset0))
{
	if(input[i]==(31235+offset0))
{
	vR[i] = 31235;
}
else
{
	vR[i] = 31234;
}

}
else
{
	if(input[i]==(31233+offset0))
{
	vR[i] = 31233;
}
else
{
	vR[i] = 31232;
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
	if(input[i]>(30975+offset0))
{
	if(input[i]>(31103+offset0))
{
	if(input[i]>(31167+offset0))
{
	if(input[i]>(31199+offset0))
{
	if(input[i]>(31215+offset0))
{
	if(input[i]>(31223+offset0))
{
	if(input[i]>(31227+offset0))
{
	if(input[i]>(31229+offset0))
{
	if(input[i]==(31231+offset0))
{
	vR[i] = 31231;
}
else
{
	vR[i] = 31230;
}

}
else
{
	if(input[i]==(31229+offset0))
{
	vR[i] = 31229;
}
else
{
	vR[i] = 31228;
}

}

}
else
{
	if(input[i]>(31225+offset0))
{
	if(input[i]==(31227+offset0))
{
	vR[i] = 31227;
}
else
{
	vR[i] = 31226;
}

}
else
{
	if(input[i]==(31225+offset0))
{
	vR[i] = 31225;
}
else
{
	vR[i] = 31224;
}

}

}

}
else
{
	if(input[i]>(31219+offset0))
{
	if(input[i]>(31221+offset0))
{
	if(input[i]==(31223+offset0))
{
	vR[i] = 31223;
}
else
{
	vR[i] = 31222;
}

}
else
{
	if(input[i]==(31221+offset0))
{
	vR[i] = 31221;
}
else
{
	vR[i] = 31220;
}

}

}
else
{
	if(input[i]>(31217+offset0))
{
	if(input[i]==(31219+offset0))
{
	vR[i] = 31219;
}
else
{
	vR[i] = 31218;
}

}
else
{
	if(input[i]==(31217+offset0))
{
	vR[i] = 31217;
}
else
{
	vR[i] = 31216;
}

}

}

}

}
else
{
	if(input[i]>(31207+offset0))
{
	if(input[i]>(31211+offset0))
{
	if(input[i]>(31213+offset0))
{
	if(input[i]==(31215+offset0))
{
	vR[i] = 31215;
}
else
{
	vR[i] = 31214;
}

}
else
{
	if(input[i]==(31213+offset0))
{
	vR[i] = 31213;
}
else
{
	vR[i] = 31212;
}

}

}
else
{
	if(input[i]>(31209+offset0))
{
	if(input[i]==(31211+offset0))
{
	vR[i] = 31211;
}
else
{
	vR[i] = 31210;
}

}
else
{
	if(input[i]==(31209+offset0))
{
	vR[i] = 31209;
}
else
{
	vR[i] = 31208;
}

}

}

}
else
{
	if(input[i]>(31203+offset0))
{
	if(input[i]>(31205+offset0))
{
	if(input[i]==(31207+offset0))
{
	vR[i] = 31207;
}
else
{
	vR[i] = 31206;
}

}
else
{
	if(input[i]==(31205+offset0))
{
	vR[i] = 31205;
}
else
{
	vR[i] = 31204;
}

}

}
else
{
	if(input[i]>(31201+offset0))
{
	if(input[i]==(31203+offset0))
{
	vR[i] = 31203;
}
else
{
	vR[i] = 31202;
}

}
else
{
	if(input[i]==(31201+offset0))
{
	vR[i] = 31201;
}
else
{
	vR[i] = 31200;
}

}

}

}

}

}
else
{
	if(input[i]>(31183+offset0))
{
	if(input[i]>(31191+offset0))
{
	if(input[i]>(31195+offset0))
{
	if(input[i]>(31197+offset0))
{
	if(input[i]==(31199+offset0))
{
	vR[i] = 31199;
}
else
{
	vR[i] = 31198;
}

}
else
{
	if(input[i]==(31197+offset0))
{
	vR[i] = 31197;
}
else
{
	vR[i] = 31196;
}

}

}
else
{
	if(input[i]>(31193+offset0))
{
	if(input[i]==(31195+offset0))
{
	vR[i] = 31195;
}
else
{
	vR[i] = 31194;
}

}
else
{
	if(input[i]==(31193+offset0))
{
	vR[i] = 31193;
}
else
{
	vR[i] = 31192;
}

}

}

}
else
{
	if(input[i]>(31187+offset0))
{
	if(input[i]>(31189+offset0))
{
	if(input[i]==(31191+offset0))
{
	vR[i] = 31191;
}
else
{
	vR[i] = 31190;
}

}
else
{
	if(input[i]==(31189+offset0))
{
	vR[i] = 31189;
}
else
{
	vR[i] = 31188;
}

}

}
else
{
	if(input[i]>(31185+offset0))
{
	if(input[i]==(31187+offset0))
{
	vR[i] = 31187;
}
else
{
	vR[i] = 31186;
}

}
else
{
	if(input[i]==(31185+offset0))
{
	vR[i] = 31185;
}
else
{
	vR[i] = 31184;
}

}

}

}

}
else
{
	if(input[i]>(31175+offset0))
{
	if(input[i]>(31179+offset0))
{
	if(input[i]>(31181+offset0))
{
	if(input[i]==(31183+offset0))
{
	vR[i] = 31183;
}
else
{
	vR[i] = 31182;
}

}
else
{
	if(input[i]==(31181+offset0))
{
	vR[i] = 31181;
}
else
{
	vR[i] = 31180;
}

}

}
else
{
	if(input[i]>(31177+offset0))
{
	if(input[i]==(31179+offset0))
{
	vR[i] = 31179;
}
else
{
	vR[i] = 31178;
}

}
else
{
	if(input[i]==(31177+offset0))
{
	vR[i] = 31177;
}
else
{
	vR[i] = 31176;
}

}

}

}
else
{
	if(input[i]>(31171+offset0))
{
	if(input[i]>(31173+offset0))
{
	if(input[i]==(31175+offset0))
{
	vR[i] = 31175;
}
else
{
	vR[i] = 31174;
}

}
else
{
	if(input[i]==(31173+offset0))
{
	vR[i] = 31173;
}
else
{
	vR[i] = 31172;
}

}

}
else
{
	if(input[i]>(31169+offset0))
{
	if(input[i]==(31171+offset0))
{
	vR[i] = 31171;
}
else
{
	vR[i] = 31170;
}

}
else
{
	if(input[i]==(31169+offset0))
{
	vR[i] = 31169;
}
else
{
	vR[i] = 31168;
}

}

}

}

}

}

}
else
{
	if(input[i]>(31135+offset0))
{
	if(input[i]>(31151+offset0))
{
	if(input[i]>(31159+offset0))
{
	if(input[i]>(31163+offset0))
{
	if(input[i]>(31165+offset0))
{
	if(input[i]==(31167+offset0))
{
	vR[i] = 31167;
}
else
{
	vR[i] = 31166;
}

}
else
{
	if(input[i]==(31165+offset0))
{
	vR[i] = 31165;
}
else
{
	vR[i] = 31164;
}

}

}
else
{
	if(input[i]>(31161+offset0))
{
	if(input[i]==(31163+offset0))
{
	vR[i] = 31163;
}
else
{
	vR[i] = 31162;
}

}
else
{
	if(input[i]==(31161+offset0))
{
	vR[i] = 31161;
}
else
{
	vR[i] = 31160;
}

}

}

}
else
{
	if(input[i]>(31155+offset0))
{
	if(input[i]>(31157+offset0))
{
	if(input[i]==(31159+offset0))
{
	vR[i] = 31159;
}
else
{
	vR[i] = 31158;
}

}
else
{
	if(input[i]==(31157+offset0))
{
	vR[i] = 31157;
}
else
{
	vR[i] = 31156;
}

}

}
else
{
	if(input[i]>(31153+offset0))
{
	if(input[i]==(31155+offset0))
{
	vR[i] = 31155;
}
else
{
	vR[i] = 31154;
}

}
else
{
	if(input[i]==(31153+offset0))
{
	vR[i] = 31153;
}
else
{
	vR[i] = 31152;
}

}

}

}

}
else
{
	if(input[i]>(31143+offset0))
{
	if(input[i]>(31147+offset0))
{
	if(input[i]>(31149+offset0))
{
	if(input[i]==(31151+offset0))
{
	vR[i] = 31151;
}
else
{
	vR[i] = 31150;
}

}
else
{
	if(input[i]==(31149+offset0))
{
	vR[i] = 31149;
}
else
{
	vR[i] = 31148;
}

}

}
else
{
	if(input[i]>(31145+offset0))
{
	if(input[i]==(31147+offset0))
{
	vR[i] = 31147;
}
else
{
	vR[i] = 31146;
}

}
else
{
	if(input[i]==(31145+offset0))
{
	vR[i] = 31145;
}
else
{
	vR[i] = 31144;
}

}

}

}
else
{
	if(input[i]>(31139+offset0))
{
	if(input[i]>(31141+offset0))
{
	if(input[i]==(31143+offset0))
{
	vR[i] = 31143;
}
else
{
	vR[i] = 31142;
}

}
else
{
	if(input[i]==(31141+offset0))
{
	vR[i] = 31141;
}
else
{
	vR[i] = 31140;
}

}

}
else
{
	if(input[i]>(31137+offset0))
{
	if(input[i]==(31139+offset0))
{
	vR[i] = 31139;
}
else
{
	vR[i] = 31138;
}

}
else
{
	if(input[i]==(31137+offset0))
{
	vR[i] = 31137;
}
else
{
	vR[i] = 31136;
}

}

}

}

}

}
else
{
	if(input[i]>(31119+offset0))
{
	if(input[i]>(31127+offset0))
{
	if(input[i]>(31131+offset0))
{
	if(input[i]>(31133+offset0))
{
	if(input[i]==(31135+offset0))
{
	vR[i] = 31135;
}
else
{
	vR[i] = 31134;
}

}
else
{
	if(input[i]==(31133+offset0))
{
	vR[i] = 31133;
}
else
{
	vR[i] = 31132;
}

}

}
else
{
	if(input[i]>(31129+offset0))
{
	if(input[i]==(31131+offset0))
{
	vR[i] = 31131;
}
else
{
	vR[i] = 31130;
}

}
else
{
	if(input[i]==(31129+offset0))
{
	vR[i] = 31129;
}
else
{
	vR[i] = 31128;
}

}

}

}
else
{
	if(input[i]>(31123+offset0))
{
	if(input[i]>(31125+offset0))
{
	if(input[i]==(31127+offset0))
{
	vR[i] = 31127;
}
else
{
	vR[i] = 31126;
}

}
else
{
	if(input[i]==(31125+offset0))
{
	vR[i] = 31125;
}
else
{
	vR[i] = 31124;
}

}

}
else
{
	if(input[i]>(31121+offset0))
{
	if(input[i]==(31123+offset0))
{
	vR[i] = 31123;
}
else
{
	vR[i] = 31122;
}

}
else
{
	if(input[i]==(31121+offset0))
{
	vR[i] = 31121;
}
else
{
	vR[i] = 31120;
}

}

}

}

}
else
{
	if(input[i]>(31111+offset0))
{
	if(input[i]>(31115+offset0))
{
	if(input[i]>(31117+offset0))
{
	if(input[i]==(31119+offset0))
{
	vR[i] = 31119;
}
else
{
	vR[i] = 31118;
}

}
else
{
	if(input[i]==(31117+offset0))
{
	vR[i] = 31117;
}
else
{
	vR[i] = 31116;
}

}

}
else
{
	if(input[i]>(31113+offset0))
{
	if(input[i]==(31115+offset0))
{
	vR[i] = 31115;
}
else
{
	vR[i] = 31114;
}

}
else
{
	if(input[i]==(31113+offset0))
{
	vR[i] = 31113;
}
else
{
	vR[i] = 31112;
}

}

}

}
else
{
	if(input[i]>(31107+offset0))
{
	if(input[i]>(31109+offset0))
{
	if(input[i]==(31111+offset0))
{
	vR[i] = 31111;
}
else
{
	vR[i] = 31110;
}

}
else
{
	if(input[i]==(31109+offset0))
{
	vR[i] = 31109;
}
else
{
	vR[i] = 31108;
}

}

}
else
{
	if(input[i]>(31105+offset0))
{
	if(input[i]==(31107+offset0))
{
	vR[i] = 31107;
}
else
{
	vR[i] = 31106;
}

}
else
{
	if(input[i]==(31105+offset0))
{
	vR[i] = 31105;
}
else
{
	vR[i] = 31104;
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
	if(input[i]>(31039+offset0))
{
	if(input[i]>(31071+offset0))
{
	if(input[i]>(31087+offset0))
{
	if(input[i]>(31095+offset0))
{
	if(input[i]>(31099+offset0))
{
	if(input[i]>(31101+offset0))
{
	if(input[i]==(31103+offset0))
{
	vR[i] = 31103;
}
else
{
	vR[i] = 31102;
}

}
else
{
	if(input[i]==(31101+offset0))
{
	vR[i] = 31101;
}
else
{
	vR[i] = 31100;
}

}

}
else
{
	if(input[i]>(31097+offset0))
{
	if(input[i]==(31099+offset0))
{
	vR[i] = 31099;
}
else
{
	vR[i] = 31098;
}

}
else
{
	if(input[i]==(31097+offset0))
{
	vR[i] = 31097;
}
else
{
	vR[i] = 31096;
}

}

}

}
else
{
	if(input[i]>(31091+offset0))
{
	if(input[i]>(31093+offset0))
{
	if(input[i]==(31095+offset0))
{
	vR[i] = 31095;
}
else
{
	vR[i] = 31094;
}

}
else
{
	if(input[i]==(31093+offset0))
{
	vR[i] = 31093;
}
else
{
	vR[i] = 31092;
}

}

}
else
{
	if(input[i]>(31089+offset0))
{
	if(input[i]==(31091+offset0))
{
	vR[i] = 31091;
}
else
{
	vR[i] = 31090;
}

}
else
{
	if(input[i]==(31089+offset0))
{
	vR[i] = 31089;
}
else
{
	vR[i] = 31088;
}

}

}

}

}
else
{
	if(input[i]>(31079+offset0))
{
	if(input[i]>(31083+offset0))
{
	if(input[i]>(31085+offset0))
{
	if(input[i]==(31087+offset0))
{
	vR[i] = 31087;
}
else
{
	vR[i] = 31086;
}

}
else
{
	if(input[i]==(31085+offset0))
{
	vR[i] = 31085;
}
else
{
	vR[i] = 31084;
}

}

}
else
{
	if(input[i]>(31081+offset0))
{
	if(input[i]==(31083+offset0))
{
	vR[i] = 31083;
}
else
{
	vR[i] = 31082;
}

}
else
{
	if(input[i]==(31081+offset0))
{
	vR[i] = 31081;
}
else
{
	vR[i] = 31080;
}

}

}

}
else
{
	if(input[i]>(31075+offset0))
{
	if(input[i]>(31077+offset0))
{
	if(input[i]==(31079+offset0))
{
	vR[i] = 31079;
}
else
{
	vR[i] = 31078;
}

}
else
{
	if(input[i]==(31077+offset0))
{
	vR[i] = 31077;
}
else
{
	vR[i] = 31076;
}

}

}
else
{
	if(input[i]>(31073+offset0))
{
	if(input[i]==(31075+offset0))
{
	vR[i] = 31075;
}
else
{
	vR[i] = 31074;
}

}
else
{
	if(input[i]==(31073+offset0))
{
	vR[i] = 31073;
}
else
{
	vR[i] = 31072;
}

}

}

}

}

}
else
{
	if(input[i]>(31055+offset0))
{
	if(input[i]>(31063+offset0))
{
	if(input[i]>(31067+offset0))
{
	if(input[i]>(31069+offset0))
{
	if(input[i]==(31071+offset0))
{
	vR[i] = 31071;
}
else
{
	vR[i] = 31070;
}

}
else
{
	if(input[i]==(31069+offset0))
{
	vR[i] = 31069;
}
else
{
	vR[i] = 31068;
}

}

}
else
{
	if(input[i]>(31065+offset0))
{
	if(input[i]==(31067+offset0))
{
	vR[i] = 31067;
}
else
{
	vR[i] = 31066;
}

}
else
{
	if(input[i]==(31065+offset0))
{
	vR[i] = 31065;
}
else
{
	vR[i] = 31064;
}

}

}

}
else
{
	if(input[i]>(31059+offset0))
{
	if(input[i]>(31061+offset0))
{
	if(input[i]==(31063+offset0))
{
	vR[i] = 31063;
}
else
{
	vR[i] = 31062;
}

}
else
{
	if(input[i]==(31061+offset0))
{
	vR[i] = 31061;
}
else
{
	vR[i] = 31060;
}

}

}
else
{
	if(input[i]>(31057+offset0))
{
	if(input[i]==(31059+offset0))
{
	vR[i] = 31059;
}
else
{
	vR[i] = 31058;
}

}
else
{
	if(input[i]==(31057+offset0))
{
	vR[i] = 31057;
}
else
{
	vR[i] = 31056;
}

}

}

}

}
else
{
	if(input[i]>(31047+offset0))
{
	if(input[i]>(31051+offset0))
{
	if(input[i]>(31053+offset0))
{
	if(input[i]==(31055+offset0))
{
	vR[i] = 31055;
}
else
{
	vR[i] = 31054;
}

}
else
{
	if(input[i]==(31053+offset0))
{
	vR[i] = 31053;
}
else
{
	vR[i] = 31052;
}

}

}
else
{
	if(input[i]>(31049+offset0))
{
	if(input[i]==(31051+offset0))
{
	vR[i] = 31051;
}
else
{
	vR[i] = 31050;
}

}
else
{
	if(input[i]==(31049+offset0))
{
	vR[i] = 31049;
}
else
{
	vR[i] = 31048;
}

}

}

}
else
{
	if(input[i]>(31043+offset0))
{
	if(input[i]>(31045+offset0))
{
	if(input[i]==(31047+offset0))
{
	vR[i] = 31047;
}
else
{
	vR[i] = 31046;
}

}
else
{
	if(input[i]==(31045+offset0))
{
	vR[i] = 31045;
}
else
{
	vR[i] = 31044;
}

}

}
else
{
	if(input[i]>(31041+offset0))
{
	if(input[i]==(31043+offset0))
{
	vR[i] = 31043;
}
else
{
	vR[i] = 31042;
}

}
else
{
	if(input[i]==(31041+offset0))
{
	vR[i] = 31041;
}
else
{
	vR[i] = 31040;
}

}

}

}

}

}

}
else
{
	if(input[i]>(31007+offset0))
{
	if(input[i]>(31023+offset0))
{
	if(input[i]>(31031+offset0))
{
	if(input[i]>(31035+offset0))
{
	if(input[i]>(31037+offset0))
{
	if(input[i]==(31039+offset0))
{
	vR[i] = 31039;
}
else
{
	vR[i] = 31038;
}

}
else
{
	if(input[i]==(31037+offset0))
{
	vR[i] = 31037;
}
else
{
	vR[i] = 31036;
}

}

}
else
{
	if(input[i]>(31033+offset0))
{
	if(input[i]==(31035+offset0))
{
	vR[i] = 31035;
}
else
{
	vR[i] = 31034;
}

}
else
{
	if(input[i]==(31033+offset0))
{
	vR[i] = 31033;
}
else
{
	vR[i] = 31032;
}

}

}

}
else
{
	if(input[i]>(31027+offset0))
{
	if(input[i]>(31029+offset0))
{
	if(input[i]==(31031+offset0))
{
	vR[i] = 31031;
}
else
{
	vR[i] = 31030;
}

}
else
{
	if(input[i]==(31029+offset0))
{
	vR[i] = 31029;
}
else
{
	vR[i] = 31028;
}

}

}
else
{
	if(input[i]>(31025+offset0))
{
	if(input[i]==(31027+offset0))
{
	vR[i] = 31027;
}
else
{
	vR[i] = 31026;
}

}
else
{
	if(input[i]==(31025+offset0))
{
	vR[i] = 31025;
}
else
{
	vR[i] = 31024;
}

}

}

}

}
else
{
	if(input[i]>(31015+offset0))
{
	if(input[i]>(31019+offset0))
{
	if(input[i]>(31021+offset0))
{
	if(input[i]==(31023+offset0))
{
	vR[i] = 31023;
}
else
{
	vR[i] = 31022;
}

}
else
{
	if(input[i]==(31021+offset0))
{
	vR[i] = 31021;
}
else
{
	vR[i] = 31020;
}

}

}
else
{
	if(input[i]>(31017+offset0))
{
	if(input[i]==(31019+offset0))
{
	vR[i] = 31019;
}
else
{
	vR[i] = 31018;
}

}
else
{
	if(input[i]==(31017+offset0))
{
	vR[i] = 31017;
}
else
{
	vR[i] = 31016;
}

}

}

}
else
{
	if(input[i]>(31011+offset0))
{
	if(input[i]>(31013+offset0))
{
	if(input[i]==(31015+offset0))
{
	vR[i] = 31015;
}
else
{
	vR[i] = 31014;
}

}
else
{
	if(input[i]==(31013+offset0))
{
	vR[i] = 31013;
}
else
{
	vR[i] = 31012;
}

}

}
else
{
	if(input[i]>(31009+offset0))
{
	if(input[i]==(31011+offset0))
{
	vR[i] = 31011;
}
else
{
	vR[i] = 31010;
}

}
else
{
	if(input[i]==(31009+offset0))
{
	vR[i] = 31009;
}
else
{
	vR[i] = 31008;
}

}

}

}

}

}
else
{
	if(input[i]>(30991+offset0))
{
	if(input[i]>(30999+offset0))
{
	if(input[i]>(31003+offset0))
{
	if(input[i]>(31005+offset0))
{
	if(input[i]==(31007+offset0))
{
	vR[i] = 31007;
}
else
{
	vR[i] = 31006;
}

}
else
{
	if(input[i]==(31005+offset0))
{
	vR[i] = 31005;
}
else
{
	vR[i] = 31004;
}

}

}
else
{
	if(input[i]>(31001+offset0))
{
	if(input[i]==(31003+offset0))
{
	vR[i] = 31003;
}
else
{
	vR[i] = 31002;
}

}
else
{
	if(input[i]==(31001+offset0))
{
	vR[i] = 31001;
}
else
{
	vR[i] = 31000;
}

}

}

}
else
{
	if(input[i]>(30995+offset0))
{
	if(input[i]>(30997+offset0))
{
	if(input[i]==(30999+offset0))
{
	vR[i] = 30999;
}
else
{
	vR[i] = 30998;
}

}
else
{
	if(input[i]==(30997+offset0))
{
	vR[i] = 30997;
}
else
{
	vR[i] = 30996;
}

}

}
else
{
	if(input[i]>(30993+offset0))
{
	if(input[i]==(30995+offset0))
{
	vR[i] = 30995;
}
else
{
	vR[i] = 30994;
}

}
else
{
	if(input[i]==(30993+offset0))
{
	vR[i] = 30993;
}
else
{
	vR[i] = 30992;
}

}

}

}

}
else
{
	if(input[i]>(30983+offset0))
{
	if(input[i]>(30987+offset0))
{
	if(input[i]>(30989+offset0))
{
	if(input[i]==(30991+offset0))
{
	vR[i] = 30991;
}
else
{
	vR[i] = 30990;
}

}
else
{
	if(input[i]==(30989+offset0))
{
	vR[i] = 30989;
}
else
{
	vR[i] = 30988;
}

}

}
else
{
	if(input[i]>(30985+offset0))
{
	if(input[i]==(30987+offset0))
{
	vR[i] = 30987;
}
else
{
	vR[i] = 30986;
}

}
else
{
	if(input[i]==(30985+offset0))
{
	vR[i] = 30985;
}
else
{
	vR[i] = 30984;
}

}

}

}
else
{
	if(input[i]>(30979+offset0))
{
	if(input[i]>(30981+offset0))
{
	if(input[i]==(30983+offset0))
{
	vR[i] = 30983;
}
else
{
	vR[i] = 30982;
}

}
else
{
	if(input[i]==(30981+offset0))
{
	vR[i] = 30981;
}
else
{
	vR[i] = 30980;
}

}

}
else
{
	if(input[i]>(30977+offset0))
{
	if(input[i]==(30979+offset0))
{
	vR[i] = 30979;
}
else
{
	vR[i] = 30978;
}

}
else
{
	if(input[i]==(30977+offset0))
{
	vR[i] = 30977;
}
else
{
	vR[i] = 30976;
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
	if(input[i]>(30847+offset0))
{
	if(input[i]>(30911+offset0))
{
	if(input[i]>(30943+offset0))
{
	if(input[i]>(30959+offset0))
{
	if(input[i]>(30967+offset0))
{
	if(input[i]>(30971+offset0))
{
	if(input[i]>(30973+offset0))
{
	if(input[i]==(30975+offset0))
{
	vR[i] = 30975;
}
else
{
	vR[i] = 30974;
}

}
else
{
	if(input[i]==(30973+offset0))
{
	vR[i] = 30973;
}
else
{
	vR[i] = 30972;
}

}

}
else
{
	if(input[i]>(30969+offset0))
{
	if(input[i]==(30971+offset0))
{
	vR[i] = 30971;
}
else
{
	vR[i] = 30970;
}

}
else
{
	if(input[i]==(30969+offset0))
{
	vR[i] = 30969;
}
else
{
	vR[i] = 30968;
}

}

}

}
else
{
	if(input[i]>(30963+offset0))
{
	if(input[i]>(30965+offset0))
{
	if(input[i]==(30967+offset0))
{
	vR[i] = 30967;
}
else
{
	vR[i] = 30966;
}

}
else
{
	if(input[i]==(30965+offset0))
{
	vR[i] = 30965;
}
else
{
	vR[i] = 30964;
}

}

}
else
{
	if(input[i]>(30961+offset0))
{
	if(input[i]==(30963+offset0))
{
	vR[i] = 30963;
}
else
{
	vR[i] = 30962;
}

}
else
{
	if(input[i]==(30961+offset0))
{
	vR[i] = 30961;
}
else
{
	vR[i] = 30960;
}

}

}

}

}
else
{
	if(input[i]>(30951+offset0))
{
	if(input[i]>(30955+offset0))
{
	if(input[i]>(30957+offset0))
{
	if(input[i]==(30959+offset0))
{
	vR[i] = 30959;
}
else
{
	vR[i] = 30958;
}

}
else
{
	if(input[i]==(30957+offset0))
{
	vR[i] = 30957;
}
else
{
	vR[i] = 30956;
}

}

}
else
{
	if(input[i]>(30953+offset0))
{
	if(input[i]==(30955+offset0))
{
	vR[i] = 30955;
}
else
{
	vR[i] = 30954;
}

}
else
{
	if(input[i]==(30953+offset0))
{
	vR[i] = 30953;
}
else
{
	vR[i] = 30952;
}

}

}

}
else
{
	if(input[i]>(30947+offset0))
{
	if(input[i]>(30949+offset0))
{
	if(input[i]==(30951+offset0))
{
	vR[i] = 30951;
}
else
{
	vR[i] = 30950;
}

}
else
{
	if(input[i]==(30949+offset0))
{
	vR[i] = 30949;
}
else
{
	vR[i] = 30948;
}

}

}
else
{
	if(input[i]>(30945+offset0))
{
	if(input[i]==(30947+offset0))
{
	vR[i] = 30947;
}
else
{
	vR[i] = 30946;
}

}
else
{
	if(input[i]==(30945+offset0))
{
	vR[i] = 30945;
}
else
{
	vR[i] = 30944;
}

}

}

}

}

}
else
{
	if(input[i]>(30927+offset0))
{
	if(input[i]>(30935+offset0))
{
	if(input[i]>(30939+offset0))
{
	if(input[i]>(30941+offset0))
{
	if(input[i]==(30943+offset0))
{
	vR[i] = 30943;
}
else
{
	vR[i] = 30942;
}

}
else
{
	if(input[i]==(30941+offset0))
{
	vR[i] = 30941;
}
else
{
	vR[i] = 30940;
}

}

}
else
{
	if(input[i]>(30937+offset0))
{
	if(input[i]==(30939+offset0))
{
	vR[i] = 30939;
}
else
{
	vR[i] = 30938;
}

}
else
{
	if(input[i]==(30937+offset0))
{
	vR[i] = 30937;
}
else
{
	vR[i] = 30936;
}

}

}

}
else
{
	if(input[i]>(30931+offset0))
{
	if(input[i]>(30933+offset0))
{
	if(input[i]==(30935+offset0))
{
	vR[i] = 30935;
}
else
{
	vR[i] = 30934;
}

}
else
{
	if(input[i]==(30933+offset0))
{
	vR[i] = 30933;
}
else
{
	vR[i] = 30932;
}

}

}
else
{
	if(input[i]>(30929+offset0))
{
	if(input[i]==(30931+offset0))
{
	vR[i] = 30931;
}
else
{
	vR[i] = 30930;
}

}
else
{
	if(input[i]==(30929+offset0))
{
	vR[i] = 30929;
}
else
{
	vR[i] = 30928;
}

}

}

}

}
else
{
	if(input[i]>(30919+offset0))
{
	if(input[i]>(30923+offset0))
{
	if(input[i]>(30925+offset0))
{
	if(input[i]==(30927+offset0))
{
	vR[i] = 30927;
}
else
{
	vR[i] = 30926;
}

}
else
{
	if(input[i]==(30925+offset0))
{
	vR[i] = 30925;
}
else
{
	vR[i] = 30924;
}

}

}
else
{
	if(input[i]>(30921+offset0))
{
	if(input[i]==(30923+offset0))
{
	vR[i] = 30923;
}
else
{
	vR[i] = 30922;
}

}
else
{
	if(input[i]==(30921+offset0))
{
	vR[i] = 30921;
}
else
{
	vR[i] = 30920;
}

}

}

}
else
{
	if(input[i]>(30915+offset0))
{
	if(input[i]>(30917+offset0))
{
	if(input[i]==(30919+offset0))
{
	vR[i] = 30919;
}
else
{
	vR[i] = 30918;
}

}
else
{
	if(input[i]==(30917+offset0))
{
	vR[i] = 30917;
}
else
{
	vR[i] = 30916;
}

}

}
else
{
	if(input[i]>(30913+offset0))
{
	if(input[i]==(30915+offset0))
{
	vR[i] = 30915;
}
else
{
	vR[i] = 30914;
}

}
else
{
	if(input[i]==(30913+offset0))
{
	vR[i] = 30913;
}
else
{
	vR[i] = 30912;
}

}

}

}

}

}

}
else
{
	if(input[i]>(30879+offset0))
{
	if(input[i]>(30895+offset0))
{
	if(input[i]>(30903+offset0))
{
	if(input[i]>(30907+offset0))
{
	if(input[i]>(30909+offset0))
{
	if(input[i]==(30911+offset0))
{
	vR[i] = 30911;
}
else
{
	vR[i] = 30910;
}

}
else
{
	if(input[i]==(30909+offset0))
{
	vR[i] = 30909;
}
else
{
	vR[i] = 30908;
}

}

}
else
{
	if(input[i]>(30905+offset0))
{
	if(input[i]==(30907+offset0))
{
	vR[i] = 30907;
}
else
{
	vR[i] = 30906;
}

}
else
{
	if(input[i]==(30905+offset0))
{
	vR[i] = 30905;
}
else
{
	vR[i] = 30904;
}

}

}

}
else
{
	if(input[i]>(30899+offset0))
{
	if(input[i]>(30901+offset0))
{
	if(input[i]==(30903+offset0))
{
	vR[i] = 30903;
}
else
{
	vR[i] = 30902;
}

}
else
{
	if(input[i]==(30901+offset0))
{
	vR[i] = 30901;
}
else
{
	vR[i] = 30900;
}

}

}
else
{
	if(input[i]>(30897+offset0))
{
	if(input[i]==(30899+offset0))
{
	vR[i] = 30899;
}
else
{
	vR[i] = 30898;
}

}
else
{
	if(input[i]==(30897+offset0))
{
	vR[i] = 30897;
}
else
{
	vR[i] = 30896;
}

}

}

}

}
else
{
	if(input[i]>(30887+offset0))
{
	if(input[i]>(30891+offset0))
{
	if(input[i]>(30893+offset0))
{
	if(input[i]==(30895+offset0))
{
	vR[i] = 30895;
}
else
{
	vR[i] = 30894;
}

}
else
{
	if(input[i]==(30893+offset0))
{
	vR[i] = 30893;
}
else
{
	vR[i] = 30892;
}

}

}
else
{
	if(input[i]>(30889+offset0))
{
	if(input[i]==(30891+offset0))
{
	vR[i] = 30891;
}
else
{
	vR[i] = 30890;
}

}
else
{
	if(input[i]==(30889+offset0))
{
	vR[i] = 30889;
}
else
{
	vR[i] = 30888;
}

}

}

}
else
{
	if(input[i]>(30883+offset0))
{
	if(input[i]>(30885+offset0))
{
	if(input[i]==(30887+offset0))
{
	vR[i] = 30887;
}
else
{
	vR[i] = 30886;
}

}
else
{
	if(input[i]==(30885+offset0))
{
	vR[i] = 30885;
}
else
{
	vR[i] = 30884;
}

}

}
else
{
	if(input[i]>(30881+offset0))
{
	if(input[i]==(30883+offset0))
{
	vR[i] = 30883;
}
else
{
	vR[i] = 30882;
}

}
else
{
	if(input[i]==(30881+offset0))
{
	vR[i] = 30881;
}
else
{
	vR[i] = 30880;
}

}

}

}

}

}
else
{
	if(input[i]>(30863+offset0))
{
	if(input[i]>(30871+offset0))
{
	if(input[i]>(30875+offset0))
{
	if(input[i]>(30877+offset0))
{
	if(input[i]==(30879+offset0))
{
	vR[i] = 30879;
}
else
{
	vR[i] = 30878;
}

}
else
{
	if(input[i]==(30877+offset0))
{
	vR[i] = 30877;
}
else
{
	vR[i] = 30876;
}

}

}
else
{
	if(input[i]>(30873+offset0))
{
	if(input[i]==(30875+offset0))
{
	vR[i] = 30875;
}
else
{
	vR[i] = 30874;
}

}
else
{
	if(input[i]==(30873+offset0))
{
	vR[i] = 30873;
}
else
{
	vR[i] = 30872;
}

}

}

}
else
{
	if(input[i]>(30867+offset0))
{
	if(input[i]>(30869+offset0))
{
	if(input[i]==(30871+offset0))
{
	vR[i] = 30871;
}
else
{
	vR[i] = 30870;
}

}
else
{
	if(input[i]==(30869+offset0))
{
	vR[i] = 30869;
}
else
{
	vR[i] = 30868;
}

}

}
else
{
	if(input[i]>(30865+offset0))
{
	if(input[i]==(30867+offset0))
{
	vR[i] = 30867;
}
else
{
	vR[i] = 30866;
}

}
else
{
	if(input[i]==(30865+offset0))
{
	vR[i] = 30865;
}
else
{
	vR[i] = 30864;
}

}

}

}

}
else
{
	if(input[i]>(30855+offset0))
{
	if(input[i]>(30859+offset0))
{
	if(input[i]>(30861+offset0))
{
	if(input[i]==(30863+offset0))
{
	vR[i] = 30863;
}
else
{
	vR[i] = 30862;
}

}
else
{
	if(input[i]==(30861+offset0))
{
	vR[i] = 30861;
}
else
{
	vR[i] = 30860;
}

}

}
else
{
	if(input[i]>(30857+offset0))
{
	if(input[i]==(30859+offset0))
{
	vR[i] = 30859;
}
else
{
	vR[i] = 30858;
}

}
else
{
	if(input[i]==(30857+offset0))
{
	vR[i] = 30857;
}
else
{
	vR[i] = 30856;
}

}

}

}
else
{
	if(input[i]>(30851+offset0))
{
	if(input[i]>(30853+offset0))
{
	if(input[i]==(30855+offset0))
{
	vR[i] = 30855;
}
else
{
	vR[i] = 30854;
}

}
else
{
	if(input[i]==(30853+offset0))
{
	vR[i] = 30853;
}
else
{
	vR[i] = 30852;
}

}

}
else
{
	if(input[i]>(30849+offset0))
{
	if(input[i]==(30851+offset0))
{
	vR[i] = 30851;
}
else
{
	vR[i] = 30850;
}

}
else
{
	if(input[i]==(30849+offset0))
{
	vR[i] = 30849;
}
else
{
	vR[i] = 30848;
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
	if(input[i]>(30783+offset0))
{
	if(input[i]>(30815+offset0))
{
	if(input[i]>(30831+offset0))
{
	if(input[i]>(30839+offset0))
{
	if(input[i]>(30843+offset0))
{
	if(input[i]>(30845+offset0))
{
	if(input[i]==(30847+offset0))
{
	vR[i] = 30847;
}
else
{
	vR[i] = 30846;
}

}
else
{
	if(input[i]==(30845+offset0))
{
	vR[i] = 30845;
}
else
{
	vR[i] = 30844;
}

}

}
else
{
	if(input[i]>(30841+offset0))
{
	if(input[i]==(30843+offset0))
{
	vR[i] = 30843;
}
else
{
	vR[i] = 30842;
}

}
else
{
	if(input[i]==(30841+offset0))
{
	vR[i] = 30841;
}
else
{
	vR[i] = 30840;
}

}

}

}
else
{
	if(input[i]>(30835+offset0))
{
	if(input[i]>(30837+offset0))
{
	if(input[i]==(30839+offset0))
{
	vR[i] = 30839;
}
else
{
	vR[i] = 30838;
}

}
else
{
	if(input[i]==(30837+offset0))
{
	vR[i] = 30837;
}
else
{
	vR[i] = 30836;
}

}

}
else
{
	if(input[i]>(30833+offset0))
{
	if(input[i]==(30835+offset0))
{
	vR[i] = 30835;
}
else
{
	vR[i] = 30834;
}

}
else
{
	if(input[i]==(30833+offset0))
{
	vR[i] = 30833;
}
else
{
	vR[i] = 30832;
}

}

}

}

}
else
{
	if(input[i]>(30823+offset0))
{
	if(input[i]>(30827+offset0))
{
	if(input[i]>(30829+offset0))
{
	if(input[i]==(30831+offset0))
{
	vR[i] = 30831;
}
else
{
	vR[i] = 30830;
}

}
else
{
	if(input[i]==(30829+offset0))
{
	vR[i] = 30829;
}
else
{
	vR[i] = 30828;
}

}

}
else
{
	if(input[i]>(30825+offset0))
{
	if(input[i]==(30827+offset0))
{
	vR[i] = 30827;
}
else
{
	vR[i] = 30826;
}

}
else
{
	if(input[i]==(30825+offset0))
{
	vR[i] = 30825;
}
else
{
	vR[i] = 30824;
}

}

}

}
else
{
	if(input[i]>(30819+offset0))
{
	if(input[i]>(30821+offset0))
{
	if(input[i]==(30823+offset0))
{
	vR[i] = 30823;
}
else
{
	vR[i] = 30822;
}

}
else
{
	if(input[i]==(30821+offset0))
{
	vR[i] = 30821;
}
else
{
	vR[i] = 30820;
}

}

}
else
{
	if(input[i]>(30817+offset0))
{
	if(input[i]==(30819+offset0))
{
	vR[i] = 30819;
}
else
{
	vR[i] = 30818;
}

}
else
{
	if(input[i]==(30817+offset0))
{
	vR[i] = 30817;
}
else
{
	vR[i] = 30816;
}

}

}

}

}

}
else
{
	if(input[i]>(30799+offset0))
{
	if(input[i]>(30807+offset0))
{
	if(input[i]>(30811+offset0))
{
	if(input[i]>(30813+offset0))
{
	if(input[i]==(30815+offset0))
{
	vR[i] = 30815;
}
else
{
	vR[i] = 30814;
}

}
else
{
	if(input[i]==(30813+offset0))
{
	vR[i] = 30813;
}
else
{
	vR[i] = 30812;
}

}

}
else
{
	if(input[i]>(30809+offset0))
{
	if(input[i]==(30811+offset0))
{
	vR[i] = 30811;
}
else
{
	vR[i] = 30810;
}

}
else
{
	if(input[i]==(30809+offset0))
{
	vR[i] = 30809;
}
else
{
	vR[i] = 30808;
}

}

}

}
else
{
	if(input[i]>(30803+offset0))
{
	if(input[i]>(30805+offset0))
{
	if(input[i]==(30807+offset0))
{
	vR[i] = 30807;
}
else
{
	vR[i] = 30806;
}

}
else
{
	if(input[i]==(30805+offset0))
{
	vR[i] = 30805;
}
else
{
	vR[i] = 30804;
}

}

}
else
{
	if(input[i]>(30801+offset0))
{
	if(input[i]==(30803+offset0))
{
	vR[i] = 30803;
}
else
{
	vR[i] = 30802;
}

}
else
{
	if(input[i]==(30801+offset0))
{
	vR[i] = 30801;
}
else
{
	vR[i] = 30800;
}

}

}

}

}
else
{
	if(input[i]>(30791+offset0))
{
	if(input[i]>(30795+offset0))
{
	if(input[i]>(30797+offset0))
{
	if(input[i]==(30799+offset0))
{
	vR[i] = 30799;
}
else
{
	vR[i] = 30798;
}

}
else
{
	if(input[i]==(30797+offset0))
{
	vR[i] = 30797;
}
else
{
	vR[i] = 30796;
}

}

}
else
{
	if(input[i]>(30793+offset0))
{
	if(input[i]==(30795+offset0))
{
	vR[i] = 30795;
}
else
{
	vR[i] = 30794;
}

}
else
{
	if(input[i]==(30793+offset0))
{
	vR[i] = 30793;
}
else
{
	vR[i] = 30792;
}

}

}

}
else
{
	if(input[i]>(30787+offset0))
{
	if(input[i]>(30789+offset0))
{
	if(input[i]==(30791+offset0))
{
	vR[i] = 30791;
}
else
{
	vR[i] = 30790;
}

}
else
{
	if(input[i]==(30789+offset0))
{
	vR[i] = 30789;
}
else
{
	vR[i] = 30788;
}

}

}
else
{
	if(input[i]>(30785+offset0))
{
	if(input[i]==(30787+offset0))
{
	vR[i] = 30787;
}
else
{
	vR[i] = 30786;
}

}
else
{
	if(input[i]==(30785+offset0))
{
	vR[i] = 30785;
}
else
{
	vR[i] = 30784;
}

}

}

}

}

}

}
else
{
	if(input[i]>(30751+offset0))
{
	if(input[i]>(30767+offset0))
{
	if(input[i]>(30775+offset0))
{
	if(input[i]>(30779+offset0))
{
	if(input[i]>(30781+offset0))
{
	if(input[i]==(30783+offset0))
{
	vR[i] = 30783;
}
else
{
	vR[i] = 30782;
}

}
else
{
	if(input[i]==(30781+offset0))
{
	vR[i] = 30781;
}
else
{
	vR[i] = 30780;
}

}

}
else
{
	if(input[i]>(30777+offset0))
{
	if(input[i]==(30779+offset0))
{
	vR[i] = 30779;
}
else
{
	vR[i] = 30778;
}

}
else
{
	if(input[i]==(30777+offset0))
{
	vR[i] = 30777;
}
else
{
	vR[i] = 30776;
}

}

}

}
else
{
	if(input[i]>(30771+offset0))
{
	if(input[i]>(30773+offset0))
{
	if(input[i]==(30775+offset0))
{
	vR[i] = 30775;
}
else
{
	vR[i] = 30774;
}

}
else
{
	if(input[i]==(30773+offset0))
{
	vR[i] = 30773;
}
else
{
	vR[i] = 30772;
}

}

}
else
{
	if(input[i]>(30769+offset0))
{
	if(input[i]==(30771+offset0))
{
	vR[i] = 30771;
}
else
{
	vR[i] = 30770;
}

}
else
{
	if(input[i]==(30769+offset0))
{
	vR[i] = 30769;
}
else
{
	vR[i] = 30768;
}

}

}

}

}
else
{
	if(input[i]>(30759+offset0))
{
	if(input[i]>(30763+offset0))
{
	if(input[i]>(30765+offset0))
{
	if(input[i]==(30767+offset0))
{
	vR[i] = 30767;
}
else
{
	vR[i] = 30766;
}

}
else
{
	if(input[i]==(30765+offset0))
{
	vR[i] = 30765;
}
else
{
	vR[i] = 30764;
}

}

}
else
{
	if(input[i]>(30761+offset0))
{
	if(input[i]==(30763+offset0))
{
	vR[i] = 30763;
}
else
{
	vR[i] = 30762;
}

}
else
{
	if(input[i]==(30761+offset0))
{
	vR[i] = 30761;
}
else
{
	vR[i] = 30760;
}

}

}

}
else
{
	if(input[i]>(30755+offset0))
{
	if(input[i]>(30757+offset0))
{
	if(input[i]==(30759+offset0))
{
	vR[i] = 30759;
}
else
{
	vR[i] = 30758;
}

}
else
{
	if(input[i]==(30757+offset0))
{
	vR[i] = 30757;
}
else
{
	vR[i] = 30756;
}

}

}
else
{
	if(input[i]>(30753+offset0))
{
	if(input[i]==(30755+offset0))
{
	vR[i] = 30755;
}
else
{
	vR[i] = 30754;
}

}
else
{
	if(input[i]==(30753+offset0))
{
	vR[i] = 30753;
}
else
{
	vR[i] = 30752;
}

}

}

}

}

}
else
{
	if(input[i]>(30735+offset0))
{
	if(input[i]>(30743+offset0))
{
	if(input[i]>(30747+offset0))
{
	if(input[i]>(30749+offset0))
{
	if(input[i]==(30751+offset0))
{
	vR[i] = 30751;
}
else
{
	vR[i] = 30750;
}

}
else
{
	if(input[i]==(30749+offset0))
{
	vR[i] = 30749;
}
else
{
	vR[i] = 30748;
}

}

}
else
{
	if(input[i]>(30745+offset0))
{
	if(input[i]==(30747+offset0))
{
	vR[i] = 30747;
}
else
{
	vR[i] = 30746;
}

}
else
{
	if(input[i]==(30745+offset0))
{
	vR[i] = 30745;
}
else
{
	vR[i] = 30744;
}

}

}

}
else
{
	if(input[i]>(30739+offset0))
{
	if(input[i]>(30741+offset0))
{
	if(input[i]==(30743+offset0))
{
	vR[i] = 30743;
}
else
{
	vR[i] = 30742;
}

}
else
{
	if(input[i]==(30741+offset0))
{
	vR[i] = 30741;
}
else
{
	vR[i] = 30740;
}

}

}
else
{
	if(input[i]>(30737+offset0))
{
	if(input[i]==(30739+offset0))
{
	vR[i] = 30739;
}
else
{
	vR[i] = 30738;
}

}
else
{
	if(input[i]==(30737+offset0))
{
	vR[i] = 30737;
}
else
{
	vR[i] = 30736;
}

}

}

}

}
else
{
	if(input[i]>(30727+offset0))
{
	if(input[i]>(30731+offset0))
{
	if(input[i]>(30733+offset0))
{
	if(input[i]==(30735+offset0))
{
	vR[i] = 30735;
}
else
{
	vR[i] = 30734;
}

}
else
{
	if(input[i]==(30733+offset0))
{
	vR[i] = 30733;
}
else
{
	vR[i] = 30732;
}

}

}
else
{
	if(input[i]>(30729+offset0))
{
	if(input[i]==(30731+offset0))
{
	vR[i] = 30731;
}
else
{
	vR[i] = 30730;
}

}
else
{
	if(input[i]==(30729+offset0))
{
	vR[i] = 30729;
}
else
{
	vR[i] = 30728;
}

}

}

}
else
{
	if(input[i]>(30723+offset0))
{
	if(input[i]>(30725+offset0))
{
	if(input[i]==(30727+offset0))
{
	vR[i] = 30727;
}
else
{
	vR[i] = 30726;
}

}
else
{
	if(input[i]==(30725+offset0))
{
	vR[i] = 30725;
}
else
{
	vR[i] = 30724;
}

}

}
else
{
	if(input[i]>(30721+offset0))
{
	if(input[i]==(30723+offset0))
{
	vR[i] = 30723;
}
else
{
	vR[i] = 30722;
}

}
else
{
	if(input[i]==(30721+offset0))
{
	vR[i] = 30721;
}
else
{
	vR[i] = 30720;
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
	if(input[i]>(29695+offset0))
{
	if(input[i]>(30207+offset0))
{
	if(input[i]>(30463+offset0))
{
	if(input[i]>(30591+offset0))
{
	if(input[i]>(30655+offset0))
{
	if(input[i]>(30687+offset0))
{
	if(input[i]>(30703+offset0))
{
	if(input[i]>(30711+offset0))
{
	if(input[i]>(30715+offset0))
{
	if(input[i]>(30717+offset0))
{
	if(input[i]==(30719+offset0))
{
	vR[i] = 30719;
}
else
{
	vR[i] = 30718;
}

}
else
{
	if(input[i]==(30717+offset0))
{
	vR[i] = 30717;
}
else
{
	vR[i] = 30716;
}

}

}
else
{
	if(input[i]>(30713+offset0))
{
	if(input[i]==(30715+offset0))
{
	vR[i] = 30715;
}
else
{
	vR[i] = 30714;
}

}
else
{
	if(input[i]==(30713+offset0))
{
	vR[i] = 30713;
}
else
{
	vR[i] = 30712;
}

}

}

}
else
{
	if(input[i]>(30707+offset0))
{
	if(input[i]>(30709+offset0))
{
	if(input[i]==(30711+offset0))
{
	vR[i] = 30711;
}
else
{
	vR[i] = 30710;
}

}
else
{
	if(input[i]==(30709+offset0))
{
	vR[i] = 30709;
}
else
{
	vR[i] = 30708;
}

}

}
else
{
	if(input[i]>(30705+offset0))
{
	if(input[i]==(30707+offset0))
{
	vR[i] = 30707;
}
else
{
	vR[i] = 30706;
}

}
else
{
	if(input[i]==(30705+offset0))
{
	vR[i] = 30705;
}
else
{
	vR[i] = 30704;
}

}

}

}

}
else
{
	if(input[i]>(30695+offset0))
{
	if(input[i]>(30699+offset0))
{
	if(input[i]>(30701+offset0))
{
	if(input[i]==(30703+offset0))
{
	vR[i] = 30703;
}
else
{
	vR[i] = 30702;
}

}
else
{
	if(input[i]==(30701+offset0))
{
	vR[i] = 30701;
}
else
{
	vR[i] = 30700;
}

}

}
else
{
	if(input[i]>(30697+offset0))
{
	if(input[i]==(30699+offset0))
{
	vR[i] = 30699;
}
else
{
	vR[i] = 30698;
}

}
else
{
	if(input[i]==(30697+offset0))
{
	vR[i] = 30697;
}
else
{
	vR[i] = 30696;
}

}

}

}
else
{
	if(input[i]>(30691+offset0))
{
	if(input[i]>(30693+offset0))
{
	if(input[i]==(30695+offset0))
{
	vR[i] = 30695;
}
else
{
	vR[i] = 30694;
}

}
else
{
	if(input[i]==(30693+offset0))
{
	vR[i] = 30693;
}
else
{
	vR[i] = 30692;
}

}

}
else
{
	if(input[i]>(30689+offset0))
{
	if(input[i]==(30691+offset0))
{
	vR[i] = 30691;
}
else
{
	vR[i] = 30690;
}

}
else
{
	if(input[i]==(30689+offset0))
{
	vR[i] = 30689;
}
else
{
	vR[i] = 30688;
}

}

}

}

}

}
else
{
	if(input[i]>(30671+offset0))
{
	if(input[i]>(30679+offset0))
{
	if(input[i]>(30683+offset0))
{
	if(input[i]>(30685+offset0))
{
	if(input[i]==(30687+offset0))
{
	vR[i] = 30687;
}
else
{
	vR[i] = 30686;
}

}
else
{
	if(input[i]==(30685+offset0))
{
	vR[i] = 30685;
}
else
{
	vR[i] = 30684;
}

}

}
else
{
	if(input[i]>(30681+offset0))
{
	if(input[i]==(30683+offset0))
{
	vR[i] = 30683;
}
else
{
	vR[i] = 30682;
}

}
else
{
	if(input[i]==(30681+offset0))
{
	vR[i] = 30681;
}
else
{
	vR[i] = 30680;
}

}

}

}
else
{
	if(input[i]>(30675+offset0))
{
	if(input[i]>(30677+offset0))
{
	if(input[i]==(30679+offset0))
{
	vR[i] = 30679;
}
else
{
	vR[i] = 30678;
}

}
else
{
	if(input[i]==(30677+offset0))
{
	vR[i] = 30677;
}
else
{
	vR[i] = 30676;
}

}

}
else
{
	if(input[i]>(30673+offset0))
{
	if(input[i]==(30675+offset0))
{
	vR[i] = 30675;
}
else
{
	vR[i] = 30674;
}

}
else
{
	if(input[i]==(30673+offset0))
{
	vR[i] = 30673;
}
else
{
	vR[i] = 30672;
}

}

}

}

}
else
{
	if(input[i]>(30663+offset0))
{
	if(input[i]>(30667+offset0))
{
	if(input[i]>(30669+offset0))
{
	if(input[i]==(30671+offset0))
{
	vR[i] = 30671;
}
else
{
	vR[i] = 30670;
}

}
else
{
	if(input[i]==(30669+offset0))
{
	vR[i] = 30669;
}
else
{
	vR[i] = 30668;
}

}

}
else
{
	if(input[i]>(30665+offset0))
{
	if(input[i]==(30667+offset0))
{
	vR[i] = 30667;
}
else
{
	vR[i] = 30666;
}

}
else
{
	if(input[i]==(30665+offset0))
{
	vR[i] = 30665;
}
else
{
	vR[i] = 30664;
}

}

}

}
else
{
	if(input[i]>(30659+offset0))
{
	if(input[i]>(30661+offset0))
{
	if(input[i]==(30663+offset0))
{
	vR[i] = 30663;
}
else
{
	vR[i] = 30662;
}

}
else
{
	if(input[i]==(30661+offset0))
{
	vR[i] = 30661;
}
else
{
	vR[i] = 30660;
}

}

}
else
{
	if(input[i]>(30657+offset0))
{
	if(input[i]==(30659+offset0))
{
	vR[i] = 30659;
}
else
{
	vR[i] = 30658;
}

}
else
{
	if(input[i]==(30657+offset0))
{
	vR[i] = 30657;
}
else
{
	vR[i] = 30656;
}

}

}

}

}

}

}
else
{
	if(input[i]>(30623+offset0))
{
	if(input[i]>(30639+offset0))
{
	if(input[i]>(30647+offset0))
{
	if(input[i]>(30651+offset0))
{
	if(input[i]>(30653+offset0))
{
	if(input[i]==(30655+offset0))
{
	vR[i] = 30655;
}
else
{
	vR[i] = 30654;
}

}
else
{
	if(input[i]==(30653+offset0))
{
	vR[i] = 30653;
}
else
{
	vR[i] = 30652;
}

}

}
else
{
	if(input[i]>(30649+offset0))
{
	if(input[i]==(30651+offset0))
{
	vR[i] = 30651;
}
else
{
	vR[i] = 30650;
}

}
else
{
	if(input[i]==(30649+offset0))
{
	vR[i] = 30649;
}
else
{
	vR[i] = 30648;
}

}

}

}
else
{
	if(input[i]>(30643+offset0))
{
	if(input[i]>(30645+offset0))
{
	if(input[i]==(30647+offset0))
{
	vR[i] = 30647;
}
else
{
	vR[i] = 30646;
}

}
else
{
	if(input[i]==(30645+offset0))
{
	vR[i] = 30645;
}
else
{
	vR[i] = 30644;
}

}

}
else
{
	if(input[i]>(30641+offset0))
{
	if(input[i]==(30643+offset0))
{
	vR[i] = 30643;
}
else
{
	vR[i] = 30642;
}

}
else
{
	if(input[i]==(30641+offset0))
{
	vR[i] = 30641;
}
else
{
	vR[i] = 30640;
}

}

}

}

}
else
{
	if(input[i]>(30631+offset0))
{
	if(input[i]>(30635+offset0))
{
	if(input[i]>(30637+offset0))
{
	if(input[i]==(30639+offset0))
{
	vR[i] = 30639;
}
else
{
	vR[i] = 30638;
}

}
else
{
	if(input[i]==(30637+offset0))
{
	vR[i] = 30637;
}
else
{
	vR[i] = 30636;
}

}

}
else
{
	if(input[i]>(30633+offset0))
{
	if(input[i]==(30635+offset0))
{
	vR[i] = 30635;
}
else
{
	vR[i] = 30634;
}

}
else
{
	if(input[i]==(30633+offset0))
{
	vR[i] = 30633;
}
else
{
	vR[i] = 30632;
}

}

}

}
else
{
	if(input[i]>(30627+offset0))
{
	if(input[i]>(30629+offset0))
{
	if(input[i]==(30631+offset0))
{
	vR[i] = 30631;
}
else
{
	vR[i] = 30630;
}

}
else
{
	if(input[i]==(30629+offset0))
{
	vR[i] = 30629;
}
else
{
	vR[i] = 30628;
}

}

}
else
{
	if(input[i]>(30625+offset0))
{
	if(input[i]==(30627+offset0))
{
	vR[i] = 30627;
}
else
{
	vR[i] = 30626;
}

}
else
{
	if(input[i]==(30625+offset0))
{
	vR[i] = 30625;
}
else
{
	vR[i] = 30624;
}

}

}

}

}

}
else
{
	if(input[i]>(30607+offset0))
{
	if(input[i]>(30615+offset0))
{
	if(input[i]>(30619+offset0))
{
	if(input[i]>(30621+offset0))
{
	if(input[i]==(30623+offset0))
{
	vR[i] = 30623;
}
else
{
	vR[i] = 30622;
}

}
else
{
	if(input[i]==(30621+offset0))
{
	vR[i] = 30621;
}
else
{
	vR[i] = 30620;
}

}

}
else
{
	if(input[i]>(30617+offset0))
{
	if(input[i]==(30619+offset0))
{
	vR[i] = 30619;
}
else
{
	vR[i] = 30618;
}

}
else
{
	if(input[i]==(30617+offset0))
{
	vR[i] = 30617;
}
else
{
	vR[i] = 30616;
}

}

}

}
else
{
	if(input[i]>(30611+offset0))
{
	if(input[i]>(30613+offset0))
{
	if(input[i]==(30615+offset0))
{
	vR[i] = 30615;
}
else
{
	vR[i] = 30614;
}

}
else
{
	if(input[i]==(30613+offset0))
{
	vR[i] = 30613;
}
else
{
	vR[i] = 30612;
}

}

}
else
{
	if(input[i]>(30609+offset0))
{
	if(input[i]==(30611+offset0))
{
	vR[i] = 30611;
}
else
{
	vR[i] = 30610;
}

}
else
{
	if(input[i]==(30609+offset0))
{
	vR[i] = 30609;
}
else
{
	vR[i] = 30608;
}

}

}

}

}
else
{
	if(input[i]>(30599+offset0))
{
	if(input[i]>(30603+offset0))
{
	if(input[i]>(30605+offset0))
{
	if(input[i]==(30607+offset0))
{
	vR[i] = 30607;
}
else
{
	vR[i] = 30606;
}

}
else
{
	if(input[i]==(30605+offset0))
{
	vR[i] = 30605;
}
else
{
	vR[i] = 30604;
}

}

}
else
{
	if(input[i]>(30601+offset0))
{
	if(input[i]==(30603+offset0))
{
	vR[i] = 30603;
}
else
{
	vR[i] = 30602;
}

}
else
{
	if(input[i]==(30601+offset0))
{
	vR[i] = 30601;
}
else
{
	vR[i] = 30600;
}

}

}

}
else
{
	if(input[i]>(30595+offset0))
{
	if(input[i]>(30597+offset0))
{
	if(input[i]==(30599+offset0))
{
	vR[i] = 30599;
}
else
{
	vR[i] = 30598;
}

}
else
{
	if(input[i]==(30597+offset0))
{
	vR[i] = 30597;
}
else
{
	vR[i] = 30596;
}

}

}
else
{
	if(input[i]>(30593+offset0))
{
	if(input[i]==(30595+offset0))
{
	vR[i] = 30595;
}
else
{
	vR[i] = 30594;
}

}
else
{
	if(input[i]==(30593+offset0))
{
	vR[i] = 30593;
}
else
{
	vR[i] = 30592;
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
	if(input[i]>(30527+offset0))
{
	if(input[i]>(30559+offset0))
{
	if(input[i]>(30575+offset0))
{
	if(input[i]>(30583+offset0))
{
	if(input[i]>(30587+offset0))
{
	if(input[i]>(30589+offset0))
{
	if(input[i]==(30591+offset0))
{
	vR[i] = 30591;
}
else
{
	vR[i] = 30590;
}

}
else
{
	if(input[i]==(30589+offset0))
{
	vR[i] = 30589;
}
else
{
	vR[i] = 30588;
}

}

}
else
{
	if(input[i]>(30585+offset0))
{
	if(input[i]==(30587+offset0))
{
	vR[i] = 30587;
}
else
{
	vR[i] = 30586;
}

}
else
{
	if(input[i]==(30585+offset0))
{
	vR[i] = 30585;
}
else
{
	vR[i] = 30584;
}

}

}

}
else
{
	if(input[i]>(30579+offset0))
{
	if(input[i]>(30581+offset0))
{
	if(input[i]==(30583+offset0))
{
	vR[i] = 30583;
}
else
{
	vR[i] = 30582;
}

}
else
{
	if(input[i]==(30581+offset0))
{
	vR[i] = 30581;
}
else
{
	vR[i] = 30580;
}

}

}
else
{
	if(input[i]>(30577+offset0))
{
	if(input[i]==(30579+offset0))
{
	vR[i] = 30579;
}
else
{
	vR[i] = 30578;
}

}
else
{
	if(input[i]==(30577+offset0))
{
	vR[i] = 30577;
}
else
{
	vR[i] = 30576;
}

}

}

}

}
else
{
	if(input[i]>(30567+offset0))
{
	if(input[i]>(30571+offset0))
{
	if(input[i]>(30573+offset0))
{
	if(input[i]==(30575+offset0))
{
	vR[i] = 30575;
}
else
{
	vR[i] = 30574;
}

}
else
{
	if(input[i]==(30573+offset0))
{
	vR[i] = 30573;
}
else
{
	vR[i] = 30572;
}

}

}
else
{
	if(input[i]>(30569+offset0))
{
	if(input[i]==(30571+offset0))
{
	vR[i] = 30571;
}
else
{
	vR[i] = 30570;
}

}
else
{
	if(input[i]==(30569+offset0))
{
	vR[i] = 30569;
}
else
{
	vR[i] = 30568;
}

}

}

}
else
{
	if(input[i]>(30563+offset0))
{
	if(input[i]>(30565+offset0))
{
	if(input[i]==(30567+offset0))
{
	vR[i] = 30567;
}
else
{
	vR[i] = 30566;
}

}
else
{
	if(input[i]==(30565+offset0))
{
	vR[i] = 30565;
}
else
{
	vR[i] = 30564;
}

}

}
else
{
	if(input[i]>(30561+offset0))
{
	if(input[i]==(30563+offset0))
{
	vR[i] = 30563;
}
else
{
	vR[i] = 30562;
}

}
else
{
	if(input[i]==(30561+offset0))
{
	vR[i] = 30561;
}
else
{
	vR[i] = 30560;
}

}

}

}

}

}
else
{
	if(input[i]>(30543+offset0))
{
	if(input[i]>(30551+offset0))
{
	if(input[i]>(30555+offset0))
{
	if(input[i]>(30557+offset0))
{
	if(input[i]==(30559+offset0))
{
	vR[i] = 30559;
}
else
{
	vR[i] = 30558;
}

}
else
{
	if(input[i]==(30557+offset0))
{
	vR[i] = 30557;
}
else
{
	vR[i] = 30556;
}

}

}
else
{
	if(input[i]>(30553+offset0))
{
	if(input[i]==(30555+offset0))
{
	vR[i] = 30555;
}
else
{
	vR[i] = 30554;
}

}
else
{
	if(input[i]==(30553+offset0))
{
	vR[i] = 30553;
}
else
{
	vR[i] = 30552;
}

}

}

}
else
{
	if(input[i]>(30547+offset0))
{
	if(input[i]>(30549+offset0))
{
	if(input[i]==(30551+offset0))
{
	vR[i] = 30551;
}
else
{
	vR[i] = 30550;
}

}
else
{
	if(input[i]==(30549+offset0))
{
	vR[i] = 30549;
}
else
{
	vR[i] = 30548;
}

}

}
else
{
	if(input[i]>(30545+offset0))
{
	if(input[i]==(30547+offset0))
{
	vR[i] = 30547;
}
else
{
	vR[i] = 30546;
}

}
else
{
	if(input[i]==(30545+offset0))
{
	vR[i] = 30545;
}
else
{
	vR[i] = 30544;
}

}

}

}

}
else
{
	if(input[i]>(30535+offset0))
{
	if(input[i]>(30539+offset0))
{
	if(input[i]>(30541+offset0))
{
	if(input[i]==(30543+offset0))
{
	vR[i] = 30543;
}
else
{
	vR[i] = 30542;
}

}
else
{
	if(input[i]==(30541+offset0))
{
	vR[i] = 30541;
}
else
{
	vR[i] = 30540;
}

}

}
else
{
	if(input[i]>(30537+offset0))
{
	if(input[i]==(30539+offset0))
{
	vR[i] = 30539;
}
else
{
	vR[i] = 30538;
}

}
else
{
	if(input[i]==(30537+offset0))
{
	vR[i] = 30537;
}
else
{
	vR[i] = 30536;
}

}

}

}
else
{
	if(input[i]>(30531+offset0))
{
	if(input[i]>(30533+offset0))
{
	if(input[i]==(30535+offset0))
{
	vR[i] = 30535;
}
else
{
	vR[i] = 30534;
}

}
else
{
	if(input[i]==(30533+offset0))
{
	vR[i] = 30533;
}
else
{
	vR[i] = 30532;
}

}

}
else
{
	if(input[i]>(30529+offset0))
{
	if(input[i]==(30531+offset0))
{
	vR[i] = 30531;
}
else
{
	vR[i] = 30530;
}

}
else
{
	if(input[i]==(30529+offset0))
{
	vR[i] = 30529;
}
else
{
	vR[i] = 30528;
}

}

}

}

}

}

}
else
{
	if(input[i]>(30495+offset0))
{
	if(input[i]>(30511+offset0))
{
	if(input[i]>(30519+offset0))
{
	if(input[i]>(30523+offset0))
{
	if(input[i]>(30525+offset0))
{
	if(input[i]==(30527+offset0))
{
	vR[i] = 30527;
}
else
{
	vR[i] = 30526;
}

}
else
{
	if(input[i]==(30525+offset0))
{
	vR[i] = 30525;
}
else
{
	vR[i] = 30524;
}

}

}
else
{
	if(input[i]>(30521+offset0))
{
	if(input[i]==(30523+offset0))
{
	vR[i] = 30523;
}
else
{
	vR[i] = 30522;
}

}
else
{
	if(input[i]==(30521+offset0))
{
	vR[i] = 30521;
}
else
{
	vR[i] = 30520;
}

}

}

}
else
{
	if(input[i]>(30515+offset0))
{
	if(input[i]>(30517+offset0))
{
	if(input[i]==(30519+offset0))
{
	vR[i] = 30519;
}
else
{
	vR[i] = 30518;
}

}
else
{
	if(input[i]==(30517+offset0))
{
	vR[i] = 30517;
}
else
{
	vR[i] = 30516;
}

}

}
else
{
	if(input[i]>(30513+offset0))
{
	if(input[i]==(30515+offset0))
{
	vR[i] = 30515;
}
else
{
	vR[i] = 30514;
}

}
else
{
	if(input[i]==(30513+offset0))
{
	vR[i] = 30513;
}
else
{
	vR[i] = 30512;
}

}

}

}

}
else
{
	if(input[i]>(30503+offset0))
{
	if(input[i]>(30507+offset0))
{
	if(input[i]>(30509+offset0))
{
	if(input[i]==(30511+offset0))
{
	vR[i] = 30511;
}
else
{
	vR[i] = 30510;
}

}
else
{
	if(input[i]==(30509+offset0))
{
	vR[i] = 30509;
}
else
{
	vR[i] = 30508;
}

}

}
else
{
	if(input[i]>(30505+offset0))
{
	if(input[i]==(30507+offset0))
{
	vR[i] = 30507;
}
else
{
	vR[i] = 30506;
}

}
else
{
	if(input[i]==(30505+offset0))
{
	vR[i] = 30505;
}
else
{
	vR[i] = 30504;
}

}

}

}
else
{
	if(input[i]>(30499+offset0))
{
	if(input[i]>(30501+offset0))
{
	if(input[i]==(30503+offset0))
{
	vR[i] = 30503;
}
else
{
	vR[i] = 30502;
}

}
else
{
	if(input[i]==(30501+offset0))
{
	vR[i] = 30501;
}
else
{
	vR[i] = 30500;
}

}

}
else
{
	if(input[i]>(30497+offset0))
{
	if(input[i]==(30499+offset0))
{
	vR[i] = 30499;
}
else
{
	vR[i] = 30498;
}

}
else
{
	if(input[i]==(30497+offset0))
{
	vR[i] = 30497;
}
else
{
	vR[i] = 30496;
}

}

}

}

}

}
else
{
	if(input[i]>(30479+offset0))
{
	if(input[i]>(30487+offset0))
{
	if(input[i]>(30491+offset0))
{
	if(input[i]>(30493+offset0))
{
	if(input[i]==(30495+offset0))
{
	vR[i] = 30495;
}
else
{
	vR[i] = 30494;
}

}
else
{
	if(input[i]==(30493+offset0))
{
	vR[i] = 30493;
}
else
{
	vR[i] = 30492;
}

}

}
else
{
	if(input[i]>(30489+offset0))
{
	if(input[i]==(30491+offset0))
{
	vR[i] = 30491;
}
else
{
	vR[i] = 30490;
}

}
else
{
	if(input[i]==(30489+offset0))
{
	vR[i] = 30489;
}
else
{
	vR[i] = 30488;
}

}

}

}
else
{
	if(input[i]>(30483+offset0))
{
	if(input[i]>(30485+offset0))
{
	if(input[i]==(30487+offset0))
{
	vR[i] = 30487;
}
else
{
	vR[i] = 30486;
}

}
else
{
	if(input[i]==(30485+offset0))
{
	vR[i] = 30485;
}
else
{
	vR[i] = 30484;
}

}

}
else
{
	if(input[i]>(30481+offset0))
{
	if(input[i]==(30483+offset0))
{
	vR[i] = 30483;
}
else
{
	vR[i] = 30482;
}

}
else
{
	if(input[i]==(30481+offset0))
{
	vR[i] = 30481;
}
else
{
	vR[i] = 30480;
}

}

}

}

}
else
{
	if(input[i]>(30471+offset0))
{
	if(input[i]>(30475+offset0))
{
	if(input[i]>(30477+offset0))
{
	if(input[i]==(30479+offset0))
{
	vR[i] = 30479;
}
else
{
	vR[i] = 30478;
}

}
else
{
	if(input[i]==(30477+offset0))
{
	vR[i] = 30477;
}
else
{
	vR[i] = 30476;
}

}

}
else
{
	if(input[i]>(30473+offset0))
{
	if(input[i]==(30475+offset0))
{
	vR[i] = 30475;
}
else
{
	vR[i] = 30474;
}

}
else
{
	if(input[i]==(30473+offset0))
{
	vR[i] = 30473;
}
else
{
	vR[i] = 30472;
}

}

}

}
else
{
	if(input[i]>(30467+offset0))
{
	if(input[i]>(30469+offset0))
{
	if(input[i]==(30471+offset0))
{
	vR[i] = 30471;
}
else
{
	vR[i] = 30470;
}

}
else
{
	if(input[i]==(30469+offset0))
{
	vR[i] = 30469;
}
else
{
	vR[i] = 30468;
}

}

}
else
{
	if(input[i]>(30465+offset0))
{
	if(input[i]==(30467+offset0))
{
	vR[i] = 30467;
}
else
{
	vR[i] = 30466;
}

}
else
{
	if(input[i]==(30465+offset0))
{
	vR[i] = 30465;
}
else
{
	vR[i] = 30464;
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
	if(input[i]>(30335+offset0))
{
	if(input[i]>(30399+offset0))
{
	if(input[i]>(30431+offset0))
{
	if(input[i]>(30447+offset0))
{
	if(input[i]>(30455+offset0))
{
	if(input[i]>(30459+offset0))
{
	if(input[i]>(30461+offset0))
{
	if(input[i]==(30463+offset0))
{
	vR[i] = 30463;
}
else
{
	vR[i] = 30462;
}

}
else
{
	if(input[i]==(30461+offset0))
{
	vR[i] = 30461;
}
else
{
	vR[i] = 30460;
}

}

}
else
{
	if(input[i]>(30457+offset0))
{
	if(input[i]==(30459+offset0))
{
	vR[i] = 30459;
}
else
{
	vR[i] = 30458;
}

}
else
{
	if(input[i]==(30457+offset0))
{
	vR[i] = 30457;
}
else
{
	vR[i] = 30456;
}

}

}

}
else
{
	if(input[i]>(30451+offset0))
{
	if(input[i]>(30453+offset0))
{
	if(input[i]==(30455+offset0))
{
	vR[i] = 30455;
}
else
{
	vR[i] = 30454;
}

}
else
{
	if(input[i]==(30453+offset0))
{
	vR[i] = 30453;
}
else
{
	vR[i] = 30452;
}

}

}
else
{
	if(input[i]>(30449+offset0))
{
	if(input[i]==(30451+offset0))
{
	vR[i] = 30451;
}
else
{
	vR[i] = 30450;
}

}
else
{
	if(input[i]==(30449+offset0))
{
	vR[i] = 30449;
}
else
{
	vR[i] = 30448;
}

}

}

}

}
else
{
	if(input[i]>(30439+offset0))
{
	if(input[i]>(30443+offset0))
{
	if(input[i]>(30445+offset0))
{
	if(input[i]==(30447+offset0))
{
	vR[i] = 30447;
}
else
{
	vR[i] = 30446;
}

}
else
{
	if(input[i]==(30445+offset0))
{
	vR[i] = 30445;
}
else
{
	vR[i] = 30444;
}

}

}
else
{
	if(input[i]>(30441+offset0))
{
	if(input[i]==(30443+offset0))
{
	vR[i] = 30443;
}
else
{
	vR[i] = 30442;
}

}
else
{
	if(input[i]==(30441+offset0))
{
	vR[i] = 30441;
}
else
{
	vR[i] = 30440;
}

}

}

}
else
{
	if(input[i]>(30435+offset0))
{
	if(input[i]>(30437+offset0))
{
	if(input[i]==(30439+offset0))
{
	vR[i] = 30439;
}
else
{
	vR[i] = 30438;
}

}
else
{
	if(input[i]==(30437+offset0))
{
	vR[i] = 30437;
}
else
{
	vR[i] = 30436;
}

}

}
else
{
	if(input[i]>(30433+offset0))
{
	if(input[i]==(30435+offset0))
{
	vR[i] = 30435;
}
else
{
	vR[i] = 30434;
}

}
else
{
	if(input[i]==(30433+offset0))
{
	vR[i] = 30433;
}
else
{
	vR[i] = 30432;
}

}

}

}

}

}
else
{
	if(input[i]>(30415+offset0))
{
	if(input[i]>(30423+offset0))
{
	if(input[i]>(30427+offset0))
{
	if(input[i]>(30429+offset0))
{
	if(input[i]==(30431+offset0))
{
	vR[i] = 30431;
}
else
{
	vR[i] = 30430;
}

}
else
{
	if(input[i]==(30429+offset0))
{
	vR[i] = 30429;
}
else
{
	vR[i] = 30428;
}

}

}
else
{
	if(input[i]>(30425+offset0))
{
	if(input[i]==(30427+offset0))
{
	vR[i] = 30427;
}
else
{
	vR[i] = 30426;
}

}
else
{
	if(input[i]==(30425+offset0))
{
	vR[i] = 30425;
}
else
{
	vR[i] = 30424;
}

}

}

}
else
{
	if(input[i]>(30419+offset0))
{
	if(input[i]>(30421+offset0))
{
	if(input[i]==(30423+offset0))
{
	vR[i] = 30423;
}
else
{
	vR[i] = 30422;
}

}
else
{
	if(input[i]==(30421+offset0))
{
	vR[i] = 30421;
}
else
{
	vR[i] = 30420;
}

}

}
else
{
	if(input[i]>(30417+offset0))
{
	if(input[i]==(30419+offset0))
{
	vR[i] = 30419;
}
else
{
	vR[i] = 30418;
}

}
else
{
	if(input[i]==(30417+offset0))
{
	vR[i] = 30417;
}
else
{
	vR[i] = 30416;
}

}

}

}

}
else
{
	if(input[i]>(30407+offset0))
{
	if(input[i]>(30411+offset0))
{
	if(input[i]>(30413+offset0))
{
	if(input[i]==(30415+offset0))
{
	vR[i] = 30415;
}
else
{
	vR[i] = 30414;
}

}
else
{
	if(input[i]==(30413+offset0))
{
	vR[i] = 30413;
}
else
{
	vR[i] = 30412;
}

}

}
else
{
	if(input[i]>(30409+offset0))
{
	if(input[i]==(30411+offset0))
{
	vR[i] = 30411;
}
else
{
	vR[i] = 30410;
}

}
else
{
	if(input[i]==(30409+offset0))
{
	vR[i] = 30409;
}
else
{
	vR[i] = 30408;
}

}

}

}
else
{
	if(input[i]>(30403+offset0))
{
	if(input[i]>(30405+offset0))
{
	if(input[i]==(30407+offset0))
{
	vR[i] = 30407;
}
else
{
	vR[i] = 30406;
}

}
else
{
	if(input[i]==(30405+offset0))
{
	vR[i] = 30405;
}
else
{
	vR[i] = 30404;
}

}

}
else
{
	if(input[i]>(30401+offset0))
{
	if(input[i]==(30403+offset0))
{
	vR[i] = 30403;
}
else
{
	vR[i] = 30402;
}

}
else
{
	if(input[i]==(30401+offset0))
{
	vR[i] = 30401;
}
else
{
	vR[i] = 30400;
}

}

}

}

}

}

}
else
{
	if(input[i]>(30367+offset0))
{
	if(input[i]>(30383+offset0))
{
	if(input[i]>(30391+offset0))
{
	if(input[i]>(30395+offset0))
{
	if(input[i]>(30397+offset0))
{
	if(input[i]==(30399+offset0))
{
	vR[i] = 30399;
}
else
{
	vR[i] = 30398;
}

}
else
{
	if(input[i]==(30397+offset0))
{
	vR[i] = 30397;
}
else
{
	vR[i] = 30396;
}

}

}
else
{
	if(input[i]>(30393+offset0))
{
	if(input[i]==(30395+offset0))
{
	vR[i] = 30395;
}
else
{
	vR[i] = 30394;
}

}
else
{
	if(input[i]==(30393+offset0))
{
	vR[i] = 30393;
}
else
{
	vR[i] = 30392;
}

}

}

}
else
{
	if(input[i]>(30387+offset0))
{
	if(input[i]>(30389+offset0))
{
	if(input[i]==(30391+offset0))
{
	vR[i] = 30391;
}
else
{
	vR[i] = 30390;
}

}
else
{
	if(input[i]==(30389+offset0))
{
	vR[i] = 30389;
}
else
{
	vR[i] = 30388;
}

}

}
else
{
	if(input[i]>(30385+offset0))
{
	if(input[i]==(30387+offset0))
{
	vR[i] = 30387;
}
else
{
	vR[i] = 30386;
}

}
else
{
	if(input[i]==(30385+offset0))
{
	vR[i] = 30385;
}
else
{
	vR[i] = 30384;
}

}

}

}

}
else
{
	if(input[i]>(30375+offset0))
{
	if(input[i]>(30379+offset0))
{
	if(input[i]>(30381+offset0))
{
	if(input[i]==(30383+offset0))
{
	vR[i] = 30383;
}
else
{
	vR[i] = 30382;
}

}
else
{
	if(input[i]==(30381+offset0))
{
	vR[i] = 30381;
}
else
{
	vR[i] = 30380;
}

}

}
else
{
	if(input[i]>(30377+offset0))
{
	if(input[i]==(30379+offset0))
{
	vR[i] = 30379;
}
else
{
	vR[i] = 30378;
}

}
else
{
	if(input[i]==(30377+offset0))
{
	vR[i] = 30377;
}
else
{
	vR[i] = 30376;
}

}

}

}
else
{
	if(input[i]>(30371+offset0))
{
	if(input[i]>(30373+offset0))
{
	if(input[i]==(30375+offset0))
{
	vR[i] = 30375;
}
else
{
	vR[i] = 30374;
}

}
else
{
	if(input[i]==(30373+offset0))
{
	vR[i] = 30373;
}
else
{
	vR[i] = 30372;
}

}

}
else
{
	if(input[i]>(30369+offset0))
{
	if(input[i]==(30371+offset0))
{
	vR[i] = 30371;
}
else
{
	vR[i] = 30370;
}

}
else
{
	if(input[i]==(30369+offset0))
{
	vR[i] = 30369;
}
else
{
	vR[i] = 30368;
}

}

}

}

}

}
else
{
	if(input[i]>(30351+offset0))
{
	if(input[i]>(30359+offset0))
{
	if(input[i]>(30363+offset0))
{
	if(input[i]>(30365+offset0))
{
	if(input[i]==(30367+offset0))
{
	vR[i] = 30367;
}
else
{
	vR[i] = 30366;
}

}
else
{
	if(input[i]==(30365+offset0))
{
	vR[i] = 30365;
}
else
{
	vR[i] = 30364;
}

}

}
else
{
	if(input[i]>(30361+offset0))
{
	if(input[i]==(30363+offset0))
{
	vR[i] = 30363;
}
else
{
	vR[i] = 30362;
}

}
else
{
	if(input[i]==(30361+offset0))
{
	vR[i] = 30361;
}
else
{
	vR[i] = 30360;
}

}

}

}
else
{
	if(input[i]>(30355+offset0))
{
	if(input[i]>(30357+offset0))
{
	if(input[i]==(30359+offset0))
{
	vR[i] = 30359;
}
else
{
	vR[i] = 30358;
}

}
else
{
	if(input[i]==(30357+offset0))
{
	vR[i] = 30357;
}
else
{
	vR[i] = 30356;
}

}

}
else
{
	if(input[i]>(30353+offset0))
{
	if(input[i]==(30355+offset0))
{
	vR[i] = 30355;
}
else
{
	vR[i] = 30354;
}

}
else
{
	if(input[i]==(30353+offset0))
{
	vR[i] = 30353;
}
else
{
	vR[i] = 30352;
}

}

}

}

}
else
{
	if(input[i]>(30343+offset0))
{
	if(input[i]>(30347+offset0))
{
	if(input[i]>(30349+offset0))
{
	if(input[i]==(30351+offset0))
{
	vR[i] = 30351;
}
else
{
	vR[i] = 30350;
}

}
else
{
	if(input[i]==(30349+offset0))
{
	vR[i] = 30349;
}
else
{
	vR[i] = 30348;
}

}

}
else
{
	if(input[i]>(30345+offset0))
{
	if(input[i]==(30347+offset0))
{
	vR[i] = 30347;
}
else
{
	vR[i] = 30346;
}

}
else
{
	if(input[i]==(30345+offset0))
{
	vR[i] = 30345;
}
else
{
	vR[i] = 30344;
}

}

}

}
else
{
	if(input[i]>(30339+offset0))
{
	if(input[i]>(30341+offset0))
{
	if(input[i]==(30343+offset0))
{
	vR[i] = 30343;
}
else
{
	vR[i] = 30342;
}

}
else
{
	if(input[i]==(30341+offset0))
{
	vR[i] = 30341;
}
else
{
	vR[i] = 30340;
}

}

}
else
{
	if(input[i]>(30337+offset0))
{
	if(input[i]==(30339+offset0))
{
	vR[i] = 30339;
}
else
{
	vR[i] = 30338;
}

}
else
{
	if(input[i]==(30337+offset0))
{
	vR[i] = 30337;
}
else
{
	vR[i] = 30336;
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
	if(input[i]>(30271+offset0))
{
	if(input[i]>(30303+offset0))
{
	if(input[i]>(30319+offset0))
{
	if(input[i]>(30327+offset0))
{
	if(input[i]>(30331+offset0))
{
	if(input[i]>(30333+offset0))
{
	if(input[i]==(30335+offset0))
{
	vR[i] = 30335;
}
else
{
	vR[i] = 30334;
}

}
else
{
	if(input[i]==(30333+offset0))
{
	vR[i] = 30333;
}
else
{
	vR[i] = 30332;
}

}

}
else
{
	if(input[i]>(30329+offset0))
{
	if(input[i]==(30331+offset0))
{
	vR[i] = 30331;
}
else
{
	vR[i] = 30330;
}

}
else
{
	if(input[i]==(30329+offset0))
{
	vR[i] = 30329;
}
else
{
	vR[i] = 30328;
}

}

}

}
else
{
	if(input[i]>(30323+offset0))
{
	if(input[i]>(30325+offset0))
{
	if(input[i]==(30327+offset0))
{
	vR[i] = 30327;
}
else
{
	vR[i] = 30326;
}

}
else
{
	if(input[i]==(30325+offset0))
{
	vR[i] = 30325;
}
else
{
	vR[i] = 30324;
}

}

}
else
{
	if(input[i]>(30321+offset0))
{
	if(input[i]==(30323+offset0))
{
	vR[i] = 30323;
}
else
{
	vR[i] = 30322;
}

}
else
{
	if(input[i]==(30321+offset0))
{
	vR[i] = 30321;
}
else
{
	vR[i] = 30320;
}

}

}

}

}
else
{
	if(input[i]>(30311+offset0))
{
	if(input[i]>(30315+offset0))
{
	if(input[i]>(30317+offset0))
{
	if(input[i]==(30319+offset0))
{
	vR[i] = 30319;
}
else
{
	vR[i] = 30318;
}

}
else
{
	if(input[i]==(30317+offset0))
{
	vR[i] = 30317;
}
else
{
	vR[i] = 30316;
}

}

}
else
{
	if(input[i]>(30313+offset0))
{
	if(input[i]==(30315+offset0))
{
	vR[i] = 30315;
}
else
{
	vR[i] = 30314;
}

}
else
{
	if(input[i]==(30313+offset0))
{
	vR[i] = 30313;
}
else
{
	vR[i] = 30312;
}

}

}

}
else
{
	if(input[i]>(30307+offset0))
{
	if(input[i]>(30309+offset0))
{
	if(input[i]==(30311+offset0))
{
	vR[i] = 30311;
}
else
{
	vR[i] = 30310;
}

}
else
{
	if(input[i]==(30309+offset0))
{
	vR[i] = 30309;
}
else
{
	vR[i] = 30308;
}

}

}
else
{
	if(input[i]>(30305+offset0))
{
	if(input[i]==(30307+offset0))
{
	vR[i] = 30307;
}
else
{
	vR[i] = 30306;
}

}
else
{
	if(input[i]==(30305+offset0))
{
	vR[i] = 30305;
}
else
{
	vR[i] = 30304;
}

}

}

}

}

}
else
{
	if(input[i]>(30287+offset0))
{
	if(input[i]>(30295+offset0))
{
	if(input[i]>(30299+offset0))
{
	if(input[i]>(30301+offset0))
{
	if(input[i]==(30303+offset0))
{
	vR[i] = 30303;
}
else
{
	vR[i] = 30302;
}

}
else
{
	if(input[i]==(30301+offset0))
{
	vR[i] = 30301;
}
else
{
	vR[i] = 30300;
}

}

}
else
{
	if(input[i]>(30297+offset0))
{
	if(input[i]==(30299+offset0))
{
	vR[i] = 30299;
}
else
{
	vR[i] = 30298;
}

}
else
{
	if(input[i]==(30297+offset0))
{
	vR[i] = 30297;
}
else
{
	vR[i] = 30296;
}

}

}

}
else
{
	if(input[i]>(30291+offset0))
{
	if(input[i]>(30293+offset0))
{
	if(input[i]==(30295+offset0))
{
	vR[i] = 30295;
}
else
{
	vR[i] = 30294;
}

}
else
{
	if(input[i]==(30293+offset0))
{
	vR[i] = 30293;
}
else
{
	vR[i] = 30292;
}

}

}
else
{
	if(input[i]>(30289+offset0))
{
	if(input[i]==(30291+offset0))
{
	vR[i] = 30291;
}
else
{
	vR[i] = 30290;
}

}
else
{
	if(input[i]==(30289+offset0))
{
	vR[i] = 30289;
}
else
{
	vR[i] = 30288;
}

}

}

}

}
else
{
	if(input[i]>(30279+offset0))
{
	if(input[i]>(30283+offset0))
{
	if(input[i]>(30285+offset0))
{
	if(input[i]==(30287+offset0))
{
	vR[i] = 30287;
}
else
{
	vR[i] = 30286;
}

}
else
{
	if(input[i]==(30285+offset0))
{
	vR[i] = 30285;
}
else
{
	vR[i] = 30284;
}

}

}
else
{
	if(input[i]>(30281+offset0))
{
	if(input[i]==(30283+offset0))
{
	vR[i] = 30283;
}
else
{
	vR[i] = 30282;
}

}
else
{
	if(input[i]==(30281+offset0))
{
	vR[i] = 30281;
}
else
{
	vR[i] = 30280;
}

}

}

}
else
{
	if(input[i]>(30275+offset0))
{
	if(input[i]>(30277+offset0))
{
	if(input[i]==(30279+offset0))
{
	vR[i] = 30279;
}
else
{
	vR[i] = 30278;
}

}
else
{
	if(input[i]==(30277+offset0))
{
	vR[i] = 30277;
}
else
{
	vR[i] = 30276;
}

}

}
else
{
	if(input[i]>(30273+offset0))
{
	if(input[i]==(30275+offset0))
{
	vR[i] = 30275;
}
else
{
	vR[i] = 30274;
}

}
else
{
	if(input[i]==(30273+offset0))
{
	vR[i] = 30273;
}
else
{
	vR[i] = 30272;
}

}

}

}

}

}

}
else
{
	if(input[i]>(30239+offset0))
{
	if(input[i]>(30255+offset0))
{
	if(input[i]>(30263+offset0))
{
	if(input[i]>(30267+offset0))
{
	if(input[i]>(30269+offset0))
{
	if(input[i]==(30271+offset0))
{
	vR[i] = 30271;
}
else
{
	vR[i] = 30270;
}

}
else
{
	if(input[i]==(30269+offset0))
{
	vR[i] = 30269;
}
else
{
	vR[i] = 30268;
}

}

}
else
{
	if(input[i]>(30265+offset0))
{
	if(input[i]==(30267+offset0))
{
	vR[i] = 30267;
}
else
{
	vR[i] = 30266;
}

}
else
{
	if(input[i]==(30265+offset0))
{
	vR[i] = 30265;
}
else
{
	vR[i] = 30264;
}

}

}

}
else
{
	if(input[i]>(30259+offset0))
{
	if(input[i]>(30261+offset0))
{
	if(input[i]==(30263+offset0))
{
	vR[i] = 30263;
}
else
{
	vR[i] = 30262;
}

}
else
{
	if(input[i]==(30261+offset0))
{
	vR[i] = 30261;
}
else
{
	vR[i] = 30260;
}

}

}
else
{
	if(input[i]>(30257+offset0))
{
	if(input[i]==(30259+offset0))
{
	vR[i] = 30259;
}
else
{
	vR[i] = 30258;
}

}
else
{
	if(input[i]==(30257+offset0))
{
	vR[i] = 30257;
}
else
{
	vR[i] = 30256;
}

}

}

}

}
else
{
	if(input[i]>(30247+offset0))
{
	if(input[i]>(30251+offset0))
{
	if(input[i]>(30253+offset0))
{
	if(input[i]==(30255+offset0))
{
	vR[i] = 30255;
}
else
{
	vR[i] = 30254;
}

}
else
{
	if(input[i]==(30253+offset0))
{
	vR[i] = 30253;
}
else
{
	vR[i] = 30252;
}

}

}
else
{
	if(input[i]>(30249+offset0))
{
	if(input[i]==(30251+offset0))
{
	vR[i] = 30251;
}
else
{
	vR[i] = 30250;
}

}
else
{
	if(input[i]==(30249+offset0))
{
	vR[i] = 30249;
}
else
{
	vR[i] = 30248;
}

}

}

}
else
{
	if(input[i]>(30243+offset0))
{
	if(input[i]>(30245+offset0))
{
	if(input[i]==(30247+offset0))
{
	vR[i] = 30247;
}
else
{
	vR[i] = 30246;
}

}
else
{
	if(input[i]==(30245+offset0))
{
	vR[i] = 30245;
}
else
{
	vR[i] = 30244;
}

}

}
else
{
	if(input[i]>(30241+offset0))
{
	if(input[i]==(30243+offset0))
{
	vR[i] = 30243;
}
else
{
	vR[i] = 30242;
}

}
else
{
	if(input[i]==(30241+offset0))
{
	vR[i] = 30241;
}
else
{
	vR[i] = 30240;
}

}

}

}

}

}
else
{
	if(input[i]>(30223+offset0))
{
	if(input[i]>(30231+offset0))
{
	if(input[i]>(30235+offset0))
{
	if(input[i]>(30237+offset0))
{
	if(input[i]==(30239+offset0))
{
	vR[i] = 30239;
}
else
{
	vR[i] = 30238;
}

}
else
{
	if(input[i]==(30237+offset0))
{
	vR[i] = 30237;
}
else
{
	vR[i] = 30236;
}

}

}
else
{
	if(input[i]>(30233+offset0))
{
	if(input[i]==(30235+offset0))
{
	vR[i] = 30235;
}
else
{
	vR[i] = 30234;
}

}
else
{
	if(input[i]==(30233+offset0))
{
	vR[i] = 30233;
}
else
{
	vR[i] = 30232;
}

}

}

}
else
{
	if(input[i]>(30227+offset0))
{
	if(input[i]>(30229+offset0))
{
	if(input[i]==(30231+offset0))
{
	vR[i] = 30231;
}
else
{
	vR[i] = 30230;
}

}
else
{
	if(input[i]==(30229+offset0))
{
	vR[i] = 30229;
}
else
{
	vR[i] = 30228;
}

}

}
else
{
	if(input[i]>(30225+offset0))
{
	if(input[i]==(30227+offset0))
{
	vR[i] = 30227;
}
else
{
	vR[i] = 30226;
}

}
else
{
	if(input[i]==(30225+offset0))
{
	vR[i] = 30225;
}
else
{
	vR[i] = 30224;
}

}

}

}

}
else
{
	if(input[i]>(30215+offset0))
{
	if(input[i]>(30219+offset0))
{
	if(input[i]>(30221+offset0))
{
	if(input[i]==(30223+offset0))
{
	vR[i] = 30223;
}
else
{
	vR[i] = 30222;
}

}
else
{
	if(input[i]==(30221+offset0))
{
	vR[i] = 30221;
}
else
{
	vR[i] = 30220;
}

}

}
else
{
	if(input[i]>(30217+offset0))
{
	if(input[i]==(30219+offset0))
{
	vR[i] = 30219;
}
else
{
	vR[i] = 30218;
}

}
else
{
	if(input[i]==(30217+offset0))
{
	vR[i] = 30217;
}
else
{
	vR[i] = 30216;
}

}

}

}
else
{
	if(input[i]>(30211+offset0))
{
	if(input[i]>(30213+offset0))
{
	if(input[i]==(30215+offset0))
{
	vR[i] = 30215;
}
else
{
	vR[i] = 30214;
}

}
else
{
	if(input[i]==(30213+offset0))
{
	vR[i] = 30213;
}
else
{
	vR[i] = 30212;
}

}

}
else
{
	if(input[i]>(30209+offset0))
{
	if(input[i]==(30211+offset0))
{
	vR[i] = 30211;
}
else
{
	vR[i] = 30210;
}

}
else
{
	if(input[i]==(30209+offset0))
{
	vR[i] = 30209;
}
else
{
	vR[i] = 30208;
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
	if(input[i]>(29951+offset0))
{
	if(input[i]>(30079+offset0))
{
	if(input[i]>(30143+offset0))
{
	if(input[i]>(30175+offset0))
{
	if(input[i]>(30191+offset0))
{
	if(input[i]>(30199+offset0))
{
	if(input[i]>(30203+offset0))
{
	if(input[i]>(30205+offset0))
{
	if(input[i]==(30207+offset0))
{
	vR[i] = 30207;
}
else
{
	vR[i] = 30206;
}

}
else
{
	if(input[i]==(30205+offset0))
{
	vR[i] = 30205;
}
else
{
	vR[i] = 30204;
}

}

}
else
{
	if(input[i]>(30201+offset0))
{
	if(input[i]==(30203+offset0))
{
	vR[i] = 30203;
}
else
{
	vR[i] = 30202;
}

}
else
{
	if(input[i]==(30201+offset0))
{
	vR[i] = 30201;
}
else
{
	vR[i] = 30200;
}

}

}

}
else
{
	if(input[i]>(30195+offset0))
{
	if(input[i]>(30197+offset0))
{
	if(input[i]==(30199+offset0))
{
	vR[i] = 30199;
}
else
{
	vR[i] = 30198;
}

}
else
{
	if(input[i]==(30197+offset0))
{
	vR[i] = 30197;
}
else
{
	vR[i] = 30196;
}

}

}
else
{
	if(input[i]>(30193+offset0))
{
	if(input[i]==(30195+offset0))
{
	vR[i] = 30195;
}
else
{
	vR[i] = 30194;
}

}
else
{
	if(input[i]==(30193+offset0))
{
	vR[i] = 30193;
}
else
{
	vR[i] = 30192;
}

}

}

}

}
else
{
	if(input[i]>(30183+offset0))
{
	if(input[i]>(30187+offset0))
{
	if(input[i]>(30189+offset0))
{
	if(input[i]==(30191+offset0))
{
	vR[i] = 30191;
}
else
{
	vR[i] = 30190;
}

}
else
{
	if(input[i]==(30189+offset0))
{
	vR[i] = 30189;
}
else
{
	vR[i] = 30188;
}

}

}
else
{
	if(input[i]>(30185+offset0))
{
	if(input[i]==(30187+offset0))
{
	vR[i] = 30187;
}
else
{
	vR[i] = 30186;
}

}
else
{
	if(input[i]==(30185+offset0))
{
	vR[i] = 30185;
}
else
{
	vR[i] = 30184;
}

}

}

}
else
{
	if(input[i]>(30179+offset0))
{
	if(input[i]>(30181+offset0))
{
	if(input[i]==(30183+offset0))
{
	vR[i] = 30183;
}
else
{
	vR[i] = 30182;
}

}
else
{
	if(input[i]==(30181+offset0))
{
	vR[i] = 30181;
}
else
{
	vR[i] = 30180;
}

}

}
else
{
	if(input[i]>(30177+offset0))
{
	if(input[i]==(30179+offset0))
{
	vR[i] = 30179;
}
else
{
	vR[i] = 30178;
}

}
else
{
	if(input[i]==(30177+offset0))
{
	vR[i] = 30177;
}
else
{
	vR[i] = 30176;
}

}

}

}

}

}
else
{
	if(input[i]>(30159+offset0))
{
	if(input[i]>(30167+offset0))
{
	if(input[i]>(30171+offset0))
{
	if(input[i]>(30173+offset0))
{
	if(input[i]==(30175+offset0))
{
	vR[i] = 30175;
}
else
{
	vR[i] = 30174;
}

}
else
{
	if(input[i]==(30173+offset0))
{
	vR[i] = 30173;
}
else
{
	vR[i] = 30172;
}

}

}
else
{
	if(input[i]>(30169+offset0))
{
	if(input[i]==(30171+offset0))
{
	vR[i] = 30171;
}
else
{
	vR[i] = 30170;
}

}
else
{
	if(input[i]==(30169+offset0))
{
	vR[i] = 30169;
}
else
{
	vR[i] = 30168;
}

}

}

}
else
{
	if(input[i]>(30163+offset0))
{
	if(input[i]>(30165+offset0))
{
	if(input[i]==(30167+offset0))
{
	vR[i] = 30167;
}
else
{
	vR[i] = 30166;
}

}
else
{
	if(input[i]==(30165+offset0))
{
	vR[i] = 30165;
}
else
{
	vR[i] = 30164;
}

}

}
else
{
	if(input[i]>(30161+offset0))
{
	if(input[i]==(30163+offset0))
{
	vR[i] = 30163;
}
else
{
	vR[i] = 30162;
}

}
else
{
	if(input[i]==(30161+offset0))
{
	vR[i] = 30161;
}
else
{
	vR[i] = 30160;
}

}

}

}

}
else
{
	if(input[i]>(30151+offset0))
{
	if(input[i]>(30155+offset0))
{
	if(input[i]>(30157+offset0))
{
	if(input[i]==(30159+offset0))
{
	vR[i] = 30159;
}
else
{
	vR[i] = 30158;
}

}
else
{
	if(input[i]==(30157+offset0))
{
	vR[i] = 30157;
}
else
{
	vR[i] = 30156;
}

}

}
else
{
	if(input[i]>(30153+offset0))
{
	if(input[i]==(30155+offset0))
{
	vR[i] = 30155;
}
else
{
	vR[i] = 30154;
}

}
else
{
	if(input[i]==(30153+offset0))
{
	vR[i] = 30153;
}
else
{
	vR[i] = 30152;
}

}

}

}
else
{
	if(input[i]>(30147+offset0))
{
	if(input[i]>(30149+offset0))
{
	if(input[i]==(30151+offset0))
{
	vR[i] = 30151;
}
else
{
	vR[i] = 30150;
}

}
else
{
	if(input[i]==(30149+offset0))
{
	vR[i] = 30149;
}
else
{
	vR[i] = 30148;
}

}

}
else
{
	if(input[i]>(30145+offset0))
{
	if(input[i]==(30147+offset0))
{
	vR[i] = 30147;
}
else
{
	vR[i] = 30146;
}

}
else
{
	if(input[i]==(30145+offset0))
{
	vR[i] = 30145;
}
else
{
	vR[i] = 30144;
}

}

}

}

}

}

}
else
{
	if(input[i]>(30111+offset0))
{
	if(input[i]>(30127+offset0))
{
	if(input[i]>(30135+offset0))
{
	if(input[i]>(30139+offset0))
{
	if(input[i]>(30141+offset0))
{
	if(input[i]==(30143+offset0))
{
	vR[i] = 30143;
}
else
{
	vR[i] = 30142;
}

}
else
{
	if(input[i]==(30141+offset0))
{
	vR[i] = 30141;
}
else
{
	vR[i] = 30140;
}

}

}
else
{
	if(input[i]>(30137+offset0))
{
	if(input[i]==(30139+offset0))
{
	vR[i] = 30139;
}
else
{
	vR[i] = 30138;
}

}
else
{
	if(input[i]==(30137+offset0))
{
	vR[i] = 30137;
}
else
{
	vR[i] = 30136;
}

}

}

}
else
{
	if(input[i]>(30131+offset0))
{
	if(input[i]>(30133+offset0))
{
	if(input[i]==(30135+offset0))
{
	vR[i] = 30135;
}
else
{
	vR[i] = 30134;
}

}
else
{
	if(input[i]==(30133+offset0))
{
	vR[i] = 30133;
}
else
{
	vR[i] = 30132;
}

}

}
else
{
	if(input[i]>(30129+offset0))
{
	if(input[i]==(30131+offset0))
{
	vR[i] = 30131;
}
else
{
	vR[i] = 30130;
}

}
else
{
	if(input[i]==(30129+offset0))
{
	vR[i] = 30129;
}
else
{
	vR[i] = 30128;
}

}

}

}

}
else
{
	if(input[i]>(30119+offset0))
{
	if(input[i]>(30123+offset0))
{
	if(input[i]>(30125+offset0))
{
	if(input[i]==(30127+offset0))
{
	vR[i] = 30127;
}
else
{
	vR[i] = 30126;
}

}
else
{
	if(input[i]==(30125+offset0))
{
	vR[i] = 30125;
}
else
{
	vR[i] = 30124;
}

}

}
else
{
	if(input[i]>(30121+offset0))
{
	if(input[i]==(30123+offset0))
{
	vR[i] = 30123;
}
else
{
	vR[i] = 30122;
}

}
else
{
	if(input[i]==(30121+offset0))
{
	vR[i] = 30121;
}
else
{
	vR[i] = 30120;
}

}

}

}
else
{
	if(input[i]>(30115+offset0))
{
	if(input[i]>(30117+offset0))
{
	if(input[i]==(30119+offset0))
{
	vR[i] = 30119;
}
else
{
	vR[i] = 30118;
}

}
else
{
	if(input[i]==(30117+offset0))
{
	vR[i] = 30117;
}
else
{
	vR[i] = 30116;
}

}

}
else
{
	if(input[i]>(30113+offset0))
{
	if(input[i]==(30115+offset0))
{
	vR[i] = 30115;
}
else
{
	vR[i] = 30114;
}

}
else
{
	if(input[i]==(30113+offset0))
{
	vR[i] = 30113;
}
else
{
	vR[i] = 30112;
}

}

}

}

}

}
else
{
	if(input[i]>(30095+offset0))
{
	if(input[i]>(30103+offset0))
{
	if(input[i]>(30107+offset0))
{
	if(input[i]>(30109+offset0))
{
	if(input[i]==(30111+offset0))
{
	vR[i] = 30111;
}
else
{
	vR[i] = 30110;
}

}
else
{
	if(input[i]==(30109+offset0))
{
	vR[i] = 30109;
}
else
{
	vR[i] = 30108;
}

}

}
else
{
	if(input[i]>(30105+offset0))
{
	if(input[i]==(30107+offset0))
{
	vR[i] = 30107;
}
else
{
	vR[i] = 30106;
}

}
else
{
	if(input[i]==(30105+offset0))
{
	vR[i] = 30105;
}
else
{
	vR[i] = 30104;
}

}

}

}
else
{
	if(input[i]>(30099+offset0))
{
	if(input[i]>(30101+offset0))
{
	if(input[i]==(30103+offset0))
{
	vR[i] = 30103;
}
else
{
	vR[i] = 30102;
}

}
else
{
	if(input[i]==(30101+offset0))
{
	vR[i] = 30101;
}
else
{
	vR[i] = 30100;
}

}

}
else
{
	if(input[i]>(30097+offset0))
{
	if(input[i]==(30099+offset0))
{
	vR[i] = 30099;
}
else
{
	vR[i] = 30098;
}

}
else
{
	if(input[i]==(30097+offset0))
{
	vR[i] = 30097;
}
else
{
	vR[i] = 30096;
}

}

}

}

}
else
{
	if(input[i]>(30087+offset0))
{
	if(input[i]>(30091+offset0))
{
	if(input[i]>(30093+offset0))
{
	if(input[i]==(30095+offset0))
{
	vR[i] = 30095;
}
else
{
	vR[i] = 30094;
}

}
else
{
	if(input[i]==(30093+offset0))
{
	vR[i] = 30093;
}
else
{
	vR[i] = 30092;
}

}

}
else
{
	if(input[i]>(30089+offset0))
{
	if(input[i]==(30091+offset0))
{
	vR[i] = 30091;
}
else
{
	vR[i] = 30090;
}

}
else
{
	if(input[i]==(30089+offset0))
{
	vR[i] = 30089;
}
else
{
	vR[i] = 30088;
}

}

}

}
else
{
	if(input[i]>(30083+offset0))
{
	if(input[i]>(30085+offset0))
{
	if(input[i]==(30087+offset0))
{
	vR[i] = 30087;
}
else
{
	vR[i] = 30086;
}

}
else
{
	if(input[i]==(30085+offset0))
{
	vR[i] = 30085;
}
else
{
	vR[i] = 30084;
}

}

}
else
{
	if(input[i]>(30081+offset0))
{
	if(input[i]==(30083+offset0))
{
	vR[i] = 30083;
}
else
{
	vR[i] = 30082;
}

}
else
{
	if(input[i]==(30081+offset0))
{
	vR[i] = 30081;
}
else
{
	vR[i] = 30080;
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
	if(input[i]>(30015+offset0))
{
	if(input[i]>(30047+offset0))
{
	if(input[i]>(30063+offset0))
{
	if(input[i]>(30071+offset0))
{
	if(input[i]>(30075+offset0))
{
	if(input[i]>(30077+offset0))
{
	if(input[i]==(30079+offset0))
{
	vR[i] = 30079;
}
else
{
	vR[i] = 30078;
}

}
else
{
	if(input[i]==(30077+offset0))
{
	vR[i] = 30077;
}
else
{
	vR[i] = 30076;
}

}

}
else
{
	if(input[i]>(30073+offset0))
{
	if(input[i]==(30075+offset0))
{
	vR[i] = 30075;
}
else
{
	vR[i] = 30074;
}

}
else
{
	if(input[i]==(30073+offset0))
{
	vR[i] = 30073;
}
else
{
	vR[i] = 30072;
}

}

}

}
else
{
	if(input[i]>(30067+offset0))
{
	if(input[i]>(30069+offset0))
{
	if(input[i]==(30071+offset0))
{
	vR[i] = 30071;
}
else
{
	vR[i] = 30070;
}

}
else
{
	if(input[i]==(30069+offset0))
{
	vR[i] = 30069;
}
else
{
	vR[i] = 30068;
}

}

}
else
{
	if(input[i]>(30065+offset0))
{
	if(input[i]==(30067+offset0))
{
	vR[i] = 30067;
}
else
{
	vR[i] = 30066;
}

}
else
{
	if(input[i]==(30065+offset0))
{
	vR[i] = 30065;
}
else
{
	vR[i] = 30064;
}

}

}

}

}
else
{
	if(input[i]>(30055+offset0))
{
	if(input[i]>(30059+offset0))
{
	if(input[i]>(30061+offset0))
{
	if(input[i]==(30063+offset0))
{
	vR[i] = 30063;
}
else
{
	vR[i] = 30062;
}

}
else
{
	if(input[i]==(30061+offset0))
{
	vR[i] = 30061;
}
else
{
	vR[i] = 30060;
}

}

}
else
{
	if(input[i]>(30057+offset0))
{
	if(input[i]==(30059+offset0))
{
	vR[i] = 30059;
}
else
{
	vR[i] = 30058;
}

}
else
{
	if(input[i]==(30057+offset0))
{
	vR[i] = 30057;
}
else
{
	vR[i] = 30056;
}

}

}

}
else
{
	if(input[i]>(30051+offset0))
{
	if(input[i]>(30053+offset0))
{
	if(input[i]==(30055+offset0))
{
	vR[i] = 30055;
}
else
{
	vR[i] = 30054;
}

}
else
{
	if(input[i]==(30053+offset0))
{
	vR[i] = 30053;
}
else
{
	vR[i] = 30052;
}

}

}
else
{
	if(input[i]>(30049+offset0))
{
	if(input[i]==(30051+offset0))
{
	vR[i] = 30051;
}
else
{
	vR[i] = 30050;
}

}
else
{
	if(input[i]==(30049+offset0))
{
	vR[i] = 30049;
}
else
{
	vR[i] = 30048;
}

}

}

}

}

}
else
{
	if(input[i]>(30031+offset0))
{
	if(input[i]>(30039+offset0))
{
	if(input[i]>(30043+offset0))
{
	if(input[i]>(30045+offset0))
{
	if(input[i]==(30047+offset0))
{
	vR[i] = 30047;
}
else
{
	vR[i] = 30046;
}

}
else
{
	if(input[i]==(30045+offset0))
{
	vR[i] = 30045;
}
else
{
	vR[i] = 30044;
}

}

}
else
{
	if(input[i]>(30041+offset0))
{
	if(input[i]==(30043+offset0))
{
	vR[i] = 30043;
}
else
{
	vR[i] = 30042;
}

}
else
{
	if(input[i]==(30041+offset0))
{
	vR[i] = 30041;
}
else
{
	vR[i] = 30040;
}

}

}

}
else
{
	if(input[i]>(30035+offset0))
{
	if(input[i]>(30037+offset0))
{
	if(input[i]==(30039+offset0))
{
	vR[i] = 30039;
}
else
{
	vR[i] = 30038;
}

}
else
{
	if(input[i]==(30037+offset0))
{
	vR[i] = 30037;
}
else
{
	vR[i] = 30036;
}

}

}
else
{
	if(input[i]>(30033+offset0))
{
	if(input[i]==(30035+offset0))
{
	vR[i] = 30035;
}
else
{
	vR[i] = 30034;
}

}
else
{
	if(input[i]==(30033+offset0))
{
	vR[i] = 30033;
}
else
{
	vR[i] = 30032;
}

}

}

}

}
else
{
	if(input[i]>(30023+offset0))
{
	if(input[i]>(30027+offset0))
{
	if(input[i]>(30029+offset0))
{
	if(input[i]==(30031+offset0))
{
	vR[i] = 30031;
}
else
{
	vR[i] = 30030;
}

}
else
{
	if(input[i]==(30029+offset0))
{
	vR[i] = 30029;
}
else
{
	vR[i] = 30028;
}

}

}
else
{
	if(input[i]>(30025+offset0))
{
	if(input[i]==(30027+offset0))
{
	vR[i] = 30027;
}
else
{
	vR[i] = 30026;
}

}
else
{
	if(input[i]==(30025+offset0))
{
	vR[i] = 30025;
}
else
{
	vR[i] = 30024;
}

}

}

}
else
{
	if(input[i]>(30019+offset0))
{
	if(input[i]>(30021+offset0))
{
	if(input[i]==(30023+offset0))
{
	vR[i] = 30023;
}
else
{
	vR[i] = 30022;
}

}
else
{
	if(input[i]==(30021+offset0))
{
	vR[i] = 30021;
}
else
{
	vR[i] = 30020;
}

}

}
else
{
	if(input[i]>(30017+offset0))
{
	if(input[i]==(30019+offset0))
{
	vR[i] = 30019;
}
else
{
	vR[i] = 30018;
}

}
else
{
	if(input[i]==(30017+offset0))
{
	vR[i] = 30017;
}
else
{
	vR[i] = 30016;
}

}

}

}

}

}

}
else
{
	if(input[i]>(29983+offset0))
{
	if(input[i]>(29999+offset0))
{
	if(input[i]>(30007+offset0))
{
	if(input[i]>(30011+offset0))
{
	if(input[i]>(30013+offset0))
{
	if(input[i]==(30015+offset0))
{
	vR[i] = 30015;
}
else
{
	vR[i] = 30014;
}

}
else
{
	if(input[i]==(30013+offset0))
{
	vR[i] = 30013;
}
else
{
	vR[i] = 30012;
}

}

}
else
{
	if(input[i]>(30009+offset0))
{
	if(input[i]==(30011+offset0))
{
	vR[i] = 30011;
}
else
{
	vR[i] = 30010;
}

}
else
{
	if(input[i]==(30009+offset0))
{
	vR[i] = 30009;
}
else
{
	vR[i] = 30008;
}

}

}

}
else
{
	if(input[i]>(30003+offset0))
{
	if(input[i]>(30005+offset0))
{
	if(input[i]==(30007+offset0))
{
	vR[i] = 30007;
}
else
{
	vR[i] = 30006;
}

}
else
{
	if(input[i]==(30005+offset0))
{
	vR[i] = 30005;
}
else
{
	vR[i] = 30004;
}

}

}
else
{
	if(input[i]>(30001+offset0))
{
	if(input[i]==(30003+offset0))
{
	vR[i] = 30003;
}
else
{
	vR[i] = 30002;
}

}
else
{
	if(input[i]==(30001+offset0))
{
	vR[i] = 30001;
}
else
{
	vR[i] = 30000;
}

}

}

}

}
else
{
	if(input[i]>(29991+offset0))
{
	if(input[i]>(29995+offset0))
{
	if(input[i]>(29997+offset0))
{
	if(input[i]==(29999+offset0))
{
	vR[i] = 29999;
}
else
{
	vR[i] = 29998;
}

}
else
{
	if(input[i]==(29997+offset0))
{
	vR[i] = 29997;
}
else
{
	vR[i] = 29996;
}

}

}
else
{
	if(input[i]>(29993+offset0))
{
	if(input[i]==(29995+offset0))
{
	vR[i] = 29995;
}
else
{
	vR[i] = 29994;
}

}
else
{
	if(input[i]==(29993+offset0))
{
	vR[i] = 29993;
}
else
{
	vR[i] = 29992;
}

}

}

}
else
{
	if(input[i]>(29987+offset0))
{
	if(input[i]>(29989+offset0))
{
	if(input[i]==(29991+offset0))
{
	vR[i] = 29991;
}
else
{
	vR[i] = 29990;
}

}
else
{
	if(input[i]==(29989+offset0))
{
	vR[i] = 29989;
}
else
{
	vR[i] = 29988;
}

}

}
else
{
	if(input[i]>(29985+offset0))
{
	if(input[i]==(29987+offset0))
{
	vR[i] = 29987;
}
else
{
	vR[i] = 29986;
}

}
else
{
	if(input[i]==(29985+offset0))
{
	vR[i] = 29985;
}
else
{
	vR[i] = 29984;
}

}

}

}

}

}
else
{
	if(input[i]>(29967+offset0))
{
	if(input[i]>(29975+offset0))
{
	if(input[i]>(29979+offset0))
{
	if(input[i]>(29981+offset0))
{
	if(input[i]==(29983+offset0))
{
	vR[i] = 29983;
}
else
{
	vR[i] = 29982;
}

}
else
{
	if(input[i]==(29981+offset0))
{
	vR[i] = 29981;
}
else
{
	vR[i] = 29980;
}

}

}
else
{
	if(input[i]>(29977+offset0))
{
	if(input[i]==(29979+offset0))
{
	vR[i] = 29979;
}
else
{
	vR[i] = 29978;
}

}
else
{
	if(input[i]==(29977+offset0))
{
	vR[i] = 29977;
}
else
{
	vR[i] = 29976;
}

}

}

}
else
{
	if(input[i]>(29971+offset0))
{
	if(input[i]>(29973+offset0))
{
	if(input[i]==(29975+offset0))
{
	vR[i] = 29975;
}
else
{
	vR[i] = 29974;
}

}
else
{
	if(input[i]==(29973+offset0))
{
	vR[i] = 29973;
}
else
{
	vR[i] = 29972;
}

}

}
else
{
	if(input[i]>(29969+offset0))
{
	if(input[i]==(29971+offset0))
{
	vR[i] = 29971;
}
else
{
	vR[i] = 29970;
}

}
else
{
	if(input[i]==(29969+offset0))
{
	vR[i] = 29969;
}
else
{
	vR[i] = 29968;
}

}

}

}

}
else
{
	if(input[i]>(29959+offset0))
{
	if(input[i]>(29963+offset0))
{
	if(input[i]>(29965+offset0))
{
	if(input[i]==(29967+offset0))
{
	vR[i] = 29967;
}
else
{
	vR[i] = 29966;
}

}
else
{
	if(input[i]==(29965+offset0))
{
	vR[i] = 29965;
}
else
{
	vR[i] = 29964;
}

}

}
else
{
	if(input[i]>(29961+offset0))
{
	if(input[i]==(29963+offset0))
{
	vR[i] = 29963;
}
else
{
	vR[i] = 29962;
}

}
else
{
	if(input[i]==(29961+offset0))
{
	vR[i] = 29961;
}
else
{
	vR[i] = 29960;
}

}

}

}
else
{
	if(input[i]>(29955+offset0))
{
	if(input[i]>(29957+offset0))
{
	if(input[i]==(29959+offset0))
{
	vR[i] = 29959;
}
else
{
	vR[i] = 29958;
}

}
else
{
	if(input[i]==(29957+offset0))
{
	vR[i] = 29957;
}
else
{
	vR[i] = 29956;
}

}

}
else
{
	if(input[i]>(29953+offset0))
{
	if(input[i]==(29955+offset0))
{
	vR[i] = 29955;
}
else
{
	vR[i] = 29954;
}

}
else
{
	if(input[i]==(29953+offset0))
{
	vR[i] = 29953;
}
else
{
	vR[i] = 29952;
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
	if(input[i]>(29823+offset0))
{
	if(input[i]>(29887+offset0))
{
	if(input[i]>(29919+offset0))
{
	if(input[i]>(29935+offset0))
{
	if(input[i]>(29943+offset0))
{
	if(input[i]>(29947+offset0))
{
	if(input[i]>(29949+offset0))
{
	if(input[i]==(29951+offset0))
{
	vR[i] = 29951;
}
else
{
	vR[i] = 29950;
}

}
else
{
	if(input[i]==(29949+offset0))
{
	vR[i] = 29949;
}
else
{
	vR[i] = 29948;
}

}

}
else
{
	if(input[i]>(29945+offset0))
{
	if(input[i]==(29947+offset0))
{
	vR[i] = 29947;
}
else
{
	vR[i] = 29946;
}

}
else
{
	if(input[i]==(29945+offset0))
{
	vR[i] = 29945;
}
else
{
	vR[i] = 29944;
}

}

}

}
else
{
	if(input[i]>(29939+offset0))
{
	if(input[i]>(29941+offset0))
{
	if(input[i]==(29943+offset0))
{
	vR[i] = 29943;
}
else
{
	vR[i] = 29942;
}

}
else
{
	if(input[i]==(29941+offset0))
{
	vR[i] = 29941;
}
else
{
	vR[i] = 29940;
}

}

}
else
{
	if(input[i]>(29937+offset0))
{
	if(input[i]==(29939+offset0))
{
	vR[i] = 29939;
}
else
{
	vR[i] = 29938;
}

}
else
{
	if(input[i]==(29937+offset0))
{
	vR[i] = 29937;
}
else
{
	vR[i] = 29936;
}

}

}

}

}
else
{
	if(input[i]>(29927+offset0))
{
	if(input[i]>(29931+offset0))
{
	if(input[i]>(29933+offset0))
{
	if(input[i]==(29935+offset0))
{
	vR[i] = 29935;
}
else
{
	vR[i] = 29934;
}

}
else
{
	if(input[i]==(29933+offset0))
{
	vR[i] = 29933;
}
else
{
	vR[i] = 29932;
}

}

}
else
{
	if(input[i]>(29929+offset0))
{
	if(input[i]==(29931+offset0))
{
	vR[i] = 29931;
}
else
{
	vR[i] = 29930;
}

}
else
{
	if(input[i]==(29929+offset0))
{
	vR[i] = 29929;
}
else
{
	vR[i] = 29928;
}

}

}

}
else
{
	if(input[i]>(29923+offset0))
{
	if(input[i]>(29925+offset0))
{
	if(input[i]==(29927+offset0))
{
	vR[i] = 29927;
}
else
{
	vR[i] = 29926;
}

}
else
{
	if(input[i]==(29925+offset0))
{
	vR[i] = 29925;
}
else
{
	vR[i] = 29924;
}

}

}
else
{
	if(input[i]>(29921+offset0))
{
	if(input[i]==(29923+offset0))
{
	vR[i] = 29923;
}
else
{
	vR[i] = 29922;
}

}
else
{
	if(input[i]==(29921+offset0))
{
	vR[i] = 29921;
}
else
{
	vR[i] = 29920;
}

}

}

}

}

}
else
{
	if(input[i]>(29903+offset0))
{
	if(input[i]>(29911+offset0))
{
	if(input[i]>(29915+offset0))
{
	if(input[i]>(29917+offset0))
{
	if(input[i]==(29919+offset0))
{
	vR[i] = 29919;
}
else
{
	vR[i] = 29918;
}

}
else
{
	if(input[i]==(29917+offset0))
{
	vR[i] = 29917;
}
else
{
	vR[i] = 29916;
}

}

}
else
{
	if(input[i]>(29913+offset0))
{
	if(input[i]==(29915+offset0))
{
	vR[i] = 29915;
}
else
{
	vR[i] = 29914;
}

}
else
{
	if(input[i]==(29913+offset0))
{
	vR[i] = 29913;
}
else
{
	vR[i] = 29912;
}

}

}

}
else
{
	if(input[i]>(29907+offset0))
{
	if(input[i]>(29909+offset0))
{
	if(input[i]==(29911+offset0))
{
	vR[i] = 29911;
}
else
{
	vR[i] = 29910;
}

}
else
{
	if(input[i]==(29909+offset0))
{
	vR[i] = 29909;
}
else
{
	vR[i] = 29908;
}

}

}
else
{
	if(input[i]>(29905+offset0))
{
	if(input[i]==(29907+offset0))
{
	vR[i] = 29907;
}
else
{
	vR[i] = 29906;
}

}
else
{
	if(input[i]==(29905+offset0))
{
	vR[i] = 29905;
}
else
{
	vR[i] = 29904;
}

}

}

}

}
else
{
	if(input[i]>(29895+offset0))
{
	if(input[i]>(29899+offset0))
{
	if(input[i]>(29901+offset0))
{
	if(input[i]==(29903+offset0))
{
	vR[i] = 29903;
}
else
{
	vR[i] = 29902;
}

}
else
{
	if(input[i]==(29901+offset0))
{
	vR[i] = 29901;
}
else
{
	vR[i] = 29900;
}

}

}
else
{
	if(input[i]>(29897+offset0))
{
	if(input[i]==(29899+offset0))
{
	vR[i] = 29899;
}
else
{
	vR[i] = 29898;
}

}
else
{
	if(input[i]==(29897+offset0))
{
	vR[i] = 29897;
}
else
{
	vR[i] = 29896;
}

}

}

}
else
{
	if(input[i]>(29891+offset0))
{
	if(input[i]>(29893+offset0))
{
	if(input[i]==(29895+offset0))
{
	vR[i] = 29895;
}
else
{
	vR[i] = 29894;
}

}
else
{
	if(input[i]==(29893+offset0))
{
	vR[i] = 29893;
}
else
{
	vR[i] = 29892;
}

}

}
else
{
	if(input[i]>(29889+offset0))
{
	if(input[i]==(29891+offset0))
{
	vR[i] = 29891;
}
else
{
	vR[i] = 29890;
}

}
else
{
	if(input[i]==(29889+offset0))
{
	vR[i] = 29889;
}
else
{
	vR[i] = 29888;
}

}

}

}

}

}

}
else
{
	if(input[i]>(29855+offset0))
{
	if(input[i]>(29871+offset0))
{
	if(input[i]>(29879+offset0))
{
	if(input[i]>(29883+offset0))
{
	if(input[i]>(29885+offset0))
{
	if(input[i]==(29887+offset0))
{
	vR[i] = 29887;
}
else
{
	vR[i] = 29886;
}

}
else
{
	if(input[i]==(29885+offset0))
{
	vR[i] = 29885;
}
else
{
	vR[i] = 29884;
}

}

}
else
{
	if(input[i]>(29881+offset0))
{
	if(input[i]==(29883+offset0))
{
	vR[i] = 29883;
}
else
{
	vR[i] = 29882;
}

}
else
{
	if(input[i]==(29881+offset0))
{
	vR[i] = 29881;
}
else
{
	vR[i] = 29880;
}

}

}

}
else
{
	if(input[i]>(29875+offset0))
{
	if(input[i]>(29877+offset0))
{
	if(input[i]==(29879+offset0))
{
	vR[i] = 29879;
}
else
{
	vR[i] = 29878;
}

}
else
{
	if(input[i]==(29877+offset0))
{
	vR[i] = 29877;
}
else
{
	vR[i] = 29876;
}

}

}
else
{
	if(input[i]>(29873+offset0))
{
	if(input[i]==(29875+offset0))
{
	vR[i] = 29875;
}
else
{
	vR[i] = 29874;
}

}
else
{
	if(input[i]==(29873+offset0))
{
	vR[i] = 29873;
}
else
{
	vR[i] = 29872;
}

}

}

}

}
else
{
	if(input[i]>(29863+offset0))
{
	if(input[i]>(29867+offset0))
{
	if(input[i]>(29869+offset0))
{
	if(input[i]==(29871+offset0))
{
	vR[i] = 29871;
}
else
{
	vR[i] = 29870;
}

}
else
{
	if(input[i]==(29869+offset0))
{
	vR[i] = 29869;
}
else
{
	vR[i] = 29868;
}

}

}
else
{
	if(input[i]>(29865+offset0))
{
	if(input[i]==(29867+offset0))
{
	vR[i] = 29867;
}
else
{
	vR[i] = 29866;
}

}
else
{
	if(input[i]==(29865+offset0))
{
	vR[i] = 29865;
}
else
{
	vR[i] = 29864;
}

}

}

}
else
{
	if(input[i]>(29859+offset0))
{
	if(input[i]>(29861+offset0))
{
	if(input[i]==(29863+offset0))
{
	vR[i] = 29863;
}
else
{
	vR[i] = 29862;
}

}
else
{
	if(input[i]==(29861+offset0))
{
	vR[i] = 29861;
}
else
{
	vR[i] = 29860;
}

}

}
else
{
	if(input[i]>(29857+offset0))
{
	if(input[i]==(29859+offset0))
{
	vR[i] = 29859;
}
else
{
	vR[i] = 29858;
}

}
else
{
	if(input[i]==(29857+offset0))
{
	vR[i] = 29857;
}
else
{
	vR[i] = 29856;
}

}

}

}

}

}
else
{
	if(input[i]>(29839+offset0))
{
	if(input[i]>(29847+offset0))
{
	if(input[i]>(29851+offset0))
{
	if(input[i]>(29853+offset0))
{
	if(input[i]==(29855+offset0))
{
	vR[i] = 29855;
}
else
{
	vR[i] = 29854;
}

}
else
{
	if(input[i]==(29853+offset0))
{
	vR[i] = 29853;
}
else
{
	vR[i] = 29852;
}

}

}
else
{
	if(input[i]>(29849+offset0))
{
	if(input[i]==(29851+offset0))
{
	vR[i] = 29851;
}
else
{
	vR[i] = 29850;
}

}
else
{
	if(input[i]==(29849+offset0))
{
	vR[i] = 29849;
}
else
{
	vR[i] = 29848;
}

}

}

}
else
{
	if(input[i]>(29843+offset0))
{
	if(input[i]>(29845+offset0))
{
	if(input[i]==(29847+offset0))
{
	vR[i] = 29847;
}
else
{
	vR[i] = 29846;
}

}
else
{
	if(input[i]==(29845+offset0))
{
	vR[i] = 29845;
}
else
{
	vR[i] = 29844;
}

}

}
else
{
	if(input[i]>(29841+offset0))
{
	if(input[i]==(29843+offset0))
{
	vR[i] = 29843;
}
else
{
	vR[i] = 29842;
}

}
else
{
	if(input[i]==(29841+offset0))
{
	vR[i] = 29841;
}
else
{
	vR[i] = 29840;
}

}

}

}

}
else
{
	if(input[i]>(29831+offset0))
{
	if(input[i]>(29835+offset0))
{
	if(input[i]>(29837+offset0))
{
	if(input[i]==(29839+offset0))
{
	vR[i] = 29839;
}
else
{
	vR[i] = 29838;
}

}
else
{
	if(input[i]==(29837+offset0))
{
	vR[i] = 29837;
}
else
{
	vR[i] = 29836;
}

}

}
else
{
	if(input[i]>(29833+offset0))
{
	if(input[i]==(29835+offset0))
{
	vR[i] = 29835;
}
else
{
	vR[i] = 29834;
}

}
else
{
	if(input[i]==(29833+offset0))
{
	vR[i] = 29833;
}
else
{
	vR[i] = 29832;
}

}

}

}
else
{
	if(input[i]>(29827+offset0))
{
	if(input[i]>(29829+offset0))
{
	if(input[i]==(29831+offset0))
{
	vR[i] = 29831;
}
else
{
	vR[i] = 29830;
}

}
else
{
	if(input[i]==(29829+offset0))
{
	vR[i] = 29829;
}
else
{
	vR[i] = 29828;
}

}

}
else
{
	if(input[i]>(29825+offset0))
{
	if(input[i]==(29827+offset0))
{
	vR[i] = 29827;
}
else
{
	vR[i] = 29826;
}

}
else
{
	if(input[i]==(29825+offset0))
{
	vR[i] = 29825;
}
else
{
	vR[i] = 29824;
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
	if(input[i]>(29759+offset0))
{
	if(input[i]>(29791+offset0))
{
	if(input[i]>(29807+offset0))
{
	if(input[i]>(29815+offset0))
{
	if(input[i]>(29819+offset0))
{
	if(input[i]>(29821+offset0))
{
	if(input[i]==(29823+offset0))
{
	vR[i] = 29823;
}
else
{
	vR[i] = 29822;
}

}
else
{
	if(input[i]==(29821+offset0))
{
	vR[i] = 29821;
}
else
{
	vR[i] = 29820;
}

}

}
else
{
	if(input[i]>(29817+offset0))
{
	if(input[i]==(29819+offset0))
{
	vR[i] = 29819;
}
else
{
	vR[i] = 29818;
}

}
else
{
	if(input[i]==(29817+offset0))
{
	vR[i] = 29817;
}
else
{
	vR[i] = 29816;
}

}

}

}
else
{
	if(input[i]>(29811+offset0))
{
	if(input[i]>(29813+offset0))
{
	if(input[i]==(29815+offset0))
{
	vR[i] = 29815;
}
else
{
	vR[i] = 29814;
}

}
else
{
	if(input[i]==(29813+offset0))
{
	vR[i] = 29813;
}
else
{
	vR[i] = 29812;
}

}

}
else
{
	if(input[i]>(29809+offset0))
{
	if(input[i]==(29811+offset0))
{
	vR[i] = 29811;
}
else
{
	vR[i] = 29810;
}

}
else
{
	if(input[i]==(29809+offset0))
{
	vR[i] = 29809;
}
else
{
	vR[i] = 29808;
}

}

}

}

}
else
{
	if(input[i]>(29799+offset0))
{
	if(input[i]>(29803+offset0))
{
	if(input[i]>(29805+offset0))
{
	if(input[i]==(29807+offset0))
{
	vR[i] = 29807;
}
else
{
	vR[i] = 29806;
}

}
else
{
	if(input[i]==(29805+offset0))
{
	vR[i] = 29805;
}
else
{
	vR[i] = 29804;
}

}

}
else
{
	if(input[i]>(29801+offset0))
{
	if(input[i]==(29803+offset0))
{
	vR[i] = 29803;
}
else
{
	vR[i] = 29802;
}

}
else
{
	if(input[i]==(29801+offset0))
{
	vR[i] = 29801;
}
else
{
	vR[i] = 29800;
}

}

}

}
else
{
	if(input[i]>(29795+offset0))
{
	if(input[i]>(29797+offset0))
{
	if(input[i]==(29799+offset0))
{
	vR[i] = 29799;
}
else
{
	vR[i] = 29798;
}

}
else
{
	if(input[i]==(29797+offset0))
{
	vR[i] = 29797;
}
else
{
	vR[i] = 29796;
}

}

}
else
{
	if(input[i]>(29793+offset0))
{
	if(input[i]==(29795+offset0))
{
	vR[i] = 29795;
}
else
{
	vR[i] = 29794;
}

}
else
{
	if(input[i]==(29793+offset0))
{
	vR[i] = 29793;
}
else
{
	vR[i] = 29792;
}

}

}

}

}

}
else
{
	if(input[i]>(29775+offset0))
{
	if(input[i]>(29783+offset0))
{
	if(input[i]>(29787+offset0))
{
	if(input[i]>(29789+offset0))
{
	if(input[i]==(29791+offset0))
{
	vR[i] = 29791;
}
else
{
	vR[i] = 29790;
}

}
else
{
	if(input[i]==(29789+offset0))
{
	vR[i] = 29789;
}
else
{
	vR[i] = 29788;
}

}

}
else
{
	if(input[i]>(29785+offset0))
{
	if(input[i]==(29787+offset0))
{
	vR[i] = 29787;
}
else
{
	vR[i] = 29786;
}

}
else
{
	if(input[i]==(29785+offset0))
{
	vR[i] = 29785;
}
else
{
	vR[i] = 29784;
}

}

}

}
else
{
	if(input[i]>(29779+offset0))
{
	if(input[i]>(29781+offset0))
{
	if(input[i]==(29783+offset0))
{
	vR[i] = 29783;
}
else
{
	vR[i] = 29782;
}

}
else
{
	if(input[i]==(29781+offset0))
{
	vR[i] = 29781;
}
else
{
	vR[i] = 29780;
}

}

}
else
{
	if(input[i]>(29777+offset0))
{
	if(input[i]==(29779+offset0))
{
	vR[i] = 29779;
}
else
{
	vR[i] = 29778;
}

}
else
{
	if(input[i]==(29777+offset0))
{
	vR[i] = 29777;
}
else
{
	vR[i] = 29776;
}

}

}

}

}
else
{
	if(input[i]>(29767+offset0))
{
	if(input[i]>(29771+offset0))
{
	if(input[i]>(29773+offset0))
{
	if(input[i]==(29775+offset0))
{
	vR[i] = 29775;
}
else
{
	vR[i] = 29774;
}

}
else
{
	if(input[i]==(29773+offset0))
{
	vR[i] = 29773;
}
else
{
	vR[i] = 29772;
}

}

}
else
{
	if(input[i]>(29769+offset0))
{
	if(input[i]==(29771+offset0))
{
	vR[i] = 29771;
}
else
{
	vR[i] = 29770;
}

}
else
{
	if(input[i]==(29769+offset0))
{
	vR[i] = 29769;
}
else
{
	vR[i] = 29768;
}

}

}

}
else
{
	if(input[i]>(29763+offset0))
{
	if(input[i]>(29765+offset0))
{
	if(input[i]==(29767+offset0))
{
	vR[i] = 29767;
}
else
{
	vR[i] = 29766;
}

}
else
{
	if(input[i]==(29765+offset0))
{
	vR[i] = 29765;
}
else
{
	vR[i] = 29764;
}

}

}
else
{
	if(input[i]>(29761+offset0))
{
	if(input[i]==(29763+offset0))
{
	vR[i] = 29763;
}
else
{
	vR[i] = 29762;
}

}
else
{
	if(input[i]==(29761+offset0))
{
	vR[i] = 29761;
}
else
{
	vR[i] = 29760;
}

}

}

}

}

}

}
else
{
	if(input[i]>(29727+offset0))
{
	if(input[i]>(29743+offset0))
{
	if(input[i]>(29751+offset0))
{
	if(input[i]>(29755+offset0))
{
	if(input[i]>(29757+offset0))
{
	if(input[i]==(29759+offset0))
{
	vR[i] = 29759;
}
else
{
	vR[i] = 29758;
}

}
else
{
	if(input[i]==(29757+offset0))
{
	vR[i] = 29757;
}
else
{
	vR[i] = 29756;
}

}

}
else
{
	if(input[i]>(29753+offset0))
{
	if(input[i]==(29755+offset0))
{
	vR[i] = 29755;
}
else
{
	vR[i] = 29754;
}

}
else
{
	if(input[i]==(29753+offset0))
{
	vR[i] = 29753;
}
else
{
	vR[i] = 29752;
}

}

}

}
else
{
	if(input[i]>(29747+offset0))
{
	if(input[i]>(29749+offset0))
{
	if(input[i]==(29751+offset0))
{
	vR[i] = 29751;
}
else
{
	vR[i] = 29750;
}

}
else
{
	if(input[i]==(29749+offset0))
{
	vR[i] = 29749;
}
else
{
	vR[i] = 29748;
}

}

}
else
{
	if(input[i]>(29745+offset0))
{
	if(input[i]==(29747+offset0))
{
	vR[i] = 29747;
}
else
{
	vR[i] = 29746;
}

}
else
{
	if(input[i]==(29745+offset0))
{
	vR[i] = 29745;
}
else
{
	vR[i] = 29744;
}

}

}

}

}
else
{
	if(input[i]>(29735+offset0))
{
	if(input[i]>(29739+offset0))
{
	if(input[i]>(29741+offset0))
{
	if(input[i]==(29743+offset0))
{
	vR[i] = 29743;
}
else
{
	vR[i] = 29742;
}

}
else
{
	if(input[i]==(29741+offset0))
{
	vR[i] = 29741;
}
else
{
	vR[i] = 29740;
}

}

}
else
{
	if(input[i]>(29737+offset0))
{
	if(input[i]==(29739+offset0))
{
	vR[i] = 29739;
}
else
{
	vR[i] = 29738;
}

}
else
{
	if(input[i]==(29737+offset0))
{
	vR[i] = 29737;
}
else
{
	vR[i] = 29736;
}

}

}

}
else
{
	if(input[i]>(29731+offset0))
{
	if(input[i]>(29733+offset0))
{
	if(input[i]==(29735+offset0))
{
	vR[i] = 29735;
}
else
{
	vR[i] = 29734;
}

}
else
{
	if(input[i]==(29733+offset0))
{
	vR[i] = 29733;
}
else
{
	vR[i] = 29732;
}

}

}
else
{
	if(input[i]>(29729+offset0))
{
	if(input[i]==(29731+offset0))
{
	vR[i] = 29731;
}
else
{
	vR[i] = 29730;
}

}
else
{
	if(input[i]==(29729+offset0))
{
	vR[i] = 29729;
}
else
{
	vR[i] = 29728;
}

}

}

}

}

}
else
{
	if(input[i]>(29711+offset0))
{
	if(input[i]>(29719+offset0))
{
	if(input[i]>(29723+offset0))
{
	if(input[i]>(29725+offset0))
{
	if(input[i]==(29727+offset0))
{
	vR[i] = 29727;
}
else
{
	vR[i] = 29726;
}

}
else
{
	if(input[i]==(29725+offset0))
{
	vR[i] = 29725;
}
else
{
	vR[i] = 29724;
}

}

}
else
{
	if(input[i]>(29721+offset0))
{
	if(input[i]==(29723+offset0))
{
	vR[i] = 29723;
}
else
{
	vR[i] = 29722;
}

}
else
{
	if(input[i]==(29721+offset0))
{
	vR[i] = 29721;
}
else
{
	vR[i] = 29720;
}

}

}

}
else
{
	if(input[i]>(29715+offset0))
{
	if(input[i]>(29717+offset0))
{
	if(input[i]==(29719+offset0))
{
	vR[i] = 29719;
}
else
{
	vR[i] = 29718;
}

}
else
{
	if(input[i]==(29717+offset0))
{
	vR[i] = 29717;
}
else
{
	vR[i] = 29716;
}

}

}
else
{
	if(input[i]>(29713+offset0))
{
	if(input[i]==(29715+offset0))
{
	vR[i] = 29715;
}
else
{
	vR[i] = 29714;
}

}
else
{
	if(input[i]==(29713+offset0))
{
	vR[i] = 29713;
}
else
{
	vR[i] = 29712;
}

}

}

}

}
else
{
	if(input[i]>(29703+offset0))
{
	if(input[i]>(29707+offset0))
{
	if(input[i]>(29709+offset0))
{
	if(input[i]==(29711+offset0))
{
	vR[i] = 29711;
}
else
{
	vR[i] = 29710;
}

}
else
{
	if(input[i]==(29709+offset0))
{
	vR[i] = 29709;
}
else
{
	vR[i] = 29708;
}

}

}
else
{
	if(input[i]>(29705+offset0))
{
	if(input[i]==(29707+offset0))
{
	vR[i] = 29707;
}
else
{
	vR[i] = 29706;
}

}
else
{
	if(input[i]==(29705+offset0))
{
	vR[i] = 29705;
}
else
{
	vR[i] = 29704;
}

}

}

}
else
{
	if(input[i]>(29699+offset0))
{
	if(input[i]>(29701+offset0))
{
	if(input[i]==(29703+offset0))
{
	vR[i] = 29703;
}
else
{
	vR[i] = 29702;
}

}
else
{
	if(input[i]==(29701+offset0))
{
	vR[i] = 29701;
}
else
{
	vR[i] = 29700;
}

}

}
else
{
	if(input[i]>(29697+offset0))
{
	if(input[i]==(29699+offset0))
{
	vR[i] = 29699;
}
else
{
	vR[i] = 29698;
}

}
else
{
	if(input[i]==(29697+offset0))
{
	vR[i] = 29697;
}
else
{
	vR[i] = 29696;
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
	if(input[i]>(29183+offset0))
{
	if(input[i]>(29439+offset0))
{
	if(input[i]>(29567+offset0))
{
	if(input[i]>(29631+offset0))
{
	if(input[i]>(29663+offset0))
{
	if(input[i]>(29679+offset0))
{
	if(input[i]>(29687+offset0))
{
	if(input[i]>(29691+offset0))
{
	if(input[i]>(29693+offset0))
{
	if(input[i]==(29695+offset0))
{
	vR[i] = 29695;
}
else
{
	vR[i] = 29694;
}

}
else
{
	if(input[i]==(29693+offset0))
{
	vR[i] = 29693;
}
else
{
	vR[i] = 29692;
}

}

}
else
{
	if(input[i]>(29689+offset0))
{
	if(input[i]==(29691+offset0))
{
	vR[i] = 29691;
}
else
{
	vR[i] = 29690;
}

}
else
{
	if(input[i]==(29689+offset0))
{
	vR[i] = 29689;
}
else
{
	vR[i] = 29688;
}

}

}

}
else
{
	if(input[i]>(29683+offset0))
{
	if(input[i]>(29685+offset0))
{
	if(input[i]==(29687+offset0))
{
	vR[i] = 29687;
}
else
{
	vR[i] = 29686;
}

}
else
{
	if(input[i]==(29685+offset0))
{
	vR[i] = 29685;
}
else
{
	vR[i] = 29684;
}

}

}
else
{
	if(input[i]>(29681+offset0))
{
	if(input[i]==(29683+offset0))
{
	vR[i] = 29683;
}
else
{
	vR[i] = 29682;
}

}
else
{
	if(input[i]==(29681+offset0))
{
	vR[i] = 29681;
}
else
{
	vR[i] = 29680;
}

}

}

}

}
else
{
	if(input[i]>(29671+offset0))
{
	if(input[i]>(29675+offset0))
{
	if(input[i]>(29677+offset0))
{
	if(input[i]==(29679+offset0))
{
	vR[i] = 29679;
}
else
{
	vR[i] = 29678;
}

}
else
{
	if(input[i]==(29677+offset0))
{
	vR[i] = 29677;
}
else
{
	vR[i] = 29676;
}

}

}
else
{
	if(input[i]>(29673+offset0))
{
	if(input[i]==(29675+offset0))
{
	vR[i] = 29675;
}
else
{
	vR[i] = 29674;
}

}
else
{
	if(input[i]==(29673+offset0))
{
	vR[i] = 29673;
}
else
{
	vR[i] = 29672;
}

}

}

}
else
{
	if(input[i]>(29667+offset0))
{
	if(input[i]>(29669+offset0))
{
	if(input[i]==(29671+offset0))
{
	vR[i] = 29671;
}
else
{
	vR[i] = 29670;
}

}
else
{
	if(input[i]==(29669+offset0))
{
	vR[i] = 29669;
}
else
{
	vR[i] = 29668;
}

}

}
else
{
	if(input[i]>(29665+offset0))
{
	if(input[i]==(29667+offset0))
{
	vR[i] = 29667;
}
else
{
	vR[i] = 29666;
}

}
else
{
	if(input[i]==(29665+offset0))
{
	vR[i] = 29665;
}
else
{
	vR[i] = 29664;
}

}

}

}

}

}
else
{
	if(input[i]>(29647+offset0))
{
	if(input[i]>(29655+offset0))
{
	if(input[i]>(29659+offset0))
{
	if(input[i]>(29661+offset0))
{
	if(input[i]==(29663+offset0))
{
	vR[i] = 29663;
}
else
{
	vR[i] = 29662;
}

}
else
{
	if(input[i]==(29661+offset0))
{
	vR[i] = 29661;
}
else
{
	vR[i] = 29660;
}

}

}
else
{
	if(input[i]>(29657+offset0))
{
	if(input[i]==(29659+offset0))
{
	vR[i] = 29659;
}
else
{
	vR[i] = 29658;
}

}
else
{
	if(input[i]==(29657+offset0))
{
	vR[i] = 29657;
}
else
{
	vR[i] = 29656;
}

}

}

}
else
{
	if(input[i]>(29651+offset0))
{
	if(input[i]>(29653+offset0))
{
	if(input[i]==(29655+offset0))
{
	vR[i] = 29655;
}
else
{
	vR[i] = 29654;
}

}
else
{
	if(input[i]==(29653+offset0))
{
	vR[i] = 29653;
}
else
{
	vR[i] = 29652;
}

}

}
else
{
	if(input[i]>(29649+offset0))
{
	if(input[i]==(29651+offset0))
{
	vR[i] = 29651;
}
else
{
	vR[i] = 29650;
}

}
else
{
	if(input[i]==(29649+offset0))
{
	vR[i] = 29649;
}
else
{
	vR[i] = 29648;
}

}

}

}

}
else
{
	if(input[i]>(29639+offset0))
{
	if(input[i]>(29643+offset0))
{
	if(input[i]>(29645+offset0))
{
	if(input[i]==(29647+offset0))
{
	vR[i] = 29647;
}
else
{
	vR[i] = 29646;
}

}
else
{
	if(input[i]==(29645+offset0))
{
	vR[i] = 29645;
}
else
{
	vR[i] = 29644;
}

}

}
else
{
	if(input[i]>(29641+offset0))
{
	if(input[i]==(29643+offset0))
{
	vR[i] = 29643;
}
else
{
	vR[i] = 29642;
}

}
else
{
	if(input[i]==(29641+offset0))
{
	vR[i] = 29641;
}
else
{
	vR[i] = 29640;
}

}

}

}
else
{
	if(input[i]>(29635+offset0))
{
	if(input[i]>(29637+offset0))
{
	if(input[i]==(29639+offset0))
{
	vR[i] = 29639;
}
else
{
	vR[i] = 29638;
}

}
else
{
	if(input[i]==(29637+offset0))
{
	vR[i] = 29637;
}
else
{
	vR[i] = 29636;
}

}

}
else
{
	if(input[i]>(29633+offset0))
{
	if(input[i]==(29635+offset0))
{
	vR[i] = 29635;
}
else
{
	vR[i] = 29634;
}

}
else
{
	if(input[i]==(29633+offset0))
{
	vR[i] = 29633;
}
else
{
	vR[i] = 29632;
}

}

}

}

}

}

}
else
{
	if(input[i]>(29599+offset0))
{
	if(input[i]>(29615+offset0))
{
	if(input[i]>(29623+offset0))
{
	if(input[i]>(29627+offset0))
{
	if(input[i]>(29629+offset0))
{
	if(input[i]==(29631+offset0))
{
	vR[i] = 29631;
}
else
{
	vR[i] = 29630;
}

}
else
{
	if(input[i]==(29629+offset0))
{
	vR[i] = 29629;
}
else
{
	vR[i] = 29628;
}

}

}
else
{
	if(input[i]>(29625+offset0))
{
	if(input[i]==(29627+offset0))
{
	vR[i] = 29627;
}
else
{
	vR[i] = 29626;
}

}
else
{
	if(input[i]==(29625+offset0))
{
	vR[i] = 29625;
}
else
{
	vR[i] = 29624;
}

}

}

}
else
{
	if(input[i]>(29619+offset0))
{
	if(input[i]>(29621+offset0))
{
	if(input[i]==(29623+offset0))
{
	vR[i] = 29623;
}
else
{
	vR[i] = 29622;
}

}
else
{
	if(input[i]==(29621+offset0))
{
	vR[i] = 29621;
}
else
{
	vR[i] = 29620;
}

}

}
else
{
	if(input[i]>(29617+offset0))
{
	if(input[i]==(29619+offset0))
{
	vR[i] = 29619;
}
else
{
	vR[i] = 29618;
}

}
else
{
	if(input[i]==(29617+offset0))
{
	vR[i] = 29617;
}
else
{
	vR[i] = 29616;
}

}

}

}

}
else
{
	if(input[i]>(29607+offset0))
{
	if(input[i]>(29611+offset0))
{
	if(input[i]>(29613+offset0))
{
	if(input[i]==(29615+offset0))
{
	vR[i] = 29615;
}
else
{
	vR[i] = 29614;
}

}
else
{
	if(input[i]==(29613+offset0))
{
	vR[i] = 29613;
}
else
{
	vR[i] = 29612;
}

}

}
else
{
	if(input[i]>(29609+offset0))
{
	if(input[i]==(29611+offset0))
{
	vR[i] = 29611;
}
else
{
	vR[i] = 29610;
}

}
else
{
	if(input[i]==(29609+offset0))
{
	vR[i] = 29609;
}
else
{
	vR[i] = 29608;
}

}

}

}
else
{
	if(input[i]>(29603+offset0))
{
	if(input[i]>(29605+offset0))
{
	if(input[i]==(29607+offset0))
{
	vR[i] = 29607;
}
else
{
	vR[i] = 29606;
}

}
else
{
	if(input[i]==(29605+offset0))
{
	vR[i] = 29605;
}
else
{
	vR[i] = 29604;
}

}

}
else
{
	if(input[i]>(29601+offset0))
{
	if(input[i]==(29603+offset0))
{
	vR[i] = 29603;
}
else
{
	vR[i] = 29602;
}

}
else
{
	if(input[i]==(29601+offset0))
{
	vR[i] = 29601;
}
else
{
	vR[i] = 29600;
}

}

}

}

}

}
else
{
	if(input[i]>(29583+offset0))
{
	if(input[i]>(29591+offset0))
{
	if(input[i]>(29595+offset0))
{
	if(input[i]>(29597+offset0))
{
	if(input[i]==(29599+offset0))
{
	vR[i] = 29599;
}
else
{
	vR[i] = 29598;
}

}
else
{
	if(input[i]==(29597+offset0))
{
	vR[i] = 29597;
}
else
{
	vR[i] = 29596;
}

}

}
else
{
	if(input[i]>(29593+offset0))
{
	if(input[i]==(29595+offset0))
{
	vR[i] = 29595;
}
else
{
	vR[i] = 29594;
}

}
else
{
	if(input[i]==(29593+offset0))
{
	vR[i] = 29593;
}
else
{
	vR[i] = 29592;
}

}

}

}
else
{
	if(input[i]>(29587+offset0))
{
	if(input[i]>(29589+offset0))
{
	if(input[i]==(29591+offset0))
{
	vR[i] = 29591;
}
else
{
	vR[i] = 29590;
}

}
else
{
	if(input[i]==(29589+offset0))
{
	vR[i] = 29589;
}
else
{
	vR[i] = 29588;
}

}

}
else
{
	if(input[i]>(29585+offset0))
{
	if(input[i]==(29587+offset0))
{
	vR[i] = 29587;
}
else
{
	vR[i] = 29586;
}

}
else
{
	if(input[i]==(29585+offset0))
{
	vR[i] = 29585;
}
else
{
	vR[i] = 29584;
}

}

}

}

}
else
{
	if(input[i]>(29575+offset0))
{
	if(input[i]>(29579+offset0))
{
	if(input[i]>(29581+offset0))
{
	if(input[i]==(29583+offset0))
{
	vR[i] = 29583;
}
else
{
	vR[i] = 29582;
}

}
else
{
	if(input[i]==(29581+offset0))
{
	vR[i] = 29581;
}
else
{
	vR[i] = 29580;
}

}

}
else
{
	if(input[i]>(29577+offset0))
{
	if(input[i]==(29579+offset0))
{
	vR[i] = 29579;
}
else
{
	vR[i] = 29578;
}

}
else
{
	if(input[i]==(29577+offset0))
{
	vR[i] = 29577;
}
else
{
	vR[i] = 29576;
}

}

}

}
else
{
	if(input[i]>(29571+offset0))
{
	if(input[i]>(29573+offset0))
{
	if(input[i]==(29575+offset0))
{
	vR[i] = 29575;
}
else
{
	vR[i] = 29574;
}

}
else
{
	if(input[i]==(29573+offset0))
{
	vR[i] = 29573;
}
else
{
	vR[i] = 29572;
}

}

}
else
{
	if(input[i]>(29569+offset0))
{
	if(input[i]==(29571+offset0))
{
	vR[i] = 29571;
}
else
{
	vR[i] = 29570;
}

}
else
{
	if(input[i]==(29569+offset0))
{
	vR[i] = 29569;
}
else
{
	vR[i] = 29568;
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
	if(input[i]>(29503+offset0))
{
	if(input[i]>(29535+offset0))
{
	if(input[i]>(29551+offset0))
{
	if(input[i]>(29559+offset0))
{
	if(input[i]>(29563+offset0))
{
	if(input[i]>(29565+offset0))
{
	if(input[i]==(29567+offset0))
{
	vR[i] = 29567;
}
else
{
	vR[i] = 29566;
}

}
else
{
	if(input[i]==(29565+offset0))
{
	vR[i] = 29565;
}
else
{
	vR[i] = 29564;
}

}

}
else
{
	if(input[i]>(29561+offset0))
{
	if(input[i]==(29563+offset0))
{
	vR[i] = 29563;
}
else
{
	vR[i] = 29562;
}

}
else
{
	if(input[i]==(29561+offset0))
{
	vR[i] = 29561;
}
else
{
	vR[i] = 29560;
}

}

}

}
else
{
	if(input[i]>(29555+offset0))
{
	if(input[i]>(29557+offset0))
{
	if(input[i]==(29559+offset0))
{
	vR[i] = 29559;
}
else
{
	vR[i] = 29558;
}

}
else
{
	if(input[i]==(29557+offset0))
{
	vR[i] = 29557;
}
else
{
	vR[i] = 29556;
}

}

}
else
{
	if(input[i]>(29553+offset0))
{
	if(input[i]==(29555+offset0))
{
	vR[i] = 29555;
}
else
{
	vR[i] = 29554;
}

}
else
{
	if(input[i]==(29553+offset0))
{
	vR[i] = 29553;
}
else
{
	vR[i] = 29552;
}

}

}

}

}
else
{
	if(input[i]>(29543+offset0))
{
	if(input[i]>(29547+offset0))
{
	if(input[i]>(29549+offset0))
{
	if(input[i]==(29551+offset0))
{
	vR[i] = 29551;
}
else
{
	vR[i] = 29550;
}

}
else
{
	if(input[i]==(29549+offset0))
{
	vR[i] = 29549;
}
else
{
	vR[i] = 29548;
}

}

}
else
{
	if(input[i]>(29545+offset0))
{
	if(input[i]==(29547+offset0))
{
	vR[i] = 29547;
}
else
{
	vR[i] = 29546;
}

}
else
{
	if(input[i]==(29545+offset0))
{
	vR[i] = 29545;
}
else
{
	vR[i] = 29544;
}

}

}

}
else
{
	if(input[i]>(29539+offset0))
{
	if(input[i]>(29541+offset0))
{
	if(input[i]==(29543+offset0))
{
	vR[i] = 29543;
}
else
{
	vR[i] = 29542;
}

}
else
{
	if(input[i]==(29541+offset0))
{
	vR[i] = 29541;
}
else
{
	vR[i] = 29540;
}

}

}
else
{
	if(input[i]>(29537+offset0))
{
	if(input[i]==(29539+offset0))
{
	vR[i] = 29539;
}
else
{
	vR[i] = 29538;
}

}
else
{
	if(input[i]==(29537+offset0))
{
	vR[i] = 29537;
}
else
{
	vR[i] = 29536;
}

}

}

}

}

}
else
{
	if(input[i]>(29519+offset0))
{
	if(input[i]>(29527+offset0))
{
	if(input[i]>(29531+offset0))
{
	if(input[i]>(29533+offset0))
{
	if(input[i]==(29535+offset0))
{
	vR[i] = 29535;
}
else
{
	vR[i] = 29534;
}

}
else
{
	if(input[i]==(29533+offset0))
{
	vR[i] = 29533;
}
else
{
	vR[i] = 29532;
}

}

}
else
{
	if(input[i]>(29529+offset0))
{
	if(input[i]==(29531+offset0))
{
	vR[i] = 29531;
}
else
{
	vR[i] = 29530;
}

}
else
{
	if(input[i]==(29529+offset0))
{
	vR[i] = 29529;
}
else
{
	vR[i] = 29528;
}

}

}

}
else
{
	if(input[i]>(29523+offset0))
{
	if(input[i]>(29525+offset0))
{
	if(input[i]==(29527+offset0))
{
	vR[i] = 29527;
}
else
{
	vR[i] = 29526;
}

}
else
{
	if(input[i]==(29525+offset0))
{
	vR[i] = 29525;
}
else
{
	vR[i] = 29524;
}

}

}
else
{
	if(input[i]>(29521+offset0))
{
	if(input[i]==(29523+offset0))
{
	vR[i] = 29523;
}
else
{
	vR[i] = 29522;
}

}
else
{
	if(input[i]==(29521+offset0))
{
	vR[i] = 29521;
}
else
{
	vR[i] = 29520;
}

}

}

}

}
else
{
	if(input[i]>(29511+offset0))
{
	if(input[i]>(29515+offset0))
{
	if(input[i]>(29517+offset0))
{
	if(input[i]==(29519+offset0))
{
	vR[i] = 29519;
}
else
{
	vR[i] = 29518;
}

}
else
{
	if(input[i]==(29517+offset0))
{
	vR[i] = 29517;
}
else
{
	vR[i] = 29516;
}

}

}
else
{
	if(input[i]>(29513+offset0))
{
	if(input[i]==(29515+offset0))
{
	vR[i] = 29515;
}
else
{
	vR[i] = 29514;
}

}
else
{
	if(input[i]==(29513+offset0))
{
	vR[i] = 29513;
}
else
{
	vR[i] = 29512;
}

}

}

}
else
{
	if(input[i]>(29507+offset0))
{
	if(input[i]>(29509+offset0))
{
	if(input[i]==(29511+offset0))
{
	vR[i] = 29511;
}
else
{
	vR[i] = 29510;
}

}
else
{
	if(input[i]==(29509+offset0))
{
	vR[i] = 29509;
}
else
{
	vR[i] = 29508;
}

}

}
else
{
	if(input[i]>(29505+offset0))
{
	if(input[i]==(29507+offset0))
{
	vR[i] = 29507;
}
else
{
	vR[i] = 29506;
}

}
else
{
	if(input[i]==(29505+offset0))
{
	vR[i] = 29505;
}
else
{
	vR[i] = 29504;
}

}

}

}

}

}

}
else
{
	if(input[i]>(29471+offset0))
{
	if(input[i]>(29487+offset0))
{
	if(input[i]>(29495+offset0))
{
	if(input[i]>(29499+offset0))
{
	if(input[i]>(29501+offset0))
{
	if(input[i]==(29503+offset0))
{
	vR[i] = 29503;
}
else
{
	vR[i] = 29502;
}

}
else
{
	if(input[i]==(29501+offset0))
{
	vR[i] = 29501;
}
else
{
	vR[i] = 29500;
}

}

}
else
{
	if(input[i]>(29497+offset0))
{
	if(input[i]==(29499+offset0))
{
	vR[i] = 29499;
}
else
{
	vR[i] = 29498;
}

}
else
{
	if(input[i]==(29497+offset0))
{
	vR[i] = 29497;
}
else
{
	vR[i] = 29496;
}

}

}

}
else
{
	if(input[i]>(29491+offset0))
{
	if(input[i]>(29493+offset0))
{
	if(input[i]==(29495+offset0))
{
	vR[i] = 29495;
}
else
{
	vR[i] = 29494;
}

}
else
{
	if(input[i]==(29493+offset0))
{
	vR[i] = 29493;
}
else
{
	vR[i] = 29492;
}

}

}
else
{
	if(input[i]>(29489+offset0))
{
	if(input[i]==(29491+offset0))
{
	vR[i] = 29491;
}
else
{
	vR[i] = 29490;
}

}
else
{
	if(input[i]==(29489+offset0))
{
	vR[i] = 29489;
}
else
{
	vR[i] = 29488;
}

}

}

}

}
else
{
	if(input[i]>(29479+offset0))
{
	if(input[i]>(29483+offset0))
{
	if(input[i]>(29485+offset0))
{
	if(input[i]==(29487+offset0))
{
	vR[i] = 29487;
}
else
{
	vR[i] = 29486;
}

}
else
{
	if(input[i]==(29485+offset0))
{
	vR[i] = 29485;
}
else
{
	vR[i] = 29484;
}

}

}
else
{
	if(input[i]>(29481+offset0))
{
	if(input[i]==(29483+offset0))
{
	vR[i] = 29483;
}
else
{
	vR[i] = 29482;
}

}
else
{
	if(input[i]==(29481+offset0))
{
	vR[i] = 29481;
}
else
{
	vR[i] = 29480;
}

}

}

}
else
{
	if(input[i]>(29475+offset0))
{
	if(input[i]>(29477+offset0))
{
	if(input[i]==(29479+offset0))
{
	vR[i] = 29479;
}
else
{
	vR[i] = 29478;
}

}
else
{
	if(input[i]==(29477+offset0))
{
	vR[i] = 29477;
}
else
{
	vR[i] = 29476;
}

}

}
else
{
	if(input[i]>(29473+offset0))
{
	if(input[i]==(29475+offset0))
{
	vR[i] = 29475;
}
else
{
	vR[i] = 29474;
}

}
else
{
	if(input[i]==(29473+offset0))
{
	vR[i] = 29473;
}
else
{
	vR[i] = 29472;
}

}

}

}

}

}
else
{
	if(input[i]>(29455+offset0))
{
	if(input[i]>(29463+offset0))
{
	if(input[i]>(29467+offset0))
{
	if(input[i]>(29469+offset0))
{
	if(input[i]==(29471+offset0))
{
	vR[i] = 29471;
}
else
{
	vR[i] = 29470;
}

}
else
{
	if(input[i]==(29469+offset0))
{
	vR[i] = 29469;
}
else
{
	vR[i] = 29468;
}

}

}
else
{
	if(input[i]>(29465+offset0))
{
	if(input[i]==(29467+offset0))
{
	vR[i] = 29467;
}
else
{
	vR[i] = 29466;
}

}
else
{
	if(input[i]==(29465+offset0))
{
	vR[i] = 29465;
}
else
{
	vR[i] = 29464;
}

}

}

}
else
{
	if(input[i]>(29459+offset0))
{
	if(input[i]>(29461+offset0))
{
	if(input[i]==(29463+offset0))
{
	vR[i] = 29463;
}
else
{
	vR[i] = 29462;
}

}
else
{
	if(input[i]==(29461+offset0))
{
	vR[i] = 29461;
}
else
{
	vR[i] = 29460;
}

}

}
else
{
	if(input[i]>(29457+offset0))
{
	if(input[i]==(29459+offset0))
{
	vR[i] = 29459;
}
else
{
	vR[i] = 29458;
}

}
else
{
	if(input[i]==(29457+offset0))
{
	vR[i] = 29457;
}
else
{
	vR[i] = 29456;
}

}

}

}

}
else
{
	if(input[i]>(29447+offset0))
{
	if(input[i]>(29451+offset0))
{
	if(input[i]>(29453+offset0))
{
	if(input[i]==(29455+offset0))
{
	vR[i] = 29455;
}
else
{
	vR[i] = 29454;
}

}
else
{
	if(input[i]==(29453+offset0))
{
	vR[i] = 29453;
}
else
{
	vR[i] = 29452;
}

}

}
else
{
	if(input[i]>(29449+offset0))
{
	if(input[i]==(29451+offset0))
{
	vR[i] = 29451;
}
else
{
	vR[i] = 29450;
}

}
else
{
	if(input[i]==(29449+offset0))
{
	vR[i] = 29449;
}
else
{
	vR[i] = 29448;
}

}

}

}
else
{
	if(input[i]>(29443+offset0))
{
	if(input[i]>(29445+offset0))
{
	if(input[i]==(29447+offset0))
{
	vR[i] = 29447;
}
else
{
	vR[i] = 29446;
}

}
else
{
	if(input[i]==(29445+offset0))
{
	vR[i] = 29445;
}
else
{
	vR[i] = 29444;
}

}

}
else
{
	if(input[i]>(29441+offset0))
{
	if(input[i]==(29443+offset0))
{
	vR[i] = 29443;
}
else
{
	vR[i] = 29442;
}

}
else
{
	if(input[i]==(29441+offset0))
{
	vR[i] = 29441;
}
else
{
	vR[i] = 29440;
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
	if(input[i]>(29311+offset0))
{
	if(input[i]>(29375+offset0))
{
	if(input[i]>(29407+offset0))
{
	if(input[i]>(29423+offset0))
{
	if(input[i]>(29431+offset0))
{
	if(input[i]>(29435+offset0))
{
	if(input[i]>(29437+offset0))
{
	if(input[i]==(29439+offset0))
{
	vR[i] = 29439;
}
else
{
	vR[i] = 29438;
}

}
else
{
	if(input[i]==(29437+offset0))
{
	vR[i] = 29437;
}
else
{
	vR[i] = 29436;
}

}

}
else
{
	if(input[i]>(29433+offset0))
{
	if(input[i]==(29435+offset0))
{
	vR[i] = 29435;
}
else
{
	vR[i] = 29434;
}

}
else
{
	if(input[i]==(29433+offset0))
{
	vR[i] = 29433;
}
else
{
	vR[i] = 29432;
}

}

}

}
else
{
	if(input[i]>(29427+offset0))
{
	if(input[i]>(29429+offset0))
{
	if(input[i]==(29431+offset0))
{
	vR[i] = 29431;
}
else
{
	vR[i] = 29430;
}

}
else
{
	if(input[i]==(29429+offset0))
{
	vR[i] = 29429;
}
else
{
	vR[i] = 29428;
}

}

}
else
{
	if(input[i]>(29425+offset0))
{
	if(input[i]==(29427+offset0))
{
	vR[i] = 29427;
}
else
{
	vR[i] = 29426;
}

}
else
{
	if(input[i]==(29425+offset0))
{
	vR[i] = 29425;
}
else
{
	vR[i] = 29424;
}

}

}

}

}
else
{
	if(input[i]>(29415+offset0))
{
	if(input[i]>(29419+offset0))
{
	if(input[i]>(29421+offset0))
{
	if(input[i]==(29423+offset0))
{
	vR[i] = 29423;
}
else
{
	vR[i] = 29422;
}

}
else
{
	if(input[i]==(29421+offset0))
{
	vR[i] = 29421;
}
else
{
	vR[i] = 29420;
}

}

}
else
{
	if(input[i]>(29417+offset0))
{
	if(input[i]==(29419+offset0))
{
	vR[i] = 29419;
}
else
{
	vR[i] = 29418;
}

}
else
{
	if(input[i]==(29417+offset0))
{
	vR[i] = 29417;
}
else
{
	vR[i] = 29416;
}

}

}

}
else
{
	if(input[i]>(29411+offset0))
{
	if(input[i]>(29413+offset0))
{
	if(input[i]==(29415+offset0))
{
	vR[i] = 29415;
}
else
{
	vR[i] = 29414;
}

}
else
{
	if(input[i]==(29413+offset0))
{
	vR[i] = 29413;
}
else
{
	vR[i] = 29412;
}

}

}
else
{
	if(input[i]>(29409+offset0))
{
	if(input[i]==(29411+offset0))
{
	vR[i] = 29411;
}
else
{
	vR[i] = 29410;
}

}
else
{
	if(input[i]==(29409+offset0))
{
	vR[i] = 29409;
}
else
{
	vR[i] = 29408;
}

}

}

}

}

}
else
{
	if(input[i]>(29391+offset0))
{
	if(input[i]>(29399+offset0))
{
	if(input[i]>(29403+offset0))
{
	if(input[i]>(29405+offset0))
{
	if(input[i]==(29407+offset0))
{
	vR[i] = 29407;
}
else
{
	vR[i] = 29406;
}

}
else
{
	if(input[i]==(29405+offset0))
{
	vR[i] = 29405;
}
else
{
	vR[i] = 29404;
}

}

}
else
{
	if(input[i]>(29401+offset0))
{
	if(input[i]==(29403+offset0))
{
	vR[i] = 29403;
}
else
{
	vR[i] = 29402;
}

}
else
{
	if(input[i]==(29401+offset0))
{
	vR[i] = 29401;
}
else
{
	vR[i] = 29400;
}

}

}

}
else
{
	if(input[i]>(29395+offset0))
{
	if(input[i]>(29397+offset0))
{
	if(input[i]==(29399+offset0))
{
	vR[i] = 29399;
}
else
{
	vR[i] = 29398;
}

}
else
{
	if(input[i]==(29397+offset0))
{
	vR[i] = 29397;
}
else
{
	vR[i] = 29396;
}

}

}
else
{
	if(input[i]>(29393+offset0))
{
	if(input[i]==(29395+offset0))
{
	vR[i] = 29395;
}
else
{
	vR[i] = 29394;
}

}
else
{
	if(input[i]==(29393+offset0))
{
	vR[i] = 29393;
}
else
{
	vR[i] = 29392;
}

}

}

}

}
else
{
	if(input[i]>(29383+offset0))
{
	if(input[i]>(29387+offset0))
{
	if(input[i]>(29389+offset0))
{
	if(input[i]==(29391+offset0))
{
	vR[i] = 29391;
}
else
{
	vR[i] = 29390;
}

}
else
{
	if(input[i]==(29389+offset0))
{
	vR[i] = 29389;
}
else
{
	vR[i] = 29388;
}

}

}
else
{
	if(input[i]>(29385+offset0))
{
	if(input[i]==(29387+offset0))
{
	vR[i] = 29387;
}
else
{
	vR[i] = 29386;
}

}
else
{
	if(input[i]==(29385+offset0))
{
	vR[i] = 29385;
}
else
{
	vR[i] = 29384;
}

}

}

}
else
{
	if(input[i]>(29379+offset0))
{
	if(input[i]>(29381+offset0))
{
	if(input[i]==(29383+offset0))
{
	vR[i] = 29383;
}
else
{
	vR[i] = 29382;
}

}
else
{
	if(input[i]==(29381+offset0))
{
	vR[i] = 29381;
}
else
{
	vR[i] = 29380;
}

}

}
else
{
	if(input[i]>(29377+offset0))
{
	if(input[i]==(29379+offset0))
{
	vR[i] = 29379;
}
else
{
	vR[i] = 29378;
}

}
else
{
	if(input[i]==(29377+offset0))
{
	vR[i] = 29377;
}
else
{
	vR[i] = 29376;
}

}

}

}

}

}

}
else
{
	if(input[i]>(29343+offset0))
{
	if(input[i]>(29359+offset0))
{
	if(input[i]>(29367+offset0))
{
	if(input[i]>(29371+offset0))
{
	if(input[i]>(29373+offset0))
{
	if(input[i]==(29375+offset0))
{
	vR[i] = 29375;
}
else
{
	vR[i] = 29374;
}

}
else
{
	if(input[i]==(29373+offset0))
{
	vR[i] = 29373;
}
else
{
	vR[i] = 29372;
}

}

}
else
{
	if(input[i]>(29369+offset0))
{
	if(input[i]==(29371+offset0))
{
	vR[i] = 29371;
}
else
{
	vR[i] = 29370;
}

}
else
{
	if(input[i]==(29369+offset0))
{
	vR[i] = 29369;
}
else
{
	vR[i] = 29368;
}

}

}

}
else
{
	if(input[i]>(29363+offset0))
{
	if(input[i]>(29365+offset0))
{
	if(input[i]==(29367+offset0))
{
	vR[i] = 29367;
}
else
{
	vR[i] = 29366;
}

}
else
{
	if(input[i]==(29365+offset0))
{
	vR[i] = 29365;
}
else
{
	vR[i] = 29364;
}

}

}
else
{
	if(input[i]>(29361+offset0))
{
	if(input[i]==(29363+offset0))
{
	vR[i] = 29363;
}
else
{
	vR[i] = 29362;
}

}
else
{
	if(input[i]==(29361+offset0))
{
	vR[i] = 29361;
}
else
{
	vR[i] = 29360;
}

}

}

}

}
else
{
	if(input[i]>(29351+offset0))
{
	if(input[i]>(29355+offset0))
{
	if(input[i]>(29357+offset0))
{
	if(input[i]==(29359+offset0))
{
	vR[i] = 29359;
}
else
{
	vR[i] = 29358;
}

}
else
{
	if(input[i]==(29357+offset0))
{
	vR[i] = 29357;
}
else
{
	vR[i] = 29356;
}

}

}
else
{
	if(input[i]>(29353+offset0))
{
	if(input[i]==(29355+offset0))
{
	vR[i] = 29355;
}
else
{
	vR[i] = 29354;
}

}
else
{
	if(input[i]==(29353+offset0))
{
	vR[i] = 29353;
}
else
{
	vR[i] = 29352;
}

}

}

}
else
{
	if(input[i]>(29347+offset0))
{
	if(input[i]>(29349+offset0))
{
	if(input[i]==(29351+offset0))
{
	vR[i] = 29351;
}
else
{
	vR[i] = 29350;
}

}
else
{
	if(input[i]==(29349+offset0))
{
	vR[i] = 29349;
}
else
{
	vR[i] = 29348;
}

}

}
else
{
	if(input[i]>(29345+offset0))
{
	if(input[i]==(29347+offset0))
{
	vR[i] = 29347;
}
else
{
	vR[i] = 29346;
}

}
else
{
	if(input[i]==(29345+offset0))
{
	vR[i] = 29345;
}
else
{
	vR[i] = 29344;
}

}

}

}

}

}
else
{
	if(input[i]>(29327+offset0))
{
	if(input[i]>(29335+offset0))
{
	if(input[i]>(29339+offset0))
{
	if(input[i]>(29341+offset0))
{
	if(input[i]==(29343+offset0))
{
	vR[i] = 29343;
}
else
{
	vR[i] = 29342;
}

}
else
{
	if(input[i]==(29341+offset0))
{
	vR[i] = 29341;
}
else
{
	vR[i] = 29340;
}

}

}
else
{
	if(input[i]>(29337+offset0))
{
	if(input[i]==(29339+offset0))
{
	vR[i] = 29339;
}
else
{
	vR[i] = 29338;
}

}
else
{
	if(input[i]==(29337+offset0))
{
	vR[i] = 29337;
}
else
{
	vR[i] = 29336;
}

}

}

}
else
{
	if(input[i]>(29331+offset0))
{
	if(input[i]>(29333+offset0))
{
	if(input[i]==(29335+offset0))
{
	vR[i] = 29335;
}
else
{
	vR[i] = 29334;
}

}
else
{
	if(input[i]==(29333+offset0))
{
	vR[i] = 29333;
}
else
{
	vR[i] = 29332;
}

}

}
else
{
	if(input[i]>(29329+offset0))
{
	if(input[i]==(29331+offset0))
{
	vR[i] = 29331;
}
else
{
	vR[i] = 29330;
}

}
else
{
	if(input[i]==(29329+offset0))
{
	vR[i] = 29329;
}
else
{
	vR[i] = 29328;
}

}

}

}

}
else
{
	if(input[i]>(29319+offset0))
{
	if(input[i]>(29323+offset0))
{
	if(input[i]>(29325+offset0))
{
	if(input[i]==(29327+offset0))
{
	vR[i] = 29327;
}
else
{
	vR[i] = 29326;
}

}
else
{
	if(input[i]==(29325+offset0))
{
	vR[i] = 29325;
}
else
{
	vR[i] = 29324;
}

}

}
else
{
	if(input[i]>(29321+offset0))
{
	if(input[i]==(29323+offset0))
{
	vR[i] = 29323;
}
else
{
	vR[i] = 29322;
}

}
else
{
	if(input[i]==(29321+offset0))
{
	vR[i] = 29321;
}
else
{
	vR[i] = 29320;
}

}

}

}
else
{
	if(input[i]>(29315+offset0))
{
	if(input[i]>(29317+offset0))
{
	if(input[i]==(29319+offset0))
{
	vR[i] = 29319;
}
else
{
	vR[i] = 29318;
}

}
else
{
	if(input[i]==(29317+offset0))
{
	vR[i] = 29317;
}
else
{
	vR[i] = 29316;
}

}

}
else
{
	if(input[i]>(29313+offset0))
{
	if(input[i]==(29315+offset0))
{
	vR[i] = 29315;
}
else
{
	vR[i] = 29314;
}

}
else
{
	if(input[i]==(29313+offset0))
{
	vR[i] = 29313;
}
else
{
	vR[i] = 29312;
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
	if(input[i]>(29247+offset0))
{
	if(input[i]>(29279+offset0))
{
	if(input[i]>(29295+offset0))
{
	if(input[i]>(29303+offset0))
{
	if(input[i]>(29307+offset0))
{
	if(input[i]>(29309+offset0))
{
	if(input[i]==(29311+offset0))
{
	vR[i] = 29311;
}
else
{
	vR[i] = 29310;
}

}
else
{
	if(input[i]==(29309+offset0))
{
	vR[i] = 29309;
}
else
{
	vR[i] = 29308;
}

}

}
else
{
	if(input[i]>(29305+offset0))
{
	if(input[i]==(29307+offset0))
{
	vR[i] = 29307;
}
else
{
	vR[i] = 29306;
}

}
else
{
	if(input[i]==(29305+offset0))
{
	vR[i] = 29305;
}
else
{
	vR[i] = 29304;
}

}

}

}
else
{
	if(input[i]>(29299+offset0))
{
	if(input[i]>(29301+offset0))
{
	if(input[i]==(29303+offset0))
{
	vR[i] = 29303;
}
else
{
	vR[i] = 29302;
}

}
else
{
	if(input[i]==(29301+offset0))
{
	vR[i] = 29301;
}
else
{
	vR[i] = 29300;
}

}

}
else
{
	if(input[i]>(29297+offset0))
{
	if(input[i]==(29299+offset0))
{
	vR[i] = 29299;
}
else
{
	vR[i] = 29298;
}

}
else
{
	if(input[i]==(29297+offset0))
{
	vR[i] = 29297;
}
else
{
	vR[i] = 29296;
}

}

}

}

}
else
{
	if(input[i]>(29287+offset0))
{
	if(input[i]>(29291+offset0))
{
	if(input[i]>(29293+offset0))
{
	if(input[i]==(29295+offset0))
{
	vR[i] = 29295;
}
else
{
	vR[i] = 29294;
}

}
else
{
	if(input[i]==(29293+offset0))
{
	vR[i] = 29293;
}
else
{
	vR[i] = 29292;
}

}

}
else
{
	if(input[i]>(29289+offset0))
{
	if(input[i]==(29291+offset0))
{
	vR[i] = 29291;
}
else
{
	vR[i] = 29290;
}

}
else
{
	if(input[i]==(29289+offset0))
{
	vR[i] = 29289;
}
else
{
	vR[i] = 29288;
}

}

}

}
else
{
	if(input[i]>(29283+offset0))
{
	if(input[i]>(29285+offset0))
{
	if(input[i]==(29287+offset0))
{
	vR[i] = 29287;
}
else
{
	vR[i] = 29286;
}

}
else
{
	if(input[i]==(29285+offset0))
{
	vR[i] = 29285;
}
else
{
	vR[i] = 29284;
}

}

}
else
{
	if(input[i]>(29281+offset0))
{
	if(input[i]==(29283+offset0))
{
	vR[i] = 29283;
}
else
{
	vR[i] = 29282;
}

}
else
{
	if(input[i]==(29281+offset0))
{
	vR[i] = 29281;
}
else
{
	vR[i] = 29280;
}

}

}

}

}

}
else
{
	if(input[i]>(29263+offset0))
{
	if(input[i]>(29271+offset0))
{
	if(input[i]>(29275+offset0))
{
	if(input[i]>(29277+offset0))
{
	if(input[i]==(29279+offset0))
{
	vR[i] = 29279;
}
else
{
	vR[i] = 29278;
}

}
else
{
	if(input[i]==(29277+offset0))
{
	vR[i] = 29277;
}
else
{
	vR[i] = 29276;
}

}

}
else
{
	if(input[i]>(29273+offset0))
{
	if(input[i]==(29275+offset0))
{
	vR[i] = 29275;
}
else
{
	vR[i] = 29274;
}

}
else
{
	if(input[i]==(29273+offset0))
{
	vR[i] = 29273;
}
else
{
	vR[i] = 29272;
}

}

}

}
else
{
	if(input[i]>(29267+offset0))
{
	if(input[i]>(29269+offset0))
{
	if(input[i]==(29271+offset0))
{
	vR[i] = 29271;
}
else
{
	vR[i] = 29270;
}

}
else
{
	if(input[i]==(29269+offset0))
{
	vR[i] = 29269;
}
else
{
	vR[i] = 29268;
}

}

}
else
{
	if(input[i]>(29265+offset0))
{
	if(input[i]==(29267+offset0))
{
	vR[i] = 29267;
}
else
{
	vR[i] = 29266;
}

}
else
{
	if(input[i]==(29265+offset0))
{
	vR[i] = 29265;
}
else
{
	vR[i] = 29264;
}

}

}

}

}
else
{
	if(input[i]>(29255+offset0))
{
	if(input[i]>(29259+offset0))
{
	if(input[i]>(29261+offset0))
{
	if(input[i]==(29263+offset0))
{
	vR[i] = 29263;
}
else
{
	vR[i] = 29262;
}

}
else
{
	if(input[i]==(29261+offset0))
{
	vR[i] = 29261;
}
else
{
	vR[i] = 29260;
}

}

}
else
{
	if(input[i]>(29257+offset0))
{
	if(input[i]==(29259+offset0))
{
	vR[i] = 29259;
}
else
{
	vR[i] = 29258;
}

}
else
{
	if(input[i]==(29257+offset0))
{
	vR[i] = 29257;
}
else
{
	vR[i] = 29256;
}

}

}

}
else
{
	if(input[i]>(29251+offset0))
{
	if(input[i]>(29253+offset0))
{
	if(input[i]==(29255+offset0))
{
	vR[i] = 29255;
}
else
{
	vR[i] = 29254;
}

}
else
{
	if(input[i]==(29253+offset0))
{
	vR[i] = 29253;
}
else
{
	vR[i] = 29252;
}

}

}
else
{
	if(input[i]>(29249+offset0))
{
	if(input[i]==(29251+offset0))
{
	vR[i] = 29251;
}
else
{
	vR[i] = 29250;
}

}
else
{
	if(input[i]==(29249+offset0))
{
	vR[i] = 29249;
}
else
{
	vR[i] = 29248;
}

}

}

}

}

}

}
else
{
	if(input[i]>(29215+offset0))
{
	if(input[i]>(29231+offset0))
{
	if(input[i]>(29239+offset0))
{
	if(input[i]>(29243+offset0))
{
	if(input[i]>(29245+offset0))
{
	if(input[i]==(29247+offset0))
{
	vR[i] = 29247;
}
else
{
	vR[i] = 29246;
}

}
else
{
	if(input[i]==(29245+offset0))
{
	vR[i] = 29245;
}
else
{
	vR[i] = 29244;
}

}

}
else
{
	if(input[i]>(29241+offset0))
{
	if(input[i]==(29243+offset0))
{
	vR[i] = 29243;
}
else
{
	vR[i] = 29242;
}

}
else
{
	if(input[i]==(29241+offset0))
{
	vR[i] = 29241;
}
else
{
	vR[i] = 29240;
}

}

}

}
else
{
	if(input[i]>(29235+offset0))
{
	if(input[i]>(29237+offset0))
{
	if(input[i]==(29239+offset0))
{
	vR[i] = 29239;
}
else
{
	vR[i] = 29238;
}

}
else
{
	if(input[i]==(29237+offset0))
{
	vR[i] = 29237;
}
else
{
	vR[i] = 29236;
}

}

}
else
{
	if(input[i]>(29233+offset0))
{
	if(input[i]==(29235+offset0))
{
	vR[i] = 29235;
}
else
{
	vR[i] = 29234;
}

}
else
{
	if(input[i]==(29233+offset0))
{
	vR[i] = 29233;
}
else
{
	vR[i] = 29232;
}

}

}

}

}
else
{
	if(input[i]>(29223+offset0))
{
	if(input[i]>(29227+offset0))
{
	if(input[i]>(29229+offset0))
{
	if(input[i]==(29231+offset0))
{
	vR[i] = 29231;
}
else
{
	vR[i] = 29230;
}

}
else
{
	if(input[i]==(29229+offset0))
{
	vR[i] = 29229;
}
else
{
	vR[i] = 29228;
}

}

}
else
{
	if(input[i]>(29225+offset0))
{
	if(input[i]==(29227+offset0))
{
	vR[i] = 29227;
}
else
{
	vR[i] = 29226;
}

}
else
{
	if(input[i]==(29225+offset0))
{
	vR[i] = 29225;
}
else
{
	vR[i] = 29224;
}

}

}

}
else
{
	if(input[i]>(29219+offset0))
{
	if(input[i]>(29221+offset0))
{
	if(input[i]==(29223+offset0))
{
	vR[i] = 29223;
}
else
{
	vR[i] = 29222;
}

}
else
{
	if(input[i]==(29221+offset0))
{
	vR[i] = 29221;
}
else
{
	vR[i] = 29220;
}

}

}
else
{
	if(input[i]>(29217+offset0))
{
	if(input[i]==(29219+offset0))
{
	vR[i] = 29219;
}
else
{
	vR[i] = 29218;
}

}
else
{
	if(input[i]==(29217+offset0))
{
	vR[i] = 29217;
}
else
{
	vR[i] = 29216;
}

}

}

}

}

}
else
{
	if(input[i]>(29199+offset0))
{
	if(input[i]>(29207+offset0))
{
	if(input[i]>(29211+offset0))
{
	if(input[i]>(29213+offset0))
{
	if(input[i]==(29215+offset0))
{
	vR[i] = 29215;
}
else
{
	vR[i] = 29214;
}

}
else
{
	if(input[i]==(29213+offset0))
{
	vR[i] = 29213;
}
else
{
	vR[i] = 29212;
}

}

}
else
{
	if(input[i]>(29209+offset0))
{
	if(input[i]==(29211+offset0))
{
	vR[i] = 29211;
}
else
{
	vR[i] = 29210;
}

}
else
{
	if(input[i]==(29209+offset0))
{
	vR[i] = 29209;
}
else
{
	vR[i] = 29208;
}

}

}

}
else
{
	if(input[i]>(29203+offset0))
{
	if(input[i]>(29205+offset0))
{
	if(input[i]==(29207+offset0))
{
	vR[i] = 29207;
}
else
{
	vR[i] = 29206;
}

}
else
{
	if(input[i]==(29205+offset0))
{
	vR[i] = 29205;
}
else
{
	vR[i] = 29204;
}

}

}
else
{
	if(input[i]>(29201+offset0))
{
	if(input[i]==(29203+offset0))
{
	vR[i] = 29203;
}
else
{
	vR[i] = 29202;
}

}
else
{
	if(input[i]==(29201+offset0))
{
	vR[i] = 29201;
}
else
{
	vR[i] = 29200;
}

}

}

}

}
else
{
	if(input[i]>(29191+offset0))
{
	if(input[i]>(29195+offset0))
{
	if(input[i]>(29197+offset0))
{
	if(input[i]==(29199+offset0))
{
	vR[i] = 29199;
}
else
{
	vR[i] = 29198;
}

}
else
{
	if(input[i]==(29197+offset0))
{
	vR[i] = 29197;
}
else
{
	vR[i] = 29196;
}

}

}
else
{
	if(input[i]>(29193+offset0))
{
	if(input[i]==(29195+offset0))
{
	vR[i] = 29195;
}
else
{
	vR[i] = 29194;
}

}
else
{
	if(input[i]==(29193+offset0))
{
	vR[i] = 29193;
}
else
{
	vR[i] = 29192;
}

}

}

}
else
{
	if(input[i]>(29187+offset0))
{
	if(input[i]>(29189+offset0))
{
	if(input[i]==(29191+offset0))
{
	vR[i] = 29191;
}
else
{
	vR[i] = 29190;
}

}
else
{
	if(input[i]==(29189+offset0))
{
	vR[i] = 29189;
}
else
{
	vR[i] = 29188;
}

}

}
else
{
	if(input[i]>(29185+offset0))
{
	if(input[i]==(29187+offset0))
{
	vR[i] = 29187;
}
else
{
	vR[i] = 29186;
}

}
else
{
	if(input[i]==(29185+offset0))
{
	vR[i] = 29185;
}
else
{
	vR[i] = 29184;
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
	if(input[i]>(28927+offset0))
{
	if(input[i]>(29055+offset0))
{
	if(input[i]>(29119+offset0))
{
	if(input[i]>(29151+offset0))
{
	if(input[i]>(29167+offset0))
{
	if(input[i]>(29175+offset0))
{
	if(input[i]>(29179+offset0))
{
	if(input[i]>(29181+offset0))
{
	if(input[i]==(29183+offset0))
{
	vR[i] = 29183;
}
else
{
	vR[i] = 29182;
}

}
else
{
	if(input[i]==(29181+offset0))
{
	vR[i] = 29181;
}
else
{
	vR[i] = 29180;
}

}

}
else
{
	if(input[i]>(29177+offset0))
{
	if(input[i]==(29179+offset0))
{
	vR[i] = 29179;
}
else
{
	vR[i] = 29178;
}

}
else
{
	if(input[i]==(29177+offset0))
{
	vR[i] = 29177;
}
else
{
	vR[i] = 29176;
}

}

}

}
else
{
	if(input[i]>(29171+offset0))
{
	if(input[i]>(29173+offset0))
{
	if(input[i]==(29175+offset0))
{
	vR[i] = 29175;
}
else
{
	vR[i] = 29174;
}

}
else
{
	if(input[i]==(29173+offset0))
{
	vR[i] = 29173;
}
else
{
	vR[i] = 29172;
}

}

}
else
{
	if(input[i]>(29169+offset0))
{
	if(input[i]==(29171+offset0))
{
	vR[i] = 29171;
}
else
{
	vR[i] = 29170;
}

}
else
{
	if(input[i]==(29169+offset0))
{
	vR[i] = 29169;
}
else
{
	vR[i] = 29168;
}

}

}

}

}
else
{
	if(input[i]>(29159+offset0))
{
	if(input[i]>(29163+offset0))
{
	if(input[i]>(29165+offset0))
{
	if(input[i]==(29167+offset0))
{
	vR[i] = 29167;
}
else
{
	vR[i] = 29166;
}

}
else
{
	if(input[i]==(29165+offset0))
{
	vR[i] = 29165;
}
else
{
	vR[i] = 29164;
}

}

}
else
{
	if(input[i]>(29161+offset0))
{
	if(input[i]==(29163+offset0))
{
	vR[i] = 29163;
}
else
{
	vR[i] = 29162;
}

}
else
{
	if(input[i]==(29161+offset0))
{
	vR[i] = 29161;
}
else
{
	vR[i] = 29160;
}

}

}

}
else
{
	if(input[i]>(29155+offset0))
{
	if(input[i]>(29157+offset0))
{
	if(input[i]==(29159+offset0))
{
	vR[i] = 29159;
}
else
{
	vR[i] = 29158;
}

}
else
{
	if(input[i]==(29157+offset0))
{
	vR[i] = 29157;
}
else
{
	vR[i] = 29156;
}

}

}
else
{
	if(input[i]>(29153+offset0))
{
	if(input[i]==(29155+offset0))
{
	vR[i] = 29155;
}
else
{
	vR[i] = 29154;
}

}
else
{
	if(input[i]==(29153+offset0))
{
	vR[i] = 29153;
}
else
{
	vR[i] = 29152;
}

}

}

}

}

}
else
{
	if(input[i]>(29135+offset0))
{
	if(input[i]>(29143+offset0))
{
	if(input[i]>(29147+offset0))
{
	if(input[i]>(29149+offset0))
{
	if(input[i]==(29151+offset0))
{
	vR[i] = 29151;
}
else
{
	vR[i] = 29150;
}

}
else
{
	if(input[i]==(29149+offset0))
{
	vR[i] = 29149;
}
else
{
	vR[i] = 29148;
}

}

}
else
{
	if(input[i]>(29145+offset0))
{
	if(input[i]==(29147+offset0))
{
	vR[i] = 29147;
}
else
{
	vR[i] = 29146;
}

}
else
{
	if(input[i]==(29145+offset0))
{
	vR[i] = 29145;
}
else
{
	vR[i] = 29144;
}

}

}

}
else
{
	if(input[i]>(29139+offset0))
{
	if(input[i]>(29141+offset0))
{
	if(input[i]==(29143+offset0))
{
	vR[i] = 29143;
}
else
{
	vR[i] = 29142;
}

}
else
{
	if(input[i]==(29141+offset0))
{
	vR[i] = 29141;
}
else
{
	vR[i] = 29140;
}

}

}
else
{
	if(input[i]>(29137+offset0))
{
	if(input[i]==(29139+offset0))
{
	vR[i] = 29139;
}
else
{
	vR[i] = 29138;
}

}
else
{
	if(input[i]==(29137+offset0))
{
	vR[i] = 29137;
}
else
{
	vR[i] = 29136;
}

}

}

}

}
else
{
	if(input[i]>(29127+offset0))
{
	if(input[i]>(29131+offset0))
{
	if(input[i]>(29133+offset0))
{
	if(input[i]==(29135+offset0))
{
	vR[i] = 29135;
}
else
{
	vR[i] = 29134;
}

}
else
{
	if(input[i]==(29133+offset0))
{
	vR[i] = 29133;
}
else
{
	vR[i] = 29132;
}

}

}
else
{
	if(input[i]>(29129+offset0))
{
	if(input[i]==(29131+offset0))
{
	vR[i] = 29131;
}
else
{
	vR[i] = 29130;
}

}
else
{
	if(input[i]==(29129+offset0))
{
	vR[i] = 29129;
}
else
{
	vR[i] = 29128;
}

}

}

}
else
{
	if(input[i]>(29123+offset0))
{
	if(input[i]>(29125+offset0))
{
	if(input[i]==(29127+offset0))
{
	vR[i] = 29127;
}
else
{
	vR[i] = 29126;
}

}
else
{
	if(input[i]==(29125+offset0))
{
	vR[i] = 29125;
}
else
{
	vR[i] = 29124;
}

}

}
else
{
	if(input[i]>(29121+offset0))
{
	if(input[i]==(29123+offset0))
{
	vR[i] = 29123;
}
else
{
	vR[i] = 29122;
}

}
else
{
	if(input[i]==(29121+offset0))
{
	vR[i] = 29121;
}
else
{
	vR[i] = 29120;
}

}

}

}

}

}

}
else
{
	if(input[i]>(29087+offset0))
{
	if(input[i]>(29103+offset0))
{
	if(input[i]>(29111+offset0))
{
	if(input[i]>(29115+offset0))
{
	if(input[i]>(29117+offset0))
{
	if(input[i]==(29119+offset0))
{
	vR[i] = 29119;
}
else
{
	vR[i] = 29118;
}

}
else
{
	if(input[i]==(29117+offset0))
{
	vR[i] = 29117;
}
else
{
	vR[i] = 29116;
}

}

}
else
{
	if(input[i]>(29113+offset0))
{
	if(input[i]==(29115+offset0))
{
	vR[i] = 29115;
}
else
{
	vR[i] = 29114;
}

}
else
{
	if(input[i]==(29113+offset0))
{
	vR[i] = 29113;
}
else
{
	vR[i] = 29112;
}

}

}

}
else
{
	if(input[i]>(29107+offset0))
{
	if(input[i]>(29109+offset0))
{
	if(input[i]==(29111+offset0))
{
	vR[i] = 29111;
}
else
{
	vR[i] = 29110;
}

}
else
{
	if(input[i]==(29109+offset0))
{
	vR[i] = 29109;
}
else
{
	vR[i] = 29108;
}

}

}
else
{
	if(input[i]>(29105+offset0))
{
	if(input[i]==(29107+offset0))
{
	vR[i] = 29107;
}
else
{
	vR[i] = 29106;
}

}
else
{
	if(input[i]==(29105+offset0))
{
	vR[i] = 29105;
}
else
{
	vR[i] = 29104;
}

}

}

}

}
else
{
	if(input[i]>(29095+offset0))
{
	if(input[i]>(29099+offset0))
{
	if(input[i]>(29101+offset0))
{
	if(input[i]==(29103+offset0))
{
	vR[i] = 29103;
}
else
{
	vR[i] = 29102;
}

}
else
{
	if(input[i]==(29101+offset0))
{
	vR[i] = 29101;
}
else
{
	vR[i] = 29100;
}

}

}
else
{
	if(input[i]>(29097+offset0))
{
	if(input[i]==(29099+offset0))
{
	vR[i] = 29099;
}
else
{
	vR[i] = 29098;
}

}
else
{
	if(input[i]==(29097+offset0))
{
	vR[i] = 29097;
}
else
{
	vR[i] = 29096;
}

}

}

}
else
{
	if(input[i]>(29091+offset0))
{
	if(input[i]>(29093+offset0))
{
	if(input[i]==(29095+offset0))
{
	vR[i] = 29095;
}
else
{
	vR[i] = 29094;
}

}
else
{
	if(input[i]==(29093+offset0))
{
	vR[i] = 29093;
}
else
{
	vR[i] = 29092;
}

}

}
else
{
	if(input[i]>(29089+offset0))
{
	if(input[i]==(29091+offset0))
{
	vR[i] = 29091;
}
else
{
	vR[i] = 29090;
}

}
else
{
	if(input[i]==(29089+offset0))
{
	vR[i] = 29089;
}
else
{
	vR[i] = 29088;
}

}

}

}

}

}
else
{
	if(input[i]>(29071+offset0))
{
	if(input[i]>(29079+offset0))
{
	if(input[i]>(29083+offset0))
{
	if(input[i]>(29085+offset0))
{
	if(input[i]==(29087+offset0))
{
	vR[i] = 29087;
}
else
{
	vR[i] = 29086;
}

}
else
{
	if(input[i]==(29085+offset0))
{
	vR[i] = 29085;
}
else
{
	vR[i] = 29084;
}

}

}
else
{
	if(input[i]>(29081+offset0))
{
	if(input[i]==(29083+offset0))
{
	vR[i] = 29083;
}
else
{
	vR[i] = 29082;
}

}
else
{
	if(input[i]==(29081+offset0))
{
	vR[i] = 29081;
}
else
{
	vR[i] = 29080;
}

}

}

}
else
{
	if(input[i]>(29075+offset0))
{
	if(input[i]>(29077+offset0))
{
	if(input[i]==(29079+offset0))
{
	vR[i] = 29079;
}
else
{
	vR[i] = 29078;
}

}
else
{
	if(input[i]==(29077+offset0))
{
	vR[i] = 29077;
}
else
{
	vR[i] = 29076;
}

}

}
else
{
	if(input[i]>(29073+offset0))
{
	if(input[i]==(29075+offset0))
{
	vR[i] = 29075;
}
else
{
	vR[i] = 29074;
}

}
else
{
	if(input[i]==(29073+offset0))
{
	vR[i] = 29073;
}
else
{
	vR[i] = 29072;
}

}

}

}

}
else
{
	if(input[i]>(29063+offset0))
{
	if(input[i]>(29067+offset0))
{
	if(input[i]>(29069+offset0))
{
	if(input[i]==(29071+offset0))
{
	vR[i] = 29071;
}
else
{
	vR[i] = 29070;
}

}
else
{
	if(input[i]==(29069+offset0))
{
	vR[i] = 29069;
}
else
{
	vR[i] = 29068;
}

}

}
else
{
	if(input[i]>(29065+offset0))
{
	if(input[i]==(29067+offset0))
{
	vR[i] = 29067;
}
else
{
	vR[i] = 29066;
}

}
else
{
	if(input[i]==(29065+offset0))
{
	vR[i] = 29065;
}
else
{
	vR[i] = 29064;
}

}

}

}
else
{
	if(input[i]>(29059+offset0))
{
	if(input[i]>(29061+offset0))
{
	if(input[i]==(29063+offset0))
{
	vR[i] = 29063;
}
else
{
	vR[i] = 29062;
}

}
else
{
	if(input[i]==(29061+offset0))
{
	vR[i] = 29061;
}
else
{
	vR[i] = 29060;
}

}

}
else
{
	if(input[i]>(29057+offset0))
{
	if(input[i]==(29059+offset0))
{
	vR[i] = 29059;
}
else
{
	vR[i] = 29058;
}

}
else
{
	if(input[i]==(29057+offset0))
{
	vR[i] = 29057;
}
else
{
	vR[i] = 29056;
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
	if(input[i]>(28991+offset0))
{
	if(input[i]>(29023+offset0))
{
	if(input[i]>(29039+offset0))
{
	if(input[i]>(29047+offset0))
{
	if(input[i]>(29051+offset0))
{
	if(input[i]>(29053+offset0))
{
	if(input[i]==(29055+offset0))
{
	vR[i] = 29055;
}
else
{
	vR[i] = 29054;
}

}
else
{
	if(input[i]==(29053+offset0))
{
	vR[i] = 29053;
}
else
{
	vR[i] = 29052;
}

}

}
else
{
	if(input[i]>(29049+offset0))
{
	if(input[i]==(29051+offset0))
{
	vR[i] = 29051;
}
else
{
	vR[i] = 29050;
}

}
else
{
	if(input[i]==(29049+offset0))
{
	vR[i] = 29049;
}
else
{
	vR[i] = 29048;
}

}

}

}
else
{
	if(input[i]>(29043+offset0))
{
	if(input[i]>(29045+offset0))
{
	if(input[i]==(29047+offset0))
{
	vR[i] = 29047;
}
else
{
	vR[i] = 29046;
}

}
else
{
	if(input[i]==(29045+offset0))
{
	vR[i] = 29045;
}
else
{
	vR[i] = 29044;
}

}

}
else
{
	if(input[i]>(29041+offset0))
{
	if(input[i]==(29043+offset0))
{
	vR[i] = 29043;
}
else
{
	vR[i] = 29042;
}

}
else
{
	if(input[i]==(29041+offset0))
{
	vR[i] = 29041;
}
else
{
	vR[i] = 29040;
}

}

}

}

}
else
{
	if(input[i]>(29031+offset0))
{
	if(input[i]>(29035+offset0))
{
	if(input[i]>(29037+offset0))
{
	if(input[i]==(29039+offset0))
{
	vR[i] = 29039;
}
else
{
	vR[i] = 29038;
}

}
else
{
	if(input[i]==(29037+offset0))
{
	vR[i] = 29037;
}
else
{
	vR[i] = 29036;
}

}

}
else
{
	if(input[i]>(29033+offset0))
{
	if(input[i]==(29035+offset0))
{
	vR[i] = 29035;
}
else
{
	vR[i] = 29034;
}

}
else
{
	if(input[i]==(29033+offset0))
{
	vR[i] = 29033;
}
else
{
	vR[i] = 29032;
}

}

}

}
else
{
	if(input[i]>(29027+offset0))
{
	if(input[i]>(29029+offset0))
{
	if(input[i]==(29031+offset0))
{
	vR[i] = 29031;
}
else
{
	vR[i] = 29030;
}

}
else
{
	if(input[i]==(29029+offset0))
{
	vR[i] = 29029;
}
else
{
	vR[i] = 29028;
}

}

}
else
{
	if(input[i]>(29025+offset0))
{
	if(input[i]==(29027+offset0))
{
	vR[i] = 29027;
}
else
{
	vR[i] = 29026;
}

}
else
{
	if(input[i]==(29025+offset0))
{
	vR[i] = 29025;
}
else
{
	vR[i] = 29024;
}

}

}

}

}

}
else
{
	if(input[i]>(29007+offset0))
{
	if(input[i]>(29015+offset0))
{
	if(input[i]>(29019+offset0))
{
	if(input[i]>(29021+offset0))
{
	if(input[i]==(29023+offset0))
{
	vR[i] = 29023;
}
else
{
	vR[i] = 29022;
}

}
else
{
	if(input[i]==(29021+offset0))
{
	vR[i] = 29021;
}
else
{
	vR[i] = 29020;
}

}

}
else
{
	if(input[i]>(29017+offset0))
{
	if(input[i]==(29019+offset0))
{
	vR[i] = 29019;
}
else
{
	vR[i] = 29018;
}

}
else
{
	if(input[i]==(29017+offset0))
{
	vR[i] = 29017;
}
else
{
	vR[i] = 29016;
}

}

}

}
else
{
	if(input[i]>(29011+offset0))
{
	if(input[i]>(29013+offset0))
{
	if(input[i]==(29015+offset0))
{
	vR[i] = 29015;
}
else
{
	vR[i] = 29014;
}

}
else
{
	if(input[i]==(29013+offset0))
{
	vR[i] = 29013;
}
else
{
	vR[i] = 29012;
}

}

}
else
{
	if(input[i]>(29009+offset0))
{
	if(input[i]==(29011+offset0))
{
	vR[i] = 29011;
}
else
{
	vR[i] = 29010;
}

}
else
{
	if(input[i]==(29009+offset0))
{
	vR[i] = 29009;
}
else
{
	vR[i] = 29008;
}

}

}

}

}
else
{
	if(input[i]>(28999+offset0))
{
	if(input[i]>(29003+offset0))
{
	if(input[i]>(29005+offset0))
{
	if(input[i]==(29007+offset0))
{
	vR[i] = 29007;
}
else
{
	vR[i] = 29006;
}

}
else
{
	if(input[i]==(29005+offset0))
{
	vR[i] = 29005;
}
else
{
	vR[i] = 29004;
}

}

}
else
{
	if(input[i]>(29001+offset0))
{
	if(input[i]==(29003+offset0))
{
	vR[i] = 29003;
}
else
{
	vR[i] = 29002;
}

}
else
{
	if(input[i]==(29001+offset0))
{
	vR[i] = 29001;
}
else
{
	vR[i] = 29000;
}

}

}

}
else
{
	if(input[i]>(28995+offset0))
{
	if(input[i]>(28997+offset0))
{
	if(input[i]==(28999+offset0))
{
	vR[i] = 28999;
}
else
{
	vR[i] = 28998;
}

}
else
{
	if(input[i]==(28997+offset0))
{
	vR[i] = 28997;
}
else
{
	vR[i] = 28996;
}

}

}
else
{
	if(input[i]>(28993+offset0))
{
	if(input[i]==(28995+offset0))
{
	vR[i] = 28995;
}
else
{
	vR[i] = 28994;
}

}
else
{
	if(input[i]==(28993+offset0))
{
	vR[i] = 28993;
}
else
{
	vR[i] = 28992;
}

}

}

}

}

}

}
else
{
	if(input[i]>(28959+offset0))
{
	if(input[i]>(28975+offset0))
{
	if(input[i]>(28983+offset0))
{
	if(input[i]>(28987+offset0))
{
	if(input[i]>(28989+offset0))
{
	if(input[i]==(28991+offset0))
{
	vR[i] = 28991;
}
else
{
	vR[i] = 28990;
}

}
else
{
	if(input[i]==(28989+offset0))
{
	vR[i] = 28989;
}
else
{
	vR[i] = 28988;
}

}

}
else
{
	if(input[i]>(28985+offset0))
{
	if(input[i]==(28987+offset0))
{
	vR[i] = 28987;
}
else
{
	vR[i] = 28986;
}

}
else
{
	if(input[i]==(28985+offset0))
{
	vR[i] = 28985;
}
else
{
	vR[i] = 28984;
}

}

}

}
else
{
	if(input[i]>(28979+offset0))
{
	if(input[i]>(28981+offset0))
{
	if(input[i]==(28983+offset0))
{
	vR[i] = 28983;
}
else
{
	vR[i] = 28982;
}

}
else
{
	if(input[i]==(28981+offset0))
{
	vR[i] = 28981;
}
else
{
	vR[i] = 28980;
}

}

}
else
{
	if(input[i]>(28977+offset0))
{
	if(input[i]==(28979+offset0))
{
	vR[i] = 28979;
}
else
{
	vR[i] = 28978;
}

}
else
{
	if(input[i]==(28977+offset0))
{
	vR[i] = 28977;
}
else
{
	vR[i] = 28976;
}

}

}

}

}
else
{
	if(input[i]>(28967+offset0))
{
	if(input[i]>(28971+offset0))
{
	if(input[i]>(28973+offset0))
{
	if(input[i]==(28975+offset0))
{
	vR[i] = 28975;
}
else
{
	vR[i] = 28974;
}

}
else
{
	if(input[i]==(28973+offset0))
{
	vR[i] = 28973;
}
else
{
	vR[i] = 28972;
}

}

}
else
{
	if(input[i]>(28969+offset0))
{
	if(input[i]==(28971+offset0))
{
	vR[i] = 28971;
}
else
{
	vR[i] = 28970;
}

}
else
{
	if(input[i]==(28969+offset0))
{
	vR[i] = 28969;
}
else
{
	vR[i] = 28968;
}

}

}

}
else
{
	if(input[i]>(28963+offset0))
{
	if(input[i]>(28965+offset0))
{
	if(input[i]==(28967+offset0))
{
	vR[i] = 28967;
}
else
{
	vR[i] = 28966;
}

}
else
{
	if(input[i]==(28965+offset0))
{
	vR[i] = 28965;
}
else
{
	vR[i] = 28964;
}

}

}
else
{
	if(input[i]>(28961+offset0))
{
	if(input[i]==(28963+offset0))
{
	vR[i] = 28963;
}
else
{
	vR[i] = 28962;
}

}
else
{
	if(input[i]==(28961+offset0))
{
	vR[i] = 28961;
}
else
{
	vR[i] = 28960;
}

}

}

}

}

}
else
{
	if(input[i]>(28943+offset0))
{
	if(input[i]>(28951+offset0))
{
	if(input[i]>(28955+offset0))
{
	if(input[i]>(28957+offset0))
{
	if(input[i]==(28959+offset0))
{
	vR[i] = 28959;
}
else
{
	vR[i] = 28958;
}

}
else
{
	if(input[i]==(28957+offset0))
{
	vR[i] = 28957;
}
else
{
	vR[i] = 28956;
}

}

}
else
{
	if(input[i]>(28953+offset0))
{
	if(input[i]==(28955+offset0))
{
	vR[i] = 28955;
}
else
{
	vR[i] = 28954;
}

}
else
{
	if(input[i]==(28953+offset0))
{
	vR[i] = 28953;
}
else
{
	vR[i] = 28952;
}

}

}

}
else
{
	if(input[i]>(28947+offset0))
{
	if(input[i]>(28949+offset0))
{
	if(input[i]==(28951+offset0))
{
	vR[i] = 28951;
}
else
{
	vR[i] = 28950;
}

}
else
{
	if(input[i]==(28949+offset0))
{
	vR[i] = 28949;
}
else
{
	vR[i] = 28948;
}

}

}
else
{
	if(input[i]>(28945+offset0))
{
	if(input[i]==(28947+offset0))
{
	vR[i] = 28947;
}
else
{
	vR[i] = 28946;
}

}
else
{
	if(input[i]==(28945+offset0))
{
	vR[i] = 28945;
}
else
{
	vR[i] = 28944;
}

}

}

}

}
else
{
	if(input[i]>(28935+offset0))
{
	if(input[i]>(28939+offset0))
{
	if(input[i]>(28941+offset0))
{
	if(input[i]==(28943+offset0))
{
	vR[i] = 28943;
}
else
{
	vR[i] = 28942;
}

}
else
{
	if(input[i]==(28941+offset0))
{
	vR[i] = 28941;
}
else
{
	vR[i] = 28940;
}

}

}
else
{
	if(input[i]>(28937+offset0))
{
	if(input[i]==(28939+offset0))
{
	vR[i] = 28939;
}
else
{
	vR[i] = 28938;
}

}
else
{
	if(input[i]==(28937+offset0))
{
	vR[i] = 28937;
}
else
{
	vR[i] = 28936;
}

}

}

}
else
{
	if(input[i]>(28931+offset0))
{
	if(input[i]>(28933+offset0))
{
	if(input[i]==(28935+offset0))
{
	vR[i] = 28935;
}
else
{
	vR[i] = 28934;
}

}
else
{
	if(input[i]==(28933+offset0))
{
	vR[i] = 28933;
}
else
{
	vR[i] = 28932;
}

}

}
else
{
	if(input[i]>(28929+offset0))
{
	if(input[i]==(28931+offset0))
{
	vR[i] = 28931;
}
else
{
	vR[i] = 28930;
}

}
else
{
	if(input[i]==(28929+offset0))
{
	vR[i] = 28929;
}
else
{
	vR[i] = 28928;
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
	if(input[i]>(28799+offset0))
{
	if(input[i]>(28863+offset0))
{
	if(input[i]>(28895+offset0))
{
	if(input[i]>(28911+offset0))
{
	if(input[i]>(28919+offset0))
{
	if(input[i]>(28923+offset0))
{
	if(input[i]>(28925+offset0))
{
	if(input[i]==(28927+offset0))
{
	vR[i] = 28927;
}
else
{
	vR[i] = 28926;
}

}
else
{
	if(input[i]==(28925+offset0))
{
	vR[i] = 28925;
}
else
{
	vR[i] = 28924;
}

}

}
else
{
	if(input[i]>(28921+offset0))
{
	if(input[i]==(28923+offset0))
{
	vR[i] = 28923;
}
else
{
	vR[i] = 28922;
}

}
else
{
	if(input[i]==(28921+offset0))
{
	vR[i] = 28921;
}
else
{
	vR[i] = 28920;
}

}

}

}
else
{
	if(input[i]>(28915+offset0))
{
	if(input[i]>(28917+offset0))
{
	if(input[i]==(28919+offset0))
{
	vR[i] = 28919;
}
else
{
	vR[i] = 28918;
}

}
else
{
	if(input[i]==(28917+offset0))
{
	vR[i] = 28917;
}
else
{
	vR[i] = 28916;
}

}

}
else
{
	if(input[i]>(28913+offset0))
{
	if(input[i]==(28915+offset0))
{
	vR[i] = 28915;
}
else
{
	vR[i] = 28914;
}

}
else
{
	if(input[i]==(28913+offset0))
{
	vR[i] = 28913;
}
else
{
	vR[i] = 28912;
}

}

}

}

}
else
{
	if(input[i]>(28903+offset0))
{
	if(input[i]>(28907+offset0))
{
	if(input[i]>(28909+offset0))
{
	if(input[i]==(28911+offset0))
{
	vR[i] = 28911;
}
else
{
	vR[i] = 28910;
}

}
else
{
	if(input[i]==(28909+offset0))
{
	vR[i] = 28909;
}
else
{
	vR[i] = 28908;
}

}

}
else
{
	if(input[i]>(28905+offset0))
{
	if(input[i]==(28907+offset0))
{
	vR[i] = 28907;
}
else
{
	vR[i] = 28906;
}

}
else
{
	if(input[i]==(28905+offset0))
{
	vR[i] = 28905;
}
else
{
	vR[i] = 28904;
}

}

}

}
else
{
	if(input[i]>(28899+offset0))
{
	if(input[i]>(28901+offset0))
{
	if(input[i]==(28903+offset0))
{
	vR[i] = 28903;
}
else
{
	vR[i] = 28902;
}

}
else
{
	if(input[i]==(28901+offset0))
{
	vR[i] = 28901;
}
else
{
	vR[i] = 28900;
}

}

}
else
{
	if(input[i]>(28897+offset0))
{
	if(input[i]==(28899+offset0))
{
	vR[i] = 28899;
}
else
{
	vR[i] = 28898;
}

}
else
{
	if(input[i]==(28897+offset0))
{
	vR[i] = 28897;
}
else
{
	vR[i] = 28896;
}

}

}

}

}

}
else
{
	if(input[i]>(28879+offset0))
{
	if(input[i]>(28887+offset0))
{
	if(input[i]>(28891+offset0))
{
	if(input[i]>(28893+offset0))
{
	if(input[i]==(28895+offset0))
{
	vR[i] = 28895;
}
else
{
	vR[i] = 28894;
}

}
else
{
	if(input[i]==(28893+offset0))
{
	vR[i] = 28893;
}
else
{
	vR[i] = 28892;
}

}

}
else
{
	if(input[i]>(28889+offset0))
{
	if(input[i]==(28891+offset0))
{
	vR[i] = 28891;
}
else
{
	vR[i] = 28890;
}

}
else
{
	if(input[i]==(28889+offset0))
{
	vR[i] = 28889;
}
else
{
	vR[i] = 28888;
}

}

}

}
else
{
	if(input[i]>(28883+offset0))
{
	if(input[i]>(28885+offset0))
{
	if(input[i]==(28887+offset0))
{
	vR[i] = 28887;
}
else
{
	vR[i] = 28886;
}

}
else
{
	if(input[i]==(28885+offset0))
{
	vR[i] = 28885;
}
else
{
	vR[i] = 28884;
}

}

}
else
{
	if(input[i]>(28881+offset0))
{
	if(input[i]==(28883+offset0))
{
	vR[i] = 28883;
}
else
{
	vR[i] = 28882;
}

}
else
{
	if(input[i]==(28881+offset0))
{
	vR[i] = 28881;
}
else
{
	vR[i] = 28880;
}

}

}

}

}
else
{
	if(input[i]>(28871+offset0))
{
	if(input[i]>(28875+offset0))
{
	if(input[i]>(28877+offset0))
{
	if(input[i]==(28879+offset0))
{
	vR[i] = 28879;
}
else
{
	vR[i] = 28878;
}

}
else
{
	if(input[i]==(28877+offset0))
{
	vR[i] = 28877;
}
else
{
	vR[i] = 28876;
}

}

}
else
{
	if(input[i]>(28873+offset0))
{
	if(input[i]==(28875+offset0))
{
	vR[i] = 28875;
}
else
{
	vR[i] = 28874;
}

}
else
{
	if(input[i]==(28873+offset0))
{
	vR[i] = 28873;
}
else
{
	vR[i] = 28872;
}

}

}

}
else
{
	if(input[i]>(28867+offset0))
{
	if(input[i]>(28869+offset0))
{
	if(input[i]==(28871+offset0))
{
	vR[i] = 28871;
}
else
{
	vR[i] = 28870;
}

}
else
{
	if(input[i]==(28869+offset0))
{
	vR[i] = 28869;
}
else
{
	vR[i] = 28868;
}

}

}
else
{
	if(input[i]>(28865+offset0))
{
	if(input[i]==(28867+offset0))
{
	vR[i] = 28867;
}
else
{
	vR[i] = 28866;
}

}
else
{
	if(input[i]==(28865+offset0))
{
	vR[i] = 28865;
}
else
{
	vR[i] = 28864;
}

}

}

}

}

}

}
else
{
	if(input[i]>(28831+offset0))
{
	if(input[i]>(28847+offset0))
{
	if(input[i]>(28855+offset0))
{
	if(input[i]>(28859+offset0))
{
	if(input[i]>(28861+offset0))
{
	if(input[i]==(28863+offset0))
{
	vR[i] = 28863;
}
else
{
	vR[i] = 28862;
}

}
else
{
	if(input[i]==(28861+offset0))
{
	vR[i] = 28861;
}
else
{
	vR[i] = 28860;
}

}

}
else
{
	if(input[i]>(28857+offset0))
{
	if(input[i]==(28859+offset0))
{
	vR[i] = 28859;
}
else
{
	vR[i] = 28858;
}

}
else
{
	if(input[i]==(28857+offset0))
{
	vR[i] = 28857;
}
else
{
	vR[i] = 28856;
}

}

}

}
else
{
	if(input[i]>(28851+offset0))
{
	if(input[i]>(28853+offset0))
{
	if(input[i]==(28855+offset0))
{
	vR[i] = 28855;
}
else
{
	vR[i] = 28854;
}

}
else
{
	if(input[i]==(28853+offset0))
{
	vR[i] = 28853;
}
else
{
	vR[i] = 28852;
}

}

}
else
{
	if(input[i]>(28849+offset0))
{
	if(input[i]==(28851+offset0))
{
	vR[i] = 28851;
}
else
{
	vR[i] = 28850;
}

}
else
{
	if(input[i]==(28849+offset0))
{
	vR[i] = 28849;
}
else
{
	vR[i] = 28848;
}

}

}

}

}
else
{
	if(input[i]>(28839+offset0))
{
	if(input[i]>(28843+offset0))
{
	if(input[i]>(28845+offset0))
{
	if(input[i]==(28847+offset0))
{
	vR[i] = 28847;
}
else
{
	vR[i] = 28846;
}

}
else
{
	if(input[i]==(28845+offset0))
{
	vR[i] = 28845;
}
else
{
	vR[i] = 28844;
}

}

}
else
{
	if(input[i]>(28841+offset0))
{
	if(input[i]==(28843+offset0))
{
	vR[i] = 28843;
}
else
{
	vR[i] = 28842;
}

}
else
{
	if(input[i]==(28841+offset0))
{
	vR[i] = 28841;
}
else
{
	vR[i] = 28840;
}

}

}

}
else
{
	if(input[i]>(28835+offset0))
{
	if(input[i]>(28837+offset0))
{
	if(input[i]==(28839+offset0))
{
	vR[i] = 28839;
}
else
{
	vR[i] = 28838;
}

}
else
{
	if(input[i]==(28837+offset0))
{
	vR[i] = 28837;
}
else
{
	vR[i] = 28836;
}

}

}
else
{
	if(input[i]>(28833+offset0))
{
	if(input[i]==(28835+offset0))
{
	vR[i] = 28835;
}
else
{
	vR[i] = 28834;
}

}
else
{
	if(input[i]==(28833+offset0))
{
	vR[i] = 28833;
}
else
{
	vR[i] = 28832;
}

}

}

}

}

}
else
{
	if(input[i]>(28815+offset0))
{
	if(input[i]>(28823+offset0))
{
	if(input[i]>(28827+offset0))
{
	if(input[i]>(28829+offset0))
{
	if(input[i]==(28831+offset0))
{
	vR[i] = 28831;
}
else
{
	vR[i] = 28830;
}

}
else
{
	if(input[i]==(28829+offset0))
{
	vR[i] = 28829;
}
else
{
	vR[i] = 28828;
}

}

}
else
{
	if(input[i]>(28825+offset0))
{
	if(input[i]==(28827+offset0))
{
	vR[i] = 28827;
}
else
{
	vR[i] = 28826;
}

}
else
{
	if(input[i]==(28825+offset0))
{
	vR[i] = 28825;
}
else
{
	vR[i] = 28824;
}

}

}

}
else
{
	if(input[i]>(28819+offset0))
{
	if(input[i]>(28821+offset0))
{
	if(input[i]==(28823+offset0))
{
	vR[i] = 28823;
}
else
{
	vR[i] = 28822;
}

}
else
{
	if(input[i]==(28821+offset0))
{
	vR[i] = 28821;
}
else
{
	vR[i] = 28820;
}

}

}
else
{
	if(input[i]>(28817+offset0))
{
	if(input[i]==(28819+offset0))
{
	vR[i] = 28819;
}
else
{
	vR[i] = 28818;
}

}
else
{
	if(input[i]==(28817+offset0))
{
	vR[i] = 28817;
}
else
{
	vR[i] = 28816;
}

}

}

}

}
else
{
	if(input[i]>(28807+offset0))
{
	if(input[i]>(28811+offset0))
{
	if(input[i]>(28813+offset0))
{
	if(input[i]==(28815+offset0))
{
	vR[i] = 28815;
}
else
{
	vR[i] = 28814;
}

}
else
{
	if(input[i]==(28813+offset0))
{
	vR[i] = 28813;
}
else
{
	vR[i] = 28812;
}

}

}
else
{
	if(input[i]>(28809+offset0))
{
	if(input[i]==(28811+offset0))
{
	vR[i] = 28811;
}
else
{
	vR[i] = 28810;
}

}
else
{
	if(input[i]==(28809+offset0))
{
	vR[i] = 28809;
}
else
{
	vR[i] = 28808;
}

}

}

}
else
{
	if(input[i]>(28803+offset0))
{
	if(input[i]>(28805+offset0))
{
	if(input[i]==(28807+offset0))
{
	vR[i] = 28807;
}
else
{
	vR[i] = 28806;
}

}
else
{
	if(input[i]==(28805+offset0))
{
	vR[i] = 28805;
}
else
{
	vR[i] = 28804;
}

}

}
else
{
	if(input[i]>(28801+offset0))
{
	if(input[i]==(28803+offset0))
{
	vR[i] = 28803;
}
else
{
	vR[i] = 28802;
}

}
else
{
	if(input[i]==(28801+offset0))
{
	vR[i] = 28801;
}
else
{
	vR[i] = 28800;
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
	if(input[i]>(28735+offset0))
{
	if(input[i]>(28767+offset0))
{
	if(input[i]>(28783+offset0))
{
	if(input[i]>(28791+offset0))
{
	if(input[i]>(28795+offset0))
{
	if(input[i]>(28797+offset0))
{
	if(input[i]==(28799+offset0))
{
	vR[i] = 28799;
}
else
{
	vR[i] = 28798;
}

}
else
{
	if(input[i]==(28797+offset0))
{
	vR[i] = 28797;
}
else
{
	vR[i] = 28796;
}

}

}
else
{
	if(input[i]>(28793+offset0))
{
	if(input[i]==(28795+offset0))
{
	vR[i] = 28795;
}
else
{
	vR[i] = 28794;
}

}
else
{
	if(input[i]==(28793+offset0))
{
	vR[i] = 28793;
}
else
{
	vR[i] = 28792;
}

}

}

}
else
{
	if(input[i]>(28787+offset0))
{
	if(input[i]>(28789+offset0))
{
	if(input[i]==(28791+offset0))
{
	vR[i] = 28791;
}
else
{
	vR[i] = 28790;
}

}
else
{
	if(input[i]==(28789+offset0))
{
	vR[i] = 28789;
}
else
{
	vR[i] = 28788;
}

}

}
else
{
	if(input[i]>(28785+offset0))
{
	if(input[i]==(28787+offset0))
{
	vR[i] = 28787;
}
else
{
	vR[i] = 28786;
}

}
else
{
	if(input[i]==(28785+offset0))
{
	vR[i] = 28785;
}
else
{
	vR[i] = 28784;
}

}

}

}

}
else
{
	if(input[i]>(28775+offset0))
{
	if(input[i]>(28779+offset0))
{
	if(input[i]>(28781+offset0))
{
	if(input[i]==(28783+offset0))
{
	vR[i] = 28783;
}
else
{
	vR[i] = 28782;
}

}
else
{
	if(input[i]==(28781+offset0))
{
	vR[i] = 28781;
}
else
{
	vR[i] = 28780;
}

}

}
else
{
	if(input[i]>(28777+offset0))
{
	if(input[i]==(28779+offset0))
{
	vR[i] = 28779;
}
else
{
	vR[i] = 28778;
}

}
else
{
	if(input[i]==(28777+offset0))
{
	vR[i] = 28777;
}
else
{
	vR[i] = 28776;
}

}

}

}
else
{
	if(input[i]>(28771+offset0))
{
	if(input[i]>(28773+offset0))
{
	if(input[i]==(28775+offset0))
{
	vR[i] = 28775;
}
else
{
	vR[i] = 28774;
}

}
else
{
	if(input[i]==(28773+offset0))
{
	vR[i] = 28773;
}
else
{
	vR[i] = 28772;
}

}

}
else
{
	if(input[i]>(28769+offset0))
{
	if(input[i]==(28771+offset0))
{
	vR[i] = 28771;
}
else
{
	vR[i] = 28770;
}

}
else
{
	if(input[i]==(28769+offset0))
{
	vR[i] = 28769;
}
else
{
	vR[i] = 28768;
}

}

}

}

}

}
else
{
	if(input[i]>(28751+offset0))
{
	if(input[i]>(28759+offset0))
{
	if(input[i]>(28763+offset0))
{
	if(input[i]>(28765+offset0))
{
	if(input[i]==(28767+offset0))
{
	vR[i] = 28767;
}
else
{
	vR[i] = 28766;
}

}
else
{
	if(input[i]==(28765+offset0))
{
	vR[i] = 28765;
}
else
{
	vR[i] = 28764;
}

}

}
else
{
	if(input[i]>(28761+offset0))
{
	if(input[i]==(28763+offset0))
{
	vR[i] = 28763;
}
else
{
	vR[i] = 28762;
}

}
else
{
	if(input[i]==(28761+offset0))
{
	vR[i] = 28761;
}
else
{
	vR[i] = 28760;
}

}

}

}
else
{
	if(input[i]>(28755+offset0))
{
	if(input[i]>(28757+offset0))
{
	if(input[i]==(28759+offset0))
{
	vR[i] = 28759;
}
else
{
	vR[i] = 28758;
}

}
else
{
	if(input[i]==(28757+offset0))
{
	vR[i] = 28757;
}
else
{
	vR[i] = 28756;
}

}

}
else
{
	if(input[i]>(28753+offset0))
{
	if(input[i]==(28755+offset0))
{
	vR[i] = 28755;
}
else
{
	vR[i] = 28754;
}

}
else
{
	if(input[i]==(28753+offset0))
{
	vR[i] = 28753;
}
else
{
	vR[i] = 28752;
}

}

}

}

}
else
{
	if(input[i]>(28743+offset0))
{
	if(input[i]>(28747+offset0))
{
	if(input[i]>(28749+offset0))
{
	if(input[i]==(28751+offset0))
{
	vR[i] = 28751;
}
else
{
	vR[i] = 28750;
}

}
else
{
	if(input[i]==(28749+offset0))
{
	vR[i] = 28749;
}
else
{
	vR[i] = 28748;
}

}

}
else
{
	if(input[i]>(28745+offset0))
{
	if(input[i]==(28747+offset0))
{
	vR[i] = 28747;
}
else
{
	vR[i] = 28746;
}

}
else
{
	if(input[i]==(28745+offset0))
{
	vR[i] = 28745;
}
else
{
	vR[i] = 28744;
}

}

}

}
else
{
	if(input[i]>(28739+offset0))
{
	if(input[i]>(28741+offset0))
{
	if(input[i]==(28743+offset0))
{
	vR[i] = 28743;
}
else
{
	vR[i] = 28742;
}

}
else
{
	if(input[i]==(28741+offset0))
{
	vR[i] = 28741;
}
else
{
	vR[i] = 28740;
}

}

}
else
{
	if(input[i]>(28737+offset0))
{
	if(input[i]==(28739+offset0))
{
	vR[i] = 28739;
}
else
{
	vR[i] = 28738;
}

}
else
{
	if(input[i]==(28737+offset0))
{
	vR[i] = 28737;
}
else
{
	vR[i] = 28736;
}

}

}

}

}

}

}
else
{
	if(input[i]>(28703+offset0))
{
	if(input[i]>(28719+offset0))
{
	if(input[i]>(28727+offset0))
{
	if(input[i]>(28731+offset0))
{
	if(input[i]>(28733+offset0))
{
	if(input[i]==(28735+offset0))
{
	vR[i] = 28735;
}
else
{
	vR[i] = 28734;
}

}
else
{
	if(input[i]==(28733+offset0))
{
	vR[i] = 28733;
}
else
{
	vR[i] = 28732;
}

}

}
else
{
	if(input[i]>(28729+offset0))
{
	if(input[i]==(28731+offset0))
{
	vR[i] = 28731;
}
else
{
	vR[i] = 28730;
}

}
else
{
	if(input[i]==(28729+offset0))
{
	vR[i] = 28729;
}
else
{
	vR[i] = 28728;
}

}

}

}
else
{
	if(input[i]>(28723+offset0))
{
	if(input[i]>(28725+offset0))
{
	if(input[i]==(28727+offset0))
{
	vR[i] = 28727;
}
else
{
	vR[i] = 28726;
}

}
else
{
	if(input[i]==(28725+offset0))
{
	vR[i] = 28725;
}
else
{
	vR[i] = 28724;
}

}

}
else
{
	if(input[i]>(28721+offset0))
{
	if(input[i]==(28723+offset0))
{
	vR[i] = 28723;
}
else
{
	vR[i] = 28722;
}

}
else
{
	if(input[i]==(28721+offset0))
{
	vR[i] = 28721;
}
else
{
	vR[i] = 28720;
}

}

}

}

}
else
{
	if(input[i]>(28711+offset0))
{
	if(input[i]>(28715+offset0))
{
	if(input[i]>(28717+offset0))
{
	if(input[i]==(28719+offset0))
{
	vR[i] = 28719;
}
else
{
	vR[i] = 28718;
}

}
else
{
	if(input[i]==(28717+offset0))
{
	vR[i] = 28717;
}
else
{
	vR[i] = 28716;
}

}

}
else
{
	if(input[i]>(28713+offset0))
{
	if(input[i]==(28715+offset0))
{
	vR[i] = 28715;
}
else
{
	vR[i] = 28714;
}

}
else
{
	if(input[i]==(28713+offset0))
{
	vR[i] = 28713;
}
else
{
	vR[i] = 28712;
}

}

}

}
else
{
	if(input[i]>(28707+offset0))
{
	if(input[i]>(28709+offset0))
{
	if(input[i]==(28711+offset0))
{
	vR[i] = 28711;
}
else
{
	vR[i] = 28710;
}

}
else
{
	if(input[i]==(28709+offset0))
{
	vR[i] = 28709;
}
else
{
	vR[i] = 28708;
}

}

}
else
{
	if(input[i]>(28705+offset0))
{
	if(input[i]==(28707+offset0))
{
	vR[i] = 28707;
}
else
{
	vR[i] = 28706;
}

}
else
{
	if(input[i]==(28705+offset0))
{
	vR[i] = 28705;
}
else
{
	vR[i] = 28704;
}

}

}

}

}

}
else
{
	if(input[i]>(28687+offset0))
{
	if(input[i]>(28695+offset0))
{
	if(input[i]>(28699+offset0))
{
	if(input[i]>(28701+offset0))
{
	if(input[i]==(28703+offset0))
{
	vR[i] = 28703;
}
else
{
	vR[i] = 28702;
}

}
else
{
	if(input[i]==(28701+offset0))
{
	vR[i] = 28701;
}
else
{
	vR[i] = 28700;
}

}

}
else
{
	if(input[i]>(28697+offset0))
{
	if(input[i]==(28699+offset0))
{
	vR[i] = 28699;
}
else
{
	vR[i] = 28698;
}

}
else
{
	if(input[i]==(28697+offset0))
{
	vR[i] = 28697;
}
else
{
	vR[i] = 28696;
}

}

}

}
else
{
	if(input[i]>(28691+offset0))
{
	if(input[i]>(28693+offset0))
{
	if(input[i]==(28695+offset0))
{
	vR[i] = 28695;
}
else
{
	vR[i] = 28694;
}

}
else
{
	if(input[i]==(28693+offset0))
{
	vR[i] = 28693;
}
else
{
	vR[i] = 28692;
}

}

}
else
{
	if(input[i]>(28689+offset0))
{
	if(input[i]==(28691+offset0))
{
	vR[i] = 28691;
}
else
{
	vR[i] = 28690;
}

}
else
{
	if(input[i]==(28689+offset0))
{
	vR[i] = 28689;
}
else
{
	vR[i] = 28688;
}

}

}

}

}
else
{
	if(input[i]>(28679+offset0))
{
	if(input[i]>(28683+offset0))
{
	if(input[i]>(28685+offset0))
{
	if(input[i]==(28687+offset0))
{
	vR[i] = 28687;
}
else
{
	vR[i] = 28686;
}

}
else
{
	if(input[i]==(28685+offset0))
{
	vR[i] = 28685;
}
else
{
	vR[i] = 28684;
}

}

}
else
{
	if(input[i]>(28681+offset0))
{
	if(input[i]==(28683+offset0))
{
	vR[i] = 28683;
}
else
{
	vR[i] = 28682;
}

}
else
{
	if(input[i]==(28681+offset0))
{
	vR[i] = 28681;
}
else
{
	vR[i] = 28680;
}

}

}

}
else
{
	if(input[i]>(28675+offset0))
{
	if(input[i]>(28677+offset0))
{
	if(input[i]==(28679+offset0))
{
	vR[i] = 28679;
}
else
{
	vR[i] = 28678;
}

}
else
{
	if(input[i]==(28677+offset0))
{
	vR[i] = 28677;
}
else
{
	vR[i] = 28676;
}

}

}
else
{
	if(input[i]>(28673+offset0))
{
	if(input[i]==(28675+offset0))
{
	vR[i] = 28675;
}
else
{
	vR[i] = 28674;
}

}
else
{
	if(input[i]==(28673+offset0))
{
	vR[i] = 28673;
}
else
{
	vR[i] = 28672;
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
	if(input[i]>(26623+offset0))
{
	if(input[i]>(27647+offset0))
{
	if(input[i]>(28159+offset0))
{
	if(input[i]>(28415+offset0))
{
	if(input[i]>(28543+offset0))
{
	if(input[i]>(28607+offset0))
{
	if(input[i]>(28639+offset0))
{
	if(input[i]>(28655+offset0))
{
	if(input[i]>(28663+offset0))
{
	if(input[i]>(28667+offset0))
{
	if(input[i]>(28669+offset0))
{
	if(input[i]==(28671+offset0))
{
	vR[i] = 28671;
}
else
{
	vR[i] = 28670;
}

}
else
{
	if(input[i]==(28669+offset0))
{
	vR[i] = 28669;
}
else
{
	vR[i] = 28668;
}

}

}
else
{
	if(input[i]>(28665+offset0))
{
	if(input[i]==(28667+offset0))
{
	vR[i] = 28667;
}
else
{
	vR[i] = 28666;
}

}
else
{
	if(input[i]==(28665+offset0))
{
	vR[i] = 28665;
}
else
{
	vR[i] = 28664;
}

}

}

}
else
{
	if(input[i]>(28659+offset0))
{
	if(input[i]>(28661+offset0))
{
	if(input[i]==(28663+offset0))
{
	vR[i] = 28663;
}
else
{
	vR[i] = 28662;
}

}
else
{
	if(input[i]==(28661+offset0))
{
	vR[i] = 28661;
}
else
{
	vR[i] = 28660;
}

}

}
else
{
	if(input[i]>(28657+offset0))
{
	if(input[i]==(28659+offset0))
{
	vR[i] = 28659;
}
else
{
	vR[i] = 28658;
}

}
else
{
	if(input[i]==(28657+offset0))
{
	vR[i] = 28657;
}
else
{
	vR[i] = 28656;
}

}

}

}

}
else
{
	if(input[i]>(28647+offset0))
{
	if(input[i]>(28651+offset0))
{
	if(input[i]>(28653+offset0))
{
	if(input[i]==(28655+offset0))
{
	vR[i] = 28655;
}
else
{
	vR[i] = 28654;
}

}
else
{
	if(input[i]==(28653+offset0))
{
	vR[i] = 28653;
}
else
{
	vR[i] = 28652;
}

}

}
else
{
	if(input[i]>(28649+offset0))
{
	if(input[i]==(28651+offset0))
{
	vR[i] = 28651;
}
else
{
	vR[i] = 28650;
}

}
else
{
	if(input[i]==(28649+offset0))
{
	vR[i] = 28649;
}
else
{
	vR[i] = 28648;
}

}

}

}
else
{
	if(input[i]>(28643+offset0))
{
	if(input[i]>(28645+offset0))
{
	if(input[i]==(28647+offset0))
{
	vR[i] = 28647;
}
else
{
	vR[i] = 28646;
}

}
else
{
	if(input[i]==(28645+offset0))
{
	vR[i] = 28645;
}
else
{
	vR[i] = 28644;
}

}

}
else
{
	if(input[i]>(28641+offset0))
{
	if(input[i]==(28643+offset0))
{
	vR[i] = 28643;
}
else
{
	vR[i] = 28642;
}

}
else
{
	if(input[i]==(28641+offset0))
{
	vR[i] = 28641;
}
else
{
	vR[i] = 28640;
}

}

}

}

}

}
else
{
	if(input[i]>(28623+offset0))
{
	if(input[i]>(28631+offset0))
{
	if(input[i]>(28635+offset0))
{
	if(input[i]>(28637+offset0))
{
	if(input[i]==(28639+offset0))
{
	vR[i] = 28639;
}
else
{
	vR[i] = 28638;
}

}
else
{
	if(input[i]==(28637+offset0))
{
	vR[i] = 28637;
}
else
{
	vR[i] = 28636;
}

}

}
else
{
	if(input[i]>(28633+offset0))
{
	if(input[i]==(28635+offset0))
{
	vR[i] = 28635;
}
else
{
	vR[i] = 28634;
}

}
else
{
	if(input[i]==(28633+offset0))
{
	vR[i] = 28633;
}
else
{
	vR[i] = 28632;
}

}

}

}
else
{
	if(input[i]>(28627+offset0))
{
	if(input[i]>(28629+offset0))
{
	if(input[i]==(28631+offset0))
{
	vR[i] = 28631;
}
else
{
	vR[i] = 28630;
}

}
else
{
	if(input[i]==(28629+offset0))
{
	vR[i] = 28629;
}
else
{
	vR[i] = 28628;
}

}

}
else
{
	if(input[i]>(28625+offset0))
{
	if(input[i]==(28627+offset0))
{
	vR[i] = 28627;
}
else
{
	vR[i] = 28626;
}

}
else
{
	if(input[i]==(28625+offset0))
{
	vR[i] = 28625;
}
else
{
	vR[i] = 28624;
}

}

}

}

}
else
{
	if(input[i]>(28615+offset0))
{
	if(input[i]>(28619+offset0))
{
	if(input[i]>(28621+offset0))
{
	if(input[i]==(28623+offset0))
{
	vR[i] = 28623;
}
else
{
	vR[i] = 28622;
}

}
else
{
	if(input[i]==(28621+offset0))
{
	vR[i] = 28621;
}
else
{
	vR[i] = 28620;
}

}

}
else
{
	if(input[i]>(28617+offset0))
{
	if(input[i]==(28619+offset0))
{
	vR[i] = 28619;
}
else
{
	vR[i] = 28618;
}

}
else
{
	if(input[i]==(28617+offset0))
{
	vR[i] = 28617;
}
else
{
	vR[i] = 28616;
}

}

}

}
else
{
	if(input[i]>(28611+offset0))
{
	if(input[i]>(28613+offset0))
{
	if(input[i]==(28615+offset0))
{
	vR[i] = 28615;
}
else
{
	vR[i] = 28614;
}

}
else
{
	if(input[i]==(28613+offset0))
{
	vR[i] = 28613;
}
else
{
	vR[i] = 28612;
}

}

}
else
{
	if(input[i]>(28609+offset0))
{
	if(input[i]==(28611+offset0))
{
	vR[i] = 28611;
}
else
{
	vR[i] = 28610;
}

}
else
{
	if(input[i]==(28609+offset0))
{
	vR[i] = 28609;
}
else
{
	vR[i] = 28608;
}

}

}

}

}

}

}
else
{
	if(input[i]>(28575+offset0))
{
	if(input[i]>(28591+offset0))
{
	if(input[i]>(28599+offset0))
{
	if(input[i]>(28603+offset0))
{
	if(input[i]>(28605+offset0))
{
	if(input[i]==(28607+offset0))
{
	vR[i] = 28607;
}
else
{
	vR[i] = 28606;
}

}
else
{
	if(input[i]==(28605+offset0))
{
	vR[i] = 28605;
}
else
{
	vR[i] = 28604;
}

}

}
else
{
	if(input[i]>(28601+offset0))
{
	if(input[i]==(28603+offset0))
{
	vR[i] = 28603;
}
else
{
	vR[i] = 28602;
}

}
else
{
	if(input[i]==(28601+offset0))
{
	vR[i] = 28601;
}
else
{
	vR[i] = 28600;
}

}

}

}
else
{
	if(input[i]>(28595+offset0))
{
	if(input[i]>(28597+offset0))
{
	if(input[i]==(28599+offset0))
{
	vR[i] = 28599;
}
else
{
	vR[i] = 28598;
}

}
else
{
	if(input[i]==(28597+offset0))
{
	vR[i] = 28597;
}
else
{
	vR[i] = 28596;
}

}

}
else
{
	if(input[i]>(28593+offset0))
{
	if(input[i]==(28595+offset0))
{
	vR[i] = 28595;
}
else
{
	vR[i] = 28594;
}

}
else
{
	if(input[i]==(28593+offset0))
{
	vR[i] = 28593;
}
else
{
	vR[i] = 28592;
}

}

}

}

}
else
{
	if(input[i]>(28583+offset0))
{
	if(input[i]>(28587+offset0))
{
	if(input[i]>(28589+offset0))
{
	if(input[i]==(28591+offset0))
{
	vR[i] = 28591;
}
else
{
	vR[i] = 28590;
}

}
else
{
	if(input[i]==(28589+offset0))
{
	vR[i] = 28589;
}
else
{
	vR[i] = 28588;
}

}

}
else
{
	if(input[i]>(28585+offset0))
{
	if(input[i]==(28587+offset0))
{
	vR[i] = 28587;
}
else
{
	vR[i] = 28586;
}

}
else
{
	if(input[i]==(28585+offset0))
{
	vR[i] = 28585;
}
else
{
	vR[i] = 28584;
}

}

}

}
else
{
	if(input[i]>(28579+offset0))
{
	if(input[i]>(28581+offset0))
{
	if(input[i]==(28583+offset0))
{
	vR[i] = 28583;
}
else
{
	vR[i] = 28582;
}

}
else
{
	if(input[i]==(28581+offset0))
{
	vR[i] = 28581;
}
else
{
	vR[i] = 28580;
}

}

}
else
{
	if(input[i]>(28577+offset0))
{
	if(input[i]==(28579+offset0))
{
	vR[i] = 28579;
}
else
{
	vR[i] = 28578;
}

}
else
{
	if(input[i]==(28577+offset0))
{
	vR[i] = 28577;
}
else
{
	vR[i] = 28576;
}

}

}

}

}

}
else
{
	if(input[i]>(28559+offset0))
{
	if(input[i]>(28567+offset0))
{
	if(input[i]>(28571+offset0))
{
	if(input[i]>(28573+offset0))
{
	if(input[i]==(28575+offset0))
{
	vR[i] = 28575;
}
else
{
	vR[i] = 28574;
}

}
else
{
	if(input[i]==(28573+offset0))
{
	vR[i] = 28573;
}
else
{
	vR[i] = 28572;
}

}

}
else
{
	if(input[i]>(28569+offset0))
{
	if(input[i]==(28571+offset0))
{
	vR[i] = 28571;
}
else
{
	vR[i] = 28570;
}

}
else
{
	if(input[i]==(28569+offset0))
{
	vR[i] = 28569;
}
else
{
	vR[i] = 28568;
}

}

}

}
else
{
	if(input[i]>(28563+offset0))
{
	if(input[i]>(28565+offset0))
{
	if(input[i]==(28567+offset0))
{
	vR[i] = 28567;
}
else
{
	vR[i] = 28566;
}

}
else
{
	if(input[i]==(28565+offset0))
{
	vR[i] = 28565;
}
else
{
	vR[i] = 28564;
}

}

}
else
{
	if(input[i]>(28561+offset0))
{
	if(input[i]==(28563+offset0))
{
	vR[i] = 28563;
}
else
{
	vR[i] = 28562;
}

}
else
{
	if(input[i]==(28561+offset0))
{
	vR[i] = 28561;
}
else
{
	vR[i] = 28560;
}

}

}

}

}
else
{
	if(input[i]>(28551+offset0))
{
	if(input[i]>(28555+offset0))
{
	if(input[i]>(28557+offset0))
{
	if(input[i]==(28559+offset0))
{
	vR[i] = 28559;
}
else
{
	vR[i] = 28558;
}

}
else
{
	if(input[i]==(28557+offset0))
{
	vR[i] = 28557;
}
else
{
	vR[i] = 28556;
}

}

}
else
{
	if(input[i]>(28553+offset0))
{
	if(input[i]==(28555+offset0))
{
	vR[i] = 28555;
}
else
{
	vR[i] = 28554;
}

}
else
{
	if(input[i]==(28553+offset0))
{
	vR[i] = 28553;
}
else
{
	vR[i] = 28552;
}

}

}

}
else
{
	if(input[i]>(28547+offset0))
{
	if(input[i]>(28549+offset0))
{
	if(input[i]==(28551+offset0))
{
	vR[i] = 28551;
}
else
{
	vR[i] = 28550;
}

}
else
{
	if(input[i]==(28549+offset0))
{
	vR[i] = 28549;
}
else
{
	vR[i] = 28548;
}

}

}
else
{
	if(input[i]>(28545+offset0))
{
	if(input[i]==(28547+offset0))
{
	vR[i] = 28547;
}
else
{
	vR[i] = 28546;
}

}
else
{
	if(input[i]==(28545+offset0))
{
	vR[i] = 28545;
}
else
{
	vR[i] = 28544;
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
	if(input[i]>(28479+offset0))
{
	if(input[i]>(28511+offset0))
{
	if(input[i]>(28527+offset0))
{
	if(input[i]>(28535+offset0))
{
	if(input[i]>(28539+offset0))
{
	if(input[i]>(28541+offset0))
{
	if(input[i]==(28543+offset0))
{
	vR[i] = 28543;
}
else
{
	vR[i] = 28542;
}

}
else
{
	if(input[i]==(28541+offset0))
{
	vR[i] = 28541;
}
else
{
	vR[i] = 28540;
}

}

}
else
{
	if(input[i]>(28537+offset0))
{
	if(input[i]==(28539+offset0))
{
	vR[i] = 28539;
}
else
{
	vR[i] = 28538;
}

}
else
{
	if(input[i]==(28537+offset0))
{
	vR[i] = 28537;
}
else
{
	vR[i] = 28536;
}

}

}

}
else
{
	if(input[i]>(28531+offset0))
{
	if(input[i]>(28533+offset0))
{
	if(input[i]==(28535+offset0))
{
	vR[i] = 28535;
}
else
{
	vR[i] = 28534;
}

}
else
{
	if(input[i]==(28533+offset0))
{
	vR[i] = 28533;
}
else
{
	vR[i] = 28532;
}

}

}
else
{
	if(input[i]>(28529+offset0))
{
	if(input[i]==(28531+offset0))
{
	vR[i] = 28531;
}
else
{
	vR[i] = 28530;
}

}
else
{
	if(input[i]==(28529+offset0))
{
	vR[i] = 28529;
}
else
{
	vR[i] = 28528;
}

}

}

}

}
else
{
	if(input[i]>(28519+offset0))
{
	if(input[i]>(28523+offset0))
{
	if(input[i]>(28525+offset0))
{
	if(input[i]==(28527+offset0))
{
	vR[i] = 28527;
}
else
{
	vR[i] = 28526;
}

}
else
{
	if(input[i]==(28525+offset0))
{
	vR[i] = 28525;
}
else
{
	vR[i] = 28524;
}

}

}
else
{
	if(input[i]>(28521+offset0))
{
	if(input[i]==(28523+offset0))
{
	vR[i] = 28523;
}
else
{
	vR[i] = 28522;
}

}
else
{
	if(input[i]==(28521+offset0))
{
	vR[i] = 28521;
}
else
{
	vR[i] = 28520;
}

}

}

}
else
{
	if(input[i]>(28515+offset0))
{
	if(input[i]>(28517+offset0))
{
	if(input[i]==(28519+offset0))
{
	vR[i] = 28519;
}
else
{
	vR[i] = 28518;
}

}
else
{
	if(input[i]==(28517+offset0))
{
	vR[i] = 28517;
}
else
{
	vR[i] = 28516;
}

}

}
else
{
	if(input[i]>(28513+offset0))
{
	if(input[i]==(28515+offset0))
{
	vR[i] = 28515;
}
else
{
	vR[i] = 28514;
}

}
else
{
	if(input[i]==(28513+offset0))
{
	vR[i] = 28513;
}
else
{
	vR[i] = 28512;
}

}

}

}

}

}
else
{
	if(input[i]>(28495+offset0))
{
	if(input[i]>(28503+offset0))
{
	if(input[i]>(28507+offset0))
{
	if(input[i]>(28509+offset0))
{
	if(input[i]==(28511+offset0))
{
	vR[i] = 28511;
}
else
{
	vR[i] = 28510;
}

}
else
{
	if(input[i]==(28509+offset0))
{
	vR[i] = 28509;
}
else
{
	vR[i] = 28508;
}

}

}
else
{
	if(input[i]>(28505+offset0))
{
	if(input[i]==(28507+offset0))
{
	vR[i] = 28507;
}
else
{
	vR[i] = 28506;
}

}
else
{
	if(input[i]==(28505+offset0))
{
	vR[i] = 28505;
}
else
{
	vR[i] = 28504;
}

}

}

}
else
{
	if(input[i]>(28499+offset0))
{
	if(input[i]>(28501+offset0))
{
	if(input[i]==(28503+offset0))
{
	vR[i] = 28503;
}
else
{
	vR[i] = 28502;
}

}
else
{
	if(input[i]==(28501+offset0))
{
	vR[i] = 28501;
}
else
{
	vR[i] = 28500;
}

}

}
else
{
	if(input[i]>(28497+offset0))
{
	if(input[i]==(28499+offset0))
{
	vR[i] = 28499;
}
else
{
	vR[i] = 28498;
}

}
else
{
	if(input[i]==(28497+offset0))
{
	vR[i] = 28497;
}
else
{
	vR[i] = 28496;
}

}

}

}

}
else
{
	if(input[i]>(28487+offset0))
{
	if(input[i]>(28491+offset0))
{
	if(input[i]>(28493+offset0))
{
	if(input[i]==(28495+offset0))
{
	vR[i] = 28495;
}
else
{
	vR[i] = 28494;
}

}
else
{
	if(input[i]==(28493+offset0))
{
	vR[i] = 28493;
}
else
{
	vR[i] = 28492;
}

}

}
else
{
	if(input[i]>(28489+offset0))
{
	if(input[i]==(28491+offset0))
{
	vR[i] = 28491;
}
else
{
	vR[i] = 28490;
}

}
else
{
	if(input[i]==(28489+offset0))
{
	vR[i] = 28489;
}
else
{
	vR[i] = 28488;
}

}

}

}
else
{
	if(input[i]>(28483+offset0))
{
	if(input[i]>(28485+offset0))
{
	if(input[i]==(28487+offset0))
{
	vR[i] = 28487;
}
else
{
	vR[i] = 28486;
}

}
else
{
	if(input[i]==(28485+offset0))
{
	vR[i] = 28485;
}
else
{
	vR[i] = 28484;
}

}

}
else
{
	if(input[i]>(28481+offset0))
{
	if(input[i]==(28483+offset0))
{
	vR[i] = 28483;
}
else
{
	vR[i] = 28482;
}

}
else
{
	if(input[i]==(28481+offset0))
{
	vR[i] = 28481;
}
else
{
	vR[i] = 28480;
}

}

}

}

}

}

}
else
{
	if(input[i]>(28447+offset0))
{
	if(input[i]>(28463+offset0))
{
	if(input[i]>(28471+offset0))
{
	if(input[i]>(28475+offset0))
{
	if(input[i]>(28477+offset0))
{
	if(input[i]==(28479+offset0))
{
	vR[i] = 28479;
}
else
{
	vR[i] = 28478;
}

}
else
{
	if(input[i]==(28477+offset0))
{
	vR[i] = 28477;
}
else
{
	vR[i] = 28476;
}

}

}
else
{
	if(input[i]>(28473+offset0))
{
	if(input[i]==(28475+offset0))
{
	vR[i] = 28475;
}
else
{
	vR[i] = 28474;
}

}
else
{
	if(input[i]==(28473+offset0))
{
	vR[i] = 28473;
}
else
{
	vR[i] = 28472;
}

}

}

}
else
{
	if(input[i]>(28467+offset0))
{
	if(input[i]>(28469+offset0))
{
	if(input[i]==(28471+offset0))
{
	vR[i] = 28471;
}
else
{
	vR[i] = 28470;
}

}
else
{
	if(input[i]==(28469+offset0))
{
	vR[i] = 28469;
}
else
{
	vR[i] = 28468;
}

}

}
else
{
	if(input[i]>(28465+offset0))
{
	if(input[i]==(28467+offset0))
{
	vR[i] = 28467;
}
else
{
	vR[i] = 28466;
}

}
else
{
	if(input[i]==(28465+offset0))
{
	vR[i] = 28465;
}
else
{
	vR[i] = 28464;
}

}

}

}

}
else
{
	if(input[i]>(28455+offset0))
{
	if(input[i]>(28459+offset0))
{
	if(input[i]>(28461+offset0))
{
	if(input[i]==(28463+offset0))
{
	vR[i] = 28463;
}
else
{
	vR[i] = 28462;
}

}
else
{
	if(input[i]==(28461+offset0))
{
	vR[i] = 28461;
}
else
{
	vR[i] = 28460;
}

}

}
else
{
	if(input[i]>(28457+offset0))
{
	if(input[i]==(28459+offset0))
{
	vR[i] = 28459;
}
else
{
	vR[i] = 28458;
}

}
else
{
	if(input[i]==(28457+offset0))
{
	vR[i] = 28457;
}
else
{
	vR[i] = 28456;
}

}

}

}
else
{
	if(input[i]>(28451+offset0))
{
	if(input[i]>(28453+offset0))
{
	if(input[i]==(28455+offset0))
{
	vR[i] = 28455;
}
else
{
	vR[i] = 28454;
}

}
else
{
	if(input[i]==(28453+offset0))
{
	vR[i] = 28453;
}
else
{
	vR[i] = 28452;
}

}

}
else
{
	if(input[i]>(28449+offset0))
{
	if(input[i]==(28451+offset0))
{
	vR[i] = 28451;
}
else
{
	vR[i] = 28450;
}

}
else
{
	if(input[i]==(28449+offset0))
{
	vR[i] = 28449;
}
else
{
	vR[i] = 28448;
}

}

}

}

}

}
else
{
	if(input[i]>(28431+offset0))
{
	if(input[i]>(28439+offset0))
{
	if(input[i]>(28443+offset0))
{
	if(input[i]>(28445+offset0))
{
	if(input[i]==(28447+offset0))
{
	vR[i] = 28447;
}
else
{
	vR[i] = 28446;
}

}
else
{
	if(input[i]==(28445+offset0))
{
	vR[i] = 28445;
}
else
{
	vR[i] = 28444;
}

}

}
else
{
	if(input[i]>(28441+offset0))
{
	if(input[i]==(28443+offset0))
{
	vR[i] = 28443;
}
else
{
	vR[i] = 28442;
}

}
else
{
	if(input[i]==(28441+offset0))
{
	vR[i] = 28441;
}
else
{
	vR[i] = 28440;
}

}

}

}
else
{
	if(input[i]>(28435+offset0))
{
	if(input[i]>(28437+offset0))
{
	if(input[i]==(28439+offset0))
{
	vR[i] = 28439;
}
else
{
	vR[i] = 28438;
}

}
else
{
	if(input[i]==(28437+offset0))
{
	vR[i] = 28437;
}
else
{
	vR[i] = 28436;
}

}

}
else
{
	if(input[i]>(28433+offset0))
{
	if(input[i]==(28435+offset0))
{
	vR[i] = 28435;
}
else
{
	vR[i] = 28434;
}

}
else
{
	if(input[i]==(28433+offset0))
{
	vR[i] = 28433;
}
else
{
	vR[i] = 28432;
}

}

}

}

}
else
{
	if(input[i]>(28423+offset0))
{
	if(input[i]>(28427+offset0))
{
	if(input[i]>(28429+offset0))
{
	if(input[i]==(28431+offset0))
{
	vR[i] = 28431;
}
else
{
	vR[i] = 28430;
}

}
else
{
	if(input[i]==(28429+offset0))
{
	vR[i] = 28429;
}
else
{
	vR[i] = 28428;
}

}

}
else
{
	if(input[i]>(28425+offset0))
{
	if(input[i]==(28427+offset0))
{
	vR[i] = 28427;
}
else
{
	vR[i] = 28426;
}

}
else
{
	if(input[i]==(28425+offset0))
{
	vR[i] = 28425;
}
else
{
	vR[i] = 28424;
}

}

}

}
else
{
	if(input[i]>(28419+offset0))
{
	if(input[i]>(28421+offset0))
{
	if(input[i]==(28423+offset0))
{
	vR[i] = 28423;
}
else
{
	vR[i] = 28422;
}

}
else
{
	if(input[i]==(28421+offset0))
{
	vR[i] = 28421;
}
else
{
	vR[i] = 28420;
}

}

}
else
{
	if(input[i]>(28417+offset0))
{
	if(input[i]==(28419+offset0))
{
	vR[i] = 28419;
}
else
{
	vR[i] = 28418;
}

}
else
{
	if(input[i]==(28417+offset0))
{
	vR[i] = 28417;
}
else
{
	vR[i] = 28416;
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
	if(input[i]>(28287+offset0))
{
	if(input[i]>(28351+offset0))
{
	if(input[i]>(28383+offset0))
{
	if(input[i]>(28399+offset0))
{
	if(input[i]>(28407+offset0))
{
	if(input[i]>(28411+offset0))
{
	if(input[i]>(28413+offset0))
{
	if(input[i]==(28415+offset0))
{
	vR[i] = 28415;
}
else
{
	vR[i] = 28414;
}

}
else
{
	if(input[i]==(28413+offset0))
{
	vR[i] = 28413;
}
else
{
	vR[i] = 28412;
}

}

}
else
{
	if(input[i]>(28409+offset0))
{
	if(input[i]==(28411+offset0))
{
	vR[i] = 28411;
}
else
{
	vR[i] = 28410;
}

}
else
{
	if(input[i]==(28409+offset0))
{
	vR[i] = 28409;
}
else
{
	vR[i] = 28408;
}

}

}

}
else
{
	if(input[i]>(28403+offset0))
{
	if(input[i]>(28405+offset0))
{
	if(input[i]==(28407+offset0))
{
	vR[i] = 28407;
}
else
{
	vR[i] = 28406;
}

}
else
{
	if(input[i]==(28405+offset0))
{
	vR[i] = 28405;
}
else
{
	vR[i] = 28404;
}

}

}
else
{
	if(input[i]>(28401+offset0))
{
	if(input[i]==(28403+offset0))
{
	vR[i] = 28403;
}
else
{
	vR[i] = 28402;
}

}
else
{
	if(input[i]==(28401+offset0))
{
	vR[i] = 28401;
}
else
{
	vR[i] = 28400;
}

}

}

}

}
else
{
	if(input[i]>(28391+offset0))
{
	if(input[i]>(28395+offset0))
{
	if(input[i]>(28397+offset0))
{
	if(input[i]==(28399+offset0))
{
	vR[i] = 28399;
}
else
{
	vR[i] = 28398;
}

}
else
{
	if(input[i]==(28397+offset0))
{
	vR[i] = 28397;
}
else
{
	vR[i] = 28396;
}

}

}
else
{
	if(input[i]>(28393+offset0))
{
	if(input[i]==(28395+offset0))
{
	vR[i] = 28395;
}
else
{
	vR[i] = 28394;
}

}
else
{
	if(input[i]==(28393+offset0))
{
	vR[i] = 28393;
}
else
{
	vR[i] = 28392;
}

}

}

}
else
{
	if(input[i]>(28387+offset0))
{
	if(input[i]>(28389+offset0))
{
	if(input[i]==(28391+offset0))
{
	vR[i] = 28391;
}
else
{
	vR[i] = 28390;
}

}
else
{
	if(input[i]==(28389+offset0))
{
	vR[i] = 28389;
}
else
{
	vR[i] = 28388;
}

}

}
else
{
	if(input[i]>(28385+offset0))
{
	if(input[i]==(28387+offset0))
{
	vR[i] = 28387;
}
else
{
	vR[i] = 28386;
}

}
else
{
	if(input[i]==(28385+offset0))
{
	vR[i] = 28385;
}
else
{
	vR[i] = 28384;
}

}

}

}

}

}
else
{
	if(input[i]>(28367+offset0))
{
	if(input[i]>(28375+offset0))
{
	if(input[i]>(28379+offset0))
{
	if(input[i]>(28381+offset0))
{
	if(input[i]==(28383+offset0))
{
	vR[i] = 28383;
}
else
{
	vR[i] = 28382;
}

}
else
{
	if(input[i]==(28381+offset0))
{
	vR[i] = 28381;
}
else
{
	vR[i] = 28380;
}

}

}
else
{
	if(input[i]>(28377+offset0))
{
	if(input[i]==(28379+offset0))
{
	vR[i] = 28379;
}
else
{
	vR[i] = 28378;
}

}
else
{
	if(input[i]==(28377+offset0))
{
	vR[i] = 28377;
}
else
{
	vR[i] = 28376;
}

}

}

}
else
{
	if(input[i]>(28371+offset0))
{
	if(input[i]>(28373+offset0))
{
	if(input[i]==(28375+offset0))
{
	vR[i] = 28375;
}
else
{
	vR[i] = 28374;
}

}
else
{
	if(input[i]==(28373+offset0))
{
	vR[i] = 28373;
}
else
{
	vR[i] = 28372;
}

}

}
else
{
	if(input[i]>(28369+offset0))
{
	if(input[i]==(28371+offset0))
{
	vR[i] = 28371;
}
else
{
	vR[i] = 28370;
}

}
else
{
	if(input[i]==(28369+offset0))
{
	vR[i] = 28369;
}
else
{
	vR[i] = 28368;
}

}

}

}

}
else
{
	if(input[i]>(28359+offset0))
{
	if(input[i]>(28363+offset0))
{
	if(input[i]>(28365+offset0))
{
	if(input[i]==(28367+offset0))
{
	vR[i] = 28367;
}
else
{
	vR[i] = 28366;
}

}
else
{
	if(input[i]==(28365+offset0))
{
	vR[i] = 28365;
}
else
{
	vR[i] = 28364;
}

}

}
else
{
	if(input[i]>(28361+offset0))
{
	if(input[i]==(28363+offset0))
{
	vR[i] = 28363;
}
else
{
	vR[i] = 28362;
}

}
else
{
	if(input[i]==(28361+offset0))
{
	vR[i] = 28361;
}
else
{
	vR[i] = 28360;
}

}

}

}
else
{
	if(input[i]>(28355+offset0))
{
	if(input[i]>(28357+offset0))
{
	if(input[i]==(28359+offset0))
{
	vR[i] = 28359;
}
else
{
	vR[i] = 28358;
}

}
else
{
	if(input[i]==(28357+offset0))
{
	vR[i] = 28357;
}
else
{
	vR[i] = 28356;
}

}

}
else
{
	if(input[i]>(28353+offset0))
{
	if(input[i]==(28355+offset0))
{
	vR[i] = 28355;
}
else
{
	vR[i] = 28354;
}

}
else
{
	if(input[i]==(28353+offset0))
{
	vR[i] = 28353;
}
else
{
	vR[i] = 28352;
}

}

}

}

}

}

}
else
{
	if(input[i]>(28319+offset0))
{
	if(input[i]>(28335+offset0))
{
	if(input[i]>(28343+offset0))
{
	if(input[i]>(28347+offset0))
{
	if(input[i]>(28349+offset0))
{
	if(input[i]==(28351+offset0))
{
	vR[i] = 28351;
}
else
{
	vR[i] = 28350;
}

}
else
{
	if(input[i]==(28349+offset0))
{
	vR[i] = 28349;
}
else
{
	vR[i] = 28348;
}

}

}
else
{
	if(input[i]>(28345+offset0))
{
	if(input[i]==(28347+offset0))
{
	vR[i] = 28347;
}
else
{
	vR[i] = 28346;
}

}
else
{
	if(input[i]==(28345+offset0))
{
	vR[i] = 28345;
}
else
{
	vR[i] = 28344;
}

}

}

}
else
{
	if(input[i]>(28339+offset0))
{
	if(input[i]>(28341+offset0))
{
	if(input[i]==(28343+offset0))
{
	vR[i] = 28343;
}
else
{
	vR[i] = 28342;
}

}
else
{
	if(input[i]==(28341+offset0))
{
	vR[i] = 28341;
}
else
{
	vR[i] = 28340;
}

}

}
else
{
	if(input[i]>(28337+offset0))
{
	if(input[i]==(28339+offset0))
{
	vR[i] = 28339;
}
else
{
	vR[i] = 28338;
}

}
else
{
	if(input[i]==(28337+offset0))
{
	vR[i] = 28337;
}
else
{
	vR[i] = 28336;
}

}

}

}

}
else
{
	if(input[i]>(28327+offset0))
{
	if(input[i]>(28331+offset0))
{
	if(input[i]>(28333+offset0))
{
	if(input[i]==(28335+offset0))
{
	vR[i] = 28335;
}
else
{
	vR[i] = 28334;
}

}
else
{
	if(input[i]==(28333+offset0))
{
	vR[i] = 28333;
}
else
{
	vR[i] = 28332;
}

}

}
else
{
	if(input[i]>(28329+offset0))
{
	if(input[i]==(28331+offset0))
{
	vR[i] = 28331;
}
else
{
	vR[i] = 28330;
}

}
else
{
	if(input[i]==(28329+offset0))
{
	vR[i] = 28329;
}
else
{
	vR[i] = 28328;
}

}

}

}
else
{
	if(input[i]>(28323+offset0))
{
	if(input[i]>(28325+offset0))
{
	if(input[i]==(28327+offset0))
{
	vR[i] = 28327;
}
else
{
	vR[i] = 28326;
}

}
else
{
	if(input[i]==(28325+offset0))
{
	vR[i] = 28325;
}
else
{
	vR[i] = 28324;
}

}

}
else
{
	if(input[i]>(28321+offset0))
{
	if(input[i]==(28323+offset0))
{
	vR[i] = 28323;
}
else
{
	vR[i] = 28322;
}

}
else
{
	if(input[i]==(28321+offset0))
{
	vR[i] = 28321;
}
else
{
	vR[i] = 28320;
}

}

}

}

}

}
else
{
	if(input[i]>(28303+offset0))
{
	if(input[i]>(28311+offset0))
{
	if(input[i]>(28315+offset0))
{
	if(input[i]>(28317+offset0))
{
	if(input[i]==(28319+offset0))
{
	vR[i] = 28319;
}
else
{
	vR[i] = 28318;
}

}
else
{
	if(input[i]==(28317+offset0))
{
	vR[i] = 28317;
}
else
{
	vR[i] = 28316;
}

}

}
else
{
	if(input[i]>(28313+offset0))
{
	if(input[i]==(28315+offset0))
{
	vR[i] = 28315;
}
else
{
	vR[i] = 28314;
}

}
else
{
	if(input[i]==(28313+offset0))
{
	vR[i] = 28313;
}
else
{
	vR[i] = 28312;
}

}

}

}
else
{
	if(input[i]>(28307+offset0))
{
	if(input[i]>(28309+offset0))
{
	if(input[i]==(28311+offset0))
{
	vR[i] = 28311;
}
else
{
	vR[i] = 28310;
}

}
else
{
	if(input[i]==(28309+offset0))
{
	vR[i] = 28309;
}
else
{
	vR[i] = 28308;
}

}

}
else
{
	if(input[i]>(28305+offset0))
{
	if(input[i]==(28307+offset0))
{
	vR[i] = 28307;
}
else
{
	vR[i] = 28306;
}

}
else
{
	if(input[i]==(28305+offset0))
{
	vR[i] = 28305;
}
else
{
	vR[i] = 28304;
}

}

}

}

}
else
{
	if(input[i]>(28295+offset0))
{
	if(input[i]>(28299+offset0))
{
	if(input[i]>(28301+offset0))
{
	if(input[i]==(28303+offset0))
{
	vR[i] = 28303;
}
else
{
	vR[i] = 28302;
}

}
else
{
	if(input[i]==(28301+offset0))
{
	vR[i] = 28301;
}
else
{
	vR[i] = 28300;
}

}

}
else
{
	if(input[i]>(28297+offset0))
{
	if(input[i]==(28299+offset0))
{
	vR[i] = 28299;
}
else
{
	vR[i] = 28298;
}

}
else
{
	if(input[i]==(28297+offset0))
{
	vR[i] = 28297;
}
else
{
	vR[i] = 28296;
}

}

}

}
else
{
	if(input[i]>(28291+offset0))
{
	if(input[i]>(28293+offset0))
{
	if(input[i]==(28295+offset0))
{
	vR[i] = 28295;
}
else
{
	vR[i] = 28294;
}

}
else
{
	if(input[i]==(28293+offset0))
{
	vR[i] = 28293;
}
else
{
	vR[i] = 28292;
}

}

}
else
{
	if(input[i]>(28289+offset0))
{
	if(input[i]==(28291+offset0))
{
	vR[i] = 28291;
}
else
{
	vR[i] = 28290;
}

}
else
{
	if(input[i]==(28289+offset0))
{
	vR[i] = 28289;
}
else
{
	vR[i] = 28288;
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
	if(input[i]>(28223+offset0))
{
	if(input[i]>(28255+offset0))
{
	if(input[i]>(28271+offset0))
{
	if(input[i]>(28279+offset0))
{
	if(input[i]>(28283+offset0))
{
	if(input[i]>(28285+offset0))
{
	if(input[i]==(28287+offset0))
{
	vR[i] = 28287;
}
else
{
	vR[i] = 28286;
}

}
else
{
	if(input[i]==(28285+offset0))
{
	vR[i] = 28285;
}
else
{
	vR[i] = 28284;
}

}

}
else
{
	if(input[i]>(28281+offset0))
{
	if(input[i]==(28283+offset0))
{
	vR[i] = 28283;
}
else
{
	vR[i] = 28282;
}

}
else
{
	if(input[i]==(28281+offset0))
{
	vR[i] = 28281;
}
else
{
	vR[i] = 28280;
}

}

}

}
else
{
	if(input[i]>(28275+offset0))
{
	if(input[i]>(28277+offset0))
{
	if(input[i]==(28279+offset0))
{
	vR[i] = 28279;
}
else
{
	vR[i] = 28278;
}

}
else
{
	if(input[i]==(28277+offset0))
{
	vR[i] = 28277;
}
else
{
	vR[i] = 28276;
}

}

}
else
{
	if(input[i]>(28273+offset0))
{
	if(input[i]==(28275+offset0))
{
	vR[i] = 28275;
}
else
{
	vR[i] = 28274;
}

}
else
{
	if(input[i]==(28273+offset0))
{
	vR[i] = 28273;
}
else
{
	vR[i] = 28272;
}

}

}

}

}
else
{
	if(input[i]>(28263+offset0))
{
	if(input[i]>(28267+offset0))
{
	if(input[i]>(28269+offset0))
{
	if(input[i]==(28271+offset0))
{
	vR[i] = 28271;
}
else
{
	vR[i] = 28270;
}

}
else
{
	if(input[i]==(28269+offset0))
{
	vR[i] = 28269;
}
else
{
	vR[i] = 28268;
}

}

}
else
{
	if(input[i]>(28265+offset0))
{
	if(input[i]==(28267+offset0))
{
	vR[i] = 28267;
}
else
{
	vR[i] = 28266;
}

}
else
{
	if(input[i]==(28265+offset0))
{
	vR[i] = 28265;
}
else
{
	vR[i] = 28264;
}

}

}

}
else
{
	if(input[i]>(28259+offset0))
{
	if(input[i]>(28261+offset0))
{
	if(input[i]==(28263+offset0))
{
	vR[i] = 28263;
}
else
{
	vR[i] = 28262;
}

}
else
{
	if(input[i]==(28261+offset0))
{
	vR[i] = 28261;
}
else
{
	vR[i] = 28260;
}

}

}
else
{
	if(input[i]>(28257+offset0))
{
	if(input[i]==(28259+offset0))
{
	vR[i] = 28259;
}
else
{
	vR[i] = 28258;
}

}
else
{
	if(input[i]==(28257+offset0))
{
	vR[i] = 28257;
}
else
{
	vR[i] = 28256;
}

}

}

}

}

}
else
{
	if(input[i]>(28239+offset0))
{
	if(input[i]>(28247+offset0))
{
	if(input[i]>(28251+offset0))
{
	if(input[i]>(28253+offset0))
{
	if(input[i]==(28255+offset0))
{
	vR[i] = 28255;
}
else
{
	vR[i] = 28254;
}

}
else
{
	if(input[i]==(28253+offset0))
{
	vR[i] = 28253;
}
else
{
	vR[i] = 28252;
}

}

}
else
{
	if(input[i]>(28249+offset0))
{
	if(input[i]==(28251+offset0))
{
	vR[i] = 28251;
}
else
{
	vR[i] = 28250;
}

}
else
{
	if(input[i]==(28249+offset0))
{
	vR[i] = 28249;
}
else
{
	vR[i] = 28248;
}

}

}

}
else
{
	if(input[i]>(28243+offset0))
{
	if(input[i]>(28245+offset0))
{
	if(input[i]==(28247+offset0))
{
	vR[i] = 28247;
}
else
{
	vR[i] = 28246;
}

}
else
{
	if(input[i]==(28245+offset0))
{
	vR[i] = 28245;
}
else
{
	vR[i] = 28244;
}

}

}
else
{
	if(input[i]>(28241+offset0))
{
	if(input[i]==(28243+offset0))
{
	vR[i] = 28243;
}
else
{
	vR[i] = 28242;
}

}
else
{
	if(input[i]==(28241+offset0))
{
	vR[i] = 28241;
}
else
{
	vR[i] = 28240;
}

}

}

}

}
else
{
	if(input[i]>(28231+offset0))
{
	if(input[i]>(28235+offset0))
{
	if(input[i]>(28237+offset0))
{
	if(input[i]==(28239+offset0))
{
	vR[i] = 28239;
}
else
{
	vR[i] = 28238;
}

}
else
{
	if(input[i]==(28237+offset0))
{
	vR[i] = 28237;
}
else
{
	vR[i] = 28236;
}

}

}
else
{
	if(input[i]>(28233+offset0))
{
	if(input[i]==(28235+offset0))
{
	vR[i] = 28235;
}
else
{
	vR[i] = 28234;
}

}
else
{
	if(input[i]==(28233+offset0))
{
	vR[i] = 28233;
}
else
{
	vR[i] = 28232;
}

}

}

}
else
{
	if(input[i]>(28227+offset0))
{
	if(input[i]>(28229+offset0))
{
	if(input[i]==(28231+offset0))
{
	vR[i] = 28231;
}
else
{
	vR[i] = 28230;
}

}
else
{
	if(input[i]==(28229+offset0))
{
	vR[i] = 28229;
}
else
{
	vR[i] = 28228;
}

}

}
else
{
	if(input[i]>(28225+offset0))
{
	if(input[i]==(28227+offset0))
{
	vR[i] = 28227;
}
else
{
	vR[i] = 28226;
}

}
else
{
	if(input[i]==(28225+offset0))
{
	vR[i] = 28225;
}
else
{
	vR[i] = 28224;
}

}

}

}

}

}

}
else
{
	if(input[i]>(28191+offset0))
{
	if(input[i]>(28207+offset0))
{
	if(input[i]>(28215+offset0))
{
	if(input[i]>(28219+offset0))
{
	if(input[i]>(28221+offset0))
{
	if(input[i]==(28223+offset0))
{
	vR[i] = 28223;
}
else
{
	vR[i] = 28222;
}

}
else
{
	if(input[i]==(28221+offset0))
{
	vR[i] = 28221;
}
else
{
	vR[i] = 28220;
}

}

}
else
{
	if(input[i]>(28217+offset0))
{
	if(input[i]==(28219+offset0))
{
	vR[i] = 28219;
}
else
{
	vR[i] = 28218;
}

}
else
{
	if(input[i]==(28217+offset0))
{
	vR[i] = 28217;
}
else
{
	vR[i] = 28216;
}

}

}

}
else
{
	if(input[i]>(28211+offset0))
{
	if(input[i]>(28213+offset0))
{
	if(input[i]==(28215+offset0))
{
	vR[i] = 28215;
}
else
{
	vR[i] = 28214;
}

}
else
{
	if(input[i]==(28213+offset0))
{
	vR[i] = 28213;
}
else
{
	vR[i] = 28212;
}

}

}
else
{
	if(input[i]>(28209+offset0))
{
	if(input[i]==(28211+offset0))
{
	vR[i] = 28211;
}
else
{
	vR[i] = 28210;
}

}
else
{
	if(input[i]==(28209+offset0))
{
	vR[i] = 28209;
}
else
{
	vR[i] = 28208;
}

}

}

}

}
else
{
	if(input[i]>(28199+offset0))
{
	if(input[i]>(28203+offset0))
{
	if(input[i]>(28205+offset0))
{
	if(input[i]==(28207+offset0))
{
	vR[i] = 28207;
}
else
{
	vR[i] = 28206;
}

}
else
{
	if(input[i]==(28205+offset0))
{
	vR[i] = 28205;
}
else
{
	vR[i] = 28204;
}

}

}
else
{
	if(input[i]>(28201+offset0))
{
	if(input[i]==(28203+offset0))
{
	vR[i] = 28203;
}
else
{
	vR[i] = 28202;
}

}
else
{
	if(input[i]==(28201+offset0))
{
	vR[i] = 28201;
}
else
{
	vR[i] = 28200;
}

}

}

}
else
{
	if(input[i]>(28195+offset0))
{
	if(input[i]>(28197+offset0))
{
	if(input[i]==(28199+offset0))
{
	vR[i] = 28199;
}
else
{
	vR[i] = 28198;
}

}
else
{
	if(input[i]==(28197+offset0))
{
	vR[i] = 28197;
}
else
{
	vR[i] = 28196;
}

}

}
else
{
	if(input[i]>(28193+offset0))
{
	if(input[i]==(28195+offset0))
{
	vR[i] = 28195;
}
else
{
	vR[i] = 28194;
}

}
else
{
	if(input[i]==(28193+offset0))
{
	vR[i] = 28193;
}
else
{
	vR[i] = 28192;
}

}

}

}

}

}
else
{
	if(input[i]>(28175+offset0))
{
	if(input[i]>(28183+offset0))
{
	if(input[i]>(28187+offset0))
{
	if(input[i]>(28189+offset0))
{
	if(input[i]==(28191+offset0))
{
	vR[i] = 28191;
}
else
{
	vR[i] = 28190;
}

}
else
{
	if(input[i]==(28189+offset0))
{
	vR[i] = 28189;
}
else
{
	vR[i] = 28188;
}

}

}
else
{
	if(input[i]>(28185+offset0))
{
	if(input[i]==(28187+offset0))
{
	vR[i] = 28187;
}
else
{
	vR[i] = 28186;
}

}
else
{
	if(input[i]==(28185+offset0))
{
	vR[i] = 28185;
}
else
{
	vR[i] = 28184;
}

}

}

}
else
{
	if(input[i]>(28179+offset0))
{
	if(input[i]>(28181+offset0))
{
	if(input[i]==(28183+offset0))
{
	vR[i] = 28183;
}
else
{
	vR[i] = 28182;
}

}
else
{
	if(input[i]==(28181+offset0))
{
	vR[i] = 28181;
}
else
{
	vR[i] = 28180;
}

}

}
else
{
	if(input[i]>(28177+offset0))
{
	if(input[i]==(28179+offset0))
{
	vR[i] = 28179;
}
else
{
	vR[i] = 28178;
}

}
else
{
	if(input[i]==(28177+offset0))
{
	vR[i] = 28177;
}
else
{
	vR[i] = 28176;
}

}

}

}

}
else
{
	if(input[i]>(28167+offset0))
{
	if(input[i]>(28171+offset0))
{
	if(input[i]>(28173+offset0))
{
	if(input[i]==(28175+offset0))
{
	vR[i] = 28175;
}
else
{
	vR[i] = 28174;
}

}
else
{
	if(input[i]==(28173+offset0))
{
	vR[i] = 28173;
}
else
{
	vR[i] = 28172;
}

}

}
else
{
	if(input[i]>(28169+offset0))
{
	if(input[i]==(28171+offset0))
{
	vR[i] = 28171;
}
else
{
	vR[i] = 28170;
}

}
else
{
	if(input[i]==(28169+offset0))
{
	vR[i] = 28169;
}
else
{
	vR[i] = 28168;
}

}

}

}
else
{
	if(input[i]>(28163+offset0))
{
	if(input[i]>(28165+offset0))
{
	if(input[i]==(28167+offset0))
{
	vR[i] = 28167;
}
else
{
	vR[i] = 28166;
}

}
else
{
	if(input[i]==(28165+offset0))
{
	vR[i] = 28165;
}
else
{
	vR[i] = 28164;
}

}

}
else
{
	if(input[i]>(28161+offset0))
{
	if(input[i]==(28163+offset0))
{
	vR[i] = 28163;
}
else
{
	vR[i] = 28162;
}

}
else
{
	if(input[i]==(28161+offset0))
{
	vR[i] = 28161;
}
else
{
	vR[i] = 28160;
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
	if(input[i]>(27903+offset0))
{
	if(input[i]>(28031+offset0))
{
	if(input[i]>(28095+offset0))
{
	if(input[i]>(28127+offset0))
{
	if(input[i]>(28143+offset0))
{
	if(input[i]>(28151+offset0))
{
	if(input[i]>(28155+offset0))
{
	if(input[i]>(28157+offset0))
{
	if(input[i]==(28159+offset0))
{
	vR[i] = 28159;
}
else
{
	vR[i] = 28158;
}

}
else
{
	if(input[i]==(28157+offset0))
{
	vR[i] = 28157;
}
else
{
	vR[i] = 28156;
}

}

}
else
{
	if(input[i]>(28153+offset0))
{
	if(input[i]==(28155+offset0))
{
	vR[i] = 28155;
}
else
{
	vR[i] = 28154;
}

}
else
{
	if(input[i]==(28153+offset0))
{
	vR[i] = 28153;
}
else
{
	vR[i] = 28152;
}

}

}

}
else
{
	if(input[i]>(28147+offset0))
{
	if(input[i]>(28149+offset0))
{
	if(input[i]==(28151+offset0))
{
	vR[i] = 28151;
}
else
{
	vR[i] = 28150;
}

}
else
{
	if(input[i]==(28149+offset0))
{
	vR[i] = 28149;
}
else
{
	vR[i] = 28148;
}

}

}
else
{
	if(input[i]>(28145+offset0))
{
	if(input[i]==(28147+offset0))
{
	vR[i] = 28147;
}
else
{
	vR[i] = 28146;
}

}
else
{
	if(input[i]==(28145+offset0))
{
	vR[i] = 28145;
}
else
{
	vR[i] = 28144;
}

}

}

}

}
else
{
	if(input[i]>(28135+offset0))
{
	if(input[i]>(28139+offset0))
{
	if(input[i]>(28141+offset0))
{
	if(input[i]==(28143+offset0))
{
	vR[i] = 28143;
}
else
{
	vR[i] = 28142;
}

}
else
{
	if(input[i]==(28141+offset0))
{
	vR[i] = 28141;
}
else
{
	vR[i] = 28140;
}

}

}
else
{
	if(input[i]>(28137+offset0))
{
	if(input[i]==(28139+offset0))
{
	vR[i] = 28139;
}
else
{
	vR[i] = 28138;
}

}
else
{
	if(input[i]==(28137+offset0))
{
	vR[i] = 28137;
}
else
{
	vR[i] = 28136;
}

}

}

}
else
{
	if(input[i]>(28131+offset0))
{
	if(input[i]>(28133+offset0))
{
	if(input[i]==(28135+offset0))
{
	vR[i] = 28135;
}
else
{
	vR[i] = 28134;
}

}
else
{
	if(input[i]==(28133+offset0))
{
	vR[i] = 28133;
}
else
{
	vR[i] = 28132;
}

}

}
else
{
	if(input[i]>(28129+offset0))
{
	if(input[i]==(28131+offset0))
{
	vR[i] = 28131;
}
else
{
	vR[i] = 28130;
}

}
else
{
	if(input[i]==(28129+offset0))
{
	vR[i] = 28129;
}
else
{
	vR[i] = 28128;
}

}

}

}

}

}
else
{
	if(input[i]>(28111+offset0))
{
	if(input[i]>(28119+offset0))
{
	if(input[i]>(28123+offset0))
{
	if(input[i]>(28125+offset0))
{
	if(input[i]==(28127+offset0))
{
	vR[i] = 28127;
}
else
{
	vR[i] = 28126;
}

}
else
{
	if(input[i]==(28125+offset0))
{
	vR[i] = 28125;
}
else
{
	vR[i] = 28124;
}

}

}
else
{
	if(input[i]>(28121+offset0))
{
	if(input[i]==(28123+offset0))
{
	vR[i] = 28123;
}
else
{
	vR[i] = 28122;
}

}
else
{
	if(input[i]==(28121+offset0))
{
	vR[i] = 28121;
}
else
{
	vR[i] = 28120;
}

}

}

}
else
{
	if(input[i]>(28115+offset0))
{
	if(input[i]>(28117+offset0))
{
	if(input[i]==(28119+offset0))
{
	vR[i] = 28119;
}
else
{
	vR[i] = 28118;
}

}
else
{
	if(input[i]==(28117+offset0))
{
	vR[i] = 28117;
}
else
{
	vR[i] = 28116;
}

}

}
else
{
	if(input[i]>(28113+offset0))
{
	if(input[i]==(28115+offset0))
{
	vR[i] = 28115;
}
else
{
	vR[i] = 28114;
}

}
else
{
	if(input[i]==(28113+offset0))
{
	vR[i] = 28113;
}
else
{
	vR[i] = 28112;
}

}

}

}

}
else
{
	if(input[i]>(28103+offset0))
{
	if(input[i]>(28107+offset0))
{
	if(input[i]>(28109+offset0))
{
	if(input[i]==(28111+offset0))
{
	vR[i] = 28111;
}
else
{
	vR[i] = 28110;
}

}
else
{
	if(input[i]==(28109+offset0))
{
	vR[i] = 28109;
}
else
{
	vR[i] = 28108;
}

}

}
else
{
	if(input[i]>(28105+offset0))
{
	if(input[i]==(28107+offset0))
{
	vR[i] = 28107;
}
else
{
	vR[i] = 28106;
}

}
else
{
	if(input[i]==(28105+offset0))
{
	vR[i] = 28105;
}
else
{
	vR[i] = 28104;
}

}

}

}
else
{
	if(input[i]>(28099+offset0))
{
	if(input[i]>(28101+offset0))
{
	if(input[i]==(28103+offset0))
{
	vR[i] = 28103;
}
else
{
	vR[i] = 28102;
}

}
else
{
	if(input[i]==(28101+offset0))
{
	vR[i] = 28101;
}
else
{
	vR[i] = 28100;
}

}

}
else
{
	if(input[i]>(28097+offset0))
{
	if(input[i]==(28099+offset0))
{
	vR[i] = 28099;
}
else
{
	vR[i] = 28098;
}

}
else
{
	if(input[i]==(28097+offset0))
{
	vR[i] = 28097;
}
else
{
	vR[i] = 28096;
}

}

}

}

}

}

}
else
{
	if(input[i]>(28063+offset0))
{
	if(input[i]>(28079+offset0))
{
	if(input[i]>(28087+offset0))
{
	if(input[i]>(28091+offset0))
{
	if(input[i]>(28093+offset0))
{
	if(input[i]==(28095+offset0))
{
	vR[i] = 28095;
}
else
{
	vR[i] = 28094;
}

}
else
{
	if(input[i]==(28093+offset0))
{
	vR[i] = 28093;
}
else
{
	vR[i] = 28092;
}

}

}
else
{
	if(input[i]>(28089+offset0))
{
	if(input[i]==(28091+offset0))
{
	vR[i] = 28091;
}
else
{
	vR[i] = 28090;
}

}
else
{
	if(input[i]==(28089+offset0))
{
	vR[i] = 28089;
}
else
{
	vR[i] = 28088;
}

}

}

}
else
{
	if(input[i]>(28083+offset0))
{
	if(input[i]>(28085+offset0))
{
	if(input[i]==(28087+offset0))
{
	vR[i] = 28087;
}
else
{
	vR[i] = 28086;
}

}
else
{
	if(input[i]==(28085+offset0))
{
	vR[i] = 28085;
}
else
{
	vR[i] = 28084;
}

}

}
else
{
	if(input[i]>(28081+offset0))
{
	if(input[i]==(28083+offset0))
{
	vR[i] = 28083;
}
else
{
	vR[i] = 28082;
}

}
else
{
	if(input[i]==(28081+offset0))
{
	vR[i] = 28081;
}
else
{
	vR[i] = 28080;
}

}

}

}

}
else
{
	if(input[i]>(28071+offset0))
{
	if(input[i]>(28075+offset0))
{
	if(input[i]>(28077+offset0))
{
	if(input[i]==(28079+offset0))
{
	vR[i] = 28079;
}
else
{
	vR[i] = 28078;
}

}
else
{
	if(input[i]==(28077+offset0))
{
	vR[i] = 28077;
}
else
{
	vR[i] = 28076;
}

}

}
else
{
	if(input[i]>(28073+offset0))
{
	if(input[i]==(28075+offset0))
{
	vR[i] = 28075;
}
else
{
	vR[i] = 28074;
}

}
else
{
	if(input[i]==(28073+offset0))
{
	vR[i] = 28073;
}
else
{
	vR[i] = 28072;
}

}

}

}
else
{
	if(input[i]>(28067+offset0))
{
	if(input[i]>(28069+offset0))
{
	if(input[i]==(28071+offset0))
{
	vR[i] = 28071;
}
else
{
	vR[i] = 28070;
}

}
else
{
	if(input[i]==(28069+offset0))
{
	vR[i] = 28069;
}
else
{
	vR[i] = 28068;
}

}

}
else
{
	if(input[i]>(28065+offset0))
{
	if(input[i]==(28067+offset0))
{
	vR[i] = 28067;
}
else
{
	vR[i] = 28066;
}

}
else
{
	if(input[i]==(28065+offset0))
{
	vR[i] = 28065;
}
else
{
	vR[i] = 28064;
}

}

}

}

}

}
else
{
	if(input[i]>(28047+offset0))
{
	if(input[i]>(28055+offset0))
{
	if(input[i]>(28059+offset0))
{
	if(input[i]>(28061+offset0))
{
	if(input[i]==(28063+offset0))
{
	vR[i] = 28063;
}
else
{
	vR[i] = 28062;
}

}
else
{
	if(input[i]==(28061+offset0))
{
	vR[i] = 28061;
}
else
{
	vR[i] = 28060;
}

}

}
else
{
	if(input[i]>(28057+offset0))
{
	if(input[i]==(28059+offset0))
{
	vR[i] = 28059;
}
else
{
	vR[i] = 28058;
}

}
else
{
	if(input[i]==(28057+offset0))
{
	vR[i] = 28057;
}
else
{
	vR[i] = 28056;
}

}

}

}
else
{
	if(input[i]>(28051+offset0))
{
	if(input[i]>(28053+offset0))
{
	if(input[i]==(28055+offset0))
{
	vR[i] = 28055;
}
else
{
	vR[i] = 28054;
}

}
else
{
	if(input[i]==(28053+offset0))
{
	vR[i] = 28053;
}
else
{
	vR[i] = 28052;
}

}

}
else
{
	if(input[i]>(28049+offset0))
{
	if(input[i]==(28051+offset0))
{
	vR[i] = 28051;
}
else
{
	vR[i] = 28050;
}

}
else
{
	if(input[i]==(28049+offset0))
{
	vR[i] = 28049;
}
else
{
	vR[i] = 28048;
}

}

}

}

}
else
{
	if(input[i]>(28039+offset0))
{
	if(input[i]>(28043+offset0))
{
	if(input[i]>(28045+offset0))
{
	if(input[i]==(28047+offset0))
{
	vR[i] = 28047;
}
else
{
	vR[i] = 28046;
}

}
else
{
	if(input[i]==(28045+offset0))
{
	vR[i] = 28045;
}
else
{
	vR[i] = 28044;
}

}

}
else
{
	if(input[i]>(28041+offset0))
{
	if(input[i]==(28043+offset0))
{
	vR[i] = 28043;
}
else
{
	vR[i] = 28042;
}

}
else
{
	if(input[i]==(28041+offset0))
{
	vR[i] = 28041;
}
else
{
	vR[i] = 28040;
}

}

}

}
else
{
	if(input[i]>(28035+offset0))
{
	if(input[i]>(28037+offset0))
{
	if(input[i]==(28039+offset0))
{
	vR[i] = 28039;
}
else
{
	vR[i] = 28038;
}

}
else
{
	if(input[i]==(28037+offset0))
{
	vR[i] = 28037;
}
else
{
	vR[i] = 28036;
}

}

}
else
{
	if(input[i]>(28033+offset0))
{
	if(input[i]==(28035+offset0))
{
	vR[i] = 28035;
}
else
{
	vR[i] = 28034;
}

}
else
{
	if(input[i]==(28033+offset0))
{
	vR[i] = 28033;
}
else
{
	vR[i] = 28032;
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
	if(input[i]>(27967+offset0))
{
	if(input[i]>(27999+offset0))
{
	if(input[i]>(28015+offset0))
{
	if(input[i]>(28023+offset0))
{
	if(input[i]>(28027+offset0))
{
	if(input[i]>(28029+offset0))
{
	if(input[i]==(28031+offset0))
{
	vR[i] = 28031;
}
else
{
	vR[i] = 28030;
}

}
else
{
	if(input[i]==(28029+offset0))
{
	vR[i] = 28029;
}
else
{
	vR[i] = 28028;
}

}

}
else
{
	if(input[i]>(28025+offset0))
{
	if(input[i]==(28027+offset0))
{
	vR[i] = 28027;
}
else
{
	vR[i] = 28026;
}

}
else
{
	if(input[i]==(28025+offset0))
{
	vR[i] = 28025;
}
else
{
	vR[i] = 28024;
}

}

}

}
else
{
	if(input[i]>(28019+offset0))
{
	if(input[i]>(28021+offset0))
{
	if(input[i]==(28023+offset0))
{
	vR[i] = 28023;
}
else
{
	vR[i] = 28022;
}

}
else
{
	if(input[i]==(28021+offset0))
{
	vR[i] = 28021;
}
else
{
	vR[i] = 28020;
}

}

}
else
{
	if(input[i]>(28017+offset0))
{
	if(input[i]==(28019+offset0))
{
	vR[i] = 28019;
}
else
{
	vR[i] = 28018;
}

}
else
{
	if(input[i]==(28017+offset0))
{
	vR[i] = 28017;
}
else
{
	vR[i] = 28016;
}

}

}

}

}
else
{
	if(input[i]>(28007+offset0))
{
	if(input[i]>(28011+offset0))
{
	if(input[i]>(28013+offset0))
{
	if(input[i]==(28015+offset0))
{
	vR[i] = 28015;
}
else
{
	vR[i] = 28014;
}

}
else
{
	if(input[i]==(28013+offset0))
{
	vR[i] = 28013;
}
else
{
	vR[i] = 28012;
}

}

}
else
{
	if(input[i]>(28009+offset0))
{
	if(input[i]==(28011+offset0))
{
	vR[i] = 28011;
}
else
{
	vR[i] = 28010;
}

}
else
{
	if(input[i]==(28009+offset0))
{
	vR[i] = 28009;
}
else
{
	vR[i] = 28008;
}

}

}

}
else
{
	if(input[i]>(28003+offset0))
{
	if(input[i]>(28005+offset0))
{
	if(input[i]==(28007+offset0))
{
	vR[i] = 28007;
}
else
{
	vR[i] = 28006;
}

}
else
{
	if(input[i]==(28005+offset0))
{
	vR[i] = 28005;
}
else
{
	vR[i] = 28004;
}

}

}
else
{
	if(input[i]>(28001+offset0))
{
	if(input[i]==(28003+offset0))
{
	vR[i] = 28003;
}
else
{
	vR[i] = 28002;
}

}
else
{
	if(input[i]==(28001+offset0))
{
	vR[i] = 28001;
}
else
{
	vR[i] = 28000;
}

}

}

}

}

}
else
{
	if(input[i]>(27983+offset0))
{
	if(input[i]>(27991+offset0))
{
	if(input[i]>(27995+offset0))
{
	if(input[i]>(27997+offset0))
{
	if(input[i]==(27999+offset0))
{
	vR[i] = 27999;
}
else
{
	vR[i] = 27998;
}

}
else
{
	if(input[i]==(27997+offset0))
{
	vR[i] = 27997;
}
else
{
	vR[i] = 27996;
}

}

}
else
{
	if(input[i]>(27993+offset0))
{
	if(input[i]==(27995+offset0))
{
	vR[i] = 27995;
}
else
{
	vR[i] = 27994;
}

}
else
{
	if(input[i]==(27993+offset0))
{
	vR[i] = 27993;
}
else
{
	vR[i] = 27992;
}

}

}

}
else
{
	if(input[i]>(27987+offset0))
{
	if(input[i]>(27989+offset0))
{
	if(input[i]==(27991+offset0))
{
	vR[i] = 27991;
}
else
{
	vR[i] = 27990;
}

}
else
{
	if(input[i]==(27989+offset0))
{
	vR[i] = 27989;
}
else
{
	vR[i] = 27988;
}

}

}
else
{
	if(input[i]>(27985+offset0))
{
	if(input[i]==(27987+offset0))
{
	vR[i] = 27987;
}
else
{
	vR[i] = 27986;
}

}
else
{
	if(input[i]==(27985+offset0))
{
	vR[i] = 27985;
}
else
{
	vR[i] = 27984;
}

}

}

}

}
else
{
	if(input[i]>(27975+offset0))
{
	if(input[i]>(27979+offset0))
{
	if(input[i]>(27981+offset0))
{
	if(input[i]==(27983+offset0))
{
	vR[i] = 27983;
}
else
{
	vR[i] = 27982;
}

}
else
{
	if(input[i]==(27981+offset0))
{
	vR[i] = 27981;
}
else
{
	vR[i] = 27980;
}

}

}
else
{
	if(input[i]>(27977+offset0))
{
	if(input[i]==(27979+offset0))
{
	vR[i] = 27979;
}
else
{
	vR[i] = 27978;
}

}
else
{
	if(input[i]==(27977+offset0))
{
	vR[i] = 27977;
}
else
{
	vR[i] = 27976;
}

}

}

}
else
{
	if(input[i]>(27971+offset0))
{
	if(input[i]>(27973+offset0))
{
	if(input[i]==(27975+offset0))
{
	vR[i] = 27975;
}
else
{
	vR[i] = 27974;
}

}
else
{
	if(input[i]==(27973+offset0))
{
	vR[i] = 27973;
}
else
{
	vR[i] = 27972;
}

}

}
else
{
	if(input[i]>(27969+offset0))
{
	if(input[i]==(27971+offset0))
{
	vR[i] = 27971;
}
else
{
	vR[i] = 27970;
}

}
else
{
	if(input[i]==(27969+offset0))
{
	vR[i] = 27969;
}
else
{
	vR[i] = 27968;
}

}

}

}

}

}

}
else
{
	if(input[i]>(27935+offset0))
{
	if(input[i]>(27951+offset0))
{
	if(input[i]>(27959+offset0))
{
	if(input[i]>(27963+offset0))
{
	if(input[i]>(27965+offset0))
{
	if(input[i]==(27967+offset0))
{
	vR[i] = 27967;
}
else
{
	vR[i] = 27966;
}

}
else
{
	if(input[i]==(27965+offset0))
{
	vR[i] = 27965;
}
else
{
	vR[i] = 27964;
}

}

}
else
{
	if(input[i]>(27961+offset0))
{
	if(input[i]==(27963+offset0))
{
	vR[i] = 27963;
}
else
{
	vR[i] = 27962;
}

}
else
{
	if(input[i]==(27961+offset0))
{
	vR[i] = 27961;
}
else
{
	vR[i] = 27960;
}

}

}

}
else
{
	if(input[i]>(27955+offset0))
{
	if(input[i]>(27957+offset0))
{
	if(input[i]==(27959+offset0))
{
	vR[i] = 27959;
}
else
{
	vR[i] = 27958;
}

}
else
{
	if(input[i]==(27957+offset0))
{
	vR[i] = 27957;
}
else
{
	vR[i] = 27956;
}

}

}
else
{
	if(input[i]>(27953+offset0))
{
	if(input[i]==(27955+offset0))
{
	vR[i] = 27955;
}
else
{
	vR[i] = 27954;
}

}
else
{
	if(input[i]==(27953+offset0))
{
	vR[i] = 27953;
}
else
{
	vR[i] = 27952;
}

}

}

}

}
else
{
	if(input[i]>(27943+offset0))
{
	if(input[i]>(27947+offset0))
{
	if(input[i]>(27949+offset0))
{
	if(input[i]==(27951+offset0))
{
	vR[i] = 27951;
}
else
{
	vR[i] = 27950;
}

}
else
{
	if(input[i]==(27949+offset0))
{
	vR[i] = 27949;
}
else
{
	vR[i] = 27948;
}

}

}
else
{
	if(input[i]>(27945+offset0))
{
	if(input[i]==(27947+offset0))
{
	vR[i] = 27947;
}
else
{
	vR[i] = 27946;
}

}
else
{
	if(input[i]==(27945+offset0))
{
	vR[i] = 27945;
}
else
{
	vR[i] = 27944;
}

}

}

}
else
{
	if(input[i]>(27939+offset0))
{
	if(input[i]>(27941+offset0))
{
	if(input[i]==(27943+offset0))
{
	vR[i] = 27943;
}
else
{
	vR[i] = 27942;
}

}
else
{
	if(input[i]==(27941+offset0))
{
	vR[i] = 27941;
}
else
{
	vR[i] = 27940;
}

}

}
else
{
	if(input[i]>(27937+offset0))
{
	if(input[i]==(27939+offset0))
{
	vR[i] = 27939;
}
else
{
	vR[i] = 27938;
}

}
else
{
	if(input[i]==(27937+offset0))
{
	vR[i] = 27937;
}
else
{
	vR[i] = 27936;
}

}

}

}

}

}
else
{
	if(input[i]>(27919+offset0))
{
	if(input[i]>(27927+offset0))
{
	if(input[i]>(27931+offset0))
{
	if(input[i]>(27933+offset0))
{
	if(input[i]==(27935+offset0))
{
	vR[i] = 27935;
}
else
{
	vR[i] = 27934;
}

}
else
{
	if(input[i]==(27933+offset0))
{
	vR[i] = 27933;
}
else
{
	vR[i] = 27932;
}

}

}
else
{
	if(input[i]>(27929+offset0))
{
	if(input[i]==(27931+offset0))
{
	vR[i] = 27931;
}
else
{
	vR[i] = 27930;
}

}
else
{
	if(input[i]==(27929+offset0))
{
	vR[i] = 27929;
}
else
{
	vR[i] = 27928;
}

}

}

}
else
{
	if(input[i]>(27923+offset0))
{
	if(input[i]>(27925+offset0))
{
	if(input[i]==(27927+offset0))
{
	vR[i] = 27927;
}
else
{
	vR[i] = 27926;
}

}
else
{
	if(input[i]==(27925+offset0))
{
	vR[i] = 27925;
}
else
{
	vR[i] = 27924;
}

}

}
else
{
	if(input[i]>(27921+offset0))
{
	if(input[i]==(27923+offset0))
{
	vR[i] = 27923;
}
else
{
	vR[i] = 27922;
}

}
else
{
	if(input[i]==(27921+offset0))
{
	vR[i] = 27921;
}
else
{
	vR[i] = 27920;
}

}

}

}

}
else
{
	if(input[i]>(27911+offset0))
{
	if(input[i]>(27915+offset0))
{
	if(input[i]>(27917+offset0))
{
	if(input[i]==(27919+offset0))
{
	vR[i] = 27919;
}
else
{
	vR[i] = 27918;
}

}
else
{
	if(input[i]==(27917+offset0))
{
	vR[i] = 27917;
}
else
{
	vR[i] = 27916;
}

}

}
else
{
	if(input[i]>(27913+offset0))
{
	if(input[i]==(27915+offset0))
{
	vR[i] = 27915;
}
else
{
	vR[i] = 27914;
}

}
else
{
	if(input[i]==(27913+offset0))
{
	vR[i] = 27913;
}
else
{
	vR[i] = 27912;
}

}

}

}
else
{
	if(input[i]>(27907+offset0))
{
	if(input[i]>(27909+offset0))
{
	if(input[i]==(27911+offset0))
{
	vR[i] = 27911;
}
else
{
	vR[i] = 27910;
}

}
else
{
	if(input[i]==(27909+offset0))
{
	vR[i] = 27909;
}
else
{
	vR[i] = 27908;
}

}

}
else
{
	if(input[i]>(27905+offset0))
{
	if(input[i]==(27907+offset0))
{
	vR[i] = 27907;
}
else
{
	vR[i] = 27906;
}

}
else
{
	if(input[i]==(27905+offset0))
{
	vR[i] = 27905;
}
else
{
	vR[i] = 27904;
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
	if(input[i]>(27775+offset0))
{
	if(input[i]>(27839+offset0))
{
	if(input[i]>(27871+offset0))
{
	if(input[i]>(27887+offset0))
{
	if(input[i]>(27895+offset0))
{
	if(input[i]>(27899+offset0))
{
	if(input[i]>(27901+offset0))
{
	if(input[i]==(27903+offset0))
{
	vR[i] = 27903;
}
else
{
	vR[i] = 27902;
}

}
else
{
	if(input[i]==(27901+offset0))
{
	vR[i] = 27901;
}
else
{
	vR[i] = 27900;
}

}

}
else
{
	if(input[i]>(27897+offset0))
{
	if(input[i]==(27899+offset0))
{
	vR[i] = 27899;
}
else
{
	vR[i] = 27898;
}

}
else
{
	if(input[i]==(27897+offset0))
{
	vR[i] = 27897;
}
else
{
	vR[i] = 27896;
}

}

}

}
else
{
	if(input[i]>(27891+offset0))
{
	if(input[i]>(27893+offset0))
{
	if(input[i]==(27895+offset0))
{
	vR[i] = 27895;
}
else
{
	vR[i] = 27894;
}

}
else
{
	if(input[i]==(27893+offset0))
{
	vR[i] = 27893;
}
else
{
	vR[i] = 27892;
}

}

}
else
{
	if(input[i]>(27889+offset0))
{
	if(input[i]==(27891+offset0))
{
	vR[i] = 27891;
}
else
{
	vR[i] = 27890;
}

}
else
{
	if(input[i]==(27889+offset0))
{
	vR[i] = 27889;
}
else
{
	vR[i] = 27888;
}

}

}

}

}
else
{
	if(input[i]>(27879+offset0))
{
	if(input[i]>(27883+offset0))
{
	if(input[i]>(27885+offset0))
{
	if(input[i]==(27887+offset0))
{
	vR[i] = 27887;
}
else
{
	vR[i] = 27886;
}

}
else
{
	if(input[i]==(27885+offset0))
{
	vR[i] = 27885;
}
else
{
	vR[i] = 27884;
}

}

}
else
{
	if(input[i]>(27881+offset0))
{
	if(input[i]==(27883+offset0))
{
	vR[i] = 27883;
}
else
{
	vR[i] = 27882;
}

}
else
{
	if(input[i]==(27881+offset0))
{
	vR[i] = 27881;
}
else
{
	vR[i] = 27880;
}

}

}

}
else
{
	if(input[i]>(27875+offset0))
{
	if(input[i]>(27877+offset0))
{
	if(input[i]==(27879+offset0))
{
	vR[i] = 27879;
}
else
{
	vR[i] = 27878;
}

}
else
{
	if(input[i]==(27877+offset0))
{
	vR[i] = 27877;
}
else
{
	vR[i] = 27876;
}

}

}
else
{
	if(input[i]>(27873+offset0))
{
	if(input[i]==(27875+offset0))
{
	vR[i] = 27875;
}
else
{
	vR[i] = 27874;
}

}
else
{
	if(input[i]==(27873+offset0))
{
	vR[i] = 27873;
}
else
{
	vR[i] = 27872;
}

}

}

}

}

}
else
{
	if(input[i]>(27855+offset0))
{
	if(input[i]>(27863+offset0))
{
	if(input[i]>(27867+offset0))
{
	if(input[i]>(27869+offset0))
{
	if(input[i]==(27871+offset0))
{
	vR[i] = 27871;
}
else
{
	vR[i] = 27870;
}

}
else
{
	if(input[i]==(27869+offset0))
{
	vR[i] = 27869;
}
else
{
	vR[i] = 27868;
}

}

}
else
{
	if(input[i]>(27865+offset0))
{
	if(input[i]==(27867+offset0))
{
	vR[i] = 27867;
}
else
{
	vR[i] = 27866;
}

}
else
{
	if(input[i]==(27865+offset0))
{
	vR[i] = 27865;
}
else
{
	vR[i] = 27864;
}

}

}

}
else
{
	if(input[i]>(27859+offset0))
{
	if(input[i]>(27861+offset0))
{
	if(input[i]==(27863+offset0))
{
	vR[i] = 27863;
}
else
{
	vR[i] = 27862;
}

}
else
{
	if(input[i]==(27861+offset0))
{
	vR[i] = 27861;
}
else
{
	vR[i] = 27860;
}

}

}
else
{
	if(input[i]>(27857+offset0))
{
	if(input[i]==(27859+offset0))
{
	vR[i] = 27859;
}
else
{
	vR[i] = 27858;
}

}
else
{
	if(input[i]==(27857+offset0))
{
	vR[i] = 27857;
}
else
{
	vR[i] = 27856;
}

}

}

}

}
else
{
	if(input[i]>(27847+offset0))
{
	if(input[i]>(27851+offset0))
{
	if(input[i]>(27853+offset0))
{
	if(input[i]==(27855+offset0))
{
	vR[i] = 27855;
}
else
{
	vR[i] = 27854;
}

}
else
{
	if(input[i]==(27853+offset0))
{
	vR[i] = 27853;
}
else
{
	vR[i] = 27852;
}

}

}
else
{
	if(input[i]>(27849+offset0))
{
	if(input[i]==(27851+offset0))
{
	vR[i] = 27851;
}
else
{
	vR[i] = 27850;
}

}
else
{
	if(input[i]==(27849+offset0))
{
	vR[i] = 27849;
}
else
{
	vR[i] = 27848;
}

}

}

}
else
{
	if(input[i]>(27843+offset0))
{
	if(input[i]>(27845+offset0))
{
	if(input[i]==(27847+offset0))
{
	vR[i] = 27847;
}
else
{
	vR[i] = 27846;
}

}
else
{
	if(input[i]==(27845+offset0))
{
	vR[i] = 27845;
}
else
{
	vR[i] = 27844;
}

}

}
else
{
	if(input[i]>(27841+offset0))
{
	if(input[i]==(27843+offset0))
{
	vR[i] = 27843;
}
else
{
	vR[i] = 27842;
}

}
else
{
	if(input[i]==(27841+offset0))
{
	vR[i] = 27841;
}
else
{
	vR[i] = 27840;
}

}

}

}

}

}

}
else
{
	if(input[i]>(27807+offset0))
{
	if(input[i]>(27823+offset0))
{
	if(input[i]>(27831+offset0))
{
	if(input[i]>(27835+offset0))
{
	if(input[i]>(27837+offset0))
{
	if(input[i]==(27839+offset0))
{
	vR[i] = 27839;
}
else
{
	vR[i] = 27838;
}

}
else
{
	if(input[i]==(27837+offset0))
{
	vR[i] = 27837;
}
else
{
	vR[i] = 27836;
}

}

}
else
{
	if(input[i]>(27833+offset0))
{
	if(input[i]==(27835+offset0))
{
	vR[i] = 27835;
}
else
{
	vR[i] = 27834;
}

}
else
{
	if(input[i]==(27833+offset0))
{
	vR[i] = 27833;
}
else
{
	vR[i] = 27832;
}

}

}

}
else
{
	if(input[i]>(27827+offset0))
{
	if(input[i]>(27829+offset0))
{
	if(input[i]==(27831+offset0))
{
	vR[i] = 27831;
}
else
{
	vR[i] = 27830;
}

}
else
{
	if(input[i]==(27829+offset0))
{
	vR[i] = 27829;
}
else
{
	vR[i] = 27828;
}

}

}
else
{
	if(input[i]>(27825+offset0))
{
	if(input[i]==(27827+offset0))
{
	vR[i] = 27827;
}
else
{
	vR[i] = 27826;
}

}
else
{
	if(input[i]==(27825+offset0))
{
	vR[i] = 27825;
}
else
{
	vR[i] = 27824;
}

}

}

}

}
else
{
	if(input[i]>(27815+offset0))
{
	if(input[i]>(27819+offset0))
{
	if(input[i]>(27821+offset0))
{
	if(input[i]==(27823+offset0))
{
	vR[i] = 27823;
}
else
{
	vR[i] = 27822;
}

}
else
{
	if(input[i]==(27821+offset0))
{
	vR[i] = 27821;
}
else
{
	vR[i] = 27820;
}

}

}
else
{
	if(input[i]>(27817+offset0))
{
	if(input[i]==(27819+offset0))
{
	vR[i] = 27819;
}
else
{
	vR[i] = 27818;
}

}
else
{
	if(input[i]==(27817+offset0))
{
	vR[i] = 27817;
}
else
{
	vR[i] = 27816;
}

}

}

}
else
{
	if(input[i]>(27811+offset0))
{
	if(input[i]>(27813+offset0))
{
	if(input[i]==(27815+offset0))
{
	vR[i] = 27815;
}
else
{
	vR[i] = 27814;
}

}
else
{
	if(input[i]==(27813+offset0))
{
	vR[i] = 27813;
}
else
{
	vR[i] = 27812;
}

}

}
else
{
	if(input[i]>(27809+offset0))
{
	if(input[i]==(27811+offset0))
{
	vR[i] = 27811;
}
else
{
	vR[i] = 27810;
}

}
else
{
	if(input[i]==(27809+offset0))
{
	vR[i] = 27809;
}
else
{
	vR[i] = 27808;
}

}

}

}

}

}
else
{
	if(input[i]>(27791+offset0))
{
	if(input[i]>(27799+offset0))
{
	if(input[i]>(27803+offset0))
{
	if(input[i]>(27805+offset0))
{
	if(input[i]==(27807+offset0))
{
	vR[i] = 27807;
}
else
{
	vR[i] = 27806;
}

}
else
{
	if(input[i]==(27805+offset0))
{
	vR[i] = 27805;
}
else
{
	vR[i] = 27804;
}

}

}
else
{
	if(input[i]>(27801+offset0))
{
	if(input[i]==(27803+offset0))
{
	vR[i] = 27803;
}
else
{
	vR[i] = 27802;
}

}
else
{
	if(input[i]==(27801+offset0))
{
	vR[i] = 27801;
}
else
{
	vR[i] = 27800;
}

}

}

}
else
{
	if(input[i]>(27795+offset0))
{
	if(input[i]>(27797+offset0))
{
	if(input[i]==(27799+offset0))
{
	vR[i] = 27799;
}
else
{
	vR[i] = 27798;
}

}
else
{
	if(input[i]==(27797+offset0))
{
	vR[i] = 27797;
}
else
{
	vR[i] = 27796;
}

}

}
else
{
	if(input[i]>(27793+offset0))
{
	if(input[i]==(27795+offset0))
{
	vR[i] = 27795;
}
else
{
	vR[i] = 27794;
}

}
else
{
	if(input[i]==(27793+offset0))
{
	vR[i] = 27793;
}
else
{
	vR[i] = 27792;
}

}

}

}

}
else
{
	if(input[i]>(27783+offset0))
{
	if(input[i]>(27787+offset0))
{
	if(input[i]>(27789+offset0))
{
	if(input[i]==(27791+offset0))
{
	vR[i] = 27791;
}
else
{
	vR[i] = 27790;
}

}
else
{
	if(input[i]==(27789+offset0))
{
	vR[i] = 27789;
}
else
{
	vR[i] = 27788;
}

}

}
else
{
	if(input[i]>(27785+offset0))
{
	if(input[i]==(27787+offset0))
{
	vR[i] = 27787;
}
else
{
	vR[i] = 27786;
}

}
else
{
	if(input[i]==(27785+offset0))
{
	vR[i] = 27785;
}
else
{
	vR[i] = 27784;
}

}

}

}
else
{
	if(input[i]>(27779+offset0))
{
	if(input[i]>(27781+offset0))
{
	if(input[i]==(27783+offset0))
{
	vR[i] = 27783;
}
else
{
	vR[i] = 27782;
}

}
else
{
	if(input[i]==(27781+offset0))
{
	vR[i] = 27781;
}
else
{
	vR[i] = 27780;
}

}

}
else
{
	if(input[i]>(27777+offset0))
{
	if(input[i]==(27779+offset0))
{
	vR[i] = 27779;
}
else
{
	vR[i] = 27778;
}

}
else
{
	if(input[i]==(27777+offset0))
{
	vR[i] = 27777;
}
else
{
	vR[i] = 27776;
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
	if(input[i]>(27711+offset0))
{
	if(input[i]>(27743+offset0))
{
	if(input[i]>(27759+offset0))
{
	if(input[i]>(27767+offset0))
{
	if(input[i]>(27771+offset0))
{
	if(input[i]>(27773+offset0))
{
	if(input[i]==(27775+offset0))
{
	vR[i] = 27775;
}
else
{
	vR[i] = 27774;
}

}
else
{
	if(input[i]==(27773+offset0))
{
	vR[i] = 27773;
}
else
{
	vR[i] = 27772;
}

}

}
else
{
	if(input[i]>(27769+offset0))
{
	if(input[i]==(27771+offset0))
{
	vR[i] = 27771;
}
else
{
	vR[i] = 27770;
}

}
else
{
	if(input[i]==(27769+offset0))
{
	vR[i] = 27769;
}
else
{
	vR[i] = 27768;
}

}

}

}
else
{
	if(input[i]>(27763+offset0))
{
	if(input[i]>(27765+offset0))
{
	if(input[i]==(27767+offset0))
{
	vR[i] = 27767;
}
else
{
	vR[i] = 27766;
}

}
else
{
	if(input[i]==(27765+offset0))
{
	vR[i] = 27765;
}
else
{
	vR[i] = 27764;
}

}

}
else
{
	if(input[i]>(27761+offset0))
{
	if(input[i]==(27763+offset0))
{
	vR[i] = 27763;
}
else
{
	vR[i] = 27762;
}

}
else
{
	if(input[i]==(27761+offset0))
{
	vR[i] = 27761;
}
else
{
	vR[i] = 27760;
}

}

}

}

}
else
{
	if(input[i]>(27751+offset0))
{
	if(input[i]>(27755+offset0))
{
	if(input[i]>(27757+offset0))
{
	if(input[i]==(27759+offset0))
{
	vR[i] = 27759;
}
else
{
	vR[i] = 27758;
}

}
else
{
	if(input[i]==(27757+offset0))
{
	vR[i] = 27757;
}
else
{
	vR[i] = 27756;
}

}

}
else
{
	if(input[i]>(27753+offset0))
{
	if(input[i]==(27755+offset0))
{
	vR[i] = 27755;
}
else
{
	vR[i] = 27754;
}

}
else
{
	if(input[i]==(27753+offset0))
{
	vR[i] = 27753;
}
else
{
	vR[i] = 27752;
}

}

}

}
else
{
	if(input[i]>(27747+offset0))
{
	if(input[i]>(27749+offset0))
{
	if(input[i]==(27751+offset0))
{
	vR[i] = 27751;
}
else
{
	vR[i] = 27750;
}

}
else
{
	if(input[i]==(27749+offset0))
{
	vR[i] = 27749;
}
else
{
	vR[i] = 27748;
}

}

}
else
{
	if(input[i]>(27745+offset0))
{
	if(input[i]==(27747+offset0))
{
	vR[i] = 27747;
}
else
{
	vR[i] = 27746;
}

}
else
{
	if(input[i]==(27745+offset0))
{
	vR[i] = 27745;
}
else
{
	vR[i] = 27744;
}

}

}

}

}

}
else
{
	if(input[i]>(27727+offset0))
{
	if(input[i]>(27735+offset0))
{
	if(input[i]>(27739+offset0))
{
	if(input[i]>(27741+offset0))
{
	if(input[i]==(27743+offset0))
{
	vR[i] = 27743;
}
else
{
	vR[i] = 27742;
}

}
else
{
	if(input[i]==(27741+offset0))
{
	vR[i] = 27741;
}
else
{
	vR[i] = 27740;
}

}

}
else
{
	if(input[i]>(27737+offset0))
{
	if(input[i]==(27739+offset0))
{
	vR[i] = 27739;
}
else
{
	vR[i] = 27738;
}

}
else
{
	if(input[i]==(27737+offset0))
{
	vR[i] = 27737;
}
else
{
	vR[i] = 27736;
}

}

}

}
else
{
	if(input[i]>(27731+offset0))
{
	if(input[i]>(27733+offset0))
{
	if(input[i]==(27735+offset0))
{
	vR[i] = 27735;
}
else
{
	vR[i] = 27734;
}

}
else
{
	if(input[i]==(27733+offset0))
{
	vR[i] = 27733;
}
else
{
	vR[i] = 27732;
}

}

}
else
{
	if(input[i]>(27729+offset0))
{
	if(input[i]==(27731+offset0))
{
	vR[i] = 27731;
}
else
{
	vR[i] = 27730;
}

}
else
{
	if(input[i]==(27729+offset0))
{
	vR[i] = 27729;
}
else
{
	vR[i] = 27728;
}

}

}

}

}
else
{
	if(input[i]>(27719+offset0))
{
	if(input[i]>(27723+offset0))
{
	if(input[i]>(27725+offset0))
{
	if(input[i]==(27727+offset0))
{
	vR[i] = 27727;
}
else
{
	vR[i] = 27726;
}

}
else
{
	if(input[i]==(27725+offset0))
{
	vR[i] = 27725;
}
else
{
	vR[i] = 27724;
}

}

}
else
{
	if(input[i]>(27721+offset0))
{
	if(input[i]==(27723+offset0))
{
	vR[i] = 27723;
}
else
{
	vR[i] = 27722;
}

}
else
{
	if(input[i]==(27721+offset0))
{
	vR[i] = 27721;
}
else
{
	vR[i] = 27720;
}

}

}

}
else
{
	if(input[i]>(27715+offset0))
{
	if(input[i]>(27717+offset0))
{
	if(input[i]==(27719+offset0))
{
	vR[i] = 27719;
}
else
{
	vR[i] = 27718;
}

}
else
{
	if(input[i]==(27717+offset0))
{
	vR[i] = 27717;
}
else
{
	vR[i] = 27716;
}

}

}
else
{
	if(input[i]>(27713+offset0))
{
	if(input[i]==(27715+offset0))
{
	vR[i] = 27715;
}
else
{
	vR[i] = 27714;
}

}
else
{
	if(input[i]==(27713+offset0))
{
	vR[i] = 27713;
}
else
{
	vR[i] = 27712;
}

}

}

}

}

}

}
else
{
	if(input[i]>(27679+offset0))
{
	if(input[i]>(27695+offset0))
{
	if(input[i]>(27703+offset0))
{
	if(input[i]>(27707+offset0))
{
	if(input[i]>(27709+offset0))
{
	if(input[i]==(27711+offset0))
{
	vR[i] = 27711;
}
else
{
	vR[i] = 27710;
}

}
else
{
	if(input[i]==(27709+offset0))
{
	vR[i] = 27709;
}
else
{
	vR[i] = 27708;
}

}

}
else
{
	if(input[i]>(27705+offset0))
{
	if(input[i]==(27707+offset0))
{
	vR[i] = 27707;
}
else
{
	vR[i] = 27706;
}

}
else
{
	if(input[i]==(27705+offset0))
{
	vR[i] = 27705;
}
else
{
	vR[i] = 27704;
}

}

}

}
else
{
	if(input[i]>(27699+offset0))
{
	if(input[i]>(27701+offset0))
{
	if(input[i]==(27703+offset0))
{
	vR[i] = 27703;
}
else
{
	vR[i] = 27702;
}

}
else
{
	if(input[i]==(27701+offset0))
{
	vR[i] = 27701;
}
else
{
	vR[i] = 27700;
}

}

}
else
{
	if(input[i]>(27697+offset0))
{
	if(input[i]==(27699+offset0))
{
	vR[i] = 27699;
}
else
{
	vR[i] = 27698;
}

}
else
{
	if(input[i]==(27697+offset0))
{
	vR[i] = 27697;
}
else
{
	vR[i] = 27696;
}

}

}

}

}
else
{
	if(input[i]>(27687+offset0))
{
	if(input[i]>(27691+offset0))
{
	if(input[i]>(27693+offset0))
{
	if(input[i]==(27695+offset0))
{
	vR[i] = 27695;
}
else
{
	vR[i] = 27694;
}

}
else
{
	if(input[i]==(27693+offset0))
{
	vR[i] = 27693;
}
else
{
	vR[i] = 27692;
}

}

}
else
{
	if(input[i]>(27689+offset0))
{
	if(input[i]==(27691+offset0))
{
	vR[i] = 27691;
}
else
{
	vR[i] = 27690;
}

}
else
{
	if(input[i]==(27689+offset0))
{
	vR[i] = 27689;
}
else
{
	vR[i] = 27688;
}

}

}

}
else
{
	if(input[i]>(27683+offset0))
{
	if(input[i]>(27685+offset0))
{
	if(input[i]==(27687+offset0))
{
	vR[i] = 27687;
}
else
{
	vR[i] = 27686;
}

}
else
{
	if(input[i]==(27685+offset0))
{
	vR[i] = 27685;
}
else
{
	vR[i] = 27684;
}

}

}
else
{
	if(input[i]>(27681+offset0))
{
	if(input[i]==(27683+offset0))
{
	vR[i] = 27683;
}
else
{
	vR[i] = 27682;
}

}
else
{
	if(input[i]==(27681+offset0))
{
	vR[i] = 27681;
}
else
{
	vR[i] = 27680;
}

}

}

}

}

}
else
{
	if(input[i]>(27663+offset0))
{
	if(input[i]>(27671+offset0))
{
	if(input[i]>(27675+offset0))
{
	if(input[i]>(27677+offset0))
{
	if(input[i]==(27679+offset0))
{
	vR[i] = 27679;
}
else
{
	vR[i] = 27678;
}

}
else
{
	if(input[i]==(27677+offset0))
{
	vR[i] = 27677;
}
else
{
	vR[i] = 27676;
}

}

}
else
{
	if(input[i]>(27673+offset0))
{
	if(input[i]==(27675+offset0))
{
	vR[i] = 27675;
}
else
{
	vR[i] = 27674;
}

}
else
{
	if(input[i]==(27673+offset0))
{
	vR[i] = 27673;
}
else
{
	vR[i] = 27672;
}

}

}

}
else
{
	if(input[i]>(27667+offset0))
{
	if(input[i]>(27669+offset0))
{
	if(input[i]==(27671+offset0))
{
	vR[i] = 27671;
}
else
{
	vR[i] = 27670;
}

}
else
{
	if(input[i]==(27669+offset0))
{
	vR[i] = 27669;
}
else
{
	vR[i] = 27668;
}

}

}
else
{
	if(input[i]>(27665+offset0))
{
	if(input[i]==(27667+offset0))
{
	vR[i] = 27667;
}
else
{
	vR[i] = 27666;
}

}
else
{
	if(input[i]==(27665+offset0))
{
	vR[i] = 27665;
}
else
{
	vR[i] = 27664;
}

}

}

}

}
else
{
	if(input[i]>(27655+offset0))
{
	if(input[i]>(27659+offset0))
{
	if(input[i]>(27661+offset0))
{
	if(input[i]==(27663+offset0))
{
	vR[i] = 27663;
}
else
{
	vR[i] = 27662;
}

}
else
{
	if(input[i]==(27661+offset0))
{
	vR[i] = 27661;
}
else
{
	vR[i] = 27660;
}

}

}
else
{
	if(input[i]>(27657+offset0))
{
	if(input[i]==(27659+offset0))
{
	vR[i] = 27659;
}
else
{
	vR[i] = 27658;
}

}
else
{
	if(input[i]==(27657+offset0))
{
	vR[i] = 27657;
}
else
{
	vR[i] = 27656;
}

}

}

}
else
{
	if(input[i]>(27651+offset0))
{
	if(input[i]>(27653+offset0))
{
	if(input[i]==(27655+offset0))
{
	vR[i] = 27655;
}
else
{
	vR[i] = 27654;
}

}
else
{
	if(input[i]==(27653+offset0))
{
	vR[i] = 27653;
}
else
{
	vR[i] = 27652;
}

}

}
else
{
	if(input[i]>(27649+offset0))
{
	if(input[i]==(27651+offset0))
{
	vR[i] = 27651;
}
else
{
	vR[i] = 27650;
}

}
else
{
	if(input[i]==(27649+offset0))
{
	vR[i] = 27649;
}
else
{
	vR[i] = 27648;
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
	if(input[i]>(27135+offset0))
{
	if(input[i]>(27391+offset0))
{
	if(input[i]>(27519+offset0))
{
	if(input[i]>(27583+offset0))
{
	if(input[i]>(27615+offset0))
{
	if(input[i]>(27631+offset0))
{
	if(input[i]>(27639+offset0))
{
	if(input[i]>(27643+offset0))
{
	if(input[i]>(27645+offset0))
{
	if(input[i]==(27647+offset0))
{
	vR[i] = 27647;
}
else
{
	vR[i] = 27646;
}

}
else
{
	if(input[i]==(27645+offset0))
{
	vR[i] = 27645;
}
else
{
	vR[i] = 27644;
}

}

}
else
{
	if(input[i]>(27641+offset0))
{
	if(input[i]==(27643+offset0))
{
	vR[i] = 27643;
}
else
{
	vR[i] = 27642;
}

}
else
{
	if(input[i]==(27641+offset0))
{
	vR[i] = 27641;
}
else
{
	vR[i] = 27640;
}

}

}

}
else
{
	if(input[i]>(27635+offset0))
{
	if(input[i]>(27637+offset0))
{
	if(input[i]==(27639+offset0))
{
	vR[i] = 27639;
}
else
{
	vR[i] = 27638;
}

}
else
{
	if(input[i]==(27637+offset0))
{
	vR[i] = 27637;
}
else
{
	vR[i] = 27636;
}

}

}
else
{
	if(input[i]>(27633+offset0))
{
	if(input[i]==(27635+offset0))
{
	vR[i] = 27635;
}
else
{
	vR[i] = 27634;
}

}
else
{
	if(input[i]==(27633+offset0))
{
	vR[i] = 27633;
}
else
{
	vR[i] = 27632;
}

}

}

}

}
else
{
	if(input[i]>(27623+offset0))
{
	if(input[i]>(27627+offset0))
{
	if(input[i]>(27629+offset0))
{
	if(input[i]==(27631+offset0))
{
	vR[i] = 27631;
}
else
{
	vR[i] = 27630;
}

}
else
{
	if(input[i]==(27629+offset0))
{
	vR[i] = 27629;
}
else
{
	vR[i] = 27628;
}

}

}
else
{
	if(input[i]>(27625+offset0))
{
	if(input[i]==(27627+offset0))
{
	vR[i] = 27627;
}
else
{
	vR[i] = 27626;
}

}
else
{
	if(input[i]==(27625+offset0))
{
	vR[i] = 27625;
}
else
{
	vR[i] = 27624;
}

}

}

}
else
{
	if(input[i]>(27619+offset0))
{
	if(input[i]>(27621+offset0))
{
	if(input[i]==(27623+offset0))
{
	vR[i] = 27623;
}
else
{
	vR[i] = 27622;
}

}
else
{
	if(input[i]==(27621+offset0))
{
	vR[i] = 27621;
}
else
{
	vR[i] = 27620;
}

}

}
else
{
	if(input[i]>(27617+offset0))
{
	if(input[i]==(27619+offset0))
{
	vR[i] = 27619;
}
else
{
	vR[i] = 27618;
}

}
else
{
	if(input[i]==(27617+offset0))
{
	vR[i] = 27617;
}
else
{
	vR[i] = 27616;
}

}

}

}

}

}
else
{
	if(input[i]>(27599+offset0))
{
	if(input[i]>(27607+offset0))
{
	if(input[i]>(27611+offset0))
{
	if(input[i]>(27613+offset0))
{
	if(input[i]==(27615+offset0))
{
	vR[i] = 27615;
}
else
{
	vR[i] = 27614;
}

}
else
{
	if(input[i]==(27613+offset0))
{
	vR[i] = 27613;
}
else
{
	vR[i] = 27612;
}

}

}
else
{
	if(input[i]>(27609+offset0))
{
	if(input[i]==(27611+offset0))
{
	vR[i] = 27611;
}
else
{
	vR[i] = 27610;
}

}
else
{
	if(input[i]==(27609+offset0))
{
	vR[i] = 27609;
}
else
{
	vR[i] = 27608;
}

}

}

}
else
{
	if(input[i]>(27603+offset0))
{
	if(input[i]>(27605+offset0))
{
	if(input[i]==(27607+offset0))
{
	vR[i] = 27607;
}
else
{
	vR[i] = 27606;
}

}
else
{
	if(input[i]==(27605+offset0))
{
	vR[i] = 27605;
}
else
{
	vR[i] = 27604;
}

}

}
else
{
	if(input[i]>(27601+offset0))
{
	if(input[i]==(27603+offset0))
{
	vR[i] = 27603;
}
else
{
	vR[i] = 27602;
}

}
else
{
	if(input[i]==(27601+offset0))
{
	vR[i] = 27601;
}
else
{
	vR[i] = 27600;
}

}

}

}

}
else
{
	if(input[i]>(27591+offset0))
{
	if(input[i]>(27595+offset0))
{
	if(input[i]>(27597+offset0))
{
	if(input[i]==(27599+offset0))
{
	vR[i] = 27599;
}
else
{
	vR[i] = 27598;
}

}
else
{
	if(input[i]==(27597+offset0))
{
	vR[i] = 27597;
}
else
{
	vR[i] = 27596;
}

}

}
else
{
	if(input[i]>(27593+offset0))
{
	if(input[i]==(27595+offset0))
{
	vR[i] = 27595;
}
else
{
	vR[i] = 27594;
}

}
else
{
	if(input[i]==(27593+offset0))
{
	vR[i] = 27593;
}
else
{
	vR[i] = 27592;
}

}

}

}
else
{
	if(input[i]>(27587+offset0))
{
	if(input[i]>(27589+offset0))
{
	if(input[i]==(27591+offset0))
{
	vR[i] = 27591;
}
else
{
	vR[i] = 27590;
}

}
else
{
	if(input[i]==(27589+offset0))
{
	vR[i] = 27589;
}
else
{
	vR[i] = 27588;
}

}

}
else
{
	if(input[i]>(27585+offset0))
{
	if(input[i]==(27587+offset0))
{
	vR[i] = 27587;
}
else
{
	vR[i] = 27586;
}

}
else
{
	if(input[i]==(27585+offset0))
{
	vR[i] = 27585;
}
else
{
	vR[i] = 27584;
}

}

}

}

}

}

}
else
{
	if(input[i]>(27551+offset0))
{
	if(input[i]>(27567+offset0))
{
	if(input[i]>(27575+offset0))
{
	if(input[i]>(27579+offset0))
{
	if(input[i]>(27581+offset0))
{
	if(input[i]==(27583+offset0))
{
	vR[i] = 27583;
}
else
{
	vR[i] = 27582;
}

}
else
{
	if(input[i]==(27581+offset0))
{
	vR[i] = 27581;
}
else
{
	vR[i] = 27580;
}

}

}
else
{
	if(input[i]>(27577+offset0))
{
	if(input[i]==(27579+offset0))
{
	vR[i] = 27579;
}
else
{
	vR[i] = 27578;
}

}
else
{
	if(input[i]==(27577+offset0))
{
	vR[i] = 27577;
}
else
{
	vR[i] = 27576;
}

}

}

}
else
{
	if(input[i]>(27571+offset0))
{
	if(input[i]>(27573+offset0))
{
	if(input[i]==(27575+offset0))
{
	vR[i] = 27575;
}
else
{
	vR[i] = 27574;
}

}
else
{
	if(input[i]==(27573+offset0))
{
	vR[i] = 27573;
}
else
{
	vR[i] = 27572;
}

}

}
else
{
	if(input[i]>(27569+offset0))
{
	if(input[i]==(27571+offset0))
{
	vR[i] = 27571;
}
else
{
	vR[i] = 27570;
}

}
else
{
	if(input[i]==(27569+offset0))
{
	vR[i] = 27569;
}
else
{
	vR[i] = 27568;
}

}

}

}

}
else
{
	if(input[i]>(27559+offset0))
{
	if(input[i]>(27563+offset0))
{
	if(input[i]>(27565+offset0))
{
	if(input[i]==(27567+offset0))
{
	vR[i] = 27567;
}
else
{
	vR[i] = 27566;
}

}
else
{
	if(input[i]==(27565+offset0))
{
	vR[i] = 27565;
}
else
{
	vR[i] = 27564;
}

}

}
else
{
	if(input[i]>(27561+offset0))
{
	if(input[i]==(27563+offset0))
{
	vR[i] = 27563;
}
else
{
	vR[i] = 27562;
}

}
else
{
	if(input[i]==(27561+offset0))
{
	vR[i] = 27561;
}
else
{
	vR[i] = 27560;
}

}

}

}
else
{
	if(input[i]>(27555+offset0))
{
	if(input[i]>(27557+offset0))
{
	if(input[i]==(27559+offset0))
{
	vR[i] = 27559;
}
else
{
	vR[i] = 27558;
}

}
else
{
	if(input[i]==(27557+offset0))
{
	vR[i] = 27557;
}
else
{
	vR[i] = 27556;
}

}

}
else
{
	if(input[i]>(27553+offset0))
{
	if(input[i]==(27555+offset0))
{
	vR[i] = 27555;
}
else
{
	vR[i] = 27554;
}

}
else
{
	if(input[i]==(27553+offset0))
{
	vR[i] = 27553;
}
else
{
	vR[i] = 27552;
}

}

}

}

}

}
else
{
	if(input[i]>(27535+offset0))
{
	if(input[i]>(27543+offset0))
{
	if(input[i]>(27547+offset0))
{
	if(input[i]>(27549+offset0))
{
	if(input[i]==(27551+offset0))
{
	vR[i] = 27551;
}
else
{
	vR[i] = 27550;
}

}
else
{
	if(input[i]==(27549+offset0))
{
	vR[i] = 27549;
}
else
{
	vR[i] = 27548;
}

}

}
else
{
	if(input[i]>(27545+offset0))
{
	if(input[i]==(27547+offset0))
{
	vR[i] = 27547;
}
else
{
	vR[i] = 27546;
}

}
else
{
	if(input[i]==(27545+offset0))
{
	vR[i] = 27545;
}
else
{
	vR[i] = 27544;
}

}

}

}
else
{
	if(input[i]>(27539+offset0))
{
	if(input[i]>(27541+offset0))
{
	if(input[i]==(27543+offset0))
{
	vR[i] = 27543;
}
else
{
	vR[i] = 27542;
}

}
else
{
	if(input[i]==(27541+offset0))
{
	vR[i] = 27541;
}
else
{
	vR[i] = 27540;
}

}

}
else
{
	if(input[i]>(27537+offset0))
{
	if(input[i]==(27539+offset0))
{
	vR[i] = 27539;
}
else
{
	vR[i] = 27538;
}

}
else
{
	if(input[i]==(27537+offset0))
{
	vR[i] = 27537;
}
else
{
	vR[i] = 27536;
}

}

}

}

}
else
{
	if(input[i]>(27527+offset0))
{
	if(input[i]>(27531+offset0))
{
	if(input[i]>(27533+offset0))
{
	if(input[i]==(27535+offset0))
{
	vR[i] = 27535;
}
else
{
	vR[i] = 27534;
}

}
else
{
	if(input[i]==(27533+offset0))
{
	vR[i] = 27533;
}
else
{
	vR[i] = 27532;
}

}

}
else
{
	if(input[i]>(27529+offset0))
{
	if(input[i]==(27531+offset0))
{
	vR[i] = 27531;
}
else
{
	vR[i] = 27530;
}

}
else
{
	if(input[i]==(27529+offset0))
{
	vR[i] = 27529;
}
else
{
	vR[i] = 27528;
}

}

}

}
else
{
	if(input[i]>(27523+offset0))
{
	if(input[i]>(27525+offset0))
{
	if(input[i]==(27527+offset0))
{
	vR[i] = 27527;
}
else
{
	vR[i] = 27526;
}

}
else
{
	if(input[i]==(27525+offset0))
{
	vR[i] = 27525;
}
else
{
	vR[i] = 27524;
}

}

}
else
{
	if(input[i]>(27521+offset0))
{
	if(input[i]==(27523+offset0))
{
	vR[i] = 27523;
}
else
{
	vR[i] = 27522;
}

}
else
{
	if(input[i]==(27521+offset0))
{
	vR[i] = 27521;
}
else
{
	vR[i] = 27520;
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
	if(input[i]>(27455+offset0))
{
	if(input[i]>(27487+offset0))
{
	if(input[i]>(27503+offset0))
{
	if(input[i]>(27511+offset0))
{
	if(input[i]>(27515+offset0))
{
	if(input[i]>(27517+offset0))
{
	if(input[i]==(27519+offset0))
{
	vR[i] = 27519;
}
else
{
	vR[i] = 27518;
}

}
else
{
	if(input[i]==(27517+offset0))
{
	vR[i] = 27517;
}
else
{
	vR[i] = 27516;
}

}

}
else
{
	if(input[i]>(27513+offset0))
{
	if(input[i]==(27515+offset0))
{
	vR[i] = 27515;
}
else
{
	vR[i] = 27514;
}

}
else
{
	if(input[i]==(27513+offset0))
{
	vR[i] = 27513;
}
else
{
	vR[i] = 27512;
}

}

}

}
else
{
	if(input[i]>(27507+offset0))
{
	if(input[i]>(27509+offset0))
{
	if(input[i]==(27511+offset0))
{
	vR[i] = 27511;
}
else
{
	vR[i] = 27510;
}

}
else
{
	if(input[i]==(27509+offset0))
{
	vR[i] = 27509;
}
else
{
	vR[i] = 27508;
}

}

}
else
{
	if(input[i]>(27505+offset0))
{
	if(input[i]==(27507+offset0))
{
	vR[i] = 27507;
}
else
{
	vR[i] = 27506;
}

}
else
{
	if(input[i]==(27505+offset0))
{
	vR[i] = 27505;
}
else
{
	vR[i] = 27504;
}

}

}

}

}
else
{
	if(input[i]>(27495+offset0))
{
	if(input[i]>(27499+offset0))
{
	if(input[i]>(27501+offset0))
{
	if(input[i]==(27503+offset0))
{
	vR[i] = 27503;
}
else
{
	vR[i] = 27502;
}

}
else
{
	if(input[i]==(27501+offset0))
{
	vR[i] = 27501;
}
else
{
	vR[i] = 27500;
}

}

}
else
{
	if(input[i]>(27497+offset0))
{
	if(input[i]==(27499+offset0))
{
	vR[i] = 27499;
}
else
{
	vR[i] = 27498;
}

}
else
{
	if(input[i]==(27497+offset0))
{
	vR[i] = 27497;
}
else
{
	vR[i] = 27496;
}

}

}

}
else
{
	if(input[i]>(27491+offset0))
{
	if(input[i]>(27493+offset0))
{
	if(input[i]==(27495+offset0))
{
	vR[i] = 27495;
}
else
{
	vR[i] = 27494;
}

}
else
{
	if(input[i]==(27493+offset0))
{
	vR[i] = 27493;
}
else
{
	vR[i] = 27492;
}

}

}
else
{
	if(input[i]>(27489+offset0))
{
	if(input[i]==(27491+offset0))
{
	vR[i] = 27491;
}
else
{
	vR[i] = 27490;
}

}
else
{
	if(input[i]==(27489+offset0))
{
	vR[i] = 27489;
}
else
{
	vR[i] = 27488;
}

}

}

}

}

}
else
{
	if(input[i]>(27471+offset0))
{
	if(input[i]>(27479+offset0))
{
	if(input[i]>(27483+offset0))
{
	if(input[i]>(27485+offset0))
{
	if(input[i]==(27487+offset0))
{
	vR[i] = 27487;
}
else
{
	vR[i] = 27486;
}

}
else
{
	if(input[i]==(27485+offset0))
{
	vR[i] = 27485;
}
else
{
	vR[i] = 27484;
}

}

}
else
{
	if(input[i]>(27481+offset0))
{
	if(input[i]==(27483+offset0))
{
	vR[i] = 27483;
}
else
{
	vR[i] = 27482;
}

}
else
{
	if(input[i]==(27481+offset0))
{
	vR[i] = 27481;
}
else
{
	vR[i] = 27480;
}

}

}

}
else
{
	if(input[i]>(27475+offset0))
{
	if(input[i]>(27477+offset0))
{
	if(input[i]==(27479+offset0))
{
	vR[i] = 27479;
}
else
{
	vR[i] = 27478;
}

}
else
{
	if(input[i]==(27477+offset0))
{
	vR[i] = 27477;
}
else
{
	vR[i] = 27476;
}

}

}
else
{
	if(input[i]>(27473+offset0))
{
	if(input[i]==(27475+offset0))
{
	vR[i] = 27475;
}
else
{
	vR[i] = 27474;
}

}
else
{
	if(input[i]==(27473+offset0))
{
	vR[i] = 27473;
}
else
{
	vR[i] = 27472;
}

}

}

}

}
else
{
	if(input[i]>(27463+offset0))
{
	if(input[i]>(27467+offset0))
{
	if(input[i]>(27469+offset0))
{
	if(input[i]==(27471+offset0))
{
	vR[i] = 27471;
}
else
{
	vR[i] = 27470;
}

}
else
{
	if(input[i]==(27469+offset0))
{
	vR[i] = 27469;
}
else
{
	vR[i] = 27468;
}

}

}
else
{
	if(input[i]>(27465+offset0))
{
	if(input[i]==(27467+offset0))
{
	vR[i] = 27467;
}
else
{
	vR[i] = 27466;
}

}
else
{
	if(input[i]==(27465+offset0))
{
	vR[i] = 27465;
}
else
{
	vR[i] = 27464;
}

}

}

}
else
{
	if(input[i]>(27459+offset0))
{
	if(input[i]>(27461+offset0))
{
	if(input[i]==(27463+offset0))
{
	vR[i] = 27463;
}
else
{
	vR[i] = 27462;
}

}
else
{
	if(input[i]==(27461+offset0))
{
	vR[i] = 27461;
}
else
{
	vR[i] = 27460;
}

}

}
else
{
	if(input[i]>(27457+offset0))
{
	if(input[i]==(27459+offset0))
{
	vR[i] = 27459;
}
else
{
	vR[i] = 27458;
}

}
else
{
	if(input[i]==(27457+offset0))
{
	vR[i] = 27457;
}
else
{
	vR[i] = 27456;
}

}

}

}

}

}

}
else
{
	if(input[i]>(27423+offset0))
{
	if(input[i]>(27439+offset0))
{
	if(input[i]>(27447+offset0))
{
	if(input[i]>(27451+offset0))
{
	if(input[i]>(27453+offset0))
{
	if(input[i]==(27455+offset0))
{
	vR[i] = 27455;
}
else
{
	vR[i] = 27454;
}

}
else
{
	if(input[i]==(27453+offset0))
{
	vR[i] = 27453;
}
else
{
	vR[i] = 27452;
}

}

}
else
{
	if(input[i]>(27449+offset0))
{
	if(input[i]==(27451+offset0))
{
	vR[i] = 27451;
}
else
{
	vR[i] = 27450;
}

}
else
{
	if(input[i]==(27449+offset0))
{
	vR[i] = 27449;
}
else
{
	vR[i] = 27448;
}

}

}

}
else
{
	if(input[i]>(27443+offset0))
{
	if(input[i]>(27445+offset0))
{
	if(input[i]==(27447+offset0))
{
	vR[i] = 27447;
}
else
{
	vR[i] = 27446;
}

}
else
{
	if(input[i]==(27445+offset0))
{
	vR[i] = 27445;
}
else
{
	vR[i] = 27444;
}

}

}
else
{
	if(input[i]>(27441+offset0))
{
	if(input[i]==(27443+offset0))
{
	vR[i] = 27443;
}
else
{
	vR[i] = 27442;
}

}
else
{
	if(input[i]==(27441+offset0))
{
	vR[i] = 27441;
}
else
{
	vR[i] = 27440;
}

}

}

}

}
else
{
	if(input[i]>(27431+offset0))
{
	if(input[i]>(27435+offset0))
{
	if(input[i]>(27437+offset0))
{
	if(input[i]==(27439+offset0))
{
	vR[i] = 27439;
}
else
{
	vR[i] = 27438;
}

}
else
{
	if(input[i]==(27437+offset0))
{
	vR[i] = 27437;
}
else
{
	vR[i] = 27436;
}

}

}
else
{
	if(input[i]>(27433+offset0))
{
	if(input[i]==(27435+offset0))
{
	vR[i] = 27435;
}
else
{
	vR[i] = 27434;
}

}
else
{
	if(input[i]==(27433+offset0))
{
	vR[i] = 27433;
}
else
{
	vR[i] = 27432;
}

}

}

}
else
{
	if(input[i]>(27427+offset0))
{
	if(input[i]>(27429+offset0))
{
	if(input[i]==(27431+offset0))
{
	vR[i] = 27431;
}
else
{
	vR[i] = 27430;
}

}
else
{
	if(input[i]==(27429+offset0))
{
	vR[i] = 27429;
}
else
{
	vR[i] = 27428;
}

}

}
else
{
	if(input[i]>(27425+offset0))
{
	if(input[i]==(27427+offset0))
{
	vR[i] = 27427;
}
else
{
	vR[i] = 27426;
}

}
else
{
	if(input[i]==(27425+offset0))
{
	vR[i] = 27425;
}
else
{
	vR[i] = 27424;
}

}

}

}

}

}
else
{
	if(input[i]>(27407+offset0))
{
	if(input[i]>(27415+offset0))
{
	if(input[i]>(27419+offset0))
{
	if(input[i]>(27421+offset0))
{
	if(input[i]==(27423+offset0))
{
	vR[i] = 27423;
}
else
{
	vR[i] = 27422;
}

}
else
{
	if(input[i]==(27421+offset0))
{
	vR[i] = 27421;
}
else
{
	vR[i] = 27420;
}

}

}
else
{
	if(input[i]>(27417+offset0))
{
	if(input[i]==(27419+offset0))
{
	vR[i] = 27419;
}
else
{
	vR[i] = 27418;
}

}
else
{
	if(input[i]==(27417+offset0))
{
	vR[i] = 27417;
}
else
{
	vR[i] = 27416;
}

}

}

}
else
{
	if(input[i]>(27411+offset0))
{
	if(input[i]>(27413+offset0))
{
	if(input[i]==(27415+offset0))
{
	vR[i] = 27415;
}
else
{
	vR[i] = 27414;
}

}
else
{
	if(input[i]==(27413+offset0))
{
	vR[i] = 27413;
}
else
{
	vR[i] = 27412;
}

}

}
else
{
	if(input[i]>(27409+offset0))
{
	if(input[i]==(27411+offset0))
{
	vR[i] = 27411;
}
else
{
	vR[i] = 27410;
}

}
else
{
	if(input[i]==(27409+offset0))
{
	vR[i] = 27409;
}
else
{
	vR[i] = 27408;
}

}

}

}

}
else
{
	if(input[i]>(27399+offset0))
{
	if(input[i]>(27403+offset0))
{
	if(input[i]>(27405+offset0))
{
	if(input[i]==(27407+offset0))
{
	vR[i] = 27407;
}
else
{
	vR[i] = 27406;
}

}
else
{
	if(input[i]==(27405+offset0))
{
	vR[i] = 27405;
}
else
{
	vR[i] = 27404;
}

}

}
else
{
	if(input[i]>(27401+offset0))
{
	if(input[i]==(27403+offset0))
{
	vR[i] = 27403;
}
else
{
	vR[i] = 27402;
}

}
else
{
	if(input[i]==(27401+offset0))
{
	vR[i] = 27401;
}
else
{
	vR[i] = 27400;
}

}

}

}
else
{
	if(input[i]>(27395+offset0))
{
	if(input[i]>(27397+offset0))
{
	if(input[i]==(27399+offset0))
{
	vR[i] = 27399;
}
else
{
	vR[i] = 27398;
}

}
else
{
	if(input[i]==(27397+offset0))
{
	vR[i] = 27397;
}
else
{
	vR[i] = 27396;
}

}

}
else
{
	if(input[i]>(27393+offset0))
{
	if(input[i]==(27395+offset0))
{
	vR[i] = 27395;
}
else
{
	vR[i] = 27394;
}

}
else
{
	if(input[i]==(27393+offset0))
{
	vR[i] = 27393;
}
else
{
	vR[i] = 27392;
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
	if(input[i]>(27263+offset0))
{
	if(input[i]>(27327+offset0))
{
	if(input[i]>(27359+offset0))
{
	if(input[i]>(27375+offset0))
{
	if(input[i]>(27383+offset0))
{
	if(input[i]>(27387+offset0))
{
	if(input[i]>(27389+offset0))
{
	if(input[i]==(27391+offset0))
{
	vR[i] = 27391;
}
else
{
	vR[i] = 27390;
}

}
else
{
	if(input[i]==(27389+offset0))
{
	vR[i] = 27389;
}
else
{
	vR[i] = 27388;
}

}

}
else
{
	if(input[i]>(27385+offset0))
{
	if(input[i]==(27387+offset0))
{
	vR[i] = 27387;
}
else
{
	vR[i] = 27386;
}

}
else
{
	if(input[i]==(27385+offset0))
{
	vR[i] = 27385;
}
else
{
	vR[i] = 27384;
}

}

}

}
else
{
	if(input[i]>(27379+offset0))
{
	if(input[i]>(27381+offset0))
{
	if(input[i]==(27383+offset0))
{
	vR[i] = 27383;
}
else
{
	vR[i] = 27382;
}

}
else
{
	if(input[i]==(27381+offset0))
{
	vR[i] = 27381;
}
else
{
	vR[i] = 27380;
}

}

}
else
{
	if(input[i]>(27377+offset0))
{
	if(input[i]==(27379+offset0))
{
	vR[i] = 27379;
}
else
{
	vR[i] = 27378;
}

}
else
{
	if(input[i]==(27377+offset0))
{
	vR[i] = 27377;
}
else
{
	vR[i] = 27376;
}

}

}

}

}
else
{
	if(input[i]>(27367+offset0))
{
	if(input[i]>(27371+offset0))
{
	if(input[i]>(27373+offset0))
{
	if(input[i]==(27375+offset0))
{
	vR[i] = 27375;
}
else
{
	vR[i] = 27374;
}

}
else
{
	if(input[i]==(27373+offset0))
{
	vR[i] = 27373;
}
else
{
	vR[i] = 27372;
}

}

}
else
{
	if(input[i]>(27369+offset0))
{
	if(input[i]==(27371+offset0))
{
	vR[i] = 27371;
}
else
{
	vR[i] = 27370;
}

}
else
{
	if(input[i]==(27369+offset0))
{
	vR[i] = 27369;
}
else
{
	vR[i] = 27368;
}

}

}

}
else
{
	if(input[i]>(27363+offset0))
{
	if(input[i]>(27365+offset0))
{
	if(input[i]==(27367+offset0))
{
	vR[i] = 27367;
}
else
{
	vR[i] = 27366;
}

}
else
{
	if(input[i]==(27365+offset0))
{
	vR[i] = 27365;
}
else
{
	vR[i] = 27364;
}

}

}
else
{
	if(input[i]>(27361+offset0))
{
	if(input[i]==(27363+offset0))
{
	vR[i] = 27363;
}
else
{
	vR[i] = 27362;
}

}
else
{
	if(input[i]==(27361+offset0))
{
	vR[i] = 27361;
}
else
{
	vR[i] = 27360;
}

}

}

}

}

}
else
{
	if(input[i]>(27343+offset0))
{
	if(input[i]>(27351+offset0))
{
	if(input[i]>(27355+offset0))
{
	if(input[i]>(27357+offset0))
{
	if(input[i]==(27359+offset0))
{
	vR[i] = 27359;
}
else
{
	vR[i] = 27358;
}

}
else
{
	if(input[i]==(27357+offset0))
{
	vR[i] = 27357;
}
else
{
	vR[i] = 27356;
}

}

}
else
{
	if(input[i]>(27353+offset0))
{
	if(input[i]==(27355+offset0))
{
	vR[i] = 27355;
}
else
{
	vR[i] = 27354;
}

}
else
{
	if(input[i]==(27353+offset0))
{
	vR[i] = 27353;
}
else
{
	vR[i] = 27352;
}

}

}

}
else
{
	if(input[i]>(27347+offset0))
{
	if(input[i]>(27349+offset0))
{
	if(input[i]==(27351+offset0))
{
	vR[i] = 27351;
}
else
{
	vR[i] = 27350;
}

}
else
{
	if(input[i]==(27349+offset0))
{
	vR[i] = 27349;
}
else
{
	vR[i] = 27348;
}

}

}
else
{
	if(input[i]>(27345+offset0))
{
	if(input[i]==(27347+offset0))
{
	vR[i] = 27347;
}
else
{
	vR[i] = 27346;
}

}
else
{
	if(input[i]==(27345+offset0))
{
	vR[i] = 27345;
}
else
{
	vR[i] = 27344;
}

}

}

}

}
else
{
	if(input[i]>(27335+offset0))
{
	if(input[i]>(27339+offset0))
{
	if(input[i]>(27341+offset0))
{
	if(input[i]==(27343+offset0))
{
	vR[i] = 27343;
}
else
{
	vR[i] = 27342;
}

}
else
{
	if(input[i]==(27341+offset0))
{
	vR[i] = 27341;
}
else
{
	vR[i] = 27340;
}

}

}
else
{
	if(input[i]>(27337+offset0))
{
	if(input[i]==(27339+offset0))
{
	vR[i] = 27339;
}
else
{
	vR[i] = 27338;
}

}
else
{
	if(input[i]==(27337+offset0))
{
	vR[i] = 27337;
}
else
{
	vR[i] = 27336;
}

}

}

}
else
{
	if(input[i]>(27331+offset0))
{
	if(input[i]>(27333+offset0))
{
	if(input[i]==(27335+offset0))
{
	vR[i] = 27335;
}
else
{
	vR[i] = 27334;
}

}
else
{
	if(input[i]==(27333+offset0))
{
	vR[i] = 27333;
}
else
{
	vR[i] = 27332;
}

}

}
else
{
	if(input[i]>(27329+offset0))
{
	if(input[i]==(27331+offset0))
{
	vR[i] = 27331;
}
else
{
	vR[i] = 27330;
}

}
else
{
	if(input[i]==(27329+offset0))
{
	vR[i] = 27329;
}
else
{
	vR[i] = 27328;
}

}

}

}

}

}

}
else
{
	if(input[i]>(27295+offset0))
{
	if(input[i]>(27311+offset0))
{
	if(input[i]>(27319+offset0))
{
	if(input[i]>(27323+offset0))
{
	if(input[i]>(27325+offset0))
{
	if(input[i]==(27327+offset0))
{
	vR[i] = 27327;
}
else
{
	vR[i] = 27326;
}

}
else
{
	if(input[i]==(27325+offset0))
{
	vR[i] = 27325;
}
else
{
	vR[i] = 27324;
}

}

}
else
{
	if(input[i]>(27321+offset0))
{
	if(input[i]==(27323+offset0))
{
	vR[i] = 27323;
}
else
{
	vR[i] = 27322;
}

}
else
{
	if(input[i]==(27321+offset0))
{
	vR[i] = 27321;
}
else
{
	vR[i] = 27320;
}

}

}

}
else
{
	if(input[i]>(27315+offset0))
{
	if(input[i]>(27317+offset0))
{
	if(input[i]==(27319+offset0))
{
	vR[i] = 27319;
}
else
{
	vR[i] = 27318;
}

}
else
{
	if(input[i]==(27317+offset0))
{
	vR[i] = 27317;
}
else
{
	vR[i] = 27316;
}

}

}
else
{
	if(input[i]>(27313+offset0))
{
	if(input[i]==(27315+offset0))
{
	vR[i] = 27315;
}
else
{
	vR[i] = 27314;
}

}
else
{
	if(input[i]==(27313+offset0))
{
	vR[i] = 27313;
}
else
{
	vR[i] = 27312;
}

}

}

}

}
else
{
	if(input[i]>(27303+offset0))
{
	if(input[i]>(27307+offset0))
{
	if(input[i]>(27309+offset0))
{
	if(input[i]==(27311+offset0))
{
	vR[i] = 27311;
}
else
{
	vR[i] = 27310;
}

}
else
{
	if(input[i]==(27309+offset0))
{
	vR[i] = 27309;
}
else
{
	vR[i] = 27308;
}

}

}
else
{
	if(input[i]>(27305+offset0))
{
	if(input[i]==(27307+offset0))
{
	vR[i] = 27307;
}
else
{
	vR[i] = 27306;
}

}
else
{
	if(input[i]==(27305+offset0))
{
	vR[i] = 27305;
}
else
{
	vR[i] = 27304;
}

}

}

}
else
{
	if(input[i]>(27299+offset0))
{
	if(input[i]>(27301+offset0))
{
	if(input[i]==(27303+offset0))
{
	vR[i] = 27303;
}
else
{
	vR[i] = 27302;
}

}
else
{
	if(input[i]==(27301+offset0))
{
	vR[i] = 27301;
}
else
{
	vR[i] = 27300;
}

}

}
else
{
	if(input[i]>(27297+offset0))
{
	if(input[i]==(27299+offset0))
{
	vR[i] = 27299;
}
else
{
	vR[i] = 27298;
}

}
else
{
	if(input[i]==(27297+offset0))
{
	vR[i] = 27297;
}
else
{
	vR[i] = 27296;
}

}

}

}

}

}
else
{
	if(input[i]>(27279+offset0))
{
	if(input[i]>(27287+offset0))
{
	if(input[i]>(27291+offset0))
{
	if(input[i]>(27293+offset0))
{
	if(input[i]==(27295+offset0))
{
	vR[i] = 27295;
}
else
{
	vR[i] = 27294;
}

}
else
{
	if(input[i]==(27293+offset0))
{
	vR[i] = 27293;
}
else
{
	vR[i] = 27292;
}

}

}
else
{
	if(input[i]>(27289+offset0))
{
	if(input[i]==(27291+offset0))
{
	vR[i] = 27291;
}
else
{
	vR[i] = 27290;
}

}
else
{
	if(input[i]==(27289+offset0))
{
	vR[i] = 27289;
}
else
{
	vR[i] = 27288;
}

}

}

}
else
{
	if(input[i]>(27283+offset0))
{
	if(input[i]>(27285+offset0))
{
	if(input[i]==(27287+offset0))
{
	vR[i] = 27287;
}
else
{
	vR[i] = 27286;
}

}
else
{
	if(input[i]==(27285+offset0))
{
	vR[i] = 27285;
}
else
{
	vR[i] = 27284;
}

}

}
else
{
	if(input[i]>(27281+offset0))
{
	if(input[i]==(27283+offset0))
{
	vR[i] = 27283;
}
else
{
	vR[i] = 27282;
}

}
else
{
	if(input[i]==(27281+offset0))
{
	vR[i] = 27281;
}
else
{
	vR[i] = 27280;
}

}

}

}

}
else
{
	if(input[i]>(27271+offset0))
{
	if(input[i]>(27275+offset0))
{
	if(input[i]>(27277+offset0))
{
	if(input[i]==(27279+offset0))
{
	vR[i] = 27279;
}
else
{
	vR[i] = 27278;
}

}
else
{
	if(input[i]==(27277+offset0))
{
	vR[i] = 27277;
}
else
{
	vR[i] = 27276;
}

}

}
else
{
	if(input[i]>(27273+offset0))
{
	if(input[i]==(27275+offset0))
{
	vR[i] = 27275;
}
else
{
	vR[i] = 27274;
}

}
else
{
	if(input[i]==(27273+offset0))
{
	vR[i] = 27273;
}
else
{
	vR[i] = 27272;
}

}

}

}
else
{
	if(input[i]>(27267+offset0))
{
	if(input[i]>(27269+offset0))
{
	if(input[i]==(27271+offset0))
{
	vR[i] = 27271;
}
else
{
	vR[i] = 27270;
}

}
else
{
	if(input[i]==(27269+offset0))
{
	vR[i] = 27269;
}
else
{
	vR[i] = 27268;
}

}

}
else
{
	if(input[i]>(27265+offset0))
{
	if(input[i]==(27267+offset0))
{
	vR[i] = 27267;
}
else
{
	vR[i] = 27266;
}

}
else
{
	if(input[i]==(27265+offset0))
{
	vR[i] = 27265;
}
else
{
	vR[i] = 27264;
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
	if(input[i]>(27199+offset0))
{
	if(input[i]>(27231+offset0))
{
	if(input[i]>(27247+offset0))
{
	if(input[i]>(27255+offset0))
{
	if(input[i]>(27259+offset0))
{
	if(input[i]>(27261+offset0))
{
	if(input[i]==(27263+offset0))
{
	vR[i] = 27263;
}
else
{
	vR[i] = 27262;
}

}
else
{
	if(input[i]==(27261+offset0))
{
	vR[i] = 27261;
}
else
{
	vR[i] = 27260;
}

}

}
else
{
	if(input[i]>(27257+offset0))
{
	if(input[i]==(27259+offset0))
{
	vR[i] = 27259;
}
else
{
	vR[i] = 27258;
}

}
else
{
	if(input[i]==(27257+offset0))
{
	vR[i] = 27257;
}
else
{
	vR[i] = 27256;
}

}

}

}
else
{
	if(input[i]>(27251+offset0))
{
	if(input[i]>(27253+offset0))
{
	if(input[i]==(27255+offset0))
{
	vR[i] = 27255;
}
else
{
	vR[i] = 27254;
}

}
else
{
	if(input[i]==(27253+offset0))
{
	vR[i] = 27253;
}
else
{
	vR[i] = 27252;
}

}

}
else
{
	if(input[i]>(27249+offset0))
{
	if(input[i]==(27251+offset0))
{
	vR[i] = 27251;
}
else
{
	vR[i] = 27250;
}

}
else
{
	if(input[i]==(27249+offset0))
{
	vR[i] = 27249;
}
else
{
	vR[i] = 27248;
}

}

}

}

}
else
{
	if(input[i]>(27239+offset0))
{
	if(input[i]>(27243+offset0))
{
	if(input[i]>(27245+offset0))
{
	if(input[i]==(27247+offset0))
{
	vR[i] = 27247;
}
else
{
	vR[i] = 27246;
}

}
else
{
	if(input[i]==(27245+offset0))
{
	vR[i] = 27245;
}
else
{
	vR[i] = 27244;
}

}

}
else
{
	if(input[i]>(27241+offset0))
{
	if(input[i]==(27243+offset0))
{
	vR[i] = 27243;
}
else
{
	vR[i] = 27242;
}

}
else
{
	if(input[i]==(27241+offset0))
{
	vR[i] = 27241;
}
else
{
	vR[i] = 27240;
}

}

}

}
else
{
	if(input[i]>(27235+offset0))
{
	if(input[i]>(27237+offset0))
{
	if(input[i]==(27239+offset0))
{
	vR[i] = 27239;
}
else
{
	vR[i] = 27238;
}

}
else
{
	if(input[i]==(27237+offset0))
{
	vR[i] = 27237;
}
else
{
	vR[i] = 27236;
}

}

}
else
{
	if(input[i]>(27233+offset0))
{
	if(input[i]==(27235+offset0))
{
	vR[i] = 27235;
}
else
{
	vR[i] = 27234;
}

}
else
{
	if(input[i]==(27233+offset0))
{
	vR[i] = 27233;
}
else
{
	vR[i] = 27232;
}

}

}

}

}

}
else
{
	if(input[i]>(27215+offset0))
{
	if(input[i]>(27223+offset0))
{
	if(input[i]>(27227+offset0))
{
	if(input[i]>(27229+offset0))
{
	if(input[i]==(27231+offset0))
{
	vR[i] = 27231;
}
else
{
	vR[i] = 27230;
}

}
else
{
	if(input[i]==(27229+offset0))
{
	vR[i] = 27229;
}
else
{
	vR[i] = 27228;
}

}

}
else
{
	if(input[i]>(27225+offset0))
{
	if(input[i]==(27227+offset0))
{
	vR[i] = 27227;
}
else
{
	vR[i] = 27226;
}

}
else
{
	if(input[i]==(27225+offset0))
{
	vR[i] = 27225;
}
else
{
	vR[i] = 27224;
}

}

}

}
else
{
	if(input[i]>(27219+offset0))
{
	if(input[i]>(27221+offset0))
{
	if(input[i]==(27223+offset0))
{
	vR[i] = 27223;
}
else
{
	vR[i] = 27222;
}

}
else
{
	if(input[i]==(27221+offset0))
{
	vR[i] = 27221;
}
else
{
	vR[i] = 27220;
}

}

}
else
{
	if(input[i]>(27217+offset0))
{
	if(input[i]==(27219+offset0))
{
	vR[i] = 27219;
}
else
{
	vR[i] = 27218;
}

}
else
{
	if(input[i]==(27217+offset0))
{
	vR[i] = 27217;
}
else
{
	vR[i] = 27216;
}

}

}

}

}
else
{
	if(input[i]>(27207+offset0))
{
	if(input[i]>(27211+offset0))
{
	if(input[i]>(27213+offset0))
{
	if(input[i]==(27215+offset0))
{
	vR[i] = 27215;
}
else
{
	vR[i] = 27214;
}

}
else
{
	if(input[i]==(27213+offset0))
{
	vR[i] = 27213;
}
else
{
	vR[i] = 27212;
}

}

}
else
{
	if(input[i]>(27209+offset0))
{
	if(input[i]==(27211+offset0))
{
	vR[i] = 27211;
}
else
{
	vR[i] = 27210;
}

}
else
{
	if(input[i]==(27209+offset0))
{
	vR[i] = 27209;
}
else
{
	vR[i] = 27208;
}

}

}

}
else
{
	if(input[i]>(27203+offset0))
{
	if(input[i]>(27205+offset0))
{
	if(input[i]==(27207+offset0))
{
	vR[i] = 27207;
}
else
{
	vR[i] = 27206;
}

}
else
{
	if(input[i]==(27205+offset0))
{
	vR[i] = 27205;
}
else
{
	vR[i] = 27204;
}

}

}
else
{
	if(input[i]>(27201+offset0))
{
	if(input[i]==(27203+offset0))
{
	vR[i] = 27203;
}
else
{
	vR[i] = 27202;
}

}
else
{
	if(input[i]==(27201+offset0))
{
	vR[i] = 27201;
}
else
{
	vR[i] = 27200;
}

}

}

}

}

}

}
else
{
	if(input[i]>(27167+offset0))
{
	if(input[i]>(27183+offset0))
{
	if(input[i]>(27191+offset0))
{
	if(input[i]>(27195+offset0))
{
	if(input[i]>(27197+offset0))
{
	if(input[i]==(27199+offset0))
{
	vR[i] = 27199;
}
else
{
	vR[i] = 27198;
}

}
else
{
	if(input[i]==(27197+offset0))
{
	vR[i] = 27197;
}
else
{
	vR[i] = 27196;
}

}

}
else
{
	if(input[i]>(27193+offset0))
{
	if(input[i]==(27195+offset0))
{
	vR[i] = 27195;
}
else
{
	vR[i] = 27194;
}

}
else
{
	if(input[i]==(27193+offset0))
{
	vR[i] = 27193;
}
else
{
	vR[i] = 27192;
}

}

}

}
else
{
	if(input[i]>(27187+offset0))
{
	if(input[i]>(27189+offset0))
{
	if(input[i]==(27191+offset0))
{
	vR[i] = 27191;
}
else
{
	vR[i] = 27190;
}

}
else
{
	if(input[i]==(27189+offset0))
{
	vR[i] = 27189;
}
else
{
	vR[i] = 27188;
}

}

}
else
{
	if(input[i]>(27185+offset0))
{
	if(input[i]==(27187+offset0))
{
	vR[i] = 27187;
}
else
{
	vR[i] = 27186;
}

}
else
{
	if(input[i]==(27185+offset0))
{
	vR[i] = 27185;
}
else
{
	vR[i] = 27184;
}

}

}

}

}
else
{
	if(input[i]>(27175+offset0))
{
	if(input[i]>(27179+offset0))
{
	if(input[i]>(27181+offset0))
{
	if(input[i]==(27183+offset0))
{
	vR[i] = 27183;
}
else
{
	vR[i] = 27182;
}

}
else
{
	if(input[i]==(27181+offset0))
{
	vR[i] = 27181;
}
else
{
	vR[i] = 27180;
}

}

}
else
{
	if(input[i]>(27177+offset0))
{
	if(input[i]==(27179+offset0))
{
	vR[i] = 27179;
}
else
{
	vR[i] = 27178;
}

}
else
{
	if(input[i]==(27177+offset0))
{
	vR[i] = 27177;
}
else
{
	vR[i] = 27176;
}

}

}

}
else
{
	if(input[i]>(27171+offset0))
{
	if(input[i]>(27173+offset0))
{
	if(input[i]==(27175+offset0))
{
	vR[i] = 27175;
}
else
{
	vR[i] = 27174;
}

}
else
{
	if(input[i]==(27173+offset0))
{
	vR[i] = 27173;
}
else
{
	vR[i] = 27172;
}

}

}
else
{
	if(input[i]>(27169+offset0))
{
	if(input[i]==(27171+offset0))
{
	vR[i] = 27171;
}
else
{
	vR[i] = 27170;
}

}
else
{
	if(input[i]==(27169+offset0))
{
	vR[i] = 27169;
}
else
{
	vR[i] = 27168;
}

}

}

}

}

}
else
{
	if(input[i]>(27151+offset0))
{
	if(input[i]>(27159+offset0))
{
	if(input[i]>(27163+offset0))
{
	if(input[i]>(27165+offset0))
{
	if(input[i]==(27167+offset0))
{
	vR[i] = 27167;
}
else
{
	vR[i] = 27166;
}

}
else
{
	if(input[i]==(27165+offset0))
{
	vR[i] = 27165;
}
else
{
	vR[i] = 27164;
}

}

}
else
{
	if(input[i]>(27161+offset0))
{
	if(input[i]==(27163+offset0))
{
	vR[i] = 27163;
}
else
{
	vR[i] = 27162;
}

}
else
{
	if(input[i]==(27161+offset0))
{
	vR[i] = 27161;
}
else
{
	vR[i] = 27160;
}

}

}

}
else
{
	if(input[i]>(27155+offset0))
{
	if(input[i]>(27157+offset0))
{
	if(input[i]==(27159+offset0))
{
	vR[i] = 27159;
}
else
{
	vR[i] = 27158;
}

}
else
{
	if(input[i]==(27157+offset0))
{
	vR[i] = 27157;
}
else
{
	vR[i] = 27156;
}

}

}
else
{
	if(input[i]>(27153+offset0))
{
	if(input[i]==(27155+offset0))
{
	vR[i] = 27155;
}
else
{
	vR[i] = 27154;
}

}
else
{
	if(input[i]==(27153+offset0))
{
	vR[i] = 27153;
}
else
{
	vR[i] = 27152;
}

}

}

}

}
else
{
	if(input[i]>(27143+offset0))
{
	if(input[i]>(27147+offset0))
{
	if(input[i]>(27149+offset0))
{
	if(input[i]==(27151+offset0))
{
	vR[i] = 27151;
}
else
{
	vR[i] = 27150;
}

}
else
{
	if(input[i]==(27149+offset0))
{
	vR[i] = 27149;
}
else
{
	vR[i] = 27148;
}

}

}
else
{
	if(input[i]>(27145+offset0))
{
	if(input[i]==(27147+offset0))
{
	vR[i] = 27147;
}
else
{
	vR[i] = 27146;
}

}
else
{
	if(input[i]==(27145+offset0))
{
	vR[i] = 27145;
}
else
{
	vR[i] = 27144;
}

}

}

}
else
{
	if(input[i]>(27139+offset0))
{
	if(input[i]>(27141+offset0))
{
	if(input[i]==(27143+offset0))
{
	vR[i] = 27143;
}
else
{
	vR[i] = 27142;
}

}
else
{
	if(input[i]==(27141+offset0))
{
	vR[i] = 27141;
}
else
{
	vR[i] = 27140;
}

}

}
else
{
	if(input[i]>(27137+offset0))
{
	if(input[i]==(27139+offset0))
{
	vR[i] = 27139;
}
else
{
	vR[i] = 27138;
}

}
else
{
	if(input[i]==(27137+offset0))
{
	vR[i] = 27137;
}
else
{
	vR[i] = 27136;
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
	if(input[i]>(26879+offset0))
{
	if(input[i]>(27007+offset0))
{
	if(input[i]>(27071+offset0))
{
	if(input[i]>(27103+offset0))
{
	if(input[i]>(27119+offset0))
{
	if(input[i]>(27127+offset0))
{
	if(input[i]>(27131+offset0))
{
	if(input[i]>(27133+offset0))
{
	if(input[i]==(27135+offset0))
{
	vR[i] = 27135;
}
else
{
	vR[i] = 27134;
}

}
else
{
	if(input[i]==(27133+offset0))
{
	vR[i] = 27133;
}
else
{
	vR[i] = 27132;
}

}

}
else
{
	if(input[i]>(27129+offset0))
{
	if(input[i]==(27131+offset0))
{
	vR[i] = 27131;
}
else
{
	vR[i] = 27130;
}

}
else
{
	if(input[i]==(27129+offset0))
{
	vR[i] = 27129;
}
else
{
	vR[i] = 27128;
}

}

}

}
else
{
	if(input[i]>(27123+offset0))
{
	if(input[i]>(27125+offset0))
{
	if(input[i]==(27127+offset0))
{
	vR[i] = 27127;
}
else
{
	vR[i] = 27126;
}

}
else
{
	if(input[i]==(27125+offset0))
{
	vR[i] = 27125;
}
else
{
	vR[i] = 27124;
}

}

}
else
{
	if(input[i]>(27121+offset0))
{
	if(input[i]==(27123+offset0))
{
	vR[i] = 27123;
}
else
{
	vR[i] = 27122;
}

}
else
{
	if(input[i]==(27121+offset0))
{
	vR[i] = 27121;
}
else
{
	vR[i] = 27120;
}

}

}

}

}
else
{
	if(input[i]>(27111+offset0))
{
	if(input[i]>(27115+offset0))
{
	if(input[i]>(27117+offset0))
{
	if(input[i]==(27119+offset0))
{
	vR[i] = 27119;
}
else
{
	vR[i] = 27118;
}

}
else
{
	if(input[i]==(27117+offset0))
{
	vR[i] = 27117;
}
else
{
	vR[i] = 27116;
}

}

}
else
{
	if(input[i]>(27113+offset0))
{
	if(input[i]==(27115+offset0))
{
	vR[i] = 27115;
}
else
{
	vR[i] = 27114;
}

}
else
{
	if(input[i]==(27113+offset0))
{
	vR[i] = 27113;
}
else
{
	vR[i] = 27112;
}

}

}

}
else
{
	if(input[i]>(27107+offset0))
{
	if(input[i]>(27109+offset0))
{
	if(input[i]==(27111+offset0))
{
	vR[i] = 27111;
}
else
{
	vR[i] = 27110;
}

}
else
{
	if(input[i]==(27109+offset0))
{
	vR[i] = 27109;
}
else
{
	vR[i] = 27108;
}

}

}
else
{
	if(input[i]>(27105+offset0))
{
	if(input[i]==(27107+offset0))
{
	vR[i] = 27107;
}
else
{
	vR[i] = 27106;
}

}
else
{
	if(input[i]==(27105+offset0))
{
	vR[i] = 27105;
}
else
{
	vR[i] = 27104;
}

}

}

}

}

}
else
{
	if(input[i]>(27087+offset0))
{
	if(input[i]>(27095+offset0))
{
	if(input[i]>(27099+offset0))
{
	if(input[i]>(27101+offset0))
{
	if(input[i]==(27103+offset0))
{
	vR[i] = 27103;
}
else
{
	vR[i] = 27102;
}

}
else
{
	if(input[i]==(27101+offset0))
{
	vR[i] = 27101;
}
else
{
	vR[i] = 27100;
}

}

}
else
{
	if(input[i]>(27097+offset0))
{
	if(input[i]==(27099+offset0))
{
	vR[i] = 27099;
}
else
{
	vR[i] = 27098;
}

}
else
{
	if(input[i]==(27097+offset0))
{
	vR[i] = 27097;
}
else
{
	vR[i] = 27096;
}

}

}

}
else
{
	if(input[i]>(27091+offset0))
{
	if(input[i]>(27093+offset0))
{
	if(input[i]==(27095+offset0))
{
	vR[i] = 27095;
}
else
{
	vR[i] = 27094;
}

}
else
{
	if(input[i]==(27093+offset0))
{
	vR[i] = 27093;
}
else
{
	vR[i] = 27092;
}

}

}
else
{
	if(input[i]>(27089+offset0))
{
	if(input[i]==(27091+offset0))
{
	vR[i] = 27091;
}
else
{
	vR[i] = 27090;
}

}
else
{
	if(input[i]==(27089+offset0))
{
	vR[i] = 27089;
}
else
{
	vR[i] = 27088;
}

}

}

}

}
else
{
	if(input[i]>(27079+offset0))
{
	if(input[i]>(27083+offset0))
{
	if(input[i]>(27085+offset0))
{
	if(input[i]==(27087+offset0))
{
	vR[i] = 27087;
}
else
{
	vR[i] = 27086;
}

}
else
{
	if(input[i]==(27085+offset0))
{
	vR[i] = 27085;
}
else
{
	vR[i] = 27084;
}

}

}
else
{
	if(input[i]>(27081+offset0))
{
	if(input[i]==(27083+offset0))
{
	vR[i] = 27083;
}
else
{
	vR[i] = 27082;
}

}
else
{
	if(input[i]==(27081+offset0))
{
	vR[i] = 27081;
}
else
{
	vR[i] = 27080;
}

}

}

}
else
{
	if(input[i]>(27075+offset0))
{
	if(input[i]>(27077+offset0))
{
	if(input[i]==(27079+offset0))
{
	vR[i] = 27079;
}
else
{
	vR[i] = 27078;
}

}
else
{
	if(input[i]==(27077+offset0))
{
	vR[i] = 27077;
}
else
{
	vR[i] = 27076;
}

}

}
else
{
	if(input[i]>(27073+offset0))
{
	if(input[i]==(27075+offset0))
{
	vR[i] = 27075;
}
else
{
	vR[i] = 27074;
}

}
else
{
	if(input[i]==(27073+offset0))
{
	vR[i] = 27073;
}
else
{
	vR[i] = 27072;
}

}

}

}

}

}

}
else
{
	if(input[i]>(27039+offset0))
{
	if(input[i]>(27055+offset0))
{
	if(input[i]>(27063+offset0))
{
	if(input[i]>(27067+offset0))
{
	if(input[i]>(27069+offset0))
{
	if(input[i]==(27071+offset0))
{
	vR[i] = 27071;
}
else
{
	vR[i] = 27070;
}

}
else
{
	if(input[i]==(27069+offset0))
{
	vR[i] = 27069;
}
else
{
	vR[i] = 27068;
}

}

}
else
{
	if(input[i]>(27065+offset0))
{
	if(input[i]==(27067+offset0))
{
	vR[i] = 27067;
}
else
{
	vR[i] = 27066;
}

}
else
{
	if(input[i]==(27065+offset0))
{
	vR[i] = 27065;
}
else
{
	vR[i] = 27064;
}

}

}

}
else
{
	if(input[i]>(27059+offset0))
{
	if(input[i]>(27061+offset0))
{
	if(input[i]==(27063+offset0))
{
	vR[i] = 27063;
}
else
{
	vR[i] = 27062;
}

}
else
{
	if(input[i]==(27061+offset0))
{
	vR[i] = 27061;
}
else
{
	vR[i] = 27060;
}

}

}
else
{
	if(input[i]>(27057+offset0))
{
	if(input[i]==(27059+offset0))
{
	vR[i] = 27059;
}
else
{
	vR[i] = 27058;
}

}
else
{
	if(input[i]==(27057+offset0))
{
	vR[i] = 27057;
}
else
{
	vR[i] = 27056;
}

}

}

}

}
else
{
	if(input[i]>(27047+offset0))
{
	if(input[i]>(27051+offset0))
{
	if(input[i]>(27053+offset0))
{
	if(input[i]==(27055+offset0))
{
	vR[i] = 27055;
}
else
{
	vR[i] = 27054;
}

}
else
{
	if(input[i]==(27053+offset0))
{
	vR[i] = 27053;
}
else
{
	vR[i] = 27052;
}

}

}
else
{
	if(input[i]>(27049+offset0))
{
	if(input[i]==(27051+offset0))
{
	vR[i] = 27051;
}
else
{
	vR[i] = 27050;
}

}
else
{
	if(input[i]==(27049+offset0))
{
	vR[i] = 27049;
}
else
{
	vR[i] = 27048;
}

}

}

}
else
{
	if(input[i]>(27043+offset0))
{
	if(input[i]>(27045+offset0))
{
	if(input[i]==(27047+offset0))
{
	vR[i] = 27047;
}
else
{
	vR[i] = 27046;
}

}
else
{
	if(input[i]==(27045+offset0))
{
	vR[i] = 27045;
}
else
{
	vR[i] = 27044;
}

}

}
else
{
	if(input[i]>(27041+offset0))
{
	if(input[i]==(27043+offset0))
{
	vR[i] = 27043;
}
else
{
	vR[i] = 27042;
}

}
else
{
	if(input[i]==(27041+offset0))
{
	vR[i] = 27041;
}
else
{
	vR[i] = 27040;
}

}

}

}

}

}
else
{
	if(input[i]>(27023+offset0))
{
	if(input[i]>(27031+offset0))
{
	if(input[i]>(27035+offset0))
{
	if(input[i]>(27037+offset0))
{
	if(input[i]==(27039+offset0))
{
	vR[i] = 27039;
}
else
{
	vR[i] = 27038;
}

}
else
{
	if(input[i]==(27037+offset0))
{
	vR[i] = 27037;
}
else
{
	vR[i] = 27036;
}

}

}
else
{
	if(input[i]>(27033+offset0))
{
	if(input[i]==(27035+offset0))
{
	vR[i] = 27035;
}
else
{
	vR[i] = 27034;
}

}
else
{
	if(input[i]==(27033+offset0))
{
	vR[i] = 27033;
}
else
{
	vR[i] = 27032;
}

}

}

}
else
{
	if(input[i]>(27027+offset0))
{
	if(input[i]>(27029+offset0))
{
	if(input[i]==(27031+offset0))
{
	vR[i] = 27031;
}
else
{
	vR[i] = 27030;
}

}
else
{
	if(input[i]==(27029+offset0))
{
	vR[i] = 27029;
}
else
{
	vR[i] = 27028;
}

}

}
else
{
	if(input[i]>(27025+offset0))
{
	if(input[i]==(27027+offset0))
{
	vR[i] = 27027;
}
else
{
	vR[i] = 27026;
}

}
else
{
	if(input[i]==(27025+offset0))
{
	vR[i] = 27025;
}
else
{
	vR[i] = 27024;
}

}

}

}

}
else
{
	if(input[i]>(27015+offset0))
{
	if(input[i]>(27019+offset0))
{
	if(input[i]>(27021+offset0))
{
	if(input[i]==(27023+offset0))
{
	vR[i] = 27023;
}
else
{
	vR[i] = 27022;
}

}
else
{
	if(input[i]==(27021+offset0))
{
	vR[i] = 27021;
}
else
{
	vR[i] = 27020;
}

}

}
else
{
	if(input[i]>(27017+offset0))
{
	if(input[i]==(27019+offset0))
{
	vR[i] = 27019;
}
else
{
	vR[i] = 27018;
}

}
else
{
	if(input[i]==(27017+offset0))
{
	vR[i] = 27017;
}
else
{
	vR[i] = 27016;
}

}

}

}
else
{
	if(input[i]>(27011+offset0))
{
	if(input[i]>(27013+offset0))
{
	if(input[i]==(27015+offset0))
{
	vR[i] = 27015;
}
else
{
	vR[i] = 27014;
}

}
else
{
	if(input[i]==(27013+offset0))
{
	vR[i] = 27013;
}
else
{
	vR[i] = 27012;
}

}

}
else
{
	if(input[i]>(27009+offset0))
{
	if(input[i]==(27011+offset0))
{
	vR[i] = 27011;
}
else
{
	vR[i] = 27010;
}

}
else
{
	if(input[i]==(27009+offset0))
{
	vR[i] = 27009;
}
else
{
	vR[i] = 27008;
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
	if(input[i]>(26943+offset0))
{
	if(input[i]>(26975+offset0))
{
	if(input[i]>(26991+offset0))
{
	if(input[i]>(26999+offset0))
{
	if(input[i]>(27003+offset0))
{
	if(input[i]>(27005+offset0))
{
	if(input[i]==(27007+offset0))
{
	vR[i] = 27007;
}
else
{
	vR[i] = 27006;
}

}
else
{
	if(input[i]==(27005+offset0))
{
	vR[i] = 27005;
}
else
{
	vR[i] = 27004;
}

}

}
else
{
	if(input[i]>(27001+offset0))
{
	if(input[i]==(27003+offset0))
{
	vR[i] = 27003;
}
else
{
	vR[i] = 27002;
}

}
else
{
	if(input[i]==(27001+offset0))
{
	vR[i] = 27001;
}
else
{
	vR[i] = 27000;
}

}

}

}
else
{
	if(input[i]>(26995+offset0))
{
	if(input[i]>(26997+offset0))
{
	if(input[i]==(26999+offset0))
{
	vR[i] = 26999;
}
else
{
	vR[i] = 26998;
}

}
else
{
	if(input[i]==(26997+offset0))
{
	vR[i] = 26997;
}
else
{
	vR[i] = 26996;
}

}

}
else
{
	if(input[i]>(26993+offset0))
{
	if(input[i]==(26995+offset0))
{
	vR[i] = 26995;
}
else
{
	vR[i] = 26994;
}

}
else
{
	if(input[i]==(26993+offset0))
{
	vR[i] = 26993;
}
else
{
	vR[i] = 26992;
}

}

}

}

}
else
{
	if(input[i]>(26983+offset0))
{
	if(input[i]>(26987+offset0))
{
	if(input[i]>(26989+offset0))
{
	if(input[i]==(26991+offset0))
{
	vR[i] = 26991;
}
else
{
	vR[i] = 26990;
}

}
else
{
	if(input[i]==(26989+offset0))
{
	vR[i] = 26989;
}
else
{
	vR[i] = 26988;
}

}

}
else
{
	if(input[i]>(26985+offset0))
{
	if(input[i]==(26987+offset0))
{
	vR[i] = 26987;
}
else
{
	vR[i] = 26986;
}

}
else
{
	if(input[i]==(26985+offset0))
{
	vR[i] = 26985;
}
else
{
	vR[i] = 26984;
}

}

}

}
else
{
	if(input[i]>(26979+offset0))
{
	if(input[i]>(26981+offset0))
{
	if(input[i]==(26983+offset0))
{
	vR[i] = 26983;
}
else
{
	vR[i] = 26982;
}

}
else
{
	if(input[i]==(26981+offset0))
{
	vR[i] = 26981;
}
else
{
	vR[i] = 26980;
}

}

}
else
{
	if(input[i]>(26977+offset0))
{
	if(input[i]==(26979+offset0))
{
	vR[i] = 26979;
}
else
{
	vR[i] = 26978;
}

}
else
{
	if(input[i]==(26977+offset0))
{
	vR[i] = 26977;
}
else
{
	vR[i] = 26976;
}

}

}

}

}

}
else
{
	if(input[i]>(26959+offset0))
{
	if(input[i]>(26967+offset0))
{
	if(input[i]>(26971+offset0))
{
	if(input[i]>(26973+offset0))
{
	if(input[i]==(26975+offset0))
{
	vR[i] = 26975;
}
else
{
	vR[i] = 26974;
}

}
else
{
	if(input[i]==(26973+offset0))
{
	vR[i] = 26973;
}
else
{
	vR[i] = 26972;
}

}

}
else
{
	if(input[i]>(26969+offset0))
{
	if(input[i]==(26971+offset0))
{
	vR[i] = 26971;
}
else
{
	vR[i] = 26970;
}

}
else
{
	if(input[i]==(26969+offset0))
{
	vR[i] = 26969;
}
else
{
	vR[i] = 26968;
}

}

}

}
else
{
	if(input[i]>(26963+offset0))
{
	if(input[i]>(26965+offset0))
{
	if(input[i]==(26967+offset0))
{
	vR[i] = 26967;
}
else
{
	vR[i] = 26966;
}

}
else
{
	if(input[i]==(26965+offset0))
{
	vR[i] = 26965;
}
else
{
	vR[i] = 26964;
}

}

}
else
{
	if(input[i]>(26961+offset0))
{
	if(input[i]==(26963+offset0))
{
	vR[i] = 26963;
}
else
{
	vR[i] = 26962;
}

}
else
{
	if(input[i]==(26961+offset0))
{
	vR[i] = 26961;
}
else
{
	vR[i] = 26960;
}

}

}

}

}
else
{
	if(input[i]>(26951+offset0))
{
	if(input[i]>(26955+offset0))
{
	if(input[i]>(26957+offset0))
{
	if(input[i]==(26959+offset0))
{
	vR[i] = 26959;
}
else
{
	vR[i] = 26958;
}

}
else
{
	if(input[i]==(26957+offset0))
{
	vR[i] = 26957;
}
else
{
	vR[i] = 26956;
}

}

}
else
{
	if(input[i]>(26953+offset0))
{
	if(input[i]==(26955+offset0))
{
	vR[i] = 26955;
}
else
{
	vR[i] = 26954;
}

}
else
{
	if(input[i]==(26953+offset0))
{
	vR[i] = 26953;
}
else
{
	vR[i] = 26952;
}

}

}

}
else
{
	if(input[i]>(26947+offset0))
{
	if(input[i]>(26949+offset0))
{
	if(input[i]==(26951+offset0))
{
	vR[i] = 26951;
}
else
{
	vR[i] = 26950;
}

}
else
{
	if(input[i]==(26949+offset0))
{
	vR[i] = 26949;
}
else
{
	vR[i] = 26948;
}

}

}
else
{
	if(input[i]>(26945+offset0))
{
	if(input[i]==(26947+offset0))
{
	vR[i] = 26947;
}
else
{
	vR[i] = 26946;
}

}
else
{
	if(input[i]==(26945+offset0))
{
	vR[i] = 26945;
}
else
{
	vR[i] = 26944;
}

}

}

}

}

}

}
else
{
	if(input[i]>(26911+offset0))
{
	if(input[i]>(26927+offset0))
{
	if(input[i]>(26935+offset0))
{
	if(input[i]>(26939+offset0))
{
	if(input[i]>(26941+offset0))
{
	if(input[i]==(26943+offset0))
{
	vR[i] = 26943;
}
else
{
	vR[i] = 26942;
}

}
else
{
	if(input[i]==(26941+offset0))
{
	vR[i] = 26941;
}
else
{
	vR[i] = 26940;
}

}

}
else
{
	if(input[i]>(26937+offset0))
{
	if(input[i]==(26939+offset0))
{
	vR[i] = 26939;
}
else
{
	vR[i] = 26938;
}

}
else
{
	if(input[i]==(26937+offset0))
{
	vR[i] = 26937;
}
else
{
	vR[i] = 26936;
}

}

}

}
else
{
	if(input[i]>(26931+offset0))
{
	if(input[i]>(26933+offset0))
{
	if(input[i]==(26935+offset0))
{
	vR[i] = 26935;
}
else
{
	vR[i] = 26934;
}

}
else
{
	if(input[i]==(26933+offset0))
{
	vR[i] = 26933;
}
else
{
	vR[i] = 26932;
}

}

}
else
{
	if(input[i]>(26929+offset0))
{
	if(input[i]==(26931+offset0))
{
	vR[i] = 26931;
}
else
{
	vR[i] = 26930;
}

}
else
{
	if(input[i]==(26929+offset0))
{
	vR[i] = 26929;
}
else
{
	vR[i] = 26928;
}

}

}

}

}
else
{
	if(input[i]>(26919+offset0))
{
	if(input[i]>(26923+offset0))
{
	if(input[i]>(26925+offset0))
{
	if(input[i]==(26927+offset0))
{
	vR[i] = 26927;
}
else
{
	vR[i] = 26926;
}

}
else
{
	if(input[i]==(26925+offset0))
{
	vR[i] = 26925;
}
else
{
	vR[i] = 26924;
}

}

}
else
{
	if(input[i]>(26921+offset0))
{
	if(input[i]==(26923+offset0))
{
	vR[i] = 26923;
}
else
{
	vR[i] = 26922;
}

}
else
{
	if(input[i]==(26921+offset0))
{
	vR[i] = 26921;
}
else
{
	vR[i] = 26920;
}

}

}

}
else
{
	if(input[i]>(26915+offset0))
{
	if(input[i]>(26917+offset0))
{
	if(input[i]==(26919+offset0))
{
	vR[i] = 26919;
}
else
{
	vR[i] = 26918;
}

}
else
{
	if(input[i]==(26917+offset0))
{
	vR[i] = 26917;
}
else
{
	vR[i] = 26916;
}

}

}
else
{
	if(input[i]>(26913+offset0))
{
	if(input[i]==(26915+offset0))
{
	vR[i] = 26915;
}
else
{
	vR[i] = 26914;
}

}
else
{
	if(input[i]==(26913+offset0))
{
	vR[i] = 26913;
}
else
{
	vR[i] = 26912;
}

}

}

}

}

}
else
{
	if(input[i]>(26895+offset0))
{
	if(input[i]>(26903+offset0))
{
	if(input[i]>(26907+offset0))
{
	if(input[i]>(26909+offset0))
{
	if(input[i]==(26911+offset0))
{
	vR[i] = 26911;
}
else
{
	vR[i] = 26910;
}

}
else
{
	if(input[i]==(26909+offset0))
{
	vR[i] = 26909;
}
else
{
	vR[i] = 26908;
}

}

}
else
{
	if(input[i]>(26905+offset0))
{
	if(input[i]==(26907+offset0))
{
	vR[i] = 26907;
}
else
{
	vR[i] = 26906;
}

}
else
{
	if(input[i]==(26905+offset0))
{
	vR[i] = 26905;
}
else
{
	vR[i] = 26904;
}

}

}

}
else
{
	if(input[i]>(26899+offset0))
{
	if(input[i]>(26901+offset0))
{
	if(input[i]==(26903+offset0))
{
	vR[i] = 26903;
}
else
{
	vR[i] = 26902;
}

}
else
{
	if(input[i]==(26901+offset0))
{
	vR[i] = 26901;
}
else
{
	vR[i] = 26900;
}

}

}
else
{
	if(input[i]>(26897+offset0))
{
	if(input[i]==(26899+offset0))
{
	vR[i] = 26899;
}
else
{
	vR[i] = 26898;
}

}
else
{
	if(input[i]==(26897+offset0))
{
	vR[i] = 26897;
}
else
{
	vR[i] = 26896;
}

}

}

}

}
else
{
	if(input[i]>(26887+offset0))
{
	if(input[i]>(26891+offset0))
{
	if(input[i]>(26893+offset0))
{
	if(input[i]==(26895+offset0))
{
	vR[i] = 26895;
}
else
{
	vR[i] = 26894;
}

}
else
{
	if(input[i]==(26893+offset0))
{
	vR[i] = 26893;
}
else
{
	vR[i] = 26892;
}

}

}
else
{
	if(input[i]>(26889+offset0))
{
	if(input[i]==(26891+offset0))
{
	vR[i] = 26891;
}
else
{
	vR[i] = 26890;
}

}
else
{
	if(input[i]==(26889+offset0))
{
	vR[i] = 26889;
}
else
{
	vR[i] = 26888;
}

}

}

}
else
{
	if(input[i]>(26883+offset0))
{
	if(input[i]>(26885+offset0))
{
	if(input[i]==(26887+offset0))
{
	vR[i] = 26887;
}
else
{
	vR[i] = 26886;
}

}
else
{
	if(input[i]==(26885+offset0))
{
	vR[i] = 26885;
}
else
{
	vR[i] = 26884;
}

}

}
else
{
	if(input[i]>(26881+offset0))
{
	if(input[i]==(26883+offset0))
{
	vR[i] = 26883;
}
else
{
	vR[i] = 26882;
}

}
else
{
	if(input[i]==(26881+offset0))
{
	vR[i] = 26881;
}
else
{
	vR[i] = 26880;
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
	if(input[i]>(26751+offset0))
{
	if(input[i]>(26815+offset0))
{
	if(input[i]>(26847+offset0))
{
	if(input[i]>(26863+offset0))
{
	if(input[i]>(26871+offset0))
{
	if(input[i]>(26875+offset0))
{
	if(input[i]>(26877+offset0))
{
	if(input[i]==(26879+offset0))
{
	vR[i] = 26879;
}
else
{
	vR[i] = 26878;
}

}
else
{
	if(input[i]==(26877+offset0))
{
	vR[i] = 26877;
}
else
{
	vR[i] = 26876;
}

}

}
else
{
	if(input[i]>(26873+offset0))
{
	if(input[i]==(26875+offset0))
{
	vR[i] = 26875;
}
else
{
	vR[i] = 26874;
}

}
else
{
	if(input[i]==(26873+offset0))
{
	vR[i] = 26873;
}
else
{
	vR[i] = 26872;
}

}

}

}
else
{
	if(input[i]>(26867+offset0))
{
	if(input[i]>(26869+offset0))
{
	if(input[i]==(26871+offset0))
{
	vR[i] = 26871;
}
else
{
	vR[i] = 26870;
}

}
else
{
	if(input[i]==(26869+offset0))
{
	vR[i] = 26869;
}
else
{
	vR[i] = 26868;
}

}

}
else
{
	if(input[i]>(26865+offset0))
{
	if(input[i]==(26867+offset0))
{
	vR[i] = 26867;
}
else
{
	vR[i] = 26866;
}

}
else
{
	if(input[i]==(26865+offset0))
{
	vR[i] = 26865;
}
else
{
	vR[i] = 26864;
}

}

}

}

}
else
{
	if(input[i]>(26855+offset0))
{
	if(input[i]>(26859+offset0))
{
	if(input[i]>(26861+offset0))
{
	if(input[i]==(26863+offset0))
{
	vR[i] = 26863;
}
else
{
	vR[i] = 26862;
}

}
else
{
	if(input[i]==(26861+offset0))
{
	vR[i] = 26861;
}
else
{
	vR[i] = 26860;
}

}

}
else
{
	if(input[i]>(26857+offset0))
{
	if(input[i]==(26859+offset0))
{
	vR[i] = 26859;
}
else
{
	vR[i] = 26858;
}

}
else
{
	if(input[i]==(26857+offset0))
{
	vR[i] = 26857;
}
else
{
	vR[i] = 26856;
}

}

}

}
else
{
	if(input[i]>(26851+offset0))
{
	if(input[i]>(26853+offset0))
{
	if(input[i]==(26855+offset0))
{
	vR[i] = 26855;
}
else
{
	vR[i] = 26854;
}

}
else
{
	if(input[i]==(26853+offset0))
{
	vR[i] = 26853;
}
else
{
	vR[i] = 26852;
}

}

}
else
{
	if(input[i]>(26849+offset0))
{
	if(input[i]==(26851+offset0))
{
	vR[i] = 26851;
}
else
{
	vR[i] = 26850;
}

}
else
{
	if(input[i]==(26849+offset0))
{
	vR[i] = 26849;
}
else
{
	vR[i] = 26848;
}

}

}

}

}

}
else
{
	if(input[i]>(26831+offset0))
{
	if(input[i]>(26839+offset0))
{
	if(input[i]>(26843+offset0))
{
	if(input[i]>(26845+offset0))
{
	if(input[i]==(26847+offset0))
{
	vR[i] = 26847;
}
else
{
	vR[i] = 26846;
}

}
else
{
	if(input[i]==(26845+offset0))
{
	vR[i] = 26845;
}
else
{
	vR[i] = 26844;
}

}

}
else
{
	if(input[i]>(26841+offset0))
{
	if(input[i]==(26843+offset0))
{
	vR[i] = 26843;
}
else
{
	vR[i] = 26842;
}

}
else
{
	if(input[i]==(26841+offset0))
{
	vR[i] = 26841;
}
else
{
	vR[i] = 26840;
}

}

}

}
else
{
	if(input[i]>(26835+offset0))
{
	if(input[i]>(26837+offset0))
{
	if(input[i]==(26839+offset0))
{
	vR[i] = 26839;
}
else
{
	vR[i] = 26838;
}

}
else
{
	if(input[i]==(26837+offset0))
{
	vR[i] = 26837;
}
else
{
	vR[i] = 26836;
}

}

}
else
{
	if(input[i]>(26833+offset0))
{
	if(input[i]==(26835+offset0))
{
	vR[i] = 26835;
}
else
{
	vR[i] = 26834;
}

}
else
{
	if(input[i]==(26833+offset0))
{
	vR[i] = 26833;
}
else
{
	vR[i] = 26832;
}

}

}

}

}
else
{
	if(input[i]>(26823+offset0))
{
	if(input[i]>(26827+offset0))
{
	if(input[i]>(26829+offset0))
{
	if(input[i]==(26831+offset0))
{
	vR[i] = 26831;
}
else
{
	vR[i] = 26830;
}

}
else
{
	if(input[i]==(26829+offset0))
{
	vR[i] = 26829;
}
else
{
	vR[i] = 26828;
}

}

}
else
{
	if(input[i]>(26825+offset0))
{
	if(input[i]==(26827+offset0))
{
	vR[i] = 26827;
}
else
{
	vR[i] = 26826;
}

}
else
{
	if(input[i]==(26825+offset0))
{
	vR[i] = 26825;
}
else
{
	vR[i] = 26824;
}

}

}

}
else
{
	if(input[i]>(26819+offset0))
{
	if(input[i]>(26821+offset0))
{
	if(input[i]==(26823+offset0))
{
	vR[i] = 26823;
}
else
{
	vR[i] = 26822;
}

}
else
{
	if(input[i]==(26821+offset0))
{
	vR[i] = 26821;
}
else
{
	vR[i] = 26820;
}

}

}
else
{
	if(input[i]>(26817+offset0))
{
	if(input[i]==(26819+offset0))
{
	vR[i] = 26819;
}
else
{
	vR[i] = 26818;
}

}
else
{
	if(input[i]==(26817+offset0))
{
	vR[i] = 26817;
}
else
{
	vR[i] = 26816;
}

}

}

}

}

}

}
else
{
	if(input[i]>(26783+offset0))
{
	if(input[i]>(26799+offset0))
{
	if(input[i]>(26807+offset0))
{
	if(input[i]>(26811+offset0))
{
	if(input[i]>(26813+offset0))
{
	if(input[i]==(26815+offset0))
{
	vR[i] = 26815;
}
else
{
	vR[i] = 26814;
}

}
else
{
	if(input[i]==(26813+offset0))
{
	vR[i] = 26813;
}
else
{
	vR[i] = 26812;
}

}

}
else
{
	if(input[i]>(26809+offset0))
{
	if(input[i]==(26811+offset0))
{
	vR[i] = 26811;
}
else
{
	vR[i] = 26810;
}

}
else
{
	if(input[i]==(26809+offset0))
{
	vR[i] = 26809;
}
else
{
	vR[i] = 26808;
}

}

}

}
else
{
	if(input[i]>(26803+offset0))
{
	if(input[i]>(26805+offset0))
{
	if(input[i]==(26807+offset0))
{
	vR[i] = 26807;
}
else
{
	vR[i] = 26806;
}

}
else
{
	if(input[i]==(26805+offset0))
{
	vR[i] = 26805;
}
else
{
	vR[i] = 26804;
}

}

}
else
{
	if(input[i]>(26801+offset0))
{
	if(input[i]==(26803+offset0))
{
	vR[i] = 26803;
}
else
{
	vR[i] = 26802;
}

}
else
{
	if(input[i]==(26801+offset0))
{
	vR[i] = 26801;
}
else
{
	vR[i] = 26800;
}

}

}

}

}
else
{
	if(input[i]>(26791+offset0))
{
	if(input[i]>(26795+offset0))
{
	if(input[i]>(26797+offset0))
{
	if(input[i]==(26799+offset0))
{
	vR[i] = 26799;
}
else
{
	vR[i] = 26798;
}

}
else
{
	if(input[i]==(26797+offset0))
{
	vR[i] = 26797;
}
else
{
	vR[i] = 26796;
}

}

}
else
{
	if(input[i]>(26793+offset0))
{
	if(input[i]==(26795+offset0))
{
	vR[i] = 26795;
}
else
{
	vR[i] = 26794;
}

}
else
{
	if(input[i]==(26793+offset0))
{
	vR[i] = 26793;
}
else
{
	vR[i] = 26792;
}

}

}

}
else
{
	if(input[i]>(26787+offset0))
{
	if(input[i]>(26789+offset0))
{
	if(input[i]==(26791+offset0))
{
	vR[i] = 26791;
}
else
{
	vR[i] = 26790;
}

}
else
{
	if(input[i]==(26789+offset0))
{
	vR[i] = 26789;
}
else
{
	vR[i] = 26788;
}

}

}
else
{
	if(input[i]>(26785+offset0))
{
	if(input[i]==(26787+offset0))
{
	vR[i] = 26787;
}
else
{
	vR[i] = 26786;
}

}
else
{
	if(input[i]==(26785+offset0))
{
	vR[i] = 26785;
}
else
{
	vR[i] = 26784;
}

}

}

}

}

}
else
{
	if(input[i]>(26767+offset0))
{
	if(input[i]>(26775+offset0))
{
	if(input[i]>(26779+offset0))
{
	if(input[i]>(26781+offset0))
{
	if(input[i]==(26783+offset0))
{
	vR[i] = 26783;
}
else
{
	vR[i] = 26782;
}

}
else
{
	if(input[i]==(26781+offset0))
{
	vR[i] = 26781;
}
else
{
	vR[i] = 26780;
}

}

}
else
{
	if(input[i]>(26777+offset0))
{
	if(input[i]==(26779+offset0))
{
	vR[i] = 26779;
}
else
{
	vR[i] = 26778;
}

}
else
{
	if(input[i]==(26777+offset0))
{
	vR[i] = 26777;
}
else
{
	vR[i] = 26776;
}

}

}

}
else
{
	if(input[i]>(26771+offset0))
{
	if(input[i]>(26773+offset0))
{
	if(input[i]==(26775+offset0))
{
	vR[i] = 26775;
}
else
{
	vR[i] = 26774;
}

}
else
{
	if(input[i]==(26773+offset0))
{
	vR[i] = 26773;
}
else
{
	vR[i] = 26772;
}

}

}
else
{
	if(input[i]>(26769+offset0))
{
	if(input[i]==(26771+offset0))
{
	vR[i] = 26771;
}
else
{
	vR[i] = 26770;
}

}
else
{
	if(input[i]==(26769+offset0))
{
	vR[i] = 26769;
}
else
{
	vR[i] = 26768;
}

}

}

}

}
else
{
	if(input[i]>(26759+offset0))
{
	if(input[i]>(26763+offset0))
{
	if(input[i]>(26765+offset0))
{
	if(input[i]==(26767+offset0))
{
	vR[i] = 26767;
}
else
{
	vR[i] = 26766;
}

}
else
{
	if(input[i]==(26765+offset0))
{
	vR[i] = 26765;
}
else
{
	vR[i] = 26764;
}

}

}
else
{
	if(input[i]>(26761+offset0))
{
	if(input[i]==(26763+offset0))
{
	vR[i] = 26763;
}
else
{
	vR[i] = 26762;
}

}
else
{
	if(input[i]==(26761+offset0))
{
	vR[i] = 26761;
}
else
{
	vR[i] = 26760;
}

}

}

}
else
{
	if(input[i]>(26755+offset0))
{
	if(input[i]>(26757+offset0))
{
	if(input[i]==(26759+offset0))
{
	vR[i] = 26759;
}
else
{
	vR[i] = 26758;
}

}
else
{
	if(input[i]==(26757+offset0))
{
	vR[i] = 26757;
}
else
{
	vR[i] = 26756;
}

}

}
else
{
	if(input[i]>(26753+offset0))
{
	if(input[i]==(26755+offset0))
{
	vR[i] = 26755;
}
else
{
	vR[i] = 26754;
}

}
else
{
	if(input[i]==(26753+offset0))
{
	vR[i] = 26753;
}
else
{
	vR[i] = 26752;
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
	if(input[i]>(26687+offset0))
{
	if(input[i]>(26719+offset0))
{
	if(input[i]>(26735+offset0))
{
	if(input[i]>(26743+offset0))
{
	if(input[i]>(26747+offset0))
{
	if(input[i]>(26749+offset0))
{
	if(input[i]==(26751+offset0))
{
	vR[i] = 26751;
}
else
{
	vR[i] = 26750;
}

}
else
{
	if(input[i]==(26749+offset0))
{
	vR[i] = 26749;
}
else
{
	vR[i] = 26748;
}

}

}
else
{
	if(input[i]>(26745+offset0))
{
	if(input[i]==(26747+offset0))
{
	vR[i] = 26747;
}
else
{
	vR[i] = 26746;
}

}
else
{
	if(input[i]==(26745+offset0))
{
	vR[i] = 26745;
}
else
{
	vR[i] = 26744;
}

}

}

}
else
{
	if(input[i]>(26739+offset0))
{
	if(input[i]>(26741+offset0))
{
	if(input[i]==(26743+offset0))
{
	vR[i] = 26743;
}
else
{
	vR[i] = 26742;
}

}
else
{
	if(input[i]==(26741+offset0))
{
	vR[i] = 26741;
}
else
{
	vR[i] = 26740;
}

}

}
else
{
	if(input[i]>(26737+offset0))
{
	if(input[i]==(26739+offset0))
{
	vR[i] = 26739;
}
else
{
	vR[i] = 26738;
}

}
else
{
	if(input[i]==(26737+offset0))
{
	vR[i] = 26737;
}
else
{
	vR[i] = 26736;
}

}

}

}

}
else
{
	if(input[i]>(26727+offset0))
{
	if(input[i]>(26731+offset0))
{
	if(input[i]>(26733+offset0))
{
	if(input[i]==(26735+offset0))
{
	vR[i] = 26735;
}
else
{
	vR[i] = 26734;
}

}
else
{
	if(input[i]==(26733+offset0))
{
	vR[i] = 26733;
}
else
{
	vR[i] = 26732;
}

}

}
else
{
	if(input[i]>(26729+offset0))
{
	if(input[i]==(26731+offset0))
{
	vR[i] = 26731;
}
else
{
	vR[i] = 26730;
}

}
else
{
	if(input[i]==(26729+offset0))
{
	vR[i] = 26729;
}
else
{
	vR[i] = 26728;
}

}

}

}
else
{
	if(input[i]>(26723+offset0))
{
	if(input[i]>(26725+offset0))
{
	if(input[i]==(26727+offset0))
{
	vR[i] = 26727;
}
else
{
	vR[i] = 26726;
}

}
else
{
	if(input[i]==(26725+offset0))
{
	vR[i] = 26725;
}
else
{
	vR[i] = 26724;
}

}

}
else
{
	if(input[i]>(26721+offset0))
{
	if(input[i]==(26723+offset0))
{
	vR[i] = 26723;
}
else
{
	vR[i] = 26722;
}

}
else
{
	if(input[i]==(26721+offset0))
{
	vR[i] = 26721;
}
else
{
	vR[i] = 26720;
}

}

}

}

}

}
else
{
	if(input[i]>(26703+offset0))
{
	if(input[i]>(26711+offset0))
{
	if(input[i]>(26715+offset0))
{
	if(input[i]>(26717+offset0))
{
	if(input[i]==(26719+offset0))
{
	vR[i] = 26719;
}
else
{
	vR[i] = 26718;
}

}
else
{
	if(input[i]==(26717+offset0))
{
	vR[i] = 26717;
}
else
{
	vR[i] = 26716;
}

}

}
else
{
	if(input[i]>(26713+offset0))
{
	if(input[i]==(26715+offset0))
{
	vR[i] = 26715;
}
else
{
	vR[i] = 26714;
}

}
else
{
	if(input[i]==(26713+offset0))
{
	vR[i] = 26713;
}
else
{
	vR[i] = 26712;
}

}

}

}
else
{
	if(input[i]>(26707+offset0))
{
	if(input[i]>(26709+offset0))
{
	if(input[i]==(26711+offset0))
{
	vR[i] = 26711;
}
else
{
	vR[i] = 26710;
}

}
else
{
	if(input[i]==(26709+offset0))
{
	vR[i] = 26709;
}
else
{
	vR[i] = 26708;
}

}

}
else
{
	if(input[i]>(26705+offset0))
{
	if(input[i]==(26707+offset0))
{
	vR[i] = 26707;
}
else
{
	vR[i] = 26706;
}

}
else
{
	if(input[i]==(26705+offset0))
{
	vR[i] = 26705;
}
else
{
	vR[i] = 26704;
}

}

}

}

}
else
{
	if(input[i]>(26695+offset0))
{
	if(input[i]>(26699+offset0))
{
	if(input[i]>(26701+offset0))
{
	if(input[i]==(26703+offset0))
{
	vR[i] = 26703;
}
else
{
	vR[i] = 26702;
}

}
else
{
	if(input[i]==(26701+offset0))
{
	vR[i] = 26701;
}
else
{
	vR[i] = 26700;
}

}

}
else
{
	if(input[i]>(26697+offset0))
{
	if(input[i]==(26699+offset0))
{
	vR[i] = 26699;
}
else
{
	vR[i] = 26698;
}

}
else
{
	if(input[i]==(26697+offset0))
{
	vR[i] = 26697;
}
else
{
	vR[i] = 26696;
}

}

}

}
else
{
	if(input[i]>(26691+offset0))
{
	if(input[i]>(26693+offset0))
{
	if(input[i]==(26695+offset0))
{
	vR[i] = 26695;
}
else
{
	vR[i] = 26694;
}

}
else
{
	if(input[i]==(26693+offset0))
{
	vR[i] = 26693;
}
else
{
	vR[i] = 26692;
}

}

}
else
{
	if(input[i]>(26689+offset0))
{
	if(input[i]==(26691+offset0))
{
	vR[i] = 26691;
}
else
{
	vR[i] = 26690;
}

}
else
{
	if(input[i]==(26689+offset0))
{
	vR[i] = 26689;
}
else
{
	vR[i] = 26688;
}

}

}

}

}

}

}
else
{
	if(input[i]>(26655+offset0))
{
	if(input[i]>(26671+offset0))
{
	if(input[i]>(26679+offset0))
{
	if(input[i]>(26683+offset0))
{
	if(input[i]>(26685+offset0))
{
	if(input[i]==(26687+offset0))
{
	vR[i] = 26687;
}
else
{
	vR[i] = 26686;
}

}
else
{
	if(input[i]==(26685+offset0))
{
	vR[i] = 26685;
}
else
{
	vR[i] = 26684;
}

}

}
else
{
	if(input[i]>(26681+offset0))
{
	if(input[i]==(26683+offset0))
{
	vR[i] = 26683;
}
else
{
	vR[i] = 26682;
}

}
else
{
	if(input[i]==(26681+offset0))
{
	vR[i] = 26681;
}
else
{
	vR[i] = 26680;
}

}

}

}
else
{
	if(input[i]>(26675+offset0))
{
	if(input[i]>(26677+offset0))
{
	if(input[i]==(26679+offset0))
{
	vR[i] = 26679;
}
else
{
	vR[i] = 26678;
}

}
else
{
	if(input[i]==(26677+offset0))
{
	vR[i] = 26677;
}
else
{
	vR[i] = 26676;
}

}

}
else
{
	if(input[i]>(26673+offset0))
{
	if(input[i]==(26675+offset0))
{
	vR[i] = 26675;
}
else
{
	vR[i] = 26674;
}

}
else
{
	if(input[i]==(26673+offset0))
{
	vR[i] = 26673;
}
else
{
	vR[i] = 26672;
}

}

}

}

}
else
{
	if(input[i]>(26663+offset0))
{
	if(input[i]>(26667+offset0))
{
	if(input[i]>(26669+offset0))
{
	if(input[i]==(26671+offset0))
{
	vR[i] = 26671;
}
else
{
	vR[i] = 26670;
}

}
else
{
	if(input[i]==(26669+offset0))
{
	vR[i] = 26669;
}
else
{
	vR[i] = 26668;
}

}

}
else
{
	if(input[i]>(26665+offset0))
{
	if(input[i]==(26667+offset0))
{
	vR[i] = 26667;
}
else
{
	vR[i] = 26666;
}

}
else
{
	if(input[i]==(26665+offset0))
{
	vR[i] = 26665;
}
else
{
	vR[i] = 26664;
}

}

}

}
else
{
	if(input[i]>(26659+offset0))
{
	if(input[i]>(26661+offset0))
{
	if(input[i]==(26663+offset0))
{
	vR[i] = 26663;
}
else
{
	vR[i] = 26662;
}

}
else
{
	if(input[i]==(26661+offset0))
{
	vR[i] = 26661;
}
else
{
	vR[i] = 26660;
}

}

}
else
{
	if(input[i]>(26657+offset0))
{
	if(input[i]==(26659+offset0))
{
	vR[i] = 26659;
}
else
{
	vR[i] = 26658;
}

}
else
{
	if(input[i]==(26657+offset0))
{
	vR[i] = 26657;
}
else
{
	vR[i] = 26656;
}

}

}

}

}

}
else
{
	if(input[i]>(26639+offset0))
{
	if(input[i]>(26647+offset0))
{
	if(input[i]>(26651+offset0))
{
	if(input[i]>(26653+offset0))
{
	if(input[i]==(26655+offset0))
{
	vR[i] = 26655;
}
else
{
	vR[i] = 26654;
}

}
else
{
	if(input[i]==(26653+offset0))
{
	vR[i] = 26653;
}
else
{
	vR[i] = 26652;
}

}

}
else
{
	if(input[i]>(26649+offset0))
{
	if(input[i]==(26651+offset0))
{
	vR[i] = 26651;
}
else
{
	vR[i] = 26650;
}

}
else
{
	if(input[i]==(26649+offset0))
{
	vR[i] = 26649;
}
else
{
	vR[i] = 26648;
}

}

}

}
else
{
	if(input[i]>(26643+offset0))
{
	if(input[i]>(26645+offset0))
{
	if(input[i]==(26647+offset0))
{
	vR[i] = 26647;
}
else
{
	vR[i] = 26646;
}

}
else
{
	if(input[i]==(26645+offset0))
{
	vR[i] = 26645;
}
else
{
	vR[i] = 26644;
}

}

}
else
{
	if(input[i]>(26641+offset0))
{
	if(input[i]==(26643+offset0))
{
	vR[i] = 26643;
}
else
{
	vR[i] = 26642;
}

}
else
{
	if(input[i]==(26641+offset0))
{
	vR[i] = 26641;
}
else
{
	vR[i] = 26640;
}

}

}

}

}
else
{
	if(input[i]>(26631+offset0))
{
	if(input[i]>(26635+offset0))
{
	if(input[i]>(26637+offset0))
{
	if(input[i]==(26639+offset0))
{
	vR[i] = 26639;
}
else
{
	vR[i] = 26638;
}

}
else
{
	if(input[i]==(26637+offset0))
{
	vR[i] = 26637;
}
else
{
	vR[i] = 26636;
}

}

}
else
{
	if(input[i]>(26633+offset0))
{
	if(input[i]==(26635+offset0))
{
	vR[i] = 26635;
}
else
{
	vR[i] = 26634;
}

}
else
{
	if(input[i]==(26633+offset0))
{
	vR[i] = 26633;
}
else
{
	vR[i] = 26632;
}

}

}

}
else
{
	if(input[i]>(26627+offset0))
{
	if(input[i]>(26629+offset0))
{
	if(input[i]==(26631+offset0))
{
	vR[i] = 26631;
}
else
{
	vR[i] = 26630;
}

}
else
{
	if(input[i]==(26629+offset0))
{
	vR[i] = 26629;
}
else
{
	vR[i] = 26628;
}

}

}
else
{
	if(input[i]>(26625+offset0))
{
	if(input[i]==(26627+offset0))
{
	vR[i] = 26627;
}
else
{
	vR[i] = 26626;
}

}
else
{
	if(input[i]==(26625+offset0))
{
	vR[i] = 26625;
}
else
{
	vR[i] = 26624;
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
	if(input[i]>(25599+offset0))
{
	if(input[i]>(26111+offset0))
{
	if(input[i]>(26367+offset0))
{
	if(input[i]>(26495+offset0))
{
	if(input[i]>(26559+offset0))
{
	if(input[i]>(26591+offset0))
{
	if(input[i]>(26607+offset0))
{
	if(input[i]>(26615+offset0))
{
	if(input[i]>(26619+offset0))
{
	if(input[i]>(26621+offset0))
{
	if(input[i]==(26623+offset0))
{
	vR[i] = 26623;
}
else
{
	vR[i] = 26622;
}

}
else
{
	if(input[i]==(26621+offset0))
{
	vR[i] = 26621;
}
else
{
	vR[i] = 26620;
}

}

}
else
{
	if(input[i]>(26617+offset0))
{
	if(input[i]==(26619+offset0))
{
	vR[i] = 26619;
}
else
{
	vR[i] = 26618;
}

}
else
{
	if(input[i]==(26617+offset0))
{
	vR[i] = 26617;
}
else
{
	vR[i] = 26616;
}

}

}

}
else
{
	if(input[i]>(26611+offset0))
{
	if(input[i]>(26613+offset0))
{
	if(input[i]==(26615+offset0))
{
	vR[i] = 26615;
}
else
{
	vR[i] = 26614;
}

}
else
{
	if(input[i]==(26613+offset0))
{
	vR[i] = 26613;
}
else
{
	vR[i] = 26612;
}

}

}
else
{
	if(input[i]>(26609+offset0))
{
	if(input[i]==(26611+offset0))
{
	vR[i] = 26611;
}
else
{
	vR[i] = 26610;
}

}
else
{
	if(input[i]==(26609+offset0))
{
	vR[i] = 26609;
}
else
{
	vR[i] = 26608;
}

}

}

}

}
else
{
	if(input[i]>(26599+offset0))
{
	if(input[i]>(26603+offset0))
{
	if(input[i]>(26605+offset0))
{
	if(input[i]==(26607+offset0))
{
	vR[i] = 26607;
}
else
{
	vR[i] = 26606;
}

}
else
{
	if(input[i]==(26605+offset0))
{
	vR[i] = 26605;
}
else
{
	vR[i] = 26604;
}

}

}
else
{
	if(input[i]>(26601+offset0))
{
	if(input[i]==(26603+offset0))
{
	vR[i] = 26603;
}
else
{
	vR[i] = 26602;
}

}
else
{
	if(input[i]==(26601+offset0))
{
	vR[i] = 26601;
}
else
{
	vR[i] = 26600;
}

}

}

}
else
{
	if(input[i]>(26595+offset0))
{
	if(input[i]>(26597+offset0))
{
	if(input[i]==(26599+offset0))
{
	vR[i] = 26599;
}
else
{
	vR[i] = 26598;
}

}
else
{
	if(input[i]==(26597+offset0))
{
	vR[i] = 26597;
}
else
{
	vR[i] = 26596;
}

}

}
else
{
	if(input[i]>(26593+offset0))
{
	if(input[i]==(26595+offset0))
{
	vR[i] = 26595;
}
else
{
	vR[i] = 26594;
}

}
else
{
	if(input[i]==(26593+offset0))
{
	vR[i] = 26593;
}
else
{
	vR[i] = 26592;
}

}

}

}

}

}
else
{
	if(input[i]>(26575+offset0))
{
	if(input[i]>(26583+offset0))
{
	if(input[i]>(26587+offset0))
{
	if(input[i]>(26589+offset0))
{
	if(input[i]==(26591+offset0))
{
	vR[i] = 26591;
}
else
{
	vR[i] = 26590;
}

}
else
{
	if(input[i]==(26589+offset0))
{
	vR[i] = 26589;
}
else
{
	vR[i] = 26588;
}

}

}
else
{
	if(input[i]>(26585+offset0))
{
	if(input[i]==(26587+offset0))
{
	vR[i] = 26587;
}
else
{
	vR[i] = 26586;
}

}
else
{
	if(input[i]==(26585+offset0))
{
	vR[i] = 26585;
}
else
{
	vR[i] = 26584;
}

}

}

}
else
{
	if(input[i]>(26579+offset0))
{
	if(input[i]>(26581+offset0))
{
	if(input[i]==(26583+offset0))
{
	vR[i] = 26583;
}
else
{
	vR[i] = 26582;
}

}
else
{
	if(input[i]==(26581+offset0))
{
	vR[i] = 26581;
}
else
{
	vR[i] = 26580;
}

}

}
else
{
	if(input[i]>(26577+offset0))
{
	if(input[i]==(26579+offset0))
{
	vR[i] = 26579;
}
else
{
	vR[i] = 26578;
}

}
else
{
	if(input[i]==(26577+offset0))
{
	vR[i] = 26577;
}
else
{
	vR[i] = 26576;
}

}

}

}

}
else
{
	if(input[i]>(26567+offset0))
{
	if(input[i]>(26571+offset0))
{
	if(input[i]>(26573+offset0))
{
	if(input[i]==(26575+offset0))
{
	vR[i] = 26575;
}
else
{
	vR[i] = 26574;
}

}
else
{
	if(input[i]==(26573+offset0))
{
	vR[i] = 26573;
}
else
{
	vR[i] = 26572;
}

}

}
else
{
	if(input[i]>(26569+offset0))
{
	if(input[i]==(26571+offset0))
{
	vR[i] = 26571;
}
else
{
	vR[i] = 26570;
}

}
else
{
	if(input[i]==(26569+offset0))
{
	vR[i] = 26569;
}
else
{
	vR[i] = 26568;
}

}

}

}
else
{
	if(input[i]>(26563+offset0))
{
	if(input[i]>(26565+offset0))
{
	if(input[i]==(26567+offset0))
{
	vR[i] = 26567;
}
else
{
	vR[i] = 26566;
}

}
else
{
	if(input[i]==(26565+offset0))
{
	vR[i] = 26565;
}
else
{
	vR[i] = 26564;
}

}

}
else
{
	if(input[i]>(26561+offset0))
{
	if(input[i]==(26563+offset0))
{
	vR[i] = 26563;
}
else
{
	vR[i] = 26562;
}

}
else
{
	if(input[i]==(26561+offset0))
{
	vR[i] = 26561;
}
else
{
	vR[i] = 26560;
}

}

}

}

}

}

}
else
{
	if(input[i]>(26527+offset0))
{
	if(input[i]>(26543+offset0))
{
	if(input[i]>(26551+offset0))
{
	if(input[i]>(26555+offset0))
{
	if(input[i]>(26557+offset0))
{
	if(input[i]==(26559+offset0))
{
	vR[i] = 26559;
}
else
{
	vR[i] = 26558;
}

}
else
{
	if(input[i]==(26557+offset0))
{
	vR[i] = 26557;
}
else
{
	vR[i] = 26556;
}

}

}
else
{
	if(input[i]>(26553+offset0))
{
	if(input[i]==(26555+offset0))
{
	vR[i] = 26555;
}
else
{
	vR[i] = 26554;
}

}
else
{
	if(input[i]==(26553+offset0))
{
	vR[i] = 26553;
}
else
{
	vR[i] = 26552;
}

}

}

}
else
{
	if(input[i]>(26547+offset0))
{
	if(input[i]>(26549+offset0))
{
	if(input[i]==(26551+offset0))
{
	vR[i] = 26551;
}
else
{
	vR[i] = 26550;
}

}
else
{
	if(input[i]==(26549+offset0))
{
	vR[i] = 26549;
}
else
{
	vR[i] = 26548;
}

}

}
else
{
	if(input[i]>(26545+offset0))
{
	if(input[i]==(26547+offset0))
{
	vR[i] = 26547;
}
else
{
	vR[i] = 26546;
}

}
else
{
	if(input[i]==(26545+offset0))
{
	vR[i] = 26545;
}
else
{
	vR[i] = 26544;
}

}

}

}

}
else
{
	if(input[i]>(26535+offset0))
{
	if(input[i]>(26539+offset0))
{
	if(input[i]>(26541+offset0))
{
	if(input[i]==(26543+offset0))
{
	vR[i] = 26543;
}
else
{
	vR[i] = 26542;
}

}
else
{
	if(input[i]==(26541+offset0))
{
	vR[i] = 26541;
}
else
{
	vR[i] = 26540;
}

}

}
else
{
	if(input[i]>(26537+offset0))
{
	if(input[i]==(26539+offset0))
{
	vR[i] = 26539;
}
else
{
	vR[i] = 26538;
}

}
else
{
	if(input[i]==(26537+offset0))
{
	vR[i] = 26537;
}
else
{
	vR[i] = 26536;
}

}

}

}
else
{
	if(input[i]>(26531+offset0))
{
	if(input[i]>(26533+offset0))
{
	if(input[i]==(26535+offset0))
{
	vR[i] = 26535;
}
else
{
	vR[i] = 26534;
}

}
else
{
	if(input[i]==(26533+offset0))
{
	vR[i] = 26533;
}
else
{
	vR[i] = 26532;
}

}

}
else
{
	if(input[i]>(26529+offset0))
{
	if(input[i]==(26531+offset0))
{
	vR[i] = 26531;
}
else
{
	vR[i] = 26530;
}

}
else
{
	if(input[i]==(26529+offset0))
{
	vR[i] = 26529;
}
else
{
	vR[i] = 26528;
}

}

}

}

}

}
else
{
	if(input[i]>(26511+offset0))
{
	if(input[i]>(26519+offset0))
{
	if(input[i]>(26523+offset0))
{
	if(input[i]>(26525+offset0))
{
	if(input[i]==(26527+offset0))
{
	vR[i] = 26527;
}
else
{
	vR[i] = 26526;
}

}
else
{
	if(input[i]==(26525+offset0))
{
	vR[i] = 26525;
}
else
{
	vR[i] = 26524;
}

}

}
else
{
	if(input[i]>(26521+offset0))
{
	if(input[i]==(26523+offset0))
{
	vR[i] = 26523;
}
else
{
	vR[i] = 26522;
}

}
else
{
	if(input[i]==(26521+offset0))
{
	vR[i] = 26521;
}
else
{
	vR[i] = 26520;
}

}

}

}
else
{
	if(input[i]>(26515+offset0))
{
	if(input[i]>(26517+offset0))
{
	if(input[i]==(26519+offset0))
{
	vR[i] = 26519;
}
else
{
	vR[i] = 26518;
}

}
else
{
	if(input[i]==(26517+offset0))
{
	vR[i] = 26517;
}
else
{
	vR[i] = 26516;
}

}

}
else
{
	if(input[i]>(26513+offset0))
{
	if(input[i]==(26515+offset0))
{
	vR[i] = 26515;
}
else
{
	vR[i] = 26514;
}

}
else
{
	if(input[i]==(26513+offset0))
{
	vR[i] = 26513;
}
else
{
	vR[i] = 26512;
}

}

}

}

}
else
{
	if(input[i]>(26503+offset0))
{
	if(input[i]>(26507+offset0))
{
	if(input[i]>(26509+offset0))
{
	if(input[i]==(26511+offset0))
{
	vR[i] = 26511;
}
else
{
	vR[i] = 26510;
}

}
else
{
	if(input[i]==(26509+offset0))
{
	vR[i] = 26509;
}
else
{
	vR[i] = 26508;
}

}

}
else
{
	if(input[i]>(26505+offset0))
{
	if(input[i]==(26507+offset0))
{
	vR[i] = 26507;
}
else
{
	vR[i] = 26506;
}

}
else
{
	if(input[i]==(26505+offset0))
{
	vR[i] = 26505;
}
else
{
	vR[i] = 26504;
}

}

}

}
else
{
	if(input[i]>(26499+offset0))
{
	if(input[i]>(26501+offset0))
{
	if(input[i]==(26503+offset0))
{
	vR[i] = 26503;
}
else
{
	vR[i] = 26502;
}

}
else
{
	if(input[i]==(26501+offset0))
{
	vR[i] = 26501;
}
else
{
	vR[i] = 26500;
}

}

}
else
{
	if(input[i]>(26497+offset0))
{
	if(input[i]==(26499+offset0))
{
	vR[i] = 26499;
}
else
{
	vR[i] = 26498;
}

}
else
{
	if(input[i]==(26497+offset0))
{
	vR[i] = 26497;
}
else
{
	vR[i] = 26496;
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
	if(input[i]>(26431+offset0))
{
	if(input[i]>(26463+offset0))
{
	if(input[i]>(26479+offset0))
{
	if(input[i]>(26487+offset0))
{
	if(input[i]>(26491+offset0))
{
	if(input[i]>(26493+offset0))
{
	if(input[i]==(26495+offset0))
{
	vR[i] = 26495;
}
else
{
	vR[i] = 26494;
}

}
else
{
	if(input[i]==(26493+offset0))
{
	vR[i] = 26493;
}
else
{
	vR[i] = 26492;
}

}

}
else
{
	if(input[i]>(26489+offset0))
{
	if(input[i]==(26491+offset0))
{
	vR[i] = 26491;
}
else
{
	vR[i] = 26490;
}

}
else
{
	if(input[i]==(26489+offset0))
{
	vR[i] = 26489;
}
else
{
	vR[i] = 26488;
}

}

}

}
else
{
	if(input[i]>(26483+offset0))
{
	if(input[i]>(26485+offset0))
{
	if(input[i]==(26487+offset0))
{
	vR[i] = 26487;
}
else
{
	vR[i] = 26486;
}

}
else
{
	if(input[i]==(26485+offset0))
{
	vR[i] = 26485;
}
else
{
	vR[i] = 26484;
}

}

}
else
{
	if(input[i]>(26481+offset0))
{
	if(input[i]==(26483+offset0))
{
	vR[i] = 26483;
}
else
{
	vR[i] = 26482;
}

}
else
{
	if(input[i]==(26481+offset0))
{
	vR[i] = 26481;
}
else
{
	vR[i] = 26480;
}

}

}

}

}
else
{
	if(input[i]>(26471+offset0))
{
	if(input[i]>(26475+offset0))
{
	if(input[i]>(26477+offset0))
{
	if(input[i]==(26479+offset0))
{
	vR[i] = 26479;
}
else
{
	vR[i] = 26478;
}

}
else
{
	if(input[i]==(26477+offset0))
{
	vR[i] = 26477;
}
else
{
	vR[i] = 26476;
}

}

}
else
{
	if(input[i]>(26473+offset0))
{
	if(input[i]==(26475+offset0))
{
	vR[i] = 26475;
}
else
{
	vR[i] = 26474;
}

}
else
{
	if(input[i]==(26473+offset0))
{
	vR[i] = 26473;
}
else
{
	vR[i] = 26472;
}

}

}

}
else
{
	if(input[i]>(26467+offset0))
{
	if(input[i]>(26469+offset0))
{
	if(input[i]==(26471+offset0))
{
	vR[i] = 26471;
}
else
{
	vR[i] = 26470;
}

}
else
{
	if(input[i]==(26469+offset0))
{
	vR[i] = 26469;
}
else
{
	vR[i] = 26468;
}

}

}
else
{
	if(input[i]>(26465+offset0))
{
	if(input[i]==(26467+offset0))
{
	vR[i] = 26467;
}
else
{
	vR[i] = 26466;
}

}
else
{
	if(input[i]==(26465+offset0))
{
	vR[i] = 26465;
}
else
{
	vR[i] = 26464;
}

}

}

}

}

}
else
{
	if(input[i]>(26447+offset0))
{
	if(input[i]>(26455+offset0))
{
	if(input[i]>(26459+offset0))
{
	if(input[i]>(26461+offset0))
{
	if(input[i]==(26463+offset0))
{
	vR[i] = 26463;
}
else
{
	vR[i] = 26462;
}

}
else
{
	if(input[i]==(26461+offset0))
{
	vR[i] = 26461;
}
else
{
	vR[i] = 26460;
}

}

}
else
{
	if(input[i]>(26457+offset0))
{
	if(input[i]==(26459+offset0))
{
	vR[i] = 26459;
}
else
{
	vR[i] = 26458;
}

}
else
{
	if(input[i]==(26457+offset0))
{
	vR[i] = 26457;
}
else
{
	vR[i] = 26456;
}

}

}

}
else
{
	if(input[i]>(26451+offset0))
{
	if(input[i]>(26453+offset0))
{
	if(input[i]==(26455+offset0))
{
	vR[i] = 26455;
}
else
{
	vR[i] = 26454;
}

}
else
{
	if(input[i]==(26453+offset0))
{
	vR[i] = 26453;
}
else
{
	vR[i] = 26452;
}

}

}
else
{
	if(input[i]>(26449+offset0))
{
	if(input[i]==(26451+offset0))
{
	vR[i] = 26451;
}
else
{
	vR[i] = 26450;
}

}
else
{
	if(input[i]==(26449+offset0))
{
	vR[i] = 26449;
}
else
{
	vR[i] = 26448;
}

}

}

}

}
else
{
	if(input[i]>(26439+offset0))
{
	if(input[i]>(26443+offset0))
{
	if(input[i]>(26445+offset0))
{
	if(input[i]==(26447+offset0))
{
	vR[i] = 26447;
}
else
{
	vR[i] = 26446;
}

}
else
{
	if(input[i]==(26445+offset0))
{
	vR[i] = 26445;
}
else
{
	vR[i] = 26444;
}

}

}
else
{
	if(input[i]>(26441+offset0))
{
	if(input[i]==(26443+offset0))
{
	vR[i] = 26443;
}
else
{
	vR[i] = 26442;
}

}
else
{
	if(input[i]==(26441+offset0))
{
	vR[i] = 26441;
}
else
{
	vR[i] = 26440;
}

}

}

}
else
{
	if(input[i]>(26435+offset0))
{
	if(input[i]>(26437+offset0))
{
	if(input[i]==(26439+offset0))
{
	vR[i] = 26439;
}
else
{
	vR[i] = 26438;
}

}
else
{
	if(input[i]==(26437+offset0))
{
	vR[i] = 26437;
}
else
{
	vR[i] = 26436;
}

}

}
else
{
	if(input[i]>(26433+offset0))
{
	if(input[i]==(26435+offset0))
{
	vR[i] = 26435;
}
else
{
	vR[i] = 26434;
}

}
else
{
	if(input[i]==(26433+offset0))
{
	vR[i] = 26433;
}
else
{
	vR[i] = 26432;
}

}

}

}

}

}

}
else
{
	if(input[i]>(26399+offset0))
{
	if(input[i]>(26415+offset0))
{
	if(input[i]>(26423+offset0))
{
	if(input[i]>(26427+offset0))
{
	if(input[i]>(26429+offset0))
{
	if(input[i]==(26431+offset0))
{
	vR[i] = 26431;
}
else
{
	vR[i] = 26430;
}

}
else
{
	if(input[i]==(26429+offset0))
{
	vR[i] = 26429;
}
else
{
	vR[i] = 26428;
}

}

}
else
{
	if(input[i]>(26425+offset0))
{
	if(input[i]==(26427+offset0))
{
	vR[i] = 26427;
}
else
{
	vR[i] = 26426;
}

}
else
{
	if(input[i]==(26425+offset0))
{
	vR[i] = 26425;
}
else
{
	vR[i] = 26424;
}

}

}

}
else
{
	if(input[i]>(26419+offset0))
{
	if(input[i]>(26421+offset0))
{
	if(input[i]==(26423+offset0))
{
	vR[i] = 26423;
}
else
{
	vR[i] = 26422;
}

}
else
{
	if(input[i]==(26421+offset0))
{
	vR[i] = 26421;
}
else
{
	vR[i] = 26420;
}

}

}
else
{
	if(input[i]>(26417+offset0))
{
	if(input[i]==(26419+offset0))
{
	vR[i] = 26419;
}
else
{
	vR[i] = 26418;
}

}
else
{
	if(input[i]==(26417+offset0))
{
	vR[i] = 26417;
}
else
{
	vR[i] = 26416;
}

}

}

}

}
else
{
	if(input[i]>(26407+offset0))
{
	if(input[i]>(26411+offset0))
{
	if(input[i]>(26413+offset0))
{
	if(input[i]==(26415+offset0))
{
	vR[i] = 26415;
}
else
{
	vR[i] = 26414;
}

}
else
{
	if(input[i]==(26413+offset0))
{
	vR[i] = 26413;
}
else
{
	vR[i] = 26412;
}

}

}
else
{
	if(input[i]>(26409+offset0))
{
	if(input[i]==(26411+offset0))
{
	vR[i] = 26411;
}
else
{
	vR[i] = 26410;
}

}
else
{
	if(input[i]==(26409+offset0))
{
	vR[i] = 26409;
}
else
{
	vR[i] = 26408;
}

}

}

}
else
{
	if(input[i]>(26403+offset0))
{
	if(input[i]>(26405+offset0))
{
	if(input[i]==(26407+offset0))
{
	vR[i] = 26407;
}
else
{
	vR[i] = 26406;
}

}
else
{
	if(input[i]==(26405+offset0))
{
	vR[i] = 26405;
}
else
{
	vR[i] = 26404;
}

}

}
else
{
	if(input[i]>(26401+offset0))
{
	if(input[i]==(26403+offset0))
{
	vR[i] = 26403;
}
else
{
	vR[i] = 26402;
}

}
else
{
	if(input[i]==(26401+offset0))
{
	vR[i] = 26401;
}
else
{
	vR[i] = 26400;
}

}

}

}

}

}
else
{
	if(input[i]>(26383+offset0))
{
	if(input[i]>(26391+offset0))
{
	if(input[i]>(26395+offset0))
{
	if(input[i]>(26397+offset0))
{
	if(input[i]==(26399+offset0))
{
	vR[i] = 26399;
}
else
{
	vR[i] = 26398;
}

}
else
{
	if(input[i]==(26397+offset0))
{
	vR[i] = 26397;
}
else
{
	vR[i] = 26396;
}

}

}
else
{
	if(input[i]>(26393+offset0))
{
	if(input[i]==(26395+offset0))
{
	vR[i] = 26395;
}
else
{
	vR[i] = 26394;
}

}
else
{
	if(input[i]==(26393+offset0))
{
	vR[i] = 26393;
}
else
{
	vR[i] = 26392;
}

}

}

}
else
{
	if(input[i]>(26387+offset0))
{
	if(input[i]>(26389+offset0))
{
	if(input[i]==(26391+offset0))
{
	vR[i] = 26391;
}
else
{
	vR[i] = 26390;
}

}
else
{
	if(input[i]==(26389+offset0))
{
	vR[i] = 26389;
}
else
{
	vR[i] = 26388;
}

}

}
else
{
	if(input[i]>(26385+offset0))
{
	if(input[i]==(26387+offset0))
{
	vR[i] = 26387;
}
else
{
	vR[i] = 26386;
}

}
else
{
	if(input[i]==(26385+offset0))
{
	vR[i] = 26385;
}
else
{
	vR[i] = 26384;
}

}

}

}

}
else
{
	if(input[i]>(26375+offset0))
{
	if(input[i]>(26379+offset0))
{
	if(input[i]>(26381+offset0))
{
	if(input[i]==(26383+offset0))
{
	vR[i] = 26383;
}
else
{
	vR[i] = 26382;
}

}
else
{
	if(input[i]==(26381+offset0))
{
	vR[i] = 26381;
}
else
{
	vR[i] = 26380;
}

}

}
else
{
	if(input[i]>(26377+offset0))
{
	if(input[i]==(26379+offset0))
{
	vR[i] = 26379;
}
else
{
	vR[i] = 26378;
}

}
else
{
	if(input[i]==(26377+offset0))
{
	vR[i] = 26377;
}
else
{
	vR[i] = 26376;
}

}

}

}
else
{
	if(input[i]>(26371+offset0))
{
	if(input[i]>(26373+offset0))
{
	if(input[i]==(26375+offset0))
{
	vR[i] = 26375;
}
else
{
	vR[i] = 26374;
}

}
else
{
	if(input[i]==(26373+offset0))
{
	vR[i] = 26373;
}
else
{
	vR[i] = 26372;
}

}

}
else
{
	if(input[i]>(26369+offset0))
{
	if(input[i]==(26371+offset0))
{
	vR[i] = 26371;
}
else
{
	vR[i] = 26370;
}

}
else
{
	if(input[i]==(26369+offset0))
{
	vR[i] = 26369;
}
else
{
	vR[i] = 26368;
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
	if(input[i]>(26239+offset0))
{
	if(input[i]>(26303+offset0))
{
	if(input[i]>(26335+offset0))
{
	if(input[i]>(26351+offset0))
{
	if(input[i]>(26359+offset0))
{
	if(input[i]>(26363+offset0))
{
	if(input[i]>(26365+offset0))
{
	if(input[i]==(26367+offset0))
{
	vR[i] = 26367;
}
else
{
	vR[i] = 26366;
}

}
else
{
	if(input[i]==(26365+offset0))
{
	vR[i] = 26365;
}
else
{
	vR[i] = 26364;
}

}

}
else
{
	if(input[i]>(26361+offset0))
{
	if(input[i]==(26363+offset0))
{
	vR[i] = 26363;
}
else
{
	vR[i] = 26362;
}

}
else
{
	if(input[i]==(26361+offset0))
{
	vR[i] = 26361;
}
else
{
	vR[i] = 26360;
}

}

}

}
else
{
	if(input[i]>(26355+offset0))
{
	if(input[i]>(26357+offset0))
{
	if(input[i]==(26359+offset0))
{
	vR[i] = 26359;
}
else
{
	vR[i] = 26358;
}

}
else
{
	if(input[i]==(26357+offset0))
{
	vR[i] = 26357;
}
else
{
	vR[i] = 26356;
}

}

}
else
{
	if(input[i]>(26353+offset0))
{
	if(input[i]==(26355+offset0))
{
	vR[i] = 26355;
}
else
{
	vR[i] = 26354;
}

}
else
{
	if(input[i]==(26353+offset0))
{
	vR[i] = 26353;
}
else
{
	vR[i] = 26352;
}

}

}

}

}
else
{
	if(input[i]>(26343+offset0))
{
	if(input[i]>(26347+offset0))
{
	if(input[i]>(26349+offset0))
{
	if(input[i]==(26351+offset0))
{
	vR[i] = 26351;
}
else
{
	vR[i] = 26350;
}

}
else
{
	if(input[i]==(26349+offset0))
{
	vR[i] = 26349;
}
else
{
	vR[i] = 26348;
}

}

}
else
{
	if(input[i]>(26345+offset0))
{
	if(input[i]==(26347+offset0))
{
	vR[i] = 26347;
}
else
{
	vR[i] = 26346;
}

}
else
{
	if(input[i]==(26345+offset0))
{
	vR[i] = 26345;
}
else
{
	vR[i] = 26344;
}

}

}

}
else
{
	if(input[i]>(26339+offset0))
{
	if(input[i]>(26341+offset0))
{
	if(input[i]==(26343+offset0))
{
	vR[i] = 26343;
}
else
{
	vR[i] = 26342;
}

}
else
{
	if(input[i]==(26341+offset0))
{
	vR[i] = 26341;
}
else
{
	vR[i] = 26340;
}

}

}
else
{
	if(input[i]>(26337+offset0))
{
	if(input[i]==(26339+offset0))
{
	vR[i] = 26339;
}
else
{
	vR[i] = 26338;
}

}
else
{
	if(input[i]==(26337+offset0))
{
	vR[i] = 26337;
}
else
{
	vR[i] = 26336;
}

}

}

}

}

}
else
{
	if(input[i]>(26319+offset0))
{
	if(input[i]>(26327+offset0))
{
	if(input[i]>(26331+offset0))
{
	if(input[i]>(26333+offset0))
{
	if(input[i]==(26335+offset0))
{
	vR[i] = 26335;
}
else
{
	vR[i] = 26334;
}

}
else
{
	if(input[i]==(26333+offset0))
{
	vR[i] = 26333;
}
else
{
	vR[i] = 26332;
}

}

}
else
{
	if(input[i]>(26329+offset0))
{
	if(input[i]==(26331+offset0))
{
	vR[i] = 26331;
}
else
{
	vR[i] = 26330;
}

}
else
{
	if(input[i]==(26329+offset0))
{
	vR[i] = 26329;
}
else
{
	vR[i] = 26328;
}

}

}

}
else
{
	if(input[i]>(26323+offset0))
{
	if(input[i]>(26325+offset0))
{
	if(input[i]==(26327+offset0))
{
	vR[i] = 26327;
}
else
{
	vR[i] = 26326;
}

}
else
{
	if(input[i]==(26325+offset0))
{
	vR[i] = 26325;
}
else
{
	vR[i] = 26324;
}

}

}
else
{
	if(input[i]>(26321+offset0))
{
	if(input[i]==(26323+offset0))
{
	vR[i] = 26323;
}
else
{
	vR[i] = 26322;
}

}
else
{
	if(input[i]==(26321+offset0))
{
	vR[i] = 26321;
}
else
{
	vR[i] = 26320;
}

}

}

}

}
else
{
	if(input[i]>(26311+offset0))
{
	if(input[i]>(26315+offset0))
{
	if(input[i]>(26317+offset0))
{
	if(input[i]==(26319+offset0))
{
	vR[i] = 26319;
}
else
{
	vR[i] = 26318;
}

}
else
{
	if(input[i]==(26317+offset0))
{
	vR[i] = 26317;
}
else
{
	vR[i] = 26316;
}

}

}
else
{
	if(input[i]>(26313+offset0))
{
	if(input[i]==(26315+offset0))
{
	vR[i] = 26315;
}
else
{
	vR[i] = 26314;
}

}
else
{
	if(input[i]==(26313+offset0))
{
	vR[i] = 26313;
}
else
{
	vR[i] = 26312;
}

}

}

}
else
{
	if(input[i]>(26307+offset0))
{
	if(input[i]>(26309+offset0))
{
	if(input[i]==(26311+offset0))
{
	vR[i] = 26311;
}
else
{
	vR[i] = 26310;
}

}
else
{
	if(input[i]==(26309+offset0))
{
	vR[i] = 26309;
}
else
{
	vR[i] = 26308;
}

}

}
else
{
	if(input[i]>(26305+offset0))
{
	if(input[i]==(26307+offset0))
{
	vR[i] = 26307;
}
else
{
	vR[i] = 26306;
}

}
else
{
	if(input[i]==(26305+offset0))
{
	vR[i] = 26305;
}
else
{
	vR[i] = 26304;
}

}

}

}

}

}

}
else
{
	if(input[i]>(26271+offset0))
{
	if(input[i]>(26287+offset0))
{
	if(input[i]>(26295+offset0))
{
	if(input[i]>(26299+offset0))
{
	if(input[i]>(26301+offset0))
{
	if(input[i]==(26303+offset0))
{
	vR[i] = 26303;
}
else
{
	vR[i] = 26302;
}

}
else
{
	if(input[i]==(26301+offset0))
{
	vR[i] = 26301;
}
else
{
	vR[i] = 26300;
}

}

}
else
{
	if(input[i]>(26297+offset0))
{
	if(input[i]==(26299+offset0))
{
	vR[i] = 26299;
}
else
{
	vR[i] = 26298;
}

}
else
{
	if(input[i]==(26297+offset0))
{
	vR[i] = 26297;
}
else
{
	vR[i] = 26296;
}

}

}

}
else
{
	if(input[i]>(26291+offset0))
{
	if(input[i]>(26293+offset0))
{
	if(input[i]==(26295+offset0))
{
	vR[i] = 26295;
}
else
{
	vR[i] = 26294;
}

}
else
{
	if(input[i]==(26293+offset0))
{
	vR[i] = 26293;
}
else
{
	vR[i] = 26292;
}

}

}
else
{
	if(input[i]>(26289+offset0))
{
	if(input[i]==(26291+offset0))
{
	vR[i] = 26291;
}
else
{
	vR[i] = 26290;
}

}
else
{
	if(input[i]==(26289+offset0))
{
	vR[i] = 26289;
}
else
{
	vR[i] = 26288;
}

}

}

}

}
else
{
	if(input[i]>(26279+offset0))
{
	if(input[i]>(26283+offset0))
{
	if(input[i]>(26285+offset0))
{
	if(input[i]==(26287+offset0))
{
	vR[i] = 26287;
}
else
{
	vR[i] = 26286;
}

}
else
{
	if(input[i]==(26285+offset0))
{
	vR[i] = 26285;
}
else
{
	vR[i] = 26284;
}

}

}
else
{
	if(input[i]>(26281+offset0))
{
	if(input[i]==(26283+offset0))
{
	vR[i] = 26283;
}
else
{
	vR[i] = 26282;
}

}
else
{
	if(input[i]==(26281+offset0))
{
	vR[i] = 26281;
}
else
{
	vR[i] = 26280;
}

}

}

}
else
{
	if(input[i]>(26275+offset0))
{
	if(input[i]>(26277+offset0))
{
	if(input[i]==(26279+offset0))
{
	vR[i] = 26279;
}
else
{
	vR[i] = 26278;
}

}
else
{
	if(input[i]==(26277+offset0))
{
	vR[i] = 26277;
}
else
{
	vR[i] = 26276;
}

}

}
else
{
	if(input[i]>(26273+offset0))
{
	if(input[i]==(26275+offset0))
{
	vR[i] = 26275;
}
else
{
	vR[i] = 26274;
}

}
else
{
	if(input[i]==(26273+offset0))
{
	vR[i] = 26273;
}
else
{
	vR[i] = 26272;
}

}

}

}

}

}
else
{
	if(input[i]>(26255+offset0))
{
	if(input[i]>(26263+offset0))
{
	if(input[i]>(26267+offset0))
{
	if(input[i]>(26269+offset0))
{
	if(input[i]==(26271+offset0))
{
	vR[i] = 26271;
}
else
{
	vR[i] = 26270;
}

}
else
{
	if(input[i]==(26269+offset0))
{
	vR[i] = 26269;
}
else
{
	vR[i] = 26268;
}

}

}
else
{
	if(input[i]>(26265+offset0))
{
	if(input[i]==(26267+offset0))
{
	vR[i] = 26267;
}
else
{
	vR[i] = 26266;
}

}
else
{
	if(input[i]==(26265+offset0))
{
	vR[i] = 26265;
}
else
{
	vR[i] = 26264;
}

}

}

}
else
{
	if(input[i]>(26259+offset0))
{
	if(input[i]>(26261+offset0))
{
	if(input[i]==(26263+offset0))
{
	vR[i] = 26263;
}
else
{
	vR[i] = 26262;
}

}
else
{
	if(input[i]==(26261+offset0))
{
	vR[i] = 26261;
}
else
{
	vR[i] = 26260;
}

}

}
else
{
	if(input[i]>(26257+offset0))
{
	if(input[i]==(26259+offset0))
{
	vR[i] = 26259;
}
else
{
	vR[i] = 26258;
}

}
else
{
	if(input[i]==(26257+offset0))
{
	vR[i] = 26257;
}
else
{
	vR[i] = 26256;
}

}

}

}

}
else
{
	if(input[i]>(26247+offset0))
{
	if(input[i]>(26251+offset0))
{
	if(input[i]>(26253+offset0))
{
	if(input[i]==(26255+offset0))
{
	vR[i] = 26255;
}
else
{
	vR[i] = 26254;
}

}
else
{
	if(input[i]==(26253+offset0))
{
	vR[i] = 26253;
}
else
{
	vR[i] = 26252;
}

}

}
else
{
	if(input[i]>(26249+offset0))
{
	if(input[i]==(26251+offset0))
{
	vR[i] = 26251;
}
else
{
	vR[i] = 26250;
}

}
else
{
	if(input[i]==(26249+offset0))
{
	vR[i] = 26249;
}
else
{
	vR[i] = 26248;
}

}

}

}
else
{
	if(input[i]>(26243+offset0))
{
	if(input[i]>(26245+offset0))
{
	if(input[i]==(26247+offset0))
{
	vR[i] = 26247;
}
else
{
	vR[i] = 26246;
}

}
else
{
	if(input[i]==(26245+offset0))
{
	vR[i] = 26245;
}
else
{
	vR[i] = 26244;
}

}

}
else
{
	if(input[i]>(26241+offset0))
{
	if(input[i]==(26243+offset0))
{
	vR[i] = 26243;
}
else
{
	vR[i] = 26242;
}

}
else
{
	if(input[i]==(26241+offset0))
{
	vR[i] = 26241;
}
else
{
	vR[i] = 26240;
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
	if(input[i]>(26175+offset0))
{
	if(input[i]>(26207+offset0))
{
	if(input[i]>(26223+offset0))
{
	if(input[i]>(26231+offset0))
{
	if(input[i]>(26235+offset0))
{
	if(input[i]>(26237+offset0))
{
	if(input[i]==(26239+offset0))
{
	vR[i] = 26239;
}
else
{
	vR[i] = 26238;
}

}
else
{
	if(input[i]==(26237+offset0))
{
	vR[i] = 26237;
}
else
{
	vR[i] = 26236;
}

}

}
else
{
	if(input[i]>(26233+offset0))
{
	if(input[i]==(26235+offset0))
{
	vR[i] = 26235;
}
else
{
	vR[i] = 26234;
}

}
else
{
	if(input[i]==(26233+offset0))
{
	vR[i] = 26233;
}
else
{
	vR[i] = 26232;
}

}

}

}
else
{
	if(input[i]>(26227+offset0))
{
	if(input[i]>(26229+offset0))
{
	if(input[i]==(26231+offset0))
{
	vR[i] = 26231;
}
else
{
	vR[i] = 26230;
}

}
else
{
	if(input[i]==(26229+offset0))
{
	vR[i] = 26229;
}
else
{
	vR[i] = 26228;
}

}

}
else
{
	if(input[i]>(26225+offset0))
{
	if(input[i]==(26227+offset0))
{
	vR[i] = 26227;
}
else
{
	vR[i] = 26226;
}

}
else
{
	if(input[i]==(26225+offset0))
{
	vR[i] = 26225;
}
else
{
	vR[i] = 26224;
}

}

}

}

}
else
{
	if(input[i]>(26215+offset0))
{
	if(input[i]>(26219+offset0))
{
	if(input[i]>(26221+offset0))
{
	if(input[i]==(26223+offset0))
{
	vR[i] = 26223;
}
else
{
	vR[i] = 26222;
}

}
else
{
	if(input[i]==(26221+offset0))
{
	vR[i] = 26221;
}
else
{
	vR[i] = 26220;
}

}

}
else
{
	if(input[i]>(26217+offset0))
{
	if(input[i]==(26219+offset0))
{
	vR[i] = 26219;
}
else
{
	vR[i] = 26218;
}

}
else
{
	if(input[i]==(26217+offset0))
{
	vR[i] = 26217;
}
else
{
	vR[i] = 26216;
}

}

}

}
else
{
	if(input[i]>(26211+offset0))
{
	if(input[i]>(26213+offset0))
{
	if(input[i]==(26215+offset0))
{
	vR[i] = 26215;
}
else
{
	vR[i] = 26214;
}

}
else
{
	if(input[i]==(26213+offset0))
{
	vR[i] = 26213;
}
else
{
	vR[i] = 26212;
}

}

}
else
{
	if(input[i]>(26209+offset0))
{
	if(input[i]==(26211+offset0))
{
	vR[i] = 26211;
}
else
{
	vR[i] = 26210;
}

}
else
{
	if(input[i]==(26209+offset0))
{
	vR[i] = 26209;
}
else
{
	vR[i] = 26208;
}

}

}

}

}

}
else
{
	if(input[i]>(26191+offset0))
{
	if(input[i]>(26199+offset0))
{
	if(input[i]>(26203+offset0))
{
	if(input[i]>(26205+offset0))
{
	if(input[i]==(26207+offset0))
{
	vR[i] = 26207;
}
else
{
	vR[i] = 26206;
}

}
else
{
	if(input[i]==(26205+offset0))
{
	vR[i] = 26205;
}
else
{
	vR[i] = 26204;
}

}

}
else
{
	if(input[i]>(26201+offset0))
{
	if(input[i]==(26203+offset0))
{
	vR[i] = 26203;
}
else
{
	vR[i] = 26202;
}

}
else
{
	if(input[i]==(26201+offset0))
{
	vR[i] = 26201;
}
else
{
	vR[i] = 26200;
}

}

}

}
else
{
	if(input[i]>(26195+offset0))
{
	if(input[i]>(26197+offset0))
{
	if(input[i]==(26199+offset0))
{
	vR[i] = 26199;
}
else
{
	vR[i] = 26198;
}

}
else
{
	if(input[i]==(26197+offset0))
{
	vR[i] = 26197;
}
else
{
	vR[i] = 26196;
}

}

}
else
{
	if(input[i]>(26193+offset0))
{
	if(input[i]==(26195+offset0))
{
	vR[i] = 26195;
}
else
{
	vR[i] = 26194;
}

}
else
{
	if(input[i]==(26193+offset0))
{
	vR[i] = 26193;
}
else
{
	vR[i] = 26192;
}

}

}

}

}
else
{
	if(input[i]>(26183+offset0))
{
	if(input[i]>(26187+offset0))
{
	if(input[i]>(26189+offset0))
{
	if(input[i]==(26191+offset0))
{
	vR[i] = 26191;
}
else
{
	vR[i] = 26190;
}

}
else
{
	if(input[i]==(26189+offset0))
{
	vR[i] = 26189;
}
else
{
	vR[i] = 26188;
}

}

}
else
{
	if(input[i]>(26185+offset0))
{
	if(input[i]==(26187+offset0))
{
	vR[i] = 26187;
}
else
{
	vR[i] = 26186;
}

}
else
{
	if(input[i]==(26185+offset0))
{
	vR[i] = 26185;
}
else
{
	vR[i] = 26184;
}

}

}

}
else
{
	if(input[i]>(26179+offset0))
{
	if(input[i]>(26181+offset0))
{
	if(input[i]==(26183+offset0))
{
	vR[i] = 26183;
}
else
{
	vR[i] = 26182;
}

}
else
{
	if(input[i]==(26181+offset0))
{
	vR[i] = 26181;
}
else
{
	vR[i] = 26180;
}

}

}
else
{
	if(input[i]>(26177+offset0))
{
	if(input[i]==(26179+offset0))
{
	vR[i] = 26179;
}
else
{
	vR[i] = 26178;
}

}
else
{
	if(input[i]==(26177+offset0))
{
	vR[i] = 26177;
}
else
{
	vR[i] = 26176;
}

}

}

}

}

}

}
else
{
	if(input[i]>(26143+offset0))
{
	if(input[i]>(26159+offset0))
{
	if(input[i]>(26167+offset0))
{
	if(input[i]>(26171+offset0))
{
	if(input[i]>(26173+offset0))
{
	if(input[i]==(26175+offset0))
{
	vR[i] = 26175;
}
else
{
	vR[i] = 26174;
}

}
else
{
	if(input[i]==(26173+offset0))
{
	vR[i] = 26173;
}
else
{
	vR[i] = 26172;
}

}

}
else
{
	if(input[i]>(26169+offset0))
{
	if(input[i]==(26171+offset0))
{
	vR[i] = 26171;
}
else
{
	vR[i] = 26170;
}

}
else
{
	if(input[i]==(26169+offset0))
{
	vR[i] = 26169;
}
else
{
	vR[i] = 26168;
}

}

}

}
else
{
	if(input[i]>(26163+offset0))
{
	if(input[i]>(26165+offset0))
{
	if(input[i]==(26167+offset0))
{
	vR[i] = 26167;
}
else
{
	vR[i] = 26166;
}

}
else
{
	if(input[i]==(26165+offset0))
{
	vR[i] = 26165;
}
else
{
	vR[i] = 26164;
}

}

}
else
{
	if(input[i]>(26161+offset0))
{
	if(input[i]==(26163+offset0))
{
	vR[i] = 26163;
}
else
{
	vR[i] = 26162;
}

}
else
{
	if(input[i]==(26161+offset0))
{
	vR[i] = 26161;
}
else
{
	vR[i] = 26160;
}

}

}

}

}
else
{
	if(input[i]>(26151+offset0))
{
	if(input[i]>(26155+offset0))
{
	if(input[i]>(26157+offset0))
{
	if(input[i]==(26159+offset0))
{
	vR[i] = 26159;
}
else
{
	vR[i] = 26158;
}

}
else
{
	if(input[i]==(26157+offset0))
{
	vR[i] = 26157;
}
else
{
	vR[i] = 26156;
}

}

}
else
{
	if(input[i]>(26153+offset0))
{
	if(input[i]==(26155+offset0))
{
	vR[i] = 26155;
}
else
{
	vR[i] = 26154;
}

}
else
{
	if(input[i]==(26153+offset0))
{
	vR[i] = 26153;
}
else
{
	vR[i] = 26152;
}

}

}

}
else
{
	if(input[i]>(26147+offset0))
{
	if(input[i]>(26149+offset0))
{
	if(input[i]==(26151+offset0))
{
	vR[i] = 26151;
}
else
{
	vR[i] = 26150;
}

}
else
{
	if(input[i]==(26149+offset0))
{
	vR[i] = 26149;
}
else
{
	vR[i] = 26148;
}

}

}
else
{
	if(input[i]>(26145+offset0))
{
	if(input[i]==(26147+offset0))
{
	vR[i] = 26147;
}
else
{
	vR[i] = 26146;
}

}
else
{
	if(input[i]==(26145+offset0))
{
	vR[i] = 26145;
}
else
{
	vR[i] = 26144;
}

}

}

}

}

}
else
{
	if(input[i]>(26127+offset0))
{
	if(input[i]>(26135+offset0))
{
	if(input[i]>(26139+offset0))
{
	if(input[i]>(26141+offset0))
{
	if(input[i]==(26143+offset0))
{
	vR[i] = 26143;
}
else
{
	vR[i] = 26142;
}

}
else
{
	if(input[i]==(26141+offset0))
{
	vR[i] = 26141;
}
else
{
	vR[i] = 26140;
}

}

}
else
{
	if(input[i]>(26137+offset0))
{
	if(input[i]==(26139+offset0))
{
	vR[i] = 26139;
}
else
{
	vR[i] = 26138;
}

}
else
{
	if(input[i]==(26137+offset0))
{
	vR[i] = 26137;
}
else
{
	vR[i] = 26136;
}

}

}

}
else
{
	if(input[i]>(26131+offset0))
{
	if(input[i]>(26133+offset0))
{
	if(input[i]==(26135+offset0))
{
	vR[i] = 26135;
}
else
{
	vR[i] = 26134;
}

}
else
{
	if(input[i]==(26133+offset0))
{
	vR[i] = 26133;
}
else
{
	vR[i] = 26132;
}

}

}
else
{
	if(input[i]>(26129+offset0))
{
	if(input[i]==(26131+offset0))
{
	vR[i] = 26131;
}
else
{
	vR[i] = 26130;
}

}
else
{
	if(input[i]==(26129+offset0))
{
	vR[i] = 26129;
}
else
{
	vR[i] = 26128;
}

}

}

}

}
else
{
	if(input[i]>(26119+offset0))
{
	if(input[i]>(26123+offset0))
{
	if(input[i]>(26125+offset0))
{
	if(input[i]==(26127+offset0))
{
	vR[i] = 26127;
}
else
{
	vR[i] = 26126;
}

}
else
{
	if(input[i]==(26125+offset0))
{
	vR[i] = 26125;
}
else
{
	vR[i] = 26124;
}

}

}
else
{
	if(input[i]>(26121+offset0))
{
	if(input[i]==(26123+offset0))
{
	vR[i] = 26123;
}
else
{
	vR[i] = 26122;
}

}
else
{
	if(input[i]==(26121+offset0))
{
	vR[i] = 26121;
}
else
{
	vR[i] = 26120;
}

}

}

}
else
{
	if(input[i]>(26115+offset0))
{
	if(input[i]>(26117+offset0))
{
	if(input[i]==(26119+offset0))
{
	vR[i] = 26119;
}
else
{
	vR[i] = 26118;
}

}
else
{
	if(input[i]==(26117+offset0))
{
	vR[i] = 26117;
}
else
{
	vR[i] = 26116;
}

}

}
else
{
	if(input[i]>(26113+offset0))
{
	if(input[i]==(26115+offset0))
{
	vR[i] = 26115;
}
else
{
	vR[i] = 26114;
}

}
else
{
	if(input[i]==(26113+offset0))
{
	vR[i] = 26113;
}
else
{
	vR[i] = 26112;
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
	if(input[i]>(25855+offset0))
{
	if(input[i]>(25983+offset0))
{
	if(input[i]>(26047+offset0))
{
	if(input[i]>(26079+offset0))
{
	if(input[i]>(26095+offset0))
{
	if(input[i]>(26103+offset0))
{
	if(input[i]>(26107+offset0))
{
	if(input[i]>(26109+offset0))
{
	if(input[i]==(26111+offset0))
{
	vR[i] = 26111;
}
else
{
	vR[i] = 26110;
}

}
else
{
	if(input[i]==(26109+offset0))
{
	vR[i] = 26109;
}
else
{
	vR[i] = 26108;
}

}

}
else
{
	if(input[i]>(26105+offset0))
{
	if(input[i]==(26107+offset0))
{
	vR[i] = 26107;
}
else
{
	vR[i] = 26106;
}

}
else
{
	if(input[i]==(26105+offset0))
{
	vR[i] = 26105;
}
else
{
	vR[i] = 26104;
}

}

}

}
else
{
	if(input[i]>(26099+offset0))
{
	if(input[i]>(26101+offset0))
{
	if(input[i]==(26103+offset0))
{
	vR[i] = 26103;
}
else
{
	vR[i] = 26102;
}

}
else
{
	if(input[i]==(26101+offset0))
{
	vR[i] = 26101;
}
else
{
	vR[i] = 26100;
}

}

}
else
{
	if(input[i]>(26097+offset0))
{
	if(input[i]==(26099+offset0))
{
	vR[i] = 26099;
}
else
{
	vR[i] = 26098;
}

}
else
{
	if(input[i]==(26097+offset0))
{
	vR[i] = 26097;
}
else
{
	vR[i] = 26096;
}

}

}

}

}
else
{
	if(input[i]>(26087+offset0))
{
	if(input[i]>(26091+offset0))
{
	if(input[i]>(26093+offset0))
{
	if(input[i]==(26095+offset0))
{
	vR[i] = 26095;
}
else
{
	vR[i] = 26094;
}

}
else
{
	if(input[i]==(26093+offset0))
{
	vR[i] = 26093;
}
else
{
	vR[i] = 26092;
}

}

}
else
{
	if(input[i]>(26089+offset0))
{
	if(input[i]==(26091+offset0))
{
	vR[i] = 26091;
}
else
{
	vR[i] = 26090;
}

}
else
{
	if(input[i]==(26089+offset0))
{
	vR[i] = 26089;
}
else
{
	vR[i] = 26088;
}

}

}

}
else
{
	if(input[i]>(26083+offset0))
{
	if(input[i]>(26085+offset0))
{
	if(input[i]==(26087+offset0))
{
	vR[i] = 26087;
}
else
{
	vR[i] = 26086;
}

}
else
{
	if(input[i]==(26085+offset0))
{
	vR[i] = 26085;
}
else
{
	vR[i] = 26084;
}

}

}
else
{
	if(input[i]>(26081+offset0))
{
	if(input[i]==(26083+offset0))
{
	vR[i] = 26083;
}
else
{
	vR[i] = 26082;
}

}
else
{
	if(input[i]==(26081+offset0))
{
	vR[i] = 26081;
}
else
{
	vR[i] = 26080;
}

}

}

}

}

}
else
{
	if(input[i]>(26063+offset0))
{
	if(input[i]>(26071+offset0))
{
	if(input[i]>(26075+offset0))
{
	if(input[i]>(26077+offset0))
{
	if(input[i]==(26079+offset0))
{
	vR[i] = 26079;
}
else
{
	vR[i] = 26078;
}

}
else
{
	if(input[i]==(26077+offset0))
{
	vR[i] = 26077;
}
else
{
	vR[i] = 26076;
}

}

}
else
{
	if(input[i]>(26073+offset0))
{
	if(input[i]==(26075+offset0))
{
	vR[i] = 26075;
}
else
{
	vR[i] = 26074;
}

}
else
{
	if(input[i]==(26073+offset0))
{
	vR[i] = 26073;
}
else
{
	vR[i] = 26072;
}

}

}

}
else
{
	if(input[i]>(26067+offset0))
{
	if(input[i]>(26069+offset0))
{
	if(input[i]==(26071+offset0))
{
	vR[i] = 26071;
}
else
{
	vR[i] = 26070;
}

}
else
{
	if(input[i]==(26069+offset0))
{
	vR[i] = 26069;
}
else
{
	vR[i] = 26068;
}

}

}
else
{
	if(input[i]>(26065+offset0))
{
	if(input[i]==(26067+offset0))
{
	vR[i] = 26067;
}
else
{
	vR[i] = 26066;
}

}
else
{
	if(input[i]==(26065+offset0))
{
	vR[i] = 26065;
}
else
{
	vR[i] = 26064;
}

}

}

}

}
else
{
	if(input[i]>(26055+offset0))
{
	if(input[i]>(26059+offset0))
{
	if(input[i]>(26061+offset0))
{
	if(input[i]==(26063+offset0))
{
	vR[i] = 26063;
}
else
{
	vR[i] = 26062;
}

}
else
{
	if(input[i]==(26061+offset0))
{
	vR[i] = 26061;
}
else
{
	vR[i] = 26060;
}

}

}
else
{
	if(input[i]>(26057+offset0))
{
	if(input[i]==(26059+offset0))
{
	vR[i] = 26059;
}
else
{
	vR[i] = 26058;
}

}
else
{
	if(input[i]==(26057+offset0))
{
	vR[i] = 26057;
}
else
{
	vR[i] = 26056;
}

}

}

}
else
{
	if(input[i]>(26051+offset0))
{
	if(input[i]>(26053+offset0))
{
	if(input[i]==(26055+offset0))
{
	vR[i] = 26055;
}
else
{
	vR[i] = 26054;
}

}
else
{
	if(input[i]==(26053+offset0))
{
	vR[i] = 26053;
}
else
{
	vR[i] = 26052;
}

}

}
else
{
	if(input[i]>(26049+offset0))
{
	if(input[i]==(26051+offset0))
{
	vR[i] = 26051;
}
else
{
	vR[i] = 26050;
}

}
else
{
	if(input[i]==(26049+offset0))
{
	vR[i] = 26049;
}
else
{
	vR[i] = 26048;
}

}

}

}

}

}

}
else
{
	if(input[i]>(26015+offset0))
{
	if(input[i]>(26031+offset0))
{
	if(input[i]>(26039+offset0))
{
	if(input[i]>(26043+offset0))
{
	if(input[i]>(26045+offset0))
{
	if(input[i]==(26047+offset0))
{
	vR[i] = 26047;
}
else
{
	vR[i] = 26046;
}

}
else
{
	if(input[i]==(26045+offset0))
{
	vR[i] = 26045;
}
else
{
	vR[i] = 26044;
}

}

}
else
{
	if(input[i]>(26041+offset0))
{
	if(input[i]==(26043+offset0))
{
	vR[i] = 26043;
}
else
{
	vR[i] = 26042;
}

}
else
{
	if(input[i]==(26041+offset0))
{
	vR[i] = 26041;
}
else
{
	vR[i] = 26040;
}

}

}

}
else
{
	if(input[i]>(26035+offset0))
{
	if(input[i]>(26037+offset0))
{
	if(input[i]==(26039+offset0))
{
	vR[i] = 26039;
}
else
{
	vR[i] = 26038;
}

}
else
{
	if(input[i]==(26037+offset0))
{
	vR[i] = 26037;
}
else
{
	vR[i] = 26036;
}

}

}
else
{
	if(input[i]>(26033+offset0))
{
	if(input[i]==(26035+offset0))
{
	vR[i] = 26035;
}
else
{
	vR[i] = 26034;
}

}
else
{
	if(input[i]==(26033+offset0))
{
	vR[i] = 26033;
}
else
{
	vR[i] = 26032;
}

}

}

}

}
else
{
	if(input[i]>(26023+offset0))
{
	if(input[i]>(26027+offset0))
{
	if(input[i]>(26029+offset0))
{
	if(input[i]==(26031+offset0))
{
	vR[i] = 26031;
}
else
{
	vR[i] = 26030;
}

}
else
{
	if(input[i]==(26029+offset0))
{
	vR[i] = 26029;
}
else
{
	vR[i] = 26028;
}

}

}
else
{
	if(input[i]>(26025+offset0))
{
	if(input[i]==(26027+offset0))
{
	vR[i] = 26027;
}
else
{
	vR[i] = 26026;
}

}
else
{
	if(input[i]==(26025+offset0))
{
	vR[i] = 26025;
}
else
{
	vR[i] = 26024;
}

}

}

}
else
{
	if(input[i]>(26019+offset0))
{
	if(input[i]>(26021+offset0))
{
	if(input[i]==(26023+offset0))
{
	vR[i] = 26023;
}
else
{
	vR[i] = 26022;
}

}
else
{
	if(input[i]==(26021+offset0))
{
	vR[i] = 26021;
}
else
{
	vR[i] = 26020;
}

}

}
else
{
	if(input[i]>(26017+offset0))
{
	if(input[i]==(26019+offset0))
{
	vR[i] = 26019;
}
else
{
	vR[i] = 26018;
}

}
else
{
	if(input[i]==(26017+offset0))
{
	vR[i] = 26017;
}
else
{
	vR[i] = 26016;
}

}

}

}

}

}
else
{
	if(input[i]>(25999+offset0))
{
	if(input[i]>(26007+offset0))
{
	if(input[i]>(26011+offset0))
{
	if(input[i]>(26013+offset0))
{
	if(input[i]==(26015+offset0))
{
	vR[i] = 26015;
}
else
{
	vR[i] = 26014;
}

}
else
{
	if(input[i]==(26013+offset0))
{
	vR[i] = 26013;
}
else
{
	vR[i] = 26012;
}

}

}
else
{
	if(input[i]>(26009+offset0))
{
	if(input[i]==(26011+offset0))
{
	vR[i] = 26011;
}
else
{
	vR[i] = 26010;
}

}
else
{
	if(input[i]==(26009+offset0))
{
	vR[i] = 26009;
}
else
{
	vR[i] = 26008;
}

}

}

}
else
{
	if(input[i]>(26003+offset0))
{
	if(input[i]>(26005+offset0))
{
	if(input[i]==(26007+offset0))
{
	vR[i] = 26007;
}
else
{
	vR[i] = 26006;
}

}
else
{
	if(input[i]==(26005+offset0))
{
	vR[i] = 26005;
}
else
{
	vR[i] = 26004;
}

}

}
else
{
	if(input[i]>(26001+offset0))
{
	if(input[i]==(26003+offset0))
{
	vR[i] = 26003;
}
else
{
	vR[i] = 26002;
}

}
else
{
	if(input[i]==(26001+offset0))
{
	vR[i] = 26001;
}
else
{
	vR[i] = 26000;
}

}

}

}

}
else
{
	if(input[i]>(25991+offset0))
{
	if(input[i]>(25995+offset0))
{
	if(input[i]>(25997+offset0))
{
	if(input[i]==(25999+offset0))
{
	vR[i] = 25999;
}
else
{
	vR[i] = 25998;
}

}
else
{
	if(input[i]==(25997+offset0))
{
	vR[i] = 25997;
}
else
{
	vR[i] = 25996;
}

}

}
else
{
	if(input[i]>(25993+offset0))
{
	if(input[i]==(25995+offset0))
{
	vR[i] = 25995;
}
else
{
	vR[i] = 25994;
}

}
else
{
	if(input[i]==(25993+offset0))
{
	vR[i] = 25993;
}
else
{
	vR[i] = 25992;
}

}

}

}
else
{
	if(input[i]>(25987+offset0))
{
	if(input[i]>(25989+offset0))
{
	if(input[i]==(25991+offset0))
{
	vR[i] = 25991;
}
else
{
	vR[i] = 25990;
}

}
else
{
	if(input[i]==(25989+offset0))
{
	vR[i] = 25989;
}
else
{
	vR[i] = 25988;
}

}

}
else
{
	if(input[i]>(25985+offset0))
{
	if(input[i]==(25987+offset0))
{
	vR[i] = 25987;
}
else
{
	vR[i] = 25986;
}

}
else
{
	if(input[i]==(25985+offset0))
{
	vR[i] = 25985;
}
else
{
	vR[i] = 25984;
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
	if(input[i]>(25919+offset0))
{
	if(input[i]>(25951+offset0))
{
	if(input[i]>(25967+offset0))
{
	if(input[i]>(25975+offset0))
{
	if(input[i]>(25979+offset0))
{
	if(input[i]>(25981+offset0))
{
	if(input[i]==(25983+offset0))
{
	vR[i] = 25983;
}
else
{
	vR[i] = 25982;
}

}
else
{
	if(input[i]==(25981+offset0))
{
	vR[i] = 25981;
}
else
{
	vR[i] = 25980;
}

}

}
else
{
	if(input[i]>(25977+offset0))
{
	if(input[i]==(25979+offset0))
{
	vR[i] = 25979;
}
else
{
	vR[i] = 25978;
}

}
else
{
	if(input[i]==(25977+offset0))
{
	vR[i] = 25977;
}
else
{
	vR[i] = 25976;
}

}

}

}
else
{
	if(input[i]>(25971+offset0))
{
	if(input[i]>(25973+offset0))
{
	if(input[i]==(25975+offset0))
{
	vR[i] = 25975;
}
else
{
	vR[i] = 25974;
}

}
else
{
	if(input[i]==(25973+offset0))
{
	vR[i] = 25973;
}
else
{
	vR[i] = 25972;
}

}

}
else
{
	if(input[i]>(25969+offset0))
{
	if(input[i]==(25971+offset0))
{
	vR[i] = 25971;
}
else
{
	vR[i] = 25970;
}

}
else
{
	if(input[i]==(25969+offset0))
{
	vR[i] = 25969;
}
else
{
	vR[i] = 25968;
}

}

}

}

}
else
{
	if(input[i]>(25959+offset0))
{
	if(input[i]>(25963+offset0))
{
	if(input[i]>(25965+offset0))
{
	if(input[i]==(25967+offset0))
{
	vR[i] = 25967;
}
else
{
	vR[i] = 25966;
}

}
else
{
	if(input[i]==(25965+offset0))
{
	vR[i] = 25965;
}
else
{
	vR[i] = 25964;
}

}

}
else
{
	if(input[i]>(25961+offset0))
{
	if(input[i]==(25963+offset0))
{
	vR[i] = 25963;
}
else
{
	vR[i] = 25962;
}

}
else
{
	if(input[i]==(25961+offset0))
{
	vR[i] = 25961;
}
else
{
	vR[i] = 25960;
}

}

}

}
else
{
	if(input[i]>(25955+offset0))
{
	if(input[i]>(25957+offset0))
{
	if(input[i]==(25959+offset0))
{
	vR[i] = 25959;
}
else
{
	vR[i] = 25958;
}

}
else
{
	if(input[i]==(25957+offset0))
{
	vR[i] = 25957;
}
else
{
	vR[i] = 25956;
}

}

}
else
{
	if(input[i]>(25953+offset0))
{
	if(input[i]==(25955+offset0))
{
	vR[i] = 25955;
}
else
{
	vR[i] = 25954;
}

}
else
{
	if(input[i]==(25953+offset0))
{
	vR[i] = 25953;
}
else
{
	vR[i] = 25952;
}

}

}

}

}

}
else
{
	if(input[i]>(25935+offset0))
{
	if(input[i]>(25943+offset0))
{
	if(input[i]>(25947+offset0))
{
	if(input[i]>(25949+offset0))
{
	if(input[i]==(25951+offset0))
{
	vR[i] = 25951;
}
else
{
	vR[i] = 25950;
}

}
else
{
	if(input[i]==(25949+offset0))
{
	vR[i] = 25949;
}
else
{
	vR[i] = 25948;
}

}

}
else
{
	if(input[i]>(25945+offset0))
{
	if(input[i]==(25947+offset0))
{
	vR[i] = 25947;
}
else
{
	vR[i] = 25946;
}

}
else
{
	if(input[i]==(25945+offset0))
{
	vR[i] = 25945;
}
else
{
	vR[i] = 25944;
}

}

}

}
else
{
	if(input[i]>(25939+offset0))
{
	if(input[i]>(25941+offset0))
{
	if(input[i]==(25943+offset0))
{
	vR[i] = 25943;
}
else
{
	vR[i] = 25942;
}

}
else
{
	if(input[i]==(25941+offset0))
{
	vR[i] = 25941;
}
else
{
	vR[i] = 25940;
}

}

}
else
{
	if(input[i]>(25937+offset0))
{
	if(input[i]==(25939+offset0))
{
	vR[i] = 25939;
}
else
{
	vR[i] = 25938;
}

}
else
{
	if(input[i]==(25937+offset0))
{
	vR[i] = 25937;
}
else
{
	vR[i] = 25936;
}

}

}

}

}
else
{
	if(input[i]>(25927+offset0))
{
	if(input[i]>(25931+offset0))
{
	if(input[i]>(25933+offset0))
{
	if(input[i]==(25935+offset0))
{
	vR[i] = 25935;
}
else
{
	vR[i] = 25934;
}

}
else
{
	if(input[i]==(25933+offset0))
{
	vR[i] = 25933;
}
else
{
	vR[i] = 25932;
}

}

}
else
{
	if(input[i]>(25929+offset0))
{
	if(input[i]==(25931+offset0))
{
	vR[i] = 25931;
}
else
{
	vR[i] = 25930;
}

}
else
{
	if(input[i]==(25929+offset0))
{
	vR[i] = 25929;
}
else
{
	vR[i] = 25928;
}

}

}

}
else
{
	if(input[i]>(25923+offset0))
{
	if(input[i]>(25925+offset0))
{
	if(input[i]==(25927+offset0))
{
	vR[i] = 25927;
}
else
{
	vR[i] = 25926;
}

}
else
{
	if(input[i]==(25925+offset0))
{
	vR[i] = 25925;
}
else
{
	vR[i] = 25924;
}

}

}
else
{
	if(input[i]>(25921+offset0))
{
	if(input[i]==(25923+offset0))
{
	vR[i] = 25923;
}
else
{
	vR[i] = 25922;
}

}
else
{
	if(input[i]==(25921+offset0))
{
	vR[i] = 25921;
}
else
{
	vR[i] = 25920;
}

}

}

}

}

}

}
else
{
	if(input[i]>(25887+offset0))
{
	if(input[i]>(25903+offset0))
{
	if(input[i]>(25911+offset0))
{
	if(input[i]>(25915+offset0))
{
	if(input[i]>(25917+offset0))
{
	if(input[i]==(25919+offset0))
{
	vR[i] = 25919;
}
else
{
	vR[i] = 25918;
}

}
else
{
	if(input[i]==(25917+offset0))
{
	vR[i] = 25917;
}
else
{
	vR[i] = 25916;
}

}

}
else
{
	if(input[i]>(25913+offset0))
{
	if(input[i]==(25915+offset0))
{
	vR[i] = 25915;
}
else
{
	vR[i] = 25914;
}

}
else
{
	if(input[i]==(25913+offset0))
{
	vR[i] = 25913;
}
else
{
	vR[i] = 25912;
}

}

}

}
else
{
	if(input[i]>(25907+offset0))
{
	if(input[i]>(25909+offset0))
{
	if(input[i]==(25911+offset0))
{
	vR[i] = 25911;
}
else
{
	vR[i] = 25910;
}

}
else
{
	if(input[i]==(25909+offset0))
{
	vR[i] = 25909;
}
else
{
	vR[i] = 25908;
}

}

}
else
{
	if(input[i]>(25905+offset0))
{
	if(input[i]==(25907+offset0))
{
	vR[i] = 25907;
}
else
{
	vR[i] = 25906;
}

}
else
{
	if(input[i]==(25905+offset0))
{
	vR[i] = 25905;
}
else
{
	vR[i] = 25904;
}

}

}

}

}
else
{
	if(input[i]>(25895+offset0))
{
	if(input[i]>(25899+offset0))
{
	if(input[i]>(25901+offset0))
{
	if(input[i]==(25903+offset0))
{
	vR[i] = 25903;
}
else
{
	vR[i] = 25902;
}

}
else
{
	if(input[i]==(25901+offset0))
{
	vR[i] = 25901;
}
else
{
	vR[i] = 25900;
}

}

}
else
{
	if(input[i]>(25897+offset0))
{
	if(input[i]==(25899+offset0))
{
	vR[i] = 25899;
}
else
{
	vR[i] = 25898;
}

}
else
{
	if(input[i]==(25897+offset0))
{
	vR[i] = 25897;
}
else
{
	vR[i] = 25896;
}

}

}

}
else
{
	if(input[i]>(25891+offset0))
{
	if(input[i]>(25893+offset0))
{
	if(input[i]==(25895+offset0))
{
	vR[i] = 25895;
}
else
{
	vR[i] = 25894;
}

}
else
{
	if(input[i]==(25893+offset0))
{
	vR[i] = 25893;
}
else
{
	vR[i] = 25892;
}

}

}
else
{
	if(input[i]>(25889+offset0))
{
	if(input[i]==(25891+offset0))
{
	vR[i] = 25891;
}
else
{
	vR[i] = 25890;
}

}
else
{
	if(input[i]==(25889+offset0))
{
	vR[i] = 25889;
}
else
{
	vR[i] = 25888;
}

}

}

}

}

}
else
{
	if(input[i]>(25871+offset0))
{
	if(input[i]>(25879+offset0))
{
	if(input[i]>(25883+offset0))
{
	if(input[i]>(25885+offset0))
{
	if(input[i]==(25887+offset0))
{
	vR[i] = 25887;
}
else
{
	vR[i] = 25886;
}

}
else
{
	if(input[i]==(25885+offset0))
{
	vR[i] = 25885;
}
else
{
	vR[i] = 25884;
}

}

}
else
{
	if(input[i]>(25881+offset0))
{
	if(input[i]==(25883+offset0))
{
	vR[i] = 25883;
}
else
{
	vR[i] = 25882;
}

}
else
{
	if(input[i]==(25881+offset0))
{
	vR[i] = 25881;
}
else
{
	vR[i] = 25880;
}

}

}

}
else
{
	if(input[i]>(25875+offset0))
{
	if(input[i]>(25877+offset0))
{
	if(input[i]==(25879+offset0))
{
	vR[i] = 25879;
}
else
{
	vR[i] = 25878;
}

}
else
{
	if(input[i]==(25877+offset0))
{
	vR[i] = 25877;
}
else
{
	vR[i] = 25876;
}

}

}
else
{
	if(input[i]>(25873+offset0))
{
	if(input[i]==(25875+offset0))
{
	vR[i] = 25875;
}
else
{
	vR[i] = 25874;
}

}
else
{
	if(input[i]==(25873+offset0))
{
	vR[i] = 25873;
}
else
{
	vR[i] = 25872;
}

}

}

}

}
else
{
	if(input[i]>(25863+offset0))
{
	if(input[i]>(25867+offset0))
{
	if(input[i]>(25869+offset0))
{
	if(input[i]==(25871+offset0))
{
	vR[i] = 25871;
}
else
{
	vR[i] = 25870;
}

}
else
{
	if(input[i]==(25869+offset0))
{
	vR[i] = 25869;
}
else
{
	vR[i] = 25868;
}

}

}
else
{
	if(input[i]>(25865+offset0))
{
	if(input[i]==(25867+offset0))
{
	vR[i] = 25867;
}
else
{
	vR[i] = 25866;
}

}
else
{
	if(input[i]==(25865+offset0))
{
	vR[i] = 25865;
}
else
{
	vR[i] = 25864;
}

}

}

}
else
{
	if(input[i]>(25859+offset0))
{
	if(input[i]>(25861+offset0))
{
	if(input[i]==(25863+offset0))
{
	vR[i] = 25863;
}
else
{
	vR[i] = 25862;
}

}
else
{
	if(input[i]==(25861+offset0))
{
	vR[i] = 25861;
}
else
{
	vR[i] = 25860;
}

}

}
else
{
	if(input[i]>(25857+offset0))
{
	if(input[i]==(25859+offset0))
{
	vR[i] = 25859;
}
else
{
	vR[i] = 25858;
}

}
else
{
	if(input[i]==(25857+offset0))
{
	vR[i] = 25857;
}
else
{
	vR[i] = 25856;
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
	if(input[i]>(25727+offset0))
{
	if(input[i]>(25791+offset0))
{
	if(input[i]>(25823+offset0))
{
	if(input[i]>(25839+offset0))
{
	if(input[i]>(25847+offset0))
{
	if(input[i]>(25851+offset0))
{
	if(input[i]>(25853+offset0))
{
	if(input[i]==(25855+offset0))
{
	vR[i] = 25855;
}
else
{
	vR[i] = 25854;
}

}
else
{
	if(input[i]==(25853+offset0))
{
	vR[i] = 25853;
}
else
{
	vR[i] = 25852;
}

}

}
else
{
	if(input[i]>(25849+offset0))
{
	if(input[i]==(25851+offset0))
{
	vR[i] = 25851;
}
else
{
	vR[i] = 25850;
}

}
else
{
	if(input[i]==(25849+offset0))
{
	vR[i] = 25849;
}
else
{
	vR[i] = 25848;
}

}

}

}
else
{
	if(input[i]>(25843+offset0))
{
	if(input[i]>(25845+offset0))
{
	if(input[i]==(25847+offset0))
{
	vR[i] = 25847;
}
else
{
	vR[i] = 25846;
}

}
else
{
	if(input[i]==(25845+offset0))
{
	vR[i] = 25845;
}
else
{
	vR[i] = 25844;
}

}

}
else
{
	if(input[i]>(25841+offset0))
{
	if(input[i]==(25843+offset0))
{
	vR[i] = 25843;
}
else
{
	vR[i] = 25842;
}

}
else
{
	if(input[i]==(25841+offset0))
{
	vR[i] = 25841;
}
else
{
	vR[i] = 25840;
}

}

}

}

}
else
{
	if(input[i]>(25831+offset0))
{
	if(input[i]>(25835+offset0))
{
	if(input[i]>(25837+offset0))
{
	if(input[i]==(25839+offset0))
{
	vR[i] = 25839;
}
else
{
	vR[i] = 25838;
}

}
else
{
	if(input[i]==(25837+offset0))
{
	vR[i] = 25837;
}
else
{
	vR[i] = 25836;
}

}

}
else
{
	if(input[i]>(25833+offset0))
{
	if(input[i]==(25835+offset0))
{
	vR[i] = 25835;
}
else
{
	vR[i] = 25834;
}

}
else
{
	if(input[i]==(25833+offset0))
{
	vR[i] = 25833;
}
else
{
	vR[i] = 25832;
}

}

}

}
else
{
	if(input[i]>(25827+offset0))
{
	if(input[i]>(25829+offset0))
{
	if(input[i]==(25831+offset0))
{
	vR[i] = 25831;
}
else
{
	vR[i] = 25830;
}

}
else
{
	if(input[i]==(25829+offset0))
{
	vR[i] = 25829;
}
else
{
	vR[i] = 25828;
}

}

}
else
{
	if(input[i]>(25825+offset0))
{
	if(input[i]==(25827+offset0))
{
	vR[i] = 25827;
}
else
{
	vR[i] = 25826;
}

}
else
{
	if(input[i]==(25825+offset0))
{
	vR[i] = 25825;
}
else
{
	vR[i] = 25824;
}

}

}

}

}

}
else
{
	if(input[i]>(25807+offset0))
{
	if(input[i]>(25815+offset0))
{
	if(input[i]>(25819+offset0))
{
	if(input[i]>(25821+offset0))
{
	if(input[i]==(25823+offset0))
{
	vR[i] = 25823;
}
else
{
	vR[i] = 25822;
}

}
else
{
	if(input[i]==(25821+offset0))
{
	vR[i] = 25821;
}
else
{
	vR[i] = 25820;
}

}

}
else
{
	if(input[i]>(25817+offset0))
{
	if(input[i]==(25819+offset0))
{
	vR[i] = 25819;
}
else
{
	vR[i] = 25818;
}

}
else
{
	if(input[i]==(25817+offset0))
{
	vR[i] = 25817;
}
else
{
	vR[i] = 25816;
}

}

}

}
else
{
	if(input[i]>(25811+offset0))
{
	if(input[i]>(25813+offset0))
{
	if(input[i]==(25815+offset0))
{
	vR[i] = 25815;
}
else
{
	vR[i] = 25814;
}

}
else
{
	if(input[i]==(25813+offset0))
{
	vR[i] = 25813;
}
else
{
	vR[i] = 25812;
}

}

}
else
{
	if(input[i]>(25809+offset0))
{
	if(input[i]==(25811+offset0))
{
	vR[i] = 25811;
}
else
{
	vR[i] = 25810;
}

}
else
{
	if(input[i]==(25809+offset0))
{
	vR[i] = 25809;
}
else
{
	vR[i] = 25808;
}

}

}

}

}
else
{
	if(input[i]>(25799+offset0))
{
	if(input[i]>(25803+offset0))
{
	if(input[i]>(25805+offset0))
{
	if(input[i]==(25807+offset0))
{
	vR[i] = 25807;
}
else
{
	vR[i] = 25806;
}

}
else
{
	if(input[i]==(25805+offset0))
{
	vR[i] = 25805;
}
else
{
	vR[i] = 25804;
}

}

}
else
{
	if(input[i]>(25801+offset0))
{
	if(input[i]==(25803+offset0))
{
	vR[i] = 25803;
}
else
{
	vR[i] = 25802;
}

}
else
{
	if(input[i]==(25801+offset0))
{
	vR[i] = 25801;
}
else
{
	vR[i] = 25800;
}

}

}

}
else
{
	if(input[i]>(25795+offset0))
{
	if(input[i]>(25797+offset0))
{
	if(input[i]==(25799+offset0))
{
	vR[i] = 25799;
}
else
{
	vR[i] = 25798;
}

}
else
{
	if(input[i]==(25797+offset0))
{
	vR[i] = 25797;
}
else
{
	vR[i] = 25796;
}

}

}
else
{
	if(input[i]>(25793+offset0))
{
	if(input[i]==(25795+offset0))
{
	vR[i] = 25795;
}
else
{
	vR[i] = 25794;
}

}
else
{
	if(input[i]==(25793+offset0))
{
	vR[i] = 25793;
}
else
{
	vR[i] = 25792;
}

}

}

}

}

}

}
else
{
	if(input[i]>(25759+offset0))
{
	if(input[i]>(25775+offset0))
{
	if(input[i]>(25783+offset0))
{
	if(input[i]>(25787+offset0))
{
	if(input[i]>(25789+offset0))
{
	if(input[i]==(25791+offset0))
{
	vR[i] = 25791;
}
else
{
	vR[i] = 25790;
}

}
else
{
	if(input[i]==(25789+offset0))
{
	vR[i] = 25789;
}
else
{
	vR[i] = 25788;
}

}

}
else
{
	if(input[i]>(25785+offset0))
{
	if(input[i]==(25787+offset0))
{
	vR[i] = 25787;
}
else
{
	vR[i] = 25786;
}

}
else
{
	if(input[i]==(25785+offset0))
{
	vR[i] = 25785;
}
else
{
	vR[i] = 25784;
}

}

}

}
else
{
	if(input[i]>(25779+offset0))
{
	if(input[i]>(25781+offset0))
{
	if(input[i]==(25783+offset0))
{
	vR[i] = 25783;
}
else
{
	vR[i] = 25782;
}

}
else
{
	if(input[i]==(25781+offset0))
{
	vR[i] = 25781;
}
else
{
	vR[i] = 25780;
}

}

}
else
{
	if(input[i]>(25777+offset0))
{
	if(input[i]==(25779+offset0))
{
	vR[i] = 25779;
}
else
{
	vR[i] = 25778;
}

}
else
{
	if(input[i]==(25777+offset0))
{
	vR[i] = 25777;
}
else
{
	vR[i] = 25776;
}

}

}

}

}
else
{
	if(input[i]>(25767+offset0))
{
	if(input[i]>(25771+offset0))
{
	if(input[i]>(25773+offset0))
{
	if(input[i]==(25775+offset0))
{
	vR[i] = 25775;
}
else
{
	vR[i] = 25774;
}

}
else
{
	if(input[i]==(25773+offset0))
{
	vR[i] = 25773;
}
else
{
	vR[i] = 25772;
}

}

}
else
{
	if(input[i]>(25769+offset0))
{
	if(input[i]==(25771+offset0))
{
	vR[i] = 25771;
}
else
{
	vR[i] = 25770;
}

}
else
{
	if(input[i]==(25769+offset0))
{
	vR[i] = 25769;
}
else
{
	vR[i] = 25768;
}

}

}

}
else
{
	if(input[i]>(25763+offset0))
{
	if(input[i]>(25765+offset0))
{
	if(input[i]==(25767+offset0))
{
	vR[i] = 25767;
}
else
{
	vR[i] = 25766;
}

}
else
{
	if(input[i]==(25765+offset0))
{
	vR[i] = 25765;
}
else
{
	vR[i] = 25764;
}

}

}
else
{
	if(input[i]>(25761+offset0))
{
	if(input[i]==(25763+offset0))
{
	vR[i] = 25763;
}
else
{
	vR[i] = 25762;
}

}
else
{
	if(input[i]==(25761+offset0))
{
	vR[i] = 25761;
}
else
{
	vR[i] = 25760;
}

}

}

}

}

}
else
{
	if(input[i]>(25743+offset0))
{
	if(input[i]>(25751+offset0))
{
	if(input[i]>(25755+offset0))
{
	if(input[i]>(25757+offset0))
{
	if(input[i]==(25759+offset0))
{
	vR[i] = 25759;
}
else
{
	vR[i] = 25758;
}

}
else
{
	if(input[i]==(25757+offset0))
{
	vR[i] = 25757;
}
else
{
	vR[i] = 25756;
}

}

}
else
{
	if(input[i]>(25753+offset0))
{
	if(input[i]==(25755+offset0))
{
	vR[i] = 25755;
}
else
{
	vR[i] = 25754;
}

}
else
{
	if(input[i]==(25753+offset0))
{
	vR[i] = 25753;
}
else
{
	vR[i] = 25752;
}

}

}

}
else
{
	if(input[i]>(25747+offset0))
{
	if(input[i]>(25749+offset0))
{
	if(input[i]==(25751+offset0))
{
	vR[i] = 25751;
}
else
{
	vR[i] = 25750;
}

}
else
{
	if(input[i]==(25749+offset0))
{
	vR[i] = 25749;
}
else
{
	vR[i] = 25748;
}

}

}
else
{
	if(input[i]>(25745+offset0))
{
	if(input[i]==(25747+offset0))
{
	vR[i] = 25747;
}
else
{
	vR[i] = 25746;
}

}
else
{
	if(input[i]==(25745+offset0))
{
	vR[i] = 25745;
}
else
{
	vR[i] = 25744;
}

}

}

}

}
else
{
	if(input[i]>(25735+offset0))
{
	if(input[i]>(25739+offset0))
{
	if(input[i]>(25741+offset0))
{
	if(input[i]==(25743+offset0))
{
	vR[i] = 25743;
}
else
{
	vR[i] = 25742;
}

}
else
{
	if(input[i]==(25741+offset0))
{
	vR[i] = 25741;
}
else
{
	vR[i] = 25740;
}

}

}
else
{
	if(input[i]>(25737+offset0))
{
	if(input[i]==(25739+offset0))
{
	vR[i] = 25739;
}
else
{
	vR[i] = 25738;
}

}
else
{
	if(input[i]==(25737+offset0))
{
	vR[i] = 25737;
}
else
{
	vR[i] = 25736;
}

}

}

}
else
{
	if(input[i]>(25731+offset0))
{
	if(input[i]>(25733+offset0))
{
	if(input[i]==(25735+offset0))
{
	vR[i] = 25735;
}
else
{
	vR[i] = 25734;
}

}
else
{
	if(input[i]==(25733+offset0))
{
	vR[i] = 25733;
}
else
{
	vR[i] = 25732;
}

}

}
else
{
	if(input[i]>(25729+offset0))
{
	if(input[i]==(25731+offset0))
{
	vR[i] = 25731;
}
else
{
	vR[i] = 25730;
}

}
else
{
	if(input[i]==(25729+offset0))
{
	vR[i] = 25729;
}
else
{
	vR[i] = 25728;
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
	if(input[i]>(25663+offset0))
{
	if(input[i]>(25695+offset0))
{
	if(input[i]>(25711+offset0))
{
	if(input[i]>(25719+offset0))
{
	if(input[i]>(25723+offset0))
{
	if(input[i]>(25725+offset0))
{
	if(input[i]==(25727+offset0))
{
	vR[i] = 25727;
}
else
{
	vR[i] = 25726;
}

}
else
{
	if(input[i]==(25725+offset0))
{
	vR[i] = 25725;
}
else
{
	vR[i] = 25724;
}

}

}
else
{
	if(input[i]>(25721+offset0))
{
	if(input[i]==(25723+offset0))
{
	vR[i] = 25723;
}
else
{
	vR[i] = 25722;
}

}
else
{
	if(input[i]==(25721+offset0))
{
	vR[i] = 25721;
}
else
{
	vR[i] = 25720;
}

}

}

}
else
{
	if(input[i]>(25715+offset0))
{
	if(input[i]>(25717+offset0))
{
	if(input[i]==(25719+offset0))
{
	vR[i] = 25719;
}
else
{
	vR[i] = 25718;
}

}
else
{
	if(input[i]==(25717+offset0))
{
	vR[i] = 25717;
}
else
{
	vR[i] = 25716;
}

}

}
else
{
	if(input[i]>(25713+offset0))
{
	if(input[i]==(25715+offset0))
{
	vR[i] = 25715;
}
else
{
	vR[i] = 25714;
}

}
else
{
	if(input[i]==(25713+offset0))
{
	vR[i] = 25713;
}
else
{
	vR[i] = 25712;
}

}

}

}

}
else
{
	if(input[i]>(25703+offset0))
{
	if(input[i]>(25707+offset0))
{
	if(input[i]>(25709+offset0))
{
	if(input[i]==(25711+offset0))
{
	vR[i] = 25711;
}
else
{
	vR[i] = 25710;
}

}
else
{
	if(input[i]==(25709+offset0))
{
	vR[i] = 25709;
}
else
{
	vR[i] = 25708;
}

}

}
else
{
	if(input[i]>(25705+offset0))
{
	if(input[i]==(25707+offset0))
{
	vR[i] = 25707;
}
else
{
	vR[i] = 25706;
}

}
else
{
	if(input[i]==(25705+offset0))
{
	vR[i] = 25705;
}
else
{
	vR[i] = 25704;
}

}

}

}
else
{
	if(input[i]>(25699+offset0))
{
	if(input[i]>(25701+offset0))
{
	if(input[i]==(25703+offset0))
{
	vR[i] = 25703;
}
else
{
	vR[i] = 25702;
}

}
else
{
	if(input[i]==(25701+offset0))
{
	vR[i] = 25701;
}
else
{
	vR[i] = 25700;
}

}

}
else
{
	if(input[i]>(25697+offset0))
{
	if(input[i]==(25699+offset0))
{
	vR[i] = 25699;
}
else
{
	vR[i] = 25698;
}

}
else
{
	if(input[i]==(25697+offset0))
{
	vR[i] = 25697;
}
else
{
	vR[i] = 25696;
}

}

}

}

}

}
else
{
	if(input[i]>(25679+offset0))
{
	if(input[i]>(25687+offset0))
{
	if(input[i]>(25691+offset0))
{
	if(input[i]>(25693+offset0))
{
	if(input[i]==(25695+offset0))
{
	vR[i] = 25695;
}
else
{
	vR[i] = 25694;
}

}
else
{
	if(input[i]==(25693+offset0))
{
	vR[i] = 25693;
}
else
{
	vR[i] = 25692;
}

}

}
else
{
	if(input[i]>(25689+offset0))
{
	if(input[i]==(25691+offset0))
{
	vR[i] = 25691;
}
else
{
	vR[i] = 25690;
}

}
else
{
	if(input[i]==(25689+offset0))
{
	vR[i] = 25689;
}
else
{
	vR[i] = 25688;
}

}

}

}
else
{
	if(input[i]>(25683+offset0))
{
	if(input[i]>(25685+offset0))
{
	if(input[i]==(25687+offset0))
{
	vR[i] = 25687;
}
else
{
	vR[i] = 25686;
}

}
else
{
	if(input[i]==(25685+offset0))
{
	vR[i] = 25685;
}
else
{
	vR[i] = 25684;
}

}

}
else
{
	if(input[i]>(25681+offset0))
{
	if(input[i]==(25683+offset0))
{
	vR[i] = 25683;
}
else
{
	vR[i] = 25682;
}

}
else
{
	if(input[i]==(25681+offset0))
{
	vR[i] = 25681;
}
else
{
	vR[i] = 25680;
}

}

}

}

}
else
{
	if(input[i]>(25671+offset0))
{
	if(input[i]>(25675+offset0))
{
	if(input[i]>(25677+offset0))
{
	if(input[i]==(25679+offset0))
{
	vR[i] = 25679;
}
else
{
	vR[i] = 25678;
}

}
else
{
	if(input[i]==(25677+offset0))
{
	vR[i] = 25677;
}
else
{
	vR[i] = 25676;
}

}

}
else
{
	if(input[i]>(25673+offset0))
{
	if(input[i]==(25675+offset0))
{
	vR[i] = 25675;
}
else
{
	vR[i] = 25674;
}

}
else
{
	if(input[i]==(25673+offset0))
{
	vR[i] = 25673;
}
else
{
	vR[i] = 25672;
}

}

}

}
else
{
	if(input[i]>(25667+offset0))
{
	if(input[i]>(25669+offset0))
{
	if(input[i]==(25671+offset0))
{
	vR[i] = 25671;
}
else
{
	vR[i] = 25670;
}

}
else
{
	if(input[i]==(25669+offset0))
{
	vR[i] = 25669;
}
else
{
	vR[i] = 25668;
}

}

}
else
{
	if(input[i]>(25665+offset0))
{
	if(input[i]==(25667+offset0))
{
	vR[i] = 25667;
}
else
{
	vR[i] = 25666;
}

}
else
{
	if(input[i]==(25665+offset0))
{
	vR[i] = 25665;
}
else
{
	vR[i] = 25664;
}

}

}

}

}

}

}
else
{
	if(input[i]>(25631+offset0))
{
	if(input[i]>(25647+offset0))
{
	if(input[i]>(25655+offset0))
{
	if(input[i]>(25659+offset0))
{
	if(input[i]>(25661+offset0))
{
	if(input[i]==(25663+offset0))
{
	vR[i] = 25663;
}
else
{
	vR[i] = 25662;
}

}
else
{
	if(input[i]==(25661+offset0))
{
	vR[i] = 25661;
}
else
{
	vR[i] = 25660;
}

}

}
else
{
	if(input[i]>(25657+offset0))
{
	if(input[i]==(25659+offset0))
{
	vR[i] = 25659;
}
else
{
	vR[i] = 25658;
}

}
else
{
	if(input[i]==(25657+offset0))
{
	vR[i] = 25657;
}
else
{
	vR[i] = 25656;
}

}

}

}
else
{
	if(input[i]>(25651+offset0))
{
	if(input[i]>(25653+offset0))
{
	if(input[i]==(25655+offset0))
{
	vR[i] = 25655;
}
else
{
	vR[i] = 25654;
}

}
else
{
	if(input[i]==(25653+offset0))
{
	vR[i] = 25653;
}
else
{
	vR[i] = 25652;
}

}

}
else
{
	if(input[i]>(25649+offset0))
{
	if(input[i]==(25651+offset0))
{
	vR[i] = 25651;
}
else
{
	vR[i] = 25650;
}

}
else
{
	if(input[i]==(25649+offset0))
{
	vR[i] = 25649;
}
else
{
	vR[i] = 25648;
}

}

}

}

}
else
{
	if(input[i]>(25639+offset0))
{
	if(input[i]>(25643+offset0))
{
	if(input[i]>(25645+offset0))
{
	if(input[i]==(25647+offset0))
{
	vR[i] = 25647;
}
else
{
	vR[i] = 25646;
}

}
else
{
	if(input[i]==(25645+offset0))
{
	vR[i] = 25645;
}
else
{
	vR[i] = 25644;
}

}

}
else
{
	if(input[i]>(25641+offset0))
{
	if(input[i]==(25643+offset0))
{
	vR[i] = 25643;
}
else
{
	vR[i] = 25642;
}

}
else
{
	if(input[i]==(25641+offset0))
{
	vR[i] = 25641;
}
else
{
	vR[i] = 25640;
}

}

}

}
else
{
	if(input[i]>(25635+offset0))
{
	if(input[i]>(25637+offset0))
{
	if(input[i]==(25639+offset0))
{
	vR[i] = 25639;
}
else
{
	vR[i] = 25638;
}

}
else
{
	if(input[i]==(25637+offset0))
{
	vR[i] = 25637;
}
else
{
	vR[i] = 25636;
}

}

}
else
{
	if(input[i]>(25633+offset0))
{
	if(input[i]==(25635+offset0))
{
	vR[i] = 25635;
}
else
{
	vR[i] = 25634;
}

}
else
{
	if(input[i]==(25633+offset0))
{
	vR[i] = 25633;
}
else
{
	vR[i] = 25632;
}

}

}

}

}

}
else
{
	if(input[i]>(25615+offset0))
{
	if(input[i]>(25623+offset0))
{
	if(input[i]>(25627+offset0))
{
	if(input[i]>(25629+offset0))
{
	if(input[i]==(25631+offset0))
{
	vR[i] = 25631;
}
else
{
	vR[i] = 25630;
}

}
else
{
	if(input[i]==(25629+offset0))
{
	vR[i] = 25629;
}
else
{
	vR[i] = 25628;
}

}

}
else
{
	if(input[i]>(25625+offset0))
{
	if(input[i]==(25627+offset0))
{
	vR[i] = 25627;
}
else
{
	vR[i] = 25626;
}

}
else
{
	if(input[i]==(25625+offset0))
{
	vR[i] = 25625;
}
else
{
	vR[i] = 25624;
}

}

}

}
else
{
	if(input[i]>(25619+offset0))
{
	if(input[i]>(25621+offset0))
{
	if(input[i]==(25623+offset0))
{
	vR[i] = 25623;
}
else
{
	vR[i] = 25622;
}

}
else
{
	if(input[i]==(25621+offset0))
{
	vR[i] = 25621;
}
else
{
	vR[i] = 25620;
}

}

}
else
{
	if(input[i]>(25617+offset0))
{
	if(input[i]==(25619+offset0))
{
	vR[i] = 25619;
}
else
{
	vR[i] = 25618;
}

}
else
{
	if(input[i]==(25617+offset0))
{
	vR[i] = 25617;
}
else
{
	vR[i] = 25616;
}

}

}

}

}
else
{
	if(input[i]>(25607+offset0))
{
	if(input[i]>(25611+offset0))
{
	if(input[i]>(25613+offset0))
{
	if(input[i]==(25615+offset0))
{
	vR[i] = 25615;
}
else
{
	vR[i] = 25614;
}

}
else
{
	if(input[i]==(25613+offset0))
{
	vR[i] = 25613;
}
else
{
	vR[i] = 25612;
}

}

}
else
{
	if(input[i]>(25609+offset0))
{
	if(input[i]==(25611+offset0))
{
	vR[i] = 25611;
}
else
{
	vR[i] = 25610;
}

}
else
{
	if(input[i]==(25609+offset0))
{
	vR[i] = 25609;
}
else
{
	vR[i] = 25608;
}

}

}

}
else
{
	if(input[i]>(25603+offset0))
{
	if(input[i]>(25605+offset0))
{
	if(input[i]==(25607+offset0))
{
	vR[i] = 25607;
}
else
{
	vR[i] = 25606;
}

}
else
{
	if(input[i]==(25605+offset0))
{
	vR[i] = 25605;
}
else
{
	vR[i] = 25604;
}

}

}
else
{
	if(input[i]>(25601+offset0))
{
	if(input[i]==(25603+offset0))
{
	vR[i] = 25603;
}
else
{
	vR[i] = 25602;
}

}
else
{
	if(input[i]==(25601+offset0))
{
	vR[i] = 25601;
}
else
{
	vR[i] = 25600;
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
	if(input[i]>(25087+offset0))
{
	if(input[i]>(25343+offset0))
{
	if(input[i]>(25471+offset0))
{
	if(input[i]>(25535+offset0))
{
	if(input[i]>(25567+offset0))
{
	if(input[i]>(25583+offset0))
{
	if(input[i]>(25591+offset0))
{
	if(input[i]>(25595+offset0))
{
	if(input[i]>(25597+offset0))
{
	if(input[i]==(25599+offset0))
{
	vR[i] = 25599;
}
else
{
	vR[i] = 25598;
}

}
else
{
	if(input[i]==(25597+offset0))
{
	vR[i] = 25597;
}
else
{
	vR[i] = 25596;
}

}

}
else
{
	if(input[i]>(25593+offset0))
{
	if(input[i]==(25595+offset0))
{
	vR[i] = 25595;
}
else
{
	vR[i] = 25594;
}

}
else
{
	if(input[i]==(25593+offset0))
{
	vR[i] = 25593;
}
else
{
	vR[i] = 25592;
}

}

}

}
else
{
	if(input[i]>(25587+offset0))
{
	if(input[i]>(25589+offset0))
{
	if(input[i]==(25591+offset0))
{
	vR[i] = 25591;
}
else
{
	vR[i] = 25590;
}

}
else
{
	if(input[i]==(25589+offset0))
{
	vR[i] = 25589;
}
else
{
	vR[i] = 25588;
}

}

}
else
{
	if(input[i]>(25585+offset0))
{
	if(input[i]==(25587+offset0))
{
	vR[i] = 25587;
}
else
{
	vR[i] = 25586;
}

}
else
{
	if(input[i]==(25585+offset0))
{
	vR[i] = 25585;
}
else
{
	vR[i] = 25584;
}

}

}

}

}
else
{
	if(input[i]>(25575+offset0))
{
	if(input[i]>(25579+offset0))
{
	if(input[i]>(25581+offset0))
{
	if(input[i]==(25583+offset0))
{
	vR[i] = 25583;
}
else
{
	vR[i] = 25582;
}

}
else
{
	if(input[i]==(25581+offset0))
{
	vR[i] = 25581;
}
else
{
	vR[i] = 25580;
}

}

}
else
{
	if(input[i]>(25577+offset0))
{
	if(input[i]==(25579+offset0))
{
	vR[i] = 25579;
}
else
{
	vR[i] = 25578;
}

}
else
{
	if(input[i]==(25577+offset0))
{
	vR[i] = 25577;
}
else
{
	vR[i] = 25576;
}

}

}

}
else
{
	if(input[i]>(25571+offset0))
{
	if(input[i]>(25573+offset0))
{
	if(input[i]==(25575+offset0))
{
	vR[i] = 25575;
}
else
{
	vR[i] = 25574;
}

}
else
{
	if(input[i]==(25573+offset0))
{
	vR[i] = 25573;
}
else
{
	vR[i] = 25572;
}

}

}
else
{
	if(input[i]>(25569+offset0))
{
	if(input[i]==(25571+offset0))
{
	vR[i] = 25571;
}
else
{
	vR[i] = 25570;
}

}
else
{
	if(input[i]==(25569+offset0))
{
	vR[i] = 25569;
}
else
{
	vR[i] = 25568;
}

}

}

}

}

}
else
{
	if(input[i]>(25551+offset0))
{
	if(input[i]>(25559+offset0))
{
	if(input[i]>(25563+offset0))
{
	if(input[i]>(25565+offset0))
{
	if(input[i]==(25567+offset0))
{
	vR[i] = 25567;
}
else
{
	vR[i] = 25566;
}

}
else
{
	if(input[i]==(25565+offset0))
{
	vR[i] = 25565;
}
else
{
	vR[i] = 25564;
}

}

}
else
{
	if(input[i]>(25561+offset0))
{
	if(input[i]==(25563+offset0))
{
	vR[i] = 25563;
}
else
{
	vR[i] = 25562;
}

}
else
{
	if(input[i]==(25561+offset0))
{
	vR[i] = 25561;
}
else
{
	vR[i] = 25560;
}

}

}

}
else
{
	if(input[i]>(25555+offset0))
{
	if(input[i]>(25557+offset0))
{
	if(input[i]==(25559+offset0))
{
	vR[i] = 25559;
}
else
{
	vR[i] = 25558;
}

}
else
{
	if(input[i]==(25557+offset0))
{
	vR[i] = 25557;
}
else
{
	vR[i] = 25556;
}

}

}
else
{
	if(input[i]>(25553+offset0))
{
	if(input[i]==(25555+offset0))
{
	vR[i] = 25555;
}
else
{
	vR[i] = 25554;
}

}
else
{
	if(input[i]==(25553+offset0))
{
	vR[i] = 25553;
}
else
{
	vR[i] = 25552;
}

}

}

}

}
else
{
	if(input[i]>(25543+offset0))
{
	if(input[i]>(25547+offset0))
{
	if(input[i]>(25549+offset0))
{
	if(input[i]==(25551+offset0))
{
	vR[i] = 25551;
}
else
{
	vR[i] = 25550;
}

}
else
{
	if(input[i]==(25549+offset0))
{
	vR[i] = 25549;
}
else
{
	vR[i] = 25548;
}

}

}
else
{
	if(input[i]>(25545+offset0))
{
	if(input[i]==(25547+offset0))
{
	vR[i] = 25547;
}
else
{
	vR[i] = 25546;
}

}
else
{
	if(input[i]==(25545+offset0))
{
	vR[i] = 25545;
}
else
{
	vR[i] = 25544;
}

}

}

}
else
{
	if(input[i]>(25539+offset0))
{
	if(input[i]>(25541+offset0))
{
	if(input[i]==(25543+offset0))
{
	vR[i] = 25543;
}
else
{
	vR[i] = 25542;
}

}
else
{
	if(input[i]==(25541+offset0))
{
	vR[i] = 25541;
}
else
{
	vR[i] = 25540;
}

}

}
else
{
	if(input[i]>(25537+offset0))
{
	if(input[i]==(25539+offset0))
{
	vR[i] = 25539;
}
else
{
	vR[i] = 25538;
}

}
else
{
	if(input[i]==(25537+offset0))
{
	vR[i] = 25537;
}
else
{
	vR[i] = 25536;
}

}

}

}

}

}

}
else
{
	if(input[i]>(25503+offset0))
{
	if(input[i]>(25519+offset0))
{
	if(input[i]>(25527+offset0))
{
	if(input[i]>(25531+offset0))
{
	if(input[i]>(25533+offset0))
{
	if(input[i]==(25535+offset0))
{
	vR[i] = 25535;
}
else
{
	vR[i] = 25534;
}

}
else
{
	if(input[i]==(25533+offset0))
{
	vR[i] = 25533;
}
else
{
	vR[i] = 25532;
}

}

}
else
{
	if(input[i]>(25529+offset0))
{
	if(input[i]==(25531+offset0))
{
	vR[i] = 25531;
}
else
{
	vR[i] = 25530;
}

}
else
{
	if(input[i]==(25529+offset0))
{
	vR[i] = 25529;
}
else
{
	vR[i] = 25528;
}

}

}

}
else
{
	if(input[i]>(25523+offset0))
{
	if(input[i]>(25525+offset0))
{
	if(input[i]==(25527+offset0))
{
	vR[i] = 25527;
}
else
{
	vR[i] = 25526;
}

}
else
{
	if(input[i]==(25525+offset0))
{
	vR[i] = 25525;
}
else
{
	vR[i] = 25524;
}

}

}
else
{
	if(input[i]>(25521+offset0))
{
	if(input[i]==(25523+offset0))
{
	vR[i] = 25523;
}
else
{
	vR[i] = 25522;
}

}
else
{
	if(input[i]==(25521+offset0))
{
	vR[i] = 25521;
}
else
{
	vR[i] = 25520;
}

}

}

}

}
else
{
	if(input[i]>(25511+offset0))
{
	if(input[i]>(25515+offset0))
{
	if(input[i]>(25517+offset0))
{
	if(input[i]==(25519+offset0))
{
	vR[i] = 25519;
}
else
{
	vR[i] = 25518;
}

}
else
{
	if(input[i]==(25517+offset0))
{
	vR[i] = 25517;
}
else
{
	vR[i] = 25516;
}

}

}
else
{
	if(input[i]>(25513+offset0))
{
	if(input[i]==(25515+offset0))
{
	vR[i] = 25515;
}
else
{
	vR[i] = 25514;
}

}
else
{
	if(input[i]==(25513+offset0))
{
	vR[i] = 25513;
}
else
{
	vR[i] = 25512;
}

}

}

}
else
{
	if(input[i]>(25507+offset0))
{
	if(input[i]>(25509+offset0))
{
	if(input[i]==(25511+offset0))
{
	vR[i] = 25511;
}
else
{
	vR[i] = 25510;
}

}
else
{
	if(input[i]==(25509+offset0))
{
	vR[i] = 25509;
}
else
{
	vR[i] = 25508;
}

}

}
else
{
	if(input[i]>(25505+offset0))
{
	if(input[i]==(25507+offset0))
{
	vR[i] = 25507;
}
else
{
	vR[i] = 25506;
}

}
else
{
	if(input[i]==(25505+offset0))
{
	vR[i] = 25505;
}
else
{
	vR[i] = 25504;
}

}

}

}

}

}
else
{
	if(input[i]>(25487+offset0))
{
	if(input[i]>(25495+offset0))
{
	if(input[i]>(25499+offset0))
{
	if(input[i]>(25501+offset0))
{
	if(input[i]==(25503+offset0))
{
	vR[i] = 25503;
}
else
{
	vR[i] = 25502;
}

}
else
{
	if(input[i]==(25501+offset0))
{
	vR[i] = 25501;
}
else
{
	vR[i] = 25500;
}

}

}
else
{
	if(input[i]>(25497+offset0))
{
	if(input[i]==(25499+offset0))
{
	vR[i] = 25499;
}
else
{
	vR[i] = 25498;
}

}
else
{
	if(input[i]==(25497+offset0))
{
	vR[i] = 25497;
}
else
{
	vR[i] = 25496;
}

}

}

}
else
{
	if(input[i]>(25491+offset0))
{
	if(input[i]>(25493+offset0))
{
	if(input[i]==(25495+offset0))
{
	vR[i] = 25495;
}
else
{
	vR[i] = 25494;
}

}
else
{
	if(input[i]==(25493+offset0))
{
	vR[i] = 25493;
}
else
{
	vR[i] = 25492;
}

}

}
else
{
	if(input[i]>(25489+offset0))
{
	if(input[i]==(25491+offset0))
{
	vR[i] = 25491;
}
else
{
	vR[i] = 25490;
}

}
else
{
	if(input[i]==(25489+offset0))
{
	vR[i] = 25489;
}
else
{
	vR[i] = 25488;
}

}

}

}

}
else
{
	if(input[i]>(25479+offset0))
{
	if(input[i]>(25483+offset0))
{
	if(input[i]>(25485+offset0))
{
	if(input[i]==(25487+offset0))
{
	vR[i] = 25487;
}
else
{
	vR[i] = 25486;
}

}
else
{
	if(input[i]==(25485+offset0))
{
	vR[i] = 25485;
}
else
{
	vR[i] = 25484;
}

}

}
else
{
	if(input[i]>(25481+offset0))
{
	if(input[i]==(25483+offset0))
{
	vR[i] = 25483;
}
else
{
	vR[i] = 25482;
}

}
else
{
	if(input[i]==(25481+offset0))
{
	vR[i] = 25481;
}
else
{
	vR[i] = 25480;
}

}

}

}
else
{
	if(input[i]>(25475+offset0))
{
	if(input[i]>(25477+offset0))
{
	if(input[i]==(25479+offset0))
{
	vR[i] = 25479;
}
else
{
	vR[i] = 25478;
}

}
else
{
	if(input[i]==(25477+offset0))
{
	vR[i] = 25477;
}
else
{
	vR[i] = 25476;
}

}

}
else
{
	if(input[i]>(25473+offset0))
{
	if(input[i]==(25475+offset0))
{
	vR[i] = 25475;
}
else
{
	vR[i] = 25474;
}

}
else
{
	if(input[i]==(25473+offset0))
{
	vR[i] = 25473;
}
else
{
	vR[i] = 25472;
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
	if(input[i]>(25407+offset0))
{
	if(input[i]>(25439+offset0))
{
	if(input[i]>(25455+offset0))
{
	if(input[i]>(25463+offset0))
{
	if(input[i]>(25467+offset0))
{
	if(input[i]>(25469+offset0))
{
	if(input[i]==(25471+offset0))
{
	vR[i] = 25471;
}
else
{
	vR[i] = 25470;
}

}
else
{
	if(input[i]==(25469+offset0))
{
	vR[i] = 25469;
}
else
{
	vR[i] = 25468;
}

}

}
else
{
	if(input[i]>(25465+offset0))
{
	if(input[i]==(25467+offset0))
{
	vR[i] = 25467;
}
else
{
	vR[i] = 25466;
}

}
else
{
	if(input[i]==(25465+offset0))
{
	vR[i] = 25465;
}
else
{
	vR[i] = 25464;
}

}

}

}
else
{
	if(input[i]>(25459+offset0))
{
	if(input[i]>(25461+offset0))
{
	if(input[i]==(25463+offset0))
{
	vR[i] = 25463;
}
else
{
	vR[i] = 25462;
}

}
else
{
	if(input[i]==(25461+offset0))
{
	vR[i] = 25461;
}
else
{
	vR[i] = 25460;
}

}

}
else
{
	if(input[i]>(25457+offset0))
{
	if(input[i]==(25459+offset0))
{
	vR[i] = 25459;
}
else
{
	vR[i] = 25458;
}

}
else
{
	if(input[i]==(25457+offset0))
{
	vR[i] = 25457;
}
else
{
	vR[i] = 25456;
}

}

}

}

}
else
{
	if(input[i]>(25447+offset0))
{
	if(input[i]>(25451+offset0))
{
	if(input[i]>(25453+offset0))
{
	if(input[i]==(25455+offset0))
{
	vR[i] = 25455;
}
else
{
	vR[i] = 25454;
}

}
else
{
	if(input[i]==(25453+offset0))
{
	vR[i] = 25453;
}
else
{
	vR[i] = 25452;
}

}

}
else
{
	if(input[i]>(25449+offset0))
{
	if(input[i]==(25451+offset0))
{
	vR[i] = 25451;
}
else
{
	vR[i] = 25450;
}

}
else
{
	if(input[i]==(25449+offset0))
{
	vR[i] = 25449;
}
else
{
	vR[i] = 25448;
}

}

}

}
else
{
	if(input[i]>(25443+offset0))
{
	if(input[i]>(25445+offset0))
{
	if(input[i]==(25447+offset0))
{
	vR[i] = 25447;
}
else
{
	vR[i] = 25446;
}

}
else
{
	if(input[i]==(25445+offset0))
{
	vR[i] = 25445;
}
else
{
	vR[i] = 25444;
}

}

}
else
{
	if(input[i]>(25441+offset0))
{
	if(input[i]==(25443+offset0))
{
	vR[i] = 25443;
}
else
{
	vR[i] = 25442;
}

}
else
{
	if(input[i]==(25441+offset0))
{
	vR[i] = 25441;
}
else
{
	vR[i] = 25440;
}

}

}

}

}

}
else
{
	if(input[i]>(25423+offset0))
{
	if(input[i]>(25431+offset0))
{
	if(input[i]>(25435+offset0))
{
	if(input[i]>(25437+offset0))
{
	if(input[i]==(25439+offset0))
{
	vR[i] = 25439;
}
else
{
	vR[i] = 25438;
}

}
else
{
	if(input[i]==(25437+offset0))
{
	vR[i] = 25437;
}
else
{
	vR[i] = 25436;
}

}

}
else
{
	if(input[i]>(25433+offset0))
{
	if(input[i]==(25435+offset0))
{
	vR[i] = 25435;
}
else
{
	vR[i] = 25434;
}

}
else
{
	if(input[i]==(25433+offset0))
{
	vR[i] = 25433;
}
else
{
	vR[i] = 25432;
}

}

}

}
else
{
	if(input[i]>(25427+offset0))
{
	if(input[i]>(25429+offset0))
{
	if(input[i]==(25431+offset0))
{
	vR[i] = 25431;
}
else
{
	vR[i] = 25430;
}

}
else
{
	if(input[i]==(25429+offset0))
{
	vR[i] = 25429;
}
else
{
	vR[i] = 25428;
}

}

}
else
{
	if(input[i]>(25425+offset0))
{
	if(input[i]==(25427+offset0))
{
	vR[i] = 25427;
}
else
{
	vR[i] = 25426;
}

}
else
{
	if(input[i]==(25425+offset0))
{
	vR[i] = 25425;
}
else
{
	vR[i] = 25424;
}

}

}

}

}
else
{
	if(input[i]>(25415+offset0))
{
	if(input[i]>(25419+offset0))
{
	if(input[i]>(25421+offset0))
{
	if(input[i]==(25423+offset0))
{
	vR[i] = 25423;
}
else
{
	vR[i] = 25422;
}

}
else
{
	if(input[i]==(25421+offset0))
{
	vR[i] = 25421;
}
else
{
	vR[i] = 25420;
}

}

}
else
{
	if(input[i]>(25417+offset0))
{
	if(input[i]==(25419+offset0))
{
	vR[i] = 25419;
}
else
{
	vR[i] = 25418;
}

}
else
{
	if(input[i]==(25417+offset0))
{
	vR[i] = 25417;
}
else
{
	vR[i] = 25416;
}

}

}

}
else
{
	if(input[i]>(25411+offset0))
{
	if(input[i]>(25413+offset0))
{
	if(input[i]==(25415+offset0))
{
	vR[i] = 25415;
}
else
{
	vR[i] = 25414;
}

}
else
{
	if(input[i]==(25413+offset0))
{
	vR[i] = 25413;
}
else
{
	vR[i] = 25412;
}

}

}
else
{
	if(input[i]>(25409+offset0))
{
	if(input[i]==(25411+offset0))
{
	vR[i] = 25411;
}
else
{
	vR[i] = 25410;
}

}
else
{
	if(input[i]==(25409+offset0))
{
	vR[i] = 25409;
}
else
{
	vR[i] = 25408;
}

}

}

}

}

}

}
else
{
	if(input[i]>(25375+offset0))
{
	if(input[i]>(25391+offset0))
{
	if(input[i]>(25399+offset0))
{
	if(input[i]>(25403+offset0))
{
	if(input[i]>(25405+offset0))
{
	if(input[i]==(25407+offset0))
{
	vR[i] = 25407;
}
else
{
	vR[i] = 25406;
}

}
else
{
	if(input[i]==(25405+offset0))
{
	vR[i] = 25405;
}
else
{
	vR[i] = 25404;
}

}

}
else
{
	if(input[i]>(25401+offset0))
{
	if(input[i]==(25403+offset0))
{
	vR[i] = 25403;
}
else
{
	vR[i] = 25402;
}

}
else
{
	if(input[i]==(25401+offset0))
{
	vR[i] = 25401;
}
else
{
	vR[i] = 25400;
}

}

}

}
else
{
	if(input[i]>(25395+offset0))
{
	if(input[i]>(25397+offset0))
{
	if(input[i]==(25399+offset0))
{
	vR[i] = 25399;
}
else
{
	vR[i] = 25398;
}

}
else
{
	if(input[i]==(25397+offset0))
{
	vR[i] = 25397;
}
else
{
	vR[i] = 25396;
}

}

}
else
{
	if(input[i]>(25393+offset0))
{
	if(input[i]==(25395+offset0))
{
	vR[i] = 25395;
}
else
{
	vR[i] = 25394;
}

}
else
{
	if(input[i]==(25393+offset0))
{
	vR[i] = 25393;
}
else
{
	vR[i] = 25392;
}

}

}

}

}
else
{
	if(input[i]>(25383+offset0))
{
	if(input[i]>(25387+offset0))
{
	if(input[i]>(25389+offset0))
{
	if(input[i]==(25391+offset0))
{
	vR[i] = 25391;
}
else
{
	vR[i] = 25390;
}

}
else
{
	if(input[i]==(25389+offset0))
{
	vR[i] = 25389;
}
else
{
	vR[i] = 25388;
}

}

}
else
{
	if(input[i]>(25385+offset0))
{
	if(input[i]==(25387+offset0))
{
	vR[i] = 25387;
}
else
{
	vR[i] = 25386;
}

}
else
{
	if(input[i]==(25385+offset0))
{
	vR[i] = 25385;
}
else
{
	vR[i] = 25384;
}

}

}

}
else
{
	if(input[i]>(25379+offset0))
{
	if(input[i]>(25381+offset0))
{
	if(input[i]==(25383+offset0))
{
	vR[i] = 25383;
}
else
{
	vR[i] = 25382;
}

}
else
{
	if(input[i]==(25381+offset0))
{
	vR[i] = 25381;
}
else
{
	vR[i] = 25380;
}

}

}
else
{
	if(input[i]>(25377+offset0))
{
	if(input[i]==(25379+offset0))
{
	vR[i] = 25379;
}
else
{
	vR[i] = 25378;
}

}
else
{
	if(input[i]==(25377+offset0))
{
	vR[i] = 25377;
}
else
{
	vR[i] = 25376;
}

}

}

}

}

}
else
{
	if(input[i]>(25359+offset0))
{
	if(input[i]>(25367+offset0))
{
	if(input[i]>(25371+offset0))
{
	if(input[i]>(25373+offset0))
{
	if(input[i]==(25375+offset0))
{
	vR[i] = 25375;
}
else
{
	vR[i] = 25374;
}

}
else
{
	if(input[i]==(25373+offset0))
{
	vR[i] = 25373;
}
else
{
	vR[i] = 25372;
}

}

}
else
{
	if(input[i]>(25369+offset0))
{
	if(input[i]==(25371+offset0))
{
	vR[i] = 25371;
}
else
{
	vR[i] = 25370;
}

}
else
{
	if(input[i]==(25369+offset0))
{
	vR[i] = 25369;
}
else
{
	vR[i] = 25368;
}

}

}

}
else
{
	if(input[i]>(25363+offset0))
{
	if(input[i]>(25365+offset0))
{
	if(input[i]==(25367+offset0))
{
	vR[i] = 25367;
}
else
{
	vR[i] = 25366;
}

}
else
{
	if(input[i]==(25365+offset0))
{
	vR[i] = 25365;
}
else
{
	vR[i] = 25364;
}

}

}
else
{
	if(input[i]>(25361+offset0))
{
	if(input[i]==(25363+offset0))
{
	vR[i] = 25363;
}
else
{
	vR[i] = 25362;
}

}
else
{
	if(input[i]==(25361+offset0))
{
	vR[i] = 25361;
}
else
{
	vR[i] = 25360;
}

}

}

}

}
else
{
	if(input[i]>(25351+offset0))
{
	if(input[i]>(25355+offset0))
{
	if(input[i]>(25357+offset0))
{
	if(input[i]==(25359+offset0))
{
	vR[i] = 25359;
}
else
{
	vR[i] = 25358;
}

}
else
{
	if(input[i]==(25357+offset0))
{
	vR[i] = 25357;
}
else
{
	vR[i] = 25356;
}

}

}
else
{
	if(input[i]>(25353+offset0))
{
	if(input[i]==(25355+offset0))
{
	vR[i] = 25355;
}
else
{
	vR[i] = 25354;
}

}
else
{
	if(input[i]==(25353+offset0))
{
	vR[i] = 25353;
}
else
{
	vR[i] = 25352;
}

}

}

}
else
{
	if(input[i]>(25347+offset0))
{
	if(input[i]>(25349+offset0))
{
	if(input[i]==(25351+offset0))
{
	vR[i] = 25351;
}
else
{
	vR[i] = 25350;
}

}
else
{
	if(input[i]==(25349+offset0))
{
	vR[i] = 25349;
}
else
{
	vR[i] = 25348;
}

}

}
else
{
	if(input[i]>(25345+offset0))
{
	if(input[i]==(25347+offset0))
{
	vR[i] = 25347;
}
else
{
	vR[i] = 25346;
}

}
else
{
	if(input[i]==(25345+offset0))
{
	vR[i] = 25345;
}
else
{
	vR[i] = 25344;
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
	if(input[i]>(25215+offset0))
{
	if(input[i]>(25279+offset0))
{
	if(input[i]>(25311+offset0))
{
	if(input[i]>(25327+offset0))
{
	if(input[i]>(25335+offset0))
{
	if(input[i]>(25339+offset0))
{
	if(input[i]>(25341+offset0))
{
	if(input[i]==(25343+offset0))
{
	vR[i] = 25343;
}
else
{
	vR[i] = 25342;
}

}
else
{
	if(input[i]==(25341+offset0))
{
	vR[i] = 25341;
}
else
{
	vR[i] = 25340;
}

}

}
else
{
	if(input[i]>(25337+offset0))
{
	if(input[i]==(25339+offset0))
{
	vR[i] = 25339;
}
else
{
	vR[i] = 25338;
}

}
else
{
	if(input[i]==(25337+offset0))
{
	vR[i] = 25337;
}
else
{
	vR[i] = 25336;
}

}

}

}
else
{
	if(input[i]>(25331+offset0))
{
	if(input[i]>(25333+offset0))
{
	if(input[i]==(25335+offset0))
{
	vR[i] = 25335;
}
else
{
	vR[i] = 25334;
}

}
else
{
	if(input[i]==(25333+offset0))
{
	vR[i] = 25333;
}
else
{
	vR[i] = 25332;
}

}

}
else
{
	if(input[i]>(25329+offset0))
{
	if(input[i]==(25331+offset0))
{
	vR[i] = 25331;
}
else
{
	vR[i] = 25330;
}

}
else
{
	if(input[i]==(25329+offset0))
{
	vR[i] = 25329;
}
else
{
	vR[i] = 25328;
}

}

}

}

}
else
{
	if(input[i]>(25319+offset0))
{
	if(input[i]>(25323+offset0))
{
	if(input[i]>(25325+offset0))
{
	if(input[i]==(25327+offset0))
{
	vR[i] = 25327;
}
else
{
	vR[i] = 25326;
}

}
else
{
	if(input[i]==(25325+offset0))
{
	vR[i] = 25325;
}
else
{
	vR[i] = 25324;
}

}

}
else
{
	if(input[i]>(25321+offset0))
{
	if(input[i]==(25323+offset0))
{
	vR[i] = 25323;
}
else
{
	vR[i] = 25322;
}

}
else
{
	if(input[i]==(25321+offset0))
{
	vR[i] = 25321;
}
else
{
	vR[i] = 25320;
}

}

}

}
else
{
	if(input[i]>(25315+offset0))
{
	if(input[i]>(25317+offset0))
{
	if(input[i]==(25319+offset0))
{
	vR[i] = 25319;
}
else
{
	vR[i] = 25318;
}

}
else
{
	if(input[i]==(25317+offset0))
{
	vR[i] = 25317;
}
else
{
	vR[i] = 25316;
}

}

}
else
{
	if(input[i]>(25313+offset0))
{
	if(input[i]==(25315+offset0))
{
	vR[i] = 25315;
}
else
{
	vR[i] = 25314;
}

}
else
{
	if(input[i]==(25313+offset0))
{
	vR[i] = 25313;
}
else
{
	vR[i] = 25312;
}

}

}

}

}

}
else
{
	if(input[i]>(25295+offset0))
{
	if(input[i]>(25303+offset0))
{
	if(input[i]>(25307+offset0))
{
	if(input[i]>(25309+offset0))
{
	if(input[i]==(25311+offset0))
{
	vR[i] = 25311;
}
else
{
	vR[i] = 25310;
}

}
else
{
	if(input[i]==(25309+offset0))
{
	vR[i] = 25309;
}
else
{
	vR[i] = 25308;
}

}

}
else
{
	if(input[i]>(25305+offset0))
{
	if(input[i]==(25307+offset0))
{
	vR[i] = 25307;
}
else
{
	vR[i] = 25306;
}

}
else
{
	if(input[i]==(25305+offset0))
{
	vR[i] = 25305;
}
else
{
	vR[i] = 25304;
}

}

}

}
else
{
	if(input[i]>(25299+offset0))
{
	if(input[i]>(25301+offset0))
{
	if(input[i]==(25303+offset0))
{
	vR[i] = 25303;
}
else
{
	vR[i] = 25302;
}

}
else
{
	if(input[i]==(25301+offset0))
{
	vR[i] = 25301;
}
else
{
	vR[i] = 25300;
}

}

}
else
{
	if(input[i]>(25297+offset0))
{
	if(input[i]==(25299+offset0))
{
	vR[i] = 25299;
}
else
{
	vR[i] = 25298;
}

}
else
{
	if(input[i]==(25297+offset0))
{
	vR[i] = 25297;
}
else
{
	vR[i] = 25296;
}

}

}

}

}
else
{
	if(input[i]>(25287+offset0))
{
	if(input[i]>(25291+offset0))
{
	if(input[i]>(25293+offset0))
{
	if(input[i]==(25295+offset0))
{
	vR[i] = 25295;
}
else
{
	vR[i] = 25294;
}

}
else
{
	if(input[i]==(25293+offset0))
{
	vR[i] = 25293;
}
else
{
	vR[i] = 25292;
}

}

}
else
{
	if(input[i]>(25289+offset0))
{
	if(input[i]==(25291+offset0))
{
	vR[i] = 25291;
}
else
{
	vR[i] = 25290;
}

}
else
{
	if(input[i]==(25289+offset0))
{
	vR[i] = 25289;
}
else
{
	vR[i] = 25288;
}

}

}

}
else
{
	if(input[i]>(25283+offset0))
{
	if(input[i]>(25285+offset0))
{
	if(input[i]==(25287+offset0))
{
	vR[i] = 25287;
}
else
{
	vR[i] = 25286;
}

}
else
{
	if(input[i]==(25285+offset0))
{
	vR[i] = 25285;
}
else
{
	vR[i] = 25284;
}

}

}
else
{
	if(input[i]>(25281+offset0))
{
	if(input[i]==(25283+offset0))
{
	vR[i] = 25283;
}
else
{
	vR[i] = 25282;
}

}
else
{
	if(input[i]==(25281+offset0))
{
	vR[i] = 25281;
}
else
{
	vR[i] = 25280;
}

}

}

}

}

}

}
else
{
	if(input[i]>(25247+offset0))
{
	if(input[i]>(25263+offset0))
{
	if(input[i]>(25271+offset0))
{
	if(input[i]>(25275+offset0))
{
	if(input[i]>(25277+offset0))
{
	if(input[i]==(25279+offset0))
{
	vR[i] = 25279;
}
else
{
	vR[i] = 25278;
}

}
else
{
	if(input[i]==(25277+offset0))
{
	vR[i] = 25277;
}
else
{
	vR[i] = 25276;
}

}

}
else
{
	if(input[i]>(25273+offset0))
{
	if(input[i]==(25275+offset0))
{
	vR[i] = 25275;
}
else
{
	vR[i] = 25274;
}

}
else
{
	if(input[i]==(25273+offset0))
{
	vR[i] = 25273;
}
else
{
	vR[i] = 25272;
}

}

}

}
else
{
	if(input[i]>(25267+offset0))
{
	if(input[i]>(25269+offset0))
{
	if(input[i]==(25271+offset0))
{
	vR[i] = 25271;
}
else
{
	vR[i] = 25270;
}

}
else
{
	if(input[i]==(25269+offset0))
{
	vR[i] = 25269;
}
else
{
	vR[i] = 25268;
}

}

}
else
{
	if(input[i]>(25265+offset0))
{
	if(input[i]==(25267+offset0))
{
	vR[i] = 25267;
}
else
{
	vR[i] = 25266;
}

}
else
{
	if(input[i]==(25265+offset0))
{
	vR[i] = 25265;
}
else
{
	vR[i] = 25264;
}

}

}

}

}
else
{
	if(input[i]>(25255+offset0))
{
	if(input[i]>(25259+offset0))
{
	if(input[i]>(25261+offset0))
{
	if(input[i]==(25263+offset0))
{
	vR[i] = 25263;
}
else
{
	vR[i] = 25262;
}

}
else
{
	if(input[i]==(25261+offset0))
{
	vR[i] = 25261;
}
else
{
	vR[i] = 25260;
}

}

}
else
{
	if(input[i]>(25257+offset0))
{
	if(input[i]==(25259+offset0))
{
	vR[i] = 25259;
}
else
{
	vR[i] = 25258;
}

}
else
{
	if(input[i]==(25257+offset0))
{
	vR[i] = 25257;
}
else
{
	vR[i] = 25256;
}

}

}

}
else
{
	if(input[i]>(25251+offset0))
{
	if(input[i]>(25253+offset0))
{
	if(input[i]==(25255+offset0))
{
	vR[i] = 25255;
}
else
{
	vR[i] = 25254;
}

}
else
{
	if(input[i]==(25253+offset0))
{
	vR[i] = 25253;
}
else
{
	vR[i] = 25252;
}

}

}
else
{
	if(input[i]>(25249+offset0))
{
	if(input[i]==(25251+offset0))
{
	vR[i] = 25251;
}
else
{
	vR[i] = 25250;
}

}
else
{
	if(input[i]==(25249+offset0))
{
	vR[i] = 25249;
}
else
{
	vR[i] = 25248;
}

}

}

}

}

}
else
{
	if(input[i]>(25231+offset0))
{
	if(input[i]>(25239+offset0))
{
	if(input[i]>(25243+offset0))
{
	if(input[i]>(25245+offset0))
{
	if(input[i]==(25247+offset0))
{
	vR[i] = 25247;
}
else
{
	vR[i] = 25246;
}

}
else
{
	if(input[i]==(25245+offset0))
{
	vR[i] = 25245;
}
else
{
	vR[i] = 25244;
}

}

}
else
{
	if(input[i]>(25241+offset0))
{
	if(input[i]==(25243+offset0))
{
	vR[i] = 25243;
}
else
{
	vR[i] = 25242;
}

}
else
{
	if(input[i]==(25241+offset0))
{
	vR[i] = 25241;
}
else
{
	vR[i] = 25240;
}

}

}

}
else
{
	if(input[i]>(25235+offset0))
{
	if(input[i]>(25237+offset0))
{
	if(input[i]==(25239+offset0))
{
	vR[i] = 25239;
}
else
{
	vR[i] = 25238;
}

}
else
{
	if(input[i]==(25237+offset0))
{
	vR[i] = 25237;
}
else
{
	vR[i] = 25236;
}

}

}
else
{
	if(input[i]>(25233+offset0))
{
	if(input[i]==(25235+offset0))
{
	vR[i] = 25235;
}
else
{
	vR[i] = 25234;
}

}
else
{
	if(input[i]==(25233+offset0))
{
	vR[i] = 25233;
}
else
{
	vR[i] = 25232;
}

}

}

}

}
else
{
	if(input[i]>(25223+offset0))
{
	if(input[i]>(25227+offset0))
{
	if(input[i]>(25229+offset0))
{
	if(input[i]==(25231+offset0))
{
	vR[i] = 25231;
}
else
{
	vR[i] = 25230;
}

}
else
{
	if(input[i]==(25229+offset0))
{
	vR[i] = 25229;
}
else
{
	vR[i] = 25228;
}

}

}
else
{
	if(input[i]>(25225+offset0))
{
	if(input[i]==(25227+offset0))
{
	vR[i] = 25227;
}
else
{
	vR[i] = 25226;
}

}
else
{
	if(input[i]==(25225+offset0))
{
	vR[i] = 25225;
}
else
{
	vR[i] = 25224;
}

}

}

}
else
{
	if(input[i]>(25219+offset0))
{
	if(input[i]>(25221+offset0))
{
	if(input[i]==(25223+offset0))
{
	vR[i] = 25223;
}
else
{
	vR[i] = 25222;
}

}
else
{
	if(input[i]==(25221+offset0))
{
	vR[i] = 25221;
}
else
{
	vR[i] = 25220;
}

}

}
else
{
	if(input[i]>(25217+offset0))
{
	if(input[i]==(25219+offset0))
{
	vR[i] = 25219;
}
else
{
	vR[i] = 25218;
}

}
else
{
	if(input[i]==(25217+offset0))
{
	vR[i] = 25217;
}
else
{
	vR[i] = 25216;
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
	if(input[i]>(25151+offset0))
{
	if(input[i]>(25183+offset0))
{
	if(input[i]>(25199+offset0))
{
	if(input[i]>(25207+offset0))
{
	if(input[i]>(25211+offset0))
{
	if(input[i]>(25213+offset0))
{
	if(input[i]==(25215+offset0))
{
	vR[i] = 25215;
}
else
{
	vR[i] = 25214;
}

}
else
{
	if(input[i]==(25213+offset0))
{
	vR[i] = 25213;
}
else
{
	vR[i] = 25212;
}

}

}
else
{
	if(input[i]>(25209+offset0))
{
	if(input[i]==(25211+offset0))
{
	vR[i] = 25211;
}
else
{
	vR[i] = 25210;
}

}
else
{
	if(input[i]==(25209+offset0))
{
	vR[i] = 25209;
}
else
{
	vR[i] = 25208;
}

}

}

}
else
{
	if(input[i]>(25203+offset0))
{
	if(input[i]>(25205+offset0))
{
	if(input[i]==(25207+offset0))
{
	vR[i] = 25207;
}
else
{
	vR[i] = 25206;
}

}
else
{
	if(input[i]==(25205+offset0))
{
	vR[i] = 25205;
}
else
{
	vR[i] = 25204;
}

}

}
else
{
	if(input[i]>(25201+offset0))
{
	if(input[i]==(25203+offset0))
{
	vR[i] = 25203;
}
else
{
	vR[i] = 25202;
}

}
else
{
	if(input[i]==(25201+offset0))
{
	vR[i] = 25201;
}
else
{
	vR[i] = 25200;
}

}

}

}

}
else
{
	if(input[i]>(25191+offset0))
{
	if(input[i]>(25195+offset0))
{
	if(input[i]>(25197+offset0))
{
	if(input[i]==(25199+offset0))
{
	vR[i] = 25199;
}
else
{
	vR[i] = 25198;
}

}
else
{
	if(input[i]==(25197+offset0))
{
	vR[i] = 25197;
}
else
{
	vR[i] = 25196;
}

}

}
else
{
	if(input[i]>(25193+offset0))
{
	if(input[i]==(25195+offset0))
{
	vR[i] = 25195;
}
else
{
	vR[i] = 25194;
}

}
else
{
	if(input[i]==(25193+offset0))
{
	vR[i] = 25193;
}
else
{
	vR[i] = 25192;
}

}

}

}
else
{
	if(input[i]>(25187+offset0))
{
	if(input[i]>(25189+offset0))
{
	if(input[i]==(25191+offset0))
{
	vR[i] = 25191;
}
else
{
	vR[i] = 25190;
}

}
else
{
	if(input[i]==(25189+offset0))
{
	vR[i] = 25189;
}
else
{
	vR[i] = 25188;
}

}

}
else
{
	if(input[i]>(25185+offset0))
{
	if(input[i]==(25187+offset0))
{
	vR[i] = 25187;
}
else
{
	vR[i] = 25186;
}

}
else
{
	if(input[i]==(25185+offset0))
{
	vR[i] = 25185;
}
else
{
	vR[i] = 25184;
}

}

}

}

}

}
else
{
	if(input[i]>(25167+offset0))
{
	if(input[i]>(25175+offset0))
{
	if(input[i]>(25179+offset0))
{
	if(input[i]>(25181+offset0))
{
	if(input[i]==(25183+offset0))
{
	vR[i] = 25183;
}
else
{
	vR[i] = 25182;
}

}
else
{
	if(input[i]==(25181+offset0))
{
	vR[i] = 25181;
}
else
{
	vR[i] = 25180;
}

}

}
else
{
	if(input[i]>(25177+offset0))
{
	if(input[i]==(25179+offset0))
{
	vR[i] = 25179;
}
else
{
	vR[i] = 25178;
}

}
else
{
	if(input[i]==(25177+offset0))
{
	vR[i] = 25177;
}
else
{
	vR[i] = 25176;
}

}

}

}
else
{
	if(input[i]>(25171+offset0))
{
	if(input[i]>(25173+offset0))
{
	if(input[i]==(25175+offset0))
{
	vR[i] = 25175;
}
else
{
	vR[i] = 25174;
}

}
else
{
	if(input[i]==(25173+offset0))
{
	vR[i] = 25173;
}
else
{
	vR[i] = 25172;
}

}

}
else
{
	if(input[i]>(25169+offset0))
{
	if(input[i]==(25171+offset0))
{
	vR[i] = 25171;
}
else
{
	vR[i] = 25170;
}

}
else
{
	if(input[i]==(25169+offset0))
{
	vR[i] = 25169;
}
else
{
	vR[i] = 25168;
}

}

}

}

}
else
{
	if(input[i]>(25159+offset0))
{
	if(input[i]>(25163+offset0))
{
	if(input[i]>(25165+offset0))
{
	if(input[i]==(25167+offset0))
{
	vR[i] = 25167;
}
else
{
	vR[i] = 25166;
}

}
else
{
	if(input[i]==(25165+offset0))
{
	vR[i] = 25165;
}
else
{
	vR[i] = 25164;
}

}

}
else
{
	if(input[i]>(25161+offset0))
{
	if(input[i]==(25163+offset0))
{
	vR[i] = 25163;
}
else
{
	vR[i] = 25162;
}

}
else
{
	if(input[i]==(25161+offset0))
{
	vR[i] = 25161;
}
else
{
	vR[i] = 25160;
}

}

}

}
else
{
	if(input[i]>(25155+offset0))
{
	if(input[i]>(25157+offset0))
{
	if(input[i]==(25159+offset0))
{
	vR[i] = 25159;
}
else
{
	vR[i] = 25158;
}

}
else
{
	if(input[i]==(25157+offset0))
{
	vR[i] = 25157;
}
else
{
	vR[i] = 25156;
}

}

}
else
{
	if(input[i]>(25153+offset0))
{
	if(input[i]==(25155+offset0))
{
	vR[i] = 25155;
}
else
{
	vR[i] = 25154;
}

}
else
{
	if(input[i]==(25153+offset0))
{
	vR[i] = 25153;
}
else
{
	vR[i] = 25152;
}

}

}

}

}

}

}
else
{
	if(input[i]>(25119+offset0))
{
	if(input[i]>(25135+offset0))
{
	if(input[i]>(25143+offset0))
{
	if(input[i]>(25147+offset0))
{
	if(input[i]>(25149+offset0))
{
	if(input[i]==(25151+offset0))
{
	vR[i] = 25151;
}
else
{
	vR[i] = 25150;
}

}
else
{
	if(input[i]==(25149+offset0))
{
	vR[i] = 25149;
}
else
{
	vR[i] = 25148;
}

}

}
else
{
	if(input[i]>(25145+offset0))
{
	if(input[i]==(25147+offset0))
{
	vR[i] = 25147;
}
else
{
	vR[i] = 25146;
}

}
else
{
	if(input[i]==(25145+offset0))
{
	vR[i] = 25145;
}
else
{
	vR[i] = 25144;
}

}

}

}
else
{
	if(input[i]>(25139+offset0))
{
	if(input[i]>(25141+offset0))
{
	if(input[i]==(25143+offset0))
{
	vR[i] = 25143;
}
else
{
	vR[i] = 25142;
}

}
else
{
	if(input[i]==(25141+offset0))
{
	vR[i] = 25141;
}
else
{
	vR[i] = 25140;
}

}

}
else
{
	if(input[i]>(25137+offset0))
{
	if(input[i]==(25139+offset0))
{
	vR[i] = 25139;
}
else
{
	vR[i] = 25138;
}

}
else
{
	if(input[i]==(25137+offset0))
{
	vR[i] = 25137;
}
else
{
	vR[i] = 25136;
}

}

}

}

}
else
{
	if(input[i]>(25127+offset0))
{
	if(input[i]>(25131+offset0))
{
	if(input[i]>(25133+offset0))
{
	if(input[i]==(25135+offset0))
{
	vR[i] = 25135;
}
else
{
	vR[i] = 25134;
}

}
else
{
	if(input[i]==(25133+offset0))
{
	vR[i] = 25133;
}
else
{
	vR[i] = 25132;
}

}

}
else
{
	if(input[i]>(25129+offset0))
{
	if(input[i]==(25131+offset0))
{
	vR[i] = 25131;
}
else
{
	vR[i] = 25130;
}

}
else
{
	if(input[i]==(25129+offset0))
{
	vR[i] = 25129;
}
else
{
	vR[i] = 25128;
}

}

}

}
else
{
	if(input[i]>(25123+offset0))
{
	if(input[i]>(25125+offset0))
{
	if(input[i]==(25127+offset0))
{
	vR[i] = 25127;
}
else
{
	vR[i] = 25126;
}

}
else
{
	if(input[i]==(25125+offset0))
{
	vR[i] = 25125;
}
else
{
	vR[i] = 25124;
}

}

}
else
{
	if(input[i]>(25121+offset0))
{
	if(input[i]==(25123+offset0))
{
	vR[i] = 25123;
}
else
{
	vR[i] = 25122;
}

}
else
{
	if(input[i]==(25121+offset0))
{
	vR[i] = 25121;
}
else
{
	vR[i] = 25120;
}

}

}

}

}

}
else
{
	if(input[i]>(25103+offset0))
{
	if(input[i]>(25111+offset0))
{
	if(input[i]>(25115+offset0))
{
	if(input[i]>(25117+offset0))
{
	if(input[i]==(25119+offset0))
{
	vR[i] = 25119;
}
else
{
	vR[i] = 25118;
}

}
else
{
	if(input[i]==(25117+offset0))
{
	vR[i] = 25117;
}
else
{
	vR[i] = 25116;
}

}

}
else
{
	if(input[i]>(25113+offset0))
{
	if(input[i]==(25115+offset0))
{
	vR[i] = 25115;
}
else
{
	vR[i] = 25114;
}

}
else
{
	if(input[i]==(25113+offset0))
{
	vR[i] = 25113;
}
else
{
	vR[i] = 25112;
}

}

}

}
else
{
	if(input[i]>(25107+offset0))
{
	if(input[i]>(25109+offset0))
{
	if(input[i]==(25111+offset0))
{
	vR[i] = 25111;
}
else
{
	vR[i] = 25110;
}

}
else
{
	if(input[i]==(25109+offset0))
{
	vR[i] = 25109;
}
else
{
	vR[i] = 25108;
}

}

}
else
{
	if(input[i]>(25105+offset0))
{
	if(input[i]==(25107+offset0))
{
	vR[i] = 25107;
}
else
{
	vR[i] = 25106;
}

}
else
{
	if(input[i]==(25105+offset0))
{
	vR[i] = 25105;
}
else
{
	vR[i] = 25104;
}

}

}

}

}
else
{
	if(input[i]>(25095+offset0))
{
	if(input[i]>(25099+offset0))
{
	if(input[i]>(25101+offset0))
{
	if(input[i]==(25103+offset0))
{
	vR[i] = 25103;
}
else
{
	vR[i] = 25102;
}

}
else
{
	if(input[i]==(25101+offset0))
{
	vR[i] = 25101;
}
else
{
	vR[i] = 25100;
}

}

}
else
{
	if(input[i]>(25097+offset0))
{
	if(input[i]==(25099+offset0))
{
	vR[i] = 25099;
}
else
{
	vR[i] = 25098;
}

}
else
{
	if(input[i]==(25097+offset0))
{
	vR[i] = 25097;
}
else
{
	vR[i] = 25096;
}

}

}

}
else
{
	if(input[i]>(25091+offset0))
{
	if(input[i]>(25093+offset0))
{
	if(input[i]==(25095+offset0))
{
	vR[i] = 25095;
}
else
{
	vR[i] = 25094;
}

}
else
{
	if(input[i]==(25093+offset0))
{
	vR[i] = 25093;
}
else
{
	vR[i] = 25092;
}

}

}
else
{
	if(input[i]>(25089+offset0))
{
	if(input[i]==(25091+offset0))
{
	vR[i] = 25091;
}
else
{
	vR[i] = 25090;
}

}
else
{
	if(input[i]==(25089+offset0))
{
	vR[i] = 25089;
}
else
{
	vR[i] = 25088;
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
	if(input[i]>(24831+offset0))
{
	if(input[i]>(24959+offset0))
{
	if(input[i]>(25023+offset0))
{
	if(input[i]>(25055+offset0))
{
	if(input[i]>(25071+offset0))
{
	if(input[i]>(25079+offset0))
{
	if(input[i]>(25083+offset0))
{
	if(input[i]>(25085+offset0))
{
	if(input[i]==(25087+offset0))
{
	vR[i] = 25087;
}
else
{
	vR[i] = 25086;
}

}
else
{
	if(input[i]==(25085+offset0))
{
	vR[i] = 25085;
}
else
{
	vR[i] = 25084;
}

}

}
else
{
	if(input[i]>(25081+offset0))
{
	if(input[i]==(25083+offset0))
{
	vR[i] = 25083;
}
else
{
	vR[i] = 25082;
}

}
else
{
	if(input[i]==(25081+offset0))
{
	vR[i] = 25081;
}
else
{
	vR[i] = 25080;
}

}

}

}
else
{
	if(input[i]>(25075+offset0))
{
	if(input[i]>(25077+offset0))
{
	if(input[i]==(25079+offset0))
{
	vR[i] = 25079;
}
else
{
	vR[i] = 25078;
}

}
else
{
	if(input[i]==(25077+offset0))
{
	vR[i] = 25077;
}
else
{
	vR[i] = 25076;
}

}

}
else
{
	if(input[i]>(25073+offset0))
{
	if(input[i]==(25075+offset0))
{
	vR[i] = 25075;
}
else
{
	vR[i] = 25074;
}

}
else
{
	if(input[i]==(25073+offset0))
{
	vR[i] = 25073;
}
else
{
	vR[i] = 25072;
}

}

}

}

}
else
{
	if(input[i]>(25063+offset0))
{
	if(input[i]>(25067+offset0))
{
	if(input[i]>(25069+offset0))
{
	if(input[i]==(25071+offset0))
{
	vR[i] = 25071;
}
else
{
	vR[i] = 25070;
}

}
else
{
	if(input[i]==(25069+offset0))
{
	vR[i] = 25069;
}
else
{
	vR[i] = 25068;
}

}

}
else
{
	if(input[i]>(25065+offset0))
{
	if(input[i]==(25067+offset0))
{
	vR[i] = 25067;
}
else
{
	vR[i] = 25066;
}

}
else
{
	if(input[i]==(25065+offset0))
{
	vR[i] = 25065;
}
else
{
	vR[i] = 25064;
}

}

}

}
else
{
	if(input[i]>(25059+offset0))
{
	if(input[i]>(25061+offset0))
{
	if(input[i]==(25063+offset0))
{
	vR[i] = 25063;
}
else
{
	vR[i] = 25062;
}

}
else
{
	if(input[i]==(25061+offset0))
{
	vR[i] = 25061;
}
else
{
	vR[i] = 25060;
}

}

}
else
{
	if(input[i]>(25057+offset0))
{
	if(input[i]==(25059+offset0))
{
	vR[i] = 25059;
}
else
{
	vR[i] = 25058;
}

}
else
{
	if(input[i]==(25057+offset0))
{
	vR[i] = 25057;
}
else
{
	vR[i] = 25056;
}

}

}

}

}

}
else
{
	if(input[i]>(25039+offset0))
{
	if(input[i]>(25047+offset0))
{
	if(input[i]>(25051+offset0))
{
	if(input[i]>(25053+offset0))
{
	if(input[i]==(25055+offset0))
{
	vR[i] = 25055;
}
else
{
	vR[i] = 25054;
}

}
else
{
	if(input[i]==(25053+offset0))
{
	vR[i] = 25053;
}
else
{
	vR[i] = 25052;
}

}

}
else
{
	if(input[i]>(25049+offset0))
{
	if(input[i]==(25051+offset0))
{
	vR[i] = 25051;
}
else
{
	vR[i] = 25050;
}

}
else
{
	if(input[i]==(25049+offset0))
{
	vR[i] = 25049;
}
else
{
	vR[i] = 25048;
}

}

}

}
else
{
	if(input[i]>(25043+offset0))
{
	if(input[i]>(25045+offset0))
{
	if(input[i]==(25047+offset0))
{
	vR[i] = 25047;
}
else
{
	vR[i] = 25046;
}

}
else
{
	if(input[i]==(25045+offset0))
{
	vR[i] = 25045;
}
else
{
	vR[i] = 25044;
}

}

}
else
{
	if(input[i]>(25041+offset0))
{
	if(input[i]==(25043+offset0))
{
	vR[i] = 25043;
}
else
{
	vR[i] = 25042;
}

}
else
{
	if(input[i]==(25041+offset0))
{
	vR[i] = 25041;
}
else
{
	vR[i] = 25040;
}

}

}

}

}
else
{
	if(input[i]>(25031+offset0))
{
	if(input[i]>(25035+offset0))
{
	if(input[i]>(25037+offset0))
{
	if(input[i]==(25039+offset0))
{
	vR[i] = 25039;
}
else
{
	vR[i] = 25038;
}

}
else
{
	if(input[i]==(25037+offset0))
{
	vR[i] = 25037;
}
else
{
	vR[i] = 25036;
}

}

}
else
{
	if(input[i]>(25033+offset0))
{
	if(input[i]==(25035+offset0))
{
	vR[i] = 25035;
}
else
{
	vR[i] = 25034;
}

}
else
{
	if(input[i]==(25033+offset0))
{
	vR[i] = 25033;
}
else
{
	vR[i] = 25032;
}

}

}

}
else
{
	if(input[i]>(25027+offset0))
{
	if(input[i]>(25029+offset0))
{
	if(input[i]==(25031+offset0))
{
	vR[i] = 25031;
}
else
{
	vR[i] = 25030;
}

}
else
{
	if(input[i]==(25029+offset0))
{
	vR[i] = 25029;
}
else
{
	vR[i] = 25028;
}

}

}
else
{
	if(input[i]>(25025+offset0))
{
	if(input[i]==(25027+offset0))
{
	vR[i] = 25027;
}
else
{
	vR[i] = 25026;
}

}
else
{
	if(input[i]==(25025+offset0))
{
	vR[i] = 25025;
}
else
{
	vR[i] = 25024;
}

}

}

}

}

}

}
else
{
	if(input[i]>(24991+offset0))
{
	if(input[i]>(25007+offset0))
{
	if(input[i]>(25015+offset0))
{
	if(input[i]>(25019+offset0))
{
	if(input[i]>(25021+offset0))
{
	if(input[i]==(25023+offset0))
{
	vR[i] = 25023;
}
else
{
	vR[i] = 25022;
}

}
else
{
	if(input[i]==(25021+offset0))
{
	vR[i] = 25021;
}
else
{
	vR[i] = 25020;
}

}

}
else
{
	if(input[i]>(25017+offset0))
{
	if(input[i]==(25019+offset0))
{
	vR[i] = 25019;
}
else
{
	vR[i] = 25018;
}

}
else
{
	if(input[i]==(25017+offset0))
{
	vR[i] = 25017;
}
else
{
	vR[i] = 25016;
}

}

}

}
else
{
	if(input[i]>(25011+offset0))
{
	if(input[i]>(25013+offset0))
{
	if(input[i]==(25015+offset0))
{
	vR[i] = 25015;
}
else
{
	vR[i] = 25014;
}

}
else
{
	if(input[i]==(25013+offset0))
{
	vR[i] = 25013;
}
else
{
	vR[i] = 25012;
}

}

}
else
{
	if(input[i]>(25009+offset0))
{
	if(input[i]==(25011+offset0))
{
	vR[i] = 25011;
}
else
{
	vR[i] = 25010;
}

}
else
{
	if(input[i]==(25009+offset0))
{
	vR[i] = 25009;
}
else
{
	vR[i] = 25008;
}

}

}

}

}
else
{
	if(input[i]>(24999+offset0))
{
	if(input[i]>(25003+offset0))
{
	if(input[i]>(25005+offset0))
{
	if(input[i]==(25007+offset0))
{
	vR[i] = 25007;
}
else
{
	vR[i] = 25006;
}

}
else
{
	if(input[i]==(25005+offset0))
{
	vR[i] = 25005;
}
else
{
	vR[i] = 25004;
}

}

}
else
{
	if(input[i]>(25001+offset0))
{
	if(input[i]==(25003+offset0))
{
	vR[i] = 25003;
}
else
{
	vR[i] = 25002;
}

}
else
{
	if(input[i]==(25001+offset0))
{
	vR[i] = 25001;
}
else
{
	vR[i] = 25000;
}

}

}

}
else
{
	if(input[i]>(24995+offset0))
{
	if(input[i]>(24997+offset0))
{
	if(input[i]==(24999+offset0))
{
	vR[i] = 24999;
}
else
{
	vR[i] = 24998;
}

}
else
{
	if(input[i]==(24997+offset0))
{
	vR[i] = 24997;
}
else
{
	vR[i] = 24996;
}

}

}
else
{
	if(input[i]>(24993+offset0))
{
	if(input[i]==(24995+offset0))
{
	vR[i] = 24995;
}
else
{
	vR[i] = 24994;
}

}
else
{
	if(input[i]==(24993+offset0))
{
	vR[i] = 24993;
}
else
{
	vR[i] = 24992;
}

}

}

}

}

}
else
{
	if(input[i]>(24975+offset0))
{
	if(input[i]>(24983+offset0))
{
	if(input[i]>(24987+offset0))
{
	if(input[i]>(24989+offset0))
{
	if(input[i]==(24991+offset0))
{
	vR[i] = 24991;
}
else
{
	vR[i] = 24990;
}

}
else
{
	if(input[i]==(24989+offset0))
{
	vR[i] = 24989;
}
else
{
	vR[i] = 24988;
}

}

}
else
{
	if(input[i]>(24985+offset0))
{
	if(input[i]==(24987+offset0))
{
	vR[i] = 24987;
}
else
{
	vR[i] = 24986;
}

}
else
{
	if(input[i]==(24985+offset0))
{
	vR[i] = 24985;
}
else
{
	vR[i] = 24984;
}

}

}

}
else
{
	if(input[i]>(24979+offset0))
{
	if(input[i]>(24981+offset0))
{
	if(input[i]==(24983+offset0))
{
	vR[i] = 24983;
}
else
{
	vR[i] = 24982;
}

}
else
{
	if(input[i]==(24981+offset0))
{
	vR[i] = 24981;
}
else
{
	vR[i] = 24980;
}

}

}
else
{
	if(input[i]>(24977+offset0))
{
	if(input[i]==(24979+offset0))
{
	vR[i] = 24979;
}
else
{
	vR[i] = 24978;
}

}
else
{
	if(input[i]==(24977+offset0))
{
	vR[i] = 24977;
}
else
{
	vR[i] = 24976;
}

}

}

}

}
else
{
	if(input[i]>(24967+offset0))
{
	if(input[i]>(24971+offset0))
{
	if(input[i]>(24973+offset0))
{
	if(input[i]==(24975+offset0))
{
	vR[i] = 24975;
}
else
{
	vR[i] = 24974;
}

}
else
{
	if(input[i]==(24973+offset0))
{
	vR[i] = 24973;
}
else
{
	vR[i] = 24972;
}

}

}
else
{
	if(input[i]>(24969+offset0))
{
	if(input[i]==(24971+offset0))
{
	vR[i] = 24971;
}
else
{
	vR[i] = 24970;
}

}
else
{
	if(input[i]==(24969+offset0))
{
	vR[i] = 24969;
}
else
{
	vR[i] = 24968;
}

}

}

}
else
{
	if(input[i]>(24963+offset0))
{
	if(input[i]>(24965+offset0))
{
	if(input[i]==(24967+offset0))
{
	vR[i] = 24967;
}
else
{
	vR[i] = 24966;
}

}
else
{
	if(input[i]==(24965+offset0))
{
	vR[i] = 24965;
}
else
{
	vR[i] = 24964;
}

}

}
else
{
	if(input[i]>(24961+offset0))
{
	if(input[i]==(24963+offset0))
{
	vR[i] = 24963;
}
else
{
	vR[i] = 24962;
}

}
else
{
	if(input[i]==(24961+offset0))
{
	vR[i] = 24961;
}
else
{
	vR[i] = 24960;
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
	if(input[i]>(24895+offset0))
{
	if(input[i]>(24927+offset0))
{
	if(input[i]>(24943+offset0))
{
	if(input[i]>(24951+offset0))
{
	if(input[i]>(24955+offset0))
{
	if(input[i]>(24957+offset0))
{
	if(input[i]==(24959+offset0))
{
	vR[i] = 24959;
}
else
{
	vR[i] = 24958;
}

}
else
{
	if(input[i]==(24957+offset0))
{
	vR[i] = 24957;
}
else
{
	vR[i] = 24956;
}

}

}
else
{
	if(input[i]>(24953+offset0))
{
	if(input[i]==(24955+offset0))
{
	vR[i] = 24955;
}
else
{
	vR[i] = 24954;
}

}
else
{
	if(input[i]==(24953+offset0))
{
	vR[i] = 24953;
}
else
{
	vR[i] = 24952;
}

}

}

}
else
{
	if(input[i]>(24947+offset0))
{
	if(input[i]>(24949+offset0))
{
	if(input[i]==(24951+offset0))
{
	vR[i] = 24951;
}
else
{
	vR[i] = 24950;
}

}
else
{
	if(input[i]==(24949+offset0))
{
	vR[i] = 24949;
}
else
{
	vR[i] = 24948;
}

}

}
else
{
	if(input[i]>(24945+offset0))
{
	if(input[i]==(24947+offset0))
{
	vR[i] = 24947;
}
else
{
	vR[i] = 24946;
}

}
else
{
	if(input[i]==(24945+offset0))
{
	vR[i] = 24945;
}
else
{
	vR[i] = 24944;
}

}

}

}

}
else
{
	if(input[i]>(24935+offset0))
{
	if(input[i]>(24939+offset0))
{
	if(input[i]>(24941+offset0))
{
	if(input[i]==(24943+offset0))
{
	vR[i] = 24943;
}
else
{
	vR[i] = 24942;
}

}
else
{
	if(input[i]==(24941+offset0))
{
	vR[i] = 24941;
}
else
{
	vR[i] = 24940;
}

}

}
else
{
	if(input[i]>(24937+offset0))
{
	if(input[i]==(24939+offset0))
{
	vR[i] = 24939;
}
else
{
	vR[i] = 24938;
}

}
else
{
	if(input[i]==(24937+offset0))
{
	vR[i] = 24937;
}
else
{
	vR[i] = 24936;
}

}

}

}
else
{
	if(input[i]>(24931+offset0))
{
	if(input[i]>(24933+offset0))
{
	if(input[i]==(24935+offset0))
{
	vR[i] = 24935;
}
else
{
	vR[i] = 24934;
}

}
else
{
	if(input[i]==(24933+offset0))
{
	vR[i] = 24933;
}
else
{
	vR[i] = 24932;
}

}

}
else
{
	if(input[i]>(24929+offset0))
{
	if(input[i]==(24931+offset0))
{
	vR[i] = 24931;
}
else
{
	vR[i] = 24930;
}

}
else
{
	if(input[i]==(24929+offset0))
{
	vR[i] = 24929;
}
else
{
	vR[i] = 24928;
}

}

}

}

}

}
else
{
	if(input[i]>(24911+offset0))
{
	if(input[i]>(24919+offset0))
{
	if(input[i]>(24923+offset0))
{
	if(input[i]>(24925+offset0))
{
	if(input[i]==(24927+offset0))
{
	vR[i] = 24927;
}
else
{
	vR[i] = 24926;
}

}
else
{
	if(input[i]==(24925+offset0))
{
	vR[i] = 24925;
}
else
{
	vR[i] = 24924;
}

}

}
else
{
	if(input[i]>(24921+offset0))
{
	if(input[i]==(24923+offset0))
{
	vR[i] = 24923;
}
else
{
	vR[i] = 24922;
}

}
else
{
	if(input[i]==(24921+offset0))
{
	vR[i] = 24921;
}
else
{
	vR[i] = 24920;
}

}

}

}
else
{
	if(input[i]>(24915+offset0))
{
	if(input[i]>(24917+offset0))
{
	if(input[i]==(24919+offset0))
{
	vR[i] = 24919;
}
else
{
	vR[i] = 24918;
}

}
else
{
	if(input[i]==(24917+offset0))
{
	vR[i] = 24917;
}
else
{
	vR[i] = 24916;
}

}

}
else
{
	if(input[i]>(24913+offset0))
{
	if(input[i]==(24915+offset0))
{
	vR[i] = 24915;
}
else
{
	vR[i] = 24914;
}

}
else
{
	if(input[i]==(24913+offset0))
{
	vR[i] = 24913;
}
else
{
	vR[i] = 24912;
}

}

}

}

}
else
{
	if(input[i]>(24903+offset0))
{
	if(input[i]>(24907+offset0))
{
	if(input[i]>(24909+offset0))
{
	if(input[i]==(24911+offset0))
{
	vR[i] = 24911;
}
else
{
	vR[i] = 24910;
}

}
else
{
	if(input[i]==(24909+offset0))
{
	vR[i] = 24909;
}
else
{
	vR[i] = 24908;
}

}

}
else
{
	if(input[i]>(24905+offset0))
{
	if(input[i]==(24907+offset0))
{
	vR[i] = 24907;
}
else
{
	vR[i] = 24906;
}

}
else
{
	if(input[i]==(24905+offset0))
{
	vR[i] = 24905;
}
else
{
	vR[i] = 24904;
}

}

}

}
else
{
	if(input[i]>(24899+offset0))
{
	if(input[i]>(24901+offset0))
{
	if(input[i]==(24903+offset0))
{
	vR[i] = 24903;
}
else
{
	vR[i] = 24902;
}

}
else
{
	if(input[i]==(24901+offset0))
{
	vR[i] = 24901;
}
else
{
	vR[i] = 24900;
}

}

}
else
{
	if(input[i]>(24897+offset0))
{
	if(input[i]==(24899+offset0))
{
	vR[i] = 24899;
}
else
{
	vR[i] = 24898;
}

}
else
{
	if(input[i]==(24897+offset0))
{
	vR[i] = 24897;
}
else
{
	vR[i] = 24896;
}

}

}

}

}

}

}
else
{
	if(input[i]>(24863+offset0))
{
	if(input[i]>(24879+offset0))
{
	if(input[i]>(24887+offset0))
{
	if(input[i]>(24891+offset0))
{
	if(input[i]>(24893+offset0))
{
	if(input[i]==(24895+offset0))
{
	vR[i] = 24895;
}
else
{
	vR[i] = 24894;
}

}
else
{
	if(input[i]==(24893+offset0))
{
	vR[i] = 24893;
}
else
{
	vR[i] = 24892;
}

}

}
else
{
	if(input[i]>(24889+offset0))
{
	if(input[i]==(24891+offset0))
{
	vR[i] = 24891;
}
else
{
	vR[i] = 24890;
}

}
else
{
	if(input[i]==(24889+offset0))
{
	vR[i] = 24889;
}
else
{
	vR[i] = 24888;
}

}

}

}
else
{
	if(input[i]>(24883+offset0))
{
	if(input[i]>(24885+offset0))
{
	if(input[i]==(24887+offset0))
{
	vR[i] = 24887;
}
else
{
	vR[i] = 24886;
}

}
else
{
	if(input[i]==(24885+offset0))
{
	vR[i] = 24885;
}
else
{
	vR[i] = 24884;
}

}

}
else
{
	if(input[i]>(24881+offset0))
{
	if(input[i]==(24883+offset0))
{
	vR[i] = 24883;
}
else
{
	vR[i] = 24882;
}

}
else
{
	if(input[i]==(24881+offset0))
{
	vR[i] = 24881;
}
else
{
	vR[i] = 24880;
}

}

}

}

}
else
{
	if(input[i]>(24871+offset0))
{
	if(input[i]>(24875+offset0))
{
	if(input[i]>(24877+offset0))
{
	if(input[i]==(24879+offset0))
{
	vR[i] = 24879;
}
else
{
	vR[i] = 24878;
}

}
else
{
	if(input[i]==(24877+offset0))
{
	vR[i] = 24877;
}
else
{
	vR[i] = 24876;
}

}

}
else
{
	if(input[i]>(24873+offset0))
{
	if(input[i]==(24875+offset0))
{
	vR[i] = 24875;
}
else
{
	vR[i] = 24874;
}

}
else
{
	if(input[i]==(24873+offset0))
{
	vR[i] = 24873;
}
else
{
	vR[i] = 24872;
}

}

}

}
else
{
	if(input[i]>(24867+offset0))
{
	if(input[i]>(24869+offset0))
{
	if(input[i]==(24871+offset0))
{
	vR[i] = 24871;
}
else
{
	vR[i] = 24870;
}

}
else
{
	if(input[i]==(24869+offset0))
{
	vR[i] = 24869;
}
else
{
	vR[i] = 24868;
}

}

}
else
{
	if(input[i]>(24865+offset0))
{
	if(input[i]==(24867+offset0))
{
	vR[i] = 24867;
}
else
{
	vR[i] = 24866;
}

}
else
{
	if(input[i]==(24865+offset0))
{
	vR[i] = 24865;
}
else
{
	vR[i] = 24864;
}

}

}

}

}

}
else
{
	if(input[i]>(24847+offset0))
{
	if(input[i]>(24855+offset0))
{
	if(input[i]>(24859+offset0))
{
	if(input[i]>(24861+offset0))
{
	if(input[i]==(24863+offset0))
{
	vR[i] = 24863;
}
else
{
	vR[i] = 24862;
}

}
else
{
	if(input[i]==(24861+offset0))
{
	vR[i] = 24861;
}
else
{
	vR[i] = 24860;
}

}

}
else
{
	if(input[i]>(24857+offset0))
{
	if(input[i]==(24859+offset0))
{
	vR[i] = 24859;
}
else
{
	vR[i] = 24858;
}

}
else
{
	if(input[i]==(24857+offset0))
{
	vR[i] = 24857;
}
else
{
	vR[i] = 24856;
}

}

}

}
else
{
	if(input[i]>(24851+offset0))
{
	if(input[i]>(24853+offset0))
{
	if(input[i]==(24855+offset0))
{
	vR[i] = 24855;
}
else
{
	vR[i] = 24854;
}

}
else
{
	if(input[i]==(24853+offset0))
{
	vR[i] = 24853;
}
else
{
	vR[i] = 24852;
}

}

}
else
{
	if(input[i]>(24849+offset0))
{
	if(input[i]==(24851+offset0))
{
	vR[i] = 24851;
}
else
{
	vR[i] = 24850;
}

}
else
{
	if(input[i]==(24849+offset0))
{
	vR[i] = 24849;
}
else
{
	vR[i] = 24848;
}

}

}

}

}
else
{
	if(input[i]>(24839+offset0))
{
	if(input[i]>(24843+offset0))
{
	if(input[i]>(24845+offset0))
{
	if(input[i]==(24847+offset0))
{
	vR[i] = 24847;
}
else
{
	vR[i] = 24846;
}

}
else
{
	if(input[i]==(24845+offset0))
{
	vR[i] = 24845;
}
else
{
	vR[i] = 24844;
}

}

}
else
{
	if(input[i]>(24841+offset0))
{
	if(input[i]==(24843+offset0))
{
	vR[i] = 24843;
}
else
{
	vR[i] = 24842;
}

}
else
{
	if(input[i]==(24841+offset0))
{
	vR[i] = 24841;
}
else
{
	vR[i] = 24840;
}

}

}

}
else
{
	if(input[i]>(24835+offset0))
{
	if(input[i]>(24837+offset0))
{
	if(input[i]==(24839+offset0))
{
	vR[i] = 24839;
}
else
{
	vR[i] = 24838;
}

}
else
{
	if(input[i]==(24837+offset0))
{
	vR[i] = 24837;
}
else
{
	vR[i] = 24836;
}

}

}
else
{
	if(input[i]>(24833+offset0))
{
	if(input[i]==(24835+offset0))
{
	vR[i] = 24835;
}
else
{
	vR[i] = 24834;
}

}
else
{
	if(input[i]==(24833+offset0))
{
	vR[i] = 24833;
}
else
{
	vR[i] = 24832;
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
	if(input[i]>(24703+offset0))
{
	if(input[i]>(24767+offset0))
{
	if(input[i]>(24799+offset0))
{
	if(input[i]>(24815+offset0))
{
	if(input[i]>(24823+offset0))
{
	if(input[i]>(24827+offset0))
{
	if(input[i]>(24829+offset0))
{
	if(input[i]==(24831+offset0))
{
	vR[i] = 24831;
}
else
{
	vR[i] = 24830;
}

}
else
{
	if(input[i]==(24829+offset0))
{
	vR[i] = 24829;
}
else
{
	vR[i] = 24828;
}

}

}
else
{
	if(input[i]>(24825+offset0))
{
	if(input[i]==(24827+offset0))
{
	vR[i] = 24827;
}
else
{
	vR[i] = 24826;
}

}
else
{
	if(input[i]==(24825+offset0))
{
	vR[i] = 24825;
}
else
{
	vR[i] = 24824;
}

}

}

}
else
{
	if(input[i]>(24819+offset0))
{
	if(input[i]>(24821+offset0))
{
	if(input[i]==(24823+offset0))
{
	vR[i] = 24823;
}
else
{
	vR[i] = 24822;
}

}
else
{
	if(input[i]==(24821+offset0))
{
	vR[i] = 24821;
}
else
{
	vR[i] = 24820;
}

}

}
else
{
	if(input[i]>(24817+offset0))
{
	if(input[i]==(24819+offset0))
{
	vR[i] = 24819;
}
else
{
	vR[i] = 24818;
}

}
else
{
	if(input[i]==(24817+offset0))
{
	vR[i] = 24817;
}
else
{
	vR[i] = 24816;
}

}

}

}

}
else
{
	if(input[i]>(24807+offset0))
{
	if(input[i]>(24811+offset0))
{
	if(input[i]>(24813+offset0))
{
	if(input[i]==(24815+offset0))
{
	vR[i] = 24815;
}
else
{
	vR[i] = 24814;
}

}
else
{
	if(input[i]==(24813+offset0))
{
	vR[i] = 24813;
}
else
{
	vR[i] = 24812;
}

}

}
else
{
	if(input[i]>(24809+offset0))
{
	if(input[i]==(24811+offset0))
{
	vR[i] = 24811;
}
else
{
	vR[i] = 24810;
}

}
else
{
	if(input[i]==(24809+offset0))
{
	vR[i] = 24809;
}
else
{
	vR[i] = 24808;
}

}

}

}
else
{
	if(input[i]>(24803+offset0))
{
	if(input[i]>(24805+offset0))
{
	if(input[i]==(24807+offset0))
{
	vR[i] = 24807;
}
else
{
	vR[i] = 24806;
}

}
else
{
	if(input[i]==(24805+offset0))
{
	vR[i] = 24805;
}
else
{
	vR[i] = 24804;
}

}

}
else
{
	if(input[i]>(24801+offset0))
{
	if(input[i]==(24803+offset0))
{
	vR[i] = 24803;
}
else
{
	vR[i] = 24802;
}

}
else
{
	if(input[i]==(24801+offset0))
{
	vR[i] = 24801;
}
else
{
	vR[i] = 24800;
}

}

}

}

}

}
else
{
	if(input[i]>(24783+offset0))
{
	if(input[i]>(24791+offset0))
{
	if(input[i]>(24795+offset0))
{
	if(input[i]>(24797+offset0))
{
	if(input[i]==(24799+offset0))
{
	vR[i] = 24799;
}
else
{
	vR[i] = 24798;
}

}
else
{
	if(input[i]==(24797+offset0))
{
	vR[i] = 24797;
}
else
{
	vR[i] = 24796;
}

}

}
else
{
	if(input[i]>(24793+offset0))
{
	if(input[i]==(24795+offset0))
{
	vR[i] = 24795;
}
else
{
	vR[i] = 24794;
}

}
else
{
	if(input[i]==(24793+offset0))
{
	vR[i] = 24793;
}
else
{
	vR[i] = 24792;
}

}

}

}
else
{
	if(input[i]>(24787+offset0))
{
	if(input[i]>(24789+offset0))
{
	if(input[i]==(24791+offset0))
{
	vR[i] = 24791;
}
else
{
	vR[i] = 24790;
}

}
else
{
	if(input[i]==(24789+offset0))
{
	vR[i] = 24789;
}
else
{
	vR[i] = 24788;
}

}

}
else
{
	if(input[i]>(24785+offset0))
{
	if(input[i]==(24787+offset0))
{
	vR[i] = 24787;
}
else
{
	vR[i] = 24786;
}

}
else
{
	if(input[i]==(24785+offset0))
{
	vR[i] = 24785;
}
else
{
	vR[i] = 24784;
}

}

}

}

}
else
{
	if(input[i]>(24775+offset0))
{
	if(input[i]>(24779+offset0))
{
	if(input[i]>(24781+offset0))
{
	if(input[i]==(24783+offset0))
{
	vR[i] = 24783;
}
else
{
	vR[i] = 24782;
}

}
else
{
	if(input[i]==(24781+offset0))
{
	vR[i] = 24781;
}
else
{
	vR[i] = 24780;
}

}

}
else
{
	if(input[i]>(24777+offset0))
{
	if(input[i]==(24779+offset0))
{
	vR[i] = 24779;
}
else
{
	vR[i] = 24778;
}

}
else
{
	if(input[i]==(24777+offset0))
{
	vR[i] = 24777;
}
else
{
	vR[i] = 24776;
}

}

}

}
else
{
	if(input[i]>(24771+offset0))
{
	if(input[i]>(24773+offset0))
{
	if(input[i]==(24775+offset0))
{
	vR[i] = 24775;
}
else
{
	vR[i] = 24774;
}

}
else
{
	if(input[i]==(24773+offset0))
{
	vR[i] = 24773;
}
else
{
	vR[i] = 24772;
}

}

}
else
{
	if(input[i]>(24769+offset0))
{
	if(input[i]==(24771+offset0))
{
	vR[i] = 24771;
}
else
{
	vR[i] = 24770;
}

}
else
{
	if(input[i]==(24769+offset0))
{
	vR[i] = 24769;
}
else
{
	vR[i] = 24768;
}

}

}

}

}

}

}
else
{
	if(input[i]>(24735+offset0))
{
	if(input[i]>(24751+offset0))
{
	if(input[i]>(24759+offset0))
{
	if(input[i]>(24763+offset0))
{
	if(input[i]>(24765+offset0))
{
	if(input[i]==(24767+offset0))
{
	vR[i] = 24767;
}
else
{
	vR[i] = 24766;
}

}
else
{
	if(input[i]==(24765+offset0))
{
	vR[i] = 24765;
}
else
{
	vR[i] = 24764;
}

}

}
else
{
	if(input[i]>(24761+offset0))
{
	if(input[i]==(24763+offset0))
{
	vR[i] = 24763;
}
else
{
	vR[i] = 24762;
}

}
else
{
	if(input[i]==(24761+offset0))
{
	vR[i] = 24761;
}
else
{
	vR[i] = 24760;
}

}

}

}
else
{
	if(input[i]>(24755+offset0))
{
	if(input[i]>(24757+offset0))
{
	if(input[i]==(24759+offset0))
{
	vR[i] = 24759;
}
else
{
	vR[i] = 24758;
}

}
else
{
	if(input[i]==(24757+offset0))
{
	vR[i] = 24757;
}
else
{
	vR[i] = 24756;
}

}

}
else
{
	if(input[i]>(24753+offset0))
{
	if(input[i]==(24755+offset0))
{
	vR[i] = 24755;
}
else
{
	vR[i] = 24754;
}

}
else
{
	if(input[i]==(24753+offset0))
{
	vR[i] = 24753;
}
else
{
	vR[i] = 24752;
}

}

}

}

}
else
{
	if(input[i]>(24743+offset0))
{
	if(input[i]>(24747+offset0))
{
	if(input[i]>(24749+offset0))
{
	if(input[i]==(24751+offset0))
{
	vR[i] = 24751;
}
else
{
	vR[i] = 24750;
}

}
else
{
	if(input[i]==(24749+offset0))
{
	vR[i] = 24749;
}
else
{
	vR[i] = 24748;
}

}

}
else
{
	if(input[i]>(24745+offset0))
{
	if(input[i]==(24747+offset0))
{
	vR[i] = 24747;
}
else
{
	vR[i] = 24746;
}

}
else
{
	if(input[i]==(24745+offset0))
{
	vR[i] = 24745;
}
else
{
	vR[i] = 24744;
}

}

}

}
else
{
	if(input[i]>(24739+offset0))
{
	if(input[i]>(24741+offset0))
{
	if(input[i]==(24743+offset0))
{
	vR[i] = 24743;
}
else
{
	vR[i] = 24742;
}

}
else
{
	if(input[i]==(24741+offset0))
{
	vR[i] = 24741;
}
else
{
	vR[i] = 24740;
}

}

}
else
{
	if(input[i]>(24737+offset0))
{
	if(input[i]==(24739+offset0))
{
	vR[i] = 24739;
}
else
{
	vR[i] = 24738;
}

}
else
{
	if(input[i]==(24737+offset0))
{
	vR[i] = 24737;
}
else
{
	vR[i] = 24736;
}

}

}

}

}

}
else
{
	if(input[i]>(24719+offset0))
{
	if(input[i]>(24727+offset0))
{
	if(input[i]>(24731+offset0))
{
	if(input[i]>(24733+offset0))
{
	if(input[i]==(24735+offset0))
{
	vR[i] = 24735;
}
else
{
	vR[i] = 24734;
}

}
else
{
	if(input[i]==(24733+offset0))
{
	vR[i] = 24733;
}
else
{
	vR[i] = 24732;
}

}

}
else
{
	if(input[i]>(24729+offset0))
{
	if(input[i]==(24731+offset0))
{
	vR[i] = 24731;
}
else
{
	vR[i] = 24730;
}

}
else
{
	if(input[i]==(24729+offset0))
{
	vR[i] = 24729;
}
else
{
	vR[i] = 24728;
}

}

}

}
else
{
	if(input[i]>(24723+offset0))
{
	if(input[i]>(24725+offset0))
{
	if(input[i]==(24727+offset0))
{
	vR[i] = 24727;
}
else
{
	vR[i] = 24726;
}

}
else
{
	if(input[i]==(24725+offset0))
{
	vR[i] = 24725;
}
else
{
	vR[i] = 24724;
}

}

}
else
{
	if(input[i]>(24721+offset0))
{
	if(input[i]==(24723+offset0))
{
	vR[i] = 24723;
}
else
{
	vR[i] = 24722;
}

}
else
{
	if(input[i]==(24721+offset0))
{
	vR[i] = 24721;
}
else
{
	vR[i] = 24720;
}

}

}

}

}
else
{
	if(input[i]>(24711+offset0))
{
	if(input[i]>(24715+offset0))
{
	if(input[i]>(24717+offset0))
{
	if(input[i]==(24719+offset0))
{
	vR[i] = 24719;
}
else
{
	vR[i] = 24718;
}

}
else
{
	if(input[i]==(24717+offset0))
{
	vR[i] = 24717;
}
else
{
	vR[i] = 24716;
}

}

}
else
{
	if(input[i]>(24713+offset0))
{
	if(input[i]==(24715+offset0))
{
	vR[i] = 24715;
}
else
{
	vR[i] = 24714;
}

}
else
{
	if(input[i]==(24713+offset0))
{
	vR[i] = 24713;
}
else
{
	vR[i] = 24712;
}

}

}

}
else
{
	if(input[i]>(24707+offset0))
{
	if(input[i]>(24709+offset0))
{
	if(input[i]==(24711+offset0))
{
	vR[i] = 24711;
}
else
{
	vR[i] = 24710;
}

}
else
{
	if(input[i]==(24709+offset0))
{
	vR[i] = 24709;
}
else
{
	vR[i] = 24708;
}

}

}
else
{
	if(input[i]>(24705+offset0))
{
	if(input[i]==(24707+offset0))
{
	vR[i] = 24707;
}
else
{
	vR[i] = 24706;
}

}
else
{
	if(input[i]==(24705+offset0))
{
	vR[i] = 24705;
}
else
{
	vR[i] = 24704;
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
	if(input[i]>(24639+offset0))
{
	if(input[i]>(24671+offset0))
{
	if(input[i]>(24687+offset0))
{
	if(input[i]>(24695+offset0))
{
	if(input[i]>(24699+offset0))
{
	if(input[i]>(24701+offset0))
{
	if(input[i]==(24703+offset0))
{
	vR[i] = 24703;
}
else
{
	vR[i] = 24702;
}

}
else
{
	if(input[i]==(24701+offset0))
{
	vR[i] = 24701;
}
else
{
	vR[i] = 24700;
}

}

}
else
{
	if(input[i]>(24697+offset0))
{
	if(input[i]==(24699+offset0))
{
	vR[i] = 24699;
}
else
{
	vR[i] = 24698;
}

}
else
{
	if(input[i]==(24697+offset0))
{
	vR[i] = 24697;
}
else
{
	vR[i] = 24696;
}

}

}

}
else
{
	if(input[i]>(24691+offset0))
{
	if(input[i]>(24693+offset0))
{
	if(input[i]==(24695+offset0))
{
	vR[i] = 24695;
}
else
{
	vR[i] = 24694;
}

}
else
{
	if(input[i]==(24693+offset0))
{
	vR[i] = 24693;
}
else
{
	vR[i] = 24692;
}

}

}
else
{
	if(input[i]>(24689+offset0))
{
	if(input[i]==(24691+offset0))
{
	vR[i] = 24691;
}
else
{
	vR[i] = 24690;
}

}
else
{
	if(input[i]==(24689+offset0))
{
	vR[i] = 24689;
}
else
{
	vR[i] = 24688;
}

}

}

}

}
else
{
	if(input[i]>(24679+offset0))
{
	if(input[i]>(24683+offset0))
{
	if(input[i]>(24685+offset0))
{
	if(input[i]==(24687+offset0))
{
	vR[i] = 24687;
}
else
{
	vR[i] = 24686;
}

}
else
{
	if(input[i]==(24685+offset0))
{
	vR[i] = 24685;
}
else
{
	vR[i] = 24684;
}

}

}
else
{
	if(input[i]>(24681+offset0))
{
	if(input[i]==(24683+offset0))
{
	vR[i] = 24683;
}
else
{
	vR[i] = 24682;
}

}
else
{
	if(input[i]==(24681+offset0))
{
	vR[i] = 24681;
}
else
{
	vR[i] = 24680;
}

}

}

}
else
{
	if(input[i]>(24675+offset0))
{
	if(input[i]>(24677+offset0))
{
	if(input[i]==(24679+offset0))
{
	vR[i] = 24679;
}
else
{
	vR[i] = 24678;
}

}
else
{
	if(input[i]==(24677+offset0))
{
	vR[i] = 24677;
}
else
{
	vR[i] = 24676;
}

}

}
else
{
	if(input[i]>(24673+offset0))
{
	if(input[i]==(24675+offset0))
{
	vR[i] = 24675;
}
else
{
	vR[i] = 24674;
}

}
else
{
	if(input[i]==(24673+offset0))
{
	vR[i] = 24673;
}
else
{
	vR[i] = 24672;
}

}

}

}

}

}
else
{
	if(input[i]>(24655+offset0))
{
	if(input[i]>(24663+offset0))
{
	if(input[i]>(24667+offset0))
{
	if(input[i]>(24669+offset0))
{
	if(input[i]==(24671+offset0))
{
	vR[i] = 24671;
}
else
{
	vR[i] = 24670;
}

}
else
{
	if(input[i]==(24669+offset0))
{
	vR[i] = 24669;
}
else
{
	vR[i] = 24668;
}

}

}
else
{
	if(input[i]>(24665+offset0))
{
	if(input[i]==(24667+offset0))
{
	vR[i] = 24667;
}
else
{
	vR[i] = 24666;
}

}
else
{
	if(input[i]==(24665+offset0))
{
	vR[i] = 24665;
}
else
{
	vR[i] = 24664;
}

}

}

}
else
{
	if(input[i]>(24659+offset0))
{
	if(input[i]>(24661+offset0))
{
	if(input[i]==(24663+offset0))
{
	vR[i] = 24663;
}
else
{
	vR[i] = 24662;
}

}
else
{
	if(input[i]==(24661+offset0))
{
	vR[i] = 24661;
}
else
{
	vR[i] = 24660;
}

}

}
else
{
	if(input[i]>(24657+offset0))
{
	if(input[i]==(24659+offset0))
{
	vR[i] = 24659;
}
else
{
	vR[i] = 24658;
}

}
else
{
	if(input[i]==(24657+offset0))
{
	vR[i] = 24657;
}
else
{
	vR[i] = 24656;
}

}

}

}

}
else
{
	if(input[i]>(24647+offset0))
{
	if(input[i]>(24651+offset0))
{
	if(input[i]>(24653+offset0))
{
	if(input[i]==(24655+offset0))
{
	vR[i] = 24655;
}
else
{
	vR[i] = 24654;
}

}
else
{
	if(input[i]==(24653+offset0))
{
	vR[i] = 24653;
}
else
{
	vR[i] = 24652;
}

}

}
else
{
	if(input[i]>(24649+offset0))
{
	if(input[i]==(24651+offset0))
{
	vR[i] = 24651;
}
else
{
	vR[i] = 24650;
}

}
else
{
	if(input[i]==(24649+offset0))
{
	vR[i] = 24649;
}
else
{
	vR[i] = 24648;
}

}

}

}
else
{
	if(input[i]>(24643+offset0))
{
	if(input[i]>(24645+offset0))
{
	if(input[i]==(24647+offset0))
{
	vR[i] = 24647;
}
else
{
	vR[i] = 24646;
}

}
else
{
	if(input[i]==(24645+offset0))
{
	vR[i] = 24645;
}
else
{
	vR[i] = 24644;
}

}

}
else
{
	if(input[i]>(24641+offset0))
{
	if(input[i]==(24643+offset0))
{
	vR[i] = 24643;
}
else
{
	vR[i] = 24642;
}

}
else
{
	if(input[i]==(24641+offset0))
{
	vR[i] = 24641;
}
else
{
	vR[i] = 24640;
}

}

}

}

}

}

}
else
{
	if(input[i]>(24607+offset0))
{
	if(input[i]>(24623+offset0))
{
	if(input[i]>(24631+offset0))
{
	if(input[i]>(24635+offset0))
{
	if(input[i]>(24637+offset0))
{
	if(input[i]==(24639+offset0))
{
	vR[i] = 24639;
}
else
{
	vR[i] = 24638;
}

}
else
{
	if(input[i]==(24637+offset0))
{
	vR[i] = 24637;
}
else
{
	vR[i] = 24636;
}

}

}
else
{
	if(input[i]>(24633+offset0))
{
	if(input[i]==(24635+offset0))
{
	vR[i] = 24635;
}
else
{
	vR[i] = 24634;
}

}
else
{
	if(input[i]==(24633+offset0))
{
	vR[i] = 24633;
}
else
{
	vR[i] = 24632;
}

}

}

}
else
{
	if(input[i]>(24627+offset0))
{
	if(input[i]>(24629+offset0))
{
	if(input[i]==(24631+offset0))
{
	vR[i] = 24631;
}
else
{
	vR[i] = 24630;
}

}
else
{
	if(input[i]==(24629+offset0))
{
	vR[i] = 24629;
}
else
{
	vR[i] = 24628;
}

}

}
else
{
	if(input[i]>(24625+offset0))
{
	if(input[i]==(24627+offset0))
{
	vR[i] = 24627;
}
else
{
	vR[i] = 24626;
}

}
else
{
	if(input[i]==(24625+offset0))
{
	vR[i] = 24625;
}
else
{
	vR[i] = 24624;
}

}

}

}

}
else
{
	if(input[i]>(24615+offset0))
{
	if(input[i]>(24619+offset0))
{
	if(input[i]>(24621+offset0))
{
	if(input[i]==(24623+offset0))
{
	vR[i] = 24623;
}
else
{
	vR[i] = 24622;
}

}
else
{
	if(input[i]==(24621+offset0))
{
	vR[i] = 24621;
}
else
{
	vR[i] = 24620;
}

}

}
else
{
	if(input[i]>(24617+offset0))
{
	if(input[i]==(24619+offset0))
{
	vR[i] = 24619;
}
else
{
	vR[i] = 24618;
}

}
else
{
	if(input[i]==(24617+offset0))
{
	vR[i] = 24617;
}
else
{
	vR[i] = 24616;
}

}

}

}
else
{
	if(input[i]>(24611+offset0))
{
	if(input[i]>(24613+offset0))
{
	if(input[i]==(24615+offset0))
{
	vR[i] = 24615;
}
else
{
	vR[i] = 24614;
}

}
else
{
	if(input[i]==(24613+offset0))
{
	vR[i] = 24613;
}
else
{
	vR[i] = 24612;
}

}

}
else
{
	if(input[i]>(24609+offset0))
{
	if(input[i]==(24611+offset0))
{
	vR[i] = 24611;
}
else
{
	vR[i] = 24610;
}

}
else
{
	if(input[i]==(24609+offset0))
{
	vR[i] = 24609;
}
else
{
	vR[i] = 24608;
}

}

}

}

}

}
else
{
	if(input[i]>(24591+offset0))
{
	if(input[i]>(24599+offset0))
{
	if(input[i]>(24603+offset0))
{
	if(input[i]>(24605+offset0))
{
	if(input[i]==(24607+offset0))
{
	vR[i] = 24607;
}
else
{
	vR[i] = 24606;
}

}
else
{
	if(input[i]==(24605+offset0))
{
	vR[i] = 24605;
}
else
{
	vR[i] = 24604;
}

}

}
else
{
	if(input[i]>(24601+offset0))
{
	if(input[i]==(24603+offset0))
{
	vR[i] = 24603;
}
else
{
	vR[i] = 24602;
}

}
else
{
	if(input[i]==(24601+offset0))
{
	vR[i] = 24601;
}
else
{
	vR[i] = 24600;
}

}

}

}
else
{
	if(input[i]>(24595+offset0))
{
	if(input[i]>(24597+offset0))
{
	if(input[i]==(24599+offset0))
{
	vR[i] = 24599;
}
else
{
	vR[i] = 24598;
}

}
else
{
	if(input[i]==(24597+offset0))
{
	vR[i] = 24597;
}
else
{
	vR[i] = 24596;
}

}

}
else
{
	if(input[i]>(24593+offset0))
{
	if(input[i]==(24595+offset0))
{
	vR[i] = 24595;
}
else
{
	vR[i] = 24594;
}

}
else
{
	if(input[i]==(24593+offset0))
{
	vR[i] = 24593;
}
else
{
	vR[i] = 24592;
}

}

}

}

}
else
{
	if(input[i]>(24583+offset0))
{
	if(input[i]>(24587+offset0))
{
	if(input[i]>(24589+offset0))
{
	if(input[i]==(24591+offset0))
{
	vR[i] = 24591;
}
else
{
	vR[i] = 24590;
}

}
else
{
	if(input[i]==(24589+offset0))
{
	vR[i] = 24589;
}
else
{
	vR[i] = 24588;
}

}

}
else
{
	if(input[i]>(24585+offset0))
{
	if(input[i]==(24587+offset0))
{
	vR[i] = 24587;
}
else
{
	vR[i] = 24586;
}

}
else
{
	if(input[i]==(24585+offset0))
{
	vR[i] = 24585;
}
else
{
	vR[i] = 24584;
}

}

}

}
else
{
	if(input[i]>(24579+offset0))
{
	if(input[i]>(24581+offset0))
{
	if(input[i]==(24583+offset0))
{
	vR[i] = 24583;
}
else
{
	vR[i] = 24582;
}

}
else
{
	if(input[i]==(24581+offset0))
{
	vR[i] = 24581;
}
else
{
	vR[i] = 24580;
}

}

}
else
{
	if(input[i]>(24577+offset0))
{
	if(input[i]==(24579+offset0))
{
	vR[i] = 24579;
}
else
{
	vR[i] = 24578;
}

}
else
{
	if(input[i]==(24577+offset0))
{
	vR[i] = 24577;
}
else
{
	vR[i] = 24576;
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
	if(input[i]>(20479+offset0))
{
	if(input[i]>(22527+offset0))
{
	if(input[i]>(23551+offset0))
{
	if(input[i]>(24063+offset0))
{
	if(input[i]>(24319+offset0))
{
	if(input[i]>(24447+offset0))
{
	if(input[i]>(24511+offset0))
{
	if(input[i]>(24543+offset0))
{
	if(input[i]>(24559+offset0))
{
	if(input[i]>(24567+offset0))
{
	if(input[i]>(24571+offset0))
{
	if(input[i]>(24573+offset0))
{
	if(input[i]==(24575+offset0))
{
	vR[i] = 24575;
}
else
{
	vR[i] = 24574;
}

}
else
{
	if(input[i]==(24573+offset0))
{
	vR[i] = 24573;
}
else
{
	vR[i] = 24572;
}

}

}
else
{
	if(input[i]>(24569+offset0))
{
	if(input[i]==(24571+offset0))
{
	vR[i] = 24571;
}
else
{
	vR[i] = 24570;
}

}
else
{
	if(input[i]==(24569+offset0))
{
	vR[i] = 24569;
}
else
{
	vR[i] = 24568;
}

}

}

}
else
{
	if(input[i]>(24563+offset0))
{
	if(input[i]>(24565+offset0))
{
	if(input[i]==(24567+offset0))
{
	vR[i] = 24567;
}
else
{
	vR[i] = 24566;
}

}
else
{
	if(input[i]==(24565+offset0))
{
	vR[i] = 24565;
}
else
{
	vR[i] = 24564;
}

}

}
else
{
	if(input[i]>(24561+offset0))
{
	if(input[i]==(24563+offset0))
{
	vR[i] = 24563;
}
else
{
	vR[i] = 24562;
}

}
else
{
	if(input[i]==(24561+offset0))
{
	vR[i] = 24561;
}
else
{
	vR[i] = 24560;
}

}

}

}

}
else
{
	if(input[i]>(24551+offset0))
{
	if(input[i]>(24555+offset0))
{
	if(input[i]>(24557+offset0))
{
	if(input[i]==(24559+offset0))
{
	vR[i] = 24559;
}
else
{
	vR[i] = 24558;
}

}
else
{
	if(input[i]==(24557+offset0))
{
	vR[i] = 24557;
}
else
{
	vR[i] = 24556;
}

}

}
else
{
	if(input[i]>(24553+offset0))
{
	if(input[i]==(24555+offset0))
{
	vR[i] = 24555;
}
else
{
	vR[i] = 24554;
}

}
else
{
	if(input[i]==(24553+offset0))
{
	vR[i] = 24553;
}
else
{
	vR[i] = 24552;
}

}

}

}
else
{
	if(input[i]>(24547+offset0))
{
	if(input[i]>(24549+offset0))
{
	if(input[i]==(24551+offset0))
{
	vR[i] = 24551;
}
else
{
	vR[i] = 24550;
}

}
else
{
	if(input[i]==(24549+offset0))
{
	vR[i] = 24549;
}
else
{
	vR[i] = 24548;
}

}

}
else
{
	if(input[i]>(24545+offset0))
{
	if(input[i]==(24547+offset0))
{
	vR[i] = 24547;
}
else
{
	vR[i] = 24546;
}

}
else
{
	if(input[i]==(24545+offset0))
{
	vR[i] = 24545;
}
else
{
	vR[i] = 24544;
}

}

}

}

}

}
else
{
	if(input[i]>(24527+offset0))
{
	if(input[i]>(24535+offset0))
{
	if(input[i]>(24539+offset0))
{
	if(input[i]>(24541+offset0))
{
	if(input[i]==(24543+offset0))
{
	vR[i] = 24543;
}
else
{
	vR[i] = 24542;
}

}
else
{
	if(input[i]==(24541+offset0))
{
	vR[i] = 24541;
}
else
{
	vR[i] = 24540;
}

}

}
else
{
	if(input[i]>(24537+offset0))
{
	if(input[i]==(24539+offset0))
{
	vR[i] = 24539;
}
else
{
	vR[i] = 24538;
}

}
else
{
	if(input[i]==(24537+offset0))
{
	vR[i] = 24537;
}
else
{
	vR[i] = 24536;
}

}

}

}
else
{
	if(input[i]>(24531+offset0))
{
	if(input[i]>(24533+offset0))
{
	if(input[i]==(24535+offset0))
{
	vR[i] = 24535;
}
else
{
	vR[i] = 24534;
}

}
else
{
	if(input[i]==(24533+offset0))
{
	vR[i] = 24533;
}
else
{
	vR[i] = 24532;
}

}

}
else
{
	if(input[i]>(24529+offset0))
{
	if(input[i]==(24531+offset0))
{
	vR[i] = 24531;
}
else
{
	vR[i] = 24530;
}

}
else
{
	if(input[i]==(24529+offset0))
{
	vR[i] = 24529;
}
else
{
	vR[i] = 24528;
}

}

}

}

}
else
{
	if(input[i]>(24519+offset0))
{
	if(input[i]>(24523+offset0))
{
	if(input[i]>(24525+offset0))
{
	if(input[i]==(24527+offset0))
{
	vR[i] = 24527;
}
else
{
	vR[i] = 24526;
}

}
else
{
	if(input[i]==(24525+offset0))
{
	vR[i] = 24525;
}
else
{
	vR[i] = 24524;
}

}

}
else
{
	if(input[i]>(24521+offset0))
{
	if(input[i]==(24523+offset0))
{
	vR[i] = 24523;
}
else
{
	vR[i] = 24522;
}

}
else
{
	if(input[i]==(24521+offset0))
{
	vR[i] = 24521;
}
else
{
	vR[i] = 24520;
}

}

}

}
else
{
	if(input[i]>(24515+offset0))
{
	if(input[i]>(24517+offset0))
{
	if(input[i]==(24519+offset0))
{
	vR[i] = 24519;
}
else
{
	vR[i] = 24518;
}

}
else
{
	if(input[i]==(24517+offset0))
{
	vR[i] = 24517;
}
else
{
	vR[i] = 24516;
}

}

}
else
{
	if(input[i]>(24513+offset0))
{
	if(input[i]==(24515+offset0))
{
	vR[i] = 24515;
}
else
{
	vR[i] = 24514;
}

}
else
{
	if(input[i]==(24513+offset0))
{
	vR[i] = 24513;
}
else
{
	vR[i] = 24512;
}

}

}

}

}

}

}
else
{
	if(input[i]>(24479+offset0))
{
	if(input[i]>(24495+offset0))
{
	if(input[i]>(24503+offset0))
{
	if(input[i]>(24507+offset0))
{
	if(input[i]>(24509+offset0))
{
	if(input[i]==(24511+offset0))
{
	vR[i] = 24511;
}
else
{
	vR[i] = 24510;
}

}
else
{
	if(input[i]==(24509+offset0))
{
	vR[i] = 24509;
}
else
{
	vR[i] = 24508;
}

}

}
else
{
	if(input[i]>(24505+offset0))
{
	if(input[i]==(24507+offset0))
{
	vR[i] = 24507;
}
else
{
	vR[i] = 24506;
}

}
else
{
	if(input[i]==(24505+offset0))
{
	vR[i] = 24505;
}
else
{
	vR[i] = 24504;
}

}

}

}
else
{
	if(input[i]>(24499+offset0))
{
	if(input[i]>(24501+offset0))
{
	if(input[i]==(24503+offset0))
{
	vR[i] = 24503;
}
else
{
	vR[i] = 24502;
}

}
else
{
	if(input[i]==(24501+offset0))
{
	vR[i] = 24501;
}
else
{
	vR[i] = 24500;
}

}

}
else
{
	if(input[i]>(24497+offset0))
{
	if(input[i]==(24499+offset0))
{
	vR[i] = 24499;
}
else
{
	vR[i] = 24498;
}

}
else
{
	if(input[i]==(24497+offset0))
{
	vR[i] = 24497;
}
else
{
	vR[i] = 24496;
}

}

}

}

}
else
{
	if(input[i]>(24487+offset0))
{
	if(input[i]>(24491+offset0))
{
	if(input[i]>(24493+offset0))
{
	if(input[i]==(24495+offset0))
{
	vR[i] = 24495;
}
else
{
	vR[i] = 24494;
}

}
else
{
	if(input[i]==(24493+offset0))
{
	vR[i] = 24493;
}
else
{
	vR[i] = 24492;
}

}

}
else
{
	if(input[i]>(24489+offset0))
{
	if(input[i]==(24491+offset0))
{
	vR[i] = 24491;
}
else
{
	vR[i] = 24490;
}

}
else
{
	if(input[i]==(24489+offset0))
{
	vR[i] = 24489;
}
else
{
	vR[i] = 24488;
}

}

}

}
else
{
	if(input[i]>(24483+offset0))
{
	if(input[i]>(24485+offset0))
{
	if(input[i]==(24487+offset0))
{
	vR[i] = 24487;
}
else
{
	vR[i] = 24486;
}

}
else
{
	if(input[i]==(24485+offset0))
{
	vR[i] = 24485;
}
else
{
	vR[i] = 24484;
}

}

}
else
{
	if(input[i]>(24481+offset0))
{
	if(input[i]==(24483+offset0))
{
	vR[i] = 24483;
}
else
{
	vR[i] = 24482;
}

}
else
{
	if(input[i]==(24481+offset0))
{
	vR[i] = 24481;
}
else
{
	vR[i] = 24480;
}

}

}

}

}

}
else
{
	if(input[i]>(24463+offset0))
{
	if(input[i]>(24471+offset0))
{
	if(input[i]>(24475+offset0))
{
	if(input[i]>(24477+offset0))
{
	if(input[i]==(24479+offset0))
{
	vR[i] = 24479;
}
else
{
	vR[i] = 24478;
}

}
else
{
	if(input[i]==(24477+offset0))
{
	vR[i] = 24477;
}
else
{
	vR[i] = 24476;
}

}

}
else
{
	if(input[i]>(24473+offset0))
{
	if(input[i]==(24475+offset0))
{
	vR[i] = 24475;
}
else
{
	vR[i] = 24474;
}

}
else
{
	if(input[i]==(24473+offset0))
{
	vR[i] = 24473;
}
else
{
	vR[i] = 24472;
}

}

}

}
else
{
	if(input[i]>(24467+offset0))
{
	if(input[i]>(24469+offset0))
{
	if(input[i]==(24471+offset0))
{
	vR[i] = 24471;
}
else
{
	vR[i] = 24470;
}

}
else
{
	if(input[i]==(24469+offset0))
{
	vR[i] = 24469;
}
else
{
	vR[i] = 24468;
}

}

}
else
{
	if(input[i]>(24465+offset0))
{
	if(input[i]==(24467+offset0))
{
	vR[i] = 24467;
}
else
{
	vR[i] = 24466;
}

}
else
{
	if(input[i]==(24465+offset0))
{
	vR[i] = 24465;
}
else
{
	vR[i] = 24464;
}

}

}

}

}
else
{
	if(input[i]>(24455+offset0))
{
	if(input[i]>(24459+offset0))
{
	if(input[i]>(24461+offset0))
{
	if(input[i]==(24463+offset0))
{
	vR[i] = 24463;
}
else
{
	vR[i] = 24462;
}

}
else
{
	if(input[i]==(24461+offset0))
{
	vR[i] = 24461;
}
else
{
	vR[i] = 24460;
}

}

}
else
{
	if(input[i]>(24457+offset0))
{
	if(input[i]==(24459+offset0))
{
	vR[i] = 24459;
}
else
{
	vR[i] = 24458;
}

}
else
{
	if(input[i]==(24457+offset0))
{
	vR[i] = 24457;
}
else
{
	vR[i] = 24456;
}

}

}

}
else
{
	if(input[i]>(24451+offset0))
{
	if(input[i]>(24453+offset0))
{
	if(input[i]==(24455+offset0))
{
	vR[i] = 24455;
}
else
{
	vR[i] = 24454;
}

}
else
{
	if(input[i]==(24453+offset0))
{
	vR[i] = 24453;
}
else
{
	vR[i] = 24452;
}

}

}
else
{
	if(input[i]>(24449+offset0))
{
	if(input[i]==(24451+offset0))
{
	vR[i] = 24451;
}
else
{
	vR[i] = 24450;
}

}
else
{
	if(input[i]==(24449+offset0))
{
	vR[i] = 24449;
}
else
{
	vR[i] = 24448;
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
	if(input[i]>(24383+offset0))
{
	if(input[i]>(24415+offset0))
{
	if(input[i]>(24431+offset0))
{
	if(input[i]>(24439+offset0))
{
	if(input[i]>(24443+offset0))
{
	if(input[i]>(24445+offset0))
{
	if(input[i]==(24447+offset0))
{
	vR[i] = 24447;
}
else
{
	vR[i] = 24446;
}

}
else
{
	if(input[i]==(24445+offset0))
{
	vR[i] = 24445;
}
else
{
	vR[i] = 24444;
}

}

}
else
{
	if(input[i]>(24441+offset0))
{
	if(input[i]==(24443+offset0))
{
	vR[i] = 24443;
}
else
{
	vR[i] = 24442;
}

}
else
{
	if(input[i]==(24441+offset0))
{
	vR[i] = 24441;
}
else
{
	vR[i] = 24440;
}

}

}

}
else
{
	if(input[i]>(24435+offset0))
{
	if(input[i]>(24437+offset0))
{
	if(input[i]==(24439+offset0))
{
	vR[i] = 24439;
}
else
{
	vR[i] = 24438;
}

}
else
{
	if(input[i]==(24437+offset0))
{
	vR[i] = 24437;
}
else
{
	vR[i] = 24436;
}

}

}
else
{
	if(input[i]>(24433+offset0))
{
	if(input[i]==(24435+offset0))
{
	vR[i] = 24435;
}
else
{
	vR[i] = 24434;
}

}
else
{
	if(input[i]==(24433+offset0))
{
	vR[i] = 24433;
}
else
{
	vR[i] = 24432;
}

}

}

}

}
else
{
	if(input[i]>(24423+offset0))
{
	if(input[i]>(24427+offset0))
{
	if(input[i]>(24429+offset0))
{
	if(input[i]==(24431+offset0))
{
	vR[i] = 24431;
}
else
{
	vR[i] = 24430;
}

}
else
{
	if(input[i]==(24429+offset0))
{
	vR[i] = 24429;
}
else
{
	vR[i] = 24428;
}

}

}
else
{
	if(input[i]>(24425+offset0))
{
	if(input[i]==(24427+offset0))
{
	vR[i] = 24427;
}
else
{
	vR[i] = 24426;
}

}
else
{
	if(input[i]==(24425+offset0))
{
	vR[i] = 24425;
}
else
{
	vR[i] = 24424;
}

}

}

}
else
{
	if(input[i]>(24419+offset0))
{
	if(input[i]>(24421+offset0))
{
	if(input[i]==(24423+offset0))
{
	vR[i] = 24423;
}
else
{
	vR[i] = 24422;
}

}
else
{
	if(input[i]==(24421+offset0))
{
	vR[i] = 24421;
}
else
{
	vR[i] = 24420;
}

}

}
else
{
	if(input[i]>(24417+offset0))
{
	if(input[i]==(24419+offset0))
{
	vR[i] = 24419;
}
else
{
	vR[i] = 24418;
}

}
else
{
	if(input[i]==(24417+offset0))
{
	vR[i] = 24417;
}
else
{
	vR[i] = 24416;
}

}

}

}

}

}
else
{
	if(input[i]>(24399+offset0))
{
	if(input[i]>(24407+offset0))
{
	if(input[i]>(24411+offset0))
{
	if(input[i]>(24413+offset0))
{
	if(input[i]==(24415+offset0))
{
	vR[i] = 24415;
}
else
{
	vR[i] = 24414;
}

}
else
{
	if(input[i]==(24413+offset0))
{
	vR[i] = 24413;
}
else
{
	vR[i] = 24412;
}

}

}
else
{
	if(input[i]>(24409+offset0))
{
	if(input[i]==(24411+offset0))
{
	vR[i] = 24411;
}
else
{
	vR[i] = 24410;
}

}
else
{
	if(input[i]==(24409+offset0))
{
	vR[i] = 24409;
}
else
{
	vR[i] = 24408;
}

}

}

}
else
{
	if(input[i]>(24403+offset0))
{
	if(input[i]>(24405+offset0))
{
	if(input[i]==(24407+offset0))
{
	vR[i] = 24407;
}
else
{
	vR[i] = 24406;
}

}
else
{
	if(input[i]==(24405+offset0))
{
	vR[i] = 24405;
}
else
{
	vR[i] = 24404;
}

}

}
else
{
	if(input[i]>(24401+offset0))
{
	if(input[i]==(24403+offset0))
{
	vR[i] = 24403;
}
else
{
	vR[i] = 24402;
}

}
else
{
	if(input[i]==(24401+offset0))
{
	vR[i] = 24401;
}
else
{
	vR[i] = 24400;
}

}

}

}

}
else
{
	if(input[i]>(24391+offset0))
{
	if(input[i]>(24395+offset0))
{
	if(input[i]>(24397+offset0))
{
	if(input[i]==(24399+offset0))
{
	vR[i] = 24399;
}
else
{
	vR[i] = 24398;
}

}
else
{
	if(input[i]==(24397+offset0))
{
	vR[i] = 24397;
}
else
{
	vR[i] = 24396;
}

}

}
else
{
	if(input[i]>(24393+offset0))
{
	if(input[i]==(24395+offset0))
{
	vR[i] = 24395;
}
else
{
	vR[i] = 24394;
}

}
else
{
	if(input[i]==(24393+offset0))
{
	vR[i] = 24393;
}
else
{
	vR[i] = 24392;
}

}

}

}
else
{
	if(input[i]>(24387+offset0))
{
	if(input[i]>(24389+offset0))
{
	if(input[i]==(24391+offset0))
{
	vR[i] = 24391;
}
else
{
	vR[i] = 24390;
}

}
else
{
	if(input[i]==(24389+offset0))
{
	vR[i] = 24389;
}
else
{
	vR[i] = 24388;
}

}

}
else
{
	if(input[i]>(24385+offset0))
{
	if(input[i]==(24387+offset0))
{
	vR[i] = 24387;
}
else
{
	vR[i] = 24386;
}

}
else
{
	if(input[i]==(24385+offset0))
{
	vR[i] = 24385;
}
else
{
	vR[i] = 24384;
}

}

}

}

}

}

}
else
{
	if(input[i]>(24351+offset0))
{
	if(input[i]>(24367+offset0))
{
	if(input[i]>(24375+offset0))
{
	if(input[i]>(24379+offset0))
{
	if(input[i]>(24381+offset0))
{
	if(input[i]==(24383+offset0))
{
	vR[i] = 24383;
}
else
{
	vR[i] = 24382;
}

}
else
{
	if(input[i]==(24381+offset0))
{
	vR[i] = 24381;
}
else
{
	vR[i] = 24380;
}

}

}
else
{
	if(input[i]>(24377+offset0))
{
	if(input[i]==(24379+offset0))
{
	vR[i] = 24379;
}
else
{
	vR[i] = 24378;
}

}
else
{
	if(input[i]==(24377+offset0))
{
	vR[i] = 24377;
}
else
{
	vR[i] = 24376;
}

}

}

}
else
{
	if(input[i]>(24371+offset0))
{
	if(input[i]>(24373+offset0))
{
	if(input[i]==(24375+offset0))
{
	vR[i] = 24375;
}
else
{
	vR[i] = 24374;
}

}
else
{
	if(input[i]==(24373+offset0))
{
	vR[i] = 24373;
}
else
{
	vR[i] = 24372;
}

}

}
else
{
	if(input[i]>(24369+offset0))
{
	if(input[i]==(24371+offset0))
{
	vR[i] = 24371;
}
else
{
	vR[i] = 24370;
}

}
else
{
	if(input[i]==(24369+offset0))
{
	vR[i] = 24369;
}
else
{
	vR[i] = 24368;
}

}

}

}

}
else
{
	if(input[i]>(24359+offset0))
{
	if(input[i]>(24363+offset0))
{
	if(input[i]>(24365+offset0))
{
	if(input[i]==(24367+offset0))
{
	vR[i] = 24367;
}
else
{
	vR[i] = 24366;
}

}
else
{
	if(input[i]==(24365+offset0))
{
	vR[i] = 24365;
}
else
{
	vR[i] = 24364;
}

}

}
else
{
	if(input[i]>(24361+offset0))
{
	if(input[i]==(24363+offset0))
{
	vR[i] = 24363;
}
else
{
	vR[i] = 24362;
}

}
else
{
	if(input[i]==(24361+offset0))
{
	vR[i] = 24361;
}
else
{
	vR[i] = 24360;
}

}

}

}
else
{
	if(input[i]>(24355+offset0))
{
	if(input[i]>(24357+offset0))
{
	if(input[i]==(24359+offset0))
{
	vR[i] = 24359;
}
else
{
	vR[i] = 24358;
}

}
else
{
	if(input[i]==(24357+offset0))
{
	vR[i] = 24357;
}
else
{
	vR[i] = 24356;
}

}

}
else
{
	if(input[i]>(24353+offset0))
{
	if(input[i]==(24355+offset0))
{
	vR[i] = 24355;
}
else
{
	vR[i] = 24354;
}

}
else
{
	if(input[i]==(24353+offset0))
{
	vR[i] = 24353;
}
else
{
	vR[i] = 24352;
}

}

}

}

}

}
else
{
	if(input[i]>(24335+offset0))
{
	if(input[i]>(24343+offset0))
{
	if(input[i]>(24347+offset0))
{
	if(input[i]>(24349+offset0))
{
	if(input[i]==(24351+offset0))
{
	vR[i] = 24351;
}
else
{
	vR[i] = 24350;
}

}
else
{
	if(input[i]==(24349+offset0))
{
	vR[i] = 24349;
}
else
{
	vR[i] = 24348;
}

}

}
else
{
	if(input[i]>(24345+offset0))
{
	if(input[i]==(24347+offset0))
{
	vR[i] = 24347;
}
else
{
	vR[i] = 24346;
}

}
else
{
	if(input[i]==(24345+offset0))
{
	vR[i] = 24345;
}
else
{
	vR[i] = 24344;
}

}

}

}
else
{
	if(input[i]>(24339+offset0))
{
	if(input[i]>(24341+offset0))
{
	if(input[i]==(24343+offset0))
{
	vR[i] = 24343;
}
else
{
	vR[i] = 24342;
}

}
else
{
	if(input[i]==(24341+offset0))
{
	vR[i] = 24341;
}
else
{
	vR[i] = 24340;
}

}

}
else
{
	if(input[i]>(24337+offset0))
{
	if(input[i]==(24339+offset0))
{
	vR[i] = 24339;
}
else
{
	vR[i] = 24338;
}

}
else
{
	if(input[i]==(24337+offset0))
{
	vR[i] = 24337;
}
else
{
	vR[i] = 24336;
}

}

}

}

}
else
{
	if(input[i]>(24327+offset0))
{
	if(input[i]>(24331+offset0))
{
	if(input[i]>(24333+offset0))
{
	if(input[i]==(24335+offset0))
{
	vR[i] = 24335;
}
else
{
	vR[i] = 24334;
}

}
else
{
	if(input[i]==(24333+offset0))
{
	vR[i] = 24333;
}
else
{
	vR[i] = 24332;
}

}

}
else
{
	if(input[i]>(24329+offset0))
{
	if(input[i]==(24331+offset0))
{
	vR[i] = 24331;
}
else
{
	vR[i] = 24330;
}

}
else
{
	if(input[i]==(24329+offset0))
{
	vR[i] = 24329;
}
else
{
	vR[i] = 24328;
}

}

}

}
else
{
	if(input[i]>(24323+offset0))
{
	if(input[i]>(24325+offset0))
{
	if(input[i]==(24327+offset0))
{
	vR[i] = 24327;
}
else
{
	vR[i] = 24326;
}

}
else
{
	if(input[i]==(24325+offset0))
{
	vR[i] = 24325;
}
else
{
	vR[i] = 24324;
}

}

}
else
{
	if(input[i]>(24321+offset0))
{
	if(input[i]==(24323+offset0))
{
	vR[i] = 24323;
}
else
{
	vR[i] = 24322;
}

}
else
{
	if(input[i]==(24321+offset0))
{
	vR[i] = 24321;
}
else
{
	vR[i] = 24320;
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
	if(input[i]>(24191+offset0))
{
	if(input[i]>(24255+offset0))
{
	if(input[i]>(24287+offset0))
{
	if(input[i]>(24303+offset0))
{
	if(input[i]>(24311+offset0))
{
	if(input[i]>(24315+offset0))
{
	if(input[i]>(24317+offset0))
{
	if(input[i]==(24319+offset0))
{
	vR[i] = 24319;
}
else
{
	vR[i] = 24318;
}

}
else
{
	if(input[i]==(24317+offset0))
{
	vR[i] = 24317;
}
else
{
	vR[i] = 24316;
}

}

}
else
{
	if(input[i]>(24313+offset0))
{
	if(input[i]==(24315+offset0))
{
	vR[i] = 24315;
}
else
{
	vR[i] = 24314;
}

}
else
{
	if(input[i]==(24313+offset0))
{
	vR[i] = 24313;
}
else
{
	vR[i] = 24312;
}

}

}

}
else
{
	if(input[i]>(24307+offset0))
{
	if(input[i]>(24309+offset0))
{
	if(input[i]==(24311+offset0))
{
	vR[i] = 24311;
}
else
{
	vR[i] = 24310;
}

}
else
{
	if(input[i]==(24309+offset0))
{
	vR[i] = 24309;
}
else
{
	vR[i] = 24308;
}

}

}
else
{
	if(input[i]>(24305+offset0))
{
	if(input[i]==(24307+offset0))
{
	vR[i] = 24307;
}
else
{
	vR[i] = 24306;
}

}
else
{
	if(input[i]==(24305+offset0))
{
	vR[i] = 24305;
}
else
{
	vR[i] = 24304;
}

}

}

}

}
else
{
	if(input[i]>(24295+offset0))
{
	if(input[i]>(24299+offset0))
{
	if(input[i]>(24301+offset0))
{
	if(input[i]==(24303+offset0))
{
	vR[i] = 24303;
}
else
{
	vR[i] = 24302;
}

}
else
{
	if(input[i]==(24301+offset0))
{
	vR[i] = 24301;
}
else
{
	vR[i] = 24300;
}

}

}
else
{
	if(input[i]>(24297+offset0))
{
	if(input[i]==(24299+offset0))
{
	vR[i] = 24299;
}
else
{
	vR[i] = 24298;
}

}
else
{
	if(input[i]==(24297+offset0))
{
	vR[i] = 24297;
}
else
{
	vR[i] = 24296;
}

}

}

}
else
{
	if(input[i]>(24291+offset0))
{
	if(input[i]>(24293+offset0))
{
	if(input[i]==(24295+offset0))
{
	vR[i] = 24295;
}
else
{
	vR[i] = 24294;
}

}
else
{
	if(input[i]==(24293+offset0))
{
	vR[i] = 24293;
}
else
{
	vR[i] = 24292;
}

}

}
else
{
	if(input[i]>(24289+offset0))
{
	if(input[i]==(24291+offset0))
{
	vR[i] = 24291;
}
else
{
	vR[i] = 24290;
}

}
else
{
	if(input[i]==(24289+offset0))
{
	vR[i] = 24289;
}
else
{
	vR[i] = 24288;
}

}

}

}

}

}
else
{
	if(input[i]>(24271+offset0))
{
	if(input[i]>(24279+offset0))
{
	if(input[i]>(24283+offset0))
{
	if(input[i]>(24285+offset0))
{
	if(input[i]==(24287+offset0))
{
	vR[i] = 24287;
}
else
{
	vR[i] = 24286;
}

}
else
{
	if(input[i]==(24285+offset0))
{
	vR[i] = 24285;
}
else
{
	vR[i] = 24284;
}

}

}
else
{
	if(input[i]>(24281+offset0))
{
	if(input[i]==(24283+offset0))
{
	vR[i] = 24283;
}
else
{
	vR[i] = 24282;
}

}
else
{
	if(input[i]==(24281+offset0))
{
	vR[i] = 24281;
}
else
{
	vR[i] = 24280;
}

}

}

}
else
{
	if(input[i]>(24275+offset0))
{
	if(input[i]>(24277+offset0))
{
	if(input[i]==(24279+offset0))
{
	vR[i] = 24279;
}
else
{
	vR[i] = 24278;
}

}
else
{
	if(input[i]==(24277+offset0))
{
	vR[i] = 24277;
}
else
{
	vR[i] = 24276;
}

}

}
else
{
	if(input[i]>(24273+offset0))
{
	if(input[i]==(24275+offset0))
{
	vR[i] = 24275;
}
else
{
	vR[i] = 24274;
}

}
else
{
	if(input[i]==(24273+offset0))
{
	vR[i] = 24273;
}
else
{
	vR[i] = 24272;
}

}

}

}

}
else
{
	if(input[i]>(24263+offset0))
{
	if(input[i]>(24267+offset0))
{
	if(input[i]>(24269+offset0))
{
	if(input[i]==(24271+offset0))
{
	vR[i] = 24271;
}
else
{
	vR[i] = 24270;
}

}
else
{
	if(input[i]==(24269+offset0))
{
	vR[i] = 24269;
}
else
{
	vR[i] = 24268;
}

}

}
else
{
	if(input[i]>(24265+offset0))
{
	if(input[i]==(24267+offset0))
{
	vR[i] = 24267;
}
else
{
	vR[i] = 24266;
}

}
else
{
	if(input[i]==(24265+offset0))
{
	vR[i] = 24265;
}
else
{
	vR[i] = 24264;
}

}

}

}
else
{
	if(input[i]>(24259+offset0))
{
	if(input[i]>(24261+offset0))
{
	if(input[i]==(24263+offset0))
{
	vR[i] = 24263;
}
else
{
	vR[i] = 24262;
}

}
else
{
	if(input[i]==(24261+offset0))
{
	vR[i] = 24261;
}
else
{
	vR[i] = 24260;
}

}

}
else
{
	if(input[i]>(24257+offset0))
{
	if(input[i]==(24259+offset0))
{
	vR[i] = 24259;
}
else
{
	vR[i] = 24258;
}

}
else
{
	if(input[i]==(24257+offset0))
{
	vR[i] = 24257;
}
else
{
	vR[i] = 24256;
}

}

}

}

}

}

}
else
{
	if(input[i]>(24223+offset0))
{
	if(input[i]>(24239+offset0))
{
	if(input[i]>(24247+offset0))
{
	if(input[i]>(24251+offset0))
{
	if(input[i]>(24253+offset0))
{
	if(input[i]==(24255+offset0))
{
	vR[i] = 24255;
}
else
{
	vR[i] = 24254;
}

}
else
{
	if(input[i]==(24253+offset0))
{
	vR[i] = 24253;
}
else
{
	vR[i] = 24252;
}

}

}
else
{
	if(input[i]>(24249+offset0))
{
	if(input[i]==(24251+offset0))
{
	vR[i] = 24251;
}
else
{
	vR[i] = 24250;
}

}
else
{
	if(input[i]==(24249+offset0))
{
	vR[i] = 24249;
}
else
{
	vR[i] = 24248;
}

}

}

}
else
{
	if(input[i]>(24243+offset0))
{
	if(input[i]>(24245+offset0))
{
	if(input[i]==(24247+offset0))
{
	vR[i] = 24247;
}
else
{
	vR[i] = 24246;
}

}
else
{
	if(input[i]==(24245+offset0))
{
	vR[i] = 24245;
}
else
{
	vR[i] = 24244;
}

}

}
else
{
	if(input[i]>(24241+offset0))
{
	if(input[i]==(24243+offset0))
{
	vR[i] = 24243;
}
else
{
	vR[i] = 24242;
}

}
else
{
	if(input[i]==(24241+offset0))
{
	vR[i] = 24241;
}
else
{
	vR[i] = 24240;
}

}

}

}

}
else
{
	if(input[i]>(24231+offset0))
{
	if(input[i]>(24235+offset0))
{
	if(input[i]>(24237+offset0))
{
	if(input[i]==(24239+offset0))
{
	vR[i] = 24239;
}
else
{
	vR[i] = 24238;
}

}
else
{
	if(input[i]==(24237+offset0))
{
	vR[i] = 24237;
}
else
{
	vR[i] = 24236;
}

}

}
else
{
	if(input[i]>(24233+offset0))
{
	if(input[i]==(24235+offset0))
{
	vR[i] = 24235;
}
else
{
	vR[i] = 24234;
}

}
else
{
	if(input[i]==(24233+offset0))
{
	vR[i] = 24233;
}
else
{
	vR[i] = 24232;
}

}

}

}
else
{
	if(input[i]>(24227+offset0))
{
	if(input[i]>(24229+offset0))
{
	if(input[i]==(24231+offset0))
{
	vR[i] = 24231;
}
else
{
	vR[i] = 24230;
}

}
else
{
	if(input[i]==(24229+offset0))
{
	vR[i] = 24229;
}
else
{
	vR[i] = 24228;
}

}

}
else
{
	if(input[i]>(24225+offset0))
{
	if(input[i]==(24227+offset0))
{
	vR[i] = 24227;
}
else
{
	vR[i] = 24226;
}

}
else
{
	if(input[i]==(24225+offset0))
{
	vR[i] = 24225;
}
else
{
	vR[i] = 24224;
}

}

}

}

}

}
else
{
	if(input[i]>(24207+offset0))
{
	if(input[i]>(24215+offset0))
{
	if(input[i]>(24219+offset0))
{
	if(input[i]>(24221+offset0))
{
	if(input[i]==(24223+offset0))
{
	vR[i] = 24223;
}
else
{
	vR[i] = 24222;
}

}
else
{
	if(input[i]==(24221+offset0))
{
	vR[i] = 24221;
}
else
{
	vR[i] = 24220;
}

}

}
else
{
	if(input[i]>(24217+offset0))
{
	if(input[i]==(24219+offset0))
{
	vR[i] = 24219;
}
else
{
	vR[i] = 24218;
}

}
else
{
	if(input[i]==(24217+offset0))
{
	vR[i] = 24217;
}
else
{
	vR[i] = 24216;
}

}

}

}
else
{
	if(input[i]>(24211+offset0))
{
	if(input[i]>(24213+offset0))
{
	if(input[i]==(24215+offset0))
{
	vR[i] = 24215;
}
else
{
	vR[i] = 24214;
}

}
else
{
	if(input[i]==(24213+offset0))
{
	vR[i] = 24213;
}
else
{
	vR[i] = 24212;
}

}

}
else
{
	if(input[i]>(24209+offset0))
{
	if(input[i]==(24211+offset0))
{
	vR[i] = 24211;
}
else
{
	vR[i] = 24210;
}

}
else
{
	if(input[i]==(24209+offset0))
{
	vR[i] = 24209;
}
else
{
	vR[i] = 24208;
}

}

}

}

}
else
{
	if(input[i]>(24199+offset0))
{
	if(input[i]>(24203+offset0))
{
	if(input[i]>(24205+offset0))
{
	if(input[i]==(24207+offset0))
{
	vR[i] = 24207;
}
else
{
	vR[i] = 24206;
}

}
else
{
	if(input[i]==(24205+offset0))
{
	vR[i] = 24205;
}
else
{
	vR[i] = 24204;
}

}

}
else
{
	if(input[i]>(24201+offset0))
{
	if(input[i]==(24203+offset0))
{
	vR[i] = 24203;
}
else
{
	vR[i] = 24202;
}

}
else
{
	if(input[i]==(24201+offset0))
{
	vR[i] = 24201;
}
else
{
	vR[i] = 24200;
}

}

}

}
else
{
	if(input[i]>(24195+offset0))
{
	if(input[i]>(24197+offset0))
{
	if(input[i]==(24199+offset0))
{
	vR[i] = 24199;
}
else
{
	vR[i] = 24198;
}

}
else
{
	if(input[i]==(24197+offset0))
{
	vR[i] = 24197;
}
else
{
	vR[i] = 24196;
}

}

}
else
{
	if(input[i]>(24193+offset0))
{
	if(input[i]==(24195+offset0))
{
	vR[i] = 24195;
}
else
{
	vR[i] = 24194;
}

}
else
{
	if(input[i]==(24193+offset0))
{
	vR[i] = 24193;
}
else
{
	vR[i] = 24192;
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
	if(input[i]>(24127+offset0))
{
	if(input[i]>(24159+offset0))
{
	if(input[i]>(24175+offset0))
{
	if(input[i]>(24183+offset0))
{
	if(input[i]>(24187+offset0))
{
	if(input[i]>(24189+offset0))
{
	if(input[i]==(24191+offset0))
{
	vR[i] = 24191;
}
else
{
	vR[i] = 24190;
}

}
else
{
	if(input[i]==(24189+offset0))
{
	vR[i] = 24189;
}
else
{
	vR[i] = 24188;
}

}

}
else
{
	if(input[i]>(24185+offset0))
{
	if(input[i]==(24187+offset0))
{
	vR[i] = 24187;
}
else
{
	vR[i] = 24186;
}

}
else
{
	if(input[i]==(24185+offset0))
{
	vR[i] = 24185;
}
else
{
	vR[i] = 24184;
}

}

}

}
else
{
	if(input[i]>(24179+offset0))
{
	if(input[i]>(24181+offset0))
{
	if(input[i]==(24183+offset0))
{
	vR[i] = 24183;
}
else
{
	vR[i] = 24182;
}

}
else
{
	if(input[i]==(24181+offset0))
{
	vR[i] = 24181;
}
else
{
	vR[i] = 24180;
}

}

}
else
{
	if(input[i]>(24177+offset0))
{
	if(input[i]==(24179+offset0))
{
	vR[i] = 24179;
}
else
{
	vR[i] = 24178;
}

}
else
{
	if(input[i]==(24177+offset0))
{
	vR[i] = 24177;
}
else
{
	vR[i] = 24176;
}

}

}

}

}
else
{
	if(input[i]>(24167+offset0))
{
	if(input[i]>(24171+offset0))
{
	if(input[i]>(24173+offset0))
{
	if(input[i]==(24175+offset0))
{
	vR[i] = 24175;
}
else
{
	vR[i] = 24174;
}

}
else
{
	if(input[i]==(24173+offset0))
{
	vR[i] = 24173;
}
else
{
	vR[i] = 24172;
}

}

}
else
{
	if(input[i]>(24169+offset0))
{
	if(input[i]==(24171+offset0))
{
	vR[i] = 24171;
}
else
{
	vR[i] = 24170;
}

}
else
{
	if(input[i]==(24169+offset0))
{
	vR[i] = 24169;
}
else
{
	vR[i] = 24168;
}

}

}

}
else
{
	if(input[i]>(24163+offset0))
{
	if(input[i]>(24165+offset0))
{
	if(input[i]==(24167+offset0))
{
	vR[i] = 24167;
}
else
{
	vR[i] = 24166;
}

}
else
{
	if(input[i]==(24165+offset0))
{
	vR[i] = 24165;
}
else
{
	vR[i] = 24164;
}

}

}
else
{
	if(input[i]>(24161+offset0))
{
	if(input[i]==(24163+offset0))
{
	vR[i] = 24163;
}
else
{
	vR[i] = 24162;
}

}
else
{
	if(input[i]==(24161+offset0))
{
	vR[i] = 24161;
}
else
{
	vR[i] = 24160;
}

}

}

}

}

}
else
{
	if(input[i]>(24143+offset0))
{
	if(input[i]>(24151+offset0))
{
	if(input[i]>(24155+offset0))
{
	if(input[i]>(24157+offset0))
{
	if(input[i]==(24159+offset0))
{
	vR[i] = 24159;
}
else
{
	vR[i] = 24158;
}

}
else
{
	if(input[i]==(24157+offset0))
{
	vR[i] = 24157;
}
else
{
	vR[i] = 24156;
}

}

}
else
{
	if(input[i]>(24153+offset0))
{
	if(input[i]==(24155+offset0))
{
	vR[i] = 24155;
}
else
{
	vR[i] = 24154;
}

}
else
{
	if(input[i]==(24153+offset0))
{
	vR[i] = 24153;
}
else
{
	vR[i] = 24152;
}

}

}

}
else
{
	if(input[i]>(24147+offset0))
{
	if(input[i]>(24149+offset0))
{
	if(input[i]==(24151+offset0))
{
	vR[i] = 24151;
}
else
{
	vR[i] = 24150;
}

}
else
{
	if(input[i]==(24149+offset0))
{
	vR[i] = 24149;
}
else
{
	vR[i] = 24148;
}

}

}
else
{
	if(input[i]>(24145+offset0))
{
	if(input[i]==(24147+offset0))
{
	vR[i] = 24147;
}
else
{
	vR[i] = 24146;
}

}
else
{
	if(input[i]==(24145+offset0))
{
	vR[i] = 24145;
}
else
{
	vR[i] = 24144;
}

}

}

}

}
else
{
	if(input[i]>(24135+offset0))
{
	if(input[i]>(24139+offset0))
{
	if(input[i]>(24141+offset0))
{
	if(input[i]==(24143+offset0))
{
	vR[i] = 24143;
}
else
{
	vR[i] = 24142;
}

}
else
{
	if(input[i]==(24141+offset0))
{
	vR[i] = 24141;
}
else
{
	vR[i] = 24140;
}

}

}
else
{
	if(input[i]>(24137+offset0))
{
	if(input[i]==(24139+offset0))
{
	vR[i] = 24139;
}
else
{
	vR[i] = 24138;
}

}
else
{
	if(input[i]==(24137+offset0))
{
	vR[i] = 24137;
}
else
{
	vR[i] = 24136;
}

}

}

}
else
{
	if(input[i]>(24131+offset0))
{
	if(input[i]>(24133+offset0))
{
	if(input[i]==(24135+offset0))
{
	vR[i] = 24135;
}
else
{
	vR[i] = 24134;
}

}
else
{
	if(input[i]==(24133+offset0))
{
	vR[i] = 24133;
}
else
{
	vR[i] = 24132;
}

}

}
else
{
	if(input[i]>(24129+offset0))
{
	if(input[i]==(24131+offset0))
{
	vR[i] = 24131;
}
else
{
	vR[i] = 24130;
}

}
else
{
	if(input[i]==(24129+offset0))
{
	vR[i] = 24129;
}
else
{
	vR[i] = 24128;
}

}

}

}

}

}

}
else
{
	if(input[i]>(24095+offset0))
{
	if(input[i]>(24111+offset0))
{
	if(input[i]>(24119+offset0))
{
	if(input[i]>(24123+offset0))
{
	if(input[i]>(24125+offset0))
{
	if(input[i]==(24127+offset0))
{
	vR[i] = 24127;
}
else
{
	vR[i] = 24126;
}

}
else
{
	if(input[i]==(24125+offset0))
{
	vR[i] = 24125;
}
else
{
	vR[i] = 24124;
}

}

}
else
{
	if(input[i]>(24121+offset0))
{
	if(input[i]==(24123+offset0))
{
	vR[i] = 24123;
}
else
{
	vR[i] = 24122;
}

}
else
{
	if(input[i]==(24121+offset0))
{
	vR[i] = 24121;
}
else
{
	vR[i] = 24120;
}

}

}

}
else
{
	if(input[i]>(24115+offset0))
{
	if(input[i]>(24117+offset0))
{
	if(input[i]==(24119+offset0))
{
	vR[i] = 24119;
}
else
{
	vR[i] = 24118;
}

}
else
{
	if(input[i]==(24117+offset0))
{
	vR[i] = 24117;
}
else
{
	vR[i] = 24116;
}

}

}
else
{
	if(input[i]>(24113+offset0))
{
	if(input[i]==(24115+offset0))
{
	vR[i] = 24115;
}
else
{
	vR[i] = 24114;
}

}
else
{
	if(input[i]==(24113+offset0))
{
	vR[i] = 24113;
}
else
{
	vR[i] = 24112;
}

}

}

}

}
else
{
	if(input[i]>(24103+offset0))
{
	if(input[i]>(24107+offset0))
{
	if(input[i]>(24109+offset0))
{
	if(input[i]==(24111+offset0))
{
	vR[i] = 24111;
}
else
{
	vR[i] = 24110;
}

}
else
{
	if(input[i]==(24109+offset0))
{
	vR[i] = 24109;
}
else
{
	vR[i] = 24108;
}

}

}
else
{
	if(input[i]>(24105+offset0))
{
	if(input[i]==(24107+offset0))
{
	vR[i] = 24107;
}
else
{
	vR[i] = 24106;
}

}
else
{
	if(input[i]==(24105+offset0))
{
	vR[i] = 24105;
}
else
{
	vR[i] = 24104;
}

}

}

}
else
{
	if(input[i]>(24099+offset0))
{
	if(input[i]>(24101+offset0))
{
	if(input[i]==(24103+offset0))
{
	vR[i] = 24103;
}
else
{
	vR[i] = 24102;
}

}
else
{
	if(input[i]==(24101+offset0))
{
	vR[i] = 24101;
}
else
{
	vR[i] = 24100;
}

}

}
else
{
	if(input[i]>(24097+offset0))
{
	if(input[i]==(24099+offset0))
{
	vR[i] = 24099;
}
else
{
	vR[i] = 24098;
}

}
else
{
	if(input[i]==(24097+offset0))
{
	vR[i] = 24097;
}
else
{
	vR[i] = 24096;
}

}

}

}

}

}
else
{
	if(input[i]>(24079+offset0))
{
	if(input[i]>(24087+offset0))
{
	if(input[i]>(24091+offset0))
{
	if(input[i]>(24093+offset0))
{
	if(input[i]==(24095+offset0))
{
	vR[i] = 24095;
}
else
{
	vR[i] = 24094;
}

}
else
{
	if(input[i]==(24093+offset0))
{
	vR[i] = 24093;
}
else
{
	vR[i] = 24092;
}

}

}
else
{
	if(input[i]>(24089+offset0))
{
	if(input[i]==(24091+offset0))
{
	vR[i] = 24091;
}
else
{
	vR[i] = 24090;
}

}
else
{
	if(input[i]==(24089+offset0))
{
	vR[i] = 24089;
}
else
{
	vR[i] = 24088;
}

}

}

}
else
{
	if(input[i]>(24083+offset0))
{
	if(input[i]>(24085+offset0))
{
	if(input[i]==(24087+offset0))
{
	vR[i] = 24087;
}
else
{
	vR[i] = 24086;
}

}
else
{
	if(input[i]==(24085+offset0))
{
	vR[i] = 24085;
}
else
{
	vR[i] = 24084;
}

}

}
else
{
	if(input[i]>(24081+offset0))
{
	if(input[i]==(24083+offset0))
{
	vR[i] = 24083;
}
else
{
	vR[i] = 24082;
}

}
else
{
	if(input[i]==(24081+offset0))
{
	vR[i] = 24081;
}
else
{
	vR[i] = 24080;
}

}

}

}

}
else
{
	if(input[i]>(24071+offset0))
{
	if(input[i]>(24075+offset0))
{
	if(input[i]>(24077+offset0))
{
	if(input[i]==(24079+offset0))
{
	vR[i] = 24079;
}
else
{
	vR[i] = 24078;
}

}
else
{
	if(input[i]==(24077+offset0))
{
	vR[i] = 24077;
}
else
{
	vR[i] = 24076;
}

}

}
else
{
	if(input[i]>(24073+offset0))
{
	if(input[i]==(24075+offset0))
{
	vR[i] = 24075;
}
else
{
	vR[i] = 24074;
}

}
else
{
	if(input[i]==(24073+offset0))
{
	vR[i] = 24073;
}
else
{
	vR[i] = 24072;
}

}

}

}
else
{
	if(input[i]>(24067+offset0))
{
	if(input[i]>(24069+offset0))
{
	if(input[i]==(24071+offset0))
{
	vR[i] = 24071;
}
else
{
	vR[i] = 24070;
}

}
else
{
	if(input[i]==(24069+offset0))
{
	vR[i] = 24069;
}
else
{
	vR[i] = 24068;
}

}

}
else
{
	if(input[i]>(24065+offset0))
{
	if(input[i]==(24067+offset0))
{
	vR[i] = 24067;
}
else
{
	vR[i] = 24066;
}

}
else
{
	if(input[i]==(24065+offset0))
{
	vR[i] = 24065;
}
else
{
	vR[i] = 24064;
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
	if(input[i]>(23807+offset0))
{
	if(input[i]>(23935+offset0))
{
	if(input[i]>(23999+offset0))
{
	if(input[i]>(24031+offset0))
{
	if(input[i]>(24047+offset0))
{
	if(input[i]>(24055+offset0))
{
	if(input[i]>(24059+offset0))
{
	if(input[i]>(24061+offset0))
{
	if(input[i]==(24063+offset0))
{
	vR[i] = 24063;
}
else
{
	vR[i] = 24062;
}

}
else
{
	if(input[i]==(24061+offset0))
{
	vR[i] = 24061;
}
else
{
	vR[i] = 24060;
}

}

}
else
{
	if(input[i]>(24057+offset0))
{
	if(input[i]==(24059+offset0))
{
	vR[i] = 24059;
}
else
{
	vR[i] = 24058;
}

}
else
{
	if(input[i]==(24057+offset0))
{
	vR[i] = 24057;
}
else
{
	vR[i] = 24056;
}

}

}

}
else
{
	if(input[i]>(24051+offset0))
{
	if(input[i]>(24053+offset0))
{
	if(input[i]==(24055+offset0))
{
	vR[i] = 24055;
}
else
{
	vR[i] = 24054;
}

}
else
{
	if(input[i]==(24053+offset0))
{
	vR[i] = 24053;
}
else
{
	vR[i] = 24052;
}

}

}
else
{
	if(input[i]>(24049+offset0))
{
	if(input[i]==(24051+offset0))
{
	vR[i] = 24051;
}
else
{
	vR[i] = 24050;
}

}
else
{
	if(input[i]==(24049+offset0))
{
	vR[i] = 24049;
}
else
{
	vR[i] = 24048;
}

}

}

}

}
else
{
	if(input[i]>(24039+offset0))
{
	if(input[i]>(24043+offset0))
{
	if(input[i]>(24045+offset0))
{
	if(input[i]==(24047+offset0))
{
	vR[i] = 24047;
}
else
{
	vR[i] = 24046;
}

}
else
{
	if(input[i]==(24045+offset0))
{
	vR[i] = 24045;
}
else
{
	vR[i] = 24044;
}

}

}
else
{
	if(input[i]>(24041+offset0))
{
	if(input[i]==(24043+offset0))
{
	vR[i] = 24043;
}
else
{
	vR[i] = 24042;
}

}
else
{
	if(input[i]==(24041+offset0))
{
	vR[i] = 24041;
}
else
{
	vR[i] = 24040;
}

}

}

}
else
{
	if(input[i]>(24035+offset0))
{
	if(input[i]>(24037+offset0))
{
	if(input[i]==(24039+offset0))
{
	vR[i] = 24039;
}
else
{
	vR[i] = 24038;
}

}
else
{
	if(input[i]==(24037+offset0))
{
	vR[i] = 24037;
}
else
{
	vR[i] = 24036;
}

}

}
else
{
	if(input[i]>(24033+offset0))
{
	if(input[i]==(24035+offset0))
{
	vR[i] = 24035;
}
else
{
	vR[i] = 24034;
}

}
else
{
	if(input[i]==(24033+offset0))
{
	vR[i] = 24033;
}
else
{
	vR[i] = 24032;
}

}

}

}

}

}
else
{
	if(input[i]>(24015+offset0))
{
	if(input[i]>(24023+offset0))
{
	if(input[i]>(24027+offset0))
{
	if(input[i]>(24029+offset0))
{
	if(input[i]==(24031+offset0))
{
	vR[i] = 24031;
}
else
{
	vR[i] = 24030;
}

}
else
{
	if(input[i]==(24029+offset0))
{
	vR[i] = 24029;
}
else
{
	vR[i] = 24028;
}

}

}
else
{
	if(input[i]>(24025+offset0))
{
	if(input[i]==(24027+offset0))
{
	vR[i] = 24027;
}
else
{
	vR[i] = 24026;
}

}
else
{
	if(input[i]==(24025+offset0))
{
	vR[i] = 24025;
}
else
{
	vR[i] = 24024;
}

}

}

}
else
{
	if(input[i]>(24019+offset0))
{
	if(input[i]>(24021+offset0))
{
	if(input[i]==(24023+offset0))
{
	vR[i] = 24023;
}
else
{
	vR[i] = 24022;
}

}
else
{
	if(input[i]==(24021+offset0))
{
	vR[i] = 24021;
}
else
{
	vR[i] = 24020;
}

}

}
else
{
	if(input[i]>(24017+offset0))
{
	if(input[i]==(24019+offset0))
{
	vR[i] = 24019;
}
else
{
	vR[i] = 24018;
}

}
else
{
	if(input[i]==(24017+offset0))
{
	vR[i] = 24017;
}
else
{
	vR[i] = 24016;
}

}

}

}

}
else
{
	if(input[i]>(24007+offset0))
{
	if(input[i]>(24011+offset0))
{
	if(input[i]>(24013+offset0))
{
	if(input[i]==(24015+offset0))
{
	vR[i] = 24015;
}
else
{
	vR[i] = 24014;
}

}
else
{
	if(input[i]==(24013+offset0))
{
	vR[i] = 24013;
}
else
{
	vR[i] = 24012;
}

}

}
else
{
	if(input[i]>(24009+offset0))
{
	if(input[i]==(24011+offset0))
{
	vR[i] = 24011;
}
else
{
	vR[i] = 24010;
}

}
else
{
	if(input[i]==(24009+offset0))
{
	vR[i] = 24009;
}
else
{
	vR[i] = 24008;
}

}

}

}
else
{
	if(input[i]>(24003+offset0))
{
	if(input[i]>(24005+offset0))
{
	if(input[i]==(24007+offset0))
{
	vR[i] = 24007;
}
else
{
	vR[i] = 24006;
}

}
else
{
	if(input[i]==(24005+offset0))
{
	vR[i] = 24005;
}
else
{
	vR[i] = 24004;
}

}

}
else
{
	if(input[i]>(24001+offset0))
{
	if(input[i]==(24003+offset0))
{
	vR[i] = 24003;
}
else
{
	vR[i] = 24002;
}

}
else
{
	if(input[i]==(24001+offset0))
{
	vR[i] = 24001;
}
else
{
	vR[i] = 24000;
}

}

}

}

}

}

}
else
{
	if(input[i]>(23967+offset0))
{
	if(input[i]>(23983+offset0))
{
	if(input[i]>(23991+offset0))
{
	if(input[i]>(23995+offset0))
{
	if(input[i]>(23997+offset0))
{
	if(input[i]==(23999+offset0))
{
	vR[i] = 23999;
}
else
{
	vR[i] = 23998;
}

}
else
{
	if(input[i]==(23997+offset0))
{
	vR[i] = 23997;
}
else
{
	vR[i] = 23996;
}

}

}
else
{
	if(input[i]>(23993+offset0))
{
	if(input[i]==(23995+offset0))
{
	vR[i] = 23995;
}
else
{
	vR[i] = 23994;
}

}
else
{
	if(input[i]==(23993+offset0))
{
	vR[i] = 23993;
}
else
{
	vR[i] = 23992;
}

}

}

}
else
{
	if(input[i]>(23987+offset0))
{
	if(input[i]>(23989+offset0))
{
	if(input[i]==(23991+offset0))
{
	vR[i] = 23991;
}
else
{
	vR[i] = 23990;
}

}
else
{
	if(input[i]==(23989+offset0))
{
	vR[i] = 23989;
}
else
{
	vR[i] = 23988;
}

}

}
else
{
	if(input[i]>(23985+offset0))
{
	if(input[i]==(23987+offset0))
{
	vR[i] = 23987;
}
else
{
	vR[i] = 23986;
}

}
else
{
	if(input[i]==(23985+offset0))
{
	vR[i] = 23985;
}
else
{
	vR[i] = 23984;
}

}

}

}

}
else
{
	if(input[i]>(23975+offset0))
{
	if(input[i]>(23979+offset0))
{
	if(input[i]>(23981+offset0))
{
	if(input[i]==(23983+offset0))
{
	vR[i] = 23983;
}
else
{
	vR[i] = 23982;
}

}
else
{
	if(input[i]==(23981+offset0))
{
	vR[i] = 23981;
}
else
{
	vR[i] = 23980;
}

}

}
else
{
	if(input[i]>(23977+offset0))
{
	if(input[i]==(23979+offset0))
{
	vR[i] = 23979;
}
else
{
	vR[i] = 23978;
}

}
else
{
	if(input[i]==(23977+offset0))
{
	vR[i] = 23977;
}
else
{
	vR[i] = 23976;
}

}

}

}
else
{
	if(input[i]>(23971+offset0))
{
	if(input[i]>(23973+offset0))
{
	if(input[i]==(23975+offset0))
{
	vR[i] = 23975;
}
else
{
	vR[i] = 23974;
}

}
else
{
	if(input[i]==(23973+offset0))
{
	vR[i] = 23973;
}
else
{
	vR[i] = 23972;
}

}

}
else
{
	if(input[i]>(23969+offset0))
{
	if(input[i]==(23971+offset0))
{
	vR[i] = 23971;
}
else
{
	vR[i] = 23970;
}

}
else
{
	if(input[i]==(23969+offset0))
{
	vR[i] = 23969;
}
else
{
	vR[i] = 23968;
}

}

}

}

}

}
else
{
	if(input[i]>(23951+offset0))
{
	if(input[i]>(23959+offset0))
{
	if(input[i]>(23963+offset0))
{
	if(input[i]>(23965+offset0))
{
	if(input[i]==(23967+offset0))
{
	vR[i] = 23967;
}
else
{
	vR[i] = 23966;
}

}
else
{
	if(input[i]==(23965+offset0))
{
	vR[i] = 23965;
}
else
{
	vR[i] = 23964;
}

}

}
else
{
	if(input[i]>(23961+offset0))
{
	if(input[i]==(23963+offset0))
{
	vR[i] = 23963;
}
else
{
	vR[i] = 23962;
}

}
else
{
	if(input[i]==(23961+offset0))
{
	vR[i] = 23961;
}
else
{
	vR[i] = 23960;
}

}

}

}
else
{
	if(input[i]>(23955+offset0))
{
	if(input[i]>(23957+offset0))
{
	if(input[i]==(23959+offset0))
{
	vR[i] = 23959;
}
else
{
	vR[i] = 23958;
}

}
else
{
	if(input[i]==(23957+offset0))
{
	vR[i] = 23957;
}
else
{
	vR[i] = 23956;
}

}

}
else
{
	if(input[i]>(23953+offset0))
{
	if(input[i]==(23955+offset0))
{
	vR[i] = 23955;
}
else
{
	vR[i] = 23954;
}

}
else
{
	if(input[i]==(23953+offset0))
{
	vR[i] = 23953;
}
else
{
	vR[i] = 23952;
}

}

}

}

}
else
{
	if(input[i]>(23943+offset0))
{
	if(input[i]>(23947+offset0))
{
	if(input[i]>(23949+offset0))
{
	if(input[i]==(23951+offset0))
{
	vR[i] = 23951;
}
else
{
	vR[i] = 23950;
}

}
else
{
	if(input[i]==(23949+offset0))
{
	vR[i] = 23949;
}
else
{
	vR[i] = 23948;
}

}

}
else
{
	if(input[i]>(23945+offset0))
{
	if(input[i]==(23947+offset0))
{
	vR[i] = 23947;
}
else
{
	vR[i] = 23946;
}

}
else
{
	if(input[i]==(23945+offset0))
{
	vR[i] = 23945;
}
else
{
	vR[i] = 23944;
}

}

}

}
else
{
	if(input[i]>(23939+offset0))
{
	if(input[i]>(23941+offset0))
{
	if(input[i]==(23943+offset0))
{
	vR[i] = 23943;
}
else
{
	vR[i] = 23942;
}

}
else
{
	if(input[i]==(23941+offset0))
{
	vR[i] = 23941;
}
else
{
	vR[i] = 23940;
}

}

}
else
{
	if(input[i]>(23937+offset0))
{
	if(input[i]==(23939+offset0))
{
	vR[i] = 23939;
}
else
{
	vR[i] = 23938;
}

}
else
{
	if(input[i]==(23937+offset0))
{
	vR[i] = 23937;
}
else
{
	vR[i] = 23936;
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
	if(input[i]>(23871+offset0))
{
	if(input[i]>(23903+offset0))
{
	if(input[i]>(23919+offset0))
{
	if(input[i]>(23927+offset0))
{
	if(input[i]>(23931+offset0))
{
	if(input[i]>(23933+offset0))
{
	if(input[i]==(23935+offset0))
{
	vR[i] = 23935;
}
else
{
	vR[i] = 23934;
}

}
else
{
	if(input[i]==(23933+offset0))
{
	vR[i] = 23933;
}
else
{
	vR[i] = 23932;
}

}

}
else
{
	if(input[i]>(23929+offset0))
{
	if(input[i]==(23931+offset0))
{
	vR[i] = 23931;
}
else
{
	vR[i] = 23930;
}

}
else
{
	if(input[i]==(23929+offset0))
{
	vR[i] = 23929;
}
else
{
	vR[i] = 23928;
}

}

}

}
else
{
	if(input[i]>(23923+offset0))
{
	if(input[i]>(23925+offset0))
{
	if(input[i]==(23927+offset0))
{
	vR[i] = 23927;
}
else
{
	vR[i] = 23926;
}

}
else
{
	if(input[i]==(23925+offset0))
{
	vR[i] = 23925;
}
else
{
	vR[i] = 23924;
}

}

}
else
{
	if(input[i]>(23921+offset0))
{
	if(input[i]==(23923+offset0))
{
	vR[i] = 23923;
}
else
{
	vR[i] = 23922;
}

}
else
{
	if(input[i]==(23921+offset0))
{
	vR[i] = 23921;
}
else
{
	vR[i] = 23920;
}

}

}

}

}
else
{
	if(input[i]>(23911+offset0))
{
	if(input[i]>(23915+offset0))
{
	if(input[i]>(23917+offset0))
{
	if(input[i]==(23919+offset0))
{
	vR[i] = 23919;
}
else
{
	vR[i] = 23918;
}

}
else
{
	if(input[i]==(23917+offset0))
{
	vR[i] = 23917;
}
else
{
	vR[i] = 23916;
}

}

}
else
{
	if(input[i]>(23913+offset0))
{
	if(input[i]==(23915+offset0))
{
	vR[i] = 23915;
}
else
{
	vR[i] = 23914;
}

}
else
{
	if(input[i]==(23913+offset0))
{
	vR[i] = 23913;
}
else
{
	vR[i] = 23912;
}

}

}

}
else
{
	if(input[i]>(23907+offset0))
{
	if(input[i]>(23909+offset0))
{
	if(input[i]==(23911+offset0))
{
	vR[i] = 23911;
}
else
{
	vR[i] = 23910;
}

}
else
{
	if(input[i]==(23909+offset0))
{
	vR[i] = 23909;
}
else
{
	vR[i] = 23908;
}

}

}
else
{
	if(input[i]>(23905+offset0))
{
	if(input[i]==(23907+offset0))
{
	vR[i] = 23907;
}
else
{
	vR[i] = 23906;
}

}
else
{
	if(input[i]==(23905+offset0))
{
	vR[i] = 23905;
}
else
{
	vR[i] = 23904;
}

}

}

}

}

}
else
{
	if(input[i]>(23887+offset0))
{
	if(input[i]>(23895+offset0))
{
	if(input[i]>(23899+offset0))
{
	if(input[i]>(23901+offset0))
{
	if(input[i]==(23903+offset0))
{
	vR[i] = 23903;
}
else
{
	vR[i] = 23902;
}

}
else
{
	if(input[i]==(23901+offset0))
{
	vR[i] = 23901;
}
else
{
	vR[i] = 23900;
}

}

}
else
{
	if(input[i]>(23897+offset0))
{
	if(input[i]==(23899+offset0))
{
	vR[i] = 23899;
}
else
{
	vR[i] = 23898;
}

}
else
{
	if(input[i]==(23897+offset0))
{
	vR[i] = 23897;
}
else
{
	vR[i] = 23896;
}

}

}

}
else
{
	if(input[i]>(23891+offset0))
{
	if(input[i]>(23893+offset0))
{
	if(input[i]==(23895+offset0))
{
	vR[i] = 23895;
}
else
{
	vR[i] = 23894;
}

}
else
{
	if(input[i]==(23893+offset0))
{
	vR[i] = 23893;
}
else
{
	vR[i] = 23892;
}

}

}
else
{
	if(input[i]>(23889+offset0))
{
	if(input[i]==(23891+offset0))
{
	vR[i] = 23891;
}
else
{
	vR[i] = 23890;
}

}
else
{
	if(input[i]==(23889+offset0))
{
	vR[i] = 23889;
}
else
{
	vR[i] = 23888;
}

}

}

}

}
else
{
	if(input[i]>(23879+offset0))
{
	if(input[i]>(23883+offset0))
{
	if(input[i]>(23885+offset0))
{
	if(input[i]==(23887+offset0))
{
	vR[i] = 23887;
}
else
{
	vR[i] = 23886;
}

}
else
{
	if(input[i]==(23885+offset0))
{
	vR[i] = 23885;
}
else
{
	vR[i] = 23884;
}

}

}
else
{
	if(input[i]>(23881+offset0))
{
	if(input[i]==(23883+offset0))
{
	vR[i] = 23883;
}
else
{
	vR[i] = 23882;
}

}
else
{
	if(input[i]==(23881+offset0))
{
	vR[i] = 23881;
}
else
{
	vR[i] = 23880;
}

}

}

}
else
{
	if(input[i]>(23875+offset0))
{
	if(input[i]>(23877+offset0))
{
	if(input[i]==(23879+offset0))
{
	vR[i] = 23879;
}
else
{
	vR[i] = 23878;
}

}
else
{
	if(input[i]==(23877+offset0))
{
	vR[i] = 23877;
}
else
{
	vR[i] = 23876;
}

}

}
else
{
	if(input[i]>(23873+offset0))
{
	if(input[i]==(23875+offset0))
{
	vR[i] = 23875;
}
else
{
	vR[i] = 23874;
}

}
else
{
	if(input[i]==(23873+offset0))
{
	vR[i] = 23873;
}
else
{
	vR[i] = 23872;
}

}

}

}

}

}

}
else
{
	if(input[i]>(23839+offset0))
{
	if(input[i]>(23855+offset0))
{
	if(input[i]>(23863+offset0))
{
	if(input[i]>(23867+offset0))
{
	if(input[i]>(23869+offset0))
{
	if(input[i]==(23871+offset0))
{
	vR[i] = 23871;
}
else
{
	vR[i] = 23870;
}

}
else
{
	if(input[i]==(23869+offset0))
{
	vR[i] = 23869;
}
else
{
	vR[i] = 23868;
}

}

}
else
{
	if(input[i]>(23865+offset0))
{
	if(input[i]==(23867+offset0))
{
	vR[i] = 23867;
}
else
{
	vR[i] = 23866;
}

}
else
{
	if(input[i]==(23865+offset0))
{
	vR[i] = 23865;
}
else
{
	vR[i] = 23864;
}

}

}

}
else
{
	if(input[i]>(23859+offset0))
{
	if(input[i]>(23861+offset0))
{
	if(input[i]==(23863+offset0))
{
	vR[i] = 23863;
}
else
{
	vR[i] = 23862;
}

}
else
{
	if(input[i]==(23861+offset0))
{
	vR[i] = 23861;
}
else
{
	vR[i] = 23860;
}

}

}
else
{
	if(input[i]>(23857+offset0))
{
	if(input[i]==(23859+offset0))
{
	vR[i] = 23859;
}
else
{
	vR[i] = 23858;
}

}
else
{
	if(input[i]==(23857+offset0))
{
	vR[i] = 23857;
}
else
{
	vR[i] = 23856;
}

}

}

}

}
else
{
	if(input[i]>(23847+offset0))
{
	if(input[i]>(23851+offset0))
{
	if(input[i]>(23853+offset0))
{
	if(input[i]==(23855+offset0))
{
	vR[i] = 23855;
}
else
{
	vR[i] = 23854;
}

}
else
{
	if(input[i]==(23853+offset0))
{
	vR[i] = 23853;
}
else
{
	vR[i] = 23852;
}

}

}
else
{
	if(input[i]>(23849+offset0))
{
	if(input[i]==(23851+offset0))
{
	vR[i] = 23851;
}
else
{
	vR[i] = 23850;
}

}
else
{
	if(input[i]==(23849+offset0))
{
	vR[i] = 23849;
}
else
{
	vR[i] = 23848;
}

}

}

}
else
{
	if(input[i]>(23843+offset0))
{
	if(input[i]>(23845+offset0))
{
	if(input[i]==(23847+offset0))
{
	vR[i] = 23847;
}
else
{
	vR[i] = 23846;
}

}
else
{
	if(input[i]==(23845+offset0))
{
	vR[i] = 23845;
}
else
{
	vR[i] = 23844;
}

}

}
else
{
	if(input[i]>(23841+offset0))
{
	if(input[i]==(23843+offset0))
{
	vR[i] = 23843;
}
else
{
	vR[i] = 23842;
}

}
else
{
	if(input[i]==(23841+offset0))
{
	vR[i] = 23841;
}
else
{
	vR[i] = 23840;
}

}

}

}

}

}
else
{
	if(input[i]>(23823+offset0))
{
	if(input[i]>(23831+offset0))
{
	if(input[i]>(23835+offset0))
{
	if(input[i]>(23837+offset0))
{
	if(input[i]==(23839+offset0))
{
	vR[i] = 23839;
}
else
{
	vR[i] = 23838;
}

}
else
{
	if(input[i]==(23837+offset0))
{
	vR[i] = 23837;
}
else
{
	vR[i] = 23836;
}

}

}
else
{
	if(input[i]>(23833+offset0))
{
	if(input[i]==(23835+offset0))
{
	vR[i] = 23835;
}
else
{
	vR[i] = 23834;
}

}
else
{
	if(input[i]==(23833+offset0))
{
	vR[i] = 23833;
}
else
{
	vR[i] = 23832;
}

}

}

}
else
{
	if(input[i]>(23827+offset0))
{
	if(input[i]>(23829+offset0))
{
	if(input[i]==(23831+offset0))
{
	vR[i] = 23831;
}
else
{
	vR[i] = 23830;
}

}
else
{
	if(input[i]==(23829+offset0))
{
	vR[i] = 23829;
}
else
{
	vR[i] = 23828;
}

}

}
else
{
	if(input[i]>(23825+offset0))
{
	if(input[i]==(23827+offset0))
{
	vR[i] = 23827;
}
else
{
	vR[i] = 23826;
}

}
else
{
	if(input[i]==(23825+offset0))
{
	vR[i] = 23825;
}
else
{
	vR[i] = 23824;
}

}

}

}

}
else
{
	if(input[i]>(23815+offset0))
{
	if(input[i]>(23819+offset0))
{
	if(input[i]>(23821+offset0))
{
	if(input[i]==(23823+offset0))
{
	vR[i] = 23823;
}
else
{
	vR[i] = 23822;
}

}
else
{
	if(input[i]==(23821+offset0))
{
	vR[i] = 23821;
}
else
{
	vR[i] = 23820;
}

}

}
else
{
	if(input[i]>(23817+offset0))
{
	if(input[i]==(23819+offset0))
{
	vR[i] = 23819;
}
else
{
	vR[i] = 23818;
}

}
else
{
	if(input[i]==(23817+offset0))
{
	vR[i] = 23817;
}
else
{
	vR[i] = 23816;
}

}

}

}
else
{
	if(input[i]>(23811+offset0))
{
	if(input[i]>(23813+offset0))
{
	if(input[i]==(23815+offset0))
{
	vR[i] = 23815;
}
else
{
	vR[i] = 23814;
}

}
else
{
	if(input[i]==(23813+offset0))
{
	vR[i] = 23813;
}
else
{
	vR[i] = 23812;
}

}

}
else
{
	if(input[i]>(23809+offset0))
{
	if(input[i]==(23811+offset0))
{
	vR[i] = 23811;
}
else
{
	vR[i] = 23810;
}

}
else
{
	if(input[i]==(23809+offset0))
{
	vR[i] = 23809;
}
else
{
	vR[i] = 23808;
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
	if(input[i]>(23679+offset0))
{
	if(input[i]>(23743+offset0))
{
	if(input[i]>(23775+offset0))
{
	if(input[i]>(23791+offset0))
{
	if(input[i]>(23799+offset0))
{
	if(input[i]>(23803+offset0))
{
	if(input[i]>(23805+offset0))
{
	if(input[i]==(23807+offset0))
{
	vR[i] = 23807;
}
else
{
	vR[i] = 23806;
}

}
else
{
	if(input[i]==(23805+offset0))
{
	vR[i] = 23805;
}
else
{
	vR[i] = 23804;
}

}

}
else
{
	if(input[i]>(23801+offset0))
{
	if(input[i]==(23803+offset0))
{
	vR[i] = 23803;
}
else
{
	vR[i] = 23802;
}

}
else
{
	if(input[i]==(23801+offset0))
{
	vR[i] = 23801;
}
else
{
	vR[i] = 23800;
}

}

}

}
else
{
	if(input[i]>(23795+offset0))
{
	if(input[i]>(23797+offset0))
{
	if(input[i]==(23799+offset0))
{
	vR[i] = 23799;
}
else
{
	vR[i] = 23798;
}

}
else
{
	if(input[i]==(23797+offset0))
{
	vR[i] = 23797;
}
else
{
	vR[i] = 23796;
}

}

}
else
{
	if(input[i]>(23793+offset0))
{
	if(input[i]==(23795+offset0))
{
	vR[i] = 23795;
}
else
{
	vR[i] = 23794;
}

}
else
{
	if(input[i]==(23793+offset0))
{
	vR[i] = 23793;
}
else
{
	vR[i] = 23792;
}

}

}

}

}
else
{
	if(input[i]>(23783+offset0))
{
	if(input[i]>(23787+offset0))
{
	if(input[i]>(23789+offset0))
{
	if(input[i]==(23791+offset0))
{
	vR[i] = 23791;
}
else
{
	vR[i] = 23790;
}

}
else
{
	if(input[i]==(23789+offset0))
{
	vR[i] = 23789;
}
else
{
	vR[i] = 23788;
}

}

}
else
{
	if(input[i]>(23785+offset0))
{
	if(input[i]==(23787+offset0))
{
	vR[i] = 23787;
}
else
{
	vR[i] = 23786;
}

}
else
{
	if(input[i]==(23785+offset0))
{
	vR[i] = 23785;
}
else
{
	vR[i] = 23784;
}

}

}

}
else
{
	if(input[i]>(23779+offset0))
{
	if(input[i]>(23781+offset0))
{
	if(input[i]==(23783+offset0))
{
	vR[i] = 23783;
}
else
{
	vR[i] = 23782;
}

}
else
{
	if(input[i]==(23781+offset0))
{
	vR[i] = 23781;
}
else
{
	vR[i] = 23780;
}

}

}
else
{
	if(input[i]>(23777+offset0))
{
	if(input[i]==(23779+offset0))
{
	vR[i] = 23779;
}
else
{
	vR[i] = 23778;
}

}
else
{
	if(input[i]==(23777+offset0))
{
	vR[i] = 23777;
}
else
{
	vR[i] = 23776;
}

}

}

}

}

}
else
{
	if(input[i]>(23759+offset0))
{
	if(input[i]>(23767+offset0))
{
	if(input[i]>(23771+offset0))
{
	if(input[i]>(23773+offset0))
{
	if(input[i]==(23775+offset0))
{
	vR[i] = 23775;
}
else
{
	vR[i] = 23774;
}

}
else
{
	if(input[i]==(23773+offset0))
{
	vR[i] = 23773;
}
else
{
	vR[i] = 23772;
}

}

}
else
{
	if(input[i]>(23769+offset0))
{
	if(input[i]==(23771+offset0))
{
	vR[i] = 23771;
}
else
{
	vR[i] = 23770;
}

}
else
{
	if(input[i]==(23769+offset0))
{
	vR[i] = 23769;
}
else
{
	vR[i] = 23768;
}

}

}

}
else
{
	if(input[i]>(23763+offset0))
{
	if(input[i]>(23765+offset0))
{
	if(input[i]==(23767+offset0))
{
	vR[i] = 23767;
}
else
{
	vR[i] = 23766;
}

}
else
{
	if(input[i]==(23765+offset0))
{
	vR[i] = 23765;
}
else
{
	vR[i] = 23764;
}

}

}
else
{
	if(input[i]>(23761+offset0))
{
	if(input[i]==(23763+offset0))
{
	vR[i] = 23763;
}
else
{
	vR[i] = 23762;
}

}
else
{
	if(input[i]==(23761+offset0))
{
	vR[i] = 23761;
}
else
{
	vR[i] = 23760;
}

}

}

}

}
else
{
	if(input[i]>(23751+offset0))
{
	if(input[i]>(23755+offset0))
{
	if(input[i]>(23757+offset0))
{
	if(input[i]==(23759+offset0))
{
	vR[i] = 23759;
}
else
{
	vR[i] = 23758;
}

}
else
{
	if(input[i]==(23757+offset0))
{
	vR[i] = 23757;
}
else
{
	vR[i] = 23756;
}

}

}
else
{
	if(input[i]>(23753+offset0))
{
	if(input[i]==(23755+offset0))
{
	vR[i] = 23755;
}
else
{
	vR[i] = 23754;
}

}
else
{
	if(input[i]==(23753+offset0))
{
	vR[i] = 23753;
}
else
{
	vR[i] = 23752;
}

}

}

}
else
{
	if(input[i]>(23747+offset0))
{
	if(input[i]>(23749+offset0))
{
	if(input[i]==(23751+offset0))
{
	vR[i] = 23751;
}
else
{
	vR[i] = 23750;
}

}
else
{
	if(input[i]==(23749+offset0))
{
	vR[i] = 23749;
}
else
{
	vR[i] = 23748;
}

}

}
else
{
	if(input[i]>(23745+offset0))
{
	if(input[i]==(23747+offset0))
{
	vR[i] = 23747;
}
else
{
	vR[i] = 23746;
}

}
else
{
	if(input[i]==(23745+offset0))
{
	vR[i] = 23745;
}
else
{
	vR[i] = 23744;
}

}

}

}

}

}

}
else
{
	if(input[i]>(23711+offset0))
{
	if(input[i]>(23727+offset0))
{
	if(input[i]>(23735+offset0))
{
	if(input[i]>(23739+offset0))
{
	if(input[i]>(23741+offset0))
{
	if(input[i]==(23743+offset0))
{
	vR[i] = 23743;
}
else
{
	vR[i] = 23742;
}

}
else
{
	if(input[i]==(23741+offset0))
{
	vR[i] = 23741;
}
else
{
	vR[i] = 23740;
}

}

}
else
{
	if(input[i]>(23737+offset0))
{
	if(input[i]==(23739+offset0))
{
	vR[i] = 23739;
}
else
{
	vR[i] = 23738;
}

}
else
{
	if(input[i]==(23737+offset0))
{
	vR[i] = 23737;
}
else
{
	vR[i] = 23736;
}

}

}

}
else
{
	if(input[i]>(23731+offset0))
{
	if(input[i]>(23733+offset0))
{
	if(input[i]==(23735+offset0))
{
	vR[i] = 23735;
}
else
{
	vR[i] = 23734;
}

}
else
{
	if(input[i]==(23733+offset0))
{
	vR[i] = 23733;
}
else
{
	vR[i] = 23732;
}

}

}
else
{
	if(input[i]>(23729+offset0))
{
	if(input[i]==(23731+offset0))
{
	vR[i] = 23731;
}
else
{
	vR[i] = 23730;
}

}
else
{
	if(input[i]==(23729+offset0))
{
	vR[i] = 23729;
}
else
{
	vR[i] = 23728;
}

}

}

}

}
else
{
	if(input[i]>(23719+offset0))
{
	if(input[i]>(23723+offset0))
{
	if(input[i]>(23725+offset0))
{
	if(input[i]==(23727+offset0))
{
	vR[i] = 23727;
}
else
{
	vR[i] = 23726;
}

}
else
{
	if(input[i]==(23725+offset0))
{
	vR[i] = 23725;
}
else
{
	vR[i] = 23724;
}

}

}
else
{
	if(input[i]>(23721+offset0))
{
	if(input[i]==(23723+offset0))
{
	vR[i] = 23723;
}
else
{
	vR[i] = 23722;
}

}
else
{
	if(input[i]==(23721+offset0))
{
	vR[i] = 23721;
}
else
{
	vR[i] = 23720;
}

}

}

}
else
{
	if(input[i]>(23715+offset0))
{
	if(input[i]>(23717+offset0))
{
	if(input[i]==(23719+offset0))
{
	vR[i] = 23719;
}
else
{
	vR[i] = 23718;
}

}
else
{
	if(input[i]==(23717+offset0))
{
	vR[i] = 23717;
}
else
{
	vR[i] = 23716;
}

}

}
else
{
	if(input[i]>(23713+offset0))
{
	if(input[i]==(23715+offset0))
{
	vR[i] = 23715;
}
else
{
	vR[i] = 23714;
}

}
else
{
	if(input[i]==(23713+offset0))
{
	vR[i] = 23713;
}
else
{
	vR[i] = 23712;
}

}

}

}

}

}
else
{
	if(input[i]>(23695+offset0))
{
	if(input[i]>(23703+offset0))
{
	if(input[i]>(23707+offset0))
{
	if(input[i]>(23709+offset0))
{
	if(input[i]==(23711+offset0))
{
	vR[i] = 23711;
}
else
{
	vR[i] = 23710;
}

}
else
{
	if(input[i]==(23709+offset0))
{
	vR[i] = 23709;
}
else
{
	vR[i] = 23708;
}

}

}
else
{
	if(input[i]>(23705+offset0))
{
	if(input[i]==(23707+offset0))
{
	vR[i] = 23707;
}
else
{
	vR[i] = 23706;
}

}
else
{
	if(input[i]==(23705+offset0))
{
	vR[i] = 23705;
}
else
{
	vR[i] = 23704;
}

}

}

}
else
{
	if(input[i]>(23699+offset0))
{
	if(input[i]>(23701+offset0))
{
	if(input[i]==(23703+offset0))
{
	vR[i] = 23703;
}
else
{
	vR[i] = 23702;
}

}
else
{
	if(input[i]==(23701+offset0))
{
	vR[i] = 23701;
}
else
{
	vR[i] = 23700;
}

}

}
else
{
	if(input[i]>(23697+offset0))
{
	if(input[i]==(23699+offset0))
{
	vR[i] = 23699;
}
else
{
	vR[i] = 23698;
}

}
else
{
	if(input[i]==(23697+offset0))
{
	vR[i] = 23697;
}
else
{
	vR[i] = 23696;
}

}

}

}

}
else
{
	if(input[i]>(23687+offset0))
{
	if(input[i]>(23691+offset0))
{
	if(input[i]>(23693+offset0))
{
	if(input[i]==(23695+offset0))
{
	vR[i] = 23695;
}
else
{
	vR[i] = 23694;
}

}
else
{
	if(input[i]==(23693+offset0))
{
	vR[i] = 23693;
}
else
{
	vR[i] = 23692;
}

}

}
else
{
	if(input[i]>(23689+offset0))
{
	if(input[i]==(23691+offset0))
{
	vR[i] = 23691;
}
else
{
	vR[i] = 23690;
}

}
else
{
	if(input[i]==(23689+offset0))
{
	vR[i] = 23689;
}
else
{
	vR[i] = 23688;
}

}

}

}
else
{
	if(input[i]>(23683+offset0))
{
	if(input[i]>(23685+offset0))
{
	if(input[i]==(23687+offset0))
{
	vR[i] = 23687;
}
else
{
	vR[i] = 23686;
}

}
else
{
	if(input[i]==(23685+offset0))
{
	vR[i] = 23685;
}
else
{
	vR[i] = 23684;
}

}

}
else
{
	if(input[i]>(23681+offset0))
{
	if(input[i]==(23683+offset0))
{
	vR[i] = 23683;
}
else
{
	vR[i] = 23682;
}

}
else
{
	if(input[i]==(23681+offset0))
{
	vR[i] = 23681;
}
else
{
	vR[i] = 23680;
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
	if(input[i]>(23615+offset0))
{
	if(input[i]>(23647+offset0))
{
	if(input[i]>(23663+offset0))
{
	if(input[i]>(23671+offset0))
{
	if(input[i]>(23675+offset0))
{
	if(input[i]>(23677+offset0))
{
	if(input[i]==(23679+offset0))
{
	vR[i] = 23679;
}
else
{
	vR[i] = 23678;
}

}
else
{
	if(input[i]==(23677+offset0))
{
	vR[i] = 23677;
}
else
{
	vR[i] = 23676;
}

}

}
else
{
	if(input[i]>(23673+offset0))
{
	if(input[i]==(23675+offset0))
{
	vR[i] = 23675;
}
else
{
	vR[i] = 23674;
}

}
else
{
	if(input[i]==(23673+offset0))
{
	vR[i] = 23673;
}
else
{
	vR[i] = 23672;
}

}

}

}
else
{
	if(input[i]>(23667+offset0))
{
	if(input[i]>(23669+offset0))
{
	if(input[i]==(23671+offset0))
{
	vR[i] = 23671;
}
else
{
	vR[i] = 23670;
}

}
else
{
	if(input[i]==(23669+offset0))
{
	vR[i] = 23669;
}
else
{
	vR[i] = 23668;
}

}

}
else
{
	if(input[i]>(23665+offset0))
{
	if(input[i]==(23667+offset0))
{
	vR[i] = 23667;
}
else
{
	vR[i] = 23666;
}

}
else
{
	if(input[i]==(23665+offset0))
{
	vR[i] = 23665;
}
else
{
	vR[i] = 23664;
}

}

}

}

}
else
{
	if(input[i]>(23655+offset0))
{
	if(input[i]>(23659+offset0))
{
	if(input[i]>(23661+offset0))
{
	if(input[i]==(23663+offset0))
{
	vR[i] = 23663;
}
else
{
	vR[i] = 23662;
}

}
else
{
	if(input[i]==(23661+offset0))
{
	vR[i] = 23661;
}
else
{
	vR[i] = 23660;
}

}

}
else
{
	if(input[i]>(23657+offset0))
{
	if(input[i]==(23659+offset0))
{
	vR[i] = 23659;
}
else
{
	vR[i] = 23658;
}

}
else
{
	if(input[i]==(23657+offset0))
{
	vR[i] = 23657;
}
else
{
	vR[i] = 23656;
}

}

}

}
else
{
	if(input[i]>(23651+offset0))
{
	if(input[i]>(23653+offset0))
{
	if(input[i]==(23655+offset0))
{
	vR[i] = 23655;
}
else
{
	vR[i] = 23654;
}

}
else
{
	if(input[i]==(23653+offset0))
{
	vR[i] = 23653;
}
else
{
	vR[i] = 23652;
}

}

}
else
{
	if(input[i]>(23649+offset0))
{
	if(input[i]==(23651+offset0))
{
	vR[i] = 23651;
}
else
{
	vR[i] = 23650;
}

}
else
{
	if(input[i]==(23649+offset0))
{
	vR[i] = 23649;
}
else
{
	vR[i] = 23648;
}

}

}

}

}

}
else
{
	if(input[i]>(23631+offset0))
{
	if(input[i]>(23639+offset0))
{
	if(input[i]>(23643+offset0))
{
	if(input[i]>(23645+offset0))
{
	if(input[i]==(23647+offset0))
{
	vR[i] = 23647;
}
else
{
	vR[i] = 23646;
}

}
else
{
	if(input[i]==(23645+offset0))
{
	vR[i] = 23645;
}
else
{
	vR[i] = 23644;
}

}

}
else
{
	if(input[i]>(23641+offset0))
{
	if(input[i]==(23643+offset0))
{
	vR[i] = 23643;
}
else
{
	vR[i] = 23642;
}

}
else
{
	if(input[i]==(23641+offset0))
{
	vR[i] = 23641;
}
else
{
	vR[i] = 23640;
}

}

}

}
else
{
	if(input[i]>(23635+offset0))
{
	if(input[i]>(23637+offset0))
{
	if(input[i]==(23639+offset0))
{
	vR[i] = 23639;
}
else
{
	vR[i] = 23638;
}

}
else
{
	if(input[i]==(23637+offset0))
{
	vR[i] = 23637;
}
else
{
	vR[i] = 23636;
}

}

}
else
{
	if(input[i]>(23633+offset0))
{
	if(input[i]==(23635+offset0))
{
	vR[i] = 23635;
}
else
{
	vR[i] = 23634;
}

}
else
{
	if(input[i]==(23633+offset0))
{
	vR[i] = 23633;
}
else
{
	vR[i] = 23632;
}

}

}

}

}
else
{
	if(input[i]>(23623+offset0))
{
	if(input[i]>(23627+offset0))
{
	if(input[i]>(23629+offset0))
{
	if(input[i]==(23631+offset0))
{
	vR[i] = 23631;
}
else
{
	vR[i] = 23630;
}

}
else
{
	if(input[i]==(23629+offset0))
{
	vR[i] = 23629;
}
else
{
	vR[i] = 23628;
}

}

}
else
{
	if(input[i]>(23625+offset0))
{
	if(input[i]==(23627+offset0))
{
	vR[i] = 23627;
}
else
{
	vR[i] = 23626;
}

}
else
{
	if(input[i]==(23625+offset0))
{
	vR[i] = 23625;
}
else
{
	vR[i] = 23624;
}

}

}

}
else
{
	if(input[i]>(23619+offset0))
{
	if(input[i]>(23621+offset0))
{
	if(input[i]==(23623+offset0))
{
	vR[i] = 23623;
}
else
{
	vR[i] = 23622;
}

}
else
{
	if(input[i]==(23621+offset0))
{
	vR[i] = 23621;
}
else
{
	vR[i] = 23620;
}

}

}
else
{
	if(input[i]>(23617+offset0))
{
	if(input[i]==(23619+offset0))
{
	vR[i] = 23619;
}
else
{
	vR[i] = 23618;
}

}
else
{
	if(input[i]==(23617+offset0))
{
	vR[i] = 23617;
}
else
{
	vR[i] = 23616;
}

}

}

}

}

}

}
else
{
	if(input[i]>(23583+offset0))
{
	if(input[i]>(23599+offset0))
{
	if(input[i]>(23607+offset0))
{
	if(input[i]>(23611+offset0))
{
	if(input[i]>(23613+offset0))
{
	if(input[i]==(23615+offset0))
{
	vR[i] = 23615;
}
else
{
	vR[i] = 23614;
}

}
else
{
	if(input[i]==(23613+offset0))
{
	vR[i] = 23613;
}
else
{
	vR[i] = 23612;
}

}

}
else
{
	if(input[i]>(23609+offset0))
{
	if(input[i]==(23611+offset0))
{
	vR[i] = 23611;
}
else
{
	vR[i] = 23610;
}

}
else
{
	if(input[i]==(23609+offset0))
{
	vR[i] = 23609;
}
else
{
	vR[i] = 23608;
}

}

}

}
else
{
	if(input[i]>(23603+offset0))
{
	if(input[i]>(23605+offset0))
{
	if(input[i]==(23607+offset0))
{
	vR[i] = 23607;
}
else
{
	vR[i] = 23606;
}

}
else
{
	if(input[i]==(23605+offset0))
{
	vR[i] = 23605;
}
else
{
	vR[i] = 23604;
}

}

}
else
{
	if(input[i]>(23601+offset0))
{
	if(input[i]==(23603+offset0))
{
	vR[i] = 23603;
}
else
{
	vR[i] = 23602;
}

}
else
{
	if(input[i]==(23601+offset0))
{
	vR[i] = 23601;
}
else
{
	vR[i] = 23600;
}

}

}

}

}
else
{
	if(input[i]>(23591+offset0))
{
	if(input[i]>(23595+offset0))
{
	if(input[i]>(23597+offset0))
{
	if(input[i]==(23599+offset0))
{
	vR[i] = 23599;
}
else
{
	vR[i] = 23598;
}

}
else
{
	if(input[i]==(23597+offset0))
{
	vR[i] = 23597;
}
else
{
	vR[i] = 23596;
}

}

}
else
{
	if(input[i]>(23593+offset0))
{
	if(input[i]==(23595+offset0))
{
	vR[i] = 23595;
}
else
{
	vR[i] = 23594;
}

}
else
{
	if(input[i]==(23593+offset0))
{
	vR[i] = 23593;
}
else
{
	vR[i] = 23592;
}

}

}

}
else
{
	if(input[i]>(23587+offset0))
{
	if(input[i]>(23589+offset0))
{
	if(input[i]==(23591+offset0))
{
	vR[i] = 23591;
}
else
{
	vR[i] = 23590;
}

}
else
{
	if(input[i]==(23589+offset0))
{
	vR[i] = 23589;
}
else
{
	vR[i] = 23588;
}

}

}
else
{
	if(input[i]>(23585+offset0))
{
	if(input[i]==(23587+offset0))
{
	vR[i] = 23587;
}
else
{
	vR[i] = 23586;
}

}
else
{
	if(input[i]==(23585+offset0))
{
	vR[i] = 23585;
}
else
{
	vR[i] = 23584;
}

}

}

}

}

}
else
{
	if(input[i]>(23567+offset0))
{
	if(input[i]>(23575+offset0))
{
	if(input[i]>(23579+offset0))
{
	if(input[i]>(23581+offset0))
{
	if(input[i]==(23583+offset0))
{
	vR[i] = 23583;
}
else
{
	vR[i] = 23582;
}

}
else
{
	if(input[i]==(23581+offset0))
{
	vR[i] = 23581;
}
else
{
	vR[i] = 23580;
}

}

}
else
{
	if(input[i]>(23577+offset0))
{
	if(input[i]==(23579+offset0))
{
	vR[i] = 23579;
}
else
{
	vR[i] = 23578;
}

}
else
{
	if(input[i]==(23577+offset0))
{
	vR[i] = 23577;
}
else
{
	vR[i] = 23576;
}

}

}

}
else
{
	if(input[i]>(23571+offset0))
{
	if(input[i]>(23573+offset0))
{
	if(input[i]==(23575+offset0))
{
	vR[i] = 23575;
}
else
{
	vR[i] = 23574;
}

}
else
{
	if(input[i]==(23573+offset0))
{
	vR[i] = 23573;
}
else
{
	vR[i] = 23572;
}

}

}
else
{
	if(input[i]>(23569+offset0))
{
	if(input[i]==(23571+offset0))
{
	vR[i] = 23571;
}
else
{
	vR[i] = 23570;
}

}
else
{
	if(input[i]==(23569+offset0))
{
	vR[i] = 23569;
}
else
{
	vR[i] = 23568;
}

}

}

}

}
else
{
	if(input[i]>(23559+offset0))
{
	if(input[i]>(23563+offset0))
{
	if(input[i]>(23565+offset0))
{
	if(input[i]==(23567+offset0))
{
	vR[i] = 23567;
}
else
{
	vR[i] = 23566;
}

}
else
{
	if(input[i]==(23565+offset0))
{
	vR[i] = 23565;
}
else
{
	vR[i] = 23564;
}

}

}
else
{
	if(input[i]>(23561+offset0))
{
	if(input[i]==(23563+offset0))
{
	vR[i] = 23563;
}
else
{
	vR[i] = 23562;
}

}
else
{
	if(input[i]==(23561+offset0))
{
	vR[i] = 23561;
}
else
{
	vR[i] = 23560;
}

}

}

}
else
{
	if(input[i]>(23555+offset0))
{
	if(input[i]>(23557+offset0))
{
	if(input[i]==(23559+offset0))
{
	vR[i] = 23559;
}
else
{
	vR[i] = 23558;
}

}
else
{
	if(input[i]==(23557+offset0))
{
	vR[i] = 23557;
}
else
{
	vR[i] = 23556;
}

}

}
else
{
	if(input[i]>(23553+offset0))
{
	if(input[i]==(23555+offset0))
{
	vR[i] = 23555;
}
else
{
	vR[i] = 23554;
}

}
else
{
	if(input[i]==(23553+offset0))
{
	vR[i] = 23553;
}
else
{
	vR[i] = 23552;
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
	if(input[i]>(23039+offset0))
{
	if(input[i]>(23295+offset0))
{
	if(input[i]>(23423+offset0))
{
	if(input[i]>(23487+offset0))
{
	if(input[i]>(23519+offset0))
{
	if(input[i]>(23535+offset0))
{
	if(input[i]>(23543+offset0))
{
	if(input[i]>(23547+offset0))
{
	if(input[i]>(23549+offset0))
{
	if(input[i]==(23551+offset0))
{
	vR[i] = 23551;
}
else
{
	vR[i] = 23550;
}

}
else
{
	if(input[i]==(23549+offset0))
{
	vR[i] = 23549;
}
else
{
	vR[i] = 23548;
}

}

}
else
{
	if(input[i]>(23545+offset0))
{
	if(input[i]==(23547+offset0))
{
	vR[i] = 23547;
}
else
{
	vR[i] = 23546;
}

}
else
{
	if(input[i]==(23545+offset0))
{
	vR[i] = 23545;
}
else
{
	vR[i] = 23544;
}

}

}

}
else
{
	if(input[i]>(23539+offset0))
{
	if(input[i]>(23541+offset0))
{
	if(input[i]==(23543+offset0))
{
	vR[i] = 23543;
}
else
{
	vR[i] = 23542;
}

}
else
{
	if(input[i]==(23541+offset0))
{
	vR[i] = 23541;
}
else
{
	vR[i] = 23540;
}

}

}
else
{
	if(input[i]>(23537+offset0))
{
	if(input[i]==(23539+offset0))
{
	vR[i] = 23539;
}
else
{
	vR[i] = 23538;
}

}
else
{
	if(input[i]==(23537+offset0))
{
	vR[i] = 23537;
}
else
{
	vR[i] = 23536;
}

}

}

}

}
else
{
	if(input[i]>(23527+offset0))
{
	if(input[i]>(23531+offset0))
{
	if(input[i]>(23533+offset0))
{
	if(input[i]==(23535+offset0))
{
	vR[i] = 23535;
}
else
{
	vR[i] = 23534;
}

}
else
{
	if(input[i]==(23533+offset0))
{
	vR[i] = 23533;
}
else
{
	vR[i] = 23532;
}

}

}
else
{
	if(input[i]>(23529+offset0))
{
	if(input[i]==(23531+offset0))
{
	vR[i] = 23531;
}
else
{
	vR[i] = 23530;
}

}
else
{
	if(input[i]==(23529+offset0))
{
	vR[i] = 23529;
}
else
{
	vR[i] = 23528;
}

}

}

}
else
{
	if(input[i]>(23523+offset0))
{
	if(input[i]>(23525+offset0))
{
	if(input[i]==(23527+offset0))
{
	vR[i] = 23527;
}
else
{
	vR[i] = 23526;
}

}
else
{
	if(input[i]==(23525+offset0))
{
	vR[i] = 23525;
}
else
{
	vR[i] = 23524;
}

}

}
else
{
	if(input[i]>(23521+offset0))
{
	if(input[i]==(23523+offset0))
{
	vR[i] = 23523;
}
else
{
	vR[i] = 23522;
}

}
else
{
	if(input[i]==(23521+offset0))
{
	vR[i] = 23521;
}
else
{
	vR[i] = 23520;
}

}

}

}

}

}
else
{
	if(input[i]>(23503+offset0))
{
	if(input[i]>(23511+offset0))
{
	if(input[i]>(23515+offset0))
{
	if(input[i]>(23517+offset0))
{
	if(input[i]==(23519+offset0))
{
	vR[i] = 23519;
}
else
{
	vR[i] = 23518;
}

}
else
{
	if(input[i]==(23517+offset0))
{
	vR[i] = 23517;
}
else
{
	vR[i] = 23516;
}

}

}
else
{
	if(input[i]>(23513+offset0))
{
	if(input[i]==(23515+offset0))
{
	vR[i] = 23515;
}
else
{
	vR[i] = 23514;
}

}
else
{
	if(input[i]==(23513+offset0))
{
	vR[i] = 23513;
}
else
{
	vR[i] = 23512;
}

}

}

}
else
{
	if(input[i]>(23507+offset0))
{
	if(input[i]>(23509+offset0))
{
	if(input[i]==(23511+offset0))
{
	vR[i] = 23511;
}
else
{
	vR[i] = 23510;
}

}
else
{
	if(input[i]==(23509+offset0))
{
	vR[i] = 23509;
}
else
{
	vR[i] = 23508;
}

}

}
else
{
	if(input[i]>(23505+offset0))
{
	if(input[i]==(23507+offset0))
{
	vR[i] = 23507;
}
else
{
	vR[i] = 23506;
}

}
else
{
	if(input[i]==(23505+offset0))
{
	vR[i] = 23505;
}
else
{
	vR[i] = 23504;
}

}

}

}

}
else
{
	if(input[i]>(23495+offset0))
{
	if(input[i]>(23499+offset0))
{
	if(input[i]>(23501+offset0))
{
	if(input[i]==(23503+offset0))
{
	vR[i] = 23503;
}
else
{
	vR[i] = 23502;
}

}
else
{
	if(input[i]==(23501+offset0))
{
	vR[i] = 23501;
}
else
{
	vR[i] = 23500;
}

}

}
else
{
	if(input[i]>(23497+offset0))
{
	if(input[i]==(23499+offset0))
{
	vR[i] = 23499;
}
else
{
	vR[i] = 23498;
}

}
else
{
	if(input[i]==(23497+offset0))
{
	vR[i] = 23497;
}
else
{
	vR[i] = 23496;
}

}

}

}
else
{
	if(input[i]>(23491+offset0))
{
	if(input[i]>(23493+offset0))
{
	if(input[i]==(23495+offset0))
{
	vR[i] = 23495;
}
else
{
	vR[i] = 23494;
}

}
else
{
	if(input[i]==(23493+offset0))
{
	vR[i] = 23493;
}
else
{
	vR[i] = 23492;
}

}

}
else
{
	if(input[i]>(23489+offset0))
{
	if(input[i]==(23491+offset0))
{
	vR[i] = 23491;
}
else
{
	vR[i] = 23490;
}

}
else
{
	if(input[i]==(23489+offset0))
{
	vR[i] = 23489;
}
else
{
	vR[i] = 23488;
}

}

}

}

}

}

}
else
{
	if(input[i]>(23455+offset0))
{
	if(input[i]>(23471+offset0))
{
	if(input[i]>(23479+offset0))
{
	if(input[i]>(23483+offset0))
{
	if(input[i]>(23485+offset0))
{
	if(input[i]==(23487+offset0))
{
	vR[i] = 23487;
}
else
{
	vR[i] = 23486;
}

}
else
{
	if(input[i]==(23485+offset0))
{
	vR[i] = 23485;
}
else
{
	vR[i] = 23484;
}

}

}
else
{
	if(input[i]>(23481+offset0))
{
	if(input[i]==(23483+offset0))
{
	vR[i] = 23483;
}
else
{
	vR[i] = 23482;
}

}
else
{
	if(input[i]==(23481+offset0))
{
	vR[i] = 23481;
}
else
{
	vR[i] = 23480;
}

}

}

}
else
{
	if(input[i]>(23475+offset0))
{
	if(input[i]>(23477+offset0))
{
	if(input[i]==(23479+offset0))
{
	vR[i] = 23479;
}
else
{
	vR[i] = 23478;
}

}
else
{
	if(input[i]==(23477+offset0))
{
	vR[i] = 23477;
}
else
{
	vR[i] = 23476;
}

}

}
else
{
	if(input[i]>(23473+offset0))
{
	if(input[i]==(23475+offset0))
{
	vR[i] = 23475;
}
else
{
	vR[i] = 23474;
}

}
else
{
	if(input[i]==(23473+offset0))
{
	vR[i] = 23473;
}
else
{
	vR[i] = 23472;
}

}

}

}

}
else
{
	if(input[i]>(23463+offset0))
{
	if(input[i]>(23467+offset0))
{
	if(input[i]>(23469+offset0))
{
	if(input[i]==(23471+offset0))
{
	vR[i] = 23471;
}
else
{
	vR[i] = 23470;
}

}
else
{
	if(input[i]==(23469+offset0))
{
	vR[i] = 23469;
}
else
{
	vR[i] = 23468;
}

}

}
else
{
	if(input[i]>(23465+offset0))
{
	if(input[i]==(23467+offset0))
{
	vR[i] = 23467;
}
else
{
	vR[i] = 23466;
}

}
else
{
	if(input[i]==(23465+offset0))
{
	vR[i] = 23465;
}
else
{
	vR[i] = 23464;
}

}

}

}
else
{
	if(input[i]>(23459+offset0))
{
	if(input[i]>(23461+offset0))
{
	if(input[i]==(23463+offset0))
{
	vR[i] = 23463;
}
else
{
	vR[i] = 23462;
}

}
else
{
	if(input[i]==(23461+offset0))
{
	vR[i] = 23461;
}
else
{
	vR[i] = 23460;
}

}

}
else
{
	if(input[i]>(23457+offset0))
{
	if(input[i]==(23459+offset0))
{
	vR[i] = 23459;
}
else
{
	vR[i] = 23458;
}

}
else
{
	if(input[i]==(23457+offset0))
{
	vR[i] = 23457;
}
else
{
	vR[i] = 23456;
}

}

}

}

}

}
else
{
	if(input[i]>(23439+offset0))
{
	if(input[i]>(23447+offset0))
{
	if(input[i]>(23451+offset0))
{
	if(input[i]>(23453+offset0))
{
	if(input[i]==(23455+offset0))
{
	vR[i] = 23455;
}
else
{
	vR[i] = 23454;
}

}
else
{
	if(input[i]==(23453+offset0))
{
	vR[i] = 23453;
}
else
{
	vR[i] = 23452;
}

}

}
else
{
	if(input[i]>(23449+offset0))
{
	if(input[i]==(23451+offset0))
{
	vR[i] = 23451;
}
else
{
	vR[i] = 23450;
}

}
else
{
	if(input[i]==(23449+offset0))
{
	vR[i] = 23449;
}
else
{
	vR[i] = 23448;
}

}

}

}
else
{
	if(input[i]>(23443+offset0))
{
	if(input[i]>(23445+offset0))
{
	if(input[i]==(23447+offset0))
{
	vR[i] = 23447;
}
else
{
	vR[i] = 23446;
}

}
else
{
	if(input[i]==(23445+offset0))
{
	vR[i] = 23445;
}
else
{
	vR[i] = 23444;
}

}

}
else
{
	if(input[i]>(23441+offset0))
{
	if(input[i]==(23443+offset0))
{
	vR[i] = 23443;
}
else
{
	vR[i] = 23442;
}

}
else
{
	if(input[i]==(23441+offset0))
{
	vR[i] = 23441;
}
else
{
	vR[i] = 23440;
}

}

}

}

}
else
{
	if(input[i]>(23431+offset0))
{
	if(input[i]>(23435+offset0))
{
	if(input[i]>(23437+offset0))
{
	if(input[i]==(23439+offset0))
{
	vR[i] = 23439;
}
else
{
	vR[i] = 23438;
}

}
else
{
	if(input[i]==(23437+offset0))
{
	vR[i] = 23437;
}
else
{
	vR[i] = 23436;
}

}

}
else
{
	if(input[i]>(23433+offset0))
{
	if(input[i]==(23435+offset0))
{
	vR[i] = 23435;
}
else
{
	vR[i] = 23434;
}

}
else
{
	if(input[i]==(23433+offset0))
{
	vR[i] = 23433;
}
else
{
	vR[i] = 23432;
}

}

}

}
else
{
	if(input[i]>(23427+offset0))
{
	if(input[i]>(23429+offset0))
{
	if(input[i]==(23431+offset0))
{
	vR[i] = 23431;
}
else
{
	vR[i] = 23430;
}

}
else
{
	if(input[i]==(23429+offset0))
{
	vR[i] = 23429;
}
else
{
	vR[i] = 23428;
}

}

}
else
{
	if(input[i]>(23425+offset0))
{
	if(input[i]==(23427+offset0))
{
	vR[i] = 23427;
}
else
{
	vR[i] = 23426;
}

}
else
{
	if(input[i]==(23425+offset0))
{
	vR[i] = 23425;
}
else
{
	vR[i] = 23424;
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
	if(input[i]>(23359+offset0))
{
	if(input[i]>(23391+offset0))
{
	if(input[i]>(23407+offset0))
{
	if(input[i]>(23415+offset0))
{
	if(input[i]>(23419+offset0))
{
	if(input[i]>(23421+offset0))
{
	if(input[i]==(23423+offset0))
{
	vR[i] = 23423;
}
else
{
	vR[i] = 23422;
}

}
else
{
	if(input[i]==(23421+offset0))
{
	vR[i] = 23421;
}
else
{
	vR[i] = 23420;
}

}

}
else
{
	if(input[i]>(23417+offset0))
{
	if(input[i]==(23419+offset0))
{
	vR[i] = 23419;
}
else
{
	vR[i] = 23418;
}

}
else
{
	if(input[i]==(23417+offset0))
{
	vR[i] = 23417;
}
else
{
	vR[i] = 23416;
}

}

}

}
else
{
	if(input[i]>(23411+offset0))
{
	if(input[i]>(23413+offset0))
{
	if(input[i]==(23415+offset0))
{
	vR[i] = 23415;
}
else
{
	vR[i] = 23414;
}

}
else
{
	if(input[i]==(23413+offset0))
{
	vR[i] = 23413;
}
else
{
	vR[i] = 23412;
}

}

}
else
{
	if(input[i]>(23409+offset0))
{
	if(input[i]==(23411+offset0))
{
	vR[i] = 23411;
}
else
{
	vR[i] = 23410;
}

}
else
{
	if(input[i]==(23409+offset0))
{
	vR[i] = 23409;
}
else
{
	vR[i] = 23408;
}

}

}

}

}
else
{
	if(input[i]>(23399+offset0))
{
	if(input[i]>(23403+offset0))
{
	if(input[i]>(23405+offset0))
{
	if(input[i]==(23407+offset0))
{
	vR[i] = 23407;
}
else
{
	vR[i] = 23406;
}

}
else
{
	if(input[i]==(23405+offset0))
{
	vR[i] = 23405;
}
else
{
	vR[i] = 23404;
}

}

}
else
{
	if(input[i]>(23401+offset0))
{
	if(input[i]==(23403+offset0))
{
	vR[i] = 23403;
}
else
{
	vR[i] = 23402;
}

}
else
{
	if(input[i]==(23401+offset0))
{
	vR[i] = 23401;
}
else
{
	vR[i] = 23400;
}

}

}

}
else
{
	if(input[i]>(23395+offset0))
{
	if(input[i]>(23397+offset0))
{
	if(input[i]==(23399+offset0))
{
	vR[i] = 23399;
}
else
{
	vR[i] = 23398;
}

}
else
{
	if(input[i]==(23397+offset0))
{
	vR[i] = 23397;
}
else
{
	vR[i] = 23396;
}

}

}
else
{
	if(input[i]>(23393+offset0))
{
	if(input[i]==(23395+offset0))
{
	vR[i] = 23395;
}
else
{
	vR[i] = 23394;
}

}
else
{
	if(input[i]==(23393+offset0))
{
	vR[i] = 23393;
}
else
{
	vR[i] = 23392;
}

}

}

}

}

}
else
{
	if(input[i]>(23375+offset0))
{
	if(input[i]>(23383+offset0))
{
	if(input[i]>(23387+offset0))
{
	if(input[i]>(23389+offset0))
{
	if(input[i]==(23391+offset0))
{
	vR[i] = 23391;
}
else
{
	vR[i] = 23390;
}

}
else
{
	if(input[i]==(23389+offset0))
{
	vR[i] = 23389;
}
else
{
	vR[i] = 23388;
}

}

}
else
{
	if(input[i]>(23385+offset0))
{
	if(input[i]==(23387+offset0))
{
	vR[i] = 23387;
}
else
{
	vR[i] = 23386;
}

}
else
{
	if(input[i]==(23385+offset0))
{
	vR[i] = 23385;
}
else
{
	vR[i] = 23384;
}

}

}

}
else
{
	if(input[i]>(23379+offset0))
{
	if(input[i]>(23381+offset0))
{
	if(input[i]==(23383+offset0))
{
	vR[i] = 23383;
}
else
{
	vR[i] = 23382;
}

}
else
{
	if(input[i]==(23381+offset0))
{
	vR[i] = 23381;
}
else
{
	vR[i] = 23380;
}

}

}
else
{
	if(input[i]>(23377+offset0))
{
	if(input[i]==(23379+offset0))
{
	vR[i] = 23379;
}
else
{
	vR[i] = 23378;
}

}
else
{
	if(input[i]==(23377+offset0))
{
	vR[i] = 23377;
}
else
{
	vR[i] = 23376;
}

}

}

}

}
else
{
	if(input[i]>(23367+offset0))
{
	if(input[i]>(23371+offset0))
{
	if(input[i]>(23373+offset0))
{
	if(input[i]==(23375+offset0))
{
	vR[i] = 23375;
}
else
{
	vR[i] = 23374;
}

}
else
{
	if(input[i]==(23373+offset0))
{
	vR[i] = 23373;
}
else
{
	vR[i] = 23372;
}

}

}
else
{
	if(input[i]>(23369+offset0))
{
	if(input[i]==(23371+offset0))
{
	vR[i] = 23371;
}
else
{
	vR[i] = 23370;
}

}
else
{
	if(input[i]==(23369+offset0))
{
	vR[i] = 23369;
}
else
{
	vR[i] = 23368;
}

}

}

}
else
{
	if(input[i]>(23363+offset0))
{
	if(input[i]>(23365+offset0))
{
	if(input[i]==(23367+offset0))
{
	vR[i] = 23367;
}
else
{
	vR[i] = 23366;
}

}
else
{
	if(input[i]==(23365+offset0))
{
	vR[i] = 23365;
}
else
{
	vR[i] = 23364;
}

}

}
else
{
	if(input[i]>(23361+offset0))
{
	if(input[i]==(23363+offset0))
{
	vR[i] = 23363;
}
else
{
	vR[i] = 23362;
}

}
else
{
	if(input[i]==(23361+offset0))
{
	vR[i] = 23361;
}
else
{
	vR[i] = 23360;
}

}

}

}

}

}

}
else
{
	if(input[i]>(23327+offset0))
{
	if(input[i]>(23343+offset0))
{
	if(input[i]>(23351+offset0))
{
	if(input[i]>(23355+offset0))
{
	if(input[i]>(23357+offset0))
{
	if(input[i]==(23359+offset0))
{
	vR[i] = 23359;
}
else
{
	vR[i] = 23358;
}

}
else
{
	if(input[i]==(23357+offset0))
{
	vR[i] = 23357;
}
else
{
	vR[i] = 23356;
}

}

}
else
{
	if(input[i]>(23353+offset0))
{
	if(input[i]==(23355+offset0))
{
	vR[i] = 23355;
}
else
{
	vR[i] = 23354;
}

}
else
{
	if(input[i]==(23353+offset0))
{
	vR[i] = 23353;
}
else
{
	vR[i] = 23352;
}

}

}

}
else
{
	if(input[i]>(23347+offset0))
{
	if(input[i]>(23349+offset0))
{
	if(input[i]==(23351+offset0))
{
	vR[i] = 23351;
}
else
{
	vR[i] = 23350;
}

}
else
{
	if(input[i]==(23349+offset0))
{
	vR[i] = 23349;
}
else
{
	vR[i] = 23348;
}

}

}
else
{
	if(input[i]>(23345+offset0))
{
	if(input[i]==(23347+offset0))
{
	vR[i] = 23347;
}
else
{
	vR[i] = 23346;
}

}
else
{
	if(input[i]==(23345+offset0))
{
	vR[i] = 23345;
}
else
{
	vR[i] = 23344;
}

}

}

}

}
else
{
	if(input[i]>(23335+offset0))
{
	if(input[i]>(23339+offset0))
{
	if(input[i]>(23341+offset0))
{
	if(input[i]==(23343+offset0))
{
	vR[i] = 23343;
}
else
{
	vR[i] = 23342;
}

}
else
{
	if(input[i]==(23341+offset0))
{
	vR[i] = 23341;
}
else
{
	vR[i] = 23340;
}

}

}
else
{
	if(input[i]>(23337+offset0))
{
	if(input[i]==(23339+offset0))
{
	vR[i] = 23339;
}
else
{
	vR[i] = 23338;
}

}
else
{
	if(input[i]==(23337+offset0))
{
	vR[i] = 23337;
}
else
{
	vR[i] = 23336;
}

}

}

}
else
{
	if(input[i]>(23331+offset0))
{
	if(input[i]>(23333+offset0))
{
	if(input[i]==(23335+offset0))
{
	vR[i] = 23335;
}
else
{
	vR[i] = 23334;
}

}
else
{
	if(input[i]==(23333+offset0))
{
	vR[i] = 23333;
}
else
{
	vR[i] = 23332;
}

}

}
else
{
	if(input[i]>(23329+offset0))
{
	if(input[i]==(23331+offset0))
{
	vR[i] = 23331;
}
else
{
	vR[i] = 23330;
}

}
else
{
	if(input[i]==(23329+offset0))
{
	vR[i] = 23329;
}
else
{
	vR[i] = 23328;
}

}

}

}

}

}
else
{
	if(input[i]>(23311+offset0))
{
	if(input[i]>(23319+offset0))
{
	if(input[i]>(23323+offset0))
{
	if(input[i]>(23325+offset0))
{
	if(input[i]==(23327+offset0))
{
	vR[i] = 23327;
}
else
{
	vR[i] = 23326;
}

}
else
{
	if(input[i]==(23325+offset0))
{
	vR[i] = 23325;
}
else
{
	vR[i] = 23324;
}

}

}
else
{
	if(input[i]>(23321+offset0))
{
	if(input[i]==(23323+offset0))
{
	vR[i] = 23323;
}
else
{
	vR[i] = 23322;
}

}
else
{
	if(input[i]==(23321+offset0))
{
	vR[i] = 23321;
}
else
{
	vR[i] = 23320;
}

}

}

}
else
{
	if(input[i]>(23315+offset0))
{
	if(input[i]>(23317+offset0))
{
	if(input[i]==(23319+offset0))
{
	vR[i] = 23319;
}
else
{
	vR[i] = 23318;
}

}
else
{
	if(input[i]==(23317+offset0))
{
	vR[i] = 23317;
}
else
{
	vR[i] = 23316;
}

}

}
else
{
	if(input[i]>(23313+offset0))
{
	if(input[i]==(23315+offset0))
{
	vR[i] = 23315;
}
else
{
	vR[i] = 23314;
}

}
else
{
	if(input[i]==(23313+offset0))
{
	vR[i] = 23313;
}
else
{
	vR[i] = 23312;
}

}

}

}

}
else
{
	if(input[i]>(23303+offset0))
{
	if(input[i]>(23307+offset0))
{
	if(input[i]>(23309+offset0))
{
	if(input[i]==(23311+offset0))
{
	vR[i] = 23311;
}
else
{
	vR[i] = 23310;
}

}
else
{
	if(input[i]==(23309+offset0))
{
	vR[i] = 23309;
}
else
{
	vR[i] = 23308;
}

}

}
else
{
	if(input[i]>(23305+offset0))
{
	if(input[i]==(23307+offset0))
{
	vR[i] = 23307;
}
else
{
	vR[i] = 23306;
}

}
else
{
	if(input[i]==(23305+offset0))
{
	vR[i] = 23305;
}
else
{
	vR[i] = 23304;
}

}

}

}
else
{
	if(input[i]>(23299+offset0))
{
	if(input[i]>(23301+offset0))
{
	if(input[i]==(23303+offset0))
{
	vR[i] = 23303;
}
else
{
	vR[i] = 23302;
}

}
else
{
	if(input[i]==(23301+offset0))
{
	vR[i] = 23301;
}
else
{
	vR[i] = 23300;
}

}

}
else
{
	if(input[i]>(23297+offset0))
{
	if(input[i]==(23299+offset0))
{
	vR[i] = 23299;
}
else
{
	vR[i] = 23298;
}

}
else
{
	if(input[i]==(23297+offset0))
{
	vR[i] = 23297;
}
else
{
	vR[i] = 23296;
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
	if(input[i]>(23167+offset0))
{
	if(input[i]>(23231+offset0))
{
	if(input[i]>(23263+offset0))
{
	if(input[i]>(23279+offset0))
{
	if(input[i]>(23287+offset0))
{
	if(input[i]>(23291+offset0))
{
	if(input[i]>(23293+offset0))
{
	if(input[i]==(23295+offset0))
{
	vR[i] = 23295;
}
else
{
	vR[i] = 23294;
}

}
else
{
	if(input[i]==(23293+offset0))
{
	vR[i] = 23293;
}
else
{
	vR[i] = 23292;
}

}

}
else
{
	if(input[i]>(23289+offset0))
{
	if(input[i]==(23291+offset0))
{
	vR[i] = 23291;
}
else
{
	vR[i] = 23290;
}

}
else
{
	if(input[i]==(23289+offset0))
{
	vR[i] = 23289;
}
else
{
	vR[i] = 23288;
}

}

}

}
else
{
	if(input[i]>(23283+offset0))
{
	if(input[i]>(23285+offset0))
{
	if(input[i]==(23287+offset0))
{
	vR[i] = 23287;
}
else
{
	vR[i] = 23286;
}

}
else
{
	if(input[i]==(23285+offset0))
{
	vR[i] = 23285;
}
else
{
	vR[i] = 23284;
}

}

}
else
{
	if(input[i]>(23281+offset0))
{
	if(input[i]==(23283+offset0))
{
	vR[i] = 23283;
}
else
{
	vR[i] = 23282;
}

}
else
{
	if(input[i]==(23281+offset0))
{
	vR[i] = 23281;
}
else
{
	vR[i] = 23280;
}

}

}

}

}
else
{
	if(input[i]>(23271+offset0))
{
	if(input[i]>(23275+offset0))
{
	if(input[i]>(23277+offset0))
{
	if(input[i]==(23279+offset0))
{
	vR[i] = 23279;
}
else
{
	vR[i] = 23278;
}

}
else
{
	if(input[i]==(23277+offset0))
{
	vR[i] = 23277;
}
else
{
	vR[i] = 23276;
}

}

}
else
{
	if(input[i]>(23273+offset0))
{
	if(input[i]==(23275+offset0))
{
	vR[i] = 23275;
}
else
{
	vR[i] = 23274;
}

}
else
{
	if(input[i]==(23273+offset0))
{
	vR[i] = 23273;
}
else
{
	vR[i] = 23272;
}

}

}

}
else
{
	if(input[i]>(23267+offset0))
{
	if(input[i]>(23269+offset0))
{
	if(input[i]==(23271+offset0))
{
	vR[i] = 23271;
}
else
{
	vR[i] = 23270;
}

}
else
{
	if(input[i]==(23269+offset0))
{
	vR[i] = 23269;
}
else
{
	vR[i] = 23268;
}

}

}
else
{
	if(input[i]>(23265+offset0))
{
	if(input[i]==(23267+offset0))
{
	vR[i] = 23267;
}
else
{
	vR[i] = 23266;
}

}
else
{
	if(input[i]==(23265+offset0))
{
	vR[i] = 23265;
}
else
{
	vR[i] = 23264;
}

}

}

}

}

}
else
{
	if(input[i]>(23247+offset0))
{
	if(input[i]>(23255+offset0))
{
	if(input[i]>(23259+offset0))
{
	if(input[i]>(23261+offset0))
{
	if(input[i]==(23263+offset0))
{
	vR[i] = 23263;
}
else
{
	vR[i] = 23262;
}

}
else
{
	if(input[i]==(23261+offset0))
{
	vR[i] = 23261;
}
else
{
	vR[i] = 23260;
}

}

}
else
{
	if(input[i]>(23257+offset0))
{
	if(input[i]==(23259+offset0))
{
	vR[i] = 23259;
}
else
{
	vR[i] = 23258;
}

}
else
{
	if(input[i]==(23257+offset0))
{
	vR[i] = 23257;
}
else
{
	vR[i] = 23256;
}

}

}

}
else
{
	if(input[i]>(23251+offset0))
{
	if(input[i]>(23253+offset0))
{
	if(input[i]==(23255+offset0))
{
	vR[i] = 23255;
}
else
{
	vR[i] = 23254;
}

}
else
{
	if(input[i]==(23253+offset0))
{
	vR[i] = 23253;
}
else
{
	vR[i] = 23252;
}

}

}
else
{
	if(input[i]>(23249+offset0))
{
	if(input[i]==(23251+offset0))
{
	vR[i] = 23251;
}
else
{
	vR[i] = 23250;
}

}
else
{
	if(input[i]==(23249+offset0))
{
	vR[i] = 23249;
}
else
{
	vR[i] = 23248;
}

}

}

}

}
else
{
	if(input[i]>(23239+offset0))
{
	if(input[i]>(23243+offset0))
{
	if(input[i]>(23245+offset0))
{
	if(input[i]==(23247+offset0))
{
	vR[i] = 23247;
}
else
{
	vR[i] = 23246;
}

}
else
{
	if(input[i]==(23245+offset0))
{
	vR[i] = 23245;
}
else
{
	vR[i] = 23244;
}

}

}
else
{
	if(input[i]>(23241+offset0))
{
	if(input[i]==(23243+offset0))
{
	vR[i] = 23243;
}
else
{
	vR[i] = 23242;
}

}
else
{
	if(input[i]==(23241+offset0))
{
	vR[i] = 23241;
}
else
{
	vR[i] = 23240;
}

}

}

}
else
{
	if(input[i]>(23235+offset0))
{
	if(input[i]>(23237+offset0))
{
	if(input[i]==(23239+offset0))
{
	vR[i] = 23239;
}
else
{
	vR[i] = 23238;
}

}
else
{
	if(input[i]==(23237+offset0))
{
	vR[i] = 23237;
}
else
{
	vR[i] = 23236;
}

}

}
else
{
	if(input[i]>(23233+offset0))
{
	if(input[i]==(23235+offset0))
{
	vR[i] = 23235;
}
else
{
	vR[i] = 23234;
}

}
else
{
	if(input[i]==(23233+offset0))
{
	vR[i] = 23233;
}
else
{
	vR[i] = 23232;
}

}

}

}

}

}

}
else
{
	if(input[i]>(23199+offset0))
{
	if(input[i]>(23215+offset0))
{
	if(input[i]>(23223+offset0))
{
	if(input[i]>(23227+offset0))
{
	if(input[i]>(23229+offset0))
{
	if(input[i]==(23231+offset0))
{
	vR[i] = 23231;
}
else
{
	vR[i] = 23230;
}

}
else
{
	if(input[i]==(23229+offset0))
{
	vR[i] = 23229;
}
else
{
	vR[i] = 23228;
}

}

}
else
{
	if(input[i]>(23225+offset0))
{
	if(input[i]==(23227+offset0))
{
	vR[i] = 23227;
}
else
{
	vR[i] = 23226;
}

}
else
{
	if(input[i]==(23225+offset0))
{
	vR[i] = 23225;
}
else
{
	vR[i] = 23224;
}

}

}

}
else
{
	if(input[i]>(23219+offset0))
{
	if(input[i]>(23221+offset0))
{
	if(input[i]==(23223+offset0))
{
	vR[i] = 23223;
}
else
{
	vR[i] = 23222;
}

}
else
{
	if(input[i]==(23221+offset0))
{
	vR[i] = 23221;
}
else
{
	vR[i] = 23220;
}

}

}
else
{
	if(input[i]>(23217+offset0))
{
	if(input[i]==(23219+offset0))
{
	vR[i] = 23219;
}
else
{
	vR[i] = 23218;
}

}
else
{
	if(input[i]==(23217+offset0))
{
	vR[i] = 23217;
}
else
{
	vR[i] = 23216;
}

}

}

}

}
else
{
	if(input[i]>(23207+offset0))
{
	if(input[i]>(23211+offset0))
{
	if(input[i]>(23213+offset0))
{
	if(input[i]==(23215+offset0))
{
	vR[i] = 23215;
}
else
{
	vR[i] = 23214;
}

}
else
{
	if(input[i]==(23213+offset0))
{
	vR[i] = 23213;
}
else
{
	vR[i] = 23212;
}

}

}
else
{
	if(input[i]>(23209+offset0))
{
	if(input[i]==(23211+offset0))
{
	vR[i] = 23211;
}
else
{
	vR[i] = 23210;
}

}
else
{
	if(input[i]==(23209+offset0))
{
	vR[i] = 23209;
}
else
{
	vR[i] = 23208;
}

}

}

}
else
{
	if(input[i]>(23203+offset0))
{
	if(input[i]>(23205+offset0))
{
	if(input[i]==(23207+offset0))
{
	vR[i] = 23207;
}
else
{
	vR[i] = 23206;
}

}
else
{
	if(input[i]==(23205+offset0))
{
	vR[i] = 23205;
}
else
{
	vR[i] = 23204;
}

}

}
else
{
	if(input[i]>(23201+offset0))
{
	if(input[i]==(23203+offset0))
{
	vR[i] = 23203;
}
else
{
	vR[i] = 23202;
}

}
else
{
	if(input[i]==(23201+offset0))
{
	vR[i] = 23201;
}
else
{
	vR[i] = 23200;
}

}

}

}

}

}
else
{
	if(input[i]>(23183+offset0))
{
	if(input[i]>(23191+offset0))
{
	if(input[i]>(23195+offset0))
{
	if(input[i]>(23197+offset0))
{
	if(input[i]==(23199+offset0))
{
	vR[i] = 23199;
}
else
{
	vR[i] = 23198;
}

}
else
{
	if(input[i]==(23197+offset0))
{
	vR[i] = 23197;
}
else
{
	vR[i] = 23196;
}

}

}
else
{
	if(input[i]>(23193+offset0))
{
	if(input[i]==(23195+offset0))
{
	vR[i] = 23195;
}
else
{
	vR[i] = 23194;
}

}
else
{
	if(input[i]==(23193+offset0))
{
	vR[i] = 23193;
}
else
{
	vR[i] = 23192;
}

}

}

}
else
{
	if(input[i]>(23187+offset0))
{
	if(input[i]>(23189+offset0))
{
	if(input[i]==(23191+offset0))
{
	vR[i] = 23191;
}
else
{
	vR[i] = 23190;
}

}
else
{
	if(input[i]==(23189+offset0))
{
	vR[i] = 23189;
}
else
{
	vR[i] = 23188;
}

}

}
else
{
	if(input[i]>(23185+offset0))
{
	if(input[i]==(23187+offset0))
{
	vR[i] = 23187;
}
else
{
	vR[i] = 23186;
}

}
else
{
	if(input[i]==(23185+offset0))
{
	vR[i] = 23185;
}
else
{
	vR[i] = 23184;
}

}

}

}

}
else
{
	if(input[i]>(23175+offset0))
{
	if(input[i]>(23179+offset0))
{
	if(input[i]>(23181+offset0))
{
	if(input[i]==(23183+offset0))
{
	vR[i] = 23183;
}
else
{
	vR[i] = 23182;
}

}
else
{
	if(input[i]==(23181+offset0))
{
	vR[i] = 23181;
}
else
{
	vR[i] = 23180;
}

}

}
else
{
	if(input[i]>(23177+offset0))
{
	if(input[i]==(23179+offset0))
{
	vR[i] = 23179;
}
else
{
	vR[i] = 23178;
}

}
else
{
	if(input[i]==(23177+offset0))
{
	vR[i] = 23177;
}
else
{
	vR[i] = 23176;
}

}

}

}
else
{
	if(input[i]>(23171+offset0))
{
	if(input[i]>(23173+offset0))
{
	if(input[i]==(23175+offset0))
{
	vR[i] = 23175;
}
else
{
	vR[i] = 23174;
}

}
else
{
	if(input[i]==(23173+offset0))
{
	vR[i] = 23173;
}
else
{
	vR[i] = 23172;
}

}

}
else
{
	if(input[i]>(23169+offset0))
{
	if(input[i]==(23171+offset0))
{
	vR[i] = 23171;
}
else
{
	vR[i] = 23170;
}

}
else
{
	if(input[i]==(23169+offset0))
{
	vR[i] = 23169;
}
else
{
	vR[i] = 23168;
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
	if(input[i]>(23103+offset0))
{
	if(input[i]>(23135+offset0))
{
	if(input[i]>(23151+offset0))
{
	if(input[i]>(23159+offset0))
{
	if(input[i]>(23163+offset0))
{
	if(input[i]>(23165+offset0))
{
	if(input[i]==(23167+offset0))
{
	vR[i] = 23167;
}
else
{
	vR[i] = 23166;
}

}
else
{
	if(input[i]==(23165+offset0))
{
	vR[i] = 23165;
}
else
{
	vR[i] = 23164;
}

}

}
else
{
	if(input[i]>(23161+offset0))
{
	if(input[i]==(23163+offset0))
{
	vR[i] = 23163;
}
else
{
	vR[i] = 23162;
}

}
else
{
	if(input[i]==(23161+offset0))
{
	vR[i] = 23161;
}
else
{
	vR[i] = 23160;
}

}

}

}
else
{
	if(input[i]>(23155+offset0))
{
	if(input[i]>(23157+offset0))
{
	if(input[i]==(23159+offset0))
{
	vR[i] = 23159;
}
else
{
	vR[i] = 23158;
}

}
else
{
	if(input[i]==(23157+offset0))
{
	vR[i] = 23157;
}
else
{
	vR[i] = 23156;
}

}

}
else
{
	if(input[i]>(23153+offset0))
{
	if(input[i]==(23155+offset0))
{
	vR[i] = 23155;
}
else
{
	vR[i] = 23154;
}

}
else
{
	if(input[i]==(23153+offset0))
{
	vR[i] = 23153;
}
else
{
	vR[i] = 23152;
}

}

}

}

}
else
{
	if(input[i]>(23143+offset0))
{
	if(input[i]>(23147+offset0))
{
	if(input[i]>(23149+offset0))
{
	if(input[i]==(23151+offset0))
{
	vR[i] = 23151;
}
else
{
	vR[i] = 23150;
}

}
else
{
	if(input[i]==(23149+offset0))
{
	vR[i] = 23149;
}
else
{
	vR[i] = 23148;
}

}

}
else
{
	if(input[i]>(23145+offset0))
{
	if(input[i]==(23147+offset0))
{
	vR[i] = 23147;
}
else
{
	vR[i] = 23146;
}

}
else
{
	if(input[i]==(23145+offset0))
{
	vR[i] = 23145;
}
else
{
	vR[i] = 23144;
}

}

}

}
else
{
	if(input[i]>(23139+offset0))
{
	if(input[i]>(23141+offset0))
{
	if(input[i]==(23143+offset0))
{
	vR[i] = 23143;
}
else
{
	vR[i] = 23142;
}

}
else
{
	if(input[i]==(23141+offset0))
{
	vR[i] = 23141;
}
else
{
	vR[i] = 23140;
}

}

}
else
{
	if(input[i]>(23137+offset0))
{
	if(input[i]==(23139+offset0))
{
	vR[i] = 23139;
}
else
{
	vR[i] = 23138;
}

}
else
{
	if(input[i]==(23137+offset0))
{
	vR[i] = 23137;
}
else
{
	vR[i] = 23136;
}

}

}

}

}

}
else
{
	if(input[i]>(23119+offset0))
{
	if(input[i]>(23127+offset0))
{
	if(input[i]>(23131+offset0))
{
	if(input[i]>(23133+offset0))
{
	if(input[i]==(23135+offset0))
{
	vR[i] = 23135;
}
else
{
	vR[i] = 23134;
}

}
else
{
	if(input[i]==(23133+offset0))
{
	vR[i] = 23133;
}
else
{
	vR[i] = 23132;
}

}

}
else
{
	if(input[i]>(23129+offset0))
{
	if(input[i]==(23131+offset0))
{
	vR[i] = 23131;
}
else
{
	vR[i] = 23130;
}

}
else
{
	if(input[i]==(23129+offset0))
{
	vR[i] = 23129;
}
else
{
	vR[i] = 23128;
}

}

}

}
else
{
	if(input[i]>(23123+offset0))
{
	if(input[i]>(23125+offset0))
{
	if(input[i]==(23127+offset0))
{
	vR[i] = 23127;
}
else
{
	vR[i] = 23126;
}

}
else
{
	if(input[i]==(23125+offset0))
{
	vR[i] = 23125;
}
else
{
	vR[i] = 23124;
}

}

}
else
{
	if(input[i]>(23121+offset0))
{
	if(input[i]==(23123+offset0))
{
	vR[i] = 23123;
}
else
{
	vR[i] = 23122;
}

}
else
{
	if(input[i]==(23121+offset0))
{
	vR[i] = 23121;
}
else
{
	vR[i] = 23120;
}

}

}

}

}
else
{
	if(input[i]>(23111+offset0))
{
	if(input[i]>(23115+offset0))
{
	if(input[i]>(23117+offset0))
{
	if(input[i]==(23119+offset0))
{
	vR[i] = 23119;
}
else
{
	vR[i] = 23118;
}

}
else
{
	if(input[i]==(23117+offset0))
{
	vR[i] = 23117;
}
else
{
	vR[i] = 23116;
}

}

}
else
{
	if(input[i]>(23113+offset0))
{
	if(input[i]==(23115+offset0))
{
	vR[i] = 23115;
}
else
{
	vR[i] = 23114;
}

}
else
{
	if(input[i]==(23113+offset0))
{
	vR[i] = 23113;
}
else
{
	vR[i] = 23112;
}

}

}

}
else
{
	if(input[i]>(23107+offset0))
{
	if(input[i]>(23109+offset0))
{
	if(input[i]==(23111+offset0))
{
	vR[i] = 23111;
}
else
{
	vR[i] = 23110;
}

}
else
{
	if(input[i]==(23109+offset0))
{
	vR[i] = 23109;
}
else
{
	vR[i] = 23108;
}

}

}
else
{
	if(input[i]>(23105+offset0))
{
	if(input[i]==(23107+offset0))
{
	vR[i] = 23107;
}
else
{
	vR[i] = 23106;
}

}
else
{
	if(input[i]==(23105+offset0))
{
	vR[i] = 23105;
}
else
{
	vR[i] = 23104;
}

}

}

}

}

}

}
else
{
	if(input[i]>(23071+offset0))
{
	if(input[i]>(23087+offset0))
{
	if(input[i]>(23095+offset0))
{
	if(input[i]>(23099+offset0))
{
	if(input[i]>(23101+offset0))
{
	if(input[i]==(23103+offset0))
{
	vR[i] = 23103;
}
else
{
	vR[i] = 23102;
}

}
else
{
	if(input[i]==(23101+offset0))
{
	vR[i] = 23101;
}
else
{
	vR[i] = 23100;
}

}

}
else
{
	if(input[i]>(23097+offset0))
{
	if(input[i]==(23099+offset0))
{
	vR[i] = 23099;
}
else
{
	vR[i] = 23098;
}

}
else
{
	if(input[i]==(23097+offset0))
{
	vR[i] = 23097;
}
else
{
	vR[i] = 23096;
}

}

}

}
else
{
	if(input[i]>(23091+offset0))
{
	if(input[i]>(23093+offset0))
{
	if(input[i]==(23095+offset0))
{
	vR[i] = 23095;
}
else
{
	vR[i] = 23094;
}

}
else
{
	if(input[i]==(23093+offset0))
{
	vR[i] = 23093;
}
else
{
	vR[i] = 23092;
}

}

}
else
{
	if(input[i]>(23089+offset0))
{
	if(input[i]==(23091+offset0))
{
	vR[i] = 23091;
}
else
{
	vR[i] = 23090;
}

}
else
{
	if(input[i]==(23089+offset0))
{
	vR[i] = 23089;
}
else
{
	vR[i] = 23088;
}

}

}

}

}
else
{
	if(input[i]>(23079+offset0))
{
	if(input[i]>(23083+offset0))
{
	if(input[i]>(23085+offset0))
{
	if(input[i]==(23087+offset0))
{
	vR[i] = 23087;
}
else
{
	vR[i] = 23086;
}

}
else
{
	if(input[i]==(23085+offset0))
{
	vR[i] = 23085;
}
else
{
	vR[i] = 23084;
}

}

}
else
{
	if(input[i]>(23081+offset0))
{
	if(input[i]==(23083+offset0))
{
	vR[i] = 23083;
}
else
{
	vR[i] = 23082;
}

}
else
{
	if(input[i]==(23081+offset0))
{
	vR[i] = 23081;
}
else
{
	vR[i] = 23080;
}

}

}

}
else
{
	if(input[i]>(23075+offset0))
{
	if(input[i]>(23077+offset0))
{
	if(input[i]==(23079+offset0))
{
	vR[i] = 23079;
}
else
{
	vR[i] = 23078;
}

}
else
{
	if(input[i]==(23077+offset0))
{
	vR[i] = 23077;
}
else
{
	vR[i] = 23076;
}

}

}
else
{
	if(input[i]>(23073+offset0))
{
	if(input[i]==(23075+offset0))
{
	vR[i] = 23075;
}
else
{
	vR[i] = 23074;
}

}
else
{
	if(input[i]==(23073+offset0))
{
	vR[i] = 23073;
}
else
{
	vR[i] = 23072;
}

}

}

}

}

}
else
{
	if(input[i]>(23055+offset0))
{
	if(input[i]>(23063+offset0))
{
	if(input[i]>(23067+offset0))
{
	if(input[i]>(23069+offset0))
{
	if(input[i]==(23071+offset0))
{
	vR[i] = 23071;
}
else
{
	vR[i] = 23070;
}

}
else
{
	if(input[i]==(23069+offset0))
{
	vR[i] = 23069;
}
else
{
	vR[i] = 23068;
}

}

}
else
{
	if(input[i]>(23065+offset0))
{
	if(input[i]==(23067+offset0))
{
	vR[i] = 23067;
}
else
{
	vR[i] = 23066;
}

}
else
{
	if(input[i]==(23065+offset0))
{
	vR[i] = 23065;
}
else
{
	vR[i] = 23064;
}

}

}

}
else
{
	if(input[i]>(23059+offset0))
{
	if(input[i]>(23061+offset0))
{
	if(input[i]==(23063+offset0))
{
	vR[i] = 23063;
}
else
{
	vR[i] = 23062;
}

}
else
{
	if(input[i]==(23061+offset0))
{
	vR[i] = 23061;
}
else
{
	vR[i] = 23060;
}

}

}
else
{
	if(input[i]>(23057+offset0))
{
	if(input[i]==(23059+offset0))
{
	vR[i] = 23059;
}
else
{
	vR[i] = 23058;
}

}
else
{
	if(input[i]==(23057+offset0))
{
	vR[i] = 23057;
}
else
{
	vR[i] = 23056;
}

}

}

}

}
else
{
	if(input[i]>(23047+offset0))
{
	if(input[i]>(23051+offset0))
{
	if(input[i]>(23053+offset0))
{
	if(input[i]==(23055+offset0))
{
	vR[i] = 23055;
}
else
{
	vR[i] = 23054;
}

}
else
{
	if(input[i]==(23053+offset0))
{
	vR[i] = 23053;
}
else
{
	vR[i] = 23052;
}

}

}
else
{
	if(input[i]>(23049+offset0))
{
	if(input[i]==(23051+offset0))
{
	vR[i] = 23051;
}
else
{
	vR[i] = 23050;
}

}
else
{
	if(input[i]==(23049+offset0))
{
	vR[i] = 23049;
}
else
{
	vR[i] = 23048;
}

}

}

}
else
{
	if(input[i]>(23043+offset0))
{
	if(input[i]>(23045+offset0))
{
	if(input[i]==(23047+offset0))
{
	vR[i] = 23047;
}
else
{
	vR[i] = 23046;
}

}
else
{
	if(input[i]==(23045+offset0))
{
	vR[i] = 23045;
}
else
{
	vR[i] = 23044;
}

}

}
else
{
	if(input[i]>(23041+offset0))
{
	if(input[i]==(23043+offset0))
{
	vR[i] = 23043;
}
else
{
	vR[i] = 23042;
}

}
else
{
	if(input[i]==(23041+offset0))
{
	vR[i] = 23041;
}
else
{
	vR[i] = 23040;
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
	if(input[i]>(22783+offset0))
{
	if(input[i]>(22911+offset0))
{
	if(input[i]>(22975+offset0))
{
	if(input[i]>(23007+offset0))
{
	if(input[i]>(23023+offset0))
{
	if(input[i]>(23031+offset0))
{
	if(input[i]>(23035+offset0))
{
	if(input[i]>(23037+offset0))
{
	if(input[i]==(23039+offset0))
{
	vR[i] = 23039;
}
else
{
	vR[i] = 23038;
}

}
else
{
	if(input[i]==(23037+offset0))
{
	vR[i] = 23037;
}
else
{
	vR[i] = 23036;
}

}

}
else
{
	if(input[i]>(23033+offset0))
{
	if(input[i]==(23035+offset0))
{
	vR[i] = 23035;
}
else
{
	vR[i] = 23034;
}

}
else
{
	if(input[i]==(23033+offset0))
{
	vR[i] = 23033;
}
else
{
	vR[i] = 23032;
}

}

}

}
else
{
	if(input[i]>(23027+offset0))
{
	if(input[i]>(23029+offset0))
{
	if(input[i]==(23031+offset0))
{
	vR[i] = 23031;
}
else
{
	vR[i] = 23030;
}

}
else
{
	if(input[i]==(23029+offset0))
{
	vR[i] = 23029;
}
else
{
	vR[i] = 23028;
}

}

}
else
{
	if(input[i]>(23025+offset0))
{
	if(input[i]==(23027+offset0))
{
	vR[i] = 23027;
}
else
{
	vR[i] = 23026;
}

}
else
{
	if(input[i]==(23025+offset0))
{
	vR[i] = 23025;
}
else
{
	vR[i] = 23024;
}

}

}

}

}
else
{
	if(input[i]>(23015+offset0))
{
	if(input[i]>(23019+offset0))
{
	if(input[i]>(23021+offset0))
{
	if(input[i]==(23023+offset0))
{
	vR[i] = 23023;
}
else
{
	vR[i] = 23022;
}

}
else
{
	if(input[i]==(23021+offset0))
{
	vR[i] = 23021;
}
else
{
	vR[i] = 23020;
}

}

}
else
{
	if(input[i]>(23017+offset0))
{
	if(input[i]==(23019+offset0))
{
	vR[i] = 23019;
}
else
{
	vR[i] = 23018;
}

}
else
{
	if(input[i]==(23017+offset0))
{
	vR[i] = 23017;
}
else
{
	vR[i] = 23016;
}

}

}

}
else
{
	if(input[i]>(23011+offset0))
{
	if(input[i]>(23013+offset0))
{
	if(input[i]==(23015+offset0))
{
	vR[i] = 23015;
}
else
{
	vR[i] = 23014;
}

}
else
{
	if(input[i]==(23013+offset0))
{
	vR[i] = 23013;
}
else
{
	vR[i] = 23012;
}

}

}
else
{
	if(input[i]>(23009+offset0))
{
	if(input[i]==(23011+offset0))
{
	vR[i] = 23011;
}
else
{
	vR[i] = 23010;
}

}
else
{
	if(input[i]==(23009+offset0))
{
	vR[i] = 23009;
}
else
{
	vR[i] = 23008;
}

}

}

}

}

}
else
{
	if(input[i]>(22991+offset0))
{
	if(input[i]>(22999+offset0))
{
	if(input[i]>(23003+offset0))
{
	if(input[i]>(23005+offset0))
{
	if(input[i]==(23007+offset0))
{
	vR[i] = 23007;
}
else
{
	vR[i] = 23006;
}

}
else
{
	if(input[i]==(23005+offset0))
{
	vR[i] = 23005;
}
else
{
	vR[i] = 23004;
}

}

}
else
{
	if(input[i]>(23001+offset0))
{
	if(input[i]==(23003+offset0))
{
	vR[i] = 23003;
}
else
{
	vR[i] = 23002;
}

}
else
{
	if(input[i]==(23001+offset0))
{
	vR[i] = 23001;
}
else
{
	vR[i] = 23000;
}

}

}

}
else
{
	if(input[i]>(22995+offset0))
{
	if(input[i]>(22997+offset0))
{
	if(input[i]==(22999+offset0))
{
	vR[i] = 22999;
}
else
{
	vR[i] = 22998;
}

}
else
{
	if(input[i]==(22997+offset0))
{
	vR[i] = 22997;
}
else
{
	vR[i] = 22996;
}

}

}
else
{
	if(input[i]>(22993+offset0))
{
	if(input[i]==(22995+offset0))
{
	vR[i] = 22995;
}
else
{
	vR[i] = 22994;
}

}
else
{
	if(input[i]==(22993+offset0))
{
	vR[i] = 22993;
}
else
{
	vR[i] = 22992;
}

}

}

}

}
else
{
	if(input[i]>(22983+offset0))
{
	if(input[i]>(22987+offset0))
{
	if(input[i]>(22989+offset0))
{
	if(input[i]==(22991+offset0))
{
	vR[i] = 22991;
}
else
{
	vR[i] = 22990;
}

}
else
{
	if(input[i]==(22989+offset0))
{
	vR[i] = 22989;
}
else
{
	vR[i] = 22988;
}

}

}
else
{
	if(input[i]>(22985+offset0))
{
	if(input[i]==(22987+offset0))
{
	vR[i] = 22987;
}
else
{
	vR[i] = 22986;
}

}
else
{
	if(input[i]==(22985+offset0))
{
	vR[i] = 22985;
}
else
{
	vR[i] = 22984;
}

}

}

}
else
{
	if(input[i]>(22979+offset0))
{
	if(input[i]>(22981+offset0))
{
	if(input[i]==(22983+offset0))
{
	vR[i] = 22983;
}
else
{
	vR[i] = 22982;
}

}
else
{
	if(input[i]==(22981+offset0))
{
	vR[i] = 22981;
}
else
{
	vR[i] = 22980;
}

}

}
else
{
	if(input[i]>(22977+offset0))
{
	if(input[i]==(22979+offset0))
{
	vR[i] = 22979;
}
else
{
	vR[i] = 22978;
}

}
else
{
	if(input[i]==(22977+offset0))
{
	vR[i] = 22977;
}
else
{
	vR[i] = 22976;
}

}

}

}

}

}

}
else
{
	if(input[i]>(22943+offset0))
{
	if(input[i]>(22959+offset0))
{
	if(input[i]>(22967+offset0))
{
	if(input[i]>(22971+offset0))
{
	if(input[i]>(22973+offset0))
{
	if(input[i]==(22975+offset0))
{
	vR[i] = 22975;
}
else
{
	vR[i] = 22974;
}

}
else
{
	if(input[i]==(22973+offset0))
{
	vR[i] = 22973;
}
else
{
	vR[i] = 22972;
}

}

}
else
{
	if(input[i]>(22969+offset0))
{
	if(input[i]==(22971+offset0))
{
	vR[i] = 22971;
}
else
{
	vR[i] = 22970;
}

}
else
{
	if(input[i]==(22969+offset0))
{
	vR[i] = 22969;
}
else
{
	vR[i] = 22968;
}

}

}

}
else
{
	if(input[i]>(22963+offset0))
{
	if(input[i]>(22965+offset0))
{
	if(input[i]==(22967+offset0))
{
	vR[i] = 22967;
}
else
{
	vR[i] = 22966;
}

}
else
{
	if(input[i]==(22965+offset0))
{
	vR[i] = 22965;
}
else
{
	vR[i] = 22964;
}

}

}
else
{
	if(input[i]>(22961+offset0))
{
	if(input[i]==(22963+offset0))
{
	vR[i] = 22963;
}
else
{
	vR[i] = 22962;
}

}
else
{
	if(input[i]==(22961+offset0))
{
	vR[i] = 22961;
}
else
{
	vR[i] = 22960;
}

}

}

}

}
else
{
	if(input[i]>(22951+offset0))
{
	if(input[i]>(22955+offset0))
{
	if(input[i]>(22957+offset0))
{
	if(input[i]==(22959+offset0))
{
	vR[i] = 22959;
}
else
{
	vR[i] = 22958;
}

}
else
{
	if(input[i]==(22957+offset0))
{
	vR[i] = 22957;
}
else
{
	vR[i] = 22956;
}

}

}
else
{
	if(input[i]>(22953+offset0))
{
	if(input[i]==(22955+offset0))
{
	vR[i] = 22955;
}
else
{
	vR[i] = 22954;
}

}
else
{
	if(input[i]==(22953+offset0))
{
	vR[i] = 22953;
}
else
{
	vR[i] = 22952;
}

}

}

}
else
{
	if(input[i]>(22947+offset0))
{
	if(input[i]>(22949+offset0))
{
	if(input[i]==(22951+offset0))
{
	vR[i] = 22951;
}
else
{
	vR[i] = 22950;
}

}
else
{
	if(input[i]==(22949+offset0))
{
	vR[i] = 22949;
}
else
{
	vR[i] = 22948;
}

}

}
else
{
	if(input[i]>(22945+offset0))
{
	if(input[i]==(22947+offset0))
{
	vR[i] = 22947;
}
else
{
	vR[i] = 22946;
}

}
else
{
	if(input[i]==(22945+offset0))
{
	vR[i] = 22945;
}
else
{
	vR[i] = 22944;
}

}

}

}

}

}
else
{
	if(input[i]>(22927+offset0))
{
	if(input[i]>(22935+offset0))
{
	if(input[i]>(22939+offset0))
{
	if(input[i]>(22941+offset0))
{
	if(input[i]==(22943+offset0))
{
	vR[i] = 22943;
}
else
{
	vR[i] = 22942;
}

}
else
{
	if(input[i]==(22941+offset0))
{
	vR[i] = 22941;
}
else
{
	vR[i] = 22940;
}

}

}
else
{
	if(input[i]>(22937+offset0))
{
	if(input[i]==(22939+offset0))
{
	vR[i] = 22939;
}
else
{
	vR[i] = 22938;
}

}
else
{
	if(input[i]==(22937+offset0))
{
	vR[i] = 22937;
}
else
{
	vR[i] = 22936;
}

}

}

}
else
{
	if(input[i]>(22931+offset0))
{
	if(input[i]>(22933+offset0))
{
	if(input[i]==(22935+offset0))
{
	vR[i] = 22935;
}
else
{
	vR[i] = 22934;
}

}
else
{
	if(input[i]==(22933+offset0))
{
	vR[i] = 22933;
}
else
{
	vR[i] = 22932;
}

}

}
else
{
	if(input[i]>(22929+offset0))
{
	if(input[i]==(22931+offset0))
{
	vR[i] = 22931;
}
else
{
	vR[i] = 22930;
}

}
else
{
	if(input[i]==(22929+offset0))
{
	vR[i] = 22929;
}
else
{
	vR[i] = 22928;
}

}

}

}

}
else
{
	if(input[i]>(22919+offset0))
{
	if(input[i]>(22923+offset0))
{
	if(input[i]>(22925+offset0))
{
	if(input[i]==(22927+offset0))
{
	vR[i] = 22927;
}
else
{
	vR[i] = 22926;
}

}
else
{
	if(input[i]==(22925+offset0))
{
	vR[i] = 22925;
}
else
{
	vR[i] = 22924;
}

}

}
else
{
	if(input[i]>(22921+offset0))
{
	if(input[i]==(22923+offset0))
{
	vR[i] = 22923;
}
else
{
	vR[i] = 22922;
}

}
else
{
	if(input[i]==(22921+offset0))
{
	vR[i] = 22921;
}
else
{
	vR[i] = 22920;
}

}

}

}
else
{
	if(input[i]>(22915+offset0))
{
	if(input[i]>(22917+offset0))
{
	if(input[i]==(22919+offset0))
{
	vR[i] = 22919;
}
else
{
	vR[i] = 22918;
}

}
else
{
	if(input[i]==(22917+offset0))
{
	vR[i] = 22917;
}
else
{
	vR[i] = 22916;
}

}

}
else
{
	if(input[i]>(22913+offset0))
{
	if(input[i]==(22915+offset0))
{
	vR[i] = 22915;
}
else
{
	vR[i] = 22914;
}

}
else
{
	if(input[i]==(22913+offset0))
{
	vR[i] = 22913;
}
else
{
	vR[i] = 22912;
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
	if(input[i]>(22847+offset0))
{
	if(input[i]>(22879+offset0))
{
	if(input[i]>(22895+offset0))
{
	if(input[i]>(22903+offset0))
{
	if(input[i]>(22907+offset0))
{
	if(input[i]>(22909+offset0))
{
	if(input[i]==(22911+offset0))
{
	vR[i] = 22911;
}
else
{
	vR[i] = 22910;
}

}
else
{
	if(input[i]==(22909+offset0))
{
	vR[i] = 22909;
}
else
{
	vR[i] = 22908;
}

}

}
else
{
	if(input[i]>(22905+offset0))
{
	if(input[i]==(22907+offset0))
{
	vR[i] = 22907;
}
else
{
	vR[i] = 22906;
}

}
else
{
	if(input[i]==(22905+offset0))
{
	vR[i] = 22905;
}
else
{
	vR[i] = 22904;
}

}

}

}
else
{
	if(input[i]>(22899+offset0))
{
	if(input[i]>(22901+offset0))
{
	if(input[i]==(22903+offset0))
{
	vR[i] = 22903;
}
else
{
	vR[i] = 22902;
}

}
else
{
	if(input[i]==(22901+offset0))
{
	vR[i] = 22901;
}
else
{
	vR[i] = 22900;
}

}

}
else
{
	if(input[i]>(22897+offset0))
{
	if(input[i]==(22899+offset0))
{
	vR[i] = 22899;
}
else
{
	vR[i] = 22898;
}

}
else
{
	if(input[i]==(22897+offset0))
{
	vR[i] = 22897;
}
else
{
	vR[i] = 22896;
}

}

}

}

}
else
{
	if(input[i]>(22887+offset0))
{
	if(input[i]>(22891+offset0))
{
	if(input[i]>(22893+offset0))
{
	if(input[i]==(22895+offset0))
{
	vR[i] = 22895;
}
else
{
	vR[i] = 22894;
}

}
else
{
	if(input[i]==(22893+offset0))
{
	vR[i] = 22893;
}
else
{
	vR[i] = 22892;
}

}

}
else
{
	if(input[i]>(22889+offset0))
{
	if(input[i]==(22891+offset0))
{
	vR[i] = 22891;
}
else
{
	vR[i] = 22890;
}

}
else
{
	if(input[i]==(22889+offset0))
{
	vR[i] = 22889;
}
else
{
	vR[i] = 22888;
}

}

}

}
else
{
	if(input[i]>(22883+offset0))
{
	if(input[i]>(22885+offset0))
{
	if(input[i]==(22887+offset0))
{
	vR[i] = 22887;
}
else
{
	vR[i] = 22886;
}

}
else
{
	if(input[i]==(22885+offset0))
{
	vR[i] = 22885;
}
else
{
	vR[i] = 22884;
}

}

}
else
{
	if(input[i]>(22881+offset0))
{
	if(input[i]==(22883+offset0))
{
	vR[i] = 22883;
}
else
{
	vR[i] = 22882;
}

}
else
{
	if(input[i]==(22881+offset0))
{
	vR[i] = 22881;
}
else
{
	vR[i] = 22880;
}

}

}

}

}

}
else
{
	if(input[i]>(22863+offset0))
{
	if(input[i]>(22871+offset0))
{
	if(input[i]>(22875+offset0))
{
	if(input[i]>(22877+offset0))
{
	if(input[i]==(22879+offset0))
{
	vR[i] = 22879;
}
else
{
	vR[i] = 22878;
}

}
else
{
	if(input[i]==(22877+offset0))
{
	vR[i] = 22877;
}
else
{
	vR[i] = 22876;
}

}

}
else
{
	if(input[i]>(22873+offset0))
{
	if(input[i]==(22875+offset0))
{
	vR[i] = 22875;
}
else
{
	vR[i] = 22874;
}

}
else
{
	if(input[i]==(22873+offset0))
{
	vR[i] = 22873;
}
else
{
	vR[i] = 22872;
}

}

}

}
else
{
	if(input[i]>(22867+offset0))
{
	if(input[i]>(22869+offset0))
{
	if(input[i]==(22871+offset0))
{
	vR[i] = 22871;
}
else
{
	vR[i] = 22870;
}

}
else
{
	if(input[i]==(22869+offset0))
{
	vR[i] = 22869;
}
else
{
	vR[i] = 22868;
}

}

}
else
{
	if(input[i]>(22865+offset0))
{
	if(input[i]==(22867+offset0))
{
	vR[i] = 22867;
}
else
{
	vR[i] = 22866;
}

}
else
{
	if(input[i]==(22865+offset0))
{
	vR[i] = 22865;
}
else
{
	vR[i] = 22864;
}

}

}

}

}
else
{
	if(input[i]>(22855+offset0))
{
	if(input[i]>(22859+offset0))
{
	if(input[i]>(22861+offset0))
{
	if(input[i]==(22863+offset0))
{
	vR[i] = 22863;
}
else
{
	vR[i] = 22862;
}

}
else
{
	if(input[i]==(22861+offset0))
{
	vR[i] = 22861;
}
else
{
	vR[i] = 22860;
}

}

}
else
{
	if(input[i]>(22857+offset0))
{
	if(input[i]==(22859+offset0))
{
	vR[i] = 22859;
}
else
{
	vR[i] = 22858;
}

}
else
{
	if(input[i]==(22857+offset0))
{
	vR[i] = 22857;
}
else
{
	vR[i] = 22856;
}

}

}

}
else
{
	if(input[i]>(22851+offset0))
{
	if(input[i]>(22853+offset0))
{
	if(input[i]==(22855+offset0))
{
	vR[i] = 22855;
}
else
{
	vR[i] = 22854;
}

}
else
{
	if(input[i]==(22853+offset0))
{
	vR[i] = 22853;
}
else
{
	vR[i] = 22852;
}

}

}
else
{
	if(input[i]>(22849+offset0))
{
	if(input[i]==(22851+offset0))
{
	vR[i] = 22851;
}
else
{
	vR[i] = 22850;
}

}
else
{
	if(input[i]==(22849+offset0))
{
	vR[i] = 22849;
}
else
{
	vR[i] = 22848;
}

}

}

}

}

}

}
else
{
	if(input[i]>(22815+offset0))
{
	if(input[i]>(22831+offset0))
{
	if(input[i]>(22839+offset0))
{
	if(input[i]>(22843+offset0))
{
	if(input[i]>(22845+offset0))
{
	if(input[i]==(22847+offset0))
{
	vR[i] = 22847;
}
else
{
	vR[i] = 22846;
}

}
else
{
	if(input[i]==(22845+offset0))
{
	vR[i] = 22845;
}
else
{
	vR[i] = 22844;
}

}

}
else
{
	if(input[i]>(22841+offset0))
{
	if(input[i]==(22843+offset0))
{
	vR[i] = 22843;
}
else
{
	vR[i] = 22842;
}

}
else
{
	if(input[i]==(22841+offset0))
{
	vR[i] = 22841;
}
else
{
	vR[i] = 22840;
}

}

}

}
else
{
	if(input[i]>(22835+offset0))
{
	if(input[i]>(22837+offset0))
{
	if(input[i]==(22839+offset0))
{
	vR[i] = 22839;
}
else
{
	vR[i] = 22838;
}

}
else
{
	if(input[i]==(22837+offset0))
{
	vR[i] = 22837;
}
else
{
	vR[i] = 22836;
}

}

}
else
{
	if(input[i]>(22833+offset0))
{
	if(input[i]==(22835+offset0))
{
	vR[i] = 22835;
}
else
{
	vR[i] = 22834;
}

}
else
{
	if(input[i]==(22833+offset0))
{
	vR[i] = 22833;
}
else
{
	vR[i] = 22832;
}

}

}

}

}
else
{
	if(input[i]>(22823+offset0))
{
	if(input[i]>(22827+offset0))
{
	if(input[i]>(22829+offset0))
{
	if(input[i]==(22831+offset0))
{
	vR[i] = 22831;
}
else
{
	vR[i] = 22830;
}

}
else
{
	if(input[i]==(22829+offset0))
{
	vR[i] = 22829;
}
else
{
	vR[i] = 22828;
}

}

}
else
{
	if(input[i]>(22825+offset0))
{
	if(input[i]==(22827+offset0))
{
	vR[i] = 22827;
}
else
{
	vR[i] = 22826;
}

}
else
{
	if(input[i]==(22825+offset0))
{
	vR[i] = 22825;
}
else
{
	vR[i] = 22824;
}

}

}

}
else
{
	if(input[i]>(22819+offset0))
{
	if(input[i]>(22821+offset0))
{
	if(input[i]==(22823+offset0))
{
	vR[i] = 22823;
}
else
{
	vR[i] = 22822;
}

}
else
{
	if(input[i]==(22821+offset0))
{
	vR[i] = 22821;
}
else
{
	vR[i] = 22820;
}

}

}
else
{
	if(input[i]>(22817+offset0))
{
	if(input[i]==(22819+offset0))
{
	vR[i] = 22819;
}
else
{
	vR[i] = 22818;
}

}
else
{
	if(input[i]==(22817+offset0))
{
	vR[i] = 22817;
}
else
{
	vR[i] = 22816;
}

}

}

}

}

}
else
{
	if(input[i]>(22799+offset0))
{
	if(input[i]>(22807+offset0))
{
	if(input[i]>(22811+offset0))
{
	if(input[i]>(22813+offset0))
{
	if(input[i]==(22815+offset0))
{
	vR[i] = 22815;
}
else
{
	vR[i] = 22814;
}

}
else
{
	if(input[i]==(22813+offset0))
{
	vR[i] = 22813;
}
else
{
	vR[i] = 22812;
}

}

}
else
{
	if(input[i]>(22809+offset0))
{
	if(input[i]==(22811+offset0))
{
	vR[i] = 22811;
}
else
{
	vR[i] = 22810;
}

}
else
{
	if(input[i]==(22809+offset0))
{
	vR[i] = 22809;
}
else
{
	vR[i] = 22808;
}

}

}

}
else
{
	if(input[i]>(22803+offset0))
{
	if(input[i]>(22805+offset0))
{
	if(input[i]==(22807+offset0))
{
	vR[i] = 22807;
}
else
{
	vR[i] = 22806;
}

}
else
{
	if(input[i]==(22805+offset0))
{
	vR[i] = 22805;
}
else
{
	vR[i] = 22804;
}

}

}
else
{
	if(input[i]>(22801+offset0))
{
	if(input[i]==(22803+offset0))
{
	vR[i] = 22803;
}
else
{
	vR[i] = 22802;
}

}
else
{
	if(input[i]==(22801+offset0))
{
	vR[i] = 22801;
}
else
{
	vR[i] = 22800;
}

}

}

}

}
else
{
	if(input[i]>(22791+offset0))
{
	if(input[i]>(22795+offset0))
{
	if(input[i]>(22797+offset0))
{
	if(input[i]==(22799+offset0))
{
	vR[i] = 22799;
}
else
{
	vR[i] = 22798;
}

}
else
{
	if(input[i]==(22797+offset0))
{
	vR[i] = 22797;
}
else
{
	vR[i] = 22796;
}

}

}
else
{
	if(input[i]>(22793+offset0))
{
	if(input[i]==(22795+offset0))
{
	vR[i] = 22795;
}
else
{
	vR[i] = 22794;
}

}
else
{
	if(input[i]==(22793+offset0))
{
	vR[i] = 22793;
}
else
{
	vR[i] = 22792;
}

}

}

}
else
{
	if(input[i]>(22787+offset0))
{
	if(input[i]>(22789+offset0))
{
	if(input[i]==(22791+offset0))
{
	vR[i] = 22791;
}
else
{
	vR[i] = 22790;
}

}
else
{
	if(input[i]==(22789+offset0))
{
	vR[i] = 22789;
}
else
{
	vR[i] = 22788;
}

}

}
else
{
	if(input[i]>(22785+offset0))
{
	if(input[i]==(22787+offset0))
{
	vR[i] = 22787;
}
else
{
	vR[i] = 22786;
}

}
else
{
	if(input[i]==(22785+offset0))
{
	vR[i] = 22785;
}
else
{
	vR[i] = 22784;
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
	if(input[i]>(22655+offset0))
{
	if(input[i]>(22719+offset0))
{
	if(input[i]>(22751+offset0))
{
	if(input[i]>(22767+offset0))
{
	if(input[i]>(22775+offset0))
{
	if(input[i]>(22779+offset0))
{
	if(input[i]>(22781+offset0))
{
	if(input[i]==(22783+offset0))
{
	vR[i] = 22783;
}
else
{
	vR[i] = 22782;
}

}
else
{
	if(input[i]==(22781+offset0))
{
	vR[i] = 22781;
}
else
{
	vR[i] = 22780;
}

}

}
else
{
	if(input[i]>(22777+offset0))
{
	if(input[i]==(22779+offset0))
{
	vR[i] = 22779;
}
else
{
	vR[i] = 22778;
}

}
else
{
	if(input[i]==(22777+offset0))
{
	vR[i] = 22777;
}
else
{
	vR[i] = 22776;
}

}

}

}
else
{
	if(input[i]>(22771+offset0))
{
	if(input[i]>(22773+offset0))
{
	if(input[i]==(22775+offset0))
{
	vR[i] = 22775;
}
else
{
	vR[i] = 22774;
}

}
else
{
	if(input[i]==(22773+offset0))
{
	vR[i] = 22773;
}
else
{
	vR[i] = 22772;
}

}

}
else
{
	if(input[i]>(22769+offset0))
{
	if(input[i]==(22771+offset0))
{
	vR[i] = 22771;
}
else
{
	vR[i] = 22770;
}

}
else
{
	if(input[i]==(22769+offset0))
{
	vR[i] = 22769;
}
else
{
	vR[i] = 22768;
}

}

}

}

}
else
{
	if(input[i]>(22759+offset0))
{
	if(input[i]>(22763+offset0))
{
	if(input[i]>(22765+offset0))
{
	if(input[i]==(22767+offset0))
{
	vR[i] = 22767;
}
else
{
	vR[i] = 22766;
}

}
else
{
	if(input[i]==(22765+offset0))
{
	vR[i] = 22765;
}
else
{
	vR[i] = 22764;
}

}

}
else
{
	if(input[i]>(22761+offset0))
{
	if(input[i]==(22763+offset0))
{
	vR[i] = 22763;
}
else
{
	vR[i] = 22762;
}

}
else
{
	if(input[i]==(22761+offset0))
{
	vR[i] = 22761;
}
else
{
	vR[i] = 22760;
}

}

}

}
else
{
	if(input[i]>(22755+offset0))
{
	if(input[i]>(22757+offset0))
{
	if(input[i]==(22759+offset0))
{
	vR[i] = 22759;
}
else
{
	vR[i] = 22758;
}

}
else
{
	if(input[i]==(22757+offset0))
{
	vR[i] = 22757;
}
else
{
	vR[i] = 22756;
}

}

}
else
{
	if(input[i]>(22753+offset0))
{
	if(input[i]==(22755+offset0))
{
	vR[i] = 22755;
}
else
{
	vR[i] = 22754;
}

}
else
{
	if(input[i]==(22753+offset0))
{
	vR[i] = 22753;
}
else
{
	vR[i] = 22752;
}

}

}

}

}

}
else
{
	if(input[i]>(22735+offset0))
{
	if(input[i]>(22743+offset0))
{
	if(input[i]>(22747+offset0))
{
	if(input[i]>(22749+offset0))
{
	if(input[i]==(22751+offset0))
{
	vR[i] = 22751;
}
else
{
	vR[i] = 22750;
}

}
else
{
	if(input[i]==(22749+offset0))
{
	vR[i] = 22749;
}
else
{
	vR[i] = 22748;
}

}

}
else
{
	if(input[i]>(22745+offset0))
{
	if(input[i]==(22747+offset0))
{
	vR[i] = 22747;
}
else
{
	vR[i] = 22746;
}

}
else
{
	if(input[i]==(22745+offset0))
{
	vR[i] = 22745;
}
else
{
	vR[i] = 22744;
}

}

}

}
else
{
	if(input[i]>(22739+offset0))
{
	if(input[i]>(22741+offset0))
{
	if(input[i]==(22743+offset0))
{
	vR[i] = 22743;
}
else
{
	vR[i] = 22742;
}

}
else
{
	if(input[i]==(22741+offset0))
{
	vR[i] = 22741;
}
else
{
	vR[i] = 22740;
}

}

}
else
{
	if(input[i]>(22737+offset0))
{
	if(input[i]==(22739+offset0))
{
	vR[i] = 22739;
}
else
{
	vR[i] = 22738;
}

}
else
{
	if(input[i]==(22737+offset0))
{
	vR[i] = 22737;
}
else
{
	vR[i] = 22736;
}

}

}

}

}
else
{
	if(input[i]>(22727+offset0))
{
	if(input[i]>(22731+offset0))
{
	if(input[i]>(22733+offset0))
{
	if(input[i]==(22735+offset0))
{
	vR[i] = 22735;
}
else
{
	vR[i] = 22734;
}

}
else
{
	if(input[i]==(22733+offset0))
{
	vR[i] = 22733;
}
else
{
	vR[i] = 22732;
}

}

}
else
{
	if(input[i]>(22729+offset0))
{
	if(input[i]==(22731+offset0))
{
	vR[i] = 22731;
}
else
{
	vR[i] = 22730;
}

}
else
{
	if(input[i]==(22729+offset0))
{
	vR[i] = 22729;
}
else
{
	vR[i] = 22728;
}

}

}

}
else
{
	if(input[i]>(22723+offset0))
{
	if(input[i]>(22725+offset0))
{
	if(input[i]==(22727+offset0))
{
	vR[i] = 22727;
}
else
{
	vR[i] = 22726;
}

}
else
{
	if(input[i]==(22725+offset0))
{
	vR[i] = 22725;
}
else
{
	vR[i] = 22724;
}

}

}
else
{
	if(input[i]>(22721+offset0))
{
	if(input[i]==(22723+offset0))
{
	vR[i] = 22723;
}
else
{
	vR[i] = 22722;
}

}
else
{
	if(input[i]==(22721+offset0))
{
	vR[i] = 22721;
}
else
{
	vR[i] = 22720;
}

}

}

}

}

}

}
else
{
	if(input[i]>(22687+offset0))
{
	if(input[i]>(22703+offset0))
{
	if(input[i]>(22711+offset0))
{
	if(input[i]>(22715+offset0))
{
	if(input[i]>(22717+offset0))
{
	if(input[i]==(22719+offset0))
{
	vR[i] = 22719;
}
else
{
	vR[i] = 22718;
}

}
else
{
	if(input[i]==(22717+offset0))
{
	vR[i] = 22717;
}
else
{
	vR[i] = 22716;
}

}

}
else
{
	if(input[i]>(22713+offset0))
{
	if(input[i]==(22715+offset0))
{
	vR[i] = 22715;
}
else
{
	vR[i] = 22714;
}

}
else
{
	if(input[i]==(22713+offset0))
{
	vR[i] = 22713;
}
else
{
	vR[i] = 22712;
}

}

}

}
else
{
	if(input[i]>(22707+offset0))
{
	if(input[i]>(22709+offset0))
{
	if(input[i]==(22711+offset0))
{
	vR[i] = 22711;
}
else
{
	vR[i] = 22710;
}

}
else
{
	if(input[i]==(22709+offset0))
{
	vR[i] = 22709;
}
else
{
	vR[i] = 22708;
}

}

}
else
{
	if(input[i]>(22705+offset0))
{
	if(input[i]==(22707+offset0))
{
	vR[i] = 22707;
}
else
{
	vR[i] = 22706;
}

}
else
{
	if(input[i]==(22705+offset0))
{
	vR[i] = 22705;
}
else
{
	vR[i] = 22704;
}

}

}

}

}
else
{
	if(input[i]>(22695+offset0))
{
	if(input[i]>(22699+offset0))
{
	if(input[i]>(22701+offset0))
{
	if(input[i]==(22703+offset0))
{
	vR[i] = 22703;
}
else
{
	vR[i] = 22702;
}

}
else
{
	if(input[i]==(22701+offset0))
{
	vR[i] = 22701;
}
else
{
	vR[i] = 22700;
}

}

}
else
{
	if(input[i]>(22697+offset0))
{
	if(input[i]==(22699+offset0))
{
	vR[i] = 22699;
}
else
{
	vR[i] = 22698;
}

}
else
{
	if(input[i]==(22697+offset0))
{
	vR[i] = 22697;
}
else
{
	vR[i] = 22696;
}

}

}

}
else
{
	if(input[i]>(22691+offset0))
{
	if(input[i]>(22693+offset0))
{
	if(input[i]==(22695+offset0))
{
	vR[i] = 22695;
}
else
{
	vR[i] = 22694;
}

}
else
{
	if(input[i]==(22693+offset0))
{
	vR[i] = 22693;
}
else
{
	vR[i] = 22692;
}

}

}
else
{
	if(input[i]>(22689+offset0))
{
	if(input[i]==(22691+offset0))
{
	vR[i] = 22691;
}
else
{
	vR[i] = 22690;
}

}
else
{
	if(input[i]==(22689+offset0))
{
	vR[i] = 22689;
}
else
{
	vR[i] = 22688;
}

}

}

}

}

}
else
{
	if(input[i]>(22671+offset0))
{
	if(input[i]>(22679+offset0))
{
	if(input[i]>(22683+offset0))
{
	if(input[i]>(22685+offset0))
{
	if(input[i]==(22687+offset0))
{
	vR[i] = 22687;
}
else
{
	vR[i] = 22686;
}

}
else
{
	if(input[i]==(22685+offset0))
{
	vR[i] = 22685;
}
else
{
	vR[i] = 22684;
}

}

}
else
{
	if(input[i]>(22681+offset0))
{
	if(input[i]==(22683+offset0))
{
	vR[i] = 22683;
}
else
{
	vR[i] = 22682;
}

}
else
{
	if(input[i]==(22681+offset0))
{
	vR[i] = 22681;
}
else
{
	vR[i] = 22680;
}

}

}

}
else
{
	if(input[i]>(22675+offset0))
{
	if(input[i]>(22677+offset0))
{
	if(input[i]==(22679+offset0))
{
	vR[i] = 22679;
}
else
{
	vR[i] = 22678;
}

}
else
{
	if(input[i]==(22677+offset0))
{
	vR[i] = 22677;
}
else
{
	vR[i] = 22676;
}

}

}
else
{
	if(input[i]>(22673+offset0))
{
	if(input[i]==(22675+offset0))
{
	vR[i] = 22675;
}
else
{
	vR[i] = 22674;
}

}
else
{
	if(input[i]==(22673+offset0))
{
	vR[i] = 22673;
}
else
{
	vR[i] = 22672;
}

}

}

}

}
else
{
	if(input[i]>(22663+offset0))
{
	if(input[i]>(22667+offset0))
{
	if(input[i]>(22669+offset0))
{
	if(input[i]==(22671+offset0))
{
	vR[i] = 22671;
}
else
{
	vR[i] = 22670;
}

}
else
{
	if(input[i]==(22669+offset0))
{
	vR[i] = 22669;
}
else
{
	vR[i] = 22668;
}

}

}
else
{
	if(input[i]>(22665+offset0))
{
	if(input[i]==(22667+offset0))
{
	vR[i] = 22667;
}
else
{
	vR[i] = 22666;
}

}
else
{
	if(input[i]==(22665+offset0))
{
	vR[i] = 22665;
}
else
{
	vR[i] = 22664;
}

}

}

}
else
{
	if(input[i]>(22659+offset0))
{
	if(input[i]>(22661+offset0))
{
	if(input[i]==(22663+offset0))
{
	vR[i] = 22663;
}
else
{
	vR[i] = 22662;
}

}
else
{
	if(input[i]==(22661+offset0))
{
	vR[i] = 22661;
}
else
{
	vR[i] = 22660;
}

}

}
else
{
	if(input[i]>(22657+offset0))
{
	if(input[i]==(22659+offset0))
{
	vR[i] = 22659;
}
else
{
	vR[i] = 22658;
}

}
else
{
	if(input[i]==(22657+offset0))
{
	vR[i] = 22657;
}
else
{
	vR[i] = 22656;
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
	if(input[i]>(22591+offset0))
{
	if(input[i]>(22623+offset0))
{
	if(input[i]>(22639+offset0))
{
	if(input[i]>(22647+offset0))
{
	if(input[i]>(22651+offset0))
{
	if(input[i]>(22653+offset0))
{
	if(input[i]==(22655+offset0))
{
	vR[i] = 22655;
}
else
{
	vR[i] = 22654;
}

}
else
{
	if(input[i]==(22653+offset0))
{
	vR[i] = 22653;
}
else
{
	vR[i] = 22652;
}

}

}
else
{
	if(input[i]>(22649+offset0))
{
	if(input[i]==(22651+offset0))
{
	vR[i] = 22651;
}
else
{
	vR[i] = 22650;
}

}
else
{
	if(input[i]==(22649+offset0))
{
	vR[i] = 22649;
}
else
{
	vR[i] = 22648;
}

}

}

}
else
{
	if(input[i]>(22643+offset0))
{
	if(input[i]>(22645+offset0))
{
	if(input[i]==(22647+offset0))
{
	vR[i] = 22647;
}
else
{
	vR[i] = 22646;
}

}
else
{
	if(input[i]==(22645+offset0))
{
	vR[i] = 22645;
}
else
{
	vR[i] = 22644;
}

}

}
else
{
	if(input[i]>(22641+offset0))
{
	if(input[i]==(22643+offset0))
{
	vR[i] = 22643;
}
else
{
	vR[i] = 22642;
}

}
else
{
	if(input[i]==(22641+offset0))
{
	vR[i] = 22641;
}
else
{
	vR[i] = 22640;
}

}

}

}

}
else
{
	if(input[i]>(22631+offset0))
{
	if(input[i]>(22635+offset0))
{
	if(input[i]>(22637+offset0))
{
	if(input[i]==(22639+offset0))
{
	vR[i] = 22639;
}
else
{
	vR[i] = 22638;
}

}
else
{
	if(input[i]==(22637+offset0))
{
	vR[i] = 22637;
}
else
{
	vR[i] = 22636;
}

}

}
else
{
	if(input[i]>(22633+offset0))
{
	if(input[i]==(22635+offset0))
{
	vR[i] = 22635;
}
else
{
	vR[i] = 22634;
}

}
else
{
	if(input[i]==(22633+offset0))
{
	vR[i] = 22633;
}
else
{
	vR[i] = 22632;
}

}

}

}
else
{
	if(input[i]>(22627+offset0))
{
	if(input[i]>(22629+offset0))
{
	if(input[i]==(22631+offset0))
{
	vR[i] = 22631;
}
else
{
	vR[i] = 22630;
}

}
else
{
	if(input[i]==(22629+offset0))
{
	vR[i] = 22629;
}
else
{
	vR[i] = 22628;
}

}

}
else
{
	if(input[i]>(22625+offset0))
{
	if(input[i]==(22627+offset0))
{
	vR[i] = 22627;
}
else
{
	vR[i] = 22626;
}

}
else
{
	if(input[i]==(22625+offset0))
{
	vR[i] = 22625;
}
else
{
	vR[i] = 22624;
}

}

}

}

}

}
else
{
	if(input[i]>(22607+offset0))
{
	if(input[i]>(22615+offset0))
{
	if(input[i]>(22619+offset0))
{
	if(input[i]>(22621+offset0))
{
	if(input[i]==(22623+offset0))
{
	vR[i] = 22623;
}
else
{
	vR[i] = 22622;
}

}
else
{
	if(input[i]==(22621+offset0))
{
	vR[i] = 22621;
}
else
{
	vR[i] = 22620;
}

}

}
else
{
	if(input[i]>(22617+offset0))
{
	if(input[i]==(22619+offset0))
{
	vR[i] = 22619;
}
else
{
	vR[i] = 22618;
}

}
else
{
	if(input[i]==(22617+offset0))
{
	vR[i] = 22617;
}
else
{
	vR[i] = 22616;
}

}

}

}
else
{
	if(input[i]>(22611+offset0))
{
	if(input[i]>(22613+offset0))
{
	if(input[i]==(22615+offset0))
{
	vR[i] = 22615;
}
else
{
	vR[i] = 22614;
}

}
else
{
	if(input[i]==(22613+offset0))
{
	vR[i] = 22613;
}
else
{
	vR[i] = 22612;
}

}

}
else
{
	if(input[i]>(22609+offset0))
{
	if(input[i]==(22611+offset0))
{
	vR[i] = 22611;
}
else
{
	vR[i] = 22610;
}

}
else
{
	if(input[i]==(22609+offset0))
{
	vR[i] = 22609;
}
else
{
	vR[i] = 22608;
}

}

}

}

}
else
{
	if(input[i]>(22599+offset0))
{
	if(input[i]>(22603+offset0))
{
	if(input[i]>(22605+offset0))
{
	if(input[i]==(22607+offset0))
{
	vR[i] = 22607;
}
else
{
	vR[i] = 22606;
}

}
else
{
	if(input[i]==(22605+offset0))
{
	vR[i] = 22605;
}
else
{
	vR[i] = 22604;
}

}

}
else
{
	if(input[i]>(22601+offset0))
{
	if(input[i]==(22603+offset0))
{
	vR[i] = 22603;
}
else
{
	vR[i] = 22602;
}

}
else
{
	if(input[i]==(22601+offset0))
{
	vR[i] = 22601;
}
else
{
	vR[i] = 22600;
}

}

}

}
else
{
	if(input[i]>(22595+offset0))
{
	if(input[i]>(22597+offset0))
{
	if(input[i]==(22599+offset0))
{
	vR[i] = 22599;
}
else
{
	vR[i] = 22598;
}

}
else
{
	if(input[i]==(22597+offset0))
{
	vR[i] = 22597;
}
else
{
	vR[i] = 22596;
}

}

}
else
{
	if(input[i]>(22593+offset0))
{
	if(input[i]==(22595+offset0))
{
	vR[i] = 22595;
}
else
{
	vR[i] = 22594;
}

}
else
{
	if(input[i]==(22593+offset0))
{
	vR[i] = 22593;
}
else
{
	vR[i] = 22592;
}

}

}

}

}

}

}
else
{
	if(input[i]>(22559+offset0))
{
	if(input[i]>(22575+offset0))
{
	if(input[i]>(22583+offset0))
{
	if(input[i]>(22587+offset0))
{
	if(input[i]>(22589+offset0))
{
	if(input[i]==(22591+offset0))
{
	vR[i] = 22591;
}
else
{
	vR[i] = 22590;
}

}
else
{
	if(input[i]==(22589+offset0))
{
	vR[i] = 22589;
}
else
{
	vR[i] = 22588;
}

}

}
else
{
	if(input[i]>(22585+offset0))
{
	if(input[i]==(22587+offset0))
{
	vR[i] = 22587;
}
else
{
	vR[i] = 22586;
}

}
else
{
	if(input[i]==(22585+offset0))
{
	vR[i] = 22585;
}
else
{
	vR[i] = 22584;
}

}

}

}
else
{
	if(input[i]>(22579+offset0))
{
	if(input[i]>(22581+offset0))
{
	if(input[i]==(22583+offset0))
{
	vR[i] = 22583;
}
else
{
	vR[i] = 22582;
}

}
else
{
	if(input[i]==(22581+offset0))
{
	vR[i] = 22581;
}
else
{
	vR[i] = 22580;
}

}

}
else
{
	if(input[i]>(22577+offset0))
{
	if(input[i]==(22579+offset0))
{
	vR[i] = 22579;
}
else
{
	vR[i] = 22578;
}

}
else
{
	if(input[i]==(22577+offset0))
{
	vR[i] = 22577;
}
else
{
	vR[i] = 22576;
}

}

}

}

}
else
{
	if(input[i]>(22567+offset0))
{
	if(input[i]>(22571+offset0))
{
	if(input[i]>(22573+offset0))
{
	if(input[i]==(22575+offset0))
{
	vR[i] = 22575;
}
else
{
	vR[i] = 22574;
}

}
else
{
	if(input[i]==(22573+offset0))
{
	vR[i] = 22573;
}
else
{
	vR[i] = 22572;
}

}

}
else
{
	if(input[i]>(22569+offset0))
{
	if(input[i]==(22571+offset0))
{
	vR[i] = 22571;
}
else
{
	vR[i] = 22570;
}

}
else
{
	if(input[i]==(22569+offset0))
{
	vR[i] = 22569;
}
else
{
	vR[i] = 22568;
}

}

}

}
else
{
	if(input[i]>(22563+offset0))
{
	if(input[i]>(22565+offset0))
{
	if(input[i]==(22567+offset0))
{
	vR[i] = 22567;
}
else
{
	vR[i] = 22566;
}

}
else
{
	if(input[i]==(22565+offset0))
{
	vR[i] = 22565;
}
else
{
	vR[i] = 22564;
}

}

}
else
{
	if(input[i]>(22561+offset0))
{
	if(input[i]==(22563+offset0))
{
	vR[i] = 22563;
}
else
{
	vR[i] = 22562;
}

}
else
{
	if(input[i]==(22561+offset0))
{
	vR[i] = 22561;
}
else
{
	vR[i] = 22560;
}

}

}

}

}

}
else
{
	if(input[i]>(22543+offset0))
{
	if(input[i]>(22551+offset0))
{
	if(input[i]>(22555+offset0))
{
	if(input[i]>(22557+offset0))
{
	if(input[i]==(22559+offset0))
{
	vR[i] = 22559;
}
else
{
	vR[i] = 22558;
}

}
else
{
	if(input[i]==(22557+offset0))
{
	vR[i] = 22557;
}
else
{
	vR[i] = 22556;
}

}

}
else
{
	if(input[i]>(22553+offset0))
{
	if(input[i]==(22555+offset0))
{
	vR[i] = 22555;
}
else
{
	vR[i] = 22554;
}

}
else
{
	if(input[i]==(22553+offset0))
{
	vR[i] = 22553;
}
else
{
	vR[i] = 22552;
}

}

}

}
else
{
	if(input[i]>(22547+offset0))
{
	if(input[i]>(22549+offset0))
{
	if(input[i]==(22551+offset0))
{
	vR[i] = 22551;
}
else
{
	vR[i] = 22550;
}

}
else
{
	if(input[i]==(22549+offset0))
{
	vR[i] = 22549;
}
else
{
	vR[i] = 22548;
}

}

}
else
{
	if(input[i]>(22545+offset0))
{
	if(input[i]==(22547+offset0))
{
	vR[i] = 22547;
}
else
{
	vR[i] = 22546;
}

}
else
{
	if(input[i]==(22545+offset0))
{
	vR[i] = 22545;
}
else
{
	vR[i] = 22544;
}

}

}

}

}
else
{
	if(input[i]>(22535+offset0))
{
	if(input[i]>(22539+offset0))
{
	if(input[i]>(22541+offset0))
{
	if(input[i]==(22543+offset0))
{
	vR[i] = 22543;
}
else
{
	vR[i] = 22542;
}

}
else
{
	if(input[i]==(22541+offset0))
{
	vR[i] = 22541;
}
else
{
	vR[i] = 22540;
}

}

}
else
{
	if(input[i]>(22537+offset0))
{
	if(input[i]==(22539+offset0))
{
	vR[i] = 22539;
}
else
{
	vR[i] = 22538;
}

}
else
{
	if(input[i]==(22537+offset0))
{
	vR[i] = 22537;
}
else
{
	vR[i] = 22536;
}

}

}

}
else
{
	if(input[i]>(22531+offset0))
{
	if(input[i]>(22533+offset0))
{
	if(input[i]==(22535+offset0))
{
	vR[i] = 22535;
}
else
{
	vR[i] = 22534;
}

}
else
{
	if(input[i]==(22533+offset0))
{
	vR[i] = 22533;
}
else
{
	vR[i] = 22532;
}

}

}
else
{
	if(input[i]>(22529+offset0))
{
	if(input[i]==(22531+offset0))
{
	vR[i] = 22531;
}
else
{
	vR[i] = 22530;
}

}
else
{
	if(input[i]==(22529+offset0))
{
	vR[i] = 22529;
}
else
{
	vR[i] = 22528;
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
	if(input[i]>(21503+offset0))
{
	if(input[i]>(22015+offset0))
{
	if(input[i]>(22271+offset0))
{
	if(input[i]>(22399+offset0))
{
	if(input[i]>(22463+offset0))
{
	if(input[i]>(22495+offset0))
{
	if(input[i]>(22511+offset0))
{
	if(input[i]>(22519+offset0))
{
	if(input[i]>(22523+offset0))
{
	if(input[i]>(22525+offset0))
{
	if(input[i]==(22527+offset0))
{
	vR[i] = 22527;
}
else
{
	vR[i] = 22526;
}

}
else
{
	if(input[i]==(22525+offset0))
{
	vR[i] = 22525;
}
else
{
	vR[i] = 22524;
}

}

}
else
{
	if(input[i]>(22521+offset0))
{
	if(input[i]==(22523+offset0))
{
	vR[i] = 22523;
}
else
{
	vR[i] = 22522;
}

}
else
{
	if(input[i]==(22521+offset0))
{
	vR[i] = 22521;
}
else
{
	vR[i] = 22520;
}

}

}

}
else
{
	if(input[i]>(22515+offset0))
{
	if(input[i]>(22517+offset0))
{
	if(input[i]==(22519+offset0))
{
	vR[i] = 22519;
}
else
{
	vR[i] = 22518;
}

}
else
{
	if(input[i]==(22517+offset0))
{
	vR[i] = 22517;
}
else
{
	vR[i] = 22516;
}

}

}
else
{
	if(input[i]>(22513+offset0))
{
	if(input[i]==(22515+offset0))
{
	vR[i] = 22515;
}
else
{
	vR[i] = 22514;
}

}
else
{
	if(input[i]==(22513+offset0))
{
	vR[i] = 22513;
}
else
{
	vR[i] = 22512;
}

}

}

}

}
else
{
	if(input[i]>(22503+offset0))
{
	if(input[i]>(22507+offset0))
{
	if(input[i]>(22509+offset0))
{
	if(input[i]==(22511+offset0))
{
	vR[i] = 22511;
}
else
{
	vR[i] = 22510;
}

}
else
{
	if(input[i]==(22509+offset0))
{
	vR[i] = 22509;
}
else
{
	vR[i] = 22508;
}

}

}
else
{
	if(input[i]>(22505+offset0))
{
	if(input[i]==(22507+offset0))
{
	vR[i] = 22507;
}
else
{
	vR[i] = 22506;
}

}
else
{
	if(input[i]==(22505+offset0))
{
	vR[i] = 22505;
}
else
{
	vR[i] = 22504;
}

}

}

}
else
{
	if(input[i]>(22499+offset0))
{
	if(input[i]>(22501+offset0))
{
	if(input[i]==(22503+offset0))
{
	vR[i] = 22503;
}
else
{
	vR[i] = 22502;
}

}
else
{
	if(input[i]==(22501+offset0))
{
	vR[i] = 22501;
}
else
{
	vR[i] = 22500;
}

}

}
else
{
	if(input[i]>(22497+offset0))
{
	if(input[i]==(22499+offset0))
{
	vR[i] = 22499;
}
else
{
	vR[i] = 22498;
}

}
else
{
	if(input[i]==(22497+offset0))
{
	vR[i] = 22497;
}
else
{
	vR[i] = 22496;
}

}

}

}

}

}
else
{
	if(input[i]>(22479+offset0))
{
	if(input[i]>(22487+offset0))
{
	if(input[i]>(22491+offset0))
{
	if(input[i]>(22493+offset0))
{
	if(input[i]==(22495+offset0))
{
	vR[i] = 22495;
}
else
{
	vR[i] = 22494;
}

}
else
{
	if(input[i]==(22493+offset0))
{
	vR[i] = 22493;
}
else
{
	vR[i] = 22492;
}

}

}
else
{
	if(input[i]>(22489+offset0))
{
	if(input[i]==(22491+offset0))
{
	vR[i] = 22491;
}
else
{
	vR[i] = 22490;
}

}
else
{
	if(input[i]==(22489+offset0))
{
	vR[i] = 22489;
}
else
{
	vR[i] = 22488;
}

}

}

}
else
{
	if(input[i]>(22483+offset0))
{
	if(input[i]>(22485+offset0))
{
	if(input[i]==(22487+offset0))
{
	vR[i] = 22487;
}
else
{
	vR[i] = 22486;
}

}
else
{
	if(input[i]==(22485+offset0))
{
	vR[i] = 22485;
}
else
{
	vR[i] = 22484;
}

}

}
else
{
	if(input[i]>(22481+offset0))
{
	if(input[i]==(22483+offset0))
{
	vR[i] = 22483;
}
else
{
	vR[i] = 22482;
}

}
else
{
	if(input[i]==(22481+offset0))
{
	vR[i] = 22481;
}
else
{
	vR[i] = 22480;
}

}

}

}

}
else
{
	if(input[i]>(22471+offset0))
{
	if(input[i]>(22475+offset0))
{
	if(input[i]>(22477+offset0))
{
	if(input[i]==(22479+offset0))
{
	vR[i] = 22479;
}
else
{
	vR[i] = 22478;
}

}
else
{
	if(input[i]==(22477+offset0))
{
	vR[i] = 22477;
}
else
{
	vR[i] = 22476;
}

}

}
else
{
	if(input[i]>(22473+offset0))
{
	if(input[i]==(22475+offset0))
{
	vR[i] = 22475;
}
else
{
	vR[i] = 22474;
}

}
else
{
	if(input[i]==(22473+offset0))
{
	vR[i] = 22473;
}
else
{
	vR[i] = 22472;
}

}

}

}
else
{
	if(input[i]>(22467+offset0))
{
	if(input[i]>(22469+offset0))
{
	if(input[i]==(22471+offset0))
{
	vR[i] = 22471;
}
else
{
	vR[i] = 22470;
}

}
else
{
	if(input[i]==(22469+offset0))
{
	vR[i] = 22469;
}
else
{
	vR[i] = 22468;
}

}

}
else
{
	if(input[i]>(22465+offset0))
{
	if(input[i]==(22467+offset0))
{
	vR[i] = 22467;
}
else
{
	vR[i] = 22466;
}

}
else
{
	if(input[i]==(22465+offset0))
{
	vR[i] = 22465;
}
else
{
	vR[i] = 22464;
}

}

}

}

}

}

}
else
{
	if(input[i]>(22431+offset0))
{
	if(input[i]>(22447+offset0))
{
	if(input[i]>(22455+offset0))
{
	if(input[i]>(22459+offset0))
{
	if(input[i]>(22461+offset0))
{
	if(input[i]==(22463+offset0))
{
	vR[i] = 22463;
}
else
{
	vR[i] = 22462;
}

}
else
{
	if(input[i]==(22461+offset0))
{
	vR[i] = 22461;
}
else
{
	vR[i] = 22460;
}

}

}
else
{
	if(input[i]>(22457+offset0))
{
	if(input[i]==(22459+offset0))
{
	vR[i] = 22459;
}
else
{
	vR[i] = 22458;
}

}
else
{
	if(input[i]==(22457+offset0))
{
	vR[i] = 22457;
}
else
{
	vR[i] = 22456;
}

}

}

}
else
{
	if(input[i]>(22451+offset0))
{
	if(input[i]>(22453+offset0))
{
	if(input[i]==(22455+offset0))
{
	vR[i] = 22455;
}
else
{
	vR[i] = 22454;
}

}
else
{
	if(input[i]==(22453+offset0))
{
	vR[i] = 22453;
}
else
{
	vR[i] = 22452;
}

}

}
else
{
	if(input[i]>(22449+offset0))
{
	if(input[i]==(22451+offset0))
{
	vR[i] = 22451;
}
else
{
	vR[i] = 22450;
}

}
else
{
	if(input[i]==(22449+offset0))
{
	vR[i] = 22449;
}
else
{
	vR[i] = 22448;
}

}

}

}

}
else
{
	if(input[i]>(22439+offset0))
{
	if(input[i]>(22443+offset0))
{
	if(input[i]>(22445+offset0))
{
	if(input[i]==(22447+offset0))
{
	vR[i] = 22447;
}
else
{
	vR[i] = 22446;
}

}
else
{
	if(input[i]==(22445+offset0))
{
	vR[i] = 22445;
}
else
{
	vR[i] = 22444;
}

}

}
else
{
	if(input[i]>(22441+offset0))
{
	if(input[i]==(22443+offset0))
{
	vR[i] = 22443;
}
else
{
	vR[i] = 22442;
}

}
else
{
	if(input[i]==(22441+offset0))
{
	vR[i] = 22441;
}
else
{
	vR[i] = 22440;
}

}

}

}
else
{
	if(input[i]>(22435+offset0))
{
	if(input[i]>(22437+offset0))
{
	if(input[i]==(22439+offset0))
{
	vR[i] = 22439;
}
else
{
	vR[i] = 22438;
}

}
else
{
	if(input[i]==(22437+offset0))
{
	vR[i] = 22437;
}
else
{
	vR[i] = 22436;
}

}

}
else
{
	if(input[i]>(22433+offset0))
{
	if(input[i]==(22435+offset0))
{
	vR[i] = 22435;
}
else
{
	vR[i] = 22434;
}

}
else
{
	if(input[i]==(22433+offset0))
{
	vR[i] = 22433;
}
else
{
	vR[i] = 22432;
}

}

}

}

}

}
else
{
	if(input[i]>(22415+offset0))
{
	if(input[i]>(22423+offset0))
{
	if(input[i]>(22427+offset0))
{
	if(input[i]>(22429+offset0))
{
	if(input[i]==(22431+offset0))
{
	vR[i] = 22431;
}
else
{
	vR[i] = 22430;
}

}
else
{
	if(input[i]==(22429+offset0))
{
	vR[i] = 22429;
}
else
{
	vR[i] = 22428;
}

}

}
else
{
	if(input[i]>(22425+offset0))
{
	if(input[i]==(22427+offset0))
{
	vR[i] = 22427;
}
else
{
	vR[i] = 22426;
}

}
else
{
	if(input[i]==(22425+offset0))
{
	vR[i] = 22425;
}
else
{
	vR[i] = 22424;
}

}

}

}
else
{
	if(input[i]>(22419+offset0))
{
	if(input[i]>(22421+offset0))
{
	if(input[i]==(22423+offset0))
{
	vR[i] = 22423;
}
else
{
	vR[i] = 22422;
}

}
else
{
	if(input[i]==(22421+offset0))
{
	vR[i] = 22421;
}
else
{
	vR[i] = 22420;
}

}

}
else
{
	if(input[i]>(22417+offset0))
{
	if(input[i]==(22419+offset0))
{
	vR[i] = 22419;
}
else
{
	vR[i] = 22418;
}

}
else
{
	if(input[i]==(22417+offset0))
{
	vR[i] = 22417;
}
else
{
	vR[i] = 22416;
}

}

}

}

}
else
{
	if(input[i]>(22407+offset0))
{
	if(input[i]>(22411+offset0))
{
	if(input[i]>(22413+offset0))
{
	if(input[i]==(22415+offset0))
{
	vR[i] = 22415;
}
else
{
	vR[i] = 22414;
}

}
else
{
	if(input[i]==(22413+offset0))
{
	vR[i] = 22413;
}
else
{
	vR[i] = 22412;
}

}

}
else
{
	if(input[i]>(22409+offset0))
{
	if(input[i]==(22411+offset0))
{
	vR[i] = 22411;
}
else
{
	vR[i] = 22410;
}

}
else
{
	if(input[i]==(22409+offset0))
{
	vR[i] = 22409;
}
else
{
	vR[i] = 22408;
}

}

}

}
else
{
	if(input[i]>(22403+offset0))
{
	if(input[i]>(22405+offset0))
{
	if(input[i]==(22407+offset0))
{
	vR[i] = 22407;
}
else
{
	vR[i] = 22406;
}

}
else
{
	if(input[i]==(22405+offset0))
{
	vR[i] = 22405;
}
else
{
	vR[i] = 22404;
}

}

}
else
{
	if(input[i]>(22401+offset0))
{
	if(input[i]==(22403+offset0))
{
	vR[i] = 22403;
}
else
{
	vR[i] = 22402;
}

}
else
{
	if(input[i]==(22401+offset0))
{
	vR[i] = 22401;
}
else
{
	vR[i] = 22400;
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
	if(input[i]>(22335+offset0))
{
	if(input[i]>(22367+offset0))
{
	if(input[i]>(22383+offset0))
{
	if(input[i]>(22391+offset0))
{
	if(input[i]>(22395+offset0))
{
	if(input[i]>(22397+offset0))
{
	if(input[i]==(22399+offset0))
{
	vR[i] = 22399;
}
else
{
	vR[i] = 22398;
}

}
else
{
	if(input[i]==(22397+offset0))
{
	vR[i] = 22397;
}
else
{
	vR[i] = 22396;
}

}

}
else
{
	if(input[i]>(22393+offset0))
{
	if(input[i]==(22395+offset0))
{
	vR[i] = 22395;
}
else
{
	vR[i] = 22394;
}

}
else
{
	if(input[i]==(22393+offset0))
{
	vR[i] = 22393;
}
else
{
	vR[i] = 22392;
}

}

}

}
else
{
	if(input[i]>(22387+offset0))
{
	if(input[i]>(22389+offset0))
{
	if(input[i]==(22391+offset0))
{
	vR[i] = 22391;
}
else
{
	vR[i] = 22390;
}

}
else
{
	if(input[i]==(22389+offset0))
{
	vR[i] = 22389;
}
else
{
	vR[i] = 22388;
}

}

}
else
{
	if(input[i]>(22385+offset0))
{
	if(input[i]==(22387+offset0))
{
	vR[i] = 22387;
}
else
{
	vR[i] = 22386;
}

}
else
{
	if(input[i]==(22385+offset0))
{
	vR[i] = 22385;
}
else
{
	vR[i] = 22384;
}

}

}

}

}
else
{
	if(input[i]>(22375+offset0))
{
	if(input[i]>(22379+offset0))
{
	if(input[i]>(22381+offset0))
{
	if(input[i]==(22383+offset0))
{
	vR[i] = 22383;
}
else
{
	vR[i] = 22382;
}

}
else
{
	if(input[i]==(22381+offset0))
{
	vR[i] = 22381;
}
else
{
	vR[i] = 22380;
}

}

}
else
{
	if(input[i]>(22377+offset0))
{
	if(input[i]==(22379+offset0))
{
	vR[i] = 22379;
}
else
{
	vR[i] = 22378;
}

}
else
{
	if(input[i]==(22377+offset0))
{
	vR[i] = 22377;
}
else
{
	vR[i] = 22376;
}

}

}

}
else
{
	if(input[i]>(22371+offset0))
{
	if(input[i]>(22373+offset0))
{
	if(input[i]==(22375+offset0))
{
	vR[i] = 22375;
}
else
{
	vR[i] = 22374;
}

}
else
{
	if(input[i]==(22373+offset0))
{
	vR[i] = 22373;
}
else
{
	vR[i] = 22372;
}

}

}
else
{
	if(input[i]>(22369+offset0))
{
	if(input[i]==(22371+offset0))
{
	vR[i] = 22371;
}
else
{
	vR[i] = 22370;
}

}
else
{
	if(input[i]==(22369+offset0))
{
	vR[i] = 22369;
}
else
{
	vR[i] = 22368;
}

}

}

}

}

}
else
{
	if(input[i]>(22351+offset0))
{
	if(input[i]>(22359+offset0))
{
	if(input[i]>(22363+offset0))
{
	if(input[i]>(22365+offset0))
{
	if(input[i]==(22367+offset0))
{
	vR[i] = 22367;
}
else
{
	vR[i] = 22366;
}

}
else
{
	if(input[i]==(22365+offset0))
{
	vR[i] = 22365;
}
else
{
	vR[i] = 22364;
}

}

}
else
{
	if(input[i]>(22361+offset0))
{
	if(input[i]==(22363+offset0))
{
	vR[i] = 22363;
}
else
{
	vR[i] = 22362;
}

}
else
{
	if(input[i]==(22361+offset0))
{
	vR[i] = 22361;
}
else
{
	vR[i] = 22360;
}

}

}

}
else
{
	if(input[i]>(22355+offset0))
{
	if(input[i]>(22357+offset0))
{
	if(input[i]==(22359+offset0))
{
	vR[i] = 22359;
}
else
{
	vR[i] = 22358;
}

}
else
{
	if(input[i]==(22357+offset0))
{
	vR[i] = 22357;
}
else
{
	vR[i] = 22356;
}

}

}
else
{
	if(input[i]>(22353+offset0))
{
	if(input[i]==(22355+offset0))
{
	vR[i] = 22355;
}
else
{
	vR[i] = 22354;
}

}
else
{
	if(input[i]==(22353+offset0))
{
	vR[i] = 22353;
}
else
{
	vR[i] = 22352;
}

}

}

}

}
else
{
	if(input[i]>(22343+offset0))
{
	if(input[i]>(22347+offset0))
{
	if(input[i]>(22349+offset0))
{
	if(input[i]==(22351+offset0))
{
	vR[i] = 22351;
}
else
{
	vR[i] = 22350;
}

}
else
{
	if(input[i]==(22349+offset0))
{
	vR[i] = 22349;
}
else
{
	vR[i] = 22348;
}

}

}
else
{
	if(input[i]>(22345+offset0))
{
	if(input[i]==(22347+offset0))
{
	vR[i] = 22347;
}
else
{
	vR[i] = 22346;
}

}
else
{
	if(input[i]==(22345+offset0))
{
	vR[i] = 22345;
}
else
{
	vR[i] = 22344;
}

}

}

}
else
{
	if(input[i]>(22339+offset0))
{
	if(input[i]>(22341+offset0))
{
	if(input[i]==(22343+offset0))
{
	vR[i] = 22343;
}
else
{
	vR[i] = 22342;
}

}
else
{
	if(input[i]==(22341+offset0))
{
	vR[i] = 22341;
}
else
{
	vR[i] = 22340;
}

}

}
else
{
	if(input[i]>(22337+offset0))
{
	if(input[i]==(22339+offset0))
{
	vR[i] = 22339;
}
else
{
	vR[i] = 22338;
}

}
else
{
	if(input[i]==(22337+offset0))
{
	vR[i] = 22337;
}
else
{
	vR[i] = 22336;
}

}

}

}

}

}

}
else
{
	if(input[i]>(22303+offset0))
{
	if(input[i]>(22319+offset0))
{
	if(input[i]>(22327+offset0))
{
	if(input[i]>(22331+offset0))
{
	if(input[i]>(22333+offset0))
{
	if(input[i]==(22335+offset0))
{
	vR[i] = 22335;
}
else
{
	vR[i] = 22334;
}

}
else
{
	if(input[i]==(22333+offset0))
{
	vR[i] = 22333;
}
else
{
	vR[i] = 22332;
}

}

}
else
{
	if(input[i]>(22329+offset0))
{
	if(input[i]==(22331+offset0))
{
	vR[i] = 22331;
}
else
{
	vR[i] = 22330;
}

}
else
{
	if(input[i]==(22329+offset0))
{
	vR[i] = 22329;
}
else
{
	vR[i] = 22328;
}

}

}

}
else
{
	if(input[i]>(22323+offset0))
{
	if(input[i]>(22325+offset0))
{
	if(input[i]==(22327+offset0))
{
	vR[i] = 22327;
}
else
{
	vR[i] = 22326;
}

}
else
{
	if(input[i]==(22325+offset0))
{
	vR[i] = 22325;
}
else
{
	vR[i] = 22324;
}

}

}
else
{
	if(input[i]>(22321+offset0))
{
	if(input[i]==(22323+offset0))
{
	vR[i] = 22323;
}
else
{
	vR[i] = 22322;
}

}
else
{
	if(input[i]==(22321+offset0))
{
	vR[i] = 22321;
}
else
{
	vR[i] = 22320;
}

}

}

}

}
else
{
	if(input[i]>(22311+offset0))
{
	if(input[i]>(22315+offset0))
{
	if(input[i]>(22317+offset0))
{
	if(input[i]==(22319+offset0))
{
	vR[i] = 22319;
}
else
{
	vR[i] = 22318;
}

}
else
{
	if(input[i]==(22317+offset0))
{
	vR[i] = 22317;
}
else
{
	vR[i] = 22316;
}

}

}
else
{
	if(input[i]>(22313+offset0))
{
	if(input[i]==(22315+offset0))
{
	vR[i] = 22315;
}
else
{
	vR[i] = 22314;
}

}
else
{
	if(input[i]==(22313+offset0))
{
	vR[i] = 22313;
}
else
{
	vR[i] = 22312;
}

}

}

}
else
{
	if(input[i]>(22307+offset0))
{
	if(input[i]>(22309+offset0))
{
	if(input[i]==(22311+offset0))
{
	vR[i] = 22311;
}
else
{
	vR[i] = 22310;
}

}
else
{
	if(input[i]==(22309+offset0))
{
	vR[i] = 22309;
}
else
{
	vR[i] = 22308;
}

}

}
else
{
	if(input[i]>(22305+offset0))
{
	if(input[i]==(22307+offset0))
{
	vR[i] = 22307;
}
else
{
	vR[i] = 22306;
}

}
else
{
	if(input[i]==(22305+offset0))
{
	vR[i] = 22305;
}
else
{
	vR[i] = 22304;
}

}

}

}

}

}
else
{
	if(input[i]>(22287+offset0))
{
	if(input[i]>(22295+offset0))
{
	if(input[i]>(22299+offset0))
{
	if(input[i]>(22301+offset0))
{
	if(input[i]==(22303+offset0))
{
	vR[i] = 22303;
}
else
{
	vR[i] = 22302;
}

}
else
{
	if(input[i]==(22301+offset0))
{
	vR[i] = 22301;
}
else
{
	vR[i] = 22300;
}

}

}
else
{
	if(input[i]>(22297+offset0))
{
	if(input[i]==(22299+offset0))
{
	vR[i] = 22299;
}
else
{
	vR[i] = 22298;
}

}
else
{
	if(input[i]==(22297+offset0))
{
	vR[i] = 22297;
}
else
{
	vR[i] = 22296;
}

}

}

}
else
{
	if(input[i]>(22291+offset0))
{
	if(input[i]>(22293+offset0))
{
	if(input[i]==(22295+offset0))
{
	vR[i] = 22295;
}
else
{
	vR[i] = 22294;
}

}
else
{
	if(input[i]==(22293+offset0))
{
	vR[i] = 22293;
}
else
{
	vR[i] = 22292;
}

}

}
else
{
	if(input[i]>(22289+offset0))
{
	if(input[i]==(22291+offset0))
{
	vR[i] = 22291;
}
else
{
	vR[i] = 22290;
}

}
else
{
	if(input[i]==(22289+offset0))
{
	vR[i] = 22289;
}
else
{
	vR[i] = 22288;
}

}

}

}

}
else
{
	if(input[i]>(22279+offset0))
{
	if(input[i]>(22283+offset0))
{
	if(input[i]>(22285+offset0))
{
	if(input[i]==(22287+offset0))
{
	vR[i] = 22287;
}
else
{
	vR[i] = 22286;
}

}
else
{
	if(input[i]==(22285+offset0))
{
	vR[i] = 22285;
}
else
{
	vR[i] = 22284;
}

}

}
else
{
	if(input[i]>(22281+offset0))
{
	if(input[i]==(22283+offset0))
{
	vR[i] = 22283;
}
else
{
	vR[i] = 22282;
}

}
else
{
	if(input[i]==(22281+offset0))
{
	vR[i] = 22281;
}
else
{
	vR[i] = 22280;
}

}

}

}
else
{
	if(input[i]>(22275+offset0))
{
	if(input[i]>(22277+offset0))
{
	if(input[i]==(22279+offset0))
{
	vR[i] = 22279;
}
else
{
	vR[i] = 22278;
}

}
else
{
	if(input[i]==(22277+offset0))
{
	vR[i] = 22277;
}
else
{
	vR[i] = 22276;
}

}

}
else
{
	if(input[i]>(22273+offset0))
{
	if(input[i]==(22275+offset0))
{
	vR[i] = 22275;
}
else
{
	vR[i] = 22274;
}

}
else
{
	if(input[i]==(22273+offset0))
{
	vR[i] = 22273;
}
else
{
	vR[i] = 22272;
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
	if(input[i]>(22143+offset0))
{
	if(input[i]>(22207+offset0))
{
	if(input[i]>(22239+offset0))
{
	if(input[i]>(22255+offset0))
{
	if(input[i]>(22263+offset0))
{
	if(input[i]>(22267+offset0))
{
	if(input[i]>(22269+offset0))
{
	if(input[i]==(22271+offset0))
{
	vR[i] = 22271;
}
else
{
	vR[i] = 22270;
}

}
else
{
	if(input[i]==(22269+offset0))
{
	vR[i] = 22269;
}
else
{
	vR[i] = 22268;
}

}

}
else
{
	if(input[i]>(22265+offset0))
{
	if(input[i]==(22267+offset0))
{
	vR[i] = 22267;
}
else
{
	vR[i] = 22266;
}

}
else
{
	if(input[i]==(22265+offset0))
{
	vR[i] = 22265;
}
else
{
	vR[i] = 22264;
}

}

}

}
else
{
	if(input[i]>(22259+offset0))
{
	if(input[i]>(22261+offset0))
{
	if(input[i]==(22263+offset0))
{
	vR[i] = 22263;
}
else
{
	vR[i] = 22262;
}

}
else
{
	if(input[i]==(22261+offset0))
{
	vR[i] = 22261;
}
else
{
	vR[i] = 22260;
}

}

}
else
{
	if(input[i]>(22257+offset0))
{
	if(input[i]==(22259+offset0))
{
	vR[i] = 22259;
}
else
{
	vR[i] = 22258;
}

}
else
{
	if(input[i]==(22257+offset0))
{
	vR[i] = 22257;
}
else
{
	vR[i] = 22256;
}

}

}

}

}
else
{
	if(input[i]>(22247+offset0))
{
	if(input[i]>(22251+offset0))
{
	if(input[i]>(22253+offset0))
{
	if(input[i]==(22255+offset0))
{
	vR[i] = 22255;
}
else
{
	vR[i] = 22254;
}

}
else
{
	if(input[i]==(22253+offset0))
{
	vR[i] = 22253;
}
else
{
	vR[i] = 22252;
}

}

}
else
{
	if(input[i]>(22249+offset0))
{
	if(input[i]==(22251+offset0))
{
	vR[i] = 22251;
}
else
{
	vR[i] = 22250;
}

}
else
{
	if(input[i]==(22249+offset0))
{
	vR[i] = 22249;
}
else
{
	vR[i] = 22248;
}

}

}

}
else
{
	if(input[i]>(22243+offset0))
{
	if(input[i]>(22245+offset0))
{
	if(input[i]==(22247+offset0))
{
	vR[i] = 22247;
}
else
{
	vR[i] = 22246;
}

}
else
{
	if(input[i]==(22245+offset0))
{
	vR[i] = 22245;
}
else
{
	vR[i] = 22244;
}

}

}
else
{
	if(input[i]>(22241+offset0))
{
	if(input[i]==(22243+offset0))
{
	vR[i] = 22243;
}
else
{
	vR[i] = 22242;
}

}
else
{
	if(input[i]==(22241+offset0))
{
	vR[i] = 22241;
}
else
{
	vR[i] = 22240;
}

}

}

}

}

}
else
{
	if(input[i]>(22223+offset0))
{
	if(input[i]>(22231+offset0))
{
	if(input[i]>(22235+offset0))
{
	if(input[i]>(22237+offset0))
{
	if(input[i]==(22239+offset0))
{
	vR[i] = 22239;
}
else
{
	vR[i] = 22238;
}

}
else
{
	if(input[i]==(22237+offset0))
{
	vR[i] = 22237;
}
else
{
	vR[i] = 22236;
}

}

}
else
{
	if(input[i]>(22233+offset0))
{
	if(input[i]==(22235+offset0))
{
	vR[i] = 22235;
}
else
{
	vR[i] = 22234;
}

}
else
{
	if(input[i]==(22233+offset0))
{
	vR[i] = 22233;
}
else
{
	vR[i] = 22232;
}

}

}

}
else
{
	if(input[i]>(22227+offset0))
{
	if(input[i]>(22229+offset0))
{
	if(input[i]==(22231+offset0))
{
	vR[i] = 22231;
}
else
{
	vR[i] = 22230;
}

}
else
{
	if(input[i]==(22229+offset0))
{
	vR[i] = 22229;
}
else
{
	vR[i] = 22228;
}

}

}
else
{
	if(input[i]>(22225+offset0))
{
	if(input[i]==(22227+offset0))
{
	vR[i] = 22227;
}
else
{
	vR[i] = 22226;
}

}
else
{
	if(input[i]==(22225+offset0))
{
	vR[i] = 22225;
}
else
{
	vR[i] = 22224;
}

}

}

}

}
else
{
	if(input[i]>(22215+offset0))
{
	if(input[i]>(22219+offset0))
{
	if(input[i]>(22221+offset0))
{
	if(input[i]==(22223+offset0))
{
	vR[i] = 22223;
}
else
{
	vR[i] = 22222;
}

}
else
{
	if(input[i]==(22221+offset0))
{
	vR[i] = 22221;
}
else
{
	vR[i] = 22220;
}

}

}
else
{
	if(input[i]>(22217+offset0))
{
	if(input[i]==(22219+offset0))
{
	vR[i] = 22219;
}
else
{
	vR[i] = 22218;
}

}
else
{
	if(input[i]==(22217+offset0))
{
	vR[i] = 22217;
}
else
{
	vR[i] = 22216;
}

}

}

}
else
{
	if(input[i]>(22211+offset0))
{
	if(input[i]>(22213+offset0))
{
	if(input[i]==(22215+offset0))
{
	vR[i] = 22215;
}
else
{
	vR[i] = 22214;
}

}
else
{
	if(input[i]==(22213+offset0))
{
	vR[i] = 22213;
}
else
{
	vR[i] = 22212;
}

}

}
else
{
	if(input[i]>(22209+offset0))
{
	if(input[i]==(22211+offset0))
{
	vR[i] = 22211;
}
else
{
	vR[i] = 22210;
}

}
else
{
	if(input[i]==(22209+offset0))
{
	vR[i] = 22209;
}
else
{
	vR[i] = 22208;
}

}

}

}

}

}

}
else
{
	if(input[i]>(22175+offset0))
{
	if(input[i]>(22191+offset0))
{
	if(input[i]>(22199+offset0))
{
	if(input[i]>(22203+offset0))
{
	if(input[i]>(22205+offset0))
{
	if(input[i]==(22207+offset0))
{
	vR[i] = 22207;
}
else
{
	vR[i] = 22206;
}

}
else
{
	if(input[i]==(22205+offset0))
{
	vR[i] = 22205;
}
else
{
	vR[i] = 22204;
}

}

}
else
{
	if(input[i]>(22201+offset0))
{
	if(input[i]==(22203+offset0))
{
	vR[i] = 22203;
}
else
{
	vR[i] = 22202;
}

}
else
{
	if(input[i]==(22201+offset0))
{
	vR[i] = 22201;
}
else
{
	vR[i] = 22200;
}

}

}

}
else
{
	if(input[i]>(22195+offset0))
{
	if(input[i]>(22197+offset0))
{
	if(input[i]==(22199+offset0))
{
	vR[i] = 22199;
}
else
{
	vR[i] = 22198;
}

}
else
{
	if(input[i]==(22197+offset0))
{
	vR[i] = 22197;
}
else
{
	vR[i] = 22196;
}

}

}
else
{
	if(input[i]>(22193+offset0))
{
	if(input[i]==(22195+offset0))
{
	vR[i] = 22195;
}
else
{
	vR[i] = 22194;
}

}
else
{
	if(input[i]==(22193+offset0))
{
	vR[i] = 22193;
}
else
{
	vR[i] = 22192;
}

}

}

}

}
else
{
	if(input[i]>(22183+offset0))
{
	if(input[i]>(22187+offset0))
{
	if(input[i]>(22189+offset0))
{
	if(input[i]==(22191+offset0))
{
	vR[i] = 22191;
}
else
{
	vR[i] = 22190;
}

}
else
{
	if(input[i]==(22189+offset0))
{
	vR[i] = 22189;
}
else
{
	vR[i] = 22188;
}

}

}
else
{
	if(input[i]>(22185+offset0))
{
	if(input[i]==(22187+offset0))
{
	vR[i] = 22187;
}
else
{
	vR[i] = 22186;
}

}
else
{
	if(input[i]==(22185+offset0))
{
	vR[i] = 22185;
}
else
{
	vR[i] = 22184;
}

}

}

}
else
{
	if(input[i]>(22179+offset0))
{
	if(input[i]>(22181+offset0))
{
	if(input[i]==(22183+offset0))
{
	vR[i] = 22183;
}
else
{
	vR[i] = 22182;
}

}
else
{
	if(input[i]==(22181+offset0))
{
	vR[i] = 22181;
}
else
{
	vR[i] = 22180;
}

}

}
else
{
	if(input[i]>(22177+offset0))
{
	if(input[i]==(22179+offset0))
{
	vR[i] = 22179;
}
else
{
	vR[i] = 22178;
}

}
else
{
	if(input[i]==(22177+offset0))
{
	vR[i] = 22177;
}
else
{
	vR[i] = 22176;
}

}

}

}

}

}
else
{
	if(input[i]>(22159+offset0))
{
	if(input[i]>(22167+offset0))
{
	if(input[i]>(22171+offset0))
{
	if(input[i]>(22173+offset0))
{
	if(input[i]==(22175+offset0))
{
	vR[i] = 22175;
}
else
{
	vR[i] = 22174;
}

}
else
{
	if(input[i]==(22173+offset0))
{
	vR[i] = 22173;
}
else
{
	vR[i] = 22172;
}

}

}
else
{
	if(input[i]>(22169+offset0))
{
	if(input[i]==(22171+offset0))
{
	vR[i] = 22171;
}
else
{
	vR[i] = 22170;
}

}
else
{
	if(input[i]==(22169+offset0))
{
	vR[i] = 22169;
}
else
{
	vR[i] = 22168;
}

}

}

}
else
{
	if(input[i]>(22163+offset0))
{
	if(input[i]>(22165+offset0))
{
	if(input[i]==(22167+offset0))
{
	vR[i] = 22167;
}
else
{
	vR[i] = 22166;
}

}
else
{
	if(input[i]==(22165+offset0))
{
	vR[i] = 22165;
}
else
{
	vR[i] = 22164;
}

}

}
else
{
	if(input[i]>(22161+offset0))
{
	if(input[i]==(22163+offset0))
{
	vR[i] = 22163;
}
else
{
	vR[i] = 22162;
}

}
else
{
	if(input[i]==(22161+offset0))
{
	vR[i] = 22161;
}
else
{
	vR[i] = 22160;
}

}

}

}

}
else
{
	if(input[i]>(22151+offset0))
{
	if(input[i]>(22155+offset0))
{
	if(input[i]>(22157+offset0))
{
	if(input[i]==(22159+offset0))
{
	vR[i] = 22159;
}
else
{
	vR[i] = 22158;
}

}
else
{
	if(input[i]==(22157+offset0))
{
	vR[i] = 22157;
}
else
{
	vR[i] = 22156;
}

}

}
else
{
	if(input[i]>(22153+offset0))
{
	if(input[i]==(22155+offset0))
{
	vR[i] = 22155;
}
else
{
	vR[i] = 22154;
}

}
else
{
	if(input[i]==(22153+offset0))
{
	vR[i] = 22153;
}
else
{
	vR[i] = 22152;
}

}

}

}
else
{
	if(input[i]>(22147+offset0))
{
	if(input[i]>(22149+offset0))
{
	if(input[i]==(22151+offset0))
{
	vR[i] = 22151;
}
else
{
	vR[i] = 22150;
}

}
else
{
	if(input[i]==(22149+offset0))
{
	vR[i] = 22149;
}
else
{
	vR[i] = 22148;
}

}

}
else
{
	if(input[i]>(22145+offset0))
{
	if(input[i]==(22147+offset0))
{
	vR[i] = 22147;
}
else
{
	vR[i] = 22146;
}

}
else
{
	if(input[i]==(22145+offset0))
{
	vR[i] = 22145;
}
else
{
	vR[i] = 22144;
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
	if(input[i]>(22079+offset0))
{
	if(input[i]>(22111+offset0))
{
	if(input[i]>(22127+offset0))
{
	if(input[i]>(22135+offset0))
{
	if(input[i]>(22139+offset0))
{
	if(input[i]>(22141+offset0))
{
	if(input[i]==(22143+offset0))
{
	vR[i] = 22143;
}
else
{
	vR[i] = 22142;
}

}
else
{
	if(input[i]==(22141+offset0))
{
	vR[i] = 22141;
}
else
{
	vR[i] = 22140;
}

}

}
else
{
	if(input[i]>(22137+offset0))
{
	if(input[i]==(22139+offset0))
{
	vR[i] = 22139;
}
else
{
	vR[i] = 22138;
}

}
else
{
	if(input[i]==(22137+offset0))
{
	vR[i] = 22137;
}
else
{
	vR[i] = 22136;
}

}

}

}
else
{
	if(input[i]>(22131+offset0))
{
	if(input[i]>(22133+offset0))
{
	if(input[i]==(22135+offset0))
{
	vR[i] = 22135;
}
else
{
	vR[i] = 22134;
}

}
else
{
	if(input[i]==(22133+offset0))
{
	vR[i] = 22133;
}
else
{
	vR[i] = 22132;
}

}

}
else
{
	if(input[i]>(22129+offset0))
{
	if(input[i]==(22131+offset0))
{
	vR[i] = 22131;
}
else
{
	vR[i] = 22130;
}

}
else
{
	if(input[i]==(22129+offset0))
{
	vR[i] = 22129;
}
else
{
	vR[i] = 22128;
}

}

}

}

}
else
{
	if(input[i]>(22119+offset0))
{
	if(input[i]>(22123+offset0))
{
	if(input[i]>(22125+offset0))
{
	if(input[i]==(22127+offset0))
{
	vR[i] = 22127;
}
else
{
	vR[i] = 22126;
}

}
else
{
	if(input[i]==(22125+offset0))
{
	vR[i] = 22125;
}
else
{
	vR[i] = 22124;
}

}

}
else
{
	if(input[i]>(22121+offset0))
{
	if(input[i]==(22123+offset0))
{
	vR[i] = 22123;
}
else
{
	vR[i] = 22122;
}

}
else
{
	if(input[i]==(22121+offset0))
{
	vR[i] = 22121;
}
else
{
	vR[i] = 22120;
}

}

}

}
else
{
	if(input[i]>(22115+offset0))
{
	if(input[i]>(22117+offset0))
{
	if(input[i]==(22119+offset0))
{
	vR[i] = 22119;
}
else
{
	vR[i] = 22118;
}

}
else
{
	if(input[i]==(22117+offset0))
{
	vR[i] = 22117;
}
else
{
	vR[i] = 22116;
}

}

}
else
{
	if(input[i]>(22113+offset0))
{
	if(input[i]==(22115+offset0))
{
	vR[i] = 22115;
}
else
{
	vR[i] = 22114;
}

}
else
{
	if(input[i]==(22113+offset0))
{
	vR[i] = 22113;
}
else
{
	vR[i] = 22112;
}

}

}

}

}

}
else
{
	if(input[i]>(22095+offset0))
{
	if(input[i]>(22103+offset0))
{
	if(input[i]>(22107+offset0))
{
	if(input[i]>(22109+offset0))
{
	if(input[i]==(22111+offset0))
{
	vR[i] = 22111;
}
else
{
	vR[i] = 22110;
}

}
else
{
	if(input[i]==(22109+offset0))
{
	vR[i] = 22109;
}
else
{
	vR[i] = 22108;
}

}

}
else
{
	if(input[i]>(22105+offset0))
{
	if(input[i]==(22107+offset0))
{
	vR[i] = 22107;
}
else
{
	vR[i] = 22106;
}

}
else
{
	if(input[i]==(22105+offset0))
{
	vR[i] = 22105;
}
else
{
	vR[i] = 22104;
}

}

}

}
else
{
	if(input[i]>(22099+offset0))
{
	if(input[i]>(22101+offset0))
{
	if(input[i]==(22103+offset0))
{
	vR[i] = 22103;
}
else
{
	vR[i] = 22102;
}

}
else
{
	if(input[i]==(22101+offset0))
{
	vR[i] = 22101;
}
else
{
	vR[i] = 22100;
}

}

}
else
{
	if(input[i]>(22097+offset0))
{
	if(input[i]==(22099+offset0))
{
	vR[i] = 22099;
}
else
{
	vR[i] = 22098;
}

}
else
{
	if(input[i]==(22097+offset0))
{
	vR[i] = 22097;
}
else
{
	vR[i] = 22096;
}

}

}

}

}
else
{
	if(input[i]>(22087+offset0))
{
	if(input[i]>(22091+offset0))
{
	if(input[i]>(22093+offset0))
{
	if(input[i]==(22095+offset0))
{
	vR[i] = 22095;
}
else
{
	vR[i] = 22094;
}

}
else
{
	if(input[i]==(22093+offset0))
{
	vR[i] = 22093;
}
else
{
	vR[i] = 22092;
}

}

}
else
{
	if(input[i]>(22089+offset0))
{
	if(input[i]==(22091+offset0))
{
	vR[i] = 22091;
}
else
{
	vR[i] = 22090;
}

}
else
{
	if(input[i]==(22089+offset0))
{
	vR[i] = 22089;
}
else
{
	vR[i] = 22088;
}

}

}

}
else
{
	if(input[i]>(22083+offset0))
{
	if(input[i]>(22085+offset0))
{
	if(input[i]==(22087+offset0))
{
	vR[i] = 22087;
}
else
{
	vR[i] = 22086;
}

}
else
{
	if(input[i]==(22085+offset0))
{
	vR[i] = 22085;
}
else
{
	vR[i] = 22084;
}

}

}
else
{
	if(input[i]>(22081+offset0))
{
	if(input[i]==(22083+offset0))
{
	vR[i] = 22083;
}
else
{
	vR[i] = 22082;
}

}
else
{
	if(input[i]==(22081+offset0))
{
	vR[i] = 22081;
}
else
{
	vR[i] = 22080;
}

}

}

}

}

}

}
else
{
	if(input[i]>(22047+offset0))
{
	if(input[i]>(22063+offset0))
{
	if(input[i]>(22071+offset0))
{
	if(input[i]>(22075+offset0))
{
	if(input[i]>(22077+offset0))
{
	if(input[i]==(22079+offset0))
{
	vR[i] = 22079;
}
else
{
	vR[i] = 22078;
}

}
else
{
	if(input[i]==(22077+offset0))
{
	vR[i] = 22077;
}
else
{
	vR[i] = 22076;
}

}

}
else
{
	if(input[i]>(22073+offset0))
{
	if(input[i]==(22075+offset0))
{
	vR[i] = 22075;
}
else
{
	vR[i] = 22074;
}

}
else
{
	if(input[i]==(22073+offset0))
{
	vR[i] = 22073;
}
else
{
	vR[i] = 22072;
}

}

}

}
else
{
	if(input[i]>(22067+offset0))
{
	if(input[i]>(22069+offset0))
{
	if(input[i]==(22071+offset0))
{
	vR[i] = 22071;
}
else
{
	vR[i] = 22070;
}

}
else
{
	if(input[i]==(22069+offset0))
{
	vR[i] = 22069;
}
else
{
	vR[i] = 22068;
}

}

}
else
{
	if(input[i]>(22065+offset0))
{
	if(input[i]==(22067+offset0))
{
	vR[i] = 22067;
}
else
{
	vR[i] = 22066;
}

}
else
{
	if(input[i]==(22065+offset0))
{
	vR[i] = 22065;
}
else
{
	vR[i] = 22064;
}

}

}

}

}
else
{
	if(input[i]>(22055+offset0))
{
	if(input[i]>(22059+offset0))
{
	if(input[i]>(22061+offset0))
{
	if(input[i]==(22063+offset0))
{
	vR[i] = 22063;
}
else
{
	vR[i] = 22062;
}

}
else
{
	if(input[i]==(22061+offset0))
{
	vR[i] = 22061;
}
else
{
	vR[i] = 22060;
}

}

}
else
{
	if(input[i]>(22057+offset0))
{
	if(input[i]==(22059+offset0))
{
	vR[i] = 22059;
}
else
{
	vR[i] = 22058;
}

}
else
{
	if(input[i]==(22057+offset0))
{
	vR[i] = 22057;
}
else
{
	vR[i] = 22056;
}

}

}

}
else
{
	if(input[i]>(22051+offset0))
{
	if(input[i]>(22053+offset0))
{
	if(input[i]==(22055+offset0))
{
	vR[i] = 22055;
}
else
{
	vR[i] = 22054;
}

}
else
{
	if(input[i]==(22053+offset0))
{
	vR[i] = 22053;
}
else
{
	vR[i] = 22052;
}

}

}
else
{
	if(input[i]>(22049+offset0))
{
	if(input[i]==(22051+offset0))
{
	vR[i] = 22051;
}
else
{
	vR[i] = 22050;
}

}
else
{
	if(input[i]==(22049+offset0))
{
	vR[i] = 22049;
}
else
{
	vR[i] = 22048;
}

}

}

}

}

}
else
{
	if(input[i]>(22031+offset0))
{
	if(input[i]>(22039+offset0))
{
	if(input[i]>(22043+offset0))
{
	if(input[i]>(22045+offset0))
{
	if(input[i]==(22047+offset0))
{
	vR[i] = 22047;
}
else
{
	vR[i] = 22046;
}

}
else
{
	if(input[i]==(22045+offset0))
{
	vR[i] = 22045;
}
else
{
	vR[i] = 22044;
}

}

}
else
{
	if(input[i]>(22041+offset0))
{
	if(input[i]==(22043+offset0))
{
	vR[i] = 22043;
}
else
{
	vR[i] = 22042;
}

}
else
{
	if(input[i]==(22041+offset0))
{
	vR[i] = 22041;
}
else
{
	vR[i] = 22040;
}

}

}

}
else
{
	if(input[i]>(22035+offset0))
{
	if(input[i]>(22037+offset0))
{
	if(input[i]==(22039+offset0))
{
	vR[i] = 22039;
}
else
{
	vR[i] = 22038;
}

}
else
{
	if(input[i]==(22037+offset0))
{
	vR[i] = 22037;
}
else
{
	vR[i] = 22036;
}

}

}
else
{
	if(input[i]>(22033+offset0))
{
	if(input[i]==(22035+offset0))
{
	vR[i] = 22035;
}
else
{
	vR[i] = 22034;
}

}
else
{
	if(input[i]==(22033+offset0))
{
	vR[i] = 22033;
}
else
{
	vR[i] = 22032;
}

}

}

}

}
else
{
	if(input[i]>(22023+offset0))
{
	if(input[i]>(22027+offset0))
{
	if(input[i]>(22029+offset0))
{
	if(input[i]==(22031+offset0))
{
	vR[i] = 22031;
}
else
{
	vR[i] = 22030;
}

}
else
{
	if(input[i]==(22029+offset0))
{
	vR[i] = 22029;
}
else
{
	vR[i] = 22028;
}

}

}
else
{
	if(input[i]>(22025+offset0))
{
	if(input[i]==(22027+offset0))
{
	vR[i] = 22027;
}
else
{
	vR[i] = 22026;
}

}
else
{
	if(input[i]==(22025+offset0))
{
	vR[i] = 22025;
}
else
{
	vR[i] = 22024;
}

}

}

}
else
{
	if(input[i]>(22019+offset0))
{
	if(input[i]>(22021+offset0))
{
	if(input[i]==(22023+offset0))
{
	vR[i] = 22023;
}
else
{
	vR[i] = 22022;
}

}
else
{
	if(input[i]==(22021+offset0))
{
	vR[i] = 22021;
}
else
{
	vR[i] = 22020;
}

}

}
else
{
	if(input[i]>(22017+offset0))
{
	if(input[i]==(22019+offset0))
{
	vR[i] = 22019;
}
else
{
	vR[i] = 22018;
}

}
else
{
	if(input[i]==(22017+offset0))
{
	vR[i] = 22017;
}
else
{
	vR[i] = 22016;
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
	if(input[i]>(21759+offset0))
{
	if(input[i]>(21887+offset0))
{
	if(input[i]>(21951+offset0))
{
	if(input[i]>(21983+offset0))
{
	if(input[i]>(21999+offset0))
{
	if(input[i]>(22007+offset0))
{
	if(input[i]>(22011+offset0))
{
	if(input[i]>(22013+offset0))
{
	if(input[i]==(22015+offset0))
{
	vR[i] = 22015;
}
else
{
	vR[i] = 22014;
}

}
else
{
	if(input[i]==(22013+offset0))
{
	vR[i] = 22013;
}
else
{
	vR[i] = 22012;
}

}

}
else
{
	if(input[i]>(22009+offset0))
{
	if(input[i]==(22011+offset0))
{
	vR[i] = 22011;
}
else
{
	vR[i] = 22010;
}

}
else
{
	if(input[i]==(22009+offset0))
{
	vR[i] = 22009;
}
else
{
	vR[i] = 22008;
}

}

}

}
else
{
	if(input[i]>(22003+offset0))
{
	if(input[i]>(22005+offset0))
{
	if(input[i]==(22007+offset0))
{
	vR[i] = 22007;
}
else
{
	vR[i] = 22006;
}

}
else
{
	if(input[i]==(22005+offset0))
{
	vR[i] = 22005;
}
else
{
	vR[i] = 22004;
}

}

}
else
{
	if(input[i]>(22001+offset0))
{
	if(input[i]==(22003+offset0))
{
	vR[i] = 22003;
}
else
{
	vR[i] = 22002;
}

}
else
{
	if(input[i]==(22001+offset0))
{
	vR[i] = 22001;
}
else
{
	vR[i] = 22000;
}

}

}

}

}
else
{
	if(input[i]>(21991+offset0))
{
	if(input[i]>(21995+offset0))
{
	if(input[i]>(21997+offset0))
{
	if(input[i]==(21999+offset0))
{
	vR[i] = 21999;
}
else
{
	vR[i] = 21998;
}

}
else
{
	if(input[i]==(21997+offset0))
{
	vR[i] = 21997;
}
else
{
	vR[i] = 21996;
}

}

}
else
{
	if(input[i]>(21993+offset0))
{
	if(input[i]==(21995+offset0))
{
	vR[i] = 21995;
}
else
{
	vR[i] = 21994;
}

}
else
{
	if(input[i]==(21993+offset0))
{
	vR[i] = 21993;
}
else
{
	vR[i] = 21992;
}

}

}

}
else
{
	if(input[i]>(21987+offset0))
{
	if(input[i]>(21989+offset0))
{
	if(input[i]==(21991+offset0))
{
	vR[i] = 21991;
}
else
{
	vR[i] = 21990;
}

}
else
{
	if(input[i]==(21989+offset0))
{
	vR[i] = 21989;
}
else
{
	vR[i] = 21988;
}

}

}
else
{
	if(input[i]>(21985+offset0))
{
	if(input[i]==(21987+offset0))
{
	vR[i] = 21987;
}
else
{
	vR[i] = 21986;
}

}
else
{
	if(input[i]==(21985+offset0))
{
	vR[i] = 21985;
}
else
{
	vR[i] = 21984;
}

}

}

}

}

}
else
{
	if(input[i]>(21967+offset0))
{
	if(input[i]>(21975+offset0))
{
	if(input[i]>(21979+offset0))
{
	if(input[i]>(21981+offset0))
{
	if(input[i]==(21983+offset0))
{
	vR[i] = 21983;
}
else
{
	vR[i] = 21982;
}

}
else
{
	if(input[i]==(21981+offset0))
{
	vR[i] = 21981;
}
else
{
	vR[i] = 21980;
}

}

}
else
{
	if(input[i]>(21977+offset0))
{
	if(input[i]==(21979+offset0))
{
	vR[i] = 21979;
}
else
{
	vR[i] = 21978;
}

}
else
{
	if(input[i]==(21977+offset0))
{
	vR[i] = 21977;
}
else
{
	vR[i] = 21976;
}

}

}

}
else
{
	if(input[i]>(21971+offset0))
{
	if(input[i]>(21973+offset0))
{
	if(input[i]==(21975+offset0))
{
	vR[i] = 21975;
}
else
{
	vR[i] = 21974;
}

}
else
{
	if(input[i]==(21973+offset0))
{
	vR[i] = 21973;
}
else
{
	vR[i] = 21972;
}

}

}
else
{
	if(input[i]>(21969+offset0))
{
	if(input[i]==(21971+offset0))
{
	vR[i] = 21971;
}
else
{
	vR[i] = 21970;
}

}
else
{
	if(input[i]==(21969+offset0))
{
	vR[i] = 21969;
}
else
{
	vR[i] = 21968;
}

}

}

}

}
else
{
	if(input[i]>(21959+offset0))
{
	if(input[i]>(21963+offset0))
{
	if(input[i]>(21965+offset0))
{
	if(input[i]==(21967+offset0))
{
	vR[i] = 21967;
}
else
{
	vR[i] = 21966;
}

}
else
{
	if(input[i]==(21965+offset0))
{
	vR[i] = 21965;
}
else
{
	vR[i] = 21964;
}

}

}
else
{
	if(input[i]>(21961+offset0))
{
	if(input[i]==(21963+offset0))
{
	vR[i] = 21963;
}
else
{
	vR[i] = 21962;
}

}
else
{
	if(input[i]==(21961+offset0))
{
	vR[i] = 21961;
}
else
{
	vR[i] = 21960;
}

}

}

}
else
{
	if(input[i]>(21955+offset0))
{
	if(input[i]>(21957+offset0))
{
	if(input[i]==(21959+offset0))
{
	vR[i] = 21959;
}
else
{
	vR[i] = 21958;
}

}
else
{
	if(input[i]==(21957+offset0))
{
	vR[i] = 21957;
}
else
{
	vR[i] = 21956;
}

}

}
else
{
	if(input[i]>(21953+offset0))
{
	if(input[i]==(21955+offset0))
{
	vR[i] = 21955;
}
else
{
	vR[i] = 21954;
}

}
else
{
	if(input[i]==(21953+offset0))
{
	vR[i] = 21953;
}
else
{
	vR[i] = 21952;
}

}

}

}

}

}

}
else
{
	if(input[i]>(21919+offset0))
{
	if(input[i]>(21935+offset0))
{
	if(input[i]>(21943+offset0))
{
	if(input[i]>(21947+offset0))
{
	if(input[i]>(21949+offset0))
{
	if(input[i]==(21951+offset0))
{
	vR[i] = 21951;
}
else
{
	vR[i] = 21950;
}

}
else
{
	if(input[i]==(21949+offset0))
{
	vR[i] = 21949;
}
else
{
	vR[i] = 21948;
}

}

}
else
{
	if(input[i]>(21945+offset0))
{
	if(input[i]==(21947+offset0))
{
	vR[i] = 21947;
}
else
{
	vR[i] = 21946;
}

}
else
{
	if(input[i]==(21945+offset0))
{
	vR[i] = 21945;
}
else
{
	vR[i] = 21944;
}

}

}

}
else
{
	if(input[i]>(21939+offset0))
{
	if(input[i]>(21941+offset0))
{
	if(input[i]==(21943+offset0))
{
	vR[i] = 21943;
}
else
{
	vR[i] = 21942;
}

}
else
{
	if(input[i]==(21941+offset0))
{
	vR[i] = 21941;
}
else
{
	vR[i] = 21940;
}

}

}
else
{
	if(input[i]>(21937+offset0))
{
	if(input[i]==(21939+offset0))
{
	vR[i] = 21939;
}
else
{
	vR[i] = 21938;
}

}
else
{
	if(input[i]==(21937+offset0))
{
	vR[i] = 21937;
}
else
{
	vR[i] = 21936;
}

}

}

}

}
else
{
	if(input[i]>(21927+offset0))
{
	if(input[i]>(21931+offset0))
{
	if(input[i]>(21933+offset0))
{
	if(input[i]==(21935+offset0))
{
	vR[i] = 21935;
}
else
{
	vR[i] = 21934;
}

}
else
{
	if(input[i]==(21933+offset0))
{
	vR[i] = 21933;
}
else
{
	vR[i] = 21932;
}

}

}
else
{
	if(input[i]>(21929+offset0))
{
	if(input[i]==(21931+offset0))
{
	vR[i] = 21931;
}
else
{
	vR[i] = 21930;
}

}
else
{
	if(input[i]==(21929+offset0))
{
	vR[i] = 21929;
}
else
{
	vR[i] = 21928;
}

}

}

}
else
{
	if(input[i]>(21923+offset0))
{
	if(input[i]>(21925+offset0))
{
	if(input[i]==(21927+offset0))
{
	vR[i] = 21927;
}
else
{
	vR[i] = 21926;
}

}
else
{
	if(input[i]==(21925+offset0))
{
	vR[i] = 21925;
}
else
{
	vR[i] = 21924;
}

}

}
else
{
	if(input[i]>(21921+offset0))
{
	if(input[i]==(21923+offset0))
{
	vR[i] = 21923;
}
else
{
	vR[i] = 21922;
}

}
else
{
	if(input[i]==(21921+offset0))
{
	vR[i] = 21921;
}
else
{
	vR[i] = 21920;
}

}

}

}

}

}
else
{
	if(input[i]>(21903+offset0))
{
	if(input[i]>(21911+offset0))
{
	if(input[i]>(21915+offset0))
{
	if(input[i]>(21917+offset0))
{
	if(input[i]==(21919+offset0))
{
	vR[i] = 21919;
}
else
{
	vR[i] = 21918;
}

}
else
{
	if(input[i]==(21917+offset0))
{
	vR[i] = 21917;
}
else
{
	vR[i] = 21916;
}

}

}
else
{
	if(input[i]>(21913+offset0))
{
	if(input[i]==(21915+offset0))
{
	vR[i] = 21915;
}
else
{
	vR[i] = 21914;
}

}
else
{
	if(input[i]==(21913+offset0))
{
	vR[i] = 21913;
}
else
{
	vR[i] = 21912;
}

}

}

}
else
{
	if(input[i]>(21907+offset0))
{
	if(input[i]>(21909+offset0))
{
	if(input[i]==(21911+offset0))
{
	vR[i] = 21911;
}
else
{
	vR[i] = 21910;
}

}
else
{
	if(input[i]==(21909+offset0))
{
	vR[i] = 21909;
}
else
{
	vR[i] = 21908;
}

}

}
else
{
	if(input[i]>(21905+offset0))
{
	if(input[i]==(21907+offset0))
{
	vR[i] = 21907;
}
else
{
	vR[i] = 21906;
}

}
else
{
	if(input[i]==(21905+offset0))
{
	vR[i] = 21905;
}
else
{
	vR[i] = 21904;
}

}

}

}

}
else
{
	if(input[i]>(21895+offset0))
{
	if(input[i]>(21899+offset0))
{
	if(input[i]>(21901+offset0))
{
	if(input[i]==(21903+offset0))
{
	vR[i] = 21903;
}
else
{
	vR[i] = 21902;
}

}
else
{
	if(input[i]==(21901+offset0))
{
	vR[i] = 21901;
}
else
{
	vR[i] = 21900;
}

}

}
else
{
	if(input[i]>(21897+offset0))
{
	if(input[i]==(21899+offset0))
{
	vR[i] = 21899;
}
else
{
	vR[i] = 21898;
}

}
else
{
	if(input[i]==(21897+offset0))
{
	vR[i] = 21897;
}
else
{
	vR[i] = 21896;
}

}

}

}
else
{
	if(input[i]>(21891+offset0))
{
	if(input[i]>(21893+offset0))
{
	if(input[i]==(21895+offset0))
{
	vR[i] = 21895;
}
else
{
	vR[i] = 21894;
}

}
else
{
	if(input[i]==(21893+offset0))
{
	vR[i] = 21893;
}
else
{
	vR[i] = 21892;
}

}

}
else
{
	if(input[i]>(21889+offset0))
{
	if(input[i]==(21891+offset0))
{
	vR[i] = 21891;
}
else
{
	vR[i] = 21890;
}

}
else
{
	if(input[i]==(21889+offset0))
{
	vR[i] = 21889;
}
else
{
	vR[i] = 21888;
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
	if(input[i]>(21823+offset0))
{
	if(input[i]>(21855+offset0))
{
	if(input[i]>(21871+offset0))
{
	if(input[i]>(21879+offset0))
{
	if(input[i]>(21883+offset0))
{
	if(input[i]>(21885+offset0))
{
	if(input[i]==(21887+offset0))
{
	vR[i] = 21887;
}
else
{
	vR[i] = 21886;
}

}
else
{
	if(input[i]==(21885+offset0))
{
	vR[i] = 21885;
}
else
{
	vR[i] = 21884;
}

}

}
else
{
	if(input[i]>(21881+offset0))
{
	if(input[i]==(21883+offset0))
{
	vR[i] = 21883;
}
else
{
	vR[i] = 21882;
}

}
else
{
	if(input[i]==(21881+offset0))
{
	vR[i] = 21881;
}
else
{
	vR[i] = 21880;
}

}

}

}
else
{
	if(input[i]>(21875+offset0))
{
	if(input[i]>(21877+offset0))
{
	if(input[i]==(21879+offset0))
{
	vR[i] = 21879;
}
else
{
	vR[i] = 21878;
}

}
else
{
	if(input[i]==(21877+offset0))
{
	vR[i] = 21877;
}
else
{
	vR[i] = 21876;
}

}

}
else
{
	if(input[i]>(21873+offset0))
{
	if(input[i]==(21875+offset0))
{
	vR[i] = 21875;
}
else
{
	vR[i] = 21874;
}

}
else
{
	if(input[i]==(21873+offset0))
{
	vR[i] = 21873;
}
else
{
	vR[i] = 21872;
}

}

}

}

}
else
{
	if(input[i]>(21863+offset0))
{
	if(input[i]>(21867+offset0))
{
	if(input[i]>(21869+offset0))
{
	if(input[i]==(21871+offset0))
{
	vR[i] = 21871;
}
else
{
	vR[i] = 21870;
}

}
else
{
	if(input[i]==(21869+offset0))
{
	vR[i] = 21869;
}
else
{
	vR[i] = 21868;
}

}

}
else
{
	if(input[i]>(21865+offset0))
{
	if(input[i]==(21867+offset0))
{
	vR[i] = 21867;
}
else
{
	vR[i] = 21866;
}

}
else
{
	if(input[i]==(21865+offset0))
{
	vR[i] = 21865;
}
else
{
	vR[i] = 21864;
}

}

}

}
else
{
	if(input[i]>(21859+offset0))
{
	if(input[i]>(21861+offset0))
{
	if(input[i]==(21863+offset0))
{
	vR[i] = 21863;
}
else
{
	vR[i] = 21862;
}

}
else
{
	if(input[i]==(21861+offset0))
{
	vR[i] = 21861;
}
else
{
	vR[i] = 21860;
}

}

}
else
{
	if(input[i]>(21857+offset0))
{
	if(input[i]==(21859+offset0))
{
	vR[i] = 21859;
}
else
{
	vR[i] = 21858;
}

}
else
{
	if(input[i]==(21857+offset0))
{
	vR[i] = 21857;
}
else
{
	vR[i] = 21856;
}

}

}

}

}

}
else
{
	if(input[i]>(21839+offset0))
{
	if(input[i]>(21847+offset0))
{
	if(input[i]>(21851+offset0))
{
	if(input[i]>(21853+offset0))
{
	if(input[i]==(21855+offset0))
{
	vR[i] = 21855;
}
else
{
	vR[i] = 21854;
}

}
else
{
	if(input[i]==(21853+offset0))
{
	vR[i] = 21853;
}
else
{
	vR[i] = 21852;
}

}

}
else
{
	if(input[i]>(21849+offset0))
{
	if(input[i]==(21851+offset0))
{
	vR[i] = 21851;
}
else
{
	vR[i] = 21850;
}

}
else
{
	if(input[i]==(21849+offset0))
{
	vR[i] = 21849;
}
else
{
	vR[i] = 21848;
}

}

}

}
else
{
	if(input[i]>(21843+offset0))
{
	if(input[i]>(21845+offset0))
{
	if(input[i]==(21847+offset0))
{
	vR[i] = 21847;
}
else
{
	vR[i] = 21846;
}

}
else
{
	if(input[i]==(21845+offset0))
{
	vR[i] = 21845;
}
else
{
	vR[i] = 21844;
}

}

}
else
{
	if(input[i]>(21841+offset0))
{
	if(input[i]==(21843+offset0))
{
	vR[i] = 21843;
}
else
{
	vR[i] = 21842;
}

}
else
{
	if(input[i]==(21841+offset0))
{
	vR[i] = 21841;
}
else
{
	vR[i] = 21840;
}

}

}

}

}
else
{
	if(input[i]>(21831+offset0))
{
	if(input[i]>(21835+offset0))
{
	if(input[i]>(21837+offset0))
{
	if(input[i]==(21839+offset0))
{
	vR[i] = 21839;
}
else
{
	vR[i] = 21838;
}

}
else
{
	if(input[i]==(21837+offset0))
{
	vR[i] = 21837;
}
else
{
	vR[i] = 21836;
}

}

}
else
{
	if(input[i]>(21833+offset0))
{
	if(input[i]==(21835+offset0))
{
	vR[i] = 21835;
}
else
{
	vR[i] = 21834;
}

}
else
{
	if(input[i]==(21833+offset0))
{
	vR[i] = 21833;
}
else
{
	vR[i] = 21832;
}

}

}

}
else
{
	if(input[i]>(21827+offset0))
{
	if(input[i]>(21829+offset0))
{
	if(input[i]==(21831+offset0))
{
	vR[i] = 21831;
}
else
{
	vR[i] = 21830;
}

}
else
{
	if(input[i]==(21829+offset0))
{
	vR[i] = 21829;
}
else
{
	vR[i] = 21828;
}

}

}
else
{
	if(input[i]>(21825+offset0))
{
	if(input[i]==(21827+offset0))
{
	vR[i] = 21827;
}
else
{
	vR[i] = 21826;
}

}
else
{
	if(input[i]==(21825+offset0))
{
	vR[i] = 21825;
}
else
{
	vR[i] = 21824;
}

}

}

}

}

}

}
else
{
	if(input[i]>(21791+offset0))
{
	if(input[i]>(21807+offset0))
{
	if(input[i]>(21815+offset0))
{
	if(input[i]>(21819+offset0))
{
	if(input[i]>(21821+offset0))
{
	if(input[i]==(21823+offset0))
{
	vR[i] = 21823;
}
else
{
	vR[i] = 21822;
}

}
else
{
	if(input[i]==(21821+offset0))
{
	vR[i] = 21821;
}
else
{
	vR[i] = 21820;
}

}

}
else
{
	if(input[i]>(21817+offset0))
{
	if(input[i]==(21819+offset0))
{
	vR[i] = 21819;
}
else
{
	vR[i] = 21818;
}

}
else
{
	if(input[i]==(21817+offset0))
{
	vR[i] = 21817;
}
else
{
	vR[i] = 21816;
}

}

}

}
else
{
	if(input[i]>(21811+offset0))
{
	if(input[i]>(21813+offset0))
{
	if(input[i]==(21815+offset0))
{
	vR[i] = 21815;
}
else
{
	vR[i] = 21814;
}

}
else
{
	if(input[i]==(21813+offset0))
{
	vR[i] = 21813;
}
else
{
	vR[i] = 21812;
}

}

}
else
{
	if(input[i]>(21809+offset0))
{
	if(input[i]==(21811+offset0))
{
	vR[i] = 21811;
}
else
{
	vR[i] = 21810;
}

}
else
{
	if(input[i]==(21809+offset0))
{
	vR[i] = 21809;
}
else
{
	vR[i] = 21808;
}

}

}

}

}
else
{
	if(input[i]>(21799+offset0))
{
	if(input[i]>(21803+offset0))
{
	if(input[i]>(21805+offset0))
{
	if(input[i]==(21807+offset0))
{
	vR[i] = 21807;
}
else
{
	vR[i] = 21806;
}

}
else
{
	if(input[i]==(21805+offset0))
{
	vR[i] = 21805;
}
else
{
	vR[i] = 21804;
}

}

}
else
{
	if(input[i]>(21801+offset0))
{
	if(input[i]==(21803+offset0))
{
	vR[i] = 21803;
}
else
{
	vR[i] = 21802;
}

}
else
{
	if(input[i]==(21801+offset0))
{
	vR[i] = 21801;
}
else
{
	vR[i] = 21800;
}

}

}

}
else
{
	if(input[i]>(21795+offset0))
{
	if(input[i]>(21797+offset0))
{
	if(input[i]==(21799+offset0))
{
	vR[i] = 21799;
}
else
{
	vR[i] = 21798;
}

}
else
{
	if(input[i]==(21797+offset0))
{
	vR[i] = 21797;
}
else
{
	vR[i] = 21796;
}

}

}
else
{
	if(input[i]>(21793+offset0))
{
	if(input[i]==(21795+offset0))
{
	vR[i] = 21795;
}
else
{
	vR[i] = 21794;
}

}
else
{
	if(input[i]==(21793+offset0))
{
	vR[i] = 21793;
}
else
{
	vR[i] = 21792;
}

}

}

}

}

}
else
{
	if(input[i]>(21775+offset0))
{
	if(input[i]>(21783+offset0))
{
	if(input[i]>(21787+offset0))
{
	if(input[i]>(21789+offset0))
{
	if(input[i]==(21791+offset0))
{
	vR[i] = 21791;
}
else
{
	vR[i] = 21790;
}

}
else
{
	if(input[i]==(21789+offset0))
{
	vR[i] = 21789;
}
else
{
	vR[i] = 21788;
}

}

}
else
{
	if(input[i]>(21785+offset0))
{
	if(input[i]==(21787+offset0))
{
	vR[i] = 21787;
}
else
{
	vR[i] = 21786;
}

}
else
{
	if(input[i]==(21785+offset0))
{
	vR[i] = 21785;
}
else
{
	vR[i] = 21784;
}

}

}

}
else
{
	if(input[i]>(21779+offset0))
{
	if(input[i]>(21781+offset0))
{
	if(input[i]==(21783+offset0))
{
	vR[i] = 21783;
}
else
{
	vR[i] = 21782;
}

}
else
{
	if(input[i]==(21781+offset0))
{
	vR[i] = 21781;
}
else
{
	vR[i] = 21780;
}

}

}
else
{
	if(input[i]>(21777+offset0))
{
	if(input[i]==(21779+offset0))
{
	vR[i] = 21779;
}
else
{
	vR[i] = 21778;
}

}
else
{
	if(input[i]==(21777+offset0))
{
	vR[i] = 21777;
}
else
{
	vR[i] = 21776;
}

}

}

}

}
else
{
	if(input[i]>(21767+offset0))
{
	if(input[i]>(21771+offset0))
{
	if(input[i]>(21773+offset0))
{
	if(input[i]==(21775+offset0))
{
	vR[i] = 21775;
}
else
{
	vR[i] = 21774;
}

}
else
{
	if(input[i]==(21773+offset0))
{
	vR[i] = 21773;
}
else
{
	vR[i] = 21772;
}

}

}
else
{
	if(input[i]>(21769+offset0))
{
	if(input[i]==(21771+offset0))
{
	vR[i] = 21771;
}
else
{
	vR[i] = 21770;
}

}
else
{
	if(input[i]==(21769+offset0))
{
	vR[i] = 21769;
}
else
{
	vR[i] = 21768;
}

}

}

}
else
{
	if(input[i]>(21763+offset0))
{
	if(input[i]>(21765+offset0))
{
	if(input[i]==(21767+offset0))
{
	vR[i] = 21767;
}
else
{
	vR[i] = 21766;
}

}
else
{
	if(input[i]==(21765+offset0))
{
	vR[i] = 21765;
}
else
{
	vR[i] = 21764;
}

}

}
else
{
	if(input[i]>(21761+offset0))
{
	if(input[i]==(21763+offset0))
{
	vR[i] = 21763;
}
else
{
	vR[i] = 21762;
}

}
else
{
	if(input[i]==(21761+offset0))
{
	vR[i] = 21761;
}
else
{
	vR[i] = 21760;
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
	if(input[i]>(21631+offset0))
{
	if(input[i]>(21695+offset0))
{
	if(input[i]>(21727+offset0))
{
	if(input[i]>(21743+offset0))
{
	if(input[i]>(21751+offset0))
{
	if(input[i]>(21755+offset0))
{
	if(input[i]>(21757+offset0))
{
	if(input[i]==(21759+offset0))
{
	vR[i] = 21759;
}
else
{
	vR[i] = 21758;
}

}
else
{
	if(input[i]==(21757+offset0))
{
	vR[i] = 21757;
}
else
{
	vR[i] = 21756;
}

}

}
else
{
	if(input[i]>(21753+offset0))
{
	if(input[i]==(21755+offset0))
{
	vR[i] = 21755;
}
else
{
	vR[i] = 21754;
}

}
else
{
	if(input[i]==(21753+offset0))
{
	vR[i] = 21753;
}
else
{
	vR[i] = 21752;
}

}

}

}
else
{
	if(input[i]>(21747+offset0))
{
	if(input[i]>(21749+offset0))
{
	if(input[i]==(21751+offset0))
{
	vR[i] = 21751;
}
else
{
	vR[i] = 21750;
}

}
else
{
	if(input[i]==(21749+offset0))
{
	vR[i] = 21749;
}
else
{
	vR[i] = 21748;
}

}

}
else
{
	if(input[i]>(21745+offset0))
{
	if(input[i]==(21747+offset0))
{
	vR[i] = 21747;
}
else
{
	vR[i] = 21746;
}

}
else
{
	if(input[i]==(21745+offset0))
{
	vR[i] = 21745;
}
else
{
	vR[i] = 21744;
}

}

}

}

}
else
{
	if(input[i]>(21735+offset0))
{
	if(input[i]>(21739+offset0))
{
	if(input[i]>(21741+offset0))
{
	if(input[i]==(21743+offset0))
{
	vR[i] = 21743;
}
else
{
	vR[i] = 21742;
}

}
else
{
	if(input[i]==(21741+offset0))
{
	vR[i] = 21741;
}
else
{
	vR[i] = 21740;
}

}

}
else
{
	if(input[i]>(21737+offset0))
{
	if(input[i]==(21739+offset0))
{
	vR[i] = 21739;
}
else
{
	vR[i] = 21738;
}

}
else
{
	if(input[i]==(21737+offset0))
{
	vR[i] = 21737;
}
else
{
	vR[i] = 21736;
}

}

}

}
else
{
	if(input[i]>(21731+offset0))
{
	if(input[i]>(21733+offset0))
{
	if(input[i]==(21735+offset0))
{
	vR[i] = 21735;
}
else
{
	vR[i] = 21734;
}

}
else
{
	if(input[i]==(21733+offset0))
{
	vR[i] = 21733;
}
else
{
	vR[i] = 21732;
}

}

}
else
{
	if(input[i]>(21729+offset0))
{
	if(input[i]==(21731+offset0))
{
	vR[i] = 21731;
}
else
{
	vR[i] = 21730;
}

}
else
{
	if(input[i]==(21729+offset0))
{
	vR[i] = 21729;
}
else
{
	vR[i] = 21728;
}

}

}

}

}

}
else
{
	if(input[i]>(21711+offset0))
{
	if(input[i]>(21719+offset0))
{
	if(input[i]>(21723+offset0))
{
	if(input[i]>(21725+offset0))
{
	if(input[i]==(21727+offset0))
{
	vR[i] = 21727;
}
else
{
	vR[i] = 21726;
}

}
else
{
	if(input[i]==(21725+offset0))
{
	vR[i] = 21725;
}
else
{
	vR[i] = 21724;
}

}

}
else
{
	if(input[i]>(21721+offset0))
{
	if(input[i]==(21723+offset0))
{
	vR[i] = 21723;
}
else
{
	vR[i] = 21722;
}

}
else
{
	if(input[i]==(21721+offset0))
{
	vR[i] = 21721;
}
else
{
	vR[i] = 21720;
}

}

}

}
else
{
	if(input[i]>(21715+offset0))
{
	if(input[i]>(21717+offset0))
{
	if(input[i]==(21719+offset0))
{
	vR[i] = 21719;
}
else
{
	vR[i] = 21718;
}

}
else
{
	if(input[i]==(21717+offset0))
{
	vR[i] = 21717;
}
else
{
	vR[i] = 21716;
}

}

}
else
{
	if(input[i]>(21713+offset0))
{
	if(input[i]==(21715+offset0))
{
	vR[i] = 21715;
}
else
{
	vR[i] = 21714;
}

}
else
{
	if(input[i]==(21713+offset0))
{
	vR[i] = 21713;
}
else
{
	vR[i] = 21712;
}

}

}

}

}
else
{
	if(input[i]>(21703+offset0))
{
	if(input[i]>(21707+offset0))
{
	if(input[i]>(21709+offset0))
{
	if(input[i]==(21711+offset0))
{
	vR[i] = 21711;
}
else
{
	vR[i] = 21710;
}

}
else
{
	if(input[i]==(21709+offset0))
{
	vR[i] = 21709;
}
else
{
	vR[i] = 21708;
}

}

}
else
{
	if(input[i]>(21705+offset0))
{
	if(input[i]==(21707+offset0))
{
	vR[i] = 21707;
}
else
{
	vR[i] = 21706;
}

}
else
{
	if(input[i]==(21705+offset0))
{
	vR[i] = 21705;
}
else
{
	vR[i] = 21704;
}

}

}

}
else
{
	if(input[i]>(21699+offset0))
{
	if(input[i]>(21701+offset0))
{
	if(input[i]==(21703+offset0))
{
	vR[i] = 21703;
}
else
{
	vR[i] = 21702;
}

}
else
{
	if(input[i]==(21701+offset0))
{
	vR[i] = 21701;
}
else
{
	vR[i] = 21700;
}

}

}
else
{
	if(input[i]>(21697+offset0))
{
	if(input[i]==(21699+offset0))
{
	vR[i] = 21699;
}
else
{
	vR[i] = 21698;
}

}
else
{
	if(input[i]==(21697+offset0))
{
	vR[i] = 21697;
}
else
{
	vR[i] = 21696;
}

}

}

}

}

}

}
else
{
	if(input[i]>(21663+offset0))
{
	if(input[i]>(21679+offset0))
{
	if(input[i]>(21687+offset0))
{
	if(input[i]>(21691+offset0))
{
	if(input[i]>(21693+offset0))
{
	if(input[i]==(21695+offset0))
{
	vR[i] = 21695;
}
else
{
	vR[i] = 21694;
}

}
else
{
	if(input[i]==(21693+offset0))
{
	vR[i] = 21693;
}
else
{
	vR[i] = 21692;
}

}

}
else
{
	if(input[i]>(21689+offset0))
{
	if(input[i]==(21691+offset0))
{
	vR[i] = 21691;
}
else
{
	vR[i] = 21690;
}

}
else
{
	if(input[i]==(21689+offset0))
{
	vR[i] = 21689;
}
else
{
	vR[i] = 21688;
}

}

}

}
else
{
	if(input[i]>(21683+offset0))
{
	if(input[i]>(21685+offset0))
{
	if(input[i]==(21687+offset0))
{
	vR[i] = 21687;
}
else
{
	vR[i] = 21686;
}

}
else
{
	if(input[i]==(21685+offset0))
{
	vR[i] = 21685;
}
else
{
	vR[i] = 21684;
}

}

}
else
{
	if(input[i]>(21681+offset0))
{
	if(input[i]==(21683+offset0))
{
	vR[i] = 21683;
}
else
{
	vR[i] = 21682;
}

}
else
{
	if(input[i]==(21681+offset0))
{
	vR[i] = 21681;
}
else
{
	vR[i] = 21680;
}

}

}

}

}
else
{
	if(input[i]>(21671+offset0))
{
	if(input[i]>(21675+offset0))
{
	if(input[i]>(21677+offset0))
{
	if(input[i]==(21679+offset0))
{
	vR[i] = 21679;
}
else
{
	vR[i] = 21678;
}

}
else
{
	if(input[i]==(21677+offset0))
{
	vR[i] = 21677;
}
else
{
	vR[i] = 21676;
}

}

}
else
{
	if(input[i]>(21673+offset0))
{
	if(input[i]==(21675+offset0))
{
	vR[i] = 21675;
}
else
{
	vR[i] = 21674;
}

}
else
{
	if(input[i]==(21673+offset0))
{
	vR[i] = 21673;
}
else
{
	vR[i] = 21672;
}

}

}

}
else
{
	if(input[i]>(21667+offset0))
{
	if(input[i]>(21669+offset0))
{
	if(input[i]==(21671+offset0))
{
	vR[i] = 21671;
}
else
{
	vR[i] = 21670;
}

}
else
{
	if(input[i]==(21669+offset0))
{
	vR[i] = 21669;
}
else
{
	vR[i] = 21668;
}

}

}
else
{
	if(input[i]>(21665+offset0))
{
	if(input[i]==(21667+offset0))
{
	vR[i] = 21667;
}
else
{
	vR[i] = 21666;
}

}
else
{
	if(input[i]==(21665+offset0))
{
	vR[i] = 21665;
}
else
{
	vR[i] = 21664;
}

}

}

}

}

}
else
{
	if(input[i]>(21647+offset0))
{
	if(input[i]>(21655+offset0))
{
	if(input[i]>(21659+offset0))
{
	if(input[i]>(21661+offset0))
{
	if(input[i]==(21663+offset0))
{
	vR[i] = 21663;
}
else
{
	vR[i] = 21662;
}

}
else
{
	if(input[i]==(21661+offset0))
{
	vR[i] = 21661;
}
else
{
	vR[i] = 21660;
}

}

}
else
{
	if(input[i]>(21657+offset0))
{
	if(input[i]==(21659+offset0))
{
	vR[i] = 21659;
}
else
{
	vR[i] = 21658;
}

}
else
{
	if(input[i]==(21657+offset0))
{
	vR[i] = 21657;
}
else
{
	vR[i] = 21656;
}

}

}

}
else
{
	if(input[i]>(21651+offset0))
{
	if(input[i]>(21653+offset0))
{
	if(input[i]==(21655+offset0))
{
	vR[i] = 21655;
}
else
{
	vR[i] = 21654;
}

}
else
{
	if(input[i]==(21653+offset0))
{
	vR[i] = 21653;
}
else
{
	vR[i] = 21652;
}

}

}
else
{
	if(input[i]>(21649+offset0))
{
	if(input[i]==(21651+offset0))
{
	vR[i] = 21651;
}
else
{
	vR[i] = 21650;
}

}
else
{
	if(input[i]==(21649+offset0))
{
	vR[i] = 21649;
}
else
{
	vR[i] = 21648;
}

}

}

}

}
else
{
	if(input[i]>(21639+offset0))
{
	if(input[i]>(21643+offset0))
{
	if(input[i]>(21645+offset0))
{
	if(input[i]==(21647+offset0))
{
	vR[i] = 21647;
}
else
{
	vR[i] = 21646;
}

}
else
{
	if(input[i]==(21645+offset0))
{
	vR[i] = 21645;
}
else
{
	vR[i] = 21644;
}

}

}
else
{
	if(input[i]>(21641+offset0))
{
	if(input[i]==(21643+offset0))
{
	vR[i] = 21643;
}
else
{
	vR[i] = 21642;
}

}
else
{
	if(input[i]==(21641+offset0))
{
	vR[i] = 21641;
}
else
{
	vR[i] = 21640;
}

}

}

}
else
{
	if(input[i]>(21635+offset0))
{
	if(input[i]>(21637+offset0))
{
	if(input[i]==(21639+offset0))
{
	vR[i] = 21639;
}
else
{
	vR[i] = 21638;
}

}
else
{
	if(input[i]==(21637+offset0))
{
	vR[i] = 21637;
}
else
{
	vR[i] = 21636;
}

}

}
else
{
	if(input[i]>(21633+offset0))
{
	if(input[i]==(21635+offset0))
{
	vR[i] = 21635;
}
else
{
	vR[i] = 21634;
}

}
else
{
	if(input[i]==(21633+offset0))
{
	vR[i] = 21633;
}
else
{
	vR[i] = 21632;
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
	if(input[i]>(21567+offset0))
{
	if(input[i]>(21599+offset0))
{
	if(input[i]>(21615+offset0))
{
	if(input[i]>(21623+offset0))
{
	if(input[i]>(21627+offset0))
{
	if(input[i]>(21629+offset0))
{
	if(input[i]==(21631+offset0))
{
	vR[i] = 21631;
}
else
{
	vR[i] = 21630;
}

}
else
{
	if(input[i]==(21629+offset0))
{
	vR[i] = 21629;
}
else
{
	vR[i] = 21628;
}

}

}
else
{
	if(input[i]>(21625+offset0))
{
	if(input[i]==(21627+offset0))
{
	vR[i] = 21627;
}
else
{
	vR[i] = 21626;
}

}
else
{
	if(input[i]==(21625+offset0))
{
	vR[i] = 21625;
}
else
{
	vR[i] = 21624;
}

}

}

}
else
{
	if(input[i]>(21619+offset0))
{
	if(input[i]>(21621+offset0))
{
	if(input[i]==(21623+offset0))
{
	vR[i] = 21623;
}
else
{
	vR[i] = 21622;
}

}
else
{
	if(input[i]==(21621+offset0))
{
	vR[i] = 21621;
}
else
{
	vR[i] = 21620;
}

}

}
else
{
	if(input[i]>(21617+offset0))
{
	if(input[i]==(21619+offset0))
{
	vR[i] = 21619;
}
else
{
	vR[i] = 21618;
}

}
else
{
	if(input[i]==(21617+offset0))
{
	vR[i] = 21617;
}
else
{
	vR[i] = 21616;
}

}

}

}

}
else
{
	if(input[i]>(21607+offset0))
{
	if(input[i]>(21611+offset0))
{
	if(input[i]>(21613+offset0))
{
	if(input[i]==(21615+offset0))
{
	vR[i] = 21615;
}
else
{
	vR[i] = 21614;
}

}
else
{
	if(input[i]==(21613+offset0))
{
	vR[i] = 21613;
}
else
{
	vR[i] = 21612;
}

}

}
else
{
	if(input[i]>(21609+offset0))
{
	if(input[i]==(21611+offset0))
{
	vR[i] = 21611;
}
else
{
	vR[i] = 21610;
}

}
else
{
	if(input[i]==(21609+offset0))
{
	vR[i] = 21609;
}
else
{
	vR[i] = 21608;
}

}

}

}
else
{
	if(input[i]>(21603+offset0))
{
	if(input[i]>(21605+offset0))
{
	if(input[i]==(21607+offset0))
{
	vR[i] = 21607;
}
else
{
	vR[i] = 21606;
}

}
else
{
	if(input[i]==(21605+offset0))
{
	vR[i] = 21605;
}
else
{
	vR[i] = 21604;
}

}

}
else
{
	if(input[i]>(21601+offset0))
{
	if(input[i]==(21603+offset0))
{
	vR[i] = 21603;
}
else
{
	vR[i] = 21602;
}

}
else
{
	if(input[i]==(21601+offset0))
{
	vR[i] = 21601;
}
else
{
	vR[i] = 21600;
}

}

}

}

}

}
else
{
	if(input[i]>(21583+offset0))
{
	if(input[i]>(21591+offset0))
{
	if(input[i]>(21595+offset0))
{
	if(input[i]>(21597+offset0))
{
	if(input[i]==(21599+offset0))
{
	vR[i] = 21599;
}
else
{
	vR[i] = 21598;
}

}
else
{
	if(input[i]==(21597+offset0))
{
	vR[i] = 21597;
}
else
{
	vR[i] = 21596;
}

}

}
else
{
	if(input[i]>(21593+offset0))
{
	if(input[i]==(21595+offset0))
{
	vR[i] = 21595;
}
else
{
	vR[i] = 21594;
}

}
else
{
	if(input[i]==(21593+offset0))
{
	vR[i] = 21593;
}
else
{
	vR[i] = 21592;
}

}

}

}
else
{
	if(input[i]>(21587+offset0))
{
	if(input[i]>(21589+offset0))
{
	if(input[i]==(21591+offset0))
{
	vR[i] = 21591;
}
else
{
	vR[i] = 21590;
}

}
else
{
	if(input[i]==(21589+offset0))
{
	vR[i] = 21589;
}
else
{
	vR[i] = 21588;
}

}

}
else
{
	if(input[i]>(21585+offset0))
{
	if(input[i]==(21587+offset0))
{
	vR[i] = 21587;
}
else
{
	vR[i] = 21586;
}

}
else
{
	if(input[i]==(21585+offset0))
{
	vR[i] = 21585;
}
else
{
	vR[i] = 21584;
}

}

}

}

}
else
{
	if(input[i]>(21575+offset0))
{
	if(input[i]>(21579+offset0))
{
	if(input[i]>(21581+offset0))
{
	if(input[i]==(21583+offset0))
{
	vR[i] = 21583;
}
else
{
	vR[i] = 21582;
}

}
else
{
	if(input[i]==(21581+offset0))
{
	vR[i] = 21581;
}
else
{
	vR[i] = 21580;
}

}

}
else
{
	if(input[i]>(21577+offset0))
{
	if(input[i]==(21579+offset0))
{
	vR[i] = 21579;
}
else
{
	vR[i] = 21578;
}

}
else
{
	if(input[i]==(21577+offset0))
{
	vR[i] = 21577;
}
else
{
	vR[i] = 21576;
}

}

}

}
else
{
	if(input[i]>(21571+offset0))
{
	if(input[i]>(21573+offset0))
{
	if(input[i]==(21575+offset0))
{
	vR[i] = 21575;
}
else
{
	vR[i] = 21574;
}

}
else
{
	if(input[i]==(21573+offset0))
{
	vR[i] = 21573;
}
else
{
	vR[i] = 21572;
}

}

}
else
{
	if(input[i]>(21569+offset0))
{
	if(input[i]==(21571+offset0))
{
	vR[i] = 21571;
}
else
{
	vR[i] = 21570;
}

}
else
{
	if(input[i]==(21569+offset0))
{
	vR[i] = 21569;
}
else
{
	vR[i] = 21568;
}

}

}

}

}

}

}
else
{
	if(input[i]>(21535+offset0))
{
	if(input[i]>(21551+offset0))
{
	if(input[i]>(21559+offset0))
{
	if(input[i]>(21563+offset0))
{
	if(input[i]>(21565+offset0))
{
	if(input[i]==(21567+offset0))
{
	vR[i] = 21567;
}
else
{
	vR[i] = 21566;
}

}
else
{
	if(input[i]==(21565+offset0))
{
	vR[i] = 21565;
}
else
{
	vR[i] = 21564;
}

}

}
else
{
	if(input[i]>(21561+offset0))
{
	if(input[i]==(21563+offset0))
{
	vR[i] = 21563;
}
else
{
	vR[i] = 21562;
}

}
else
{
	if(input[i]==(21561+offset0))
{
	vR[i] = 21561;
}
else
{
	vR[i] = 21560;
}

}

}

}
else
{
	if(input[i]>(21555+offset0))
{
	if(input[i]>(21557+offset0))
{
	if(input[i]==(21559+offset0))
{
	vR[i] = 21559;
}
else
{
	vR[i] = 21558;
}

}
else
{
	if(input[i]==(21557+offset0))
{
	vR[i] = 21557;
}
else
{
	vR[i] = 21556;
}

}

}
else
{
	if(input[i]>(21553+offset0))
{
	if(input[i]==(21555+offset0))
{
	vR[i] = 21555;
}
else
{
	vR[i] = 21554;
}

}
else
{
	if(input[i]==(21553+offset0))
{
	vR[i] = 21553;
}
else
{
	vR[i] = 21552;
}

}

}

}

}
else
{
	if(input[i]>(21543+offset0))
{
	if(input[i]>(21547+offset0))
{
	if(input[i]>(21549+offset0))
{
	if(input[i]==(21551+offset0))
{
	vR[i] = 21551;
}
else
{
	vR[i] = 21550;
}

}
else
{
	if(input[i]==(21549+offset0))
{
	vR[i] = 21549;
}
else
{
	vR[i] = 21548;
}

}

}
else
{
	if(input[i]>(21545+offset0))
{
	if(input[i]==(21547+offset0))
{
	vR[i] = 21547;
}
else
{
	vR[i] = 21546;
}

}
else
{
	if(input[i]==(21545+offset0))
{
	vR[i] = 21545;
}
else
{
	vR[i] = 21544;
}

}

}

}
else
{
	if(input[i]>(21539+offset0))
{
	if(input[i]>(21541+offset0))
{
	if(input[i]==(21543+offset0))
{
	vR[i] = 21543;
}
else
{
	vR[i] = 21542;
}

}
else
{
	if(input[i]==(21541+offset0))
{
	vR[i] = 21541;
}
else
{
	vR[i] = 21540;
}

}

}
else
{
	if(input[i]>(21537+offset0))
{
	if(input[i]==(21539+offset0))
{
	vR[i] = 21539;
}
else
{
	vR[i] = 21538;
}

}
else
{
	if(input[i]==(21537+offset0))
{
	vR[i] = 21537;
}
else
{
	vR[i] = 21536;
}

}

}

}

}

}
else
{
	if(input[i]>(21519+offset0))
{
	if(input[i]>(21527+offset0))
{
	if(input[i]>(21531+offset0))
{
	if(input[i]>(21533+offset0))
{
	if(input[i]==(21535+offset0))
{
	vR[i] = 21535;
}
else
{
	vR[i] = 21534;
}

}
else
{
	if(input[i]==(21533+offset0))
{
	vR[i] = 21533;
}
else
{
	vR[i] = 21532;
}

}

}
else
{
	if(input[i]>(21529+offset0))
{
	if(input[i]==(21531+offset0))
{
	vR[i] = 21531;
}
else
{
	vR[i] = 21530;
}

}
else
{
	if(input[i]==(21529+offset0))
{
	vR[i] = 21529;
}
else
{
	vR[i] = 21528;
}

}

}

}
else
{
	if(input[i]>(21523+offset0))
{
	if(input[i]>(21525+offset0))
{
	if(input[i]==(21527+offset0))
{
	vR[i] = 21527;
}
else
{
	vR[i] = 21526;
}

}
else
{
	if(input[i]==(21525+offset0))
{
	vR[i] = 21525;
}
else
{
	vR[i] = 21524;
}

}

}
else
{
	if(input[i]>(21521+offset0))
{
	if(input[i]==(21523+offset0))
{
	vR[i] = 21523;
}
else
{
	vR[i] = 21522;
}

}
else
{
	if(input[i]==(21521+offset0))
{
	vR[i] = 21521;
}
else
{
	vR[i] = 21520;
}

}

}

}

}
else
{
	if(input[i]>(21511+offset0))
{
	if(input[i]>(21515+offset0))
{
	if(input[i]>(21517+offset0))
{
	if(input[i]==(21519+offset0))
{
	vR[i] = 21519;
}
else
{
	vR[i] = 21518;
}

}
else
{
	if(input[i]==(21517+offset0))
{
	vR[i] = 21517;
}
else
{
	vR[i] = 21516;
}

}

}
else
{
	if(input[i]>(21513+offset0))
{
	if(input[i]==(21515+offset0))
{
	vR[i] = 21515;
}
else
{
	vR[i] = 21514;
}

}
else
{
	if(input[i]==(21513+offset0))
{
	vR[i] = 21513;
}
else
{
	vR[i] = 21512;
}

}

}

}
else
{
	if(input[i]>(21507+offset0))
{
	if(input[i]>(21509+offset0))
{
	if(input[i]==(21511+offset0))
{
	vR[i] = 21511;
}
else
{
	vR[i] = 21510;
}

}
else
{
	if(input[i]==(21509+offset0))
{
	vR[i] = 21509;
}
else
{
	vR[i] = 21508;
}

}

}
else
{
	if(input[i]>(21505+offset0))
{
	if(input[i]==(21507+offset0))
{
	vR[i] = 21507;
}
else
{
	vR[i] = 21506;
}

}
else
{
	if(input[i]==(21505+offset0))
{
	vR[i] = 21505;
}
else
{
	vR[i] = 21504;
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
	if(input[i]>(20991+offset0))
{
	if(input[i]>(21247+offset0))
{
	if(input[i]>(21375+offset0))
{
	if(input[i]>(21439+offset0))
{
	if(input[i]>(21471+offset0))
{
	if(input[i]>(21487+offset0))
{
	if(input[i]>(21495+offset0))
{
	if(input[i]>(21499+offset0))
{
	if(input[i]>(21501+offset0))
{
	if(input[i]==(21503+offset0))
{
	vR[i] = 21503;
}
else
{
	vR[i] = 21502;
}

}
else
{
	if(input[i]==(21501+offset0))
{
	vR[i] = 21501;
}
else
{
	vR[i] = 21500;
}

}

}
else
{
	if(input[i]>(21497+offset0))
{
	if(input[i]==(21499+offset0))
{
	vR[i] = 21499;
}
else
{
	vR[i] = 21498;
}

}
else
{
	if(input[i]==(21497+offset0))
{
	vR[i] = 21497;
}
else
{
	vR[i] = 21496;
}

}

}

}
else
{
	if(input[i]>(21491+offset0))
{
	if(input[i]>(21493+offset0))
{
	if(input[i]==(21495+offset0))
{
	vR[i] = 21495;
}
else
{
	vR[i] = 21494;
}

}
else
{
	if(input[i]==(21493+offset0))
{
	vR[i] = 21493;
}
else
{
	vR[i] = 21492;
}

}

}
else
{
	if(input[i]>(21489+offset0))
{
	if(input[i]==(21491+offset0))
{
	vR[i] = 21491;
}
else
{
	vR[i] = 21490;
}

}
else
{
	if(input[i]==(21489+offset0))
{
	vR[i] = 21489;
}
else
{
	vR[i] = 21488;
}

}

}

}

}
else
{
	if(input[i]>(21479+offset0))
{
	if(input[i]>(21483+offset0))
{
	if(input[i]>(21485+offset0))
{
	if(input[i]==(21487+offset0))
{
	vR[i] = 21487;
}
else
{
	vR[i] = 21486;
}

}
else
{
	if(input[i]==(21485+offset0))
{
	vR[i] = 21485;
}
else
{
	vR[i] = 21484;
}

}

}
else
{
	if(input[i]>(21481+offset0))
{
	if(input[i]==(21483+offset0))
{
	vR[i] = 21483;
}
else
{
	vR[i] = 21482;
}

}
else
{
	if(input[i]==(21481+offset0))
{
	vR[i] = 21481;
}
else
{
	vR[i] = 21480;
}

}

}

}
else
{
	if(input[i]>(21475+offset0))
{
	if(input[i]>(21477+offset0))
{
	if(input[i]==(21479+offset0))
{
	vR[i] = 21479;
}
else
{
	vR[i] = 21478;
}

}
else
{
	if(input[i]==(21477+offset0))
{
	vR[i] = 21477;
}
else
{
	vR[i] = 21476;
}

}

}
else
{
	if(input[i]>(21473+offset0))
{
	if(input[i]==(21475+offset0))
{
	vR[i] = 21475;
}
else
{
	vR[i] = 21474;
}

}
else
{
	if(input[i]==(21473+offset0))
{
	vR[i] = 21473;
}
else
{
	vR[i] = 21472;
}

}

}

}

}

}
else
{
	if(input[i]>(21455+offset0))
{
	if(input[i]>(21463+offset0))
{
	if(input[i]>(21467+offset0))
{
	if(input[i]>(21469+offset0))
{
	if(input[i]==(21471+offset0))
{
	vR[i] = 21471;
}
else
{
	vR[i] = 21470;
}

}
else
{
	if(input[i]==(21469+offset0))
{
	vR[i] = 21469;
}
else
{
	vR[i] = 21468;
}

}

}
else
{
	if(input[i]>(21465+offset0))
{
	if(input[i]==(21467+offset0))
{
	vR[i] = 21467;
}
else
{
	vR[i] = 21466;
}

}
else
{
	if(input[i]==(21465+offset0))
{
	vR[i] = 21465;
}
else
{
	vR[i] = 21464;
}

}

}

}
else
{
	if(input[i]>(21459+offset0))
{
	if(input[i]>(21461+offset0))
{
	if(input[i]==(21463+offset0))
{
	vR[i] = 21463;
}
else
{
	vR[i] = 21462;
}

}
else
{
	if(input[i]==(21461+offset0))
{
	vR[i] = 21461;
}
else
{
	vR[i] = 21460;
}

}

}
else
{
	if(input[i]>(21457+offset0))
{
	if(input[i]==(21459+offset0))
{
	vR[i] = 21459;
}
else
{
	vR[i] = 21458;
}

}
else
{
	if(input[i]==(21457+offset0))
{
	vR[i] = 21457;
}
else
{
	vR[i] = 21456;
}

}

}

}

}
else
{
	if(input[i]>(21447+offset0))
{
	if(input[i]>(21451+offset0))
{
	if(input[i]>(21453+offset0))
{
	if(input[i]==(21455+offset0))
{
	vR[i] = 21455;
}
else
{
	vR[i] = 21454;
}

}
else
{
	if(input[i]==(21453+offset0))
{
	vR[i] = 21453;
}
else
{
	vR[i] = 21452;
}

}

}
else
{
	if(input[i]>(21449+offset0))
{
	if(input[i]==(21451+offset0))
{
	vR[i] = 21451;
}
else
{
	vR[i] = 21450;
}

}
else
{
	if(input[i]==(21449+offset0))
{
	vR[i] = 21449;
}
else
{
	vR[i] = 21448;
}

}

}

}
else
{
	if(input[i]>(21443+offset0))
{
	if(input[i]>(21445+offset0))
{
	if(input[i]==(21447+offset0))
{
	vR[i] = 21447;
}
else
{
	vR[i] = 21446;
}

}
else
{
	if(input[i]==(21445+offset0))
{
	vR[i] = 21445;
}
else
{
	vR[i] = 21444;
}

}

}
else
{
	if(input[i]>(21441+offset0))
{
	if(input[i]==(21443+offset0))
{
	vR[i] = 21443;
}
else
{
	vR[i] = 21442;
}

}
else
{
	if(input[i]==(21441+offset0))
{
	vR[i] = 21441;
}
else
{
	vR[i] = 21440;
}

}

}

}

}

}

}
else
{
	if(input[i]>(21407+offset0))
{
	if(input[i]>(21423+offset0))
{
	if(input[i]>(21431+offset0))
{
	if(input[i]>(21435+offset0))
{
	if(input[i]>(21437+offset0))
{
	if(input[i]==(21439+offset0))
{
	vR[i] = 21439;
}
else
{
	vR[i] = 21438;
}

}
else
{
	if(input[i]==(21437+offset0))
{
	vR[i] = 21437;
}
else
{
	vR[i] = 21436;
}

}

}
else
{
	if(input[i]>(21433+offset0))
{
	if(input[i]==(21435+offset0))
{
	vR[i] = 21435;
}
else
{
	vR[i] = 21434;
}

}
else
{
	if(input[i]==(21433+offset0))
{
	vR[i] = 21433;
}
else
{
	vR[i] = 21432;
}

}

}

}
else
{
	if(input[i]>(21427+offset0))
{
	if(input[i]>(21429+offset0))
{
	if(input[i]==(21431+offset0))
{
	vR[i] = 21431;
}
else
{
	vR[i] = 21430;
}

}
else
{
	if(input[i]==(21429+offset0))
{
	vR[i] = 21429;
}
else
{
	vR[i] = 21428;
}

}

}
else
{
	if(input[i]>(21425+offset0))
{
	if(input[i]==(21427+offset0))
{
	vR[i] = 21427;
}
else
{
	vR[i] = 21426;
}

}
else
{
	if(input[i]==(21425+offset0))
{
	vR[i] = 21425;
}
else
{
	vR[i] = 21424;
}

}

}

}

}
else
{
	if(input[i]>(21415+offset0))
{
	if(input[i]>(21419+offset0))
{
	if(input[i]>(21421+offset0))
{
	if(input[i]==(21423+offset0))
{
	vR[i] = 21423;
}
else
{
	vR[i] = 21422;
}

}
else
{
	if(input[i]==(21421+offset0))
{
	vR[i] = 21421;
}
else
{
	vR[i] = 21420;
}

}

}
else
{
	if(input[i]>(21417+offset0))
{
	if(input[i]==(21419+offset0))
{
	vR[i] = 21419;
}
else
{
	vR[i] = 21418;
}

}
else
{
	if(input[i]==(21417+offset0))
{
	vR[i] = 21417;
}
else
{
	vR[i] = 21416;
}

}

}

}
else
{
	if(input[i]>(21411+offset0))
{
	if(input[i]>(21413+offset0))
{
	if(input[i]==(21415+offset0))
{
	vR[i] = 21415;
}
else
{
	vR[i] = 21414;
}

}
else
{
	if(input[i]==(21413+offset0))
{
	vR[i] = 21413;
}
else
{
	vR[i] = 21412;
}

}

}
else
{
	if(input[i]>(21409+offset0))
{
	if(input[i]==(21411+offset0))
{
	vR[i] = 21411;
}
else
{
	vR[i] = 21410;
}

}
else
{
	if(input[i]==(21409+offset0))
{
	vR[i] = 21409;
}
else
{
	vR[i] = 21408;
}

}

}

}

}

}
else
{
	if(input[i]>(21391+offset0))
{
	if(input[i]>(21399+offset0))
{
	if(input[i]>(21403+offset0))
{
	if(input[i]>(21405+offset0))
{
	if(input[i]==(21407+offset0))
{
	vR[i] = 21407;
}
else
{
	vR[i] = 21406;
}

}
else
{
	if(input[i]==(21405+offset0))
{
	vR[i] = 21405;
}
else
{
	vR[i] = 21404;
}

}

}
else
{
	if(input[i]>(21401+offset0))
{
	if(input[i]==(21403+offset0))
{
	vR[i] = 21403;
}
else
{
	vR[i] = 21402;
}

}
else
{
	if(input[i]==(21401+offset0))
{
	vR[i] = 21401;
}
else
{
	vR[i] = 21400;
}

}

}

}
else
{
	if(input[i]>(21395+offset0))
{
	if(input[i]>(21397+offset0))
{
	if(input[i]==(21399+offset0))
{
	vR[i] = 21399;
}
else
{
	vR[i] = 21398;
}

}
else
{
	if(input[i]==(21397+offset0))
{
	vR[i] = 21397;
}
else
{
	vR[i] = 21396;
}

}

}
else
{
	if(input[i]>(21393+offset0))
{
	if(input[i]==(21395+offset0))
{
	vR[i] = 21395;
}
else
{
	vR[i] = 21394;
}

}
else
{
	if(input[i]==(21393+offset0))
{
	vR[i] = 21393;
}
else
{
	vR[i] = 21392;
}

}

}

}

}
else
{
	if(input[i]>(21383+offset0))
{
	if(input[i]>(21387+offset0))
{
	if(input[i]>(21389+offset0))
{
	if(input[i]==(21391+offset0))
{
	vR[i] = 21391;
}
else
{
	vR[i] = 21390;
}

}
else
{
	if(input[i]==(21389+offset0))
{
	vR[i] = 21389;
}
else
{
	vR[i] = 21388;
}

}

}
else
{
	if(input[i]>(21385+offset0))
{
	if(input[i]==(21387+offset0))
{
	vR[i] = 21387;
}
else
{
	vR[i] = 21386;
}

}
else
{
	if(input[i]==(21385+offset0))
{
	vR[i] = 21385;
}
else
{
	vR[i] = 21384;
}

}

}

}
else
{
	if(input[i]>(21379+offset0))
{
	if(input[i]>(21381+offset0))
{
	if(input[i]==(21383+offset0))
{
	vR[i] = 21383;
}
else
{
	vR[i] = 21382;
}

}
else
{
	if(input[i]==(21381+offset0))
{
	vR[i] = 21381;
}
else
{
	vR[i] = 21380;
}

}

}
else
{
	if(input[i]>(21377+offset0))
{
	if(input[i]==(21379+offset0))
{
	vR[i] = 21379;
}
else
{
	vR[i] = 21378;
}

}
else
{
	if(input[i]==(21377+offset0))
{
	vR[i] = 21377;
}
else
{
	vR[i] = 21376;
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
	if(input[i]>(21311+offset0))
{
	if(input[i]>(21343+offset0))
{
	if(input[i]>(21359+offset0))
{
	if(input[i]>(21367+offset0))
{
	if(input[i]>(21371+offset0))
{
	if(input[i]>(21373+offset0))
{
	if(input[i]==(21375+offset0))
{
	vR[i] = 21375;
}
else
{
	vR[i] = 21374;
}

}
else
{
	if(input[i]==(21373+offset0))
{
	vR[i] = 21373;
}
else
{
	vR[i] = 21372;
}

}

}
else
{
	if(input[i]>(21369+offset0))
{
	if(input[i]==(21371+offset0))
{
	vR[i] = 21371;
}
else
{
	vR[i] = 21370;
}

}
else
{
	if(input[i]==(21369+offset0))
{
	vR[i] = 21369;
}
else
{
	vR[i] = 21368;
}

}

}

}
else
{
	if(input[i]>(21363+offset0))
{
	if(input[i]>(21365+offset0))
{
	if(input[i]==(21367+offset0))
{
	vR[i] = 21367;
}
else
{
	vR[i] = 21366;
}

}
else
{
	if(input[i]==(21365+offset0))
{
	vR[i] = 21365;
}
else
{
	vR[i] = 21364;
}

}

}
else
{
	if(input[i]>(21361+offset0))
{
	if(input[i]==(21363+offset0))
{
	vR[i] = 21363;
}
else
{
	vR[i] = 21362;
}

}
else
{
	if(input[i]==(21361+offset0))
{
	vR[i] = 21361;
}
else
{
	vR[i] = 21360;
}

}

}

}

}
else
{
	if(input[i]>(21351+offset0))
{
	if(input[i]>(21355+offset0))
{
	if(input[i]>(21357+offset0))
{
	if(input[i]==(21359+offset0))
{
	vR[i] = 21359;
}
else
{
	vR[i] = 21358;
}

}
else
{
	if(input[i]==(21357+offset0))
{
	vR[i] = 21357;
}
else
{
	vR[i] = 21356;
}

}

}
else
{
	if(input[i]>(21353+offset0))
{
	if(input[i]==(21355+offset0))
{
	vR[i] = 21355;
}
else
{
	vR[i] = 21354;
}

}
else
{
	if(input[i]==(21353+offset0))
{
	vR[i] = 21353;
}
else
{
	vR[i] = 21352;
}

}

}

}
else
{
	if(input[i]>(21347+offset0))
{
	if(input[i]>(21349+offset0))
{
	if(input[i]==(21351+offset0))
{
	vR[i] = 21351;
}
else
{
	vR[i] = 21350;
}

}
else
{
	if(input[i]==(21349+offset0))
{
	vR[i] = 21349;
}
else
{
	vR[i] = 21348;
}

}

}
else
{
	if(input[i]>(21345+offset0))
{
	if(input[i]==(21347+offset0))
{
	vR[i] = 21347;
}
else
{
	vR[i] = 21346;
}

}
else
{
	if(input[i]==(21345+offset0))
{
	vR[i] = 21345;
}
else
{
	vR[i] = 21344;
}

}

}

}

}

}
else
{
	if(input[i]>(21327+offset0))
{
	if(input[i]>(21335+offset0))
{
	if(input[i]>(21339+offset0))
{
	if(input[i]>(21341+offset0))
{
	if(input[i]==(21343+offset0))
{
	vR[i] = 21343;
}
else
{
	vR[i] = 21342;
}

}
else
{
	if(input[i]==(21341+offset0))
{
	vR[i] = 21341;
}
else
{
	vR[i] = 21340;
}

}

}
else
{
	if(input[i]>(21337+offset0))
{
	if(input[i]==(21339+offset0))
{
	vR[i] = 21339;
}
else
{
	vR[i] = 21338;
}

}
else
{
	if(input[i]==(21337+offset0))
{
	vR[i] = 21337;
}
else
{
	vR[i] = 21336;
}

}

}

}
else
{
	if(input[i]>(21331+offset0))
{
	if(input[i]>(21333+offset0))
{
	if(input[i]==(21335+offset0))
{
	vR[i] = 21335;
}
else
{
	vR[i] = 21334;
}

}
else
{
	if(input[i]==(21333+offset0))
{
	vR[i] = 21333;
}
else
{
	vR[i] = 21332;
}

}

}
else
{
	if(input[i]>(21329+offset0))
{
	if(input[i]==(21331+offset0))
{
	vR[i] = 21331;
}
else
{
	vR[i] = 21330;
}

}
else
{
	if(input[i]==(21329+offset0))
{
	vR[i] = 21329;
}
else
{
	vR[i] = 21328;
}

}

}

}

}
else
{
	if(input[i]>(21319+offset0))
{
	if(input[i]>(21323+offset0))
{
	if(input[i]>(21325+offset0))
{
	if(input[i]==(21327+offset0))
{
	vR[i] = 21327;
}
else
{
	vR[i] = 21326;
}

}
else
{
	if(input[i]==(21325+offset0))
{
	vR[i] = 21325;
}
else
{
	vR[i] = 21324;
}

}

}
else
{
	if(input[i]>(21321+offset0))
{
	if(input[i]==(21323+offset0))
{
	vR[i] = 21323;
}
else
{
	vR[i] = 21322;
}

}
else
{
	if(input[i]==(21321+offset0))
{
	vR[i] = 21321;
}
else
{
	vR[i] = 21320;
}

}

}

}
else
{
	if(input[i]>(21315+offset0))
{
	if(input[i]>(21317+offset0))
{
	if(input[i]==(21319+offset0))
{
	vR[i] = 21319;
}
else
{
	vR[i] = 21318;
}

}
else
{
	if(input[i]==(21317+offset0))
{
	vR[i] = 21317;
}
else
{
	vR[i] = 21316;
}

}

}
else
{
	if(input[i]>(21313+offset0))
{
	if(input[i]==(21315+offset0))
{
	vR[i] = 21315;
}
else
{
	vR[i] = 21314;
}

}
else
{
	if(input[i]==(21313+offset0))
{
	vR[i] = 21313;
}
else
{
	vR[i] = 21312;
}

}

}

}

}

}

}
else
{
	if(input[i]>(21279+offset0))
{
	if(input[i]>(21295+offset0))
{
	if(input[i]>(21303+offset0))
{
	if(input[i]>(21307+offset0))
{
	if(input[i]>(21309+offset0))
{
	if(input[i]==(21311+offset0))
{
	vR[i] = 21311;
}
else
{
	vR[i] = 21310;
}

}
else
{
	if(input[i]==(21309+offset0))
{
	vR[i] = 21309;
}
else
{
	vR[i] = 21308;
}

}

}
else
{
	if(input[i]>(21305+offset0))
{
	if(input[i]==(21307+offset0))
{
	vR[i] = 21307;
}
else
{
	vR[i] = 21306;
}

}
else
{
	if(input[i]==(21305+offset0))
{
	vR[i] = 21305;
}
else
{
	vR[i] = 21304;
}

}

}

}
else
{
	if(input[i]>(21299+offset0))
{
	if(input[i]>(21301+offset0))
{
	if(input[i]==(21303+offset0))
{
	vR[i] = 21303;
}
else
{
	vR[i] = 21302;
}

}
else
{
	if(input[i]==(21301+offset0))
{
	vR[i] = 21301;
}
else
{
	vR[i] = 21300;
}

}

}
else
{
	if(input[i]>(21297+offset0))
{
	if(input[i]==(21299+offset0))
{
	vR[i] = 21299;
}
else
{
	vR[i] = 21298;
}

}
else
{
	if(input[i]==(21297+offset0))
{
	vR[i] = 21297;
}
else
{
	vR[i] = 21296;
}

}

}

}

}
else
{
	if(input[i]>(21287+offset0))
{
	if(input[i]>(21291+offset0))
{
	if(input[i]>(21293+offset0))
{
	if(input[i]==(21295+offset0))
{
	vR[i] = 21295;
}
else
{
	vR[i] = 21294;
}

}
else
{
	if(input[i]==(21293+offset0))
{
	vR[i] = 21293;
}
else
{
	vR[i] = 21292;
}

}

}
else
{
	if(input[i]>(21289+offset0))
{
	if(input[i]==(21291+offset0))
{
	vR[i] = 21291;
}
else
{
	vR[i] = 21290;
}

}
else
{
	if(input[i]==(21289+offset0))
{
	vR[i] = 21289;
}
else
{
	vR[i] = 21288;
}

}

}

}
else
{
	if(input[i]>(21283+offset0))
{
	if(input[i]>(21285+offset0))
{
	if(input[i]==(21287+offset0))
{
	vR[i] = 21287;
}
else
{
	vR[i] = 21286;
}

}
else
{
	if(input[i]==(21285+offset0))
{
	vR[i] = 21285;
}
else
{
	vR[i] = 21284;
}

}

}
else
{
	if(input[i]>(21281+offset0))
{
	if(input[i]==(21283+offset0))
{
	vR[i] = 21283;
}
else
{
	vR[i] = 21282;
}

}
else
{
	if(input[i]==(21281+offset0))
{
	vR[i] = 21281;
}
else
{
	vR[i] = 21280;
}

}

}

}

}

}
else
{
	if(input[i]>(21263+offset0))
{
	if(input[i]>(21271+offset0))
{
	if(input[i]>(21275+offset0))
{
	if(input[i]>(21277+offset0))
{
	if(input[i]==(21279+offset0))
{
	vR[i] = 21279;
}
else
{
	vR[i] = 21278;
}

}
else
{
	if(input[i]==(21277+offset0))
{
	vR[i] = 21277;
}
else
{
	vR[i] = 21276;
}

}

}
else
{
	if(input[i]>(21273+offset0))
{
	if(input[i]==(21275+offset0))
{
	vR[i] = 21275;
}
else
{
	vR[i] = 21274;
}

}
else
{
	if(input[i]==(21273+offset0))
{
	vR[i] = 21273;
}
else
{
	vR[i] = 21272;
}

}

}

}
else
{
	if(input[i]>(21267+offset0))
{
	if(input[i]>(21269+offset0))
{
	if(input[i]==(21271+offset0))
{
	vR[i] = 21271;
}
else
{
	vR[i] = 21270;
}

}
else
{
	if(input[i]==(21269+offset0))
{
	vR[i] = 21269;
}
else
{
	vR[i] = 21268;
}

}

}
else
{
	if(input[i]>(21265+offset0))
{
	if(input[i]==(21267+offset0))
{
	vR[i] = 21267;
}
else
{
	vR[i] = 21266;
}

}
else
{
	if(input[i]==(21265+offset0))
{
	vR[i] = 21265;
}
else
{
	vR[i] = 21264;
}

}

}

}

}
else
{
	if(input[i]>(21255+offset0))
{
	if(input[i]>(21259+offset0))
{
	if(input[i]>(21261+offset0))
{
	if(input[i]==(21263+offset0))
{
	vR[i] = 21263;
}
else
{
	vR[i] = 21262;
}

}
else
{
	if(input[i]==(21261+offset0))
{
	vR[i] = 21261;
}
else
{
	vR[i] = 21260;
}

}

}
else
{
	if(input[i]>(21257+offset0))
{
	if(input[i]==(21259+offset0))
{
	vR[i] = 21259;
}
else
{
	vR[i] = 21258;
}

}
else
{
	if(input[i]==(21257+offset0))
{
	vR[i] = 21257;
}
else
{
	vR[i] = 21256;
}

}

}

}
else
{
	if(input[i]>(21251+offset0))
{
	if(input[i]>(21253+offset0))
{
	if(input[i]==(21255+offset0))
{
	vR[i] = 21255;
}
else
{
	vR[i] = 21254;
}

}
else
{
	if(input[i]==(21253+offset0))
{
	vR[i] = 21253;
}
else
{
	vR[i] = 21252;
}

}

}
else
{
	if(input[i]>(21249+offset0))
{
	if(input[i]==(21251+offset0))
{
	vR[i] = 21251;
}
else
{
	vR[i] = 21250;
}

}
else
{
	if(input[i]==(21249+offset0))
{
	vR[i] = 21249;
}
else
{
	vR[i] = 21248;
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
	if(input[i]>(21119+offset0))
{
	if(input[i]>(21183+offset0))
{
	if(input[i]>(21215+offset0))
{
	if(input[i]>(21231+offset0))
{
	if(input[i]>(21239+offset0))
{
	if(input[i]>(21243+offset0))
{
	if(input[i]>(21245+offset0))
{
	if(input[i]==(21247+offset0))
{
	vR[i] = 21247;
}
else
{
	vR[i] = 21246;
}

}
else
{
	if(input[i]==(21245+offset0))
{
	vR[i] = 21245;
}
else
{
	vR[i] = 21244;
}

}

}
else
{
	if(input[i]>(21241+offset0))
{
	if(input[i]==(21243+offset0))
{
	vR[i] = 21243;
}
else
{
	vR[i] = 21242;
}

}
else
{
	if(input[i]==(21241+offset0))
{
	vR[i] = 21241;
}
else
{
	vR[i] = 21240;
}

}

}

}
else
{
	if(input[i]>(21235+offset0))
{
	if(input[i]>(21237+offset0))
{
	if(input[i]==(21239+offset0))
{
	vR[i] = 21239;
}
else
{
	vR[i] = 21238;
}

}
else
{
	if(input[i]==(21237+offset0))
{
	vR[i] = 21237;
}
else
{
	vR[i] = 21236;
}

}

}
else
{
	if(input[i]>(21233+offset0))
{
	if(input[i]==(21235+offset0))
{
	vR[i] = 21235;
}
else
{
	vR[i] = 21234;
}

}
else
{
	if(input[i]==(21233+offset0))
{
	vR[i] = 21233;
}
else
{
	vR[i] = 21232;
}

}

}

}

}
else
{
	if(input[i]>(21223+offset0))
{
	if(input[i]>(21227+offset0))
{
	if(input[i]>(21229+offset0))
{
	if(input[i]==(21231+offset0))
{
	vR[i] = 21231;
}
else
{
	vR[i] = 21230;
}

}
else
{
	if(input[i]==(21229+offset0))
{
	vR[i] = 21229;
}
else
{
	vR[i] = 21228;
}

}

}
else
{
	if(input[i]>(21225+offset0))
{
	if(input[i]==(21227+offset0))
{
	vR[i] = 21227;
}
else
{
	vR[i] = 21226;
}

}
else
{
	if(input[i]==(21225+offset0))
{
	vR[i] = 21225;
}
else
{
	vR[i] = 21224;
}

}

}

}
else
{
	if(input[i]>(21219+offset0))
{
	if(input[i]>(21221+offset0))
{
	if(input[i]==(21223+offset0))
{
	vR[i] = 21223;
}
else
{
	vR[i] = 21222;
}

}
else
{
	if(input[i]==(21221+offset0))
{
	vR[i] = 21221;
}
else
{
	vR[i] = 21220;
}

}

}
else
{
	if(input[i]>(21217+offset0))
{
	if(input[i]==(21219+offset0))
{
	vR[i] = 21219;
}
else
{
	vR[i] = 21218;
}

}
else
{
	if(input[i]==(21217+offset0))
{
	vR[i] = 21217;
}
else
{
	vR[i] = 21216;
}

}

}

}

}

}
else
{
	if(input[i]>(21199+offset0))
{
	if(input[i]>(21207+offset0))
{
	if(input[i]>(21211+offset0))
{
	if(input[i]>(21213+offset0))
{
	if(input[i]==(21215+offset0))
{
	vR[i] = 21215;
}
else
{
	vR[i] = 21214;
}

}
else
{
	if(input[i]==(21213+offset0))
{
	vR[i] = 21213;
}
else
{
	vR[i] = 21212;
}

}

}
else
{
	if(input[i]>(21209+offset0))
{
	if(input[i]==(21211+offset0))
{
	vR[i] = 21211;
}
else
{
	vR[i] = 21210;
}

}
else
{
	if(input[i]==(21209+offset0))
{
	vR[i] = 21209;
}
else
{
	vR[i] = 21208;
}

}

}

}
else
{
	if(input[i]>(21203+offset0))
{
	if(input[i]>(21205+offset0))
{
	if(input[i]==(21207+offset0))
{
	vR[i] = 21207;
}
else
{
	vR[i] = 21206;
}

}
else
{
	if(input[i]==(21205+offset0))
{
	vR[i] = 21205;
}
else
{
	vR[i] = 21204;
}

}

}
else
{
	if(input[i]>(21201+offset0))
{
	if(input[i]==(21203+offset0))
{
	vR[i] = 21203;
}
else
{
	vR[i] = 21202;
}

}
else
{
	if(input[i]==(21201+offset0))
{
	vR[i] = 21201;
}
else
{
	vR[i] = 21200;
}

}

}

}

}
else
{
	if(input[i]>(21191+offset0))
{
	if(input[i]>(21195+offset0))
{
	if(input[i]>(21197+offset0))
{
	if(input[i]==(21199+offset0))
{
	vR[i] = 21199;
}
else
{
	vR[i] = 21198;
}

}
else
{
	if(input[i]==(21197+offset0))
{
	vR[i] = 21197;
}
else
{
	vR[i] = 21196;
}

}

}
else
{
	if(input[i]>(21193+offset0))
{
	if(input[i]==(21195+offset0))
{
	vR[i] = 21195;
}
else
{
	vR[i] = 21194;
}

}
else
{
	if(input[i]==(21193+offset0))
{
	vR[i] = 21193;
}
else
{
	vR[i] = 21192;
}

}

}

}
else
{
	if(input[i]>(21187+offset0))
{
	if(input[i]>(21189+offset0))
{
	if(input[i]==(21191+offset0))
{
	vR[i] = 21191;
}
else
{
	vR[i] = 21190;
}

}
else
{
	if(input[i]==(21189+offset0))
{
	vR[i] = 21189;
}
else
{
	vR[i] = 21188;
}

}

}
else
{
	if(input[i]>(21185+offset0))
{
	if(input[i]==(21187+offset0))
{
	vR[i] = 21187;
}
else
{
	vR[i] = 21186;
}

}
else
{
	if(input[i]==(21185+offset0))
{
	vR[i] = 21185;
}
else
{
	vR[i] = 21184;
}

}

}

}

}

}

}
else
{
	if(input[i]>(21151+offset0))
{
	if(input[i]>(21167+offset0))
{
	if(input[i]>(21175+offset0))
{
	if(input[i]>(21179+offset0))
{
	if(input[i]>(21181+offset0))
{
	if(input[i]==(21183+offset0))
{
	vR[i] = 21183;
}
else
{
	vR[i] = 21182;
}

}
else
{
	if(input[i]==(21181+offset0))
{
	vR[i] = 21181;
}
else
{
	vR[i] = 21180;
}

}

}
else
{
	if(input[i]>(21177+offset0))
{
	if(input[i]==(21179+offset0))
{
	vR[i] = 21179;
}
else
{
	vR[i] = 21178;
}

}
else
{
	if(input[i]==(21177+offset0))
{
	vR[i] = 21177;
}
else
{
	vR[i] = 21176;
}

}

}

}
else
{
	if(input[i]>(21171+offset0))
{
	if(input[i]>(21173+offset0))
{
	if(input[i]==(21175+offset0))
{
	vR[i] = 21175;
}
else
{
	vR[i] = 21174;
}

}
else
{
	if(input[i]==(21173+offset0))
{
	vR[i] = 21173;
}
else
{
	vR[i] = 21172;
}

}

}
else
{
	if(input[i]>(21169+offset0))
{
	if(input[i]==(21171+offset0))
{
	vR[i] = 21171;
}
else
{
	vR[i] = 21170;
}

}
else
{
	if(input[i]==(21169+offset0))
{
	vR[i] = 21169;
}
else
{
	vR[i] = 21168;
}

}

}

}

}
else
{
	if(input[i]>(21159+offset0))
{
	if(input[i]>(21163+offset0))
{
	if(input[i]>(21165+offset0))
{
	if(input[i]==(21167+offset0))
{
	vR[i] = 21167;
}
else
{
	vR[i] = 21166;
}

}
else
{
	if(input[i]==(21165+offset0))
{
	vR[i] = 21165;
}
else
{
	vR[i] = 21164;
}

}

}
else
{
	if(input[i]>(21161+offset0))
{
	if(input[i]==(21163+offset0))
{
	vR[i] = 21163;
}
else
{
	vR[i] = 21162;
}

}
else
{
	if(input[i]==(21161+offset0))
{
	vR[i] = 21161;
}
else
{
	vR[i] = 21160;
}

}

}

}
else
{
	if(input[i]>(21155+offset0))
{
	if(input[i]>(21157+offset0))
{
	if(input[i]==(21159+offset0))
{
	vR[i] = 21159;
}
else
{
	vR[i] = 21158;
}

}
else
{
	if(input[i]==(21157+offset0))
{
	vR[i] = 21157;
}
else
{
	vR[i] = 21156;
}

}

}
else
{
	if(input[i]>(21153+offset0))
{
	if(input[i]==(21155+offset0))
{
	vR[i] = 21155;
}
else
{
	vR[i] = 21154;
}

}
else
{
	if(input[i]==(21153+offset0))
{
	vR[i] = 21153;
}
else
{
	vR[i] = 21152;
}

}

}

}

}

}
else
{
	if(input[i]>(21135+offset0))
{
	if(input[i]>(21143+offset0))
{
	if(input[i]>(21147+offset0))
{
	if(input[i]>(21149+offset0))
{
	if(input[i]==(21151+offset0))
{
	vR[i] = 21151;
}
else
{
	vR[i] = 21150;
}

}
else
{
	if(input[i]==(21149+offset0))
{
	vR[i] = 21149;
}
else
{
	vR[i] = 21148;
}

}

}
else
{
	if(input[i]>(21145+offset0))
{
	if(input[i]==(21147+offset0))
{
	vR[i] = 21147;
}
else
{
	vR[i] = 21146;
}

}
else
{
	if(input[i]==(21145+offset0))
{
	vR[i] = 21145;
}
else
{
	vR[i] = 21144;
}

}

}

}
else
{
	if(input[i]>(21139+offset0))
{
	if(input[i]>(21141+offset0))
{
	if(input[i]==(21143+offset0))
{
	vR[i] = 21143;
}
else
{
	vR[i] = 21142;
}

}
else
{
	if(input[i]==(21141+offset0))
{
	vR[i] = 21141;
}
else
{
	vR[i] = 21140;
}

}

}
else
{
	if(input[i]>(21137+offset0))
{
	if(input[i]==(21139+offset0))
{
	vR[i] = 21139;
}
else
{
	vR[i] = 21138;
}

}
else
{
	if(input[i]==(21137+offset0))
{
	vR[i] = 21137;
}
else
{
	vR[i] = 21136;
}

}

}

}

}
else
{
	if(input[i]>(21127+offset0))
{
	if(input[i]>(21131+offset0))
{
	if(input[i]>(21133+offset0))
{
	if(input[i]==(21135+offset0))
{
	vR[i] = 21135;
}
else
{
	vR[i] = 21134;
}

}
else
{
	if(input[i]==(21133+offset0))
{
	vR[i] = 21133;
}
else
{
	vR[i] = 21132;
}

}

}
else
{
	if(input[i]>(21129+offset0))
{
	if(input[i]==(21131+offset0))
{
	vR[i] = 21131;
}
else
{
	vR[i] = 21130;
}

}
else
{
	if(input[i]==(21129+offset0))
{
	vR[i] = 21129;
}
else
{
	vR[i] = 21128;
}

}

}

}
else
{
	if(input[i]>(21123+offset0))
{
	if(input[i]>(21125+offset0))
{
	if(input[i]==(21127+offset0))
{
	vR[i] = 21127;
}
else
{
	vR[i] = 21126;
}

}
else
{
	if(input[i]==(21125+offset0))
{
	vR[i] = 21125;
}
else
{
	vR[i] = 21124;
}

}

}
else
{
	if(input[i]>(21121+offset0))
{
	if(input[i]==(21123+offset0))
{
	vR[i] = 21123;
}
else
{
	vR[i] = 21122;
}

}
else
{
	if(input[i]==(21121+offset0))
{
	vR[i] = 21121;
}
else
{
	vR[i] = 21120;
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
	if(input[i]>(21055+offset0))
{
	if(input[i]>(21087+offset0))
{
	if(input[i]>(21103+offset0))
{
	if(input[i]>(21111+offset0))
{
	if(input[i]>(21115+offset0))
{
	if(input[i]>(21117+offset0))
{
	if(input[i]==(21119+offset0))
{
	vR[i] = 21119;
}
else
{
	vR[i] = 21118;
}

}
else
{
	if(input[i]==(21117+offset0))
{
	vR[i] = 21117;
}
else
{
	vR[i] = 21116;
}

}

}
else
{
	if(input[i]>(21113+offset0))
{
	if(input[i]==(21115+offset0))
{
	vR[i] = 21115;
}
else
{
	vR[i] = 21114;
}

}
else
{
	if(input[i]==(21113+offset0))
{
	vR[i] = 21113;
}
else
{
	vR[i] = 21112;
}

}

}

}
else
{
	if(input[i]>(21107+offset0))
{
	if(input[i]>(21109+offset0))
{
	if(input[i]==(21111+offset0))
{
	vR[i] = 21111;
}
else
{
	vR[i] = 21110;
}

}
else
{
	if(input[i]==(21109+offset0))
{
	vR[i] = 21109;
}
else
{
	vR[i] = 21108;
}

}

}
else
{
	if(input[i]>(21105+offset0))
{
	if(input[i]==(21107+offset0))
{
	vR[i] = 21107;
}
else
{
	vR[i] = 21106;
}

}
else
{
	if(input[i]==(21105+offset0))
{
	vR[i] = 21105;
}
else
{
	vR[i] = 21104;
}

}

}

}

}
else
{
	if(input[i]>(21095+offset0))
{
	if(input[i]>(21099+offset0))
{
	if(input[i]>(21101+offset0))
{
	if(input[i]==(21103+offset0))
{
	vR[i] = 21103;
}
else
{
	vR[i] = 21102;
}

}
else
{
	if(input[i]==(21101+offset0))
{
	vR[i] = 21101;
}
else
{
	vR[i] = 21100;
}

}

}
else
{
	if(input[i]>(21097+offset0))
{
	if(input[i]==(21099+offset0))
{
	vR[i] = 21099;
}
else
{
	vR[i] = 21098;
}

}
else
{
	if(input[i]==(21097+offset0))
{
	vR[i] = 21097;
}
else
{
	vR[i] = 21096;
}

}

}

}
else
{
	if(input[i]>(21091+offset0))
{
	if(input[i]>(21093+offset0))
{
	if(input[i]==(21095+offset0))
{
	vR[i] = 21095;
}
else
{
	vR[i] = 21094;
}

}
else
{
	if(input[i]==(21093+offset0))
{
	vR[i] = 21093;
}
else
{
	vR[i] = 21092;
}

}

}
else
{
	if(input[i]>(21089+offset0))
{
	if(input[i]==(21091+offset0))
{
	vR[i] = 21091;
}
else
{
	vR[i] = 21090;
}

}
else
{
	if(input[i]==(21089+offset0))
{
	vR[i] = 21089;
}
else
{
	vR[i] = 21088;
}

}

}

}

}

}
else
{
	if(input[i]>(21071+offset0))
{
	if(input[i]>(21079+offset0))
{
	if(input[i]>(21083+offset0))
{
	if(input[i]>(21085+offset0))
{
	if(input[i]==(21087+offset0))
{
	vR[i] = 21087;
}
else
{
	vR[i] = 21086;
}

}
else
{
	if(input[i]==(21085+offset0))
{
	vR[i] = 21085;
}
else
{
	vR[i] = 21084;
}

}

}
else
{
	if(input[i]>(21081+offset0))
{
	if(input[i]==(21083+offset0))
{
	vR[i] = 21083;
}
else
{
	vR[i] = 21082;
}

}
else
{
	if(input[i]==(21081+offset0))
{
	vR[i] = 21081;
}
else
{
	vR[i] = 21080;
}

}

}

}
else
{
	if(input[i]>(21075+offset0))
{
	if(input[i]>(21077+offset0))
{
	if(input[i]==(21079+offset0))
{
	vR[i] = 21079;
}
else
{
	vR[i] = 21078;
}

}
else
{
	if(input[i]==(21077+offset0))
{
	vR[i] = 21077;
}
else
{
	vR[i] = 21076;
}

}

}
else
{
	if(input[i]>(21073+offset0))
{
	if(input[i]==(21075+offset0))
{
	vR[i] = 21075;
}
else
{
	vR[i] = 21074;
}

}
else
{
	if(input[i]==(21073+offset0))
{
	vR[i] = 21073;
}
else
{
	vR[i] = 21072;
}

}

}

}

}
else
{
	if(input[i]>(21063+offset0))
{
	if(input[i]>(21067+offset0))
{
	if(input[i]>(21069+offset0))
{
	if(input[i]==(21071+offset0))
{
	vR[i] = 21071;
}
else
{
	vR[i] = 21070;
}

}
else
{
	if(input[i]==(21069+offset0))
{
	vR[i] = 21069;
}
else
{
	vR[i] = 21068;
}

}

}
else
{
	if(input[i]>(21065+offset0))
{
	if(input[i]==(21067+offset0))
{
	vR[i] = 21067;
}
else
{
	vR[i] = 21066;
}

}
else
{
	if(input[i]==(21065+offset0))
{
	vR[i] = 21065;
}
else
{
	vR[i] = 21064;
}

}

}

}
else
{
	if(input[i]>(21059+offset0))
{
	if(input[i]>(21061+offset0))
{
	if(input[i]==(21063+offset0))
{
	vR[i] = 21063;
}
else
{
	vR[i] = 21062;
}

}
else
{
	if(input[i]==(21061+offset0))
{
	vR[i] = 21061;
}
else
{
	vR[i] = 21060;
}

}

}
else
{
	if(input[i]>(21057+offset0))
{
	if(input[i]==(21059+offset0))
{
	vR[i] = 21059;
}
else
{
	vR[i] = 21058;
}

}
else
{
	if(input[i]==(21057+offset0))
{
	vR[i] = 21057;
}
else
{
	vR[i] = 21056;
}

}

}

}

}

}

}
else
{
	if(input[i]>(21023+offset0))
{
	if(input[i]>(21039+offset0))
{
	if(input[i]>(21047+offset0))
{
	if(input[i]>(21051+offset0))
{
	if(input[i]>(21053+offset0))
{
	if(input[i]==(21055+offset0))
{
	vR[i] = 21055;
}
else
{
	vR[i] = 21054;
}

}
else
{
	if(input[i]==(21053+offset0))
{
	vR[i] = 21053;
}
else
{
	vR[i] = 21052;
}

}

}
else
{
	if(input[i]>(21049+offset0))
{
	if(input[i]==(21051+offset0))
{
	vR[i] = 21051;
}
else
{
	vR[i] = 21050;
}

}
else
{
	if(input[i]==(21049+offset0))
{
	vR[i] = 21049;
}
else
{
	vR[i] = 21048;
}

}

}

}
else
{
	if(input[i]>(21043+offset0))
{
	if(input[i]>(21045+offset0))
{
	if(input[i]==(21047+offset0))
{
	vR[i] = 21047;
}
else
{
	vR[i] = 21046;
}

}
else
{
	if(input[i]==(21045+offset0))
{
	vR[i] = 21045;
}
else
{
	vR[i] = 21044;
}

}

}
else
{
	if(input[i]>(21041+offset0))
{
	if(input[i]==(21043+offset0))
{
	vR[i] = 21043;
}
else
{
	vR[i] = 21042;
}

}
else
{
	if(input[i]==(21041+offset0))
{
	vR[i] = 21041;
}
else
{
	vR[i] = 21040;
}

}

}

}

}
else
{
	if(input[i]>(21031+offset0))
{
	if(input[i]>(21035+offset0))
{
	if(input[i]>(21037+offset0))
{
	if(input[i]==(21039+offset0))
{
	vR[i] = 21039;
}
else
{
	vR[i] = 21038;
}

}
else
{
	if(input[i]==(21037+offset0))
{
	vR[i] = 21037;
}
else
{
	vR[i] = 21036;
}

}

}
else
{
	if(input[i]>(21033+offset0))
{
	if(input[i]==(21035+offset0))
{
	vR[i] = 21035;
}
else
{
	vR[i] = 21034;
}

}
else
{
	if(input[i]==(21033+offset0))
{
	vR[i] = 21033;
}
else
{
	vR[i] = 21032;
}

}

}

}
else
{
	if(input[i]>(21027+offset0))
{
	if(input[i]>(21029+offset0))
{
	if(input[i]==(21031+offset0))
{
	vR[i] = 21031;
}
else
{
	vR[i] = 21030;
}

}
else
{
	if(input[i]==(21029+offset0))
{
	vR[i] = 21029;
}
else
{
	vR[i] = 21028;
}

}

}
else
{
	if(input[i]>(21025+offset0))
{
	if(input[i]==(21027+offset0))
{
	vR[i] = 21027;
}
else
{
	vR[i] = 21026;
}

}
else
{
	if(input[i]==(21025+offset0))
{
	vR[i] = 21025;
}
else
{
	vR[i] = 21024;
}

}

}

}

}

}
else
{
	if(input[i]>(21007+offset0))
{
	if(input[i]>(21015+offset0))
{
	if(input[i]>(21019+offset0))
{
	if(input[i]>(21021+offset0))
{
	if(input[i]==(21023+offset0))
{
	vR[i] = 21023;
}
else
{
	vR[i] = 21022;
}

}
else
{
	if(input[i]==(21021+offset0))
{
	vR[i] = 21021;
}
else
{
	vR[i] = 21020;
}

}

}
else
{
	if(input[i]>(21017+offset0))
{
	if(input[i]==(21019+offset0))
{
	vR[i] = 21019;
}
else
{
	vR[i] = 21018;
}

}
else
{
	if(input[i]==(21017+offset0))
{
	vR[i] = 21017;
}
else
{
	vR[i] = 21016;
}

}

}

}
else
{
	if(input[i]>(21011+offset0))
{
	if(input[i]>(21013+offset0))
{
	if(input[i]==(21015+offset0))
{
	vR[i] = 21015;
}
else
{
	vR[i] = 21014;
}

}
else
{
	if(input[i]==(21013+offset0))
{
	vR[i] = 21013;
}
else
{
	vR[i] = 21012;
}

}

}
else
{
	if(input[i]>(21009+offset0))
{
	if(input[i]==(21011+offset0))
{
	vR[i] = 21011;
}
else
{
	vR[i] = 21010;
}

}
else
{
	if(input[i]==(21009+offset0))
{
	vR[i] = 21009;
}
else
{
	vR[i] = 21008;
}

}

}

}

}
else
{
	if(input[i]>(20999+offset0))
{
	if(input[i]>(21003+offset0))
{
	if(input[i]>(21005+offset0))
{
	if(input[i]==(21007+offset0))
{
	vR[i] = 21007;
}
else
{
	vR[i] = 21006;
}

}
else
{
	if(input[i]==(21005+offset0))
{
	vR[i] = 21005;
}
else
{
	vR[i] = 21004;
}

}

}
else
{
	if(input[i]>(21001+offset0))
{
	if(input[i]==(21003+offset0))
{
	vR[i] = 21003;
}
else
{
	vR[i] = 21002;
}

}
else
{
	if(input[i]==(21001+offset0))
{
	vR[i] = 21001;
}
else
{
	vR[i] = 21000;
}

}

}

}
else
{
	if(input[i]>(20995+offset0))
{
	if(input[i]>(20997+offset0))
{
	if(input[i]==(20999+offset0))
{
	vR[i] = 20999;
}
else
{
	vR[i] = 20998;
}

}
else
{
	if(input[i]==(20997+offset0))
{
	vR[i] = 20997;
}
else
{
	vR[i] = 20996;
}

}

}
else
{
	if(input[i]>(20993+offset0))
{
	if(input[i]==(20995+offset0))
{
	vR[i] = 20995;
}
else
{
	vR[i] = 20994;
}

}
else
{
	if(input[i]==(20993+offset0))
{
	vR[i] = 20993;
}
else
{
	vR[i] = 20992;
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
	if(input[i]>(20735+offset0))
{
	if(input[i]>(20863+offset0))
{
	if(input[i]>(20927+offset0))
{
	if(input[i]>(20959+offset0))
{
	if(input[i]>(20975+offset0))
{
	if(input[i]>(20983+offset0))
{
	if(input[i]>(20987+offset0))
{
	if(input[i]>(20989+offset0))
{
	if(input[i]==(20991+offset0))
{
	vR[i] = 20991;
}
else
{
	vR[i] = 20990;
}

}
else
{
	if(input[i]==(20989+offset0))
{
	vR[i] = 20989;
}
else
{
	vR[i] = 20988;
}

}

}
else
{
	if(input[i]>(20985+offset0))
{
	if(input[i]==(20987+offset0))
{
	vR[i] = 20987;
}
else
{
	vR[i] = 20986;
}

}
else
{
	if(input[i]==(20985+offset0))
{
	vR[i] = 20985;
}
else
{
	vR[i] = 20984;
}

}

}

}
else
{
	if(input[i]>(20979+offset0))
{
	if(input[i]>(20981+offset0))
{
	if(input[i]==(20983+offset0))
{
	vR[i] = 20983;
}
else
{
	vR[i] = 20982;
}

}
else
{
	if(input[i]==(20981+offset0))
{
	vR[i] = 20981;
}
else
{
	vR[i] = 20980;
}

}

}
else
{
	if(input[i]>(20977+offset0))
{
	if(input[i]==(20979+offset0))
{
	vR[i] = 20979;
}
else
{
	vR[i] = 20978;
}

}
else
{
	if(input[i]==(20977+offset0))
{
	vR[i] = 20977;
}
else
{
	vR[i] = 20976;
}

}

}

}

}
else
{
	if(input[i]>(20967+offset0))
{
	if(input[i]>(20971+offset0))
{
	if(input[i]>(20973+offset0))
{
	if(input[i]==(20975+offset0))
{
	vR[i] = 20975;
}
else
{
	vR[i] = 20974;
}

}
else
{
	if(input[i]==(20973+offset0))
{
	vR[i] = 20973;
}
else
{
	vR[i] = 20972;
}

}

}
else
{
	if(input[i]>(20969+offset0))
{
	if(input[i]==(20971+offset0))
{
	vR[i] = 20971;
}
else
{
	vR[i] = 20970;
}

}
else
{
	if(input[i]==(20969+offset0))
{
	vR[i] = 20969;
}
else
{
	vR[i] = 20968;
}

}

}

}
else
{
	if(input[i]>(20963+offset0))
{
	if(input[i]>(20965+offset0))
{
	if(input[i]==(20967+offset0))
{
	vR[i] = 20967;
}
else
{
	vR[i] = 20966;
}

}
else
{
	if(input[i]==(20965+offset0))
{
	vR[i] = 20965;
}
else
{
	vR[i] = 20964;
}

}

}
else
{
	if(input[i]>(20961+offset0))
{
	if(input[i]==(20963+offset0))
{
	vR[i] = 20963;
}
else
{
	vR[i] = 20962;
}

}
else
{
	if(input[i]==(20961+offset0))
{
	vR[i] = 20961;
}
else
{
	vR[i] = 20960;
}

}

}

}

}

}
else
{
	if(input[i]>(20943+offset0))
{
	if(input[i]>(20951+offset0))
{
	if(input[i]>(20955+offset0))
{
	if(input[i]>(20957+offset0))
{
	if(input[i]==(20959+offset0))
{
	vR[i] = 20959;
}
else
{
	vR[i] = 20958;
}

}
else
{
	if(input[i]==(20957+offset0))
{
	vR[i] = 20957;
}
else
{
	vR[i] = 20956;
}

}

}
else
{
	if(input[i]>(20953+offset0))
{
	if(input[i]==(20955+offset0))
{
	vR[i] = 20955;
}
else
{
	vR[i] = 20954;
}

}
else
{
	if(input[i]==(20953+offset0))
{
	vR[i] = 20953;
}
else
{
	vR[i] = 20952;
}

}

}

}
else
{
	if(input[i]>(20947+offset0))
{
	if(input[i]>(20949+offset0))
{
	if(input[i]==(20951+offset0))
{
	vR[i] = 20951;
}
else
{
	vR[i] = 20950;
}

}
else
{
	if(input[i]==(20949+offset0))
{
	vR[i] = 20949;
}
else
{
	vR[i] = 20948;
}

}

}
else
{
	if(input[i]>(20945+offset0))
{
	if(input[i]==(20947+offset0))
{
	vR[i] = 20947;
}
else
{
	vR[i] = 20946;
}

}
else
{
	if(input[i]==(20945+offset0))
{
	vR[i] = 20945;
}
else
{
	vR[i] = 20944;
}

}

}

}

}
else
{
	if(input[i]>(20935+offset0))
{
	if(input[i]>(20939+offset0))
{
	if(input[i]>(20941+offset0))
{
	if(input[i]==(20943+offset0))
{
	vR[i] = 20943;
}
else
{
	vR[i] = 20942;
}

}
else
{
	if(input[i]==(20941+offset0))
{
	vR[i] = 20941;
}
else
{
	vR[i] = 20940;
}

}

}
else
{
	if(input[i]>(20937+offset0))
{
	if(input[i]==(20939+offset0))
{
	vR[i] = 20939;
}
else
{
	vR[i] = 20938;
}

}
else
{
	if(input[i]==(20937+offset0))
{
	vR[i] = 20937;
}
else
{
	vR[i] = 20936;
}

}

}

}
else
{
	if(input[i]>(20931+offset0))
{
	if(input[i]>(20933+offset0))
{
	if(input[i]==(20935+offset0))
{
	vR[i] = 20935;
}
else
{
	vR[i] = 20934;
}

}
else
{
	if(input[i]==(20933+offset0))
{
	vR[i] = 20933;
}
else
{
	vR[i] = 20932;
}

}

}
else
{
	if(input[i]>(20929+offset0))
{
	if(input[i]==(20931+offset0))
{
	vR[i] = 20931;
}
else
{
	vR[i] = 20930;
}

}
else
{
	if(input[i]==(20929+offset0))
{
	vR[i] = 20929;
}
else
{
	vR[i] = 20928;
}

}

}

}

}

}

}
else
{
	if(input[i]>(20895+offset0))
{
	if(input[i]>(20911+offset0))
{
	if(input[i]>(20919+offset0))
{
	if(input[i]>(20923+offset0))
{
	if(input[i]>(20925+offset0))
{
	if(input[i]==(20927+offset0))
{
	vR[i] = 20927;
}
else
{
	vR[i] = 20926;
}

}
else
{
	if(input[i]==(20925+offset0))
{
	vR[i] = 20925;
}
else
{
	vR[i] = 20924;
}

}

}
else
{
	if(input[i]>(20921+offset0))
{
	if(input[i]==(20923+offset0))
{
	vR[i] = 20923;
}
else
{
	vR[i] = 20922;
}

}
else
{
	if(input[i]==(20921+offset0))
{
	vR[i] = 20921;
}
else
{
	vR[i] = 20920;
}

}

}

}
else
{
	if(input[i]>(20915+offset0))
{
	if(input[i]>(20917+offset0))
{
	if(input[i]==(20919+offset0))
{
	vR[i] = 20919;
}
else
{
	vR[i] = 20918;
}

}
else
{
	if(input[i]==(20917+offset0))
{
	vR[i] = 20917;
}
else
{
	vR[i] = 20916;
}

}

}
else
{
	if(input[i]>(20913+offset0))
{
	if(input[i]==(20915+offset0))
{
	vR[i] = 20915;
}
else
{
	vR[i] = 20914;
}

}
else
{
	if(input[i]==(20913+offset0))
{
	vR[i] = 20913;
}
else
{
	vR[i] = 20912;
}

}

}

}

}
else
{
	if(input[i]>(20903+offset0))
{
	if(input[i]>(20907+offset0))
{
	if(input[i]>(20909+offset0))
{
	if(input[i]==(20911+offset0))
{
	vR[i] = 20911;
}
else
{
	vR[i] = 20910;
}

}
else
{
	if(input[i]==(20909+offset0))
{
	vR[i] = 20909;
}
else
{
	vR[i] = 20908;
}

}

}
else
{
	if(input[i]>(20905+offset0))
{
	if(input[i]==(20907+offset0))
{
	vR[i] = 20907;
}
else
{
	vR[i] = 20906;
}

}
else
{
	if(input[i]==(20905+offset0))
{
	vR[i] = 20905;
}
else
{
	vR[i] = 20904;
}

}

}

}
else
{
	if(input[i]>(20899+offset0))
{
	if(input[i]>(20901+offset0))
{
	if(input[i]==(20903+offset0))
{
	vR[i] = 20903;
}
else
{
	vR[i] = 20902;
}

}
else
{
	if(input[i]==(20901+offset0))
{
	vR[i] = 20901;
}
else
{
	vR[i] = 20900;
}

}

}
else
{
	if(input[i]>(20897+offset0))
{
	if(input[i]==(20899+offset0))
{
	vR[i] = 20899;
}
else
{
	vR[i] = 20898;
}

}
else
{
	if(input[i]==(20897+offset0))
{
	vR[i] = 20897;
}
else
{
	vR[i] = 20896;
}

}

}

}

}

}
else
{
	if(input[i]>(20879+offset0))
{
	if(input[i]>(20887+offset0))
{
	if(input[i]>(20891+offset0))
{
	if(input[i]>(20893+offset0))
{
	if(input[i]==(20895+offset0))
{
	vR[i] = 20895;
}
else
{
	vR[i] = 20894;
}

}
else
{
	if(input[i]==(20893+offset0))
{
	vR[i] = 20893;
}
else
{
	vR[i] = 20892;
}

}

}
else
{
	if(input[i]>(20889+offset0))
{
	if(input[i]==(20891+offset0))
{
	vR[i] = 20891;
}
else
{
	vR[i] = 20890;
}

}
else
{
	if(input[i]==(20889+offset0))
{
	vR[i] = 20889;
}
else
{
	vR[i] = 20888;
}

}

}

}
else
{
	if(input[i]>(20883+offset0))
{
	if(input[i]>(20885+offset0))
{
	if(input[i]==(20887+offset0))
{
	vR[i] = 20887;
}
else
{
	vR[i] = 20886;
}

}
else
{
	if(input[i]==(20885+offset0))
{
	vR[i] = 20885;
}
else
{
	vR[i] = 20884;
}

}

}
else
{
	if(input[i]>(20881+offset0))
{
	if(input[i]==(20883+offset0))
{
	vR[i] = 20883;
}
else
{
	vR[i] = 20882;
}

}
else
{
	if(input[i]==(20881+offset0))
{
	vR[i] = 20881;
}
else
{
	vR[i] = 20880;
}

}

}

}

}
else
{
	if(input[i]>(20871+offset0))
{
	if(input[i]>(20875+offset0))
{
	if(input[i]>(20877+offset0))
{
	if(input[i]==(20879+offset0))
{
	vR[i] = 20879;
}
else
{
	vR[i] = 20878;
}

}
else
{
	if(input[i]==(20877+offset0))
{
	vR[i] = 20877;
}
else
{
	vR[i] = 20876;
}

}

}
else
{
	if(input[i]>(20873+offset0))
{
	if(input[i]==(20875+offset0))
{
	vR[i] = 20875;
}
else
{
	vR[i] = 20874;
}

}
else
{
	if(input[i]==(20873+offset0))
{
	vR[i] = 20873;
}
else
{
	vR[i] = 20872;
}

}

}

}
else
{
	if(input[i]>(20867+offset0))
{
	if(input[i]>(20869+offset0))
{
	if(input[i]==(20871+offset0))
{
	vR[i] = 20871;
}
else
{
	vR[i] = 20870;
}

}
else
{
	if(input[i]==(20869+offset0))
{
	vR[i] = 20869;
}
else
{
	vR[i] = 20868;
}

}

}
else
{
	if(input[i]>(20865+offset0))
{
	if(input[i]==(20867+offset0))
{
	vR[i] = 20867;
}
else
{
	vR[i] = 20866;
}

}
else
{
	if(input[i]==(20865+offset0))
{
	vR[i] = 20865;
}
else
{
	vR[i] = 20864;
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
	if(input[i]>(20799+offset0))
{
	if(input[i]>(20831+offset0))
{
	if(input[i]>(20847+offset0))
{
	if(input[i]>(20855+offset0))
{
	if(input[i]>(20859+offset0))
{
	if(input[i]>(20861+offset0))
{
	if(input[i]==(20863+offset0))
{
	vR[i] = 20863;
}
else
{
	vR[i] = 20862;
}

}
else
{
	if(input[i]==(20861+offset0))
{
	vR[i] = 20861;
}
else
{
	vR[i] = 20860;
}

}

}
else
{
	if(input[i]>(20857+offset0))
{
	if(input[i]==(20859+offset0))
{
	vR[i] = 20859;
}
else
{
	vR[i] = 20858;
}

}
else
{
	if(input[i]==(20857+offset0))
{
	vR[i] = 20857;
}
else
{
	vR[i] = 20856;
}

}

}

}
else
{
	if(input[i]>(20851+offset0))
{
	if(input[i]>(20853+offset0))
{
	if(input[i]==(20855+offset0))
{
	vR[i] = 20855;
}
else
{
	vR[i] = 20854;
}

}
else
{
	if(input[i]==(20853+offset0))
{
	vR[i] = 20853;
}
else
{
	vR[i] = 20852;
}

}

}
else
{
	if(input[i]>(20849+offset0))
{
	if(input[i]==(20851+offset0))
{
	vR[i] = 20851;
}
else
{
	vR[i] = 20850;
}

}
else
{
	if(input[i]==(20849+offset0))
{
	vR[i] = 20849;
}
else
{
	vR[i] = 20848;
}

}

}

}

}
else
{
	if(input[i]>(20839+offset0))
{
	if(input[i]>(20843+offset0))
{
	if(input[i]>(20845+offset0))
{
	if(input[i]==(20847+offset0))
{
	vR[i] = 20847;
}
else
{
	vR[i] = 20846;
}

}
else
{
	if(input[i]==(20845+offset0))
{
	vR[i] = 20845;
}
else
{
	vR[i] = 20844;
}

}

}
else
{
	if(input[i]>(20841+offset0))
{
	if(input[i]==(20843+offset0))
{
	vR[i] = 20843;
}
else
{
	vR[i] = 20842;
}

}
else
{
	if(input[i]==(20841+offset0))
{
	vR[i] = 20841;
}
else
{
	vR[i] = 20840;
}

}

}

}
else
{
	if(input[i]>(20835+offset0))
{
	if(input[i]>(20837+offset0))
{
	if(input[i]==(20839+offset0))
{
	vR[i] = 20839;
}
else
{
	vR[i] = 20838;
}

}
else
{
	if(input[i]==(20837+offset0))
{
	vR[i] = 20837;
}
else
{
	vR[i] = 20836;
}

}

}
else
{
	if(input[i]>(20833+offset0))
{
	if(input[i]==(20835+offset0))
{
	vR[i] = 20835;
}
else
{
	vR[i] = 20834;
}

}
else
{
	if(input[i]==(20833+offset0))
{
	vR[i] = 20833;
}
else
{
	vR[i] = 20832;
}

}

}

}

}

}
else
{
	if(input[i]>(20815+offset0))
{
	if(input[i]>(20823+offset0))
{
	if(input[i]>(20827+offset0))
{
	if(input[i]>(20829+offset0))
{
	if(input[i]==(20831+offset0))
{
	vR[i] = 20831;
}
else
{
	vR[i] = 20830;
}

}
else
{
	if(input[i]==(20829+offset0))
{
	vR[i] = 20829;
}
else
{
	vR[i] = 20828;
}

}

}
else
{
	if(input[i]>(20825+offset0))
{
	if(input[i]==(20827+offset0))
{
	vR[i] = 20827;
}
else
{
	vR[i] = 20826;
}

}
else
{
	if(input[i]==(20825+offset0))
{
	vR[i] = 20825;
}
else
{
	vR[i] = 20824;
}

}

}

}
else
{
	if(input[i]>(20819+offset0))
{
	if(input[i]>(20821+offset0))
{
	if(input[i]==(20823+offset0))
{
	vR[i] = 20823;
}
else
{
	vR[i] = 20822;
}

}
else
{
	if(input[i]==(20821+offset0))
{
	vR[i] = 20821;
}
else
{
	vR[i] = 20820;
}

}

}
else
{
	if(input[i]>(20817+offset0))
{
	if(input[i]==(20819+offset0))
{
	vR[i] = 20819;
}
else
{
	vR[i] = 20818;
}

}
else
{
	if(input[i]==(20817+offset0))
{
	vR[i] = 20817;
}
else
{
	vR[i] = 20816;
}

}

}

}

}
else
{
	if(input[i]>(20807+offset0))
{
	if(input[i]>(20811+offset0))
{
	if(input[i]>(20813+offset0))
{
	if(input[i]==(20815+offset0))
{
	vR[i] = 20815;
}
else
{
	vR[i] = 20814;
}

}
else
{
	if(input[i]==(20813+offset0))
{
	vR[i] = 20813;
}
else
{
	vR[i] = 20812;
}

}

}
else
{
	if(input[i]>(20809+offset0))
{
	if(input[i]==(20811+offset0))
{
	vR[i] = 20811;
}
else
{
	vR[i] = 20810;
}

}
else
{
	if(input[i]==(20809+offset0))
{
	vR[i] = 20809;
}
else
{
	vR[i] = 20808;
}

}

}

}
else
{
	if(input[i]>(20803+offset0))
{
	if(input[i]>(20805+offset0))
{
	if(input[i]==(20807+offset0))
{
	vR[i] = 20807;
}
else
{
	vR[i] = 20806;
}

}
else
{
	if(input[i]==(20805+offset0))
{
	vR[i] = 20805;
}
else
{
	vR[i] = 20804;
}

}

}
else
{
	if(input[i]>(20801+offset0))
{
	if(input[i]==(20803+offset0))
{
	vR[i] = 20803;
}
else
{
	vR[i] = 20802;
}

}
else
{
	if(input[i]==(20801+offset0))
{
	vR[i] = 20801;
}
else
{
	vR[i] = 20800;
}

}

}

}

}

}

}
else
{
	if(input[i]>(20767+offset0))
{
	if(input[i]>(20783+offset0))
{
	if(input[i]>(20791+offset0))
{
	if(input[i]>(20795+offset0))
{
	if(input[i]>(20797+offset0))
{
	if(input[i]==(20799+offset0))
{
	vR[i] = 20799;
}
else
{
	vR[i] = 20798;
}

}
else
{
	if(input[i]==(20797+offset0))
{
	vR[i] = 20797;
}
else
{
	vR[i] = 20796;
}

}

}
else
{
	if(input[i]>(20793+offset0))
{
	if(input[i]==(20795+offset0))
{
	vR[i] = 20795;
}
else
{
	vR[i] = 20794;
}

}
else
{
	if(input[i]==(20793+offset0))
{
	vR[i] = 20793;
}
else
{
	vR[i] = 20792;
}

}

}

}
else
{
	if(input[i]>(20787+offset0))
{
	if(input[i]>(20789+offset0))
{
	if(input[i]==(20791+offset0))
{
	vR[i] = 20791;
}
else
{
	vR[i] = 20790;
}

}
else
{
	if(input[i]==(20789+offset0))
{
	vR[i] = 20789;
}
else
{
	vR[i] = 20788;
}

}

}
else
{
	if(input[i]>(20785+offset0))
{
	if(input[i]==(20787+offset0))
{
	vR[i] = 20787;
}
else
{
	vR[i] = 20786;
}

}
else
{
	if(input[i]==(20785+offset0))
{
	vR[i] = 20785;
}
else
{
	vR[i] = 20784;
}

}

}

}

}
else
{
	if(input[i]>(20775+offset0))
{
	if(input[i]>(20779+offset0))
{
	if(input[i]>(20781+offset0))
{
	if(input[i]==(20783+offset0))
{
	vR[i] = 20783;
}
else
{
	vR[i] = 20782;
}

}
else
{
	if(input[i]==(20781+offset0))
{
	vR[i] = 20781;
}
else
{
	vR[i] = 20780;
}

}

}
else
{
	if(input[i]>(20777+offset0))
{
	if(input[i]==(20779+offset0))
{
	vR[i] = 20779;
}
else
{
	vR[i] = 20778;
}

}
else
{
	if(input[i]==(20777+offset0))
{
	vR[i] = 20777;
}
else
{
	vR[i] = 20776;
}

}

}

}
else
{
	if(input[i]>(20771+offset0))
{
	if(input[i]>(20773+offset0))
{
	if(input[i]==(20775+offset0))
{
	vR[i] = 20775;
}
else
{
	vR[i] = 20774;
}

}
else
{
	if(input[i]==(20773+offset0))
{
	vR[i] = 20773;
}
else
{
	vR[i] = 20772;
}

}

}
else
{
	if(input[i]>(20769+offset0))
{
	if(input[i]==(20771+offset0))
{
	vR[i] = 20771;
}
else
{
	vR[i] = 20770;
}

}
else
{
	if(input[i]==(20769+offset0))
{
	vR[i] = 20769;
}
else
{
	vR[i] = 20768;
}

}

}

}

}

}
else
{
	if(input[i]>(20751+offset0))
{
	if(input[i]>(20759+offset0))
{
	if(input[i]>(20763+offset0))
{
	if(input[i]>(20765+offset0))
{
	if(input[i]==(20767+offset0))
{
	vR[i] = 20767;
}
else
{
	vR[i] = 20766;
}

}
else
{
	if(input[i]==(20765+offset0))
{
	vR[i] = 20765;
}
else
{
	vR[i] = 20764;
}

}

}
else
{
	if(input[i]>(20761+offset0))
{
	if(input[i]==(20763+offset0))
{
	vR[i] = 20763;
}
else
{
	vR[i] = 20762;
}

}
else
{
	if(input[i]==(20761+offset0))
{
	vR[i] = 20761;
}
else
{
	vR[i] = 20760;
}

}

}

}
else
{
	if(input[i]>(20755+offset0))
{
	if(input[i]>(20757+offset0))
{
	if(input[i]==(20759+offset0))
{
	vR[i] = 20759;
}
else
{
	vR[i] = 20758;
}

}
else
{
	if(input[i]==(20757+offset0))
{
	vR[i] = 20757;
}
else
{
	vR[i] = 20756;
}

}

}
else
{
	if(input[i]>(20753+offset0))
{
	if(input[i]==(20755+offset0))
{
	vR[i] = 20755;
}
else
{
	vR[i] = 20754;
}

}
else
{
	if(input[i]==(20753+offset0))
{
	vR[i] = 20753;
}
else
{
	vR[i] = 20752;
}

}

}

}

}
else
{
	if(input[i]>(20743+offset0))
{
	if(input[i]>(20747+offset0))
{
	if(input[i]>(20749+offset0))
{
	if(input[i]==(20751+offset0))
{
	vR[i] = 20751;
}
else
{
	vR[i] = 20750;
}

}
else
{
	if(input[i]==(20749+offset0))
{
	vR[i] = 20749;
}
else
{
	vR[i] = 20748;
}

}

}
else
{
	if(input[i]>(20745+offset0))
{
	if(input[i]==(20747+offset0))
{
	vR[i] = 20747;
}
else
{
	vR[i] = 20746;
}

}
else
{
	if(input[i]==(20745+offset0))
{
	vR[i] = 20745;
}
else
{
	vR[i] = 20744;
}

}

}

}
else
{
	if(input[i]>(20739+offset0))
{
	if(input[i]>(20741+offset0))
{
	if(input[i]==(20743+offset0))
{
	vR[i] = 20743;
}
else
{
	vR[i] = 20742;
}

}
else
{
	if(input[i]==(20741+offset0))
{
	vR[i] = 20741;
}
else
{
	vR[i] = 20740;
}

}

}
else
{
	if(input[i]>(20737+offset0))
{
	if(input[i]==(20739+offset0))
{
	vR[i] = 20739;
}
else
{
	vR[i] = 20738;
}

}
else
{
	if(input[i]==(20737+offset0))
{
	vR[i] = 20737;
}
else
{
	vR[i] = 20736;
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
	if(input[i]>(20607+offset0))
{
	if(input[i]>(20671+offset0))
{
	if(input[i]>(20703+offset0))
{
	if(input[i]>(20719+offset0))
{
	if(input[i]>(20727+offset0))
{
	if(input[i]>(20731+offset0))
{
	if(input[i]>(20733+offset0))
{
	if(input[i]==(20735+offset0))
{
	vR[i] = 20735;
}
else
{
	vR[i] = 20734;
}

}
else
{
	if(input[i]==(20733+offset0))
{
	vR[i] = 20733;
}
else
{
	vR[i] = 20732;
}

}

}
else
{
	if(input[i]>(20729+offset0))
{
	if(input[i]==(20731+offset0))
{
	vR[i] = 20731;
}
else
{
	vR[i] = 20730;
}

}
else
{
	if(input[i]==(20729+offset0))
{
	vR[i] = 20729;
}
else
{
	vR[i] = 20728;
}

}

}

}
else
{
	if(input[i]>(20723+offset0))
{
	if(input[i]>(20725+offset0))
{
	if(input[i]==(20727+offset0))
{
	vR[i] = 20727;
}
else
{
	vR[i] = 20726;
}

}
else
{
	if(input[i]==(20725+offset0))
{
	vR[i] = 20725;
}
else
{
	vR[i] = 20724;
}

}

}
else
{
	if(input[i]>(20721+offset0))
{
	if(input[i]==(20723+offset0))
{
	vR[i] = 20723;
}
else
{
	vR[i] = 20722;
}

}
else
{
	if(input[i]==(20721+offset0))
{
	vR[i] = 20721;
}
else
{
	vR[i] = 20720;
}

}

}

}

}
else
{
	if(input[i]>(20711+offset0))
{
	if(input[i]>(20715+offset0))
{
	if(input[i]>(20717+offset0))
{
	if(input[i]==(20719+offset0))
{
	vR[i] = 20719;
}
else
{
	vR[i] = 20718;
}

}
else
{
	if(input[i]==(20717+offset0))
{
	vR[i] = 20717;
}
else
{
	vR[i] = 20716;
}

}

}
else
{
	if(input[i]>(20713+offset0))
{
	if(input[i]==(20715+offset0))
{
	vR[i] = 20715;
}
else
{
	vR[i] = 20714;
}

}
else
{
	if(input[i]==(20713+offset0))
{
	vR[i] = 20713;
}
else
{
	vR[i] = 20712;
}

}

}

}
else
{
	if(input[i]>(20707+offset0))
{
	if(input[i]>(20709+offset0))
{
	if(input[i]==(20711+offset0))
{
	vR[i] = 20711;
}
else
{
	vR[i] = 20710;
}

}
else
{
	if(input[i]==(20709+offset0))
{
	vR[i] = 20709;
}
else
{
	vR[i] = 20708;
}

}

}
else
{
	if(input[i]>(20705+offset0))
{
	if(input[i]==(20707+offset0))
{
	vR[i] = 20707;
}
else
{
	vR[i] = 20706;
}

}
else
{
	if(input[i]==(20705+offset0))
{
	vR[i] = 20705;
}
else
{
	vR[i] = 20704;
}

}

}

}

}

}
else
{
	if(input[i]>(20687+offset0))
{
	if(input[i]>(20695+offset0))
{
	if(input[i]>(20699+offset0))
{
	if(input[i]>(20701+offset0))
{
	if(input[i]==(20703+offset0))
{
	vR[i] = 20703;
}
else
{
	vR[i] = 20702;
}

}
else
{
	if(input[i]==(20701+offset0))
{
	vR[i] = 20701;
}
else
{
	vR[i] = 20700;
}

}

}
else
{
	if(input[i]>(20697+offset0))
{
	if(input[i]==(20699+offset0))
{
	vR[i] = 20699;
}
else
{
	vR[i] = 20698;
}

}
else
{
	if(input[i]==(20697+offset0))
{
	vR[i] = 20697;
}
else
{
	vR[i] = 20696;
}

}

}

}
else
{
	if(input[i]>(20691+offset0))
{
	if(input[i]>(20693+offset0))
{
	if(input[i]==(20695+offset0))
{
	vR[i] = 20695;
}
else
{
	vR[i] = 20694;
}

}
else
{
	if(input[i]==(20693+offset0))
{
	vR[i] = 20693;
}
else
{
	vR[i] = 20692;
}

}

}
else
{
	if(input[i]>(20689+offset0))
{
	if(input[i]==(20691+offset0))
{
	vR[i] = 20691;
}
else
{
	vR[i] = 20690;
}

}
else
{
	if(input[i]==(20689+offset0))
{
	vR[i] = 20689;
}
else
{
	vR[i] = 20688;
}

}

}

}

}
else
{
	if(input[i]>(20679+offset0))
{
	if(input[i]>(20683+offset0))
{
	if(input[i]>(20685+offset0))
{
	if(input[i]==(20687+offset0))
{
	vR[i] = 20687;
}
else
{
	vR[i] = 20686;
}

}
else
{
	if(input[i]==(20685+offset0))
{
	vR[i] = 20685;
}
else
{
	vR[i] = 20684;
}

}

}
else
{
	if(input[i]>(20681+offset0))
{
	if(input[i]==(20683+offset0))
{
	vR[i] = 20683;
}
else
{
	vR[i] = 20682;
}

}
else
{
	if(input[i]==(20681+offset0))
{
	vR[i] = 20681;
}
else
{
	vR[i] = 20680;
}

}

}

}
else
{
	if(input[i]>(20675+offset0))
{
	if(input[i]>(20677+offset0))
{
	if(input[i]==(20679+offset0))
{
	vR[i] = 20679;
}
else
{
	vR[i] = 20678;
}

}
else
{
	if(input[i]==(20677+offset0))
{
	vR[i] = 20677;
}
else
{
	vR[i] = 20676;
}

}

}
else
{
	if(input[i]>(20673+offset0))
{
	if(input[i]==(20675+offset0))
{
	vR[i] = 20675;
}
else
{
	vR[i] = 20674;
}

}
else
{
	if(input[i]==(20673+offset0))
{
	vR[i] = 20673;
}
else
{
	vR[i] = 20672;
}

}

}

}

}

}

}
else
{
	if(input[i]>(20639+offset0))
{
	if(input[i]>(20655+offset0))
{
	if(input[i]>(20663+offset0))
{
	if(input[i]>(20667+offset0))
{
	if(input[i]>(20669+offset0))
{
	if(input[i]==(20671+offset0))
{
	vR[i] = 20671;
}
else
{
	vR[i] = 20670;
}

}
else
{
	if(input[i]==(20669+offset0))
{
	vR[i] = 20669;
}
else
{
	vR[i] = 20668;
}

}

}
else
{
	if(input[i]>(20665+offset0))
{
	if(input[i]==(20667+offset0))
{
	vR[i] = 20667;
}
else
{
	vR[i] = 20666;
}

}
else
{
	if(input[i]==(20665+offset0))
{
	vR[i] = 20665;
}
else
{
	vR[i] = 20664;
}

}

}

}
else
{
	if(input[i]>(20659+offset0))
{
	if(input[i]>(20661+offset0))
{
	if(input[i]==(20663+offset0))
{
	vR[i] = 20663;
}
else
{
	vR[i] = 20662;
}

}
else
{
	if(input[i]==(20661+offset0))
{
	vR[i] = 20661;
}
else
{
	vR[i] = 20660;
}

}

}
else
{
	if(input[i]>(20657+offset0))
{
	if(input[i]==(20659+offset0))
{
	vR[i] = 20659;
}
else
{
	vR[i] = 20658;
}

}
else
{
	if(input[i]==(20657+offset0))
{
	vR[i] = 20657;
}
else
{
	vR[i] = 20656;
}

}

}

}

}
else
{
	if(input[i]>(20647+offset0))
{
	if(input[i]>(20651+offset0))
{
	if(input[i]>(20653+offset0))
{
	if(input[i]==(20655+offset0))
{
	vR[i] = 20655;
}
else
{
	vR[i] = 20654;
}

}
else
{
	if(input[i]==(20653+offset0))
{
	vR[i] = 20653;
}
else
{
	vR[i] = 20652;
}

}

}
else
{
	if(input[i]>(20649+offset0))
{
	if(input[i]==(20651+offset0))
{
	vR[i] = 20651;
}
else
{
	vR[i] = 20650;
}

}
else
{
	if(input[i]==(20649+offset0))
{
	vR[i] = 20649;
}
else
{
	vR[i] = 20648;
}

}

}

}
else
{
	if(input[i]>(20643+offset0))
{
	if(input[i]>(20645+offset0))
{
	if(input[i]==(20647+offset0))
{
	vR[i] = 20647;
}
else
{
	vR[i] = 20646;
}

}
else
{
	if(input[i]==(20645+offset0))
{
	vR[i] = 20645;
}
else
{
	vR[i] = 20644;
}

}

}
else
{
	if(input[i]>(20641+offset0))
{
	if(input[i]==(20643+offset0))
{
	vR[i] = 20643;
}
else
{
	vR[i] = 20642;
}

}
else
{
	if(input[i]==(20641+offset0))
{
	vR[i] = 20641;
}
else
{
	vR[i] = 20640;
}

}

}

}

}

}
else
{
	if(input[i]>(20623+offset0))
{
	if(input[i]>(20631+offset0))
{
	if(input[i]>(20635+offset0))
{
	if(input[i]>(20637+offset0))
{
	if(input[i]==(20639+offset0))
{
	vR[i] = 20639;
}
else
{
	vR[i] = 20638;
}

}
else
{
	if(input[i]==(20637+offset0))
{
	vR[i] = 20637;
}
else
{
	vR[i] = 20636;
}

}

}
else
{
	if(input[i]>(20633+offset0))
{
	if(input[i]==(20635+offset0))
{
	vR[i] = 20635;
}
else
{
	vR[i] = 20634;
}

}
else
{
	if(input[i]==(20633+offset0))
{
	vR[i] = 20633;
}
else
{
	vR[i] = 20632;
}

}

}

}
else
{
	if(input[i]>(20627+offset0))
{
	if(input[i]>(20629+offset0))
{
	if(input[i]==(20631+offset0))
{
	vR[i] = 20631;
}
else
{
	vR[i] = 20630;
}

}
else
{
	if(input[i]==(20629+offset0))
{
	vR[i] = 20629;
}
else
{
	vR[i] = 20628;
}

}

}
else
{
	if(input[i]>(20625+offset0))
{
	if(input[i]==(20627+offset0))
{
	vR[i] = 20627;
}
else
{
	vR[i] = 20626;
}

}
else
{
	if(input[i]==(20625+offset0))
{
	vR[i] = 20625;
}
else
{
	vR[i] = 20624;
}

}

}

}

}
else
{
	if(input[i]>(20615+offset0))
{
	if(input[i]>(20619+offset0))
{
	if(input[i]>(20621+offset0))
{
	if(input[i]==(20623+offset0))
{
	vR[i] = 20623;
}
else
{
	vR[i] = 20622;
}

}
else
{
	if(input[i]==(20621+offset0))
{
	vR[i] = 20621;
}
else
{
	vR[i] = 20620;
}

}

}
else
{
	if(input[i]>(20617+offset0))
{
	if(input[i]==(20619+offset0))
{
	vR[i] = 20619;
}
else
{
	vR[i] = 20618;
}

}
else
{
	if(input[i]==(20617+offset0))
{
	vR[i] = 20617;
}
else
{
	vR[i] = 20616;
}

}

}

}
else
{
	if(input[i]>(20611+offset0))
{
	if(input[i]>(20613+offset0))
{
	if(input[i]==(20615+offset0))
{
	vR[i] = 20615;
}
else
{
	vR[i] = 20614;
}

}
else
{
	if(input[i]==(20613+offset0))
{
	vR[i] = 20613;
}
else
{
	vR[i] = 20612;
}

}

}
else
{
	if(input[i]>(20609+offset0))
{
	if(input[i]==(20611+offset0))
{
	vR[i] = 20611;
}
else
{
	vR[i] = 20610;
}

}
else
{
	if(input[i]==(20609+offset0))
{
	vR[i] = 20609;
}
else
{
	vR[i] = 20608;
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
	if(input[i]>(20543+offset0))
{
	if(input[i]>(20575+offset0))
{
	if(input[i]>(20591+offset0))
{
	if(input[i]>(20599+offset0))
{
	if(input[i]>(20603+offset0))
{
	if(input[i]>(20605+offset0))
{
	if(input[i]==(20607+offset0))
{
	vR[i] = 20607;
}
else
{
	vR[i] = 20606;
}

}
else
{
	if(input[i]==(20605+offset0))
{
	vR[i] = 20605;
}
else
{
	vR[i] = 20604;
}

}

}
else
{
	if(input[i]>(20601+offset0))
{
	if(input[i]==(20603+offset0))
{
	vR[i] = 20603;
}
else
{
	vR[i] = 20602;
}

}
else
{
	if(input[i]==(20601+offset0))
{
	vR[i] = 20601;
}
else
{
	vR[i] = 20600;
}

}

}

}
else
{
	if(input[i]>(20595+offset0))
{
	if(input[i]>(20597+offset0))
{
	if(input[i]==(20599+offset0))
{
	vR[i] = 20599;
}
else
{
	vR[i] = 20598;
}

}
else
{
	if(input[i]==(20597+offset0))
{
	vR[i] = 20597;
}
else
{
	vR[i] = 20596;
}

}

}
else
{
	if(input[i]>(20593+offset0))
{
	if(input[i]==(20595+offset0))
{
	vR[i] = 20595;
}
else
{
	vR[i] = 20594;
}

}
else
{
	if(input[i]==(20593+offset0))
{
	vR[i] = 20593;
}
else
{
	vR[i] = 20592;
}

}

}

}

}
else
{
	if(input[i]>(20583+offset0))
{
	if(input[i]>(20587+offset0))
{
	if(input[i]>(20589+offset0))
{
	if(input[i]==(20591+offset0))
{
	vR[i] = 20591;
}
else
{
	vR[i] = 20590;
}

}
else
{
	if(input[i]==(20589+offset0))
{
	vR[i] = 20589;
}
else
{
	vR[i] = 20588;
}

}

}
else
{
	if(input[i]>(20585+offset0))
{
	if(input[i]==(20587+offset0))
{
	vR[i] = 20587;
}
else
{
	vR[i] = 20586;
}

}
else
{
	if(input[i]==(20585+offset0))
{
	vR[i] = 20585;
}
else
{
	vR[i] = 20584;
}

}

}

}
else
{
	if(input[i]>(20579+offset0))
{
	if(input[i]>(20581+offset0))
{
	if(input[i]==(20583+offset0))
{
	vR[i] = 20583;
}
else
{
	vR[i] = 20582;
}

}
else
{
	if(input[i]==(20581+offset0))
{
	vR[i] = 20581;
}
else
{
	vR[i] = 20580;
}

}

}
else
{
	if(input[i]>(20577+offset0))
{
	if(input[i]==(20579+offset0))
{
	vR[i] = 20579;
}
else
{
	vR[i] = 20578;
}

}
else
{
	if(input[i]==(20577+offset0))
{
	vR[i] = 20577;
}
else
{
	vR[i] = 20576;
}

}

}

}

}

}
else
{
	if(input[i]>(20559+offset0))
{
	if(input[i]>(20567+offset0))
{
	if(input[i]>(20571+offset0))
{
	if(input[i]>(20573+offset0))
{
	if(input[i]==(20575+offset0))
{
	vR[i] = 20575;
}
else
{
	vR[i] = 20574;
}

}
else
{
	if(input[i]==(20573+offset0))
{
	vR[i] = 20573;
}
else
{
	vR[i] = 20572;
}

}

}
else
{
	if(input[i]>(20569+offset0))
{
	if(input[i]==(20571+offset0))
{
	vR[i] = 20571;
}
else
{
	vR[i] = 20570;
}

}
else
{
	if(input[i]==(20569+offset0))
{
	vR[i] = 20569;
}
else
{
	vR[i] = 20568;
}

}

}

}
else
{
	if(input[i]>(20563+offset0))
{
	if(input[i]>(20565+offset0))
{
	if(input[i]==(20567+offset0))
{
	vR[i] = 20567;
}
else
{
	vR[i] = 20566;
}

}
else
{
	if(input[i]==(20565+offset0))
{
	vR[i] = 20565;
}
else
{
	vR[i] = 20564;
}

}

}
else
{
	if(input[i]>(20561+offset0))
{
	if(input[i]==(20563+offset0))
{
	vR[i] = 20563;
}
else
{
	vR[i] = 20562;
}

}
else
{
	if(input[i]==(20561+offset0))
{
	vR[i] = 20561;
}
else
{
	vR[i] = 20560;
}

}

}

}

}
else
{
	if(input[i]>(20551+offset0))
{
	if(input[i]>(20555+offset0))
{
	if(input[i]>(20557+offset0))
{
	if(input[i]==(20559+offset0))
{
	vR[i] = 20559;
}
else
{
	vR[i] = 20558;
}

}
else
{
	if(input[i]==(20557+offset0))
{
	vR[i] = 20557;
}
else
{
	vR[i] = 20556;
}

}

}
else
{
	if(input[i]>(20553+offset0))
{
	if(input[i]==(20555+offset0))
{
	vR[i] = 20555;
}
else
{
	vR[i] = 20554;
}

}
else
{
	if(input[i]==(20553+offset0))
{
	vR[i] = 20553;
}
else
{
	vR[i] = 20552;
}

}

}

}
else
{
	if(input[i]>(20547+offset0))
{
	if(input[i]>(20549+offset0))
{
	if(input[i]==(20551+offset0))
{
	vR[i] = 20551;
}
else
{
	vR[i] = 20550;
}

}
else
{
	if(input[i]==(20549+offset0))
{
	vR[i] = 20549;
}
else
{
	vR[i] = 20548;
}

}

}
else
{
	if(input[i]>(20545+offset0))
{
	if(input[i]==(20547+offset0))
{
	vR[i] = 20547;
}
else
{
	vR[i] = 20546;
}

}
else
{
	if(input[i]==(20545+offset0))
{
	vR[i] = 20545;
}
else
{
	vR[i] = 20544;
}

}

}

}

}

}

}
else
{
	if(input[i]>(20511+offset0))
{
	if(input[i]>(20527+offset0))
{
	if(input[i]>(20535+offset0))
{
	if(input[i]>(20539+offset0))
{
	if(input[i]>(20541+offset0))
{
	if(input[i]==(20543+offset0))
{
	vR[i] = 20543;
}
else
{
	vR[i] = 20542;
}

}
else
{
	if(input[i]==(20541+offset0))
{
	vR[i] = 20541;
}
else
{
	vR[i] = 20540;
}

}

}
else
{
	if(input[i]>(20537+offset0))
{
	if(input[i]==(20539+offset0))
{
	vR[i] = 20539;
}
else
{
	vR[i] = 20538;
}

}
else
{
	if(input[i]==(20537+offset0))
{
	vR[i] = 20537;
}
else
{
	vR[i] = 20536;
}

}

}

}
else
{
	if(input[i]>(20531+offset0))
{
	if(input[i]>(20533+offset0))
{
	if(input[i]==(20535+offset0))
{
	vR[i] = 20535;
}
else
{
	vR[i] = 20534;
}

}
else
{
	if(input[i]==(20533+offset0))
{
	vR[i] = 20533;
}
else
{
	vR[i] = 20532;
}

}

}
else
{
	if(input[i]>(20529+offset0))
{
	if(input[i]==(20531+offset0))
{
	vR[i] = 20531;
}
else
{
	vR[i] = 20530;
}

}
else
{
	if(input[i]==(20529+offset0))
{
	vR[i] = 20529;
}
else
{
	vR[i] = 20528;
}

}

}

}

}
else
{
	if(input[i]>(20519+offset0))
{
	if(input[i]>(20523+offset0))
{
	if(input[i]>(20525+offset0))
{
	if(input[i]==(20527+offset0))
{
	vR[i] = 20527;
}
else
{
	vR[i] = 20526;
}

}
else
{
	if(input[i]==(20525+offset0))
{
	vR[i] = 20525;
}
else
{
	vR[i] = 20524;
}

}

}
else
{
	if(input[i]>(20521+offset0))
{
	if(input[i]==(20523+offset0))
{
	vR[i] = 20523;
}
else
{
	vR[i] = 20522;
}

}
else
{
	if(input[i]==(20521+offset0))
{
	vR[i] = 20521;
}
else
{
	vR[i] = 20520;
}

}

}

}
else
{
	if(input[i]>(20515+offset0))
{
	if(input[i]>(20517+offset0))
{
	if(input[i]==(20519+offset0))
{
	vR[i] = 20519;
}
else
{
	vR[i] = 20518;
}

}
else
{
	if(input[i]==(20517+offset0))
{
	vR[i] = 20517;
}
else
{
	vR[i] = 20516;
}

}

}
else
{
	if(input[i]>(20513+offset0))
{
	if(input[i]==(20515+offset0))
{
	vR[i] = 20515;
}
else
{
	vR[i] = 20514;
}

}
else
{
	if(input[i]==(20513+offset0))
{
	vR[i] = 20513;
}
else
{
	vR[i] = 20512;
}

}

}

}

}

}
else
{
	if(input[i]>(20495+offset0))
{
	if(input[i]>(20503+offset0))
{
	if(input[i]>(20507+offset0))
{
	if(input[i]>(20509+offset0))
{
	if(input[i]==(20511+offset0))
{
	vR[i] = 20511;
}
else
{
	vR[i] = 20510;
}

}
else
{
	if(input[i]==(20509+offset0))
{
	vR[i] = 20509;
}
else
{
	vR[i] = 20508;
}

}

}
else
{
	if(input[i]>(20505+offset0))
{
	if(input[i]==(20507+offset0))
{
	vR[i] = 20507;
}
else
{
	vR[i] = 20506;
}

}
else
{
	if(input[i]==(20505+offset0))
{
	vR[i] = 20505;
}
else
{
	vR[i] = 20504;
}

}

}

}
else
{
	if(input[i]>(20499+offset0))
{
	if(input[i]>(20501+offset0))
{
	if(input[i]==(20503+offset0))
{
	vR[i] = 20503;
}
else
{
	vR[i] = 20502;
}

}
else
{
	if(input[i]==(20501+offset0))
{
	vR[i] = 20501;
}
else
{
	vR[i] = 20500;
}

}

}
else
{
	if(input[i]>(20497+offset0))
{
	if(input[i]==(20499+offset0))
{
	vR[i] = 20499;
}
else
{
	vR[i] = 20498;
}

}
else
{
	if(input[i]==(20497+offset0))
{
	vR[i] = 20497;
}
else
{
	vR[i] = 20496;
}

}

}

}

}
else
{
	if(input[i]>(20487+offset0))
{
	if(input[i]>(20491+offset0))
{
	if(input[i]>(20493+offset0))
{
	if(input[i]==(20495+offset0))
{
	vR[i] = 20495;
}
else
{
	vR[i] = 20494;
}

}
else
{
	if(input[i]==(20493+offset0))
{
	vR[i] = 20493;
}
else
{
	vR[i] = 20492;
}

}

}
else
{
	if(input[i]>(20489+offset0))
{
	if(input[i]==(20491+offset0))
{
	vR[i] = 20491;
}
else
{
	vR[i] = 20490;
}

}
else
{
	if(input[i]==(20489+offset0))
{
	vR[i] = 20489;
}
else
{
	vR[i] = 20488;
}

}

}

}
else
{
	if(input[i]>(20483+offset0))
{
	if(input[i]>(20485+offset0))
{
	if(input[i]==(20487+offset0))
{
	vR[i] = 20487;
}
else
{
	vR[i] = 20486;
}

}
else
{
	if(input[i]==(20485+offset0))
{
	vR[i] = 20485;
}
else
{
	vR[i] = 20484;
}

}

}
else
{
	if(input[i]>(20481+offset0))
{
	if(input[i]==(20483+offset0))
{
	vR[i] = 20483;
}
else
{
	vR[i] = 20482;
}

}
else
{
	if(input[i]==(20481+offset0))
{
	vR[i] = 20481;
}
else
{
	vR[i] = 20480;
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
	if(input[i]>(18431+offset0))
{
	if(input[i]>(19455+offset0))
{
	if(input[i]>(19967+offset0))
{
	if(input[i]>(20223+offset0))
{
	if(input[i]>(20351+offset0))
{
	if(input[i]>(20415+offset0))
{
	if(input[i]>(20447+offset0))
{
	if(input[i]>(20463+offset0))
{
	if(input[i]>(20471+offset0))
{
	if(input[i]>(20475+offset0))
{
	if(input[i]>(20477+offset0))
{
	if(input[i]==(20479+offset0))
{
	vR[i] = 20479;
}
else
{
	vR[i] = 20478;
}

}
else
{
	if(input[i]==(20477+offset0))
{
	vR[i] = 20477;
}
else
{
	vR[i] = 20476;
}

}

}
else
{
	if(input[i]>(20473+offset0))
{
	if(input[i]==(20475+offset0))
{
	vR[i] = 20475;
}
else
{
	vR[i] = 20474;
}

}
else
{
	if(input[i]==(20473+offset0))
{
	vR[i] = 20473;
}
else
{
	vR[i] = 20472;
}

}

}

}
else
{
	if(input[i]>(20467+offset0))
{
	if(input[i]>(20469+offset0))
{
	if(input[i]==(20471+offset0))
{
	vR[i] = 20471;
}
else
{
	vR[i] = 20470;
}

}
else
{
	if(input[i]==(20469+offset0))
{
	vR[i] = 20469;
}
else
{
	vR[i] = 20468;
}

}

}
else
{
	if(input[i]>(20465+offset0))
{
	if(input[i]==(20467+offset0))
{
	vR[i] = 20467;
}
else
{
	vR[i] = 20466;
}

}
else
{
	if(input[i]==(20465+offset0))
{
	vR[i] = 20465;
}
else
{
	vR[i] = 20464;
}

}

}

}

}
else
{
	if(input[i]>(20455+offset0))
{
	if(input[i]>(20459+offset0))
{
	if(input[i]>(20461+offset0))
{
	if(input[i]==(20463+offset0))
{
	vR[i] = 20463;
}
else
{
	vR[i] = 20462;
}

}
else
{
	if(input[i]==(20461+offset0))
{
	vR[i] = 20461;
}
else
{
	vR[i] = 20460;
}

}

}
else
{
	if(input[i]>(20457+offset0))
{
	if(input[i]==(20459+offset0))
{
	vR[i] = 20459;
}
else
{
	vR[i] = 20458;
}

}
else
{
	if(input[i]==(20457+offset0))
{
	vR[i] = 20457;
}
else
{
	vR[i] = 20456;
}

}

}

}
else
{
	if(input[i]>(20451+offset0))
{
	if(input[i]>(20453+offset0))
{
	if(input[i]==(20455+offset0))
{
	vR[i] = 20455;
}
else
{
	vR[i] = 20454;
}

}
else
{
	if(input[i]==(20453+offset0))
{
	vR[i] = 20453;
}
else
{
	vR[i] = 20452;
}

}

}
else
{
	if(input[i]>(20449+offset0))
{
	if(input[i]==(20451+offset0))
{
	vR[i] = 20451;
}
else
{
	vR[i] = 20450;
}

}
else
{
	if(input[i]==(20449+offset0))
{
	vR[i] = 20449;
}
else
{
	vR[i] = 20448;
}

}

}

}

}

}
else
{
	if(input[i]>(20431+offset0))
{
	if(input[i]>(20439+offset0))
{
	if(input[i]>(20443+offset0))
{
	if(input[i]>(20445+offset0))
{
	if(input[i]==(20447+offset0))
{
	vR[i] = 20447;
}
else
{
	vR[i] = 20446;
}

}
else
{
	if(input[i]==(20445+offset0))
{
	vR[i] = 20445;
}
else
{
	vR[i] = 20444;
}

}

}
else
{
	if(input[i]>(20441+offset0))
{
	if(input[i]==(20443+offset0))
{
	vR[i] = 20443;
}
else
{
	vR[i] = 20442;
}

}
else
{
	if(input[i]==(20441+offset0))
{
	vR[i] = 20441;
}
else
{
	vR[i] = 20440;
}

}

}

}
else
{
	if(input[i]>(20435+offset0))
{
	if(input[i]>(20437+offset0))
{
	if(input[i]==(20439+offset0))
{
	vR[i] = 20439;
}
else
{
	vR[i] = 20438;
}

}
else
{
	if(input[i]==(20437+offset0))
{
	vR[i] = 20437;
}
else
{
	vR[i] = 20436;
}

}

}
else
{
	if(input[i]>(20433+offset0))
{
	if(input[i]==(20435+offset0))
{
	vR[i] = 20435;
}
else
{
	vR[i] = 20434;
}

}
else
{
	if(input[i]==(20433+offset0))
{
	vR[i] = 20433;
}
else
{
	vR[i] = 20432;
}

}

}

}

}
else
{
	if(input[i]>(20423+offset0))
{
	if(input[i]>(20427+offset0))
{
	if(input[i]>(20429+offset0))
{
	if(input[i]==(20431+offset0))
{
	vR[i] = 20431;
}
else
{
	vR[i] = 20430;
}

}
else
{
	if(input[i]==(20429+offset0))
{
	vR[i] = 20429;
}
else
{
	vR[i] = 20428;
}

}

}
else
{
	if(input[i]>(20425+offset0))
{
	if(input[i]==(20427+offset0))
{
	vR[i] = 20427;
}
else
{
	vR[i] = 20426;
}

}
else
{
	if(input[i]==(20425+offset0))
{
	vR[i] = 20425;
}
else
{
	vR[i] = 20424;
}

}

}

}
else
{
	if(input[i]>(20419+offset0))
{
	if(input[i]>(20421+offset0))
{
	if(input[i]==(20423+offset0))
{
	vR[i] = 20423;
}
else
{
	vR[i] = 20422;
}

}
else
{
	if(input[i]==(20421+offset0))
{
	vR[i] = 20421;
}
else
{
	vR[i] = 20420;
}

}

}
else
{
	if(input[i]>(20417+offset0))
{
	if(input[i]==(20419+offset0))
{
	vR[i] = 20419;
}
else
{
	vR[i] = 20418;
}

}
else
{
	if(input[i]==(20417+offset0))
{
	vR[i] = 20417;
}
else
{
	vR[i] = 20416;
}

}

}

}

}

}

}
else
{
	if(input[i]>(20383+offset0))
{
	if(input[i]>(20399+offset0))
{
	if(input[i]>(20407+offset0))
{
	if(input[i]>(20411+offset0))
{
	if(input[i]>(20413+offset0))
{
	if(input[i]==(20415+offset0))
{
	vR[i] = 20415;
}
else
{
	vR[i] = 20414;
}

}
else
{
	if(input[i]==(20413+offset0))
{
	vR[i] = 20413;
}
else
{
	vR[i] = 20412;
}

}

}
else
{
	if(input[i]>(20409+offset0))
{
	if(input[i]==(20411+offset0))
{
	vR[i] = 20411;
}
else
{
	vR[i] = 20410;
}

}
else
{
	if(input[i]==(20409+offset0))
{
	vR[i] = 20409;
}
else
{
	vR[i] = 20408;
}

}

}

}
else
{
	if(input[i]>(20403+offset0))
{
	if(input[i]>(20405+offset0))
{
	if(input[i]==(20407+offset0))
{
	vR[i] = 20407;
}
else
{
	vR[i] = 20406;
}

}
else
{
	if(input[i]==(20405+offset0))
{
	vR[i] = 20405;
}
else
{
	vR[i] = 20404;
}

}

}
else
{
	if(input[i]>(20401+offset0))
{
	if(input[i]==(20403+offset0))
{
	vR[i] = 20403;
}
else
{
	vR[i] = 20402;
}

}
else
{
	if(input[i]==(20401+offset0))
{
	vR[i] = 20401;
}
else
{
	vR[i] = 20400;
}

}

}

}

}
else
{
	if(input[i]>(20391+offset0))
{
	if(input[i]>(20395+offset0))
{
	if(input[i]>(20397+offset0))
{
	if(input[i]==(20399+offset0))
{
	vR[i] = 20399;
}
else
{
	vR[i] = 20398;
}

}
else
{
	if(input[i]==(20397+offset0))
{
	vR[i] = 20397;
}
else
{
	vR[i] = 20396;
}

}

}
else
{
	if(input[i]>(20393+offset0))
{
	if(input[i]==(20395+offset0))
{
	vR[i] = 20395;
}
else
{
	vR[i] = 20394;
}

}
else
{
	if(input[i]==(20393+offset0))
{
	vR[i] = 20393;
}
else
{
	vR[i] = 20392;
}

}

}

}
else
{
	if(input[i]>(20387+offset0))
{
	if(input[i]>(20389+offset0))
{
	if(input[i]==(20391+offset0))
{
	vR[i] = 20391;
}
else
{
	vR[i] = 20390;
}

}
else
{
	if(input[i]==(20389+offset0))
{
	vR[i] = 20389;
}
else
{
	vR[i] = 20388;
}

}

}
else
{
	if(input[i]>(20385+offset0))
{
	if(input[i]==(20387+offset0))
{
	vR[i] = 20387;
}
else
{
	vR[i] = 20386;
}

}
else
{
	if(input[i]==(20385+offset0))
{
	vR[i] = 20385;
}
else
{
	vR[i] = 20384;
}

}

}

}

}

}
else
{
	if(input[i]>(20367+offset0))
{
	if(input[i]>(20375+offset0))
{
	if(input[i]>(20379+offset0))
{
	if(input[i]>(20381+offset0))
{
	if(input[i]==(20383+offset0))
{
	vR[i] = 20383;
}
else
{
	vR[i] = 20382;
}

}
else
{
	if(input[i]==(20381+offset0))
{
	vR[i] = 20381;
}
else
{
	vR[i] = 20380;
}

}

}
else
{
	if(input[i]>(20377+offset0))
{
	if(input[i]==(20379+offset0))
{
	vR[i] = 20379;
}
else
{
	vR[i] = 20378;
}

}
else
{
	if(input[i]==(20377+offset0))
{
	vR[i] = 20377;
}
else
{
	vR[i] = 20376;
}

}

}

}
else
{
	if(input[i]>(20371+offset0))
{
	if(input[i]>(20373+offset0))
{
	if(input[i]==(20375+offset0))
{
	vR[i] = 20375;
}
else
{
	vR[i] = 20374;
}

}
else
{
	if(input[i]==(20373+offset0))
{
	vR[i] = 20373;
}
else
{
	vR[i] = 20372;
}

}

}
else
{
	if(input[i]>(20369+offset0))
{
	if(input[i]==(20371+offset0))
{
	vR[i] = 20371;
}
else
{
	vR[i] = 20370;
}

}
else
{
	if(input[i]==(20369+offset0))
{
	vR[i] = 20369;
}
else
{
	vR[i] = 20368;
}

}

}

}

}
else
{
	if(input[i]>(20359+offset0))
{
	if(input[i]>(20363+offset0))
{
	if(input[i]>(20365+offset0))
{
	if(input[i]==(20367+offset0))
{
	vR[i] = 20367;
}
else
{
	vR[i] = 20366;
}

}
else
{
	if(input[i]==(20365+offset0))
{
	vR[i] = 20365;
}
else
{
	vR[i] = 20364;
}

}

}
else
{
	if(input[i]>(20361+offset0))
{
	if(input[i]==(20363+offset0))
{
	vR[i] = 20363;
}
else
{
	vR[i] = 20362;
}

}
else
{
	if(input[i]==(20361+offset0))
{
	vR[i] = 20361;
}
else
{
	vR[i] = 20360;
}

}

}

}
else
{
	if(input[i]>(20355+offset0))
{
	if(input[i]>(20357+offset0))
{
	if(input[i]==(20359+offset0))
{
	vR[i] = 20359;
}
else
{
	vR[i] = 20358;
}

}
else
{
	if(input[i]==(20357+offset0))
{
	vR[i] = 20357;
}
else
{
	vR[i] = 20356;
}

}

}
else
{
	if(input[i]>(20353+offset0))
{
	if(input[i]==(20355+offset0))
{
	vR[i] = 20355;
}
else
{
	vR[i] = 20354;
}

}
else
{
	if(input[i]==(20353+offset0))
{
	vR[i] = 20353;
}
else
{
	vR[i] = 20352;
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
	if(input[i]>(20287+offset0))
{
	if(input[i]>(20319+offset0))
{
	if(input[i]>(20335+offset0))
{
	if(input[i]>(20343+offset0))
{
	if(input[i]>(20347+offset0))
{
	if(input[i]>(20349+offset0))
{
	if(input[i]==(20351+offset0))
{
	vR[i] = 20351;
}
else
{
	vR[i] = 20350;
}

}
else
{
	if(input[i]==(20349+offset0))
{
	vR[i] = 20349;
}
else
{
	vR[i] = 20348;
}

}

}
else
{
	if(input[i]>(20345+offset0))
{
	if(input[i]==(20347+offset0))
{
	vR[i] = 20347;
}
else
{
	vR[i] = 20346;
}

}
else
{
	if(input[i]==(20345+offset0))
{
	vR[i] = 20345;
}
else
{
	vR[i] = 20344;
}

}

}

}
else
{
	if(input[i]>(20339+offset0))
{
	if(input[i]>(20341+offset0))
{
	if(input[i]==(20343+offset0))
{
	vR[i] = 20343;
}
else
{
	vR[i] = 20342;
}

}
else
{
	if(input[i]==(20341+offset0))
{
	vR[i] = 20341;
}
else
{
	vR[i] = 20340;
}

}

}
else
{
	if(input[i]>(20337+offset0))
{
	if(input[i]==(20339+offset0))
{
	vR[i] = 20339;
}
else
{
	vR[i] = 20338;
}

}
else
{
	if(input[i]==(20337+offset0))
{
	vR[i] = 20337;
}
else
{
	vR[i] = 20336;
}

}

}

}

}
else
{
	if(input[i]>(20327+offset0))
{
	if(input[i]>(20331+offset0))
{
	if(input[i]>(20333+offset0))
{
	if(input[i]==(20335+offset0))
{
	vR[i] = 20335;
}
else
{
	vR[i] = 20334;
}

}
else
{
	if(input[i]==(20333+offset0))
{
	vR[i] = 20333;
}
else
{
	vR[i] = 20332;
}

}

}
else
{
	if(input[i]>(20329+offset0))
{
	if(input[i]==(20331+offset0))
{
	vR[i] = 20331;
}
else
{
	vR[i] = 20330;
}

}
else
{
	if(input[i]==(20329+offset0))
{
	vR[i] = 20329;
}
else
{
	vR[i] = 20328;
}

}

}

}
else
{
	if(input[i]>(20323+offset0))
{
	if(input[i]>(20325+offset0))
{
	if(input[i]==(20327+offset0))
{
	vR[i] = 20327;
}
else
{
	vR[i] = 20326;
}

}
else
{
	if(input[i]==(20325+offset0))
{
	vR[i] = 20325;
}
else
{
	vR[i] = 20324;
}

}

}
else
{
	if(input[i]>(20321+offset0))
{
	if(input[i]==(20323+offset0))
{
	vR[i] = 20323;
}
else
{
	vR[i] = 20322;
}

}
else
{
	if(input[i]==(20321+offset0))
{
	vR[i] = 20321;
}
else
{
	vR[i] = 20320;
}

}

}

}

}

}
else
{
	if(input[i]>(20303+offset0))
{
	if(input[i]>(20311+offset0))
{
	if(input[i]>(20315+offset0))
{
	if(input[i]>(20317+offset0))
{
	if(input[i]==(20319+offset0))
{
	vR[i] = 20319;
}
else
{
	vR[i] = 20318;
}

}
else
{
	if(input[i]==(20317+offset0))
{
	vR[i] = 20317;
}
else
{
	vR[i] = 20316;
}

}

}
else
{
	if(input[i]>(20313+offset0))
{
	if(input[i]==(20315+offset0))
{
	vR[i] = 20315;
}
else
{
	vR[i] = 20314;
}

}
else
{
	if(input[i]==(20313+offset0))
{
	vR[i] = 20313;
}
else
{
	vR[i] = 20312;
}

}

}

}
else
{
	if(input[i]>(20307+offset0))
{
	if(input[i]>(20309+offset0))
{
	if(input[i]==(20311+offset0))
{
	vR[i] = 20311;
}
else
{
	vR[i] = 20310;
}

}
else
{
	if(input[i]==(20309+offset0))
{
	vR[i] = 20309;
}
else
{
	vR[i] = 20308;
}

}

}
else
{
	if(input[i]>(20305+offset0))
{
	if(input[i]==(20307+offset0))
{
	vR[i] = 20307;
}
else
{
	vR[i] = 20306;
}

}
else
{
	if(input[i]==(20305+offset0))
{
	vR[i] = 20305;
}
else
{
	vR[i] = 20304;
}

}

}

}

}
else
{
	if(input[i]>(20295+offset0))
{
	if(input[i]>(20299+offset0))
{
	if(input[i]>(20301+offset0))
{
	if(input[i]==(20303+offset0))
{
	vR[i] = 20303;
}
else
{
	vR[i] = 20302;
}

}
else
{
	if(input[i]==(20301+offset0))
{
	vR[i] = 20301;
}
else
{
	vR[i] = 20300;
}

}

}
else
{
	if(input[i]>(20297+offset0))
{
	if(input[i]==(20299+offset0))
{
	vR[i] = 20299;
}
else
{
	vR[i] = 20298;
}

}
else
{
	if(input[i]==(20297+offset0))
{
	vR[i] = 20297;
}
else
{
	vR[i] = 20296;
}

}

}

}
else
{
	if(input[i]>(20291+offset0))
{
	if(input[i]>(20293+offset0))
{
	if(input[i]==(20295+offset0))
{
	vR[i] = 20295;
}
else
{
	vR[i] = 20294;
}

}
else
{
	if(input[i]==(20293+offset0))
{
	vR[i] = 20293;
}
else
{
	vR[i] = 20292;
}

}

}
else
{
	if(input[i]>(20289+offset0))
{
	if(input[i]==(20291+offset0))
{
	vR[i] = 20291;
}
else
{
	vR[i] = 20290;
}

}
else
{
	if(input[i]==(20289+offset0))
{
	vR[i] = 20289;
}
else
{
	vR[i] = 20288;
}

}

}

}

}

}

}
else
{
	if(input[i]>(20255+offset0))
{
	if(input[i]>(20271+offset0))
{
	if(input[i]>(20279+offset0))
{
	if(input[i]>(20283+offset0))
{
	if(input[i]>(20285+offset0))
{
	if(input[i]==(20287+offset0))
{
	vR[i] = 20287;
}
else
{
	vR[i] = 20286;
}

}
else
{
	if(input[i]==(20285+offset0))
{
	vR[i] = 20285;
}
else
{
	vR[i] = 20284;
}

}

}
else
{
	if(input[i]>(20281+offset0))
{
	if(input[i]==(20283+offset0))
{
	vR[i] = 20283;
}
else
{
	vR[i] = 20282;
}

}
else
{
	if(input[i]==(20281+offset0))
{
	vR[i] = 20281;
}
else
{
	vR[i] = 20280;
}

}

}

}
else
{
	if(input[i]>(20275+offset0))
{
	if(input[i]>(20277+offset0))
{
	if(input[i]==(20279+offset0))
{
	vR[i] = 20279;
}
else
{
	vR[i] = 20278;
}

}
else
{
	if(input[i]==(20277+offset0))
{
	vR[i] = 20277;
}
else
{
	vR[i] = 20276;
}

}

}
else
{
	if(input[i]>(20273+offset0))
{
	if(input[i]==(20275+offset0))
{
	vR[i] = 20275;
}
else
{
	vR[i] = 20274;
}

}
else
{
	if(input[i]==(20273+offset0))
{
	vR[i] = 20273;
}
else
{
	vR[i] = 20272;
}

}

}

}

}
else
{
	if(input[i]>(20263+offset0))
{
	if(input[i]>(20267+offset0))
{
	if(input[i]>(20269+offset0))
{
	if(input[i]==(20271+offset0))
{
	vR[i] = 20271;
}
else
{
	vR[i] = 20270;
}

}
else
{
	if(input[i]==(20269+offset0))
{
	vR[i] = 20269;
}
else
{
	vR[i] = 20268;
}

}

}
else
{
	if(input[i]>(20265+offset0))
{
	if(input[i]==(20267+offset0))
{
	vR[i] = 20267;
}
else
{
	vR[i] = 20266;
}

}
else
{
	if(input[i]==(20265+offset0))
{
	vR[i] = 20265;
}
else
{
	vR[i] = 20264;
}

}

}

}
else
{
	if(input[i]>(20259+offset0))
{
	if(input[i]>(20261+offset0))
{
	if(input[i]==(20263+offset0))
{
	vR[i] = 20263;
}
else
{
	vR[i] = 20262;
}

}
else
{
	if(input[i]==(20261+offset0))
{
	vR[i] = 20261;
}
else
{
	vR[i] = 20260;
}

}

}
else
{
	if(input[i]>(20257+offset0))
{
	if(input[i]==(20259+offset0))
{
	vR[i] = 20259;
}
else
{
	vR[i] = 20258;
}

}
else
{
	if(input[i]==(20257+offset0))
{
	vR[i] = 20257;
}
else
{
	vR[i] = 20256;
}

}

}

}

}

}
else
{
	if(input[i]>(20239+offset0))
{
	if(input[i]>(20247+offset0))
{
	if(input[i]>(20251+offset0))
{
	if(input[i]>(20253+offset0))
{
	if(input[i]==(20255+offset0))
{
	vR[i] = 20255;
}
else
{
	vR[i] = 20254;
}

}
else
{
	if(input[i]==(20253+offset0))
{
	vR[i] = 20253;
}
else
{
	vR[i] = 20252;
}

}

}
else
{
	if(input[i]>(20249+offset0))
{
	if(input[i]==(20251+offset0))
{
	vR[i] = 20251;
}
else
{
	vR[i] = 20250;
}

}
else
{
	if(input[i]==(20249+offset0))
{
	vR[i] = 20249;
}
else
{
	vR[i] = 20248;
}

}

}

}
else
{
	if(input[i]>(20243+offset0))
{
	if(input[i]>(20245+offset0))
{
	if(input[i]==(20247+offset0))
{
	vR[i] = 20247;
}
else
{
	vR[i] = 20246;
}

}
else
{
	if(input[i]==(20245+offset0))
{
	vR[i] = 20245;
}
else
{
	vR[i] = 20244;
}

}

}
else
{
	if(input[i]>(20241+offset0))
{
	if(input[i]==(20243+offset0))
{
	vR[i] = 20243;
}
else
{
	vR[i] = 20242;
}

}
else
{
	if(input[i]==(20241+offset0))
{
	vR[i] = 20241;
}
else
{
	vR[i] = 20240;
}

}

}

}

}
else
{
	if(input[i]>(20231+offset0))
{
	if(input[i]>(20235+offset0))
{
	if(input[i]>(20237+offset0))
{
	if(input[i]==(20239+offset0))
{
	vR[i] = 20239;
}
else
{
	vR[i] = 20238;
}

}
else
{
	if(input[i]==(20237+offset0))
{
	vR[i] = 20237;
}
else
{
	vR[i] = 20236;
}

}

}
else
{
	if(input[i]>(20233+offset0))
{
	if(input[i]==(20235+offset0))
{
	vR[i] = 20235;
}
else
{
	vR[i] = 20234;
}

}
else
{
	if(input[i]==(20233+offset0))
{
	vR[i] = 20233;
}
else
{
	vR[i] = 20232;
}

}

}

}
else
{
	if(input[i]>(20227+offset0))
{
	if(input[i]>(20229+offset0))
{
	if(input[i]==(20231+offset0))
{
	vR[i] = 20231;
}
else
{
	vR[i] = 20230;
}

}
else
{
	if(input[i]==(20229+offset0))
{
	vR[i] = 20229;
}
else
{
	vR[i] = 20228;
}

}

}
else
{
	if(input[i]>(20225+offset0))
{
	if(input[i]==(20227+offset0))
{
	vR[i] = 20227;
}
else
{
	vR[i] = 20226;
}

}
else
{
	if(input[i]==(20225+offset0))
{
	vR[i] = 20225;
}
else
{
	vR[i] = 20224;
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
	if(input[i]>(20095+offset0))
{
	if(input[i]>(20159+offset0))
{
	if(input[i]>(20191+offset0))
{
	if(input[i]>(20207+offset0))
{
	if(input[i]>(20215+offset0))
{
	if(input[i]>(20219+offset0))
{
	if(input[i]>(20221+offset0))
{
	if(input[i]==(20223+offset0))
{
	vR[i] = 20223;
}
else
{
	vR[i] = 20222;
}

}
else
{
	if(input[i]==(20221+offset0))
{
	vR[i] = 20221;
}
else
{
	vR[i] = 20220;
}

}

}
else
{
	if(input[i]>(20217+offset0))
{
	if(input[i]==(20219+offset0))
{
	vR[i] = 20219;
}
else
{
	vR[i] = 20218;
}

}
else
{
	if(input[i]==(20217+offset0))
{
	vR[i] = 20217;
}
else
{
	vR[i] = 20216;
}

}

}

}
else
{
	if(input[i]>(20211+offset0))
{
	if(input[i]>(20213+offset0))
{
	if(input[i]==(20215+offset0))
{
	vR[i] = 20215;
}
else
{
	vR[i] = 20214;
}

}
else
{
	if(input[i]==(20213+offset0))
{
	vR[i] = 20213;
}
else
{
	vR[i] = 20212;
}

}

}
else
{
	if(input[i]>(20209+offset0))
{
	if(input[i]==(20211+offset0))
{
	vR[i] = 20211;
}
else
{
	vR[i] = 20210;
}

}
else
{
	if(input[i]==(20209+offset0))
{
	vR[i] = 20209;
}
else
{
	vR[i] = 20208;
}

}

}

}

}
else
{
	if(input[i]>(20199+offset0))
{
	if(input[i]>(20203+offset0))
{
	if(input[i]>(20205+offset0))
{
	if(input[i]==(20207+offset0))
{
	vR[i] = 20207;
}
else
{
	vR[i] = 20206;
}

}
else
{
	if(input[i]==(20205+offset0))
{
	vR[i] = 20205;
}
else
{
	vR[i] = 20204;
}

}

}
else
{
	if(input[i]>(20201+offset0))
{
	if(input[i]==(20203+offset0))
{
	vR[i] = 20203;
}
else
{
	vR[i] = 20202;
}

}
else
{
	if(input[i]==(20201+offset0))
{
	vR[i] = 20201;
}
else
{
	vR[i] = 20200;
}

}

}

}
else
{
	if(input[i]>(20195+offset0))
{
	if(input[i]>(20197+offset0))
{
	if(input[i]==(20199+offset0))
{
	vR[i] = 20199;
}
else
{
	vR[i] = 20198;
}

}
else
{
	if(input[i]==(20197+offset0))
{
	vR[i] = 20197;
}
else
{
	vR[i] = 20196;
}

}

}
else
{
	if(input[i]>(20193+offset0))
{
	if(input[i]==(20195+offset0))
{
	vR[i] = 20195;
}
else
{
	vR[i] = 20194;
}

}
else
{
	if(input[i]==(20193+offset0))
{
	vR[i] = 20193;
}
else
{
	vR[i] = 20192;
}

}

}

}

}

}
else
{
	if(input[i]>(20175+offset0))
{
	if(input[i]>(20183+offset0))
{
	if(input[i]>(20187+offset0))
{
	if(input[i]>(20189+offset0))
{
	if(input[i]==(20191+offset0))
{
	vR[i] = 20191;
}
else
{
	vR[i] = 20190;
}

}
else
{
	if(input[i]==(20189+offset0))
{
	vR[i] = 20189;
}
else
{
	vR[i] = 20188;
}

}

}
else
{
	if(input[i]>(20185+offset0))
{
	if(input[i]==(20187+offset0))
{
	vR[i] = 20187;
}
else
{
	vR[i] = 20186;
}

}
else
{
	if(input[i]==(20185+offset0))
{
	vR[i] = 20185;
}
else
{
	vR[i] = 20184;
}

}

}

}
else
{
	if(input[i]>(20179+offset0))
{
	if(input[i]>(20181+offset0))
{
	if(input[i]==(20183+offset0))
{
	vR[i] = 20183;
}
else
{
	vR[i] = 20182;
}

}
else
{
	if(input[i]==(20181+offset0))
{
	vR[i] = 20181;
}
else
{
	vR[i] = 20180;
}

}

}
else
{
	if(input[i]>(20177+offset0))
{
	if(input[i]==(20179+offset0))
{
	vR[i] = 20179;
}
else
{
	vR[i] = 20178;
}

}
else
{
	if(input[i]==(20177+offset0))
{
	vR[i] = 20177;
}
else
{
	vR[i] = 20176;
}

}

}

}

}
else
{
	if(input[i]>(20167+offset0))
{
	if(input[i]>(20171+offset0))
{
	if(input[i]>(20173+offset0))
{
	if(input[i]==(20175+offset0))
{
	vR[i] = 20175;
}
else
{
	vR[i] = 20174;
}

}
else
{
	if(input[i]==(20173+offset0))
{
	vR[i] = 20173;
}
else
{
	vR[i] = 20172;
}

}

}
else
{
	if(input[i]>(20169+offset0))
{
	if(input[i]==(20171+offset0))
{
	vR[i] = 20171;
}
else
{
	vR[i] = 20170;
}

}
else
{
	if(input[i]==(20169+offset0))
{
	vR[i] = 20169;
}
else
{
	vR[i] = 20168;
}

}

}

}
else
{
	if(input[i]>(20163+offset0))
{
	if(input[i]>(20165+offset0))
{
	if(input[i]==(20167+offset0))
{
	vR[i] = 20167;
}
else
{
	vR[i] = 20166;
}

}
else
{
	if(input[i]==(20165+offset0))
{
	vR[i] = 20165;
}
else
{
	vR[i] = 20164;
}

}

}
else
{
	if(input[i]>(20161+offset0))
{
	if(input[i]==(20163+offset0))
{
	vR[i] = 20163;
}
else
{
	vR[i] = 20162;
}

}
else
{
	if(input[i]==(20161+offset0))
{
	vR[i] = 20161;
}
else
{
	vR[i] = 20160;
}

}

}

}

}

}

}
else
{
	if(input[i]>(20127+offset0))
{
	if(input[i]>(20143+offset0))
{
	if(input[i]>(20151+offset0))
{
	if(input[i]>(20155+offset0))
{
	if(input[i]>(20157+offset0))
{
	if(input[i]==(20159+offset0))
{
	vR[i] = 20159;
}
else
{
	vR[i] = 20158;
}

}
else
{
	if(input[i]==(20157+offset0))
{
	vR[i] = 20157;
}
else
{
	vR[i] = 20156;
}

}

}
else
{
	if(input[i]>(20153+offset0))
{
	if(input[i]==(20155+offset0))
{
	vR[i] = 20155;
}
else
{
	vR[i] = 20154;
}

}
else
{
	if(input[i]==(20153+offset0))
{
	vR[i] = 20153;
}
else
{
	vR[i] = 20152;
}

}

}

}
else
{
	if(input[i]>(20147+offset0))
{
	if(input[i]>(20149+offset0))
{
	if(input[i]==(20151+offset0))
{
	vR[i] = 20151;
}
else
{
	vR[i] = 20150;
}

}
else
{
	if(input[i]==(20149+offset0))
{
	vR[i] = 20149;
}
else
{
	vR[i] = 20148;
}

}

}
else
{
	if(input[i]>(20145+offset0))
{
	if(input[i]==(20147+offset0))
{
	vR[i] = 20147;
}
else
{
	vR[i] = 20146;
}

}
else
{
	if(input[i]==(20145+offset0))
{
	vR[i] = 20145;
}
else
{
	vR[i] = 20144;
}

}

}

}

}
else
{
	if(input[i]>(20135+offset0))
{
	if(input[i]>(20139+offset0))
{
	if(input[i]>(20141+offset0))
{
	if(input[i]==(20143+offset0))
{
	vR[i] = 20143;
}
else
{
	vR[i] = 20142;
}

}
else
{
	if(input[i]==(20141+offset0))
{
	vR[i] = 20141;
}
else
{
	vR[i] = 20140;
}

}

}
else
{
	if(input[i]>(20137+offset0))
{
	if(input[i]==(20139+offset0))
{
	vR[i] = 20139;
}
else
{
	vR[i] = 20138;
}

}
else
{
	if(input[i]==(20137+offset0))
{
	vR[i] = 20137;
}
else
{
	vR[i] = 20136;
}

}

}

}
else
{
	if(input[i]>(20131+offset0))
{
	if(input[i]>(20133+offset0))
{
	if(input[i]==(20135+offset0))
{
	vR[i] = 20135;
}
else
{
	vR[i] = 20134;
}

}
else
{
	if(input[i]==(20133+offset0))
{
	vR[i] = 20133;
}
else
{
	vR[i] = 20132;
}

}

}
else
{
	if(input[i]>(20129+offset0))
{
	if(input[i]==(20131+offset0))
{
	vR[i] = 20131;
}
else
{
	vR[i] = 20130;
}

}
else
{
	if(input[i]==(20129+offset0))
{
	vR[i] = 20129;
}
else
{
	vR[i] = 20128;
}

}

}

}

}

}
else
{
	if(input[i]>(20111+offset0))
{
	if(input[i]>(20119+offset0))
{
	if(input[i]>(20123+offset0))
{
	if(input[i]>(20125+offset0))
{
	if(input[i]==(20127+offset0))
{
	vR[i] = 20127;
}
else
{
	vR[i] = 20126;
}

}
else
{
	if(input[i]==(20125+offset0))
{
	vR[i] = 20125;
}
else
{
	vR[i] = 20124;
}

}

}
else
{
	if(input[i]>(20121+offset0))
{
	if(input[i]==(20123+offset0))
{
	vR[i] = 20123;
}
else
{
	vR[i] = 20122;
}

}
else
{
	if(input[i]==(20121+offset0))
{
	vR[i] = 20121;
}
else
{
	vR[i] = 20120;
}

}

}

}
else
{
	if(input[i]>(20115+offset0))
{
	if(input[i]>(20117+offset0))
{
	if(input[i]==(20119+offset0))
{
	vR[i] = 20119;
}
else
{
	vR[i] = 20118;
}

}
else
{
	if(input[i]==(20117+offset0))
{
	vR[i] = 20117;
}
else
{
	vR[i] = 20116;
}

}

}
else
{
	if(input[i]>(20113+offset0))
{
	if(input[i]==(20115+offset0))
{
	vR[i] = 20115;
}
else
{
	vR[i] = 20114;
}

}
else
{
	if(input[i]==(20113+offset0))
{
	vR[i] = 20113;
}
else
{
	vR[i] = 20112;
}

}

}

}

}
else
{
	if(input[i]>(20103+offset0))
{
	if(input[i]>(20107+offset0))
{
	if(input[i]>(20109+offset0))
{
	if(input[i]==(20111+offset0))
{
	vR[i] = 20111;
}
else
{
	vR[i] = 20110;
}

}
else
{
	if(input[i]==(20109+offset0))
{
	vR[i] = 20109;
}
else
{
	vR[i] = 20108;
}

}

}
else
{
	if(input[i]>(20105+offset0))
{
	if(input[i]==(20107+offset0))
{
	vR[i] = 20107;
}
else
{
	vR[i] = 20106;
}

}
else
{
	if(input[i]==(20105+offset0))
{
	vR[i] = 20105;
}
else
{
	vR[i] = 20104;
}

}

}

}
else
{
	if(input[i]>(20099+offset0))
{
	if(input[i]>(20101+offset0))
{
	if(input[i]==(20103+offset0))
{
	vR[i] = 20103;
}
else
{
	vR[i] = 20102;
}

}
else
{
	if(input[i]==(20101+offset0))
{
	vR[i] = 20101;
}
else
{
	vR[i] = 20100;
}

}

}
else
{
	if(input[i]>(20097+offset0))
{
	if(input[i]==(20099+offset0))
{
	vR[i] = 20099;
}
else
{
	vR[i] = 20098;
}

}
else
{
	if(input[i]==(20097+offset0))
{
	vR[i] = 20097;
}
else
{
	vR[i] = 20096;
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
	if(input[i]>(20031+offset0))
{
	if(input[i]>(20063+offset0))
{
	if(input[i]>(20079+offset0))
{
	if(input[i]>(20087+offset0))
{
	if(input[i]>(20091+offset0))
{
	if(input[i]>(20093+offset0))
{
	if(input[i]==(20095+offset0))
{
	vR[i] = 20095;
}
else
{
	vR[i] = 20094;
}

}
else
{
	if(input[i]==(20093+offset0))
{
	vR[i] = 20093;
}
else
{
	vR[i] = 20092;
}

}

}
else
{
	if(input[i]>(20089+offset0))
{
	if(input[i]==(20091+offset0))
{
	vR[i] = 20091;
}
else
{
	vR[i] = 20090;
}

}
else
{
	if(input[i]==(20089+offset0))
{
	vR[i] = 20089;
}
else
{
	vR[i] = 20088;
}

}

}

}
else
{
	if(input[i]>(20083+offset0))
{
	if(input[i]>(20085+offset0))
{
	if(input[i]==(20087+offset0))
{
	vR[i] = 20087;
}
else
{
	vR[i] = 20086;
}

}
else
{
	if(input[i]==(20085+offset0))
{
	vR[i] = 20085;
}
else
{
	vR[i] = 20084;
}

}

}
else
{
	if(input[i]>(20081+offset0))
{
	if(input[i]==(20083+offset0))
{
	vR[i] = 20083;
}
else
{
	vR[i] = 20082;
}

}
else
{
	if(input[i]==(20081+offset0))
{
	vR[i] = 20081;
}
else
{
	vR[i] = 20080;
}

}

}

}

}
else
{
	if(input[i]>(20071+offset0))
{
	if(input[i]>(20075+offset0))
{
	if(input[i]>(20077+offset0))
{
	if(input[i]==(20079+offset0))
{
	vR[i] = 20079;
}
else
{
	vR[i] = 20078;
}

}
else
{
	if(input[i]==(20077+offset0))
{
	vR[i] = 20077;
}
else
{
	vR[i] = 20076;
}

}

}
else
{
	if(input[i]>(20073+offset0))
{
	if(input[i]==(20075+offset0))
{
	vR[i] = 20075;
}
else
{
	vR[i] = 20074;
}

}
else
{
	if(input[i]==(20073+offset0))
{
	vR[i] = 20073;
}
else
{
	vR[i] = 20072;
}

}

}

}
else
{
	if(input[i]>(20067+offset0))
{
	if(input[i]>(20069+offset0))
{
	if(input[i]==(20071+offset0))
{
	vR[i] = 20071;
}
else
{
	vR[i] = 20070;
}

}
else
{
	if(input[i]==(20069+offset0))
{
	vR[i] = 20069;
}
else
{
	vR[i] = 20068;
}

}

}
else
{
	if(input[i]>(20065+offset0))
{
	if(input[i]==(20067+offset0))
{
	vR[i] = 20067;
}
else
{
	vR[i] = 20066;
}

}
else
{
	if(input[i]==(20065+offset0))
{
	vR[i] = 20065;
}
else
{
	vR[i] = 20064;
}

}

}

}

}

}
else
{
	if(input[i]>(20047+offset0))
{
	if(input[i]>(20055+offset0))
{
	if(input[i]>(20059+offset0))
{
	if(input[i]>(20061+offset0))
{
	if(input[i]==(20063+offset0))
{
	vR[i] = 20063;
}
else
{
	vR[i] = 20062;
}

}
else
{
	if(input[i]==(20061+offset0))
{
	vR[i] = 20061;
}
else
{
	vR[i] = 20060;
}

}

}
else
{
	if(input[i]>(20057+offset0))
{
	if(input[i]==(20059+offset0))
{
	vR[i] = 20059;
}
else
{
	vR[i] = 20058;
}

}
else
{
	if(input[i]==(20057+offset0))
{
	vR[i] = 20057;
}
else
{
	vR[i] = 20056;
}

}

}

}
else
{
	if(input[i]>(20051+offset0))
{
	if(input[i]>(20053+offset0))
{
	if(input[i]==(20055+offset0))
{
	vR[i] = 20055;
}
else
{
	vR[i] = 20054;
}

}
else
{
	if(input[i]==(20053+offset0))
{
	vR[i] = 20053;
}
else
{
	vR[i] = 20052;
}

}

}
else
{
	if(input[i]>(20049+offset0))
{
	if(input[i]==(20051+offset0))
{
	vR[i] = 20051;
}
else
{
	vR[i] = 20050;
}

}
else
{
	if(input[i]==(20049+offset0))
{
	vR[i] = 20049;
}
else
{
	vR[i] = 20048;
}

}

}

}

}
else
{
	if(input[i]>(20039+offset0))
{
	if(input[i]>(20043+offset0))
{
	if(input[i]>(20045+offset0))
{
	if(input[i]==(20047+offset0))
{
	vR[i] = 20047;
}
else
{
	vR[i] = 20046;
}

}
else
{
	if(input[i]==(20045+offset0))
{
	vR[i] = 20045;
}
else
{
	vR[i] = 20044;
}

}

}
else
{
	if(input[i]>(20041+offset0))
{
	if(input[i]==(20043+offset0))
{
	vR[i] = 20043;
}
else
{
	vR[i] = 20042;
}

}
else
{
	if(input[i]==(20041+offset0))
{
	vR[i] = 20041;
}
else
{
	vR[i] = 20040;
}

}

}

}
else
{
	if(input[i]>(20035+offset0))
{
	if(input[i]>(20037+offset0))
{
	if(input[i]==(20039+offset0))
{
	vR[i] = 20039;
}
else
{
	vR[i] = 20038;
}

}
else
{
	if(input[i]==(20037+offset0))
{
	vR[i] = 20037;
}
else
{
	vR[i] = 20036;
}

}

}
else
{
	if(input[i]>(20033+offset0))
{
	if(input[i]==(20035+offset0))
{
	vR[i] = 20035;
}
else
{
	vR[i] = 20034;
}

}
else
{
	if(input[i]==(20033+offset0))
{
	vR[i] = 20033;
}
else
{
	vR[i] = 20032;
}

}

}

}

}

}

}
else
{
	if(input[i]>(19999+offset0))
{
	if(input[i]>(20015+offset0))
{
	if(input[i]>(20023+offset0))
{
	if(input[i]>(20027+offset0))
{
	if(input[i]>(20029+offset0))
{
	if(input[i]==(20031+offset0))
{
	vR[i] = 20031;
}
else
{
	vR[i] = 20030;
}

}
else
{
	if(input[i]==(20029+offset0))
{
	vR[i] = 20029;
}
else
{
	vR[i] = 20028;
}

}

}
else
{
	if(input[i]>(20025+offset0))
{
	if(input[i]==(20027+offset0))
{
	vR[i] = 20027;
}
else
{
	vR[i] = 20026;
}

}
else
{
	if(input[i]==(20025+offset0))
{
	vR[i] = 20025;
}
else
{
	vR[i] = 20024;
}

}

}

}
else
{
	if(input[i]>(20019+offset0))
{
	if(input[i]>(20021+offset0))
{
	if(input[i]==(20023+offset0))
{
	vR[i] = 20023;
}
else
{
	vR[i] = 20022;
}

}
else
{
	if(input[i]==(20021+offset0))
{
	vR[i] = 20021;
}
else
{
	vR[i] = 20020;
}

}

}
else
{
	if(input[i]>(20017+offset0))
{
	if(input[i]==(20019+offset0))
{
	vR[i] = 20019;
}
else
{
	vR[i] = 20018;
}

}
else
{
	if(input[i]==(20017+offset0))
{
	vR[i] = 20017;
}
else
{
	vR[i] = 20016;
}

}

}

}

}
else
{
	if(input[i]>(20007+offset0))
{
	if(input[i]>(20011+offset0))
{
	if(input[i]>(20013+offset0))
{
	if(input[i]==(20015+offset0))
{
	vR[i] = 20015;
}
else
{
	vR[i] = 20014;
}

}
else
{
	if(input[i]==(20013+offset0))
{
	vR[i] = 20013;
}
else
{
	vR[i] = 20012;
}

}

}
else
{
	if(input[i]>(20009+offset0))
{
	if(input[i]==(20011+offset0))
{
	vR[i] = 20011;
}
else
{
	vR[i] = 20010;
}

}
else
{
	if(input[i]==(20009+offset0))
{
	vR[i] = 20009;
}
else
{
	vR[i] = 20008;
}

}

}

}
else
{
	if(input[i]>(20003+offset0))
{
	if(input[i]>(20005+offset0))
{
	if(input[i]==(20007+offset0))
{
	vR[i] = 20007;
}
else
{
	vR[i] = 20006;
}

}
else
{
	if(input[i]==(20005+offset0))
{
	vR[i] = 20005;
}
else
{
	vR[i] = 20004;
}

}

}
else
{
	if(input[i]>(20001+offset0))
{
	if(input[i]==(20003+offset0))
{
	vR[i] = 20003;
}
else
{
	vR[i] = 20002;
}

}
else
{
	if(input[i]==(20001+offset0))
{
	vR[i] = 20001;
}
else
{
	vR[i] = 20000;
}

}

}

}

}

}
else
{
	if(input[i]>(19983+offset0))
{
	if(input[i]>(19991+offset0))
{
	if(input[i]>(19995+offset0))
{
	if(input[i]>(19997+offset0))
{
	if(input[i]==(19999+offset0))
{
	vR[i] = 19999;
}
else
{
	vR[i] = 19998;
}

}
else
{
	if(input[i]==(19997+offset0))
{
	vR[i] = 19997;
}
else
{
	vR[i] = 19996;
}

}

}
else
{
	if(input[i]>(19993+offset0))
{
	if(input[i]==(19995+offset0))
{
	vR[i] = 19995;
}
else
{
	vR[i] = 19994;
}

}
else
{
	if(input[i]==(19993+offset0))
{
	vR[i] = 19993;
}
else
{
	vR[i] = 19992;
}

}

}

}
else
{
	if(input[i]>(19987+offset0))
{
	if(input[i]>(19989+offset0))
{
	if(input[i]==(19991+offset0))
{
	vR[i] = 19991;
}
else
{
	vR[i] = 19990;
}

}
else
{
	if(input[i]==(19989+offset0))
{
	vR[i] = 19989;
}
else
{
	vR[i] = 19988;
}

}

}
else
{
	if(input[i]>(19985+offset0))
{
	if(input[i]==(19987+offset0))
{
	vR[i] = 19987;
}
else
{
	vR[i] = 19986;
}

}
else
{
	if(input[i]==(19985+offset0))
{
	vR[i] = 19985;
}
else
{
	vR[i] = 19984;
}

}

}

}

}
else
{
	if(input[i]>(19975+offset0))
{
	if(input[i]>(19979+offset0))
{
	if(input[i]>(19981+offset0))
{
	if(input[i]==(19983+offset0))
{
	vR[i] = 19983;
}
else
{
	vR[i] = 19982;
}

}
else
{
	if(input[i]==(19981+offset0))
{
	vR[i] = 19981;
}
else
{
	vR[i] = 19980;
}

}

}
else
{
	if(input[i]>(19977+offset0))
{
	if(input[i]==(19979+offset0))
{
	vR[i] = 19979;
}
else
{
	vR[i] = 19978;
}

}
else
{
	if(input[i]==(19977+offset0))
{
	vR[i] = 19977;
}
else
{
	vR[i] = 19976;
}

}

}

}
else
{
	if(input[i]>(19971+offset0))
{
	if(input[i]>(19973+offset0))
{
	if(input[i]==(19975+offset0))
{
	vR[i] = 19975;
}
else
{
	vR[i] = 19974;
}

}
else
{
	if(input[i]==(19973+offset0))
{
	vR[i] = 19973;
}
else
{
	vR[i] = 19972;
}

}

}
else
{
	if(input[i]>(19969+offset0))
{
	if(input[i]==(19971+offset0))
{
	vR[i] = 19971;
}
else
{
	vR[i] = 19970;
}

}
else
{
	if(input[i]==(19969+offset0))
{
	vR[i] = 19969;
}
else
{
	vR[i] = 19968;
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
	if(input[i]>(19711+offset0))
{
	if(input[i]>(19839+offset0))
{
	if(input[i]>(19903+offset0))
{
	if(input[i]>(19935+offset0))
{
	if(input[i]>(19951+offset0))
{
	if(input[i]>(19959+offset0))
{
	if(input[i]>(19963+offset0))
{
	if(input[i]>(19965+offset0))
{
	if(input[i]==(19967+offset0))
{
	vR[i] = 19967;
}
else
{
	vR[i] = 19966;
}

}
else
{
	if(input[i]==(19965+offset0))
{
	vR[i] = 19965;
}
else
{
	vR[i] = 19964;
}

}

}
else
{
	if(input[i]>(19961+offset0))
{
	if(input[i]==(19963+offset0))
{
	vR[i] = 19963;
}
else
{
	vR[i] = 19962;
}

}
else
{
	if(input[i]==(19961+offset0))
{
	vR[i] = 19961;
}
else
{
	vR[i] = 19960;
}

}

}

}
else
{
	if(input[i]>(19955+offset0))
{
	if(input[i]>(19957+offset0))
{
	if(input[i]==(19959+offset0))
{
	vR[i] = 19959;
}
else
{
	vR[i] = 19958;
}

}
else
{
	if(input[i]==(19957+offset0))
{
	vR[i] = 19957;
}
else
{
	vR[i] = 19956;
}

}

}
else
{
	if(input[i]>(19953+offset0))
{
	if(input[i]==(19955+offset0))
{
	vR[i] = 19955;
}
else
{
	vR[i] = 19954;
}

}
else
{
	if(input[i]==(19953+offset0))
{
	vR[i] = 19953;
}
else
{
	vR[i] = 19952;
}

}

}

}

}
else
{
	if(input[i]>(19943+offset0))
{
	if(input[i]>(19947+offset0))
{
	if(input[i]>(19949+offset0))
{
	if(input[i]==(19951+offset0))
{
	vR[i] = 19951;
}
else
{
	vR[i] = 19950;
}

}
else
{
	if(input[i]==(19949+offset0))
{
	vR[i] = 19949;
}
else
{
	vR[i] = 19948;
}

}

}
else
{
	if(input[i]>(19945+offset0))
{
	if(input[i]==(19947+offset0))
{
	vR[i] = 19947;
}
else
{
	vR[i] = 19946;
}

}
else
{
	if(input[i]==(19945+offset0))
{
	vR[i] = 19945;
}
else
{
	vR[i] = 19944;
}

}

}

}
else
{
	if(input[i]>(19939+offset0))
{
	if(input[i]>(19941+offset0))
{
	if(input[i]==(19943+offset0))
{
	vR[i] = 19943;
}
else
{
	vR[i] = 19942;
}

}
else
{
	if(input[i]==(19941+offset0))
{
	vR[i] = 19941;
}
else
{
	vR[i] = 19940;
}

}

}
else
{
	if(input[i]>(19937+offset0))
{
	if(input[i]==(19939+offset0))
{
	vR[i] = 19939;
}
else
{
	vR[i] = 19938;
}

}
else
{
	if(input[i]==(19937+offset0))
{
	vR[i] = 19937;
}
else
{
	vR[i] = 19936;
}

}

}

}

}

}
else
{
	if(input[i]>(19919+offset0))
{
	if(input[i]>(19927+offset0))
{
	if(input[i]>(19931+offset0))
{
	if(input[i]>(19933+offset0))
{
	if(input[i]==(19935+offset0))
{
	vR[i] = 19935;
}
else
{
	vR[i] = 19934;
}

}
else
{
	if(input[i]==(19933+offset0))
{
	vR[i] = 19933;
}
else
{
	vR[i] = 19932;
}

}

}
else
{
	if(input[i]>(19929+offset0))
{
	if(input[i]==(19931+offset0))
{
	vR[i] = 19931;
}
else
{
	vR[i] = 19930;
}

}
else
{
	if(input[i]==(19929+offset0))
{
	vR[i] = 19929;
}
else
{
	vR[i] = 19928;
}

}

}

}
else
{
	if(input[i]>(19923+offset0))
{
	if(input[i]>(19925+offset0))
{
	if(input[i]==(19927+offset0))
{
	vR[i] = 19927;
}
else
{
	vR[i] = 19926;
}

}
else
{
	if(input[i]==(19925+offset0))
{
	vR[i] = 19925;
}
else
{
	vR[i] = 19924;
}

}

}
else
{
	if(input[i]>(19921+offset0))
{
	if(input[i]==(19923+offset0))
{
	vR[i] = 19923;
}
else
{
	vR[i] = 19922;
}

}
else
{
	if(input[i]==(19921+offset0))
{
	vR[i] = 19921;
}
else
{
	vR[i] = 19920;
}

}

}

}

}
else
{
	if(input[i]>(19911+offset0))
{
	if(input[i]>(19915+offset0))
{
	if(input[i]>(19917+offset0))
{
	if(input[i]==(19919+offset0))
{
	vR[i] = 19919;
}
else
{
	vR[i] = 19918;
}

}
else
{
	if(input[i]==(19917+offset0))
{
	vR[i] = 19917;
}
else
{
	vR[i] = 19916;
}

}

}
else
{
	if(input[i]>(19913+offset0))
{
	if(input[i]==(19915+offset0))
{
	vR[i] = 19915;
}
else
{
	vR[i] = 19914;
}

}
else
{
	if(input[i]==(19913+offset0))
{
	vR[i] = 19913;
}
else
{
	vR[i] = 19912;
}

}

}

}
else
{
	if(input[i]>(19907+offset0))
{
	if(input[i]>(19909+offset0))
{
	if(input[i]==(19911+offset0))
{
	vR[i] = 19911;
}
else
{
	vR[i] = 19910;
}

}
else
{
	if(input[i]==(19909+offset0))
{
	vR[i] = 19909;
}
else
{
	vR[i] = 19908;
}

}

}
else
{
	if(input[i]>(19905+offset0))
{
	if(input[i]==(19907+offset0))
{
	vR[i] = 19907;
}
else
{
	vR[i] = 19906;
}

}
else
{
	if(input[i]==(19905+offset0))
{
	vR[i] = 19905;
}
else
{
	vR[i] = 19904;
}

}

}

}

}

}

}
else
{
	if(input[i]>(19871+offset0))
{
	if(input[i]>(19887+offset0))
{
	if(input[i]>(19895+offset0))
{
	if(input[i]>(19899+offset0))
{
	if(input[i]>(19901+offset0))
{
	if(input[i]==(19903+offset0))
{
	vR[i] = 19903;
}
else
{
	vR[i] = 19902;
}

}
else
{
	if(input[i]==(19901+offset0))
{
	vR[i] = 19901;
}
else
{
	vR[i] = 19900;
}

}

}
else
{
	if(input[i]>(19897+offset0))
{
	if(input[i]==(19899+offset0))
{
	vR[i] = 19899;
}
else
{
	vR[i] = 19898;
}

}
else
{
	if(input[i]==(19897+offset0))
{
	vR[i] = 19897;
}
else
{
	vR[i] = 19896;
}

}

}

}
else
{
	if(input[i]>(19891+offset0))
{
	if(input[i]>(19893+offset0))
{
	if(input[i]==(19895+offset0))
{
	vR[i] = 19895;
}
else
{
	vR[i] = 19894;
}

}
else
{
	if(input[i]==(19893+offset0))
{
	vR[i] = 19893;
}
else
{
	vR[i] = 19892;
}

}

}
else
{
	if(input[i]>(19889+offset0))
{
	if(input[i]==(19891+offset0))
{
	vR[i] = 19891;
}
else
{
	vR[i] = 19890;
}

}
else
{
	if(input[i]==(19889+offset0))
{
	vR[i] = 19889;
}
else
{
	vR[i] = 19888;
}

}

}

}

}
else
{
	if(input[i]>(19879+offset0))
{
	if(input[i]>(19883+offset0))
{
	if(input[i]>(19885+offset0))
{
	if(input[i]==(19887+offset0))
{
	vR[i] = 19887;
}
else
{
	vR[i] = 19886;
}

}
else
{
	if(input[i]==(19885+offset0))
{
	vR[i] = 19885;
}
else
{
	vR[i] = 19884;
}

}

}
else
{
	if(input[i]>(19881+offset0))
{
	if(input[i]==(19883+offset0))
{
	vR[i] = 19883;
}
else
{
	vR[i] = 19882;
}

}
else
{
	if(input[i]==(19881+offset0))
{
	vR[i] = 19881;
}
else
{
	vR[i] = 19880;
}

}

}

}
else
{
	if(input[i]>(19875+offset0))
{
	if(input[i]>(19877+offset0))
{
	if(input[i]==(19879+offset0))
{
	vR[i] = 19879;
}
else
{
	vR[i] = 19878;
}

}
else
{
	if(input[i]==(19877+offset0))
{
	vR[i] = 19877;
}
else
{
	vR[i] = 19876;
}

}

}
else
{
	if(input[i]>(19873+offset0))
{
	if(input[i]==(19875+offset0))
{
	vR[i] = 19875;
}
else
{
	vR[i] = 19874;
}

}
else
{
	if(input[i]==(19873+offset0))
{
	vR[i] = 19873;
}
else
{
	vR[i] = 19872;
}

}

}

}

}

}
else
{
	if(input[i]>(19855+offset0))
{
	if(input[i]>(19863+offset0))
{
	if(input[i]>(19867+offset0))
{
	if(input[i]>(19869+offset0))
{
	if(input[i]==(19871+offset0))
{
	vR[i] = 19871;
}
else
{
	vR[i] = 19870;
}

}
else
{
	if(input[i]==(19869+offset0))
{
	vR[i] = 19869;
}
else
{
	vR[i] = 19868;
}

}

}
else
{
	if(input[i]>(19865+offset0))
{
	if(input[i]==(19867+offset0))
{
	vR[i] = 19867;
}
else
{
	vR[i] = 19866;
}

}
else
{
	if(input[i]==(19865+offset0))
{
	vR[i] = 19865;
}
else
{
	vR[i] = 19864;
}

}

}

}
else
{
	if(input[i]>(19859+offset0))
{
	if(input[i]>(19861+offset0))
{
	if(input[i]==(19863+offset0))
{
	vR[i] = 19863;
}
else
{
	vR[i] = 19862;
}

}
else
{
	if(input[i]==(19861+offset0))
{
	vR[i] = 19861;
}
else
{
	vR[i] = 19860;
}

}

}
else
{
	if(input[i]>(19857+offset0))
{
	if(input[i]==(19859+offset0))
{
	vR[i] = 19859;
}
else
{
	vR[i] = 19858;
}

}
else
{
	if(input[i]==(19857+offset0))
{
	vR[i] = 19857;
}
else
{
	vR[i] = 19856;
}

}

}

}

}
else
{
	if(input[i]>(19847+offset0))
{
	if(input[i]>(19851+offset0))
{
	if(input[i]>(19853+offset0))
{
	if(input[i]==(19855+offset0))
{
	vR[i] = 19855;
}
else
{
	vR[i] = 19854;
}

}
else
{
	if(input[i]==(19853+offset0))
{
	vR[i] = 19853;
}
else
{
	vR[i] = 19852;
}

}

}
else
{
	if(input[i]>(19849+offset0))
{
	if(input[i]==(19851+offset0))
{
	vR[i] = 19851;
}
else
{
	vR[i] = 19850;
}

}
else
{
	if(input[i]==(19849+offset0))
{
	vR[i] = 19849;
}
else
{
	vR[i] = 19848;
}

}

}

}
else
{
	if(input[i]>(19843+offset0))
{
	if(input[i]>(19845+offset0))
{
	if(input[i]==(19847+offset0))
{
	vR[i] = 19847;
}
else
{
	vR[i] = 19846;
}

}
else
{
	if(input[i]==(19845+offset0))
{
	vR[i] = 19845;
}
else
{
	vR[i] = 19844;
}

}

}
else
{
	if(input[i]>(19841+offset0))
{
	if(input[i]==(19843+offset0))
{
	vR[i] = 19843;
}
else
{
	vR[i] = 19842;
}

}
else
{
	if(input[i]==(19841+offset0))
{
	vR[i] = 19841;
}
else
{
	vR[i] = 19840;
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
	if(input[i]>(19775+offset0))
{
	if(input[i]>(19807+offset0))
{
	if(input[i]>(19823+offset0))
{
	if(input[i]>(19831+offset0))
{
	if(input[i]>(19835+offset0))
{
	if(input[i]>(19837+offset0))
{
	if(input[i]==(19839+offset0))
{
	vR[i] = 19839;
}
else
{
	vR[i] = 19838;
}

}
else
{
	if(input[i]==(19837+offset0))
{
	vR[i] = 19837;
}
else
{
	vR[i] = 19836;
}

}

}
else
{
	if(input[i]>(19833+offset0))
{
	if(input[i]==(19835+offset0))
{
	vR[i] = 19835;
}
else
{
	vR[i] = 19834;
}

}
else
{
	if(input[i]==(19833+offset0))
{
	vR[i] = 19833;
}
else
{
	vR[i] = 19832;
}

}

}

}
else
{
	if(input[i]>(19827+offset0))
{
	if(input[i]>(19829+offset0))
{
	if(input[i]==(19831+offset0))
{
	vR[i] = 19831;
}
else
{
	vR[i] = 19830;
}

}
else
{
	if(input[i]==(19829+offset0))
{
	vR[i] = 19829;
}
else
{
	vR[i] = 19828;
}

}

}
else
{
	if(input[i]>(19825+offset0))
{
	if(input[i]==(19827+offset0))
{
	vR[i] = 19827;
}
else
{
	vR[i] = 19826;
}

}
else
{
	if(input[i]==(19825+offset0))
{
	vR[i] = 19825;
}
else
{
	vR[i] = 19824;
}

}

}

}

}
else
{
	if(input[i]>(19815+offset0))
{
	if(input[i]>(19819+offset0))
{
	if(input[i]>(19821+offset0))
{
	if(input[i]==(19823+offset0))
{
	vR[i] = 19823;
}
else
{
	vR[i] = 19822;
}

}
else
{
	if(input[i]==(19821+offset0))
{
	vR[i] = 19821;
}
else
{
	vR[i] = 19820;
}

}

}
else
{
	if(input[i]>(19817+offset0))
{
	if(input[i]==(19819+offset0))
{
	vR[i] = 19819;
}
else
{
	vR[i] = 19818;
}

}
else
{
	if(input[i]==(19817+offset0))
{
	vR[i] = 19817;
}
else
{
	vR[i] = 19816;
}

}

}

}
else
{
	if(input[i]>(19811+offset0))
{
	if(input[i]>(19813+offset0))
{
	if(input[i]==(19815+offset0))
{
	vR[i] = 19815;
}
else
{
	vR[i] = 19814;
}

}
else
{
	if(input[i]==(19813+offset0))
{
	vR[i] = 19813;
}
else
{
	vR[i] = 19812;
}

}

}
else
{
	if(input[i]>(19809+offset0))
{
	if(input[i]==(19811+offset0))
{
	vR[i] = 19811;
}
else
{
	vR[i] = 19810;
}

}
else
{
	if(input[i]==(19809+offset0))
{
	vR[i] = 19809;
}
else
{
	vR[i] = 19808;
}

}

}

}

}

}
else
{
	if(input[i]>(19791+offset0))
{
	if(input[i]>(19799+offset0))
{
	if(input[i]>(19803+offset0))
{
	if(input[i]>(19805+offset0))
{
	if(input[i]==(19807+offset0))
{
	vR[i] = 19807;
}
else
{
	vR[i] = 19806;
}

}
else
{
	if(input[i]==(19805+offset0))
{
	vR[i] = 19805;
}
else
{
	vR[i] = 19804;
}

}

}
else
{
	if(input[i]>(19801+offset0))
{
	if(input[i]==(19803+offset0))
{
	vR[i] = 19803;
}
else
{
	vR[i] = 19802;
}

}
else
{
	if(input[i]==(19801+offset0))
{
	vR[i] = 19801;
}
else
{
	vR[i] = 19800;
}

}

}

}
else
{
	if(input[i]>(19795+offset0))
{
	if(input[i]>(19797+offset0))
{
	if(input[i]==(19799+offset0))
{
	vR[i] = 19799;
}
else
{
	vR[i] = 19798;
}

}
else
{
	if(input[i]==(19797+offset0))
{
	vR[i] = 19797;
}
else
{
	vR[i] = 19796;
}

}

}
else
{
	if(input[i]>(19793+offset0))
{
	if(input[i]==(19795+offset0))
{
	vR[i] = 19795;
}
else
{
	vR[i] = 19794;
}

}
else
{
	if(input[i]==(19793+offset0))
{
	vR[i] = 19793;
}
else
{
	vR[i] = 19792;
}

}

}

}

}
else
{
	if(input[i]>(19783+offset0))
{
	if(input[i]>(19787+offset0))
{
	if(input[i]>(19789+offset0))
{
	if(input[i]==(19791+offset0))
{
	vR[i] = 19791;
}
else
{
	vR[i] = 19790;
}

}
else
{
	if(input[i]==(19789+offset0))
{
	vR[i] = 19789;
}
else
{
	vR[i] = 19788;
}

}

}
else
{
	if(input[i]>(19785+offset0))
{
	if(input[i]==(19787+offset0))
{
	vR[i] = 19787;
}
else
{
	vR[i] = 19786;
}

}
else
{
	if(input[i]==(19785+offset0))
{
	vR[i] = 19785;
}
else
{
	vR[i] = 19784;
}

}

}

}
else
{
	if(input[i]>(19779+offset0))
{
	if(input[i]>(19781+offset0))
{
	if(input[i]==(19783+offset0))
{
	vR[i] = 19783;
}
else
{
	vR[i] = 19782;
}

}
else
{
	if(input[i]==(19781+offset0))
{
	vR[i] = 19781;
}
else
{
	vR[i] = 19780;
}

}

}
else
{
	if(input[i]>(19777+offset0))
{
	if(input[i]==(19779+offset0))
{
	vR[i] = 19779;
}
else
{
	vR[i] = 19778;
}

}
else
{
	if(input[i]==(19777+offset0))
{
	vR[i] = 19777;
}
else
{
	vR[i] = 19776;
}

}

}

}

}

}

}
else
{
	if(input[i]>(19743+offset0))
{
	if(input[i]>(19759+offset0))
{
	if(input[i]>(19767+offset0))
{
	if(input[i]>(19771+offset0))
{
	if(input[i]>(19773+offset0))
{
	if(input[i]==(19775+offset0))
{
	vR[i] = 19775;
}
else
{
	vR[i] = 19774;
}

}
else
{
	if(input[i]==(19773+offset0))
{
	vR[i] = 19773;
}
else
{
	vR[i] = 19772;
}

}

}
else
{
	if(input[i]>(19769+offset0))
{
	if(input[i]==(19771+offset0))
{
	vR[i] = 19771;
}
else
{
	vR[i] = 19770;
}

}
else
{
	if(input[i]==(19769+offset0))
{
	vR[i] = 19769;
}
else
{
	vR[i] = 19768;
}

}

}

}
else
{
	if(input[i]>(19763+offset0))
{
	if(input[i]>(19765+offset0))
{
	if(input[i]==(19767+offset0))
{
	vR[i] = 19767;
}
else
{
	vR[i] = 19766;
}

}
else
{
	if(input[i]==(19765+offset0))
{
	vR[i] = 19765;
}
else
{
	vR[i] = 19764;
}

}

}
else
{
	if(input[i]>(19761+offset0))
{
	if(input[i]==(19763+offset0))
{
	vR[i] = 19763;
}
else
{
	vR[i] = 19762;
}

}
else
{
	if(input[i]==(19761+offset0))
{
	vR[i] = 19761;
}
else
{
	vR[i] = 19760;
}

}

}

}

}
else
{
	if(input[i]>(19751+offset0))
{
	if(input[i]>(19755+offset0))
{
	if(input[i]>(19757+offset0))
{
	if(input[i]==(19759+offset0))
{
	vR[i] = 19759;
}
else
{
	vR[i] = 19758;
}

}
else
{
	if(input[i]==(19757+offset0))
{
	vR[i] = 19757;
}
else
{
	vR[i] = 19756;
}

}

}
else
{
	if(input[i]>(19753+offset0))
{
	if(input[i]==(19755+offset0))
{
	vR[i] = 19755;
}
else
{
	vR[i] = 19754;
}

}
else
{
	if(input[i]==(19753+offset0))
{
	vR[i] = 19753;
}
else
{
	vR[i] = 19752;
}

}

}

}
else
{
	if(input[i]>(19747+offset0))
{
	if(input[i]>(19749+offset0))
{
	if(input[i]==(19751+offset0))
{
	vR[i] = 19751;
}
else
{
	vR[i] = 19750;
}

}
else
{
	if(input[i]==(19749+offset0))
{
	vR[i] = 19749;
}
else
{
	vR[i] = 19748;
}

}

}
else
{
	if(input[i]>(19745+offset0))
{
	if(input[i]==(19747+offset0))
{
	vR[i] = 19747;
}
else
{
	vR[i] = 19746;
}

}
else
{
	if(input[i]==(19745+offset0))
{
	vR[i] = 19745;
}
else
{
	vR[i] = 19744;
}

}

}

}

}

}
else
{
	if(input[i]>(19727+offset0))
{
	if(input[i]>(19735+offset0))
{
	if(input[i]>(19739+offset0))
{
	if(input[i]>(19741+offset0))
{
	if(input[i]==(19743+offset0))
{
	vR[i] = 19743;
}
else
{
	vR[i] = 19742;
}

}
else
{
	if(input[i]==(19741+offset0))
{
	vR[i] = 19741;
}
else
{
	vR[i] = 19740;
}

}

}
else
{
	if(input[i]>(19737+offset0))
{
	if(input[i]==(19739+offset0))
{
	vR[i] = 19739;
}
else
{
	vR[i] = 19738;
}

}
else
{
	if(input[i]==(19737+offset0))
{
	vR[i] = 19737;
}
else
{
	vR[i] = 19736;
}

}

}

}
else
{
	if(input[i]>(19731+offset0))
{
	if(input[i]>(19733+offset0))
{
	if(input[i]==(19735+offset0))
{
	vR[i] = 19735;
}
else
{
	vR[i] = 19734;
}

}
else
{
	if(input[i]==(19733+offset0))
{
	vR[i] = 19733;
}
else
{
	vR[i] = 19732;
}

}

}
else
{
	if(input[i]>(19729+offset0))
{
	if(input[i]==(19731+offset0))
{
	vR[i] = 19731;
}
else
{
	vR[i] = 19730;
}

}
else
{
	if(input[i]==(19729+offset0))
{
	vR[i] = 19729;
}
else
{
	vR[i] = 19728;
}

}

}

}

}
else
{
	if(input[i]>(19719+offset0))
{
	if(input[i]>(19723+offset0))
{
	if(input[i]>(19725+offset0))
{
	if(input[i]==(19727+offset0))
{
	vR[i] = 19727;
}
else
{
	vR[i] = 19726;
}

}
else
{
	if(input[i]==(19725+offset0))
{
	vR[i] = 19725;
}
else
{
	vR[i] = 19724;
}

}

}
else
{
	if(input[i]>(19721+offset0))
{
	if(input[i]==(19723+offset0))
{
	vR[i] = 19723;
}
else
{
	vR[i] = 19722;
}

}
else
{
	if(input[i]==(19721+offset0))
{
	vR[i] = 19721;
}
else
{
	vR[i] = 19720;
}

}

}

}
else
{
	if(input[i]>(19715+offset0))
{
	if(input[i]>(19717+offset0))
{
	if(input[i]==(19719+offset0))
{
	vR[i] = 19719;
}
else
{
	vR[i] = 19718;
}

}
else
{
	if(input[i]==(19717+offset0))
{
	vR[i] = 19717;
}
else
{
	vR[i] = 19716;
}

}

}
else
{
	if(input[i]>(19713+offset0))
{
	if(input[i]==(19715+offset0))
{
	vR[i] = 19715;
}
else
{
	vR[i] = 19714;
}

}
else
{
	if(input[i]==(19713+offset0))
{
	vR[i] = 19713;
}
else
{
	vR[i] = 19712;
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
	if(input[i]>(19583+offset0))
{
	if(input[i]>(19647+offset0))
{
	if(input[i]>(19679+offset0))
{
	if(input[i]>(19695+offset0))
{
	if(input[i]>(19703+offset0))
{
	if(input[i]>(19707+offset0))
{
	if(input[i]>(19709+offset0))
{
	if(input[i]==(19711+offset0))
{
	vR[i] = 19711;
}
else
{
	vR[i] = 19710;
}

}
else
{
	if(input[i]==(19709+offset0))
{
	vR[i] = 19709;
}
else
{
	vR[i] = 19708;
}

}

}
else
{
	if(input[i]>(19705+offset0))
{
	if(input[i]==(19707+offset0))
{
	vR[i] = 19707;
}
else
{
	vR[i] = 19706;
}

}
else
{
	if(input[i]==(19705+offset0))
{
	vR[i] = 19705;
}
else
{
	vR[i] = 19704;
}

}

}

}
else
{
	if(input[i]>(19699+offset0))
{
	if(input[i]>(19701+offset0))
{
	if(input[i]==(19703+offset0))
{
	vR[i] = 19703;
}
else
{
	vR[i] = 19702;
}

}
else
{
	if(input[i]==(19701+offset0))
{
	vR[i] = 19701;
}
else
{
	vR[i] = 19700;
}

}

}
else
{
	if(input[i]>(19697+offset0))
{
	if(input[i]==(19699+offset0))
{
	vR[i] = 19699;
}
else
{
	vR[i] = 19698;
}

}
else
{
	if(input[i]==(19697+offset0))
{
	vR[i] = 19697;
}
else
{
	vR[i] = 19696;
}

}

}

}

}
else
{
	if(input[i]>(19687+offset0))
{
	if(input[i]>(19691+offset0))
{
	if(input[i]>(19693+offset0))
{
	if(input[i]==(19695+offset0))
{
	vR[i] = 19695;
}
else
{
	vR[i] = 19694;
}

}
else
{
	if(input[i]==(19693+offset0))
{
	vR[i] = 19693;
}
else
{
	vR[i] = 19692;
}

}

}
else
{
	if(input[i]>(19689+offset0))
{
	if(input[i]==(19691+offset0))
{
	vR[i] = 19691;
}
else
{
	vR[i] = 19690;
}

}
else
{
	if(input[i]==(19689+offset0))
{
	vR[i] = 19689;
}
else
{
	vR[i] = 19688;
}

}

}

}
else
{
	if(input[i]>(19683+offset0))
{
	if(input[i]>(19685+offset0))
{
	if(input[i]==(19687+offset0))
{
	vR[i] = 19687;
}
else
{
	vR[i] = 19686;
}

}
else
{
	if(input[i]==(19685+offset0))
{
	vR[i] = 19685;
}
else
{
	vR[i] = 19684;
}

}

}
else
{
	if(input[i]>(19681+offset0))
{
	if(input[i]==(19683+offset0))
{
	vR[i] = 19683;
}
else
{
	vR[i] = 19682;
}

}
else
{
	if(input[i]==(19681+offset0))
{
	vR[i] = 19681;
}
else
{
	vR[i] = 19680;
}

}

}

}

}

}
else
{
	if(input[i]>(19663+offset0))
{
	if(input[i]>(19671+offset0))
{
	if(input[i]>(19675+offset0))
{
	if(input[i]>(19677+offset0))
{
	if(input[i]==(19679+offset0))
{
	vR[i] = 19679;
}
else
{
	vR[i] = 19678;
}

}
else
{
	if(input[i]==(19677+offset0))
{
	vR[i] = 19677;
}
else
{
	vR[i] = 19676;
}

}

}
else
{
	if(input[i]>(19673+offset0))
{
	if(input[i]==(19675+offset0))
{
	vR[i] = 19675;
}
else
{
	vR[i] = 19674;
}

}
else
{
	if(input[i]==(19673+offset0))
{
	vR[i] = 19673;
}
else
{
	vR[i] = 19672;
}

}

}

}
else
{
	if(input[i]>(19667+offset0))
{
	if(input[i]>(19669+offset0))
{
	if(input[i]==(19671+offset0))
{
	vR[i] = 19671;
}
else
{
	vR[i] = 19670;
}

}
else
{
	if(input[i]==(19669+offset0))
{
	vR[i] = 19669;
}
else
{
	vR[i] = 19668;
}

}

}
else
{
	if(input[i]>(19665+offset0))
{
	if(input[i]==(19667+offset0))
{
	vR[i] = 19667;
}
else
{
	vR[i] = 19666;
}

}
else
{
	if(input[i]==(19665+offset0))
{
	vR[i] = 19665;
}
else
{
	vR[i] = 19664;
}

}

}

}

}
else
{
	if(input[i]>(19655+offset0))
{
	if(input[i]>(19659+offset0))
{
	if(input[i]>(19661+offset0))
{
	if(input[i]==(19663+offset0))
{
	vR[i] = 19663;
}
else
{
	vR[i] = 19662;
}

}
else
{
	if(input[i]==(19661+offset0))
{
	vR[i] = 19661;
}
else
{
	vR[i] = 19660;
}

}

}
else
{
	if(input[i]>(19657+offset0))
{
	if(input[i]==(19659+offset0))
{
	vR[i] = 19659;
}
else
{
	vR[i] = 19658;
}

}
else
{
	if(input[i]==(19657+offset0))
{
	vR[i] = 19657;
}
else
{
	vR[i] = 19656;
}

}

}

}
else
{
	if(input[i]>(19651+offset0))
{
	if(input[i]>(19653+offset0))
{
	if(input[i]==(19655+offset0))
{
	vR[i] = 19655;
}
else
{
	vR[i] = 19654;
}

}
else
{
	if(input[i]==(19653+offset0))
{
	vR[i] = 19653;
}
else
{
	vR[i] = 19652;
}

}

}
else
{
	if(input[i]>(19649+offset0))
{
	if(input[i]==(19651+offset0))
{
	vR[i] = 19651;
}
else
{
	vR[i] = 19650;
}

}
else
{
	if(input[i]==(19649+offset0))
{
	vR[i] = 19649;
}
else
{
	vR[i] = 19648;
}

}

}

}

}

}

}
else
{
	if(input[i]>(19615+offset0))
{
	if(input[i]>(19631+offset0))
{
	if(input[i]>(19639+offset0))
{
	if(input[i]>(19643+offset0))
{
	if(input[i]>(19645+offset0))
{
	if(input[i]==(19647+offset0))
{
	vR[i] = 19647;
}
else
{
	vR[i] = 19646;
}

}
else
{
	if(input[i]==(19645+offset0))
{
	vR[i] = 19645;
}
else
{
	vR[i] = 19644;
}

}

}
else
{
	if(input[i]>(19641+offset0))
{
	if(input[i]==(19643+offset0))
{
	vR[i] = 19643;
}
else
{
	vR[i] = 19642;
}

}
else
{
	if(input[i]==(19641+offset0))
{
	vR[i] = 19641;
}
else
{
	vR[i] = 19640;
}

}

}

}
else
{
	if(input[i]>(19635+offset0))
{
	if(input[i]>(19637+offset0))
{
	if(input[i]==(19639+offset0))
{
	vR[i] = 19639;
}
else
{
	vR[i] = 19638;
}

}
else
{
	if(input[i]==(19637+offset0))
{
	vR[i] = 19637;
}
else
{
	vR[i] = 19636;
}

}

}
else
{
	if(input[i]>(19633+offset0))
{
	if(input[i]==(19635+offset0))
{
	vR[i] = 19635;
}
else
{
	vR[i] = 19634;
}

}
else
{
	if(input[i]==(19633+offset0))
{
	vR[i] = 19633;
}
else
{
	vR[i] = 19632;
}

}

}

}

}
else
{
	if(input[i]>(19623+offset0))
{
	if(input[i]>(19627+offset0))
{
	if(input[i]>(19629+offset0))
{
	if(input[i]==(19631+offset0))
{
	vR[i] = 19631;
}
else
{
	vR[i] = 19630;
}

}
else
{
	if(input[i]==(19629+offset0))
{
	vR[i] = 19629;
}
else
{
	vR[i] = 19628;
}

}

}
else
{
	if(input[i]>(19625+offset0))
{
	if(input[i]==(19627+offset0))
{
	vR[i] = 19627;
}
else
{
	vR[i] = 19626;
}

}
else
{
	if(input[i]==(19625+offset0))
{
	vR[i] = 19625;
}
else
{
	vR[i] = 19624;
}

}

}

}
else
{
	if(input[i]>(19619+offset0))
{
	if(input[i]>(19621+offset0))
{
	if(input[i]==(19623+offset0))
{
	vR[i] = 19623;
}
else
{
	vR[i] = 19622;
}

}
else
{
	if(input[i]==(19621+offset0))
{
	vR[i] = 19621;
}
else
{
	vR[i] = 19620;
}

}

}
else
{
	if(input[i]>(19617+offset0))
{
	if(input[i]==(19619+offset0))
{
	vR[i] = 19619;
}
else
{
	vR[i] = 19618;
}

}
else
{
	if(input[i]==(19617+offset0))
{
	vR[i] = 19617;
}
else
{
	vR[i] = 19616;
}

}

}

}

}

}
else
{
	if(input[i]>(19599+offset0))
{
	if(input[i]>(19607+offset0))
{
	if(input[i]>(19611+offset0))
{
	if(input[i]>(19613+offset0))
{
	if(input[i]==(19615+offset0))
{
	vR[i] = 19615;
}
else
{
	vR[i] = 19614;
}

}
else
{
	if(input[i]==(19613+offset0))
{
	vR[i] = 19613;
}
else
{
	vR[i] = 19612;
}

}

}
else
{
	if(input[i]>(19609+offset0))
{
	if(input[i]==(19611+offset0))
{
	vR[i] = 19611;
}
else
{
	vR[i] = 19610;
}

}
else
{
	if(input[i]==(19609+offset0))
{
	vR[i] = 19609;
}
else
{
	vR[i] = 19608;
}

}

}

}
else
{
	if(input[i]>(19603+offset0))
{
	if(input[i]>(19605+offset0))
{
	if(input[i]==(19607+offset0))
{
	vR[i] = 19607;
}
else
{
	vR[i] = 19606;
}

}
else
{
	if(input[i]==(19605+offset0))
{
	vR[i] = 19605;
}
else
{
	vR[i] = 19604;
}

}

}
else
{
	if(input[i]>(19601+offset0))
{
	if(input[i]==(19603+offset0))
{
	vR[i] = 19603;
}
else
{
	vR[i] = 19602;
}

}
else
{
	if(input[i]==(19601+offset0))
{
	vR[i] = 19601;
}
else
{
	vR[i] = 19600;
}

}

}

}

}
else
{
	if(input[i]>(19591+offset0))
{
	if(input[i]>(19595+offset0))
{
	if(input[i]>(19597+offset0))
{
	if(input[i]==(19599+offset0))
{
	vR[i] = 19599;
}
else
{
	vR[i] = 19598;
}

}
else
{
	if(input[i]==(19597+offset0))
{
	vR[i] = 19597;
}
else
{
	vR[i] = 19596;
}

}

}
else
{
	if(input[i]>(19593+offset0))
{
	if(input[i]==(19595+offset0))
{
	vR[i] = 19595;
}
else
{
	vR[i] = 19594;
}

}
else
{
	if(input[i]==(19593+offset0))
{
	vR[i] = 19593;
}
else
{
	vR[i] = 19592;
}

}

}

}
else
{
	if(input[i]>(19587+offset0))
{
	if(input[i]>(19589+offset0))
{
	if(input[i]==(19591+offset0))
{
	vR[i] = 19591;
}
else
{
	vR[i] = 19590;
}

}
else
{
	if(input[i]==(19589+offset0))
{
	vR[i] = 19589;
}
else
{
	vR[i] = 19588;
}

}

}
else
{
	if(input[i]>(19585+offset0))
{
	if(input[i]==(19587+offset0))
{
	vR[i] = 19587;
}
else
{
	vR[i] = 19586;
}

}
else
{
	if(input[i]==(19585+offset0))
{
	vR[i] = 19585;
}
else
{
	vR[i] = 19584;
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
	if(input[i]>(19519+offset0))
{
	if(input[i]>(19551+offset0))
{
	if(input[i]>(19567+offset0))
{
	if(input[i]>(19575+offset0))
{
	if(input[i]>(19579+offset0))
{
	if(input[i]>(19581+offset0))
{
	if(input[i]==(19583+offset0))
{
	vR[i] = 19583;
}
else
{
	vR[i] = 19582;
}

}
else
{
	if(input[i]==(19581+offset0))
{
	vR[i] = 19581;
}
else
{
	vR[i] = 19580;
}

}

}
else
{
	if(input[i]>(19577+offset0))
{
	if(input[i]==(19579+offset0))
{
	vR[i] = 19579;
}
else
{
	vR[i] = 19578;
}

}
else
{
	if(input[i]==(19577+offset0))
{
	vR[i] = 19577;
}
else
{
	vR[i] = 19576;
}

}

}

}
else
{
	if(input[i]>(19571+offset0))
{
	if(input[i]>(19573+offset0))
{
	if(input[i]==(19575+offset0))
{
	vR[i] = 19575;
}
else
{
	vR[i] = 19574;
}

}
else
{
	if(input[i]==(19573+offset0))
{
	vR[i] = 19573;
}
else
{
	vR[i] = 19572;
}

}

}
else
{
	if(input[i]>(19569+offset0))
{
	if(input[i]==(19571+offset0))
{
	vR[i] = 19571;
}
else
{
	vR[i] = 19570;
}

}
else
{
	if(input[i]==(19569+offset0))
{
	vR[i] = 19569;
}
else
{
	vR[i] = 19568;
}

}

}

}

}
else
{
	if(input[i]>(19559+offset0))
{
	if(input[i]>(19563+offset0))
{
	if(input[i]>(19565+offset0))
{
	if(input[i]==(19567+offset0))
{
	vR[i] = 19567;
}
else
{
	vR[i] = 19566;
}

}
else
{
	if(input[i]==(19565+offset0))
{
	vR[i] = 19565;
}
else
{
	vR[i] = 19564;
}

}

}
else
{
	if(input[i]>(19561+offset0))
{
	if(input[i]==(19563+offset0))
{
	vR[i] = 19563;
}
else
{
	vR[i] = 19562;
}

}
else
{
	if(input[i]==(19561+offset0))
{
	vR[i] = 19561;
}
else
{
	vR[i] = 19560;
}

}

}

}
else
{
	if(input[i]>(19555+offset0))
{
	if(input[i]>(19557+offset0))
{
	if(input[i]==(19559+offset0))
{
	vR[i] = 19559;
}
else
{
	vR[i] = 19558;
}

}
else
{
	if(input[i]==(19557+offset0))
{
	vR[i] = 19557;
}
else
{
	vR[i] = 19556;
}

}

}
else
{
	if(input[i]>(19553+offset0))
{
	if(input[i]==(19555+offset0))
{
	vR[i] = 19555;
}
else
{
	vR[i] = 19554;
}

}
else
{
	if(input[i]==(19553+offset0))
{
	vR[i] = 19553;
}
else
{
	vR[i] = 19552;
}

}

}

}

}

}
else
{
	if(input[i]>(19535+offset0))
{
	if(input[i]>(19543+offset0))
{
	if(input[i]>(19547+offset0))
{
	if(input[i]>(19549+offset0))
{
	if(input[i]==(19551+offset0))
{
	vR[i] = 19551;
}
else
{
	vR[i] = 19550;
}

}
else
{
	if(input[i]==(19549+offset0))
{
	vR[i] = 19549;
}
else
{
	vR[i] = 19548;
}

}

}
else
{
	if(input[i]>(19545+offset0))
{
	if(input[i]==(19547+offset0))
{
	vR[i] = 19547;
}
else
{
	vR[i] = 19546;
}

}
else
{
	if(input[i]==(19545+offset0))
{
	vR[i] = 19545;
}
else
{
	vR[i] = 19544;
}

}

}

}
else
{
	if(input[i]>(19539+offset0))
{
	if(input[i]>(19541+offset0))
{
	if(input[i]==(19543+offset0))
{
	vR[i] = 19543;
}
else
{
	vR[i] = 19542;
}

}
else
{
	if(input[i]==(19541+offset0))
{
	vR[i] = 19541;
}
else
{
	vR[i] = 19540;
}

}

}
else
{
	if(input[i]>(19537+offset0))
{
	if(input[i]==(19539+offset0))
{
	vR[i] = 19539;
}
else
{
	vR[i] = 19538;
}

}
else
{
	if(input[i]==(19537+offset0))
{
	vR[i] = 19537;
}
else
{
	vR[i] = 19536;
}

}

}

}

}
else
{
	if(input[i]>(19527+offset0))
{
	if(input[i]>(19531+offset0))
{
	if(input[i]>(19533+offset0))
{
	if(input[i]==(19535+offset0))
{
	vR[i] = 19535;
}
else
{
	vR[i] = 19534;
}

}
else
{
	if(input[i]==(19533+offset0))
{
	vR[i] = 19533;
}
else
{
	vR[i] = 19532;
}

}

}
else
{
	if(input[i]>(19529+offset0))
{
	if(input[i]==(19531+offset0))
{
	vR[i] = 19531;
}
else
{
	vR[i] = 19530;
}

}
else
{
	if(input[i]==(19529+offset0))
{
	vR[i] = 19529;
}
else
{
	vR[i] = 19528;
}

}

}

}
else
{
	if(input[i]>(19523+offset0))
{
	if(input[i]>(19525+offset0))
{
	if(input[i]==(19527+offset0))
{
	vR[i] = 19527;
}
else
{
	vR[i] = 19526;
}

}
else
{
	if(input[i]==(19525+offset0))
{
	vR[i] = 19525;
}
else
{
	vR[i] = 19524;
}

}

}
else
{
	if(input[i]>(19521+offset0))
{
	if(input[i]==(19523+offset0))
{
	vR[i] = 19523;
}
else
{
	vR[i] = 19522;
}

}
else
{
	if(input[i]==(19521+offset0))
{
	vR[i] = 19521;
}
else
{
	vR[i] = 19520;
}

}

}

}

}

}

}
else
{
	if(input[i]>(19487+offset0))
{
	if(input[i]>(19503+offset0))
{
	if(input[i]>(19511+offset0))
{
	if(input[i]>(19515+offset0))
{
	if(input[i]>(19517+offset0))
{
	if(input[i]==(19519+offset0))
{
	vR[i] = 19519;
}
else
{
	vR[i] = 19518;
}

}
else
{
	if(input[i]==(19517+offset0))
{
	vR[i] = 19517;
}
else
{
	vR[i] = 19516;
}

}

}
else
{
	if(input[i]>(19513+offset0))
{
	if(input[i]==(19515+offset0))
{
	vR[i] = 19515;
}
else
{
	vR[i] = 19514;
}

}
else
{
	if(input[i]==(19513+offset0))
{
	vR[i] = 19513;
}
else
{
	vR[i] = 19512;
}

}

}

}
else
{
	if(input[i]>(19507+offset0))
{
	if(input[i]>(19509+offset0))
{
	if(input[i]==(19511+offset0))
{
	vR[i] = 19511;
}
else
{
	vR[i] = 19510;
}

}
else
{
	if(input[i]==(19509+offset0))
{
	vR[i] = 19509;
}
else
{
	vR[i] = 19508;
}

}

}
else
{
	if(input[i]>(19505+offset0))
{
	if(input[i]==(19507+offset0))
{
	vR[i] = 19507;
}
else
{
	vR[i] = 19506;
}

}
else
{
	if(input[i]==(19505+offset0))
{
	vR[i] = 19505;
}
else
{
	vR[i] = 19504;
}

}

}

}

}
else
{
	if(input[i]>(19495+offset0))
{
	if(input[i]>(19499+offset0))
{
	if(input[i]>(19501+offset0))
{
	if(input[i]==(19503+offset0))
{
	vR[i] = 19503;
}
else
{
	vR[i] = 19502;
}

}
else
{
	if(input[i]==(19501+offset0))
{
	vR[i] = 19501;
}
else
{
	vR[i] = 19500;
}

}

}
else
{
	if(input[i]>(19497+offset0))
{
	if(input[i]==(19499+offset0))
{
	vR[i] = 19499;
}
else
{
	vR[i] = 19498;
}

}
else
{
	if(input[i]==(19497+offset0))
{
	vR[i] = 19497;
}
else
{
	vR[i] = 19496;
}

}

}

}
else
{
	if(input[i]>(19491+offset0))
{
	if(input[i]>(19493+offset0))
{
	if(input[i]==(19495+offset0))
{
	vR[i] = 19495;
}
else
{
	vR[i] = 19494;
}

}
else
{
	if(input[i]==(19493+offset0))
{
	vR[i] = 19493;
}
else
{
	vR[i] = 19492;
}

}

}
else
{
	if(input[i]>(19489+offset0))
{
	if(input[i]==(19491+offset0))
{
	vR[i] = 19491;
}
else
{
	vR[i] = 19490;
}

}
else
{
	if(input[i]==(19489+offset0))
{
	vR[i] = 19489;
}
else
{
	vR[i] = 19488;
}

}

}

}

}

}
else
{
	if(input[i]>(19471+offset0))
{
	if(input[i]>(19479+offset0))
{
	if(input[i]>(19483+offset0))
{
	if(input[i]>(19485+offset0))
{
	if(input[i]==(19487+offset0))
{
	vR[i] = 19487;
}
else
{
	vR[i] = 19486;
}

}
else
{
	if(input[i]==(19485+offset0))
{
	vR[i] = 19485;
}
else
{
	vR[i] = 19484;
}

}

}
else
{
	if(input[i]>(19481+offset0))
{
	if(input[i]==(19483+offset0))
{
	vR[i] = 19483;
}
else
{
	vR[i] = 19482;
}

}
else
{
	if(input[i]==(19481+offset0))
{
	vR[i] = 19481;
}
else
{
	vR[i] = 19480;
}

}

}

}
else
{
	if(input[i]>(19475+offset0))
{
	if(input[i]>(19477+offset0))
{
	if(input[i]==(19479+offset0))
{
	vR[i] = 19479;
}
else
{
	vR[i] = 19478;
}

}
else
{
	if(input[i]==(19477+offset0))
{
	vR[i] = 19477;
}
else
{
	vR[i] = 19476;
}

}

}
else
{
	if(input[i]>(19473+offset0))
{
	if(input[i]==(19475+offset0))
{
	vR[i] = 19475;
}
else
{
	vR[i] = 19474;
}

}
else
{
	if(input[i]==(19473+offset0))
{
	vR[i] = 19473;
}
else
{
	vR[i] = 19472;
}

}

}

}

}
else
{
	if(input[i]>(19463+offset0))
{
	if(input[i]>(19467+offset0))
{
	if(input[i]>(19469+offset0))
{
	if(input[i]==(19471+offset0))
{
	vR[i] = 19471;
}
else
{
	vR[i] = 19470;
}

}
else
{
	if(input[i]==(19469+offset0))
{
	vR[i] = 19469;
}
else
{
	vR[i] = 19468;
}

}

}
else
{
	if(input[i]>(19465+offset0))
{
	if(input[i]==(19467+offset0))
{
	vR[i] = 19467;
}
else
{
	vR[i] = 19466;
}

}
else
{
	if(input[i]==(19465+offset0))
{
	vR[i] = 19465;
}
else
{
	vR[i] = 19464;
}

}

}

}
else
{
	if(input[i]>(19459+offset0))
{
	if(input[i]>(19461+offset0))
{
	if(input[i]==(19463+offset0))
{
	vR[i] = 19463;
}
else
{
	vR[i] = 19462;
}

}
else
{
	if(input[i]==(19461+offset0))
{
	vR[i] = 19461;
}
else
{
	vR[i] = 19460;
}

}

}
else
{
	if(input[i]>(19457+offset0))
{
	if(input[i]==(19459+offset0))
{
	vR[i] = 19459;
}
else
{
	vR[i] = 19458;
}

}
else
{
	if(input[i]==(19457+offset0))
{
	vR[i] = 19457;
}
else
{
	vR[i] = 19456;
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
	if(input[i]>(18943+offset0))
{
	if(input[i]>(19199+offset0))
{
	if(input[i]>(19327+offset0))
{
	if(input[i]>(19391+offset0))
{
	if(input[i]>(19423+offset0))
{
	if(input[i]>(19439+offset0))
{
	if(input[i]>(19447+offset0))
{
	if(input[i]>(19451+offset0))
{
	if(input[i]>(19453+offset0))
{
	if(input[i]==(19455+offset0))
{
	vR[i] = 19455;
}
else
{
	vR[i] = 19454;
}

}
else
{
	if(input[i]==(19453+offset0))
{
	vR[i] = 19453;
}
else
{
	vR[i] = 19452;
}

}

}
else
{
	if(input[i]>(19449+offset0))
{
	if(input[i]==(19451+offset0))
{
	vR[i] = 19451;
}
else
{
	vR[i] = 19450;
}

}
else
{
	if(input[i]==(19449+offset0))
{
	vR[i] = 19449;
}
else
{
	vR[i] = 19448;
}

}

}

}
else
{
	if(input[i]>(19443+offset0))
{
	if(input[i]>(19445+offset0))
{
	if(input[i]==(19447+offset0))
{
	vR[i] = 19447;
}
else
{
	vR[i] = 19446;
}

}
else
{
	if(input[i]==(19445+offset0))
{
	vR[i] = 19445;
}
else
{
	vR[i] = 19444;
}

}

}
else
{
	if(input[i]>(19441+offset0))
{
	if(input[i]==(19443+offset0))
{
	vR[i] = 19443;
}
else
{
	vR[i] = 19442;
}

}
else
{
	if(input[i]==(19441+offset0))
{
	vR[i] = 19441;
}
else
{
	vR[i] = 19440;
}

}

}

}

}
else
{
	if(input[i]>(19431+offset0))
{
	if(input[i]>(19435+offset0))
{
	if(input[i]>(19437+offset0))
{
	if(input[i]==(19439+offset0))
{
	vR[i] = 19439;
}
else
{
	vR[i] = 19438;
}

}
else
{
	if(input[i]==(19437+offset0))
{
	vR[i] = 19437;
}
else
{
	vR[i] = 19436;
}

}

}
else
{
	if(input[i]>(19433+offset0))
{
	if(input[i]==(19435+offset0))
{
	vR[i] = 19435;
}
else
{
	vR[i] = 19434;
}

}
else
{
	if(input[i]==(19433+offset0))
{
	vR[i] = 19433;
}
else
{
	vR[i] = 19432;
}

}

}

}
else
{
	if(input[i]>(19427+offset0))
{
	if(input[i]>(19429+offset0))
{
	if(input[i]==(19431+offset0))
{
	vR[i] = 19431;
}
else
{
	vR[i] = 19430;
}

}
else
{
	if(input[i]==(19429+offset0))
{
	vR[i] = 19429;
}
else
{
	vR[i] = 19428;
}

}

}
else
{
	if(input[i]>(19425+offset0))
{
	if(input[i]==(19427+offset0))
{
	vR[i] = 19427;
}
else
{
	vR[i] = 19426;
}

}
else
{
	if(input[i]==(19425+offset0))
{
	vR[i] = 19425;
}
else
{
	vR[i] = 19424;
}

}

}

}

}

}
else
{
	if(input[i]>(19407+offset0))
{
	if(input[i]>(19415+offset0))
{
	if(input[i]>(19419+offset0))
{
	if(input[i]>(19421+offset0))
{
	if(input[i]==(19423+offset0))
{
	vR[i] = 19423;
}
else
{
	vR[i] = 19422;
}

}
else
{
	if(input[i]==(19421+offset0))
{
	vR[i] = 19421;
}
else
{
	vR[i] = 19420;
}

}

}
else
{
	if(input[i]>(19417+offset0))
{
	if(input[i]==(19419+offset0))
{
	vR[i] = 19419;
}
else
{
	vR[i] = 19418;
}

}
else
{
	if(input[i]==(19417+offset0))
{
	vR[i] = 19417;
}
else
{
	vR[i] = 19416;
}

}

}

}
else
{
	if(input[i]>(19411+offset0))
{
	if(input[i]>(19413+offset0))
{
	if(input[i]==(19415+offset0))
{
	vR[i] = 19415;
}
else
{
	vR[i] = 19414;
}

}
else
{
	if(input[i]==(19413+offset0))
{
	vR[i] = 19413;
}
else
{
	vR[i] = 19412;
}

}

}
else
{
	if(input[i]>(19409+offset0))
{
	if(input[i]==(19411+offset0))
{
	vR[i] = 19411;
}
else
{
	vR[i] = 19410;
}

}
else
{
	if(input[i]==(19409+offset0))
{
	vR[i] = 19409;
}
else
{
	vR[i] = 19408;
}

}

}

}

}
else
{
	if(input[i]>(19399+offset0))
{
	if(input[i]>(19403+offset0))
{
	if(input[i]>(19405+offset0))
{
	if(input[i]==(19407+offset0))
{
	vR[i] = 19407;
}
else
{
	vR[i] = 19406;
}

}
else
{
	if(input[i]==(19405+offset0))
{
	vR[i] = 19405;
}
else
{
	vR[i] = 19404;
}

}

}
else
{
	if(input[i]>(19401+offset0))
{
	if(input[i]==(19403+offset0))
{
	vR[i] = 19403;
}
else
{
	vR[i] = 19402;
}

}
else
{
	if(input[i]==(19401+offset0))
{
	vR[i] = 19401;
}
else
{
	vR[i] = 19400;
}

}

}

}
else
{
	if(input[i]>(19395+offset0))
{
	if(input[i]>(19397+offset0))
{
	if(input[i]==(19399+offset0))
{
	vR[i] = 19399;
}
else
{
	vR[i] = 19398;
}

}
else
{
	if(input[i]==(19397+offset0))
{
	vR[i] = 19397;
}
else
{
	vR[i] = 19396;
}

}

}
else
{
	if(input[i]>(19393+offset0))
{
	if(input[i]==(19395+offset0))
{
	vR[i] = 19395;
}
else
{
	vR[i] = 19394;
}

}
else
{
	if(input[i]==(19393+offset0))
{
	vR[i] = 19393;
}
else
{
	vR[i] = 19392;
}

}

}

}

}

}

}
else
{
	if(input[i]>(19359+offset0))
{
	if(input[i]>(19375+offset0))
{
	if(input[i]>(19383+offset0))
{
	if(input[i]>(19387+offset0))
{
	if(input[i]>(19389+offset0))
{
	if(input[i]==(19391+offset0))
{
	vR[i] = 19391;
}
else
{
	vR[i] = 19390;
}

}
else
{
	if(input[i]==(19389+offset0))
{
	vR[i] = 19389;
}
else
{
	vR[i] = 19388;
}

}

}
else
{
	if(input[i]>(19385+offset0))
{
	if(input[i]==(19387+offset0))
{
	vR[i] = 19387;
}
else
{
	vR[i] = 19386;
}

}
else
{
	if(input[i]==(19385+offset0))
{
	vR[i] = 19385;
}
else
{
	vR[i] = 19384;
}

}

}

}
else
{
	if(input[i]>(19379+offset0))
{
	if(input[i]>(19381+offset0))
{
	if(input[i]==(19383+offset0))
{
	vR[i] = 19383;
}
else
{
	vR[i] = 19382;
}

}
else
{
	if(input[i]==(19381+offset0))
{
	vR[i] = 19381;
}
else
{
	vR[i] = 19380;
}

}

}
else
{
	if(input[i]>(19377+offset0))
{
	if(input[i]==(19379+offset0))
{
	vR[i] = 19379;
}
else
{
	vR[i] = 19378;
}

}
else
{
	if(input[i]==(19377+offset0))
{
	vR[i] = 19377;
}
else
{
	vR[i] = 19376;
}

}

}

}

}
else
{
	if(input[i]>(19367+offset0))
{
	if(input[i]>(19371+offset0))
{
	if(input[i]>(19373+offset0))
{
	if(input[i]==(19375+offset0))
{
	vR[i] = 19375;
}
else
{
	vR[i] = 19374;
}

}
else
{
	if(input[i]==(19373+offset0))
{
	vR[i] = 19373;
}
else
{
	vR[i] = 19372;
}

}

}
else
{
	if(input[i]>(19369+offset0))
{
	if(input[i]==(19371+offset0))
{
	vR[i] = 19371;
}
else
{
	vR[i] = 19370;
}

}
else
{
	if(input[i]==(19369+offset0))
{
	vR[i] = 19369;
}
else
{
	vR[i] = 19368;
}

}

}

}
else
{
	if(input[i]>(19363+offset0))
{
	if(input[i]>(19365+offset0))
{
	if(input[i]==(19367+offset0))
{
	vR[i] = 19367;
}
else
{
	vR[i] = 19366;
}

}
else
{
	if(input[i]==(19365+offset0))
{
	vR[i] = 19365;
}
else
{
	vR[i] = 19364;
}

}

}
else
{
	if(input[i]>(19361+offset0))
{
	if(input[i]==(19363+offset0))
{
	vR[i] = 19363;
}
else
{
	vR[i] = 19362;
}

}
else
{
	if(input[i]==(19361+offset0))
{
	vR[i] = 19361;
}
else
{
	vR[i] = 19360;
}

}

}

}

}

}
else
{
	if(input[i]>(19343+offset0))
{
	if(input[i]>(19351+offset0))
{
	if(input[i]>(19355+offset0))
{
	if(input[i]>(19357+offset0))
{
	if(input[i]==(19359+offset0))
{
	vR[i] = 19359;
}
else
{
	vR[i] = 19358;
}

}
else
{
	if(input[i]==(19357+offset0))
{
	vR[i] = 19357;
}
else
{
	vR[i] = 19356;
}

}

}
else
{
	if(input[i]>(19353+offset0))
{
	if(input[i]==(19355+offset0))
{
	vR[i] = 19355;
}
else
{
	vR[i] = 19354;
}

}
else
{
	if(input[i]==(19353+offset0))
{
	vR[i] = 19353;
}
else
{
	vR[i] = 19352;
}

}

}

}
else
{
	if(input[i]>(19347+offset0))
{
	if(input[i]>(19349+offset0))
{
	if(input[i]==(19351+offset0))
{
	vR[i] = 19351;
}
else
{
	vR[i] = 19350;
}

}
else
{
	if(input[i]==(19349+offset0))
{
	vR[i] = 19349;
}
else
{
	vR[i] = 19348;
}

}

}
else
{
	if(input[i]>(19345+offset0))
{
	if(input[i]==(19347+offset0))
{
	vR[i] = 19347;
}
else
{
	vR[i] = 19346;
}

}
else
{
	if(input[i]==(19345+offset0))
{
	vR[i] = 19345;
}
else
{
	vR[i] = 19344;
}

}

}

}

}
else
{
	if(input[i]>(19335+offset0))
{
	if(input[i]>(19339+offset0))
{
	if(input[i]>(19341+offset0))
{
	if(input[i]==(19343+offset0))
{
	vR[i] = 19343;
}
else
{
	vR[i] = 19342;
}

}
else
{
	if(input[i]==(19341+offset0))
{
	vR[i] = 19341;
}
else
{
	vR[i] = 19340;
}

}

}
else
{
	if(input[i]>(19337+offset0))
{
	if(input[i]==(19339+offset0))
{
	vR[i] = 19339;
}
else
{
	vR[i] = 19338;
}

}
else
{
	if(input[i]==(19337+offset0))
{
	vR[i] = 19337;
}
else
{
	vR[i] = 19336;
}

}

}

}
else
{
	if(input[i]>(19331+offset0))
{
	if(input[i]>(19333+offset0))
{
	if(input[i]==(19335+offset0))
{
	vR[i] = 19335;
}
else
{
	vR[i] = 19334;
}

}
else
{
	if(input[i]==(19333+offset0))
{
	vR[i] = 19333;
}
else
{
	vR[i] = 19332;
}

}

}
else
{
	if(input[i]>(19329+offset0))
{
	if(input[i]==(19331+offset0))
{
	vR[i] = 19331;
}
else
{
	vR[i] = 19330;
}

}
else
{
	if(input[i]==(19329+offset0))
{
	vR[i] = 19329;
}
else
{
	vR[i] = 19328;
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
	if(input[i]>(19263+offset0))
{
	if(input[i]>(19295+offset0))
{
	if(input[i]>(19311+offset0))
{
	if(input[i]>(19319+offset0))
{
	if(input[i]>(19323+offset0))
{
	if(input[i]>(19325+offset0))
{
	if(input[i]==(19327+offset0))
{
	vR[i] = 19327;
}
else
{
	vR[i] = 19326;
}

}
else
{
	if(input[i]==(19325+offset0))
{
	vR[i] = 19325;
}
else
{
	vR[i] = 19324;
}

}

}
else
{
	if(input[i]>(19321+offset0))
{
	if(input[i]==(19323+offset0))
{
	vR[i] = 19323;
}
else
{
	vR[i] = 19322;
}

}
else
{
	if(input[i]==(19321+offset0))
{
	vR[i] = 19321;
}
else
{
	vR[i] = 19320;
}

}

}

}
else
{
	if(input[i]>(19315+offset0))
{
	if(input[i]>(19317+offset0))
{
	if(input[i]==(19319+offset0))
{
	vR[i] = 19319;
}
else
{
	vR[i] = 19318;
}

}
else
{
	if(input[i]==(19317+offset0))
{
	vR[i] = 19317;
}
else
{
	vR[i] = 19316;
}

}

}
else
{
	if(input[i]>(19313+offset0))
{
	if(input[i]==(19315+offset0))
{
	vR[i] = 19315;
}
else
{
	vR[i] = 19314;
}

}
else
{
	if(input[i]==(19313+offset0))
{
	vR[i] = 19313;
}
else
{
	vR[i] = 19312;
}

}

}

}

}
else
{
	if(input[i]>(19303+offset0))
{
	if(input[i]>(19307+offset0))
{
	if(input[i]>(19309+offset0))
{
	if(input[i]==(19311+offset0))
{
	vR[i] = 19311;
}
else
{
	vR[i] = 19310;
}

}
else
{
	if(input[i]==(19309+offset0))
{
	vR[i] = 19309;
}
else
{
	vR[i] = 19308;
}

}

}
else
{
	if(input[i]>(19305+offset0))
{
	if(input[i]==(19307+offset0))
{
	vR[i] = 19307;
}
else
{
	vR[i] = 19306;
}

}
else
{
	if(input[i]==(19305+offset0))
{
	vR[i] = 19305;
}
else
{
	vR[i] = 19304;
}

}

}

}
else
{
	if(input[i]>(19299+offset0))
{
	if(input[i]>(19301+offset0))
{
	if(input[i]==(19303+offset0))
{
	vR[i] = 19303;
}
else
{
	vR[i] = 19302;
}

}
else
{
	if(input[i]==(19301+offset0))
{
	vR[i] = 19301;
}
else
{
	vR[i] = 19300;
}

}

}
else
{
	if(input[i]>(19297+offset0))
{
	if(input[i]==(19299+offset0))
{
	vR[i] = 19299;
}
else
{
	vR[i] = 19298;
}

}
else
{
	if(input[i]==(19297+offset0))
{
	vR[i] = 19297;
}
else
{
	vR[i] = 19296;
}

}

}

}

}

}
else
{
	if(input[i]>(19279+offset0))
{
	if(input[i]>(19287+offset0))
{
	if(input[i]>(19291+offset0))
{
	if(input[i]>(19293+offset0))
{
	if(input[i]==(19295+offset0))
{
	vR[i] = 19295;
}
else
{
	vR[i] = 19294;
}

}
else
{
	if(input[i]==(19293+offset0))
{
	vR[i] = 19293;
}
else
{
	vR[i] = 19292;
}

}

}
else
{
	if(input[i]>(19289+offset0))
{
	if(input[i]==(19291+offset0))
{
	vR[i] = 19291;
}
else
{
	vR[i] = 19290;
}

}
else
{
	if(input[i]==(19289+offset0))
{
	vR[i] = 19289;
}
else
{
	vR[i] = 19288;
}

}

}

}
else
{
	if(input[i]>(19283+offset0))
{
	if(input[i]>(19285+offset0))
{
	if(input[i]==(19287+offset0))
{
	vR[i] = 19287;
}
else
{
	vR[i] = 19286;
}

}
else
{
	if(input[i]==(19285+offset0))
{
	vR[i] = 19285;
}
else
{
	vR[i] = 19284;
}

}

}
else
{
	if(input[i]>(19281+offset0))
{
	if(input[i]==(19283+offset0))
{
	vR[i] = 19283;
}
else
{
	vR[i] = 19282;
}

}
else
{
	if(input[i]==(19281+offset0))
{
	vR[i] = 19281;
}
else
{
	vR[i] = 19280;
}

}

}

}

}
else
{
	if(input[i]>(19271+offset0))
{
	if(input[i]>(19275+offset0))
{
	if(input[i]>(19277+offset0))
{
	if(input[i]==(19279+offset0))
{
	vR[i] = 19279;
}
else
{
	vR[i] = 19278;
}

}
else
{
	if(input[i]==(19277+offset0))
{
	vR[i] = 19277;
}
else
{
	vR[i] = 19276;
}

}

}
else
{
	if(input[i]>(19273+offset0))
{
	if(input[i]==(19275+offset0))
{
	vR[i] = 19275;
}
else
{
	vR[i] = 19274;
}

}
else
{
	if(input[i]==(19273+offset0))
{
	vR[i] = 19273;
}
else
{
	vR[i] = 19272;
}

}

}

}
else
{
	if(input[i]>(19267+offset0))
{
	if(input[i]>(19269+offset0))
{
	if(input[i]==(19271+offset0))
{
	vR[i] = 19271;
}
else
{
	vR[i] = 19270;
}

}
else
{
	if(input[i]==(19269+offset0))
{
	vR[i] = 19269;
}
else
{
	vR[i] = 19268;
}

}

}
else
{
	if(input[i]>(19265+offset0))
{
	if(input[i]==(19267+offset0))
{
	vR[i] = 19267;
}
else
{
	vR[i] = 19266;
}

}
else
{
	if(input[i]==(19265+offset0))
{
	vR[i] = 19265;
}
else
{
	vR[i] = 19264;
}

}

}

}

}

}

}
else
{
	if(input[i]>(19231+offset0))
{
	if(input[i]>(19247+offset0))
{
	if(input[i]>(19255+offset0))
{
	if(input[i]>(19259+offset0))
{
	if(input[i]>(19261+offset0))
{
	if(input[i]==(19263+offset0))
{
	vR[i] = 19263;
}
else
{
	vR[i] = 19262;
}

}
else
{
	if(input[i]==(19261+offset0))
{
	vR[i] = 19261;
}
else
{
	vR[i] = 19260;
}

}

}
else
{
	if(input[i]>(19257+offset0))
{
	if(input[i]==(19259+offset0))
{
	vR[i] = 19259;
}
else
{
	vR[i] = 19258;
}

}
else
{
	if(input[i]==(19257+offset0))
{
	vR[i] = 19257;
}
else
{
	vR[i] = 19256;
}

}

}

}
else
{
	if(input[i]>(19251+offset0))
{
	if(input[i]>(19253+offset0))
{
	if(input[i]==(19255+offset0))
{
	vR[i] = 19255;
}
else
{
	vR[i] = 19254;
}

}
else
{
	if(input[i]==(19253+offset0))
{
	vR[i] = 19253;
}
else
{
	vR[i] = 19252;
}

}

}
else
{
	if(input[i]>(19249+offset0))
{
	if(input[i]==(19251+offset0))
{
	vR[i] = 19251;
}
else
{
	vR[i] = 19250;
}

}
else
{
	if(input[i]==(19249+offset0))
{
	vR[i] = 19249;
}
else
{
	vR[i] = 19248;
}

}

}

}

}
else
{
	if(input[i]>(19239+offset0))
{
	if(input[i]>(19243+offset0))
{
	if(input[i]>(19245+offset0))
{
	if(input[i]==(19247+offset0))
{
	vR[i] = 19247;
}
else
{
	vR[i] = 19246;
}

}
else
{
	if(input[i]==(19245+offset0))
{
	vR[i] = 19245;
}
else
{
	vR[i] = 19244;
}

}

}
else
{
	if(input[i]>(19241+offset0))
{
	if(input[i]==(19243+offset0))
{
	vR[i] = 19243;
}
else
{
	vR[i] = 19242;
}

}
else
{
	if(input[i]==(19241+offset0))
{
	vR[i] = 19241;
}
else
{
	vR[i] = 19240;
}

}

}

}
else
{
	if(input[i]>(19235+offset0))
{
	if(input[i]>(19237+offset0))
{
	if(input[i]==(19239+offset0))
{
	vR[i] = 19239;
}
else
{
	vR[i] = 19238;
}

}
else
{
	if(input[i]==(19237+offset0))
{
	vR[i] = 19237;
}
else
{
	vR[i] = 19236;
}

}

}
else
{
	if(input[i]>(19233+offset0))
{
	if(input[i]==(19235+offset0))
{
	vR[i] = 19235;
}
else
{
	vR[i] = 19234;
}

}
else
{
	if(input[i]==(19233+offset0))
{
	vR[i] = 19233;
}
else
{
	vR[i] = 19232;
}

}

}

}

}

}
else
{
	if(input[i]>(19215+offset0))
{
	if(input[i]>(19223+offset0))
{
	if(input[i]>(19227+offset0))
{
	if(input[i]>(19229+offset0))
{
	if(input[i]==(19231+offset0))
{
	vR[i] = 19231;
}
else
{
	vR[i] = 19230;
}

}
else
{
	if(input[i]==(19229+offset0))
{
	vR[i] = 19229;
}
else
{
	vR[i] = 19228;
}

}

}
else
{
	if(input[i]>(19225+offset0))
{
	if(input[i]==(19227+offset0))
{
	vR[i] = 19227;
}
else
{
	vR[i] = 19226;
}

}
else
{
	if(input[i]==(19225+offset0))
{
	vR[i] = 19225;
}
else
{
	vR[i] = 19224;
}

}

}

}
else
{
	if(input[i]>(19219+offset0))
{
	if(input[i]>(19221+offset0))
{
	if(input[i]==(19223+offset0))
{
	vR[i] = 19223;
}
else
{
	vR[i] = 19222;
}

}
else
{
	if(input[i]==(19221+offset0))
{
	vR[i] = 19221;
}
else
{
	vR[i] = 19220;
}

}

}
else
{
	if(input[i]>(19217+offset0))
{
	if(input[i]==(19219+offset0))
{
	vR[i] = 19219;
}
else
{
	vR[i] = 19218;
}

}
else
{
	if(input[i]==(19217+offset0))
{
	vR[i] = 19217;
}
else
{
	vR[i] = 19216;
}

}

}

}

}
else
{
	if(input[i]>(19207+offset0))
{
	if(input[i]>(19211+offset0))
{
	if(input[i]>(19213+offset0))
{
	if(input[i]==(19215+offset0))
{
	vR[i] = 19215;
}
else
{
	vR[i] = 19214;
}

}
else
{
	if(input[i]==(19213+offset0))
{
	vR[i] = 19213;
}
else
{
	vR[i] = 19212;
}

}

}
else
{
	if(input[i]>(19209+offset0))
{
	if(input[i]==(19211+offset0))
{
	vR[i] = 19211;
}
else
{
	vR[i] = 19210;
}

}
else
{
	if(input[i]==(19209+offset0))
{
	vR[i] = 19209;
}
else
{
	vR[i] = 19208;
}

}

}

}
else
{
	if(input[i]>(19203+offset0))
{
	if(input[i]>(19205+offset0))
{
	if(input[i]==(19207+offset0))
{
	vR[i] = 19207;
}
else
{
	vR[i] = 19206;
}

}
else
{
	if(input[i]==(19205+offset0))
{
	vR[i] = 19205;
}
else
{
	vR[i] = 19204;
}

}

}
else
{
	if(input[i]>(19201+offset0))
{
	if(input[i]==(19203+offset0))
{
	vR[i] = 19203;
}
else
{
	vR[i] = 19202;
}

}
else
{
	if(input[i]==(19201+offset0))
{
	vR[i] = 19201;
}
else
{
	vR[i] = 19200;
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
	if(input[i]>(19071+offset0))
{
	if(input[i]>(19135+offset0))
{
	if(input[i]>(19167+offset0))
{
	if(input[i]>(19183+offset0))
{
	if(input[i]>(19191+offset0))
{
	if(input[i]>(19195+offset0))
{
	if(input[i]>(19197+offset0))
{
	if(input[i]==(19199+offset0))
{
	vR[i] = 19199;
}
else
{
	vR[i] = 19198;
}

}
else
{
	if(input[i]==(19197+offset0))
{
	vR[i] = 19197;
}
else
{
	vR[i] = 19196;
}

}

}
else
{
	if(input[i]>(19193+offset0))
{
	if(input[i]==(19195+offset0))
{
	vR[i] = 19195;
}
else
{
	vR[i] = 19194;
}

}
else
{
	if(input[i]==(19193+offset0))
{
	vR[i] = 19193;
}
else
{
	vR[i] = 19192;
}

}

}

}
else
{
	if(input[i]>(19187+offset0))
{
	if(input[i]>(19189+offset0))
{
	if(input[i]==(19191+offset0))
{
	vR[i] = 19191;
}
else
{
	vR[i] = 19190;
}

}
else
{
	if(input[i]==(19189+offset0))
{
	vR[i] = 19189;
}
else
{
	vR[i] = 19188;
}

}

}
else
{
	if(input[i]>(19185+offset0))
{
	if(input[i]==(19187+offset0))
{
	vR[i] = 19187;
}
else
{
	vR[i] = 19186;
}

}
else
{
	if(input[i]==(19185+offset0))
{
	vR[i] = 19185;
}
else
{
	vR[i] = 19184;
}

}

}

}

}
else
{
	if(input[i]>(19175+offset0))
{
	if(input[i]>(19179+offset0))
{
	if(input[i]>(19181+offset0))
{
	if(input[i]==(19183+offset0))
{
	vR[i] = 19183;
}
else
{
	vR[i] = 19182;
}

}
else
{
	if(input[i]==(19181+offset0))
{
	vR[i] = 19181;
}
else
{
	vR[i] = 19180;
}

}

}
else
{
	if(input[i]>(19177+offset0))
{
	if(input[i]==(19179+offset0))
{
	vR[i] = 19179;
}
else
{
	vR[i] = 19178;
}

}
else
{
	if(input[i]==(19177+offset0))
{
	vR[i] = 19177;
}
else
{
	vR[i] = 19176;
}

}

}

}
else
{
	if(input[i]>(19171+offset0))
{
	if(input[i]>(19173+offset0))
{
	if(input[i]==(19175+offset0))
{
	vR[i] = 19175;
}
else
{
	vR[i] = 19174;
}

}
else
{
	if(input[i]==(19173+offset0))
{
	vR[i] = 19173;
}
else
{
	vR[i] = 19172;
}

}

}
else
{
	if(input[i]>(19169+offset0))
{
	if(input[i]==(19171+offset0))
{
	vR[i] = 19171;
}
else
{
	vR[i] = 19170;
}

}
else
{
	if(input[i]==(19169+offset0))
{
	vR[i] = 19169;
}
else
{
	vR[i] = 19168;
}

}

}

}

}

}
else
{
	if(input[i]>(19151+offset0))
{
	if(input[i]>(19159+offset0))
{
	if(input[i]>(19163+offset0))
{
	if(input[i]>(19165+offset0))
{
	if(input[i]==(19167+offset0))
{
	vR[i] = 19167;
}
else
{
	vR[i] = 19166;
}

}
else
{
	if(input[i]==(19165+offset0))
{
	vR[i] = 19165;
}
else
{
	vR[i] = 19164;
}

}

}
else
{
	if(input[i]>(19161+offset0))
{
	if(input[i]==(19163+offset0))
{
	vR[i] = 19163;
}
else
{
	vR[i] = 19162;
}

}
else
{
	if(input[i]==(19161+offset0))
{
	vR[i] = 19161;
}
else
{
	vR[i] = 19160;
}

}

}

}
else
{
	if(input[i]>(19155+offset0))
{
	if(input[i]>(19157+offset0))
{
	if(input[i]==(19159+offset0))
{
	vR[i] = 19159;
}
else
{
	vR[i] = 19158;
}

}
else
{
	if(input[i]==(19157+offset0))
{
	vR[i] = 19157;
}
else
{
	vR[i] = 19156;
}

}

}
else
{
	if(input[i]>(19153+offset0))
{
	if(input[i]==(19155+offset0))
{
	vR[i] = 19155;
}
else
{
	vR[i] = 19154;
}

}
else
{
	if(input[i]==(19153+offset0))
{
	vR[i] = 19153;
}
else
{
	vR[i] = 19152;
}

}

}

}

}
else
{
	if(input[i]>(19143+offset0))
{
	if(input[i]>(19147+offset0))
{
	if(input[i]>(19149+offset0))
{
	if(input[i]==(19151+offset0))
{
	vR[i] = 19151;
}
else
{
	vR[i] = 19150;
}

}
else
{
	if(input[i]==(19149+offset0))
{
	vR[i] = 19149;
}
else
{
	vR[i] = 19148;
}

}

}
else
{
	if(input[i]>(19145+offset0))
{
	if(input[i]==(19147+offset0))
{
	vR[i] = 19147;
}
else
{
	vR[i] = 19146;
}

}
else
{
	if(input[i]==(19145+offset0))
{
	vR[i] = 19145;
}
else
{
	vR[i] = 19144;
}

}

}

}
else
{
	if(input[i]>(19139+offset0))
{
	if(input[i]>(19141+offset0))
{
	if(input[i]==(19143+offset0))
{
	vR[i] = 19143;
}
else
{
	vR[i] = 19142;
}

}
else
{
	if(input[i]==(19141+offset0))
{
	vR[i] = 19141;
}
else
{
	vR[i] = 19140;
}

}

}
else
{
	if(input[i]>(19137+offset0))
{
	if(input[i]==(19139+offset0))
{
	vR[i] = 19139;
}
else
{
	vR[i] = 19138;
}

}
else
{
	if(input[i]==(19137+offset0))
{
	vR[i] = 19137;
}
else
{
	vR[i] = 19136;
}

}

}

}

}

}

}
else
{
	if(input[i]>(19103+offset0))
{
	if(input[i]>(19119+offset0))
{
	if(input[i]>(19127+offset0))
{
	if(input[i]>(19131+offset0))
{
	if(input[i]>(19133+offset0))
{
	if(input[i]==(19135+offset0))
{
	vR[i] = 19135;
}
else
{
	vR[i] = 19134;
}

}
else
{
	if(input[i]==(19133+offset0))
{
	vR[i] = 19133;
}
else
{
	vR[i] = 19132;
}

}

}
else
{
	if(input[i]>(19129+offset0))
{
	if(input[i]==(19131+offset0))
{
	vR[i] = 19131;
}
else
{
	vR[i] = 19130;
}

}
else
{
	if(input[i]==(19129+offset0))
{
	vR[i] = 19129;
}
else
{
	vR[i] = 19128;
}

}

}

}
else
{
	if(input[i]>(19123+offset0))
{
	if(input[i]>(19125+offset0))
{
	if(input[i]==(19127+offset0))
{
	vR[i] = 19127;
}
else
{
	vR[i] = 19126;
}

}
else
{
	if(input[i]==(19125+offset0))
{
	vR[i] = 19125;
}
else
{
	vR[i] = 19124;
}

}

}
else
{
	if(input[i]>(19121+offset0))
{
	if(input[i]==(19123+offset0))
{
	vR[i] = 19123;
}
else
{
	vR[i] = 19122;
}

}
else
{
	if(input[i]==(19121+offset0))
{
	vR[i] = 19121;
}
else
{
	vR[i] = 19120;
}

}

}

}

}
else
{
	if(input[i]>(19111+offset0))
{
	if(input[i]>(19115+offset0))
{
	if(input[i]>(19117+offset0))
{
	if(input[i]==(19119+offset0))
{
	vR[i] = 19119;
}
else
{
	vR[i] = 19118;
}

}
else
{
	if(input[i]==(19117+offset0))
{
	vR[i] = 19117;
}
else
{
	vR[i] = 19116;
}

}

}
else
{
	if(input[i]>(19113+offset0))
{
	if(input[i]==(19115+offset0))
{
	vR[i] = 19115;
}
else
{
	vR[i] = 19114;
}

}
else
{
	if(input[i]==(19113+offset0))
{
	vR[i] = 19113;
}
else
{
	vR[i] = 19112;
}

}

}

}
else
{
	if(input[i]>(19107+offset0))
{
	if(input[i]>(19109+offset0))
{
	if(input[i]==(19111+offset0))
{
	vR[i] = 19111;
}
else
{
	vR[i] = 19110;
}

}
else
{
	if(input[i]==(19109+offset0))
{
	vR[i] = 19109;
}
else
{
	vR[i] = 19108;
}

}

}
else
{
	if(input[i]>(19105+offset0))
{
	if(input[i]==(19107+offset0))
{
	vR[i] = 19107;
}
else
{
	vR[i] = 19106;
}

}
else
{
	if(input[i]==(19105+offset0))
{
	vR[i] = 19105;
}
else
{
	vR[i] = 19104;
}

}

}

}

}

}
else
{
	if(input[i]>(19087+offset0))
{
	if(input[i]>(19095+offset0))
{
	if(input[i]>(19099+offset0))
{
	if(input[i]>(19101+offset0))
{
	if(input[i]==(19103+offset0))
{
	vR[i] = 19103;
}
else
{
	vR[i] = 19102;
}

}
else
{
	if(input[i]==(19101+offset0))
{
	vR[i] = 19101;
}
else
{
	vR[i] = 19100;
}

}

}
else
{
	if(input[i]>(19097+offset0))
{
	if(input[i]==(19099+offset0))
{
	vR[i] = 19099;
}
else
{
	vR[i] = 19098;
}

}
else
{
	if(input[i]==(19097+offset0))
{
	vR[i] = 19097;
}
else
{
	vR[i] = 19096;
}

}

}

}
else
{
	if(input[i]>(19091+offset0))
{
	if(input[i]>(19093+offset0))
{
	if(input[i]==(19095+offset0))
{
	vR[i] = 19095;
}
else
{
	vR[i] = 19094;
}

}
else
{
	if(input[i]==(19093+offset0))
{
	vR[i] = 19093;
}
else
{
	vR[i] = 19092;
}

}

}
else
{
	if(input[i]>(19089+offset0))
{
	if(input[i]==(19091+offset0))
{
	vR[i] = 19091;
}
else
{
	vR[i] = 19090;
}

}
else
{
	if(input[i]==(19089+offset0))
{
	vR[i] = 19089;
}
else
{
	vR[i] = 19088;
}

}

}

}

}
else
{
	if(input[i]>(19079+offset0))
{
	if(input[i]>(19083+offset0))
{
	if(input[i]>(19085+offset0))
{
	if(input[i]==(19087+offset0))
{
	vR[i] = 19087;
}
else
{
	vR[i] = 19086;
}

}
else
{
	if(input[i]==(19085+offset0))
{
	vR[i] = 19085;
}
else
{
	vR[i] = 19084;
}

}

}
else
{
	if(input[i]>(19081+offset0))
{
	if(input[i]==(19083+offset0))
{
	vR[i] = 19083;
}
else
{
	vR[i] = 19082;
}

}
else
{
	if(input[i]==(19081+offset0))
{
	vR[i] = 19081;
}
else
{
	vR[i] = 19080;
}

}

}

}
else
{
	if(input[i]>(19075+offset0))
{
	if(input[i]>(19077+offset0))
{
	if(input[i]==(19079+offset0))
{
	vR[i] = 19079;
}
else
{
	vR[i] = 19078;
}

}
else
{
	if(input[i]==(19077+offset0))
{
	vR[i] = 19077;
}
else
{
	vR[i] = 19076;
}

}

}
else
{
	if(input[i]>(19073+offset0))
{
	if(input[i]==(19075+offset0))
{
	vR[i] = 19075;
}
else
{
	vR[i] = 19074;
}

}
else
{
	if(input[i]==(19073+offset0))
{
	vR[i] = 19073;
}
else
{
	vR[i] = 19072;
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
	if(input[i]>(19007+offset0))
{
	if(input[i]>(19039+offset0))
{
	if(input[i]>(19055+offset0))
{
	if(input[i]>(19063+offset0))
{
	if(input[i]>(19067+offset0))
{
	if(input[i]>(19069+offset0))
{
	if(input[i]==(19071+offset0))
{
	vR[i] = 19071;
}
else
{
	vR[i] = 19070;
}

}
else
{
	if(input[i]==(19069+offset0))
{
	vR[i] = 19069;
}
else
{
	vR[i] = 19068;
}

}

}
else
{
	if(input[i]>(19065+offset0))
{
	if(input[i]==(19067+offset0))
{
	vR[i] = 19067;
}
else
{
	vR[i] = 19066;
}

}
else
{
	if(input[i]==(19065+offset0))
{
	vR[i] = 19065;
}
else
{
	vR[i] = 19064;
}

}

}

}
else
{
	if(input[i]>(19059+offset0))
{
	if(input[i]>(19061+offset0))
{
	if(input[i]==(19063+offset0))
{
	vR[i] = 19063;
}
else
{
	vR[i] = 19062;
}

}
else
{
	if(input[i]==(19061+offset0))
{
	vR[i] = 19061;
}
else
{
	vR[i] = 19060;
}

}

}
else
{
	if(input[i]>(19057+offset0))
{
	if(input[i]==(19059+offset0))
{
	vR[i] = 19059;
}
else
{
	vR[i] = 19058;
}

}
else
{
	if(input[i]==(19057+offset0))
{
	vR[i] = 19057;
}
else
{
	vR[i] = 19056;
}

}

}

}

}
else
{
	if(input[i]>(19047+offset0))
{
	if(input[i]>(19051+offset0))
{
	if(input[i]>(19053+offset0))
{
	if(input[i]==(19055+offset0))
{
	vR[i] = 19055;
}
else
{
	vR[i] = 19054;
}

}
else
{
	if(input[i]==(19053+offset0))
{
	vR[i] = 19053;
}
else
{
	vR[i] = 19052;
}

}

}
else
{
	if(input[i]>(19049+offset0))
{
	if(input[i]==(19051+offset0))
{
	vR[i] = 19051;
}
else
{
	vR[i] = 19050;
}

}
else
{
	if(input[i]==(19049+offset0))
{
	vR[i] = 19049;
}
else
{
	vR[i] = 19048;
}

}

}

}
else
{
	if(input[i]>(19043+offset0))
{
	if(input[i]>(19045+offset0))
{
	if(input[i]==(19047+offset0))
{
	vR[i] = 19047;
}
else
{
	vR[i] = 19046;
}

}
else
{
	if(input[i]==(19045+offset0))
{
	vR[i] = 19045;
}
else
{
	vR[i] = 19044;
}

}

}
else
{
	if(input[i]>(19041+offset0))
{
	if(input[i]==(19043+offset0))
{
	vR[i] = 19043;
}
else
{
	vR[i] = 19042;
}

}
else
{
	if(input[i]==(19041+offset0))
{
	vR[i] = 19041;
}
else
{
	vR[i] = 19040;
}

}

}

}

}

}
else
{
	if(input[i]>(19023+offset0))
{
	if(input[i]>(19031+offset0))
{
	if(input[i]>(19035+offset0))
{
	if(input[i]>(19037+offset0))
{
	if(input[i]==(19039+offset0))
{
	vR[i] = 19039;
}
else
{
	vR[i] = 19038;
}

}
else
{
	if(input[i]==(19037+offset0))
{
	vR[i] = 19037;
}
else
{
	vR[i] = 19036;
}

}

}
else
{
	if(input[i]>(19033+offset0))
{
	if(input[i]==(19035+offset0))
{
	vR[i] = 19035;
}
else
{
	vR[i] = 19034;
}

}
else
{
	if(input[i]==(19033+offset0))
{
	vR[i] = 19033;
}
else
{
	vR[i] = 19032;
}

}

}

}
else
{
	if(input[i]>(19027+offset0))
{
	if(input[i]>(19029+offset0))
{
	if(input[i]==(19031+offset0))
{
	vR[i] = 19031;
}
else
{
	vR[i] = 19030;
}

}
else
{
	if(input[i]==(19029+offset0))
{
	vR[i] = 19029;
}
else
{
	vR[i] = 19028;
}

}

}
else
{
	if(input[i]>(19025+offset0))
{
	if(input[i]==(19027+offset0))
{
	vR[i] = 19027;
}
else
{
	vR[i] = 19026;
}

}
else
{
	if(input[i]==(19025+offset0))
{
	vR[i] = 19025;
}
else
{
	vR[i] = 19024;
}

}

}

}

}
else
{
	if(input[i]>(19015+offset0))
{
	if(input[i]>(19019+offset0))
{
	if(input[i]>(19021+offset0))
{
	if(input[i]==(19023+offset0))
{
	vR[i] = 19023;
}
else
{
	vR[i] = 19022;
}

}
else
{
	if(input[i]==(19021+offset0))
{
	vR[i] = 19021;
}
else
{
	vR[i] = 19020;
}

}

}
else
{
	if(input[i]>(19017+offset0))
{
	if(input[i]==(19019+offset0))
{
	vR[i] = 19019;
}
else
{
	vR[i] = 19018;
}

}
else
{
	if(input[i]==(19017+offset0))
{
	vR[i] = 19017;
}
else
{
	vR[i] = 19016;
}

}

}

}
else
{
	if(input[i]>(19011+offset0))
{
	if(input[i]>(19013+offset0))
{
	if(input[i]==(19015+offset0))
{
	vR[i] = 19015;
}
else
{
	vR[i] = 19014;
}

}
else
{
	if(input[i]==(19013+offset0))
{
	vR[i] = 19013;
}
else
{
	vR[i] = 19012;
}

}

}
else
{
	if(input[i]>(19009+offset0))
{
	if(input[i]==(19011+offset0))
{
	vR[i] = 19011;
}
else
{
	vR[i] = 19010;
}

}
else
{
	if(input[i]==(19009+offset0))
{
	vR[i] = 19009;
}
else
{
	vR[i] = 19008;
}

}

}

}

}

}

}
else
{
	if(input[i]>(18975+offset0))
{
	if(input[i]>(18991+offset0))
{
	if(input[i]>(18999+offset0))
{
	if(input[i]>(19003+offset0))
{
	if(input[i]>(19005+offset0))
{
	if(input[i]==(19007+offset0))
{
	vR[i] = 19007;
}
else
{
	vR[i] = 19006;
}

}
else
{
	if(input[i]==(19005+offset0))
{
	vR[i] = 19005;
}
else
{
	vR[i] = 19004;
}

}

}
else
{
	if(input[i]>(19001+offset0))
{
	if(input[i]==(19003+offset0))
{
	vR[i] = 19003;
}
else
{
	vR[i] = 19002;
}

}
else
{
	if(input[i]==(19001+offset0))
{
	vR[i] = 19001;
}
else
{
	vR[i] = 19000;
}

}

}

}
else
{
	if(input[i]>(18995+offset0))
{
	if(input[i]>(18997+offset0))
{
	if(input[i]==(18999+offset0))
{
	vR[i] = 18999;
}
else
{
	vR[i] = 18998;
}

}
else
{
	if(input[i]==(18997+offset0))
{
	vR[i] = 18997;
}
else
{
	vR[i] = 18996;
}

}

}
else
{
	if(input[i]>(18993+offset0))
{
	if(input[i]==(18995+offset0))
{
	vR[i] = 18995;
}
else
{
	vR[i] = 18994;
}

}
else
{
	if(input[i]==(18993+offset0))
{
	vR[i] = 18993;
}
else
{
	vR[i] = 18992;
}

}

}

}

}
else
{
	if(input[i]>(18983+offset0))
{
	if(input[i]>(18987+offset0))
{
	if(input[i]>(18989+offset0))
{
	if(input[i]==(18991+offset0))
{
	vR[i] = 18991;
}
else
{
	vR[i] = 18990;
}

}
else
{
	if(input[i]==(18989+offset0))
{
	vR[i] = 18989;
}
else
{
	vR[i] = 18988;
}

}

}
else
{
	if(input[i]>(18985+offset0))
{
	if(input[i]==(18987+offset0))
{
	vR[i] = 18987;
}
else
{
	vR[i] = 18986;
}

}
else
{
	if(input[i]==(18985+offset0))
{
	vR[i] = 18985;
}
else
{
	vR[i] = 18984;
}

}

}

}
else
{
	if(input[i]>(18979+offset0))
{
	if(input[i]>(18981+offset0))
{
	if(input[i]==(18983+offset0))
{
	vR[i] = 18983;
}
else
{
	vR[i] = 18982;
}

}
else
{
	if(input[i]==(18981+offset0))
{
	vR[i] = 18981;
}
else
{
	vR[i] = 18980;
}

}

}
else
{
	if(input[i]>(18977+offset0))
{
	if(input[i]==(18979+offset0))
{
	vR[i] = 18979;
}
else
{
	vR[i] = 18978;
}

}
else
{
	if(input[i]==(18977+offset0))
{
	vR[i] = 18977;
}
else
{
	vR[i] = 18976;
}

}

}

}

}

}
else
{
	if(input[i]>(18959+offset0))
{
	if(input[i]>(18967+offset0))
{
	if(input[i]>(18971+offset0))
{
	if(input[i]>(18973+offset0))
{
	if(input[i]==(18975+offset0))
{
	vR[i] = 18975;
}
else
{
	vR[i] = 18974;
}

}
else
{
	if(input[i]==(18973+offset0))
{
	vR[i] = 18973;
}
else
{
	vR[i] = 18972;
}

}

}
else
{
	if(input[i]>(18969+offset0))
{
	if(input[i]==(18971+offset0))
{
	vR[i] = 18971;
}
else
{
	vR[i] = 18970;
}

}
else
{
	if(input[i]==(18969+offset0))
{
	vR[i] = 18969;
}
else
{
	vR[i] = 18968;
}

}

}

}
else
{
	if(input[i]>(18963+offset0))
{
	if(input[i]>(18965+offset0))
{
	if(input[i]==(18967+offset0))
{
	vR[i] = 18967;
}
else
{
	vR[i] = 18966;
}

}
else
{
	if(input[i]==(18965+offset0))
{
	vR[i] = 18965;
}
else
{
	vR[i] = 18964;
}

}

}
else
{
	if(input[i]>(18961+offset0))
{
	if(input[i]==(18963+offset0))
{
	vR[i] = 18963;
}
else
{
	vR[i] = 18962;
}

}
else
{
	if(input[i]==(18961+offset0))
{
	vR[i] = 18961;
}
else
{
	vR[i] = 18960;
}

}

}

}

}
else
{
	if(input[i]>(18951+offset0))
{
	if(input[i]>(18955+offset0))
{
	if(input[i]>(18957+offset0))
{
	if(input[i]==(18959+offset0))
{
	vR[i] = 18959;
}
else
{
	vR[i] = 18958;
}

}
else
{
	if(input[i]==(18957+offset0))
{
	vR[i] = 18957;
}
else
{
	vR[i] = 18956;
}

}

}
else
{
	if(input[i]>(18953+offset0))
{
	if(input[i]==(18955+offset0))
{
	vR[i] = 18955;
}
else
{
	vR[i] = 18954;
}

}
else
{
	if(input[i]==(18953+offset0))
{
	vR[i] = 18953;
}
else
{
	vR[i] = 18952;
}

}

}

}
else
{
	if(input[i]>(18947+offset0))
{
	if(input[i]>(18949+offset0))
{
	if(input[i]==(18951+offset0))
{
	vR[i] = 18951;
}
else
{
	vR[i] = 18950;
}

}
else
{
	if(input[i]==(18949+offset0))
{
	vR[i] = 18949;
}
else
{
	vR[i] = 18948;
}

}

}
else
{
	if(input[i]>(18945+offset0))
{
	if(input[i]==(18947+offset0))
{
	vR[i] = 18947;
}
else
{
	vR[i] = 18946;
}

}
else
{
	if(input[i]==(18945+offset0))
{
	vR[i] = 18945;
}
else
{
	vR[i] = 18944;
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
	if(input[i]>(18687+offset0))
{
	if(input[i]>(18815+offset0))
{
	if(input[i]>(18879+offset0))
{
	if(input[i]>(18911+offset0))
{
	if(input[i]>(18927+offset0))
{
	if(input[i]>(18935+offset0))
{
	if(input[i]>(18939+offset0))
{
	if(input[i]>(18941+offset0))
{
	if(input[i]==(18943+offset0))
{
	vR[i] = 18943;
}
else
{
	vR[i] = 18942;
}

}
else
{
	if(input[i]==(18941+offset0))
{
	vR[i] = 18941;
}
else
{
	vR[i] = 18940;
}

}

}
else
{
	if(input[i]>(18937+offset0))
{
	if(input[i]==(18939+offset0))
{
	vR[i] = 18939;
}
else
{
	vR[i] = 18938;
}

}
else
{
	if(input[i]==(18937+offset0))
{
	vR[i] = 18937;
}
else
{
	vR[i] = 18936;
}

}

}

}
else
{
	if(input[i]>(18931+offset0))
{
	if(input[i]>(18933+offset0))
{
	if(input[i]==(18935+offset0))
{
	vR[i] = 18935;
}
else
{
	vR[i] = 18934;
}

}
else
{
	if(input[i]==(18933+offset0))
{
	vR[i] = 18933;
}
else
{
	vR[i] = 18932;
}

}

}
else
{
	if(input[i]>(18929+offset0))
{
	if(input[i]==(18931+offset0))
{
	vR[i] = 18931;
}
else
{
	vR[i] = 18930;
}

}
else
{
	if(input[i]==(18929+offset0))
{
	vR[i] = 18929;
}
else
{
	vR[i] = 18928;
}

}

}

}

}
else
{
	if(input[i]>(18919+offset0))
{
	if(input[i]>(18923+offset0))
{
	if(input[i]>(18925+offset0))
{
	if(input[i]==(18927+offset0))
{
	vR[i] = 18927;
}
else
{
	vR[i] = 18926;
}

}
else
{
	if(input[i]==(18925+offset0))
{
	vR[i] = 18925;
}
else
{
	vR[i] = 18924;
}

}

}
else
{
	if(input[i]>(18921+offset0))
{
	if(input[i]==(18923+offset0))
{
	vR[i] = 18923;
}
else
{
	vR[i] = 18922;
}

}
else
{
	if(input[i]==(18921+offset0))
{
	vR[i] = 18921;
}
else
{
	vR[i] = 18920;
}

}

}

}
else
{
	if(input[i]>(18915+offset0))
{
	if(input[i]>(18917+offset0))
{
	if(input[i]==(18919+offset0))
{
	vR[i] = 18919;
}
else
{
	vR[i] = 18918;
}

}
else
{
	if(input[i]==(18917+offset0))
{
	vR[i] = 18917;
}
else
{
	vR[i] = 18916;
}

}

}
else
{
	if(input[i]>(18913+offset0))
{
	if(input[i]==(18915+offset0))
{
	vR[i] = 18915;
}
else
{
	vR[i] = 18914;
}

}
else
{
	if(input[i]==(18913+offset0))
{
	vR[i] = 18913;
}
else
{
	vR[i] = 18912;
}

}

}

}

}

}
else
{
	if(input[i]>(18895+offset0))
{
	if(input[i]>(18903+offset0))
{
	if(input[i]>(18907+offset0))
{
	if(input[i]>(18909+offset0))
{
	if(input[i]==(18911+offset0))
{
	vR[i] = 18911;
}
else
{
	vR[i] = 18910;
}

}
else
{
	if(input[i]==(18909+offset0))
{
	vR[i] = 18909;
}
else
{
	vR[i] = 18908;
}

}

}
else
{
	if(input[i]>(18905+offset0))
{
	if(input[i]==(18907+offset0))
{
	vR[i] = 18907;
}
else
{
	vR[i] = 18906;
}

}
else
{
	if(input[i]==(18905+offset0))
{
	vR[i] = 18905;
}
else
{
	vR[i] = 18904;
}

}

}

}
else
{
	if(input[i]>(18899+offset0))
{
	if(input[i]>(18901+offset0))
{
	if(input[i]==(18903+offset0))
{
	vR[i] = 18903;
}
else
{
	vR[i] = 18902;
}

}
else
{
	if(input[i]==(18901+offset0))
{
	vR[i] = 18901;
}
else
{
	vR[i] = 18900;
}

}

}
else
{
	if(input[i]>(18897+offset0))
{
	if(input[i]==(18899+offset0))
{
	vR[i] = 18899;
}
else
{
	vR[i] = 18898;
}

}
else
{
	if(input[i]==(18897+offset0))
{
	vR[i] = 18897;
}
else
{
	vR[i] = 18896;
}

}

}

}

}
else
{
	if(input[i]>(18887+offset0))
{
	if(input[i]>(18891+offset0))
{
	if(input[i]>(18893+offset0))
{
	if(input[i]==(18895+offset0))
{
	vR[i] = 18895;
}
else
{
	vR[i] = 18894;
}

}
else
{
	if(input[i]==(18893+offset0))
{
	vR[i] = 18893;
}
else
{
	vR[i] = 18892;
}

}

}
else
{
	if(input[i]>(18889+offset0))
{
	if(input[i]==(18891+offset0))
{
	vR[i] = 18891;
}
else
{
	vR[i] = 18890;
}

}
else
{
	if(input[i]==(18889+offset0))
{
	vR[i] = 18889;
}
else
{
	vR[i] = 18888;
}

}

}

}
else
{
	if(input[i]>(18883+offset0))
{
	if(input[i]>(18885+offset0))
{
	if(input[i]==(18887+offset0))
{
	vR[i] = 18887;
}
else
{
	vR[i] = 18886;
}

}
else
{
	if(input[i]==(18885+offset0))
{
	vR[i] = 18885;
}
else
{
	vR[i] = 18884;
}

}

}
else
{
	if(input[i]>(18881+offset0))
{
	if(input[i]==(18883+offset0))
{
	vR[i] = 18883;
}
else
{
	vR[i] = 18882;
}

}
else
{
	if(input[i]==(18881+offset0))
{
	vR[i] = 18881;
}
else
{
	vR[i] = 18880;
}

}

}

}

}

}

}
else
{
	if(input[i]>(18847+offset0))
{
	if(input[i]>(18863+offset0))
{
	if(input[i]>(18871+offset0))
{
	if(input[i]>(18875+offset0))
{
	if(input[i]>(18877+offset0))
{
	if(input[i]==(18879+offset0))
{
	vR[i] = 18879;
}
else
{
	vR[i] = 18878;
}

}
else
{
	if(input[i]==(18877+offset0))
{
	vR[i] = 18877;
}
else
{
	vR[i] = 18876;
}

}

}
else
{
	if(input[i]>(18873+offset0))
{
	if(input[i]==(18875+offset0))
{
	vR[i] = 18875;
}
else
{
	vR[i] = 18874;
}

}
else
{
	if(input[i]==(18873+offset0))
{
	vR[i] = 18873;
}
else
{
	vR[i] = 18872;
}

}

}

}
else
{
	if(input[i]>(18867+offset0))
{
	if(input[i]>(18869+offset0))
{
	if(input[i]==(18871+offset0))
{
	vR[i] = 18871;
}
else
{
	vR[i] = 18870;
}

}
else
{
	if(input[i]==(18869+offset0))
{
	vR[i] = 18869;
}
else
{
	vR[i] = 18868;
}

}

}
else
{
	if(input[i]>(18865+offset0))
{
	if(input[i]==(18867+offset0))
{
	vR[i] = 18867;
}
else
{
	vR[i] = 18866;
}

}
else
{
	if(input[i]==(18865+offset0))
{
	vR[i] = 18865;
}
else
{
	vR[i] = 18864;
}

}

}

}

}
else
{
	if(input[i]>(18855+offset0))
{
	if(input[i]>(18859+offset0))
{
	if(input[i]>(18861+offset0))
{
	if(input[i]==(18863+offset0))
{
	vR[i] = 18863;
}
else
{
	vR[i] = 18862;
}

}
else
{
	if(input[i]==(18861+offset0))
{
	vR[i] = 18861;
}
else
{
	vR[i] = 18860;
}

}

}
else
{
	if(input[i]>(18857+offset0))
{
	if(input[i]==(18859+offset0))
{
	vR[i] = 18859;
}
else
{
	vR[i] = 18858;
}

}
else
{
	if(input[i]==(18857+offset0))
{
	vR[i] = 18857;
}
else
{
	vR[i] = 18856;
}

}

}

}
else
{
	if(input[i]>(18851+offset0))
{
	if(input[i]>(18853+offset0))
{
	if(input[i]==(18855+offset0))
{
	vR[i] = 18855;
}
else
{
	vR[i] = 18854;
}

}
else
{
	if(input[i]==(18853+offset0))
{
	vR[i] = 18853;
}
else
{
	vR[i] = 18852;
}

}

}
else
{
	if(input[i]>(18849+offset0))
{
	if(input[i]==(18851+offset0))
{
	vR[i] = 18851;
}
else
{
	vR[i] = 18850;
}

}
else
{
	if(input[i]==(18849+offset0))
{
	vR[i] = 18849;
}
else
{
	vR[i] = 18848;
}

}

}

}

}

}
else
{
	if(input[i]>(18831+offset0))
{
	if(input[i]>(18839+offset0))
{
	if(input[i]>(18843+offset0))
{
	if(input[i]>(18845+offset0))
{
	if(input[i]==(18847+offset0))
{
	vR[i] = 18847;
}
else
{
	vR[i] = 18846;
}

}
else
{
	if(input[i]==(18845+offset0))
{
	vR[i] = 18845;
}
else
{
	vR[i] = 18844;
}

}

}
else
{
	if(input[i]>(18841+offset0))
{
	if(input[i]==(18843+offset0))
{
	vR[i] = 18843;
}
else
{
	vR[i] = 18842;
}

}
else
{
	if(input[i]==(18841+offset0))
{
	vR[i] = 18841;
}
else
{
	vR[i] = 18840;
}

}

}

}
else
{
	if(input[i]>(18835+offset0))
{
	if(input[i]>(18837+offset0))
{
	if(input[i]==(18839+offset0))
{
	vR[i] = 18839;
}
else
{
	vR[i] = 18838;
}

}
else
{
	if(input[i]==(18837+offset0))
{
	vR[i] = 18837;
}
else
{
	vR[i] = 18836;
}

}

}
else
{
	if(input[i]>(18833+offset0))
{
	if(input[i]==(18835+offset0))
{
	vR[i] = 18835;
}
else
{
	vR[i] = 18834;
}

}
else
{
	if(input[i]==(18833+offset0))
{
	vR[i] = 18833;
}
else
{
	vR[i] = 18832;
}

}

}

}

}
else
{
	if(input[i]>(18823+offset0))
{
	if(input[i]>(18827+offset0))
{
	if(input[i]>(18829+offset0))
{
	if(input[i]==(18831+offset0))
{
	vR[i] = 18831;
}
else
{
	vR[i] = 18830;
}

}
else
{
	if(input[i]==(18829+offset0))
{
	vR[i] = 18829;
}
else
{
	vR[i] = 18828;
}

}

}
else
{
	if(input[i]>(18825+offset0))
{
	if(input[i]==(18827+offset0))
{
	vR[i] = 18827;
}
else
{
	vR[i] = 18826;
}

}
else
{
	if(input[i]==(18825+offset0))
{
	vR[i] = 18825;
}
else
{
	vR[i] = 18824;
}

}

}

}
else
{
	if(input[i]>(18819+offset0))
{
	if(input[i]>(18821+offset0))
{
	if(input[i]==(18823+offset0))
{
	vR[i] = 18823;
}
else
{
	vR[i] = 18822;
}

}
else
{
	if(input[i]==(18821+offset0))
{
	vR[i] = 18821;
}
else
{
	vR[i] = 18820;
}

}

}
else
{
	if(input[i]>(18817+offset0))
{
	if(input[i]==(18819+offset0))
{
	vR[i] = 18819;
}
else
{
	vR[i] = 18818;
}

}
else
{
	if(input[i]==(18817+offset0))
{
	vR[i] = 18817;
}
else
{
	vR[i] = 18816;
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
	if(input[i]>(18751+offset0))
{
	if(input[i]>(18783+offset0))
{
	if(input[i]>(18799+offset0))
{
	if(input[i]>(18807+offset0))
{
	if(input[i]>(18811+offset0))
{
	if(input[i]>(18813+offset0))
{
	if(input[i]==(18815+offset0))
{
	vR[i] = 18815;
}
else
{
	vR[i] = 18814;
}

}
else
{
	if(input[i]==(18813+offset0))
{
	vR[i] = 18813;
}
else
{
	vR[i] = 18812;
}

}

}
else
{
	if(input[i]>(18809+offset0))
{
	if(input[i]==(18811+offset0))
{
	vR[i] = 18811;
}
else
{
	vR[i] = 18810;
}

}
else
{
	if(input[i]==(18809+offset0))
{
	vR[i] = 18809;
}
else
{
	vR[i] = 18808;
}

}

}

}
else
{
	if(input[i]>(18803+offset0))
{
	if(input[i]>(18805+offset0))
{
	if(input[i]==(18807+offset0))
{
	vR[i] = 18807;
}
else
{
	vR[i] = 18806;
}

}
else
{
	if(input[i]==(18805+offset0))
{
	vR[i] = 18805;
}
else
{
	vR[i] = 18804;
}

}

}
else
{
	if(input[i]>(18801+offset0))
{
	if(input[i]==(18803+offset0))
{
	vR[i] = 18803;
}
else
{
	vR[i] = 18802;
}

}
else
{
	if(input[i]==(18801+offset0))
{
	vR[i] = 18801;
}
else
{
	vR[i] = 18800;
}

}

}

}

}
else
{
	if(input[i]>(18791+offset0))
{
	if(input[i]>(18795+offset0))
{
	if(input[i]>(18797+offset0))
{
	if(input[i]==(18799+offset0))
{
	vR[i] = 18799;
}
else
{
	vR[i] = 18798;
}

}
else
{
	if(input[i]==(18797+offset0))
{
	vR[i] = 18797;
}
else
{
	vR[i] = 18796;
}

}

}
else
{
	if(input[i]>(18793+offset0))
{
	if(input[i]==(18795+offset0))
{
	vR[i] = 18795;
}
else
{
	vR[i] = 18794;
}

}
else
{
	if(input[i]==(18793+offset0))
{
	vR[i] = 18793;
}
else
{
	vR[i] = 18792;
}

}

}

}
else
{
	if(input[i]>(18787+offset0))
{
	if(input[i]>(18789+offset0))
{
	if(input[i]==(18791+offset0))
{
	vR[i] = 18791;
}
else
{
	vR[i] = 18790;
}

}
else
{
	if(input[i]==(18789+offset0))
{
	vR[i] = 18789;
}
else
{
	vR[i] = 18788;
}

}

}
else
{
	if(input[i]>(18785+offset0))
{
	if(input[i]==(18787+offset0))
{
	vR[i] = 18787;
}
else
{
	vR[i] = 18786;
}

}
else
{
	if(input[i]==(18785+offset0))
{
	vR[i] = 18785;
}
else
{
	vR[i] = 18784;
}

}

}

}

}

}
else
{
	if(input[i]>(18767+offset0))
{
	if(input[i]>(18775+offset0))
{
	if(input[i]>(18779+offset0))
{
	if(input[i]>(18781+offset0))
{
	if(input[i]==(18783+offset0))
{
	vR[i] = 18783;
}
else
{
	vR[i] = 18782;
}

}
else
{
	if(input[i]==(18781+offset0))
{
	vR[i] = 18781;
}
else
{
	vR[i] = 18780;
}

}

}
else
{
	if(input[i]>(18777+offset0))
{
	if(input[i]==(18779+offset0))
{
	vR[i] = 18779;
}
else
{
	vR[i] = 18778;
}

}
else
{
	if(input[i]==(18777+offset0))
{
	vR[i] = 18777;
}
else
{
	vR[i] = 18776;
}

}

}

}
else
{
	if(input[i]>(18771+offset0))
{
	if(input[i]>(18773+offset0))
{
	if(input[i]==(18775+offset0))
{
	vR[i] = 18775;
}
else
{
	vR[i] = 18774;
}

}
else
{
	if(input[i]==(18773+offset0))
{
	vR[i] = 18773;
}
else
{
	vR[i] = 18772;
}

}

}
else
{
	if(input[i]>(18769+offset0))
{
	if(input[i]==(18771+offset0))
{
	vR[i] = 18771;
}
else
{
	vR[i] = 18770;
}

}
else
{
	if(input[i]==(18769+offset0))
{
	vR[i] = 18769;
}
else
{
	vR[i] = 18768;
}

}

}

}

}
else
{
	if(input[i]>(18759+offset0))
{
	if(input[i]>(18763+offset0))
{
	if(input[i]>(18765+offset0))
{
	if(input[i]==(18767+offset0))
{
	vR[i] = 18767;
}
else
{
	vR[i] = 18766;
}

}
else
{
	if(input[i]==(18765+offset0))
{
	vR[i] = 18765;
}
else
{
	vR[i] = 18764;
}

}

}
else
{
	if(input[i]>(18761+offset0))
{
	if(input[i]==(18763+offset0))
{
	vR[i] = 18763;
}
else
{
	vR[i] = 18762;
}

}
else
{
	if(input[i]==(18761+offset0))
{
	vR[i] = 18761;
}
else
{
	vR[i] = 18760;
}

}

}

}
else
{
	if(input[i]>(18755+offset0))
{
	if(input[i]>(18757+offset0))
{
	if(input[i]==(18759+offset0))
{
	vR[i] = 18759;
}
else
{
	vR[i] = 18758;
}

}
else
{
	if(input[i]==(18757+offset0))
{
	vR[i] = 18757;
}
else
{
	vR[i] = 18756;
}

}

}
else
{
	if(input[i]>(18753+offset0))
{
	if(input[i]==(18755+offset0))
{
	vR[i] = 18755;
}
else
{
	vR[i] = 18754;
}

}
else
{
	if(input[i]==(18753+offset0))
{
	vR[i] = 18753;
}
else
{
	vR[i] = 18752;
}

}

}

}

}

}

}
else
{
	if(input[i]>(18719+offset0))
{
	if(input[i]>(18735+offset0))
{
	if(input[i]>(18743+offset0))
{
	if(input[i]>(18747+offset0))
{
	if(input[i]>(18749+offset0))
{
	if(input[i]==(18751+offset0))
{
	vR[i] = 18751;
}
else
{
	vR[i] = 18750;
}

}
else
{
	if(input[i]==(18749+offset0))
{
	vR[i] = 18749;
}
else
{
	vR[i] = 18748;
}

}

}
else
{
	if(input[i]>(18745+offset0))
{
	if(input[i]==(18747+offset0))
{
	vR[i] = 18747;
}
else
{
	vR[i] = 18746;
}

}
else
{
	if(input[i]==(18745+offset0))
{
	vR[i] = 18745;
}
else
{
	vR[i] = 18744;
}

}

}

}
else
{
	if(input[i]>(18739+offset0))
{
	if(input[i]>(18741+offset0))
{
	if(input[i]==(18743+offset0))
{
	vR[i] = 18743;
}
else
{
	vR[i] = 18742;
}

}
else
{
	if(input[i]==(18741+offset0))
{
	vR[i] = 18741;
}
else
{
	vR[i] = 18740;
}

}

}
else
{
	if(input[i]>(18737+offset0))
{
	if(input[i]==(18739+offset0))
{
	vR[i] = 18739;
}
else
{
	vR[i] = 18738;
}

}
else
{
	if(input[i]==(18737+offset0))
{
	vR[i] = 18737;
}
else
{
	vR[i] = 18736;
}

}

}

}

}
else
{
	if(input[i]>(18727+offset0))
{
	if(input[i]>(18731+offset0))
{
	if(input[i]>(18733+offset0))
{
	if(input[i]==(18735+offset0))
{
	vR[i] = 18735;
}
else
{
	vR[i] = 18734;
}

}
else
{
	if(input[i]==(18733+offset0))
{
	vR[i] = 18733;
}
else
{
	vR[i] = 18732;
}

}

}
else
{
	if(input[i]>(18729+offset0))
{
	if(input[i]==(18731+offset0))
{
	vR[i] = 18731;
}
else
{
	vR[i] = 18730;
}

}
else
{
	if(input[i]==(18729+offset0))
{
	vR[i] = 18729;
}
else
{
	vR[i] = 18728;
}

}

}

}
else
{
	if(input[i]>(18723+offset0))
{
	if(input[i]>(18725+offset0))
{
	if(input[i]==(18727+offset0))
{
	vR[i] = 18727;
}
else
{
	vR[i] = 18726;
}

}
else
{
	if(input[i]==(18725+offset0))
{
	vR[i] = 18725;
}
else
{
	vR[i] = 18724;
}

}

}
else
{
	if(input[i]>(18721+offset0))
{
	if(input[i]==(18723+offset0))
{
	vR[i] = 18723;
}
else
{
	vR[i] = 18722;
}

}
else
{
	if(input[i]==(18721+offset0))
{
	vR[i] = 18721;
}
else
{
	vR[i] = 18720;
}

}

}

}

}

}
else
{
	if(input[i]>(18703+offset0))
{
	if(input[i]>(18711+offset0))
{
	if(input[i]>(18715+offset0))
{
	if(input[i]>(18717+offset0))
{
	if(input[i]==(18719+offset0))
{
	vR[i] = 18719;
}
else
{
	vR[i] = 18718;
}

}
else
{
	if(input[i]==(18717+offset0))
{
	vR[i] = 18717;
}
else
{
	vR[i] = 18716;
}

}

}
else
{
	if(input[i]>(18713+offset0))
{
	if(input[i]==(18715+offset0))
{
	vR[i] = 18715;
}
else
{
	vR[i] = 18714;
}

}
else
{
	if(input[i]==(18713+offset0))
{
	vR[i] = 18713;
}
else
{
	vR[i] = 18712;
}

}

}

}
else
{
	if(input[i]>(18707+offset0))
{
	if(input[i]>(18709+offset0))
{
	if(input[i]==(18711+offset0))
{
	vR[i] = 18711;
}
else
{
	vR[i] = 18710;
}

}
else
{
	if(input[i]==(18709+offset0))
{
	vR[i] = 18709;
}
else
{
	vR[i] = 18708;
}

}

}
else
{
	if(input[i]>(18705+offset0))
{
	if(input[i]==(18707+offset0))
{
	vR[i] = 18707;
}
else
{
	vR[i] = 18706;
}

}
else
{
	if(input[i]==(18705+offset0))
{
	vR[i] = 18705;
}
else
{
	vR[i] = 18704;
}

}

}

}

}
else
{
	if(input[i]>(18695+offset0))
{
	if(input[i]>(18699+offset0))
{
	if(input[i]>(18701+offset0))
{
	if(input[i]==(18703+offset0))
{
	vR[i] = 18703;
}
else
{
	vR[i] = 18702;
}

}
else
{
	if(input[i]==(18701+offset0))
{
	vR[i] = 18701;
}
else
{
	vR[i] = 18700;
}

}

}
else
{
	if(input[i]>(18697+offset0))
{
	if(input[i]==(18699+offset0))
{
	vR[i] = 18699;
}
else
{
	vR[i] = 18698;
}

}
else
{
	if(input[i]==(18697+offset0))
{
	vR[i] = 18697;
}
else
{
	vR[i] = 18696;
}

}

}

}
else
{
	if(input[i]>(18691+offset0))
{
	if(input[i]>(18693+offset0))
{
	if(input[i]==(18695+offset0))
{
	vR[i] = 18695;
}
else
{
	vR[i] = 18694;
}

}
else
{
	if(input[i]==(18693+offset0))
{
	vR[i] = 18693;
}
else
{
	vR[i] = 18692;
}

}

}
else
{
	if(input[i]>(18689+offset0))
{
	if(input[i]==(18691+offset0))
{
	vR[i] = 18691;
}
else
{
	vR[i] = 18690;
}

}
else
{
	if(input[i]==(18689+offset0))
{
	vR[i] = 18689;
}
else
{
	vR[i] = 18688;
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
	if(input[i]>(18559+offset0))
{
	if(input[i]>(18623+offset0))
{
	if(input[i]>(18655+offset0))
{
	if(input[i]>(18671+offset0))
{
	if(input[i]>(18679+offset0))
{
	if(input[i]>(18683+offset0))
{
	if(input[i]>(18685+offset0))
{
	if(input[i]==(18687+offset0))
{
	vR[i] = 18687;
}
else
{
	vR[i] = 18686;
}

}
else
{
	if(input[i]==(18685+offset0))
{
	vR[i] = 18685;
}
else
{
	vR[i] = 18684;
}

}

}
else
{
	if(input[i]>(18681+offset0))
{
	if(input[i]==(18683+offset0))
{
	vR[i] = 18683;
}
else
{
	vR[i] = 18682;
}

}
else
{
	if(input[i]==(18681+offset0))
{
	vR[i] = 18681;
}
else
{
	vR[i] = 18680;
}

}

}

}
else
{
	if(input[i]>(18675+offset0))
{
	if(input[i]>(18677+offset0))
{
	if(input[i]==(18679+offset0))
{
	vR[i] = 18679;
}
else
{
	vR[i] = 18678;
}

}
else
{
	if(input[i]==(18677+offset0))
{
	vR[i] = 18677;
}
else
{
	vR[i] = 18676;
}

}

}
else
{
	if(input[i]>(18673+offset0))
{
	if(input[i]==(18675+offset0))
{
	vR[i] = 18675;
}
else
{
	vR[i] = 18674;
}

}
else
{
	if(input[i]==(18673+offset0))
{
	vR[i] = 18673;
}
else
{
	vR[i] = 18672;
}

}

}

}

}
else
{
	if(input[i]>(18663+offset0))
{
	if(input[i]>(18667+offset0))
{
	if(input[i]>(18669+offset0))
{
	if(input[i]==(18671+offset0))
{
	vR[i] = 18671;
}
else
{
	vR[i] = 18670;
}

}
else
{
	if(input[i]==(18669+offset0))
{
	vR[i] = 18669;
}
else
{
	vR[i] = 18668;
}

}

}
else
{
	if(input[i]>(18665+offset0))
{
	if(input[i]==(18667+offset0))
{
	vR[i] = 18667;
}
else
{
	vR[i] = 18666;
}

}
else
{
	if(input[i]==(18665+offset0))
{
	vR[i] = 18665;
}
else
{
	vR[i] = 18664;
}

}

}

}
else
{
	if(input[i]>(18659+offset0))
{
	if(input[i]>(18661+offset0))
{
	if(input[i]==(18663+offset0))
{
	vR[i] = 18663;
}
else
{
	vR[i] = 18662;
}

}
else
{
	if(input[i]==(18661+offset0))
{
	vR[i] = 18661;
}
else
{
	vR[i] = 18660;
}

}

}
else
{
	if(input[i]>(18657+offset0))
{
	if(input[i]==(18659+offset0))
{
	vR[i] = 18659;
}
else
{
	vR[i] = 18658;
}

}
else
{
	if(input[i]==(18657+offset0))
{
	vR[i] = 18657;
}
else
{
	vR[i] = 18656;
}

}

}

}

}

}
else
{
	if(input[i]>(18639+offset0))
{
	if(input[i]>(18647+offset0))
{
	if(input[i]>(18651+offset0))
{
	if(input[i]>(18653+offset0))
{
	if(input[i]==(18655+offset0))
{
	vR[i] = 18655;
}
else
{
	vR[i] = 18654;
}

}
else
{
	if(input[i]==(18653+offset0))
{
	vR[i] = 18653;
}
else
{
	vR[i] = 18652;
}

}

}
else
{
	if(input[i]>(18649+offset0))
{
	if(input[i]==(18651+offset0))
{
	vR[i] = 18651;
}
else
{
	vR[i] = 18650;
}

}
else
{
	if(input[i]==(18649+offset0))
{
	vR[i] = 18649;
}
else
{
	vR[i] = 18648;
}

}

}

}
else
{
	if(input[i]>(18643+offset0))
{
	if(input[i]>(18645+offset0))
{
	if(input[i]==(18647+offset0))
{
	vR[i] = 18647;
}
else
{
	vR[i] = 18646;
}

}
else
{
	if(input[i]==(18645+offset0))
{
	vR[i] = 18645;
}
else
{
	vR[i] = 18644;
}

}

}
else
{
	if(input[i]>(18641+offset0))
{
	if(input[i]==(18643+offset0))
{
	vR[i] = 18643;
}
else
{
	vR[i] = 18642;
}

}
else
{
	if(input[i]==(18641+offset0))
{
	vR[i] = 18641;
}
else
{
	vR[i] = 18640;
}

}

}

}

}
else
{
	if(input[i]>(18631+offset0))
{
	if(input[i]>(18635+offset0))
{
	if(input[i]>(18637+offset0))
{
	if(input[i]==(18639+offset0))
{
	vR[i] = 18639;
}
else
{
	vR[i] = 18638;
}

}
else
{
	if(input[i]==(18637+offset0))
{
	vR[i] = 18637;
}
else
{
	vR[i] = 18636;
}

}

}
else
{
	if(input[i]>(18633+offset0))
{
	if(input[i]==(18635+offset0))
{
	vR[i] = 18635;
}
else
{
	vR[i] = 18634;
}

}
else
{
	if(input[i]==(18633+offset0))
{
	vR[i] = 18633;
}
else
{
	vR[i] = 18632;
}

}

}

}
else
{
	if(input[i]>(18627+offset0))
{
	if(input[i]>(18629+offset0))
{
	if(input[i]==(18631+offset0))
{
	vR[i] = 18631;
}
else
{
	vR[i] = 18630;
}

}
else
{
	if(input[i]==(18629+offset0))
{
	vR[i] = 18629;
}
else
{
	vR[i] = 18628;
}

}

}
else
{
	if(input[i]>(18625+offset0))
{
	if(input[i]==(18627+offset0))
{
	vR[i] = 18627;
}
else
{
	vR[i] = 18626;
}

}
else
{
	if(input[i]==(18625+offset0))
{
	vR[i] = 18625;
}
else
{
	vR[i] = 18624;
}

}

}

}

}

}

}
else
{
	if(input[i]>(18591+offset0))
{
	if(input[i]>(18607+offset0))
{
	if(input[i]>(18615+offset0))
{
	if(input[i]>(18619+offset0))
{
	if(input[i]>(18621+offset0))
{
	if(input[i]==(18623+offset0))
{
	vR[i] = 18623;
}
else
{
	vR[i] = 18622;
}

}
else
{
	if(input[i]==(18621+offset0))
{
	vR[i] = 18621;
}
else
{
	vR[i] = 18620;
}

}

}
else
{
	if(input[i]>(18617+offset0))
{
	if(input[i]==(18619+offset0))
{
	vR[i] = 18619;
}
else
{
	vR[i] = 18618;
}

}
else
{
	if(input[i]==(18617+offset0))
{
	vR[i] = 18617;
}
else
{
	vR[i] = 18616;
}

}

}

}
else
{
	if(input[i]>(18611+offset0))
{
	if(input[i]>(18613+offset0))
{
	if(input[i]==(18615+offset0))
{
	vR[i] = 18615;
}
else
{
	vR[i] = 18614;
}

}
else
{
	if(input[i]==(18613+offset0))
{
	vR[i] = 18613;
}
else
{
	vR[i] = 18612;
}

}

}
else
{
	if(input[i]>(18609+offset0))
{
	if(input[i]==(18611+offset0))
{
	vR[i] = 18611;
}
else
{
	vR[i] = 18610;
}

}
else
{
	if(input[i]==(18609+offset0))
{
	vR[i] = 18609;
}
else
{
	vR[i] = 18608;
}

}

}

}

}
else
{
	if(input[i]>(18599+offset0))
{
	if(input[i]>(18603+offset0))
{
	if(input[i]>(18605+offset0))
{
	if(input[i]==(18607+offset0))
{
	vR[i] = 18607;
}
else
{
	vR[i] = 18606;
}

}
else
{
	if(input[i]==(18605+offset0))
{
	vR[i] = 18605;
}
else
{
	vR[i] = 18604;
}

}

}
else
{
	if(input[i]>(18601+offset0))
{
	if(input[i]==(18603+offset0))
{
	vR[i] = 18603;
}
else
{
	vR[i] = 18602;
}

}
else
{
	if(input[i]==(18601+offset0))
{
	vR[i] = 18601;
}
else
{
	vR[i] = 18600;
}

}

}

}
else
{
	if(input[i]>(18595+offset0))
{
	if(input[i]>(18597+offset0))
{
	if(input[i]==(18599+offset0))
{
	vR[i] = 18599;
}
else
{
	vR[i] = 18598;
}

}
else
{
	if(input[i]==(18597+offset0))
{
	vR[i] = 18597;
}
else
{
	vR[i] = 18596;
}

}

}
else
{
	if(input[i]>(18593+offset0))
{
	if(input[i]==(18595+offset0))
{
	vR[i] = 18595;
}
else
{
	vR[i] = 18594;
}

}
else
{
	if(input[i]==(18593+offset0))
{
	vR[i] = 18593;
}
else
{
	vR[i] = 18592;
}

}

}

}

}

}
else
{
	if(input[i]>(18575+offset0))
{
	if(input[i]>(18583+offset0))
{
	if(input[i]>(18587+offset0))
{
	if(input[i]>(18589+offset0))
{
	if(input[i]==(18591+offset0))
{
	vR[i] = 18591;
}
else
{
	vR[i] = 18590;
}

}
else
{
	if(input[i]==(18589+offset0))
{
	vR[i] = 18589;
}
else
{
	vR[i] = 18588;
}

}

}
else
{
	if(input[i]>(18585+offset0))
{
	if(input[i]==(18587+offset0))
{
	vR[i] = 18587;
}
else
{
	vR[i] = 18586;
}

}
else
{
	if(input[i]==(18585+offset0))
{
	vR[i] = 18585;
}
else
{
	vR[i] = 18584;
}

}

}

}
else
{
	if(input[i]>(18579+offset0))
{
	if(input[i]>(18581+offset0))
{
	if(input[i]==(18583+offset0))
{
	vR[i] = 18583;
}
else
{
	vR[i] = 18582;
}

}
else
{
	if(input[i]==(18581+offset0))
{
	vR[i] = 18581;
}
else
{
	vR[i] = 18580;
}

}

}
else
{
	if(input[i]>(18577+offset0))
{
	if(input[i]==(18579+offset0))
{
	vR[i] = 18579;
}
else
{
	vR[i] = 18578;
}

}
else
{
	if(input[i]==(18577+offset0))
{
	vR[i] = 18577;
}
else
{
	vR[i] = 18576;
}

}

}

}

}
else
{
	if(input[i]>(18567+offset0))
{
	if(input[i]>(18571+offset0))
{
	if(input[i]>(18573+offset0))
{
	if(input[i]==(18575+offset0))
{
	vR[i] = 18575;
}
else
{
	vR[i] = 18574;
}

}
else
{
	if(input[i]==(18573+offset0))
{
	vR[i] = 18573;
}
else
{
	vR[i] = 18572;
}

}

}
else
{
	if(input[i]>(18569+offset0))
{
	if(input[i]==(18571+offset0))
{
	vR[i] = 18571;
}
else
{
	vR[i] = 18570;
}

}
else
{
	if(input[i]==(18569+offset0))
{
	vR[i] = 18569;
}
else
{
	vR[i] = 18568;
}

}

}

}
else
{
	if(input[i]>(18563+offset0))
{
	if(input[i]>(18565+offset0))
{
	if(input[i]==(18567+offset0))
{
	vR[i] = 18567;
}
else
{
	vR[i] = 18566;
}

}
else
{
	if(input[i]==(18565+offset0))
{
	vR[i] = 18565;
}
else
{
	vR[i] = 18564;
}

}

}
else
{
	if(input[i]>(18561+offset0))
{
	if(input[i]==(18563+offset0))
{
	vR[i] = 18563;
}
else
{
	vR[i] = 18562;
}

}
else
{
	if(input[i]==(18561+offset0))
{
	vR[i] = 18561;
}
else
{
	vR[i] = 18560;
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
	if(input[i]>(18495+offset0))
{
	if(input[i]>(18527+offset0))
{
	if(input[i]>(18543+offset0))
{
	if(input[i]>(18551+offset0))
{
	if(input[i]>(18555+offset0))
{
	if(input[i]>(18557+offset0))
{
	if(input[i]==(18559+offset0))
{
	vR[i] = 18559;
}
else
{
	vR[i] = 18558;
}

}
else
{
	if(input[i]==(18557+offset0))
{
	vR[i] = 18557;
}
else
{
	vR[i] = 18556;
}

}

}
else
{
	if(input[i]>(18553+offset0))
{
	if(input[i]==(18555+offset0))
{
	vR[i] = 18555;
}
else
{
	vR[i] = 18554;
}

}
else
{
	if(input[i]==(18553+offset0))
{
	vR[i] = 18553;
}
else
{
	vR[i] = 18552;
}

}

}

}
else
{
	if(input[i]>(18547+offset0))
{
	if(input[i]>(18549+offset0))
{
	if(input[i]==(18551+offset0))
{
	vR[i] = 18551;
}
else
{
	vR[i] = 18550;
}

}
else
{
	if(input[i]==(18549+offset0))
{
	vR[i] = 18549;
}
else
{
	vR[i] = 18548;
}

}

}
else
{
	if(input[i]>(18545+offset0))
{
	if(input[i]==(18547+offset0))
{
	vR[i] = 18547;
}
else
{
	vR[i] = 18546;
}

}
else
{
	if(input[i]==(18545+offset0))
{
	vR[i] = 18545;
}
else
{
	vR[i] = 18544;
}

}

}

}

}
else
{
	if(input[i]>(18535+offset0))
{
	if(input[i]>(18539+offset0))
{
	if(input[i]>(18541+offset0))
{
	if(input[i]==(18543+offset0))
{
	vR[i] = 18543;
}
else
{
	vR[i] = 18542;
}

}
else
{
	if(input[i]==(18541+offset0))
{
	vR[i] = 18541;
}
else
{
	vR[i] = 18540;
}

}

}
else
{
	if(input[i]>(18537+offset0))
{
	if(input[i]==(18539+offset0))
{
	vR[i] = 18539;
}
else
{
	vR[i] = 18538;
}

}
else
{
	if(input[i]==(18537+offset0))
{
	vR[i] = 18537;
}
else
{
	vR[i] = 18536;
}

}

}

}
else
{
	if(input[i]>(18531+offset0))
{
	if(input[i]>(18533+offset0))
{
	if(input[i]==(18535+offset0))
{
	vR[i] = 18535;
}
else
{
	vR[i] = 18534;
}

}
else
{
	if(input[i]==(18533+offset0))
{
	vR[i] = 18533;
}
else
{
	vR[i] = 18532;
}

}

}
else
{
	if(input[i]>(18529+offset0))
{
	if(input[i]==(18531+offset0))
{
	vR[i] = 18531;
}
else
{
	vR[i] = 18530;
}

}
else
{
	if(input[i]==(18529+offset0))
{
	vR[i] = 18529;
}
else
{
	vR[i] = 18528;
}

}

}

}

}

}
else
{
	if(input[i]>(18511+offset0))
{
	if(input[i]>(18519+offset0))
{
	if(input[i]>(18523+offset0))
{
	if(input[i]>(18525+offset0))
{
	if(input[i]==(18527+offset0))
{
	vR[i] = 18527;
}
else
{
	vR[i] = 18526;
}

}
else
{
	if(input[i]==(18525+offset0))
{
	vR[i] = 18525;
}
else
{
	vR[i] = 18524;
}

}

}
else
{
	if(input[i]>(18521+offset0))
{
	if(input[i]==(18523+offset0))
{
	vR[i] = 18523;
}
else
{
	vR[i] = 18522;
}

}
else
{
	if(input[i]==(18521+offset0))
{
	vR[i] = 18521;
}
else
{
	vR[i] = 18520;
}

}

}

}
else
{
	if(input[i]>(18515+offset0))
{
	if(input[i]>(18517+offset0))
{
	if(input[i]==(18519+offset0))
{
	vR[i] = 18519;
}
else
{
	vR[i] = 18518;
}

}
else
{
	if(input[i]==(18517+offset0))
{
	vR[i] = 18517;
}
else
{
	vR[i] = 18516;
}

}

}
else
{
	if(input[i]>(18513+offset0))
{
	if(input[i]==(18515+offset0))
{
	vR[i] = 18515;
}
else
{
	vR[i] = 18514;
}

}
else
{
	if(input[i]==(18513+offset0))
{
	vR[i] = 18513;
}
else
{
	vR[i] = 18512;
}

}

}

}

}
else
{
	if(input[i]>(18503+offset0))
{
	if(input[i]>(18507+offset0))
{
	if(input[i]>(18509+offset0))
{
	if(input[i]==(18511+offset0))
{
	vR[i] = 18511;
}
else
{
	vR[i] = 18510;
}

}
else
{
	if(input[i]==(18509+offset0))
{
	vR[i] = 18509;
}
else
{
	vR[i] = 18508;
}

}

}
else
{
	if(input[i]>(18505+offset0))
{
	if(input[i]==(18507+offset0))
{
	vR[i] = 18507;
}
else
{
	vR[i] = 18506;
}

}
else
{
	if(input[i]==(18505+offset0))
{
	vR[i] = 18505;
}
else
{
	vR[i] = 18504;
}

}

}

}
else
{
	if(input[i]>(18499+offset0))
{
	if(input[i]>(18501+offset0))
{
	if(input[i]==(18503+offset0))
{
	vR[i] = 18503;
}
else
{
	vR[i] = 18502;
}

}
else
{
	if(input[i]==(18501+offset0))
{
	vR[i] = 18501;
}
else
{
	vR[i] = 18500;
}

}

}
else
{
	if(input[i]>(18497+offset0))
{
	if(input[i]==(18499+offset0))
{
	vR[i] = 18499;
}
else
{
	vR[i] = 18498;
}

}
else
{
	if(input[i]==(18497+offset0))
{
	vR[i] = 18497;
}
else
{
	vR[i] = 18496;
}

}

}

}

}

}

}
else
{
	if(input[i]>(18463+offset0))
{
	if(input[i]>(18479+offset0))
{
	if(input[i]>(18487+offset0))
{
	if(input[i]>(18491+offset0))
{
	if(input[i]>(18493+offset0))
{
	if(input[i]==(18495+offset0))
{
	vR[i] = 18495;
}
else
{
	vR[i] = 18494;
}

}
else
{
	if(input[i]==(18493+offset0))
{
	vR[i] = 18493;
}
else
{
	vR[i] = 18492;
}

}

}
else
{
	if(input[i]>(18489+offset0))
{
	if(input[i]==(18491+offset0))
{
	vR[i] = 18491;
}
else
{
	vR[i] = 18490;
}

}
else
{
	if(input[i]==(18489+offset0))
{
	vR[i] = 18489;
}
else
{
	vR[i] = 18488;
}

}

}

}
else
{
	if(input[i]>(18483+offset0))
{
	if(input[i]>(18485+offset0))
{
	if(input[i]==(18487+offset0))
{
	vR[i] = 18487;
}
else
{
	vR[i] = 18486;
}

}
else
{
	if(input[i]==(18485+offset0))
{
	vR[i] = 18485;
}
else
{
	vR[i] = 18484;
}

}

}
else
{
	if(input[i]>(18481+offset0))
{
	if(input[i]==(18483+offset0))
{
	vR[i] = 18483;
}
else
{
	vR[i] = 18482;
}

}
else
{
	if(input[i]==(18481+offset0))
{
	vR[i] = 18481;
}
else
{
	vR[i] = 18480;
}

}

}

}

}
else
{
	if(input[i]>(18471+offset0))
{
	if(input[i]>(18475+offset0))
{
	if(input[i]>(18477+offset0))
{
	if(input[i]==(18479+offset0))
{
	vR[i] = 18479;
}
else
{
	vR[i] = 18478;
}

}
else
{
	if(input[i]==(18477+offset0))
{
	vR[i] = 18477;
}
else
{
	vR[i] = 18476;
}

}

}
else
{
	if(input[i]>(18473+offset0))
{
	if(input[i]==(18475+offset0))
{
	vR[i] = 18475;
}
else
{
	vR[i] = 18474;
}

}
else
{
	if(input[i]==(18473+offset0))
{
	vR[i] = 18473;
}
else
{
	vR[i] = 18472;
}

}

}

}
else
{
	if(input[i]>(18467+offset0))
{
	if(input[i]>(18469+offset0))
{
	if(input[i]==(18471+offset0))
{
	vR[i] = 18471;
}
else
{
	vR[i] = 18470;
}

}
else
{
	if(input[i]==(18469+offset0))
{
	vR[i] = 18469;
}
else
{
	vR[i] = 18468;
}

}

}
else
{
	if(input[i]>(18465+offset0))
{
	if(input[i]==(18467+offset0))
{
	vR[i] = 18467;
}
else
{
	vR[i] = 18466;
}

}
else
{
	if(input[i]==(18465+offset0))
{
	vR[i] = 18465;
}
else
{
	vR[i] = 18464;
}

}

}

}

}

}
else
{
	if(input[i]>(18447+offset0))
{
	if(input[i]>(18455+offset0))
{
	if(input[i]>(18459+offset0))
{
	if(input[i]>(18461+offset0))
{
	if(input[i]==(18463+offset0))
{
	vR[i] = 18463;
}
else
{
	vR[i] = 18462;
}

}
else
{
	if(input[i]==(18461+offset0))
{
	vR[i] = 18461;
}
else
{
	vR[i] = 18460;
}

}

}
else
{
	if(input[i]>(18457+offset0))
{
	if(input[i]==(18459+offset0))
{
	vR[i] = 18459;
}
else
{
	vR[i] = 18458;
}

}
else
{
	if(input[i]==(18457+offset0))
{
	vR[i] = 18457;
}
else
{
	vR[i] = 18456;
}

}

}

}
else
{
	if(input[i]>(18451+offset0))
{
	if(input[i]>(18453+offset0))
{
	if(input[i]==(18455+offset0))
{
	vR[i] = 18455;
}
else
{
	vR[i] = 18454;
}

}
else
{
	if(input[i]==(18453+offset0))
{
	vR[i] = 18453;
}
else
{
	vR[i] = 18452;
}

}

}
else
{
	if(input[i]>(18449+offset0))
{
	if(input[i]==(18451+offset0))
{
	vR[i] = 18451;
}
else
{
	vR[i] = 18450;
}

}
else
{
	if(input[i]==(18449+offset0))
{
	vR[i] = 18449;
}
else
{
	vR[i] = 18448;
}

}

}

}

}
else
{
	if(input[i]>(18439+offset0))
{
	if(input[i]>(18443+offset0))
{
	if(input[i]>(18445+offset0))
{
	if(input[i]==(18447+offset0))
{
	vR[i] = 18447;
}
else
{
	vR[i] = 18446;
}

}
else
{
	if(input[i]==(18445+offset0))
{
	vR[i] = 18445;
}
else
{
	vR[i] = 18444;
}

}

}
else
{
	if(input[i]>(18441+offset0))
{
	if(input[i]==(18443+offset0))
{
	vR[i] = 18443;
}
else
{
	vR[i] = 18442;
}

}
else
{
	if(input[i]==(18441+offset0))
{
	vR[i] = 18441;
}
else
{
	vR[i] = 18440;
}

}

}

}
else
{
	if(input[i]>(18435+offset0))
{
	if(input[i]>(18437+offset0))
{
	if(input[i]==(18439+offset0))
{
	vR[i] = 18439;
}
else
{
	vR[i] = 18438;
}

}
else
{
	if(input[i]==(18437+offset0))
{
	vR[i] = 18437;
}
else
{
	vR[i] = 18436;
}

}

}
else
{
	if(input[i]>(18433+offset0))
{
	if(input[i]==(18435+offset0))
{
	vR[i] = 18435;
}
else
{
	vR[i] = 18434;
}

}
else
{
	if(input[i]==(18433+offset0))
{
	vR[i] = 18433;
}
else
{
	vR[i] = 18432;
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
	if(input[i]>(17407+offset0))
{
	if(input[i]>(17919+offset0))
{
	if(input[i]>(18175+offset0))
{
	if(input[i]>(18303+offset0))
{
	if(input[i]>(18367+offset0))
{
	if(input[i]>(18399+offset0))
{
	if(input[i]>(18415+offset0))
{
	if(input[i]>(18423+offset0))
{
	if(input[i]>(18427+offset0))
{
	if(input[i]>(18429+offset0))
{
	if(input[i]==(18431+offset0))
{
	vR[i] = 18431;
}
else
{
	vR[i] = 18430;
}

}
else
{
	if(input[i]==(18429+offset0))
{
	vR[i] = 18429;
}
else
{
	vR[i] = 18428;
}

}

}
else
{
	if(input[i]>(18425+offset0))
{
	if(input[i]==(18427+offset0))
{
	vR[i] = 18427;
}
else
{
	vR[i] = 18426;
}

}
else
{
	if(input[i]==(18425+offset0))
{
	vR[i] = 18425;
}
else
{
	vR[i] = 18424;
}

}

}

}
else
{
	if(input[i]>(18419+offset0))
{
	if(input[i]>(18421+offset0))
{
	if(input[i]==(18423+offset0))
{
	vR[i] = 18423;
}
else
{
	vR[i] = 18422;
}

}
else
{
	if(input[i]==(18421+offset0))
{
	vR[i] = 18421;
}
else
{
	vR[i] = 18420;
}

}

}
else
{
	if(input[i]>(18417+offset0))
{
	if(input[i]==(18419+offset0))
{
	vR[i] = 18419;
}
else
{
	vR[i] = 18418;
}

}
else
{
	if(input[i]==(18417+offset0))
{
	vR[i] = 18417;
}
else
{
	vR[i] = 18416;
}

}

}

}

}
else
{
	if(input[i]>(18407+offset0))
{
	if(input[i]>(18411+offset0))
{
	if(input[i]>(18413+offset0))
{
	if(input[i]==(18415+offset0))
{
	vR[i] = 18415;
}
else
{
	vR[i] = 18414;
}

}
else
{
	if(input[i]==(18413+offset0))
{
	vR[i] = 18413;
}
else
{
	vR[i] = 18412;
}

}

}
else
{
	if(input[i]>(18409+offset0))
{
	if(input[i]==(18411+offset0))
{
	vR[i] = 18411;
}
else
{
	vR[i] = 18410;
}

}
else
{
	if(input[i]==(18409+offset0))
{
	vR[i] = 18409;
}
else
{
	vR[i] = 18408;
}

}

}

}
else
{
	if(input[i]>(18403+offset0))
{
	if(input[i]>(18405+offset0))
{
	if(input[i]==(18407+offset0))
{
	vR[i] = 18407;
}
else
{
	vR[i] = 18406;
}

}
else
{
	if(input[i]==(18405+offset0))
{
	vR[i] = 18405;
}
else
{
	vR[i] = 18404;
}

}

}
else
{
	if(input[i]>(18401+offset0))
{
	if(input[i]==(18403+offset0))
{
	vR[i] = 18403;
}
else
{
	vR[i] = 18402;
}

}
else
{
	if(input[i]==(18401+offset0))
{
	vR[i] = 18401;
}
else
{
	vR[i] = 18400;
}

}

}

}

}

}
else
{
	if(input[i]>(18383+offset0))
{
	if(input[i]>(18391+offset0))
{
	if(input[i]>(18395+offset0))
{
	if(input[i]>(18397+offset0))
{
	if(input[i]==(18399+offset0))
{
	vR[i] = 18399;
}
else
{
	vR[i] = 18398;
}

}
else
{
	if(input[i]==(18397+offset0))
{
	vR[i] = 18397;
}
else
{
	vR[i] = 18396;
}

}

}
else
{
	if(input[i]>(18393+offset0))
{
	if(input[i]==(18395+offset0))
{
	vR[i] = 18395;
}
else
{
	vR[i] = 18394;
}

}
else
{
	if(input[i]==(18393+offset0))
{
	vR[i] = 18393;
}
else
{
	vR[i] = 18392;
}

}

}

}
else
{
	if(input[i]>(18387+offset0))
{
	if(input[i]>(18389+offset0))
{
	if(input[i]==(18391+offset0))
{
	vR[i] = 18391;
}
else
{
	vR[i] = 18390;
}

}
else
{
	if(input[i]==(18389+offset0))
{
	vR[i] = 18389;
}
else
{
	vR[i] = 18388;
}

}

}
else
{
	if(input[i]>(18385+offset0))
{
	if(input[i]==(18387+offset0))
{
	vR[i] = 18387;
}
else
{
	vR[i] = 18386;
}

}
else
{
	if(input[i]==(18385+offset0))
{
	vR[i] = 18385;
}
else
{
	vR[i] = 18384;
}

}

}

}

}
else
{
	if(input[i]>(18375+offset0))
{
	if(input[i]>(18379+offset0))
{
	if(input[i]>(18381+offset0))
{
	if(input[i]==(18383+offset0))
{
	vR[i] = 18383;
}
else
{
	vR[i] = 18382;
}

}
else
{
	if(input[i]==(18381+offset0))
{
	vR[i] = 18381;
}
else
{
	vR[i] = 18380;
}

}

}
else
{
	if(input[i]>(18377+offset0))
{
	if(input[i]==(18379+offset0))
{
	vR[i] = 18379;
}
else
{
	vR[i] = 18378;
}

}
else
{
	if(input[i]==(18377+offset0))
{
	vR[i] = 18377;
}
else
{
	vR[i] = 18376;
}

}

}

}
else
{
	if(input[i]>(18371+offset0))
{
	if(input[i]>(18373+offset0))
{
	if(input[i]==(18375+offset0))
{
	vR[i] = 18375;
}
else
{
	vR[i] = 18374;
}

}
else
{
	if(input[i]==(18373+offset0))
{
	vR[i] = 18373;
}
else
{
	vR[i] = 18372;
}

}

}
else
{
	if(input[i]>(18369+offset0))
{
	if(input[i]==(18371+offset0))
{
	vR[i] = 18371;
}
else
{
	vR[i] = 18370;
}

}
else
{
	if(input[i]==(18369+offset0))
{
	vR[i] = 18369;
}
else
{
	vR[i] = 18368;
}

}

}

}

}

}

}
else
{
	if(input[i]>(18335+offset0))
{
	if(input[i]>(18351+offset0))
{
	if(input[i]>(18359+offset0))
{
	if(input[i]>(18363+offset0))
{
	if(input[i]>(18365+offset0))
{
	if(input[i]==(18367+offset0))
{
	vR[i] = 18367;
}
else
{
	vR[i] = 18366;
}

}
else
{
	if(input[i]==(18365+offset0))
{
	vR[i] = 18365;
}
else
{
	vR[i] = 18364;
}

}

}
else
{
	if(input[i]>(18361+offset0))
{
	if(input[i]==(18363+offset0))
{
	vR[i] = 18363;
}
else
{
	vR[i] = 18362;
}

}
else
{
	if(input[i]==(18361+offset0))
{
	vR[i] = 18361;
}
else
{
	vR[i] = 18360;
}

}

}

}
else
{
	if(input[i]>(18355+offset0))
{
	if(input[i]>(18357+offset0))
{
	if(input[i]==(18359+offset0))
{
	vR[i] = 18359;
}
else
{
	vR[i] = 18358;
}

}
else
{
	if(input[i]==(18357+offset0))
{
	vR[i] = 18357;
}
else
{
	vR[i] = 18356;
}

}

}
else
{
	if(input[i]>(18353+offset0))
{
	if(input[i]==(18355+offset0))
{
	vR[i] = 18355;
}
else
{
	vR[i] = 18354;
}

}
else
{
	if(input[i]==(18353+offset0))
{
	vR[i] = 18353;
}
else
{
	vR[i] = 18352;
}

}

}

}

}
else
{
	if(input[i]>(18343+offset0))
{
	if(input[i]>(18347+offset0))
{
	if(input[i]>(18349+offset0))
{
	if(input[i]==(18351+offset0))
{
	vR[i] = 18351;
}
else
{
	vR[i] = 18350;
}

}
else
{
	if(input[i]==(18349+offset0))
{
	vR[i] = 18349;
}
else
{
	vR[i] = 18348;
}

}

}
else
{
	if(input[i]>(18345+offset0))
{
	if(input[i]==(18347+offset0))
{
	vR[i] = 18347;
}
else
{
	vR[i] = 18346;
}

}
else
{
	if(input[i]==(18345+offset0))
{
	vR[i] = 18345;
}
else
{
	vR[i] = 18344;
}

}

}

}
else
{
	if(input[i]>(18339+offset0))
{
	if(input[i]>(18341+offset0))
{
	if(input[i]==(18343+offset0))
{
	vR[i] = 18343;
}
else
{
	vR[i] = 18342;
}

}
else
{
	if(input[i]==(18341+offset0))
{
	vR[i] = 18341;
}
else
{
	vR[i] = 18340;
}

}

}
else
{
	if(input[i]>(18337+offset0))
{
	if(input[i]==(18339+offset0))
{
	vR[i] = 18339;
}
else
{
	vR[i] = 18338;
}

}
else
{
	if(input[i]==(18337+offset0))
{
	vR[i] = 18337;
}
else
{
	vR[i] = 18336;
}

}

}

}

}

}
else
{
	if(input[i]>(18319+offset0))
{
	if(input[i]>(18327+offset0))
{
	if(input[i]>(18331+offset0))
{
	if(input[i]>(18333+offset0))
{
	if(input[i]==(18335+offset0))
{
	vR[i] = 18335;
}
else
{
	vR[i] = 18334;
}

}
else
{
	if(input[i]==(18333+offset0))
{
	vR[i] = 18333;
}
else
{
	vR[i] = 18332;
}

}

}
else
{
	if(input[i]>(18329+offset0))
{
	if(input[i]==(18331+offset0))
{
	vR[i] = 18331;
}
else
{
	vR[i] = 18330;
}

}
else
{
	if(input[i]==(18329+offset0))
{
	vR[i] = 18329;
}
else
{
	vR[i] = 18328;
}

}

}

}
else
{
	if(input[i]>(18323+offset0))
{
	if(input[i]>(18325+offset0))
{
	if(input[i]==(18327+offset0))
{
	vR[i] = 18327;
}
else
{
	vR[i] = 18326;
}

}
else
{
	if(input[i]==(18325+offset0))
{
	vR[i] = 18325;
}
else
{
	vR[i] = 18324;
}

}

}
else
{
	if(input[i]>(18321+offset0))
{
	if(input[i]==(18323+offset0))
{
	vR[i] = 18323;
}
else
{
	vR[i] = 18322;
}

}
else
{
	if(input[i]==(18321+offset0))
{
	vR[i] = 18321;
}
else
{
	vR[i] = 18320;
}

}

}

}

}
else
{
	if(input[i]>(18311+offset0))
{
	if(input[i]>(18315+offset0))
{
	if(input[i]>(18317+offset0))
{
	if(input[i]==(18319+offset0))
{
	vR[i] = 18319;
}
else
{
	vR[i] = 18318;
}

}
else
{
	if(input[i]==(18317+offset0))
{
	vR[i] = 18317;
}
else
{
	vR[i] = 18316;
}

}

}
else
{
	if(input[i]>(18313+offset0))
{
	if(input[i]==(18315+offset0))
{
	vR[i] = 18315;
}
else
{
	vR[i] = 18314;
}

}
else
{
	if(input[i]==(18313+offset0))
{
	vR[i] = 18313;
}
else
{
	vR[i] = 18312;
}

}

}

}
else
{
	if(input[i]>(18307+offset0))
{
	if(input[i]>(18309+offset0))
{
	if(input[i]==(18311+offset0))
{
	vR[i] = 18311;
}
else
{
	vR[i] = 18310;
}

}
else
{
	if(input[i]==(18309+offset0))
{
	vR[i] = 18309;
}
else
{
	vR[i] = 18308;
}

}

}
else
{
	if(input[i]>(18305+offset0))
{
	if(input[i]==(18307+offset0))
{
	vR[i] = 18307;
}
else
{
	vR[i] = 18306;
}

}
else
{
	if(input[i]==(18305+offset0))
{
	vR[i] = 18305;
}
else
{
	vR[i] = 18304;
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
	if(input[i]>(18239+offset0))
{
	if(input[i]>(18271+offset0))
{
	if(input[i]>(18287+offset0))
{
	if(input[i]>(18295+offset0))
{
	if(input[i]>(18299+offset0))
{
	if(input[i]>(18301+offset0))
{
	if(input[i]==(18303+offset0))
{
	vR[i] = 18303;
}
else
{
	vR[i] = 18302;
}

}
else
{
	if(input[i]==(18301+offset0))
{
	vR[i] = 18301;
}
else
{
	vR[i] = 18300;
}

}

}
else
{
	if(input[i]>(18297+offset0))
{
	if(input[i]==(18299+offset0))
{
	vR[i] = 18299;
}
else
{
	vR[i] = 18298;
}

}
else
{
	if(input[i]==(18297+offset0))
{
	vR[i] = 18297;
}
else
{
	vR[i] = 18296;
}

}

}

}
else
{
	if(input[i]>(18291+offset0))
{
	if(input[i]>(18293+offset0))
{
	if(input[i]==(18295+offset0))
{
	vR[i] = 18295;
}
else
{
	vR[i] = 18294;
}

}
else
{
	if(input[i]==(18293+offset0))
{
	vR[i] = 18293;
}
else
{
	vR[i] = 18292;
}

}

}
else
{
	if(input[i]>(18289+offset0))
{
	if(input[i]==(18291+offset0))
{
	vR[i] = 18291;
}
else
{
	vR[i] = 18290;
}

}
else
{
	if(input[i]==(18289+offset0))
{
	vR[i] = 18289;
}
else
{
	vR[i] = 18288;
}

}

}

}

}
else
{
	if(input[i]>(18279+offset0))
{
	if(input[i]>(18283+offset0))
{
	if(input[i]>(18285+offset0))
{
	if(input[i]==(18287+offset0))
{
	vR[i] = 18287;
}
else
{
	vR[i] = 18286;
}

}
else
{
	if(input[i]==(18285+offset0))
{
	vR[i] = 18285;
}
else
{
	vR[i] = 18284;
}

}

}
else
{
	if(input[i]>(18281+offset0))
{
	if(input[i]==(18283+offset0))
{
	vR[i] = 18283;
}
else
{
	vR[i] = 18282;
}

}
else
{
	if(input[i]==(18281+offset0))
{
	vR[i] = 18281;
}
else
{
	vR[i] = 18280;
}

}

}

}
else
{
	if(input[i]>(18275+offset0))
{
	if(input[i]>(18277+offset0))
{
	if(input[i]==(18279+offset0))
{
	vR[i] = 18279;
}
else
{
	vR[i] = 18278;
}

}
else
{
	if(input[i]==(18277+offset0))
{
	vR[i] = 18277;
}
else
{
	vR[i] = 18276;
}

}

}
else
{
	if(input[i]>(18273+offset0))
{
	if(input[i]==(18275+offset0))
{
	vR[i] = 18275;
}
else
{
	vR[i] = 18274;
}

}
else
{
	if(input[i]==(18273+offset0))
{
	vR[i] = 18273;
}
else
{
	vR[i] = 18272;
}

}

}

}

}

}
else
{
	if(input[i]>(18255+offset0))
{
	if(input[i]>(18263+offset0))
{
	if(input[i]>(18267+offset0))
{
	if(input[i]>(18269+offset0))
{
	if(input[i]==(18271+offset0))
{
	vR[i] = 18271;
}
else
{
	vR[i] = 18270;
}

}
else
{
	if(input[i]==(18269+offset0))
{
	vR[i] = 18269;
}
else
{
	vR[i] = 18268;
}

}

}
else
{
	if(input[i]>(18265+offset0))
{
	if(input[i]==(18267+offset0))
{
	vR[i] = 18267;
}
else
{
	vR[i] = 18266;
}

}
else
{
	if(input[i]==(18265+offset0))
{
	vR[i] = 18265;
}
else
{
	vR[i] = 18264;
}

}

}

}
else
{
	if(input[i]>(18259+offset0))
{
	if(input[i]>(18261+offset0))
{
	if(input[i]==(18263+offset0))
{
	vR[i] = 18263;
}
else
{
	vR[i] = 18262;
}

}
else
{
	if(input[i]==(18261+offset0))
{
	vR[i] = 18261;
}
else
{
	vR[i] = 18260;
}

}

}
else
{
	if(input[i]>(18257+offset0))
{
	if(input[i]==(18259+offset0))
{
	vR[i] = 18259;
}
else
{
	vR[i] = 18258;
}

}
else
{
	if(input[i]==(18257+offset0))
{
	vR[i] = 18257;
}
else
{
	vR[i] = 18256;
}

}

}

}

}
else
{
	if(input[i]>(18247+offset0))
{
	if(input[i]>(18251+offset0))
{
	if(input[i]>(18253+offset0))
{
	if(input[i]==(18255+offset0))
{
	vR[i] = 18255;
}
else
{
	vR[i] = 18254;
}

}
else
{
	if(input[i]==(18253+offset0))
{
	vR[i] = 18253;
}
else
{
	vR[i] = 18252;
}

}

}
else
{
	if(input[i]>(18249+offset0))
{
	if(input[i]==(18251+offset0))
{
	vR[i] = 18251;
}
else
{
	vR[i] = 18250;
}

}
else
{
	if(input[i]==(18249+offset0))
{
	vR[i] = 18249;
}
else
{
	vR[i] = 18248;
}

}

}

}
else
{
	if(input[i]>(18243+offset0))
{
	if(input[i]>(18245+offset0))
{
	if(input[i]==(18247+offset0))
{
	vR[i] = 18247;
}
else
{
	vR[i] = 18246;
}

}
else
{
	if(input[i]==(18245+offset0))
{
	vR[i] = 18245;
}
else
{
	vR[i] = 18244;
}

}

}
else
{
	if(input[i]>(18241+offset0))
{
	if(input[i]==(18243+offset0))
{
	vR[i] = 18243;
}
else
{
	vR[i] = 18242;
}

}
else
{
	if(input[i]==(18241+offset0))
{
	vR[i] = 18241;
}
else
{
	vR[i] = 18240;
}

}

}

}

}

}

}
else
{
	if(input[i]>(18207+offset0))
{
	if(input[i]>(18223+offset0))
{
	if(input[i]>(18231+offset0))
{
	if(input[i]>(18235+offset0))
{
	if(input[i]>(18237+offset0))
{
	if(input[i]==(18239+offset0))
{
	vR[i] = 18239;
}
else
{
	vR[i] = 18238;
}

}
else
{
	if(input[i]==(18237+offset0))
{
	vR[i] = 18237;
}
else
{
	vR[i] = 18236;
}

}

}
else
{
	if(input[i]>(18233+offset0))
{
	if(input[i]==(18235+offset0))
{
	vR[i] = 18235;
}
else
{
	vR[i] = 18234;
}

}
else
{
	if(input[i]==(18233+offset0))
{
	vR[i] = 18233;
}
else
{
	vR[i] = 18232;
}

}

}

}
else
{
	if(input[i]>(18227+offset0))
{
	if(input[i]>(18229+offset0))
{
	if(input[i]==(18231+offset0))
{
	vR[i] = 18231;
}
else
{
	vR[i] = 18230;
}

}
else
{
	if(input[i]==(18229+offset0))
{
	vR[i] = 18229;
}
else
{
	vR[i] = 18228;
}

}

}
else
{
	if(input[i]>(18225+offset0))
{
	if(input[i]==(18227+offset0))
{
	vR[i] = 18227;
}
else
{
	vR[i] = 18226;
}

}
else
{
	if(input[i]==(18225+offset0))
{
	vR[i] = 18225;
}
else
{
	vR[i] = 18224;
}

}

}

}

}
else
{
	if(input[i]>(18215+offset0))
{
	if(input[i]>(18219+offset0))
{
	if(input[i]>(18221+offset0))
{
	if(input[i]==(18223+offset0))
{
	vR[i] = 18223;
}
else
{
	vR[i] = 18222;
}

}
else
{
	if(input[i]==(18221+offset0))
{
	vR[i] = 18221;
}
else
{
	vR[i] = 18220;
}

}

}
else
{
	if(input[i]>(18217+offset0))
{
	if(input[i]==(18219+offset0))
{
	vR[i] = 18219;
}
else
{
	vR[i] = 18218;
}

}
else
{
	if(input[i]==(18217+offset0))
{
	vR[i] = 18217;
}
else
{
	vR[i] = 18216;
}

}

}

}
else
{
	if(input[i]>(18211+offset0))
{
	if(input[i]>(18213+offset0))
{
	if(input[i]==(18215+offset0))
{
	vR[i] = 18215;
}
else
{
	vR[i] = 18214;
}

}
else
{
	if(input[i]==(18213+offset0))
{
	vR[i] = 18213;
}
else
{
	vR[i] = 18212;
}

}

}
else
{
	if(input[i]>(18209+offset0))
{
	if(input[i]==(18211+offset0))
{
	vR[i] = 18211;
}
else
{
	vR[i] = 18210;
}

}
else
{
	if(input[i]==(18209+offset0))
{
	vR[i] = 18209;
}
else
{
	vR[i] = 18208;
}

}

}

}

}

}
else
{
	if(input[i]>(18191+offset0))
{
	if(input[i]>(18199+offset0))
{
	if(input[i]>(18203+offset0))
{
	if(input[i]>(18205+offset0))
{
	if(input[i]==(18207+offset0))
{
	vR[i] = 18207;
}
else
{
	vR[i] = 18206;
}

}
else
{
	if(input[i]==(18205+offset0))
{
	vR[i] = 18205;
}
else
{
	vR[i] = 18204;
}

}

}
else
{
	if(input[i]>(18201+offset0))
{
	if(input[i]==(18203+offset0))
{
	vR[i] = 18203;
}
else
{
	vR[i] = 18202;
}

}
else
{
	if(input[i]==(18201+offset0))
{
	vR[i] = 18201;
}
else
{
	vR[i] = 18200;
}

}

}

}
else
{
	if(input[i]>(18195+offset0))
{
	if(input[i]>(18197+offset0))
{
	if(input[i]==(18199+offset0))
{
	vR[i] = 18199;
}
else
{
	vR[i] = 18198;
}

}
else
{
	if(input[i]==(18197+offset0))
{
	vR[i] = 18197;
}
else
{
	vR[i] = 18196;
}

}

}
else
{
	if(input[i]>(18193+offset0))
{
	if(input[i]==(18195+offset0))
{
	vR[i] = 18195;
}
else
{
	vR[i] = 18194;
}

}
else
{
	if(input[i]==(18193+offset0))
{
	vR[i] = 18193;
}
else
{
	vR[i] = 18192;
}

}

}

}

}
else
{
	if(input[i]>(18183+offset0))
{
	if(input[i]>(18187+offset0))
{
	if(input[i]>(18189+offset0))
{
	if(input[i]==(18191+offset0))
{
	vR[i] = 18191;
}
else
{
	vR[i] = 18190;
}

}
else
{
	if(input[i]==(18189+offset0))
{
	vR[i] = 18189;
}
else
{
	vR[i] = 18188;
}

}

}
else
{
	if(input[i]>(18185+offset0))
{
	if(input[i]==(18187+offset0))
{
	vR[i] = 18187;
}
else
{
	vR[i] = 18186;
}

}
else
{
	if(input[i]==(18185+offset0))
{
	vR[i] = 18185;
}
else
{
	vR[i] = 18184;
}

}

}

}
else
{
	if(input[i]>(18179+offset0))
{
	if(input[i]>(18181+offset0))
{
	if(input[i]==(18183+offset0))
{
	vR[i] = 18183;
}
else
{
	vR[i] = 18182;
}

}
else
{
	if(input[i]==(18181+offset0))
{
	vR[i] = 18181;
}
else
{
	vR[i] = 18180;
}

}

}
else
{
	if(input[i]>(18177+offset0))
{
	if(input[i]==(18179+offset0))
{
	vR[i] = 18179;
}
else
{
	vR[i] = 18178;
}

}
else
{
	if(input[i]==(18177+offset0))
{
	vR[i] = 18177;
}
else
{
	vR[i] = 18176;
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
	if(input[i]>(18047+offset0))
{
	if(input[i]>(18111+offset0))
{
	if(input[i]>(18143+offset0))
{
	if(input[i]>(18159+offset0))
{
	if(input[i]>(18167+offset0))
{
	if(input[i]>(18171+offset0))
{
	if(input[i]>(18173+offset0))
{
	if(input[i]==(18175+offset0))
{
	vR[i] = 18175;
}
else
{
	vR[i] = 18174;
}

}
else
{
	if(input[i]==(18173+offset0))
{
	vR[i] = 18173;
}
else
{
	vR[i] = 18172;
}

}

}
else
{
	if(input[i]>(18169+offset0))
{
	if(input[i]==(18171+offset0))
{
	vR[i] = 18171;
}
else
{
	vR[i] = 18170;
}

}
else
{
	if(input[i]==(18169+offset0))
{
	vR[i] = 18169;
}
else
{
	vR[i] = 18168;
}

}

}

}
else
{
	if(input[i]>(18163+offset0))
{
	if(input[i]>(18165+offset0))
{
	if(input[i]==(18167+offset0))
{
	vR[i] = 18167;
}
else
{
	vR[i] = 18166;
}

}
else
{
	if(input[i]==(18165+offset0))
{
	vR[i] = 18165;
}
else
{
	vR[i] = 18164;
}

}

}
else
{
	if(input[i]>(18161+offset0))
{
	if(input[i]==(18163+offset0))
{
	vR[i] = 18163;
}
else
{
	vR[i] = 18162;
}

}
else
{
	if(input[i]==(18161+offset0))
{
	vR[i] = 18161;
}
else
{
	vR[i] = 18160;
}

}

}

}

}
else
{
	if(input[i]>(18151+offset0))
{
	if(input[i]>(18155+offset0))
{
	if(input[i]>(18157+offset0))
{
	if(input[i]==(18159+offset0))
{
	vR[i] = 18159;
}
else
{
	vR[i] = 18158;
}

}
else
{
	if(input[i]==(18157+offset0))
{
	vR[i] = 18157;
}
else
{
	vR[i] = 18156;
}

}

}
else
{
	if(input[i]>(18153+offset0))
{
	if(input[i]==(18155+offset0))
{
	vR[i] = 18155;
}
else
{
	vR[i] = 18154;
}

}
else
{
	if(input[i]==(18153+offset0))
{
	vR[i] = 18153;
}
else
{
	vR[i] = 18152;
}

}

}

}
else
{
	if(input[i]>(18147+offset0))
{
	if(input[i]>(18149+offset0))
{
	if(input[i]==(18151+offset0))
{
	vR[i] = 18151;
}
else
{
	vR[i] = 18150;
}

}
else
{
	if(input[i]==(18149+offset0))
{
	vR[i] = 18149;
}
else
{
	vR[i] = 18148;
}

}

}
else
{
	if(input[i]>(18145+offset0))
{
	if(input[i]==(18147+offset0))
{
	vR[i] = 18147;
}
else
{
	vR[i] = 18146;
}

}
else
{
	if(input[i]==(18145+offset0))
{
	vR[i] = 18145;
}
else
{
	vR[i] = 18144;
}

}

}

}

}

}
else
{
	if(input[i]>(18127+offset0))
{
	if(input[i]>(18135+offset0))
{
	if(input[i]>(18139+offset0))
{
	if(input[i]>(18141+offset0))
{
	if(input[i]==(18143+offset0))
{
	vR[i] = 18143;
}
else
{
	vR[i] = 18142;
}

}
else
{
	if(input[i]==(18141+offset0))
{
	vR[i] = 18141;
}
else
{
	vR[i] = 18140;
}

}

}
else
{
	if(input[i]>(18137+offset0))
{
	if(input[i]==(18139+offset0))
{
	vR[i] = 18139;
}
else
{
	vR[i] = 18138;
}

}
else
{
	if(input[i]==(18137+offset0))
{
	vR[i] = 18137;
}
else
{
	vR[i] = 18136;
}

}

}

}
else
{
	if(input[i]>(18131+offset0))
{
	if(input[i]>(18133+offset0))
{
	if(input[i]==(18135+offset0))
{
	vR[i] = 18135;
}
else
{
	vR[i] = 18134;
}

}
else
{
	if(input[i]==(18133+offset0))
{
	vR[i] = 18133;
}
else
{
	vR[i] = 18132;
}

}

}
else
{
	if(input[i]>(18129+offset0))
{
	if(input[i]==(18131+offset0))
{
	vR[i] = 18131;
}
else
{
	vR[i] = 18130;
}

}
else
{
	if(input[i]==(18129+offset0))
{
	vR[i] = 18129;
}
else
{
	vR[i] = 18128;
}

}

}

}

}
else
{
	if(input[i]>(18119+offset0))
{
	if(input[i]>(18123+offset0))
{
	if(input[i]>(18125+offset0))
{
	if(input[i]==(18127+offset0))
{
	vR[i] = 18127;
}
else
{
	vR[i] = 18126;
}

}
else
{
	if(input[i]==(18125+offset0))
{
	vR[i] = 18125;
}
else
{
	vR[i] = 18124;
}

}

}
else
{
	if(input[i]>(18121+offset0))
{
	if(input[i]==(18123+offset0))
{
	vR[i] = 18123;
}
else
{
	vR[i] = 18122;
}

}
else
{
	if(input[i]==(18121+offset0))
{
	vR[i] = 18121;
}
else
{
	vR[i] = 18120;
}

}

}

}
else
{
	if(input[i]>(18115+offset0))
{
	if(input[i]>(18117+offset0))
{
	if(input[i]==(18119+offset0))
{
	vR[i] = 18119;
}
else
{
	vR[i] = 18118;
}

}
else
{
	if(input[i]==(18117+offset0))
{
	vR[i] = 18117;
}
else
{
	vR[i] = 18116;
}

}

}
else
{
	if(input[i]>(18113+offset0))
{
	if(input[i]==(18115+offset0))
{
	vR[i] = 18115;
}
else
{
	vR[i] = 18114;
}

}
else
{
	if(input[i]==(18113+offset0))
{
	vR[i] = 18113;
}
else
{
	vR[i] = 18112;
}

}

}

}

}

}

}
else
{
	if(input[i]>(18079+offset0))
{
	if(input[i]>(18095+offset0))
{
	if(input[i]>(18103+offset0))
{
	if(input[i]>(18107+offset0))
{
	if(input[i]>(18109+offset0))
{
	if(input[i]==(18111+offset0))
{
	vR[i] = 18111;
}
else
{
	vR[i] = 18110;
}

}
else
{
	if(input[i]==(18109+offset0))
{
	vR[i] = 18109;
}
else
{
	vR[i] = 18108;
}

}

}
else
{
	if(input[i]>(18105+offset0))
{
	if(input[i]==(18107+offset0))
{
	vR[i] = 18107;
}
else
{
	vR[i] = 18106;
}

}
else
{
	if(input[i]==(18105+offset0))
{
	vR[i] = 18105;
}
else
{
	vR[i] = 18104;
}

}

}

}
else
{
	if(input[i]>(18099+offset0))
{
	if(input[i]>(18101+offset0))
{
	if(input[i]==(18103+offset0))
{
	vR[i] = 18103;
}
else
{
	vR[i] = 18102;
}

}
else
{
	if(input[i]==(18101+offset0))
{
	vR[i] = 18101;
}
else
{
	vR[i] = 18100;
}

}

}
else
{
	if(input[i]>(18097+offset0))
{
	if(input[i]==(18099+offset0))
{
	vR[i] = 18099;
}
else
{
	vR[i] = 18098;
}

}
else
{
	if(input[i]==(18097+offset0))
{
	vR[i] = 18097;
}
else
{
	vR[i] = 18096;
}

}

}

}

}
else
{
	if(input[i]>(18087+offset0))
{
	if(input[i]>(18091+offset0))
{
	if(input[i]>(18093+offset0))
{
	if(input[i]==(18095+offset0))
{
	vR[i] = 18095;
}
else
{
	vR[i] = 18094;
}

}
else
{
	if(input[i]==(18093+offset0))
{
	vR[i] = 18093;
}
else
{
	vR[i] = 18092;
}

}

}
else
{
	if(input[i]>(18089+offset0))
{
	if(input[i]==(18091+offset0))
{
	vR[i] = 18091;
}
else
{
	vR[i] = 18090;
}

}
else
{
	if(input[i]==(18089+offset0))
{
	vR[i] = 18089;
}
else
{
	vR[i] = 18088;
}

}

}

}
else
{
	if(input[i]>(18083+offset0))
{
	if(input[i]>(18085+offset0))
{
	if(input[i]==(18087+offset0))
{
	vR[i] = 18087;
}
else
{
	vR[i] = 18086;
}

}
else
{
	if(input[i]==(18085+offset0))
{
	vR[i] = 18085;
}
else
{
	vR[i] = 18084;
}

}

}
else
{
	if(input[i]>(18081+offset0))
{
	if(input[i]==(18083+offset0))
{
	vR[i] = 18083;
}
else
{
	vR[i] = 18082;
}

}
else
{
	if(input[i]==(18081+offset0))
{
	vR[i] = 18081;
}
else
{
	vR[i] = 18080;
}

}

}

}

}

}
else
{
	if(input[i]>(18063+offset0))
{
	if(input[i]>(18071+offset0))
{
	if(input[i]>(18075+offset0))
{
	if(input[i]>(18077+offset0))
{
	if(input[i]==(18079+offset0))
{
	vR[i] = 18079;
}
else
{
	vR[i] = 18078;
}

}
else
{
	if(input[i]==(18077+offset0))
{
	vR[i] = 18077;
}
else
{
	vR[i] = 18076;
}

}

}
else
{
	if(input[i]>(18073+offset0))
{
	if(input[i]==(18075+offset0))
{
	vR[i] = 18075;
}
else
{
	vR[i] = 18074;
}

}
else
{
	if(input[i]==(18073+offset0))
{
	vR[i] = 18073;
}
else
{
	vR[i] = 18072;
}

}

}

}
else
{
	if(input[i]>(18067+offset0))
{
	if(input[i]>(18069+offset0))
{
	if(input[i]==(18071+offset0))
{
	vR[i] = 18071;
}
else
{
	vR[i] = 18070;
}

}
else
{
	if(input[i]==(18069+offset0))
{
	vR[i] = 18069;
}
else
{
	vR[i] = 18068;
}

}

}
else
{
	if(input[i]>(18065+offset0))
{
	if(input[i]==(18067+offset0))
{
	vR[i] = 18067;
}
else
{
	vR[i] = 18066;
}

}
else
{
	if(input[i]==(18065+offset0))
{
	vR[i] = 18065;
}
else
{
	vR[i] = 18064;
}

}

}

}

}
else
{
	if(input[i]>(18055+offset0))
{
	if(input[i]>(18059+offset0))
{
	if(input[i]>(18061+offset0))
{
	if(input[i]==(18063+offset0))
{
	vR[i] = 18063;
}
else
{
	vR[i] = 18062;
}

}
else
{
	if(input[i]==(18061+offset0))
{
	vR[i] = 18061;
}
else
{
	vR[i] = 18060;
}

}

}
else
{
	if(input[i]>(18057+offset0))
{
	if(input[i]==(18059+offset0))
{
	vR[i] = 18059;
}
else
{
	vR[i] = 18058;
}

}
else
{
	if(input[i]==(18057+offset0))
{
	vR[i] = 18057;
}
else
{
	vR[i] = 18056;
}

}

}

}
else
{
	if(input[i]>(18051+offset0))
{
	if(input[i]>(18053+offset0))
{
	if(input[i]==(18055+offset0))
{
	vR[i] = 18055;
}
else
{
	vR[i] = 18054;
}

}
else
{
	if(input[i]==(18053+offset0))
{
	vR[i] = 18053;
}
else
{
	vR[i] = 18052;
}

}

}
else
{
	if(input[i]>(18049+offset0))
{
	if(input[i]==(18051+offset0))
{
	vR[i] = 18051;
}
else
{
	vR[i] = 18050;
}

}
else
{
	if(input[i]==(18049+offset0))
{
	vR[i] = 18049;
}
else
{
	vR[i] = 18048;
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
	if(input[i]>(17983+offset0))
{
	if(input[i]>(18015+offset0))
{
	if(input[i]>(18031+offset0))
{
	if(input[i]>(18039+offset0))
{
	if(input[i]>(18043+offset0))
{
	if(input[i]>(18045+offset0))
{
	if(input[i]==(18047+offset0))
{
	vR[i] = 18047;
}
else
{
	vR[i] = 18046;
}

}
else
{
	if(input[i]==(18045+offset0))
{
	vR[i] = 18045;
}
else
{
	vR[i] = 18044;
}

}

}
else
{
	if(input[i]>(18041+offset0))
{
	if(input[i]==(18043+offset0))
{
	vR[i] = 18043;
}
else
{
	vR[i] = 18042;
}

}
else
{
	if(input[i]==(18041+offset0))
{
	vR[i] = 18041;
}
else
{
	vR[i] = 18040;
}

}

}

}
else
{
	if(input[i]>(18035+offset0))
{
	if(input[i]>(18037+offset0))
{
	if(input[i]==(18039+offset0))
{
	vR[i] = 18039;
}
else
{
	vR[i] = 18038;
}

}
else
{
	if(input[i]==(18037+offset0))
{
	vR[i] = 18037;
}
else
{
	vR[i] = 18036;
}

}

}
else
{
	if(input[i]>(18033+offset0))
{
	if(input[i]==(18035+offset0))
{
	vR[i] = 18035;
}
else
{
	vR[i] = 18034;
}

}
else
{
	if(input[i]==(18033+offset0))
{
	vR[i] = 18033;
}
else
{
	vR[i] = 18032;
}

}

}

}

}
else
{
	if(input[i]>(18023+offset0))
{
	if(input[i]>(18027+offset0))
{
	if(input[i]>(18029+offset0))
{
	if(input[i]==(18031+offset0))
{
	vR[i] = 18031;
}
else
{
	vR[i] = 18030;
}

}
else
{
	if(input[i]==(18029+offset0))
{
	vR[i] = 18029;
}
else
{
	vR[i] = 18028;
}

}

}
else
{
	if(input[i]>(18025+offset0))
{
	if(input[i]==(18027+offset0))
{
	vR[i] = 18027;
}
else
{
	vR[i] = 18026;
}

}
else
{
	if(input[i]==(18025+offset0))
{
	vR[i] = 18025;
}
else
{
	vR[i] = 18024;
}

}

}

}
else
{
	if(input[i]>(18019+offset0))
{
	if(input[i]>(18021+offset0))
{
	if(input[i]==(18023+offset0))
{
	vR[i] = 18023;
}
else
{
	vR[i] = 18022;
}

}
else
{
	if(input[i]==(18021+offset0))
{
	vR[i] = 18021;
}
else
{
	vR[i] = 18020;
}

}

}
else
{
	if(input[i]>(18017+offset0))
{
	if(input[i]==(18019+offset0))
{
	vR[i] = 18019;
}
else
{
	vR[i] = 18018;
}

}
else
{
	if(input[i]==(18017+offset0))
{
	vR[i] = 18017;
}
else
{
	vR[i] = 18016;
}

}

}

}

}

}
else
{
	if(input[i]>(17999+offset0))
{
	if(input[i]>(18007+offset0))
{
	if(input[i]>(18011+offset0))
{
	if(input[i]>(18013+offset0))
{
	if(input[i]==(18015+offset0))
{
	vR[i] = 18015;
}
else
{
	vR[i] = 18014;
}

}
else
{
	if(input[i]==(18013+offset0))
{
	vR[i] = 18013;
}
else
{
	vR[i] = 18012;
}

}

}
else
{
	if(input[i]>(18009+offset0))
{
	if(input[i]==(18011+offset0))
{
	vR[i] = 18011;
}
else
{
	vR[i] = 18010;
}

}
else
{
	if(input[i]==(18009+offset0))
{
	vR[i] = 18009;
}
else
{
	vR[i] = 18008;
}

}

}

}
else
{
	if(input[i]>(18003+offset0))
{
	if(input[i]>(18005+offset0))
{
	if(input[i]==(18007+offset0))
{
	vR[i] = 18007;
}
else
{
	vR[i] = 18006;
}

}
else
{
	if(input[i]==(18005+offset0))
{
	vR[i] = 18005;
}
else
{
	vR[i] = 18004;
}

}

}
else
{
	if(input[i]>(18001+offset0))
{
	if(input[i]==(18003+offset0))
{
	vR[i] = 18003;
}
else
{
	vR[i] = 18002;
}

}
else
{
	if(input[i]==(18001+offset0))
{
	vR[i] = 18001;
}
else
{
	vR[i] = 18000;
}

}

}

}

}
else
{
	if(input[i]>(17991+offset0))
{
	if(input[i]>(17995+offset0))
{
	if(input[i]>(17997+offset0))
{
	if(input[i]==(17999+offset0))
{
	vR[i] = 17999;
}
else
{
	vR[i] = 17998;
}

}
else
{
	if(input[i]==(17997+offset0))
{
	vR[i] = 17997;
}
else
{
	vR[i] = 17996;
}

}

}
else
{
	if(input[i]>(17993+offset0))
{
	if(input[i]==(17995+offset0))
{
	vR[i] = 17995;
}
else
{
	vR[i] = 17994;
}

}
else
{
	if(input[i]==(17993+offset0))
{
	vR[i] = 17993;
}
else
{
	vR[i] = 17992;
}

}

}

}
else
{
	if(input[i]>(17987+offset0))
{
	if(input[i]>(17989+offset0))
{
	if(input[i]==(17991+offset0))
{
	vR[i] = 17991;
}
else
{
	vR[i] = 17990;
}

}
else
{
	if(input[i]==(17989+offset0))
{
	vR[i] = 17989;
}
else
{
	vR[i] = 17988;
}

}

}
else
{
	if(input[i]>(17985+offset0))
{
	if(input[i]==(17987+offset0))
{
	vR[i] = 17987;
}
else
{
	vR[i] = 17986;
}

}
else
{
	if(input[i]==(17985+offset0))
{
	vR[i] = 17985;
}
else
{
	vR[i] = 17984;
}

}

}

}

}

}

}
else
{
	if(input[i]>(17951+offset0))
{
	if(input[i]>(17967+offset0))
{
	if(input[i]>(17975+offset0))
{
	if(input[i]>(17979+offset0))
{
	if(input[i]>(17981+offset0))
{
	if(input[i]==(17983+offset0))
{
	vR[i] = 17983;
}
else
{
	vR[i] = 17982;
}

}
else
{
	if(input[i]==(17981+offset0))
{
	vR[i] = 17981;
}
else
{
	vR[i] = 17980;
}

}

}
else
{
	if(input[i]>(17977+offset0))
{
	if(input[i]==(17979+offset0))
{
	vR[i] = 17979;
}
else
{
	vR[i] = 17978;
}

}
else
{
	if(input[i]==(17977+offset0))
{
	vR[i] = 17977;
}
else
{
	vR[i] = 17976;
}

}

}

}
else
{
	if(input[i]>(17971+offset0))
{
	if(input[i]>(17973+offset0))
{
	if(input[i]==(17975+offset0))
{
	vR[i] = 17975;
}
else
{
	vR[i] = 17974;
}

}
else
{
	if(input[i]==(17973+offset0))
{
	vR[i] = 17973;
}
else
{
	vR[i] = 17972;
}

}

}
else
{
	if(input[i]>(17969+offset0))
{
	if(input[i]==(17971+offset0))
{
	vR[i] = 17971;
}
else
{
	vR[i] = 17970;
}

}
else
{
	if(input[i]==(17969+offset0))
{
	vR[i] = 17969;
}
else
{
	vR[i] = 17968;
}

}

}

}

}
else
{
	if(input[i]>(17959+offset0))
{
	if(input[i]>(17963+offset0))
{
	if(input[i]>(17965+offset0))
{
	if(input[i]==(17967+offset0))
{
	vR[i] = 17967;
}
else
{
	vR[i] = 17966;
}

}
else
{
	if(input[i]==(17965+offset0))
{
	vR[i] = 17965;
}
else
{
	vR[i] = 17964;
}

}

}
else
{
	if(input[i]>(17961+offset0))
{
	if(input[i]==(17963+offset0))
{
	vR[i] = 17963;
}
else
{
	vR[i] = 17962;
}

}
else
{
	if(input[i]==(17961+offset0))
{
	vR[i] = 17961;
}
else
{
	vR[i] = 17960;
}

}

}

}
else
{
	if(input[i]>(17955+offset0))
{
	if(input[i]>(17957+offset0))
{
	if(input[i]==(17959+offset0))
{
	vR[i] = 17959;
}
else
{
	vR[i] = 17958;
}

}
else
{
	if(input[i]==(17957+offset0))
{
	vR[i] = 17957;
}
else
{
	vR[i] = 17956;
}

}

}
else
{
	if(input[i]>(17953+offset0))
{
	if(input[i]==(17955+offset0))
{
	vR[i] = 17955;
}
else
{
	vR[i] = 17954;
}

}
else
{
	if(input[i]==(17953+offset0))
{
	vR[i] = 17953;
}
else
{
	vR[i] = 17952;
}

}

}

}

}

}
else
{
	if(input[i]>(17935+offset0))
{
	if(input[i]>(17943+offset0))
{
	if(input[i]>(17947+offset0))
{
	if(input[i]>(17949+offset0))
{
	if(input[i]==(17951+offset0))
{
	vR[i] = 17951;
}
else
{
	vR[i] = 17950;
}

}
else
{
	if(input[i]==(17949+offset0))
{
	vR[i] = 17949;
}
else
{
	vR[i] = 17948;
}

}

}
else
{
	if(input[i]>(17945+offset0))
{
	if(input[i]==(17947+offset0))
{
	vR[i] = 17947;
}
else
{
	vR[i] = 17946;
}

}
else
{
	if(input[i]==(17945+offset0))
{
	vR[i] = 17945;
}
else
{
	vR[i] = 17944;
}

}

}

}
else
{
	if(input[i]>(17939+offset0))
{
	if(input[i]>(17941+offset0))
{
	if(input[i]==(17943+offset0))
{
	vR[i] = 17943;
}
else
{
	vR[i] = 17942;
}

}
else
{
	if(input[i]==(17941+offset0))
{
	vR[i] = 17941;
}
else
{
	vR[i] = 17940;
}

}

}
else
{
	if(input[i]>(17937+offset0))
{
	if(input[i]==(17939+offset0))
{
	vR[i] = 17939;
}
else
{
	vR[i] = 17938;
}

}
else
{
	if(input[i]==(17937+offset0))
{
	vR[i] = 17937;
}
else
{
	vR[i] = 17936;
}

}

}

}

}
else
{
	if(input[i]>(17927+offset0))
{
	if(input[i]>(17931+offset0))
{
	if(input[i]>(17933+offset0))
{
	if(input[i]==(17935+offset0))
{
	vR[i] = 17935;
}
else
{
	vR[i] = 17934;
}

}
else
{
	if(input[i]==(17933+offset0))
{
	vR[i] = 17933;
}
else
{
	vR[i] = 17932;
}

}

}
else
{
	if(input[i]>(17929+offset0))
{
	if(input[i]==(17931+offset0))
{
	vR[i] = 17931;
}
else
{
	vR[i] = 17930;
}

}
else
{
	if(input[i]==(17929+offset0))
{
	vR[i] = 17929;
}
else
{
	vR[i] = 17928;
}

}

}

}
else
{
	if(input[i]>(17923+offset0))
{
	if(input[i]>(17925+offset0))
{
	if(input[i]==(17927+offset0))
{
	vR[i] = 17927;
}
else
{
	vR[i] = 17926;
}

}
else
{
	if(input[i]==(17925+offset0))
{
	vR[i] = 17925;
}
else
{
	vR[i] = 17924;
}

}

}
else
{
	if(input[i]>(17921+offset0))
{
	if(input[i]==(17923+offset0))
{
	vR[i] = 17923;
}
else
{
	vR[i] = 17922;
}

}
else
{
	if(input[i]==(17921+offset0))
{
	vR[i] = 17921;
}
else
{
	vR[i] = 17920;
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
	if(input[i]>(17663+offset0))
{
	if(input[i]>(17791+offset0))
{
	if(input[i]>(17855+offset0))
{
	if(input[i]>(17887+offset0))
{
	if(input[i]>(17903+offset0))
{
	if(input[i]>(17911+offset0))
{
	if(input[i]>(17915+offset0))
{
	if(input[i]>(17917+offset0))
{
	if(input[i]==(17919+offset0))
{
	vR[i] = 17919;
}
else
{
	vR[i] = 17918;
}

}
else
{
	if(input[i]==(17917+offset0))
{
	vR[i] = 17917;
}
else
{
	vR[i] = 17916;
}

}

}
else
{
	if(input[i]>(17913+offset0))
{
	if(input[i]==(17915+offset0))
{
	vR[i] = 17915;
}
else
{
	vR[i] = 17914;
}

}
else
{
	if(input[i]==(17913+offset0))
{
	vR[i] = 17913;
}
else
{
	vR[i] = 17912;
}

}

}

}
else
{
	if(input[i]>(17907+offset0))
{
	if(input[i]>(17909+offset0))
{
	if(input[i]==(17911+offset0))
{
	vR[i] = 17911;
}
else
{
	vR[i] = 17910;
}

}
else
{
	if(input[i]==(17909+offset0))
{
	vR[i] = 17909;
}
else
{
	vR[i] = 17908;
}

}

}
else
{
	if(input[i]>(17905+offset0))
{
	if(input[i]==(17907+offset0))
{
	vR[i] = 17907;
}
else
{
	vR[i] = 17906;
}

}
else
{
	if(input[i]==(17905+offset0))
{
	vR[i] = 17905;
}
else
{
	vR[i] = 17904;
}

}

}

}

}
else
{
	if(input[i]>(17895+offset0))
{
	if(input[i]>(17899+offset0))
{
	if(input[i]>(17901+offset0))
{
	if(input[i]==(17903+offset0))
{
	vR[i] = 17903;
}
else
{
	vR[i] = 17902;
}

}
else
{
	if(input[i]==(17901+offset0))
{
	vR[i] = 17901;
}
else
{
	vR[i] = 17900;
}

}

}
else
{
	if(input[i]>(17897+offset0))
{
	if(input[i]==(17899+offset0))
{
	vR[i] = 17899;
}
else
{
	vR[i] = 17898;
}

}
else
{
	if(input[i]==(17897+offset0))
{
	vR[i] = 17897;
}
else
{
	vR[i] = 17896;
}

}

}

}
else
{
	if(input[i]>(17891+offset0))
{
	if(input[i]>(17893+offset0))
{
	if(input[i]==(17895+offset0))
{
	vR[i] = 17895;
}
else
{
	vR[i] = 17894;
}

}
else
{
	if(input[i]==(17893+offset0))
{
	vR[i] = 17893;
}
else
{
	vR[i] = 17892;
}

}

}
else
{
	if(input[i]>(17889+offset0))
{
	if(input[i]==(17891+offset0))
{
	vR[i] = 17891;
}
else
{
	vR[i] = 17890;
}

}
else
{
	if(input[i]==(17889+offset0))
{
	vR[i] = 17889;
}
else
{
	vR[i] = 17888;
}

}

}

}

}

}
else
{
	if(input[i]>(17871+offset0))
{
	if(input[i]>(17879+offset0))
{
	if(input[i]>(17883+offset0))
{
	if(input[i]>(17885+offset0))
{
	if(input[i]==(17887+offset0))
{
	vR[i] = 17887;
}
else
{
	vR[i] = 17886;
}

}
else
{
	if(input[i]==(17885+offset0))
{
	vR[i] = 17885;
}
else
{
	vR[i] = 17884;
}

}

}
else
{
	if(input[i]>(17881+offset0))
{
	if(input[i]==(17883+offset0))
{
	vR[i] = 17883;
}
else
{
	vR[i] = 17882;
}

}
else
{
	if(input[i]==(17881+offset0))
{
	vR[i] = 17881;
}
else
{
	vR[i] = 17880;
}

}

}

}
else
{
	if(input[i]>(17875+offset0))
{
	if(input[i]>(17877+offset0))
{
	if(input[i]==(17879+offset0))
{
	vR[i] = 17879;
}
else
{
	vR[i] = 17878;
}

}
else
{
	if(input[i]==(17877+offset0))
{
	vR[i] = 17877;
}
else
{
	vR[i] = 17876;
}

}

}
else
{
	if(input[i]>(17873+offset0))
{
	if(input[i]==(17875+offset0))
{
	vR[i] = 17875;
}
else
{
	vR[i] = 17874;
}

}
else
{
	if(input[i]==(17873+offset0))
{
	vR[i] = 17873;
}
else
{
	vR[i] = 17872;
}

}

}

}

}
else
{
	if(input[i]>(17863+offset0))
{
	if(input[i]>(17867+offset0))
{
	if(input[i]>(17869+offset0))
{
	if(input[i]==(17871+offset0))
{
	vR[i] = 17871;
}
else
{
	vR[i] = 17870;
}

}
else
{
	if(input[i]==(17869+offset0))
{
	vR[i] = 17869;
}
else
{
	vR[i] = 17868;
}

}

}
else
{
	if(input[i]>(17865+offset0))
{
	if(input[i]==(17867+offset0))
{
	vR[i] = 17867;
}
else
{
	vR[i] = 17866;
}

}
else
{
	if(input[i]==(17865+offset0))
{
	vR[i] = 17865;
}
else
{
	vR[i] = 17864;
}

}

}

}
else
{
	if(input[i]>(17859+offset0))
{
	if(input[i]>(17861+offset0))
{
	if(input[i]==(17863+offset0))
{
	vR[i] = 17863;
}
else
{
	vR[i] = 17862;
}

}
else
{
	if(input[i]==(17861+offset0))
{
	vR[i] = 17861;
}
else
{
	vR[i] = 17860;
}

}

}
else
{
	if(input[i]>(17857+offset0))
{
	if(input[i]==(17859+offset0))
{
	vR[i] = 17859;
}
else
{
	vR[i] = 17858;
}

}
else
{
	if(input[i]==(17857+offset0))
{
	vR[i] = 17857;
}
else
{
	vR[i] = 17856;
}

}

}

}

}

}

}
else
{
	if(input[i]>(17823+offset0))
{
	if(input[i]>(17839+offset0))
{
	if(input[i]>(17847+offset0))
{
	if(input[i]>(17851+offset0))
{
	if(input[i]>(17853+offset0))
{
	if(input[i]==(17855+offset0))
{
	vR[i] = 17855;
}
else
{
	vR[i] = 17854;
}

}
else
{
	if(input[i]==(17853+offset0))
{
	vR[i] = 17853;
}
else
{
	vR[i] = 17852;
}

}

}
else
{
	if(input[i]>(17849+offset0))
{
	if(input[i]==(17851+offset0))
{
	vR[i] = 17851;
}
else
{
	vR[i] = 17850;
}

}
else
{
	if(input[i]==(17849+offset0))
{
	vR[i] = 17849;
}
else
{
	vR[i] = 17848;
}

}

}

}
else
{
	if(input[i]>(17843+offset0))
{
	if(input[i]>(17845+offset0))
{
	if(input[i]==(17847+offset0))
{
	vR[i] = 17847;
}
else
{
	vR[i] = 17846;
}

}
else
{
	if(input[i]==(17845+offset0))
{
	vR[i] = 17845;
}
else
{
	vR[i] = 17844;
}

}

}
else
{
	if(input[i]>(17841+offset0))
{
	if(input[i]==(17843+offset0))
{
	vR[i] = 17843;
}
else
{
	vR[i] = 17842;
}

}
else
{
	if(input[i]==(17841+offset0))
{
	vR[i] = 17841;
}
else
{
	vR[i] = 17840;
}

}

}

}

}
else
{
	if(input[i]>(17831+offset0))
{
	if(input[i]>(17835+offset0))
{
	if(input[i]>(17837+offset0))
{
	if(input[i]==(17839+offset0))
{
	vR[i] = 17839;
}
else
{
	vR[i] = 17838;
}

}
else
{
	if(input[i]==(17837+offset0))
{
	vR[i] = 17837;
}
else
{
	vR[i] = 17836;
}

}

}
else
{
	if(input[i]>(17833+offset0))
{
	if(input[i]==(17835+offset0))
{
	vR[i] = 17835;
}
else
{
	vR[i] = 17834;
}

}
else
{
	if(input[i]==(17833+offset0))
{
	vR[i] = 17833;
}
else
{
	vR[i] = 17832;
}

}

}

}
else
{
	if(input[i]>(17827+offset0))
{
	if(input[i]>(17829+offset0))
{
	if(input[i]==(17831+offset0))
{
	vR[i] = 17831;
}
else
{
	vR[i] = 17830;
}

}
else
{
	if(input[i]==(17829+offset0))
{
	vR[i] = 17829;
}
else
{
	vR[i] = 17828;
}

}

}
else
{
	if(input[i]>(17825+offset0))
{
	if(input[i]==(17827+offset0))
{
	vR[i] = 17827;
}
else
{
	vR[i] = 17826;
}

}
else
{
	if(input[i]==(17825+offset0))
{
	vR[i] = 17825;
}
else
{
	vR[i] = 17824;
}

}

}

}

}

}
else
{
	if(input[i]>(17807+offset0))
{
	if(input[i]>(17815+offset0))
{
	if(input[i]>(17819+offset0))
{
	if(input[i]>(17821+offset0))
{
	if(input[i]==(17823+offset0))
{
	vR[i] = 17823;
}
else
{
	vR[i] = 17822;
}

}
else
{
	if(input[i]==(17821+offset0))
{
	vR[i] = 17821;
}
else
{
	vR[i] = 17820;
}

}

}
else
{
	if(input[i]>(17817+offset0))
{
	if(input[i]==(17819+offset0))
{
	vR[i] = 17819;
}
else
{
	vR[i] = 17818;
}

}
else
{
	if(input[i]==(17817+offset0))
{
	vR[i] = 17817;
}
else
{
	vR[i] = 17816;
}

}

}

}
else
{
	if(input[i]>(17811+offset0))
{
	if(input[i]>(17813+offset0))
{
	if(input[i]==(17815+offset0))
{
	vR[i] = 17815;
}
else
{
	vR[i] = 17814;
}

}
else
{
	if(input[i]==(17813+offset0))
{
	vR[i] = 17813;
}
else
{
	vR[i] = 17812;
}

}

}
else
{
	if(input[i]>(17809+offset0))
{
	if(input[i]==(17811+offset0))
{
	vR[i] = 17811;
}
else
{
	vR[i] = 17810;
}

}
else
{
	if(input[i]==(17809+offset0))
{
	vR[i] = 17809;
}
else
{
	vR[i] = 17808;
}

}

}

}

}
else
{
	if(input[i]>(17799+offset0))
{
	if(input[i]>(17803+offset0))
{
	if(input[i]>(17805+offset0))
{
	if(input[i]==(17807+offset0))
{
	vR[i] = 17807;
}
else
{
	vR[i] = 17806;
}

}
else
{
	if(input[i]==(17805+offset0))
{
	vR[i] = 17805;
}
else
{
	vR[i] = 17804;
}

}

}
else
{
	if(input[i]>(17801+offset0))
{
	if(input[i]==(17803+offset0))
{
	vR[i] = 17803;
}
else
{
	vR[i] = 17802;
}

}
else
{
	if(input[i]==(17801+offset0))
{
	vR[i] = 17801;
}
else
{
	vR[i] = 17800;
}

}

}

}
else
{
	if(input[i]>(17795+offset0))
{
	if(input[i]>(17797+offset0))
{
	if(input[i]==(17799+offset0))
{
	vR[i] = 17799;
}
else
{
	vR[i] = 17798;
}

}
else
{
	if(input[i]==(17797+offset0))
{
	vR[i] = 17797;
}
else
{
	vR[i] = 17796;
}

}

}
else
{
	if(input[i]>(17793+offset0))
{
	if(input[i]==(17795+offset0))
{
	vR[i] = 17795;
}
else
{
	vR[i] = 17794;
}

}
else
{
	if(input[i]==(17793+offset0))
{
	vR[i] = 17793;
}
else
{
	vR[i] = 17792;
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
	if(input[i]>(17727+offset0))
{
	if(input[i]>(17759+offset0))
{
	if(input[i]>(17775+offset0))
{
	if(input[i]>(17783+offset0))
{
	if(input[i]>(17787+offset0))
{
	if(input[i]>(17789+offset0))
{
	if(input[i]==(17791+offset0))
{
	vR[i] = 17791;
}
else
{
	vR[i] = 17790;
}

}
else
{
	if(input[i]==(17789+offset0))
{
	vR[i] = 17789;
}
else
{
	vR[i] = 17788;
}

}

}
else
{
	if(input[i]>(17785+offset0))
{
	if(input[i]==(17787+offset0))
{
	vR[i] = 17787;
}
else
{
	vR[i] = 17786;
}

}
else
{
	if(input[i]==(17785+offset0))
{
	vR[i] = 17785;
}
else
{
	vR[i] = 17784;
}

}

}

}
else
{
	if(input[i]>(17779+offset0))
{
	if(input[i]>(17781+offset0))
{
	if(input[i]==(17783+offset0))
{
	vR[i] = 17783;
}
else
{
	vR[i] = 17782;
}

}
else
{
	if(input[i]==(17781+offset0))
{
	vR[i] = 17781;
}
else
{
	vR[i] = 17780;
}

}

}
else
{
	if(input[i]>(17777+offset0))
{
	if(input[i]==(17779+offset0))
{
	vR[i] = 17779;
}
else
{
	vR[i] = 17778;
}

}
else
{
	if(input[i]==(17777+offset0))
{
	vR[i] = 17777;
}
else
{
	vR[i] = 17776;
}

}

}

}

}
else
{
	if(input[i]>(17767+offset0))
{
	if(input[i]>(17771+offset0))
{
	if(input[i]>(17773+offset0))
{
	if(input[i]==(17775+offset0))
{
	vR[i] = 17775;
}
else
{
	vR[i] = 17774;
}

}
else
{
	if(input[i]==(17773+offset0))
{
	vR[i] = 17773;
}
else
{
	vR[i] = 17772;
}

}

}
else
{
	if(input[i]>(17769+offset0))
{
	if(input[i]==(17771+offset0))
{
	vR[i] = 17771;
}
else
{
	vR[i] = 17770;
}

}
else
{
	if(input[i]==(17769+offset0))
{
	vR[i] = 17769;
}
else
{
	vR[i] = 17768;
}

}

}

}
else
{
	if(input[i]>(17763+offset0))
{
	if(input[i]>(17765+offset0))
{
	if(input[i]==(17767+offset0))
{
	vR[i] = 17767;
}
else
{
	vR[i] = 17766;
}

}
else
{
	if(input[i]==(17765+offset0))
{
	vR[i] = 17765;
}
else
{
	vR[i] = 17764;
}

}

}
else
{
	if(input[i]>(17761+offset0))
{
	if(input[i]==(17763+offset0))
{
	vR[i] = 17763;
}
else
{
	vR[i] = 17762;
}

}
else
{
	if(input[i]==(17761+offset0))
{
	vR[i] = 17761;
}
else
{
	vR[i] = 17760;
}

}

}

}

}

}
else
{
	if(input[i]>(17743+offset0))
{
	if(input[i]>(17751+offset0))
{
	if(input[i]>(17755+offset0))
{
	if(input[i]>(17757+offset0))
{
	if(input[i]==(17759+offset0))
{
	vR[i] = 17759;
}
else
{
	vR[i] = 17758;
}

}
else
{
	if(input[i]==(17757+offset0))
{
	vR[i] = 17757;
}
else
{
	vR[i] = 17756;
}

}

}
else
{
	if(input[i]>(17753+offset0))
{
	if(input[i]==(17755+offset0))
{
	vR[i] = 17755;
}
else
{
	vR[i] = 17754;
}

}
else
{
	if(input[i]==(17753+offset0))
{
	vR[i] = 17753;
}
else
{
	vR[i] = 17752;
}

}

}

}
else
{
	if(input[i]>(17747+offset0))
{
	if(input[i]>(17749+offset0))
{
	if(input[i]==(17751+offset0))
{
	vR[i] = 17751;
}
else
{
	vR[i] = 17750;
}

}
else
{
	if(input[i]==(17749+offset0))
{
	vR[i] = 17749;
}
else
{
	vR[i] = 17748;
}

}

}
else
{
	if(input[i]>(17745+offset0))
{
	if(input[i]==(17747+offset0))
{
	vR[i] = 17747;
}
else
{
	vR[i] = 17746;
}

}
else
{
	if(input[i]==(17745+offset0))
{
	vR[i] = 17745;
}
else
{
	vR[i] = 17744;
}

}

}

}

}
else
{
	if(input[i]>(17735+offset0))
{
	if(input[i]>(17739+offset0))
{
	if(input[i]>(17741+offset0))
{
	if(input[i]==(17743+offset0))
{
	vR[i] = 17743;
}
else
{
	vR[i] = 17742;
}

}
else
{
	if(input[i]==(17741+offset0))
{
	vR[i] = 17741;
}
else
{
	vR[i] = 17740;
}

}

}
else
{
	if(input[i]>(17737+offset0))
{
	if(input[i]==(17739+offset0))
{
	vR[i] = 17739;
}
else
{
	vR[i] = 17738;
}

}
else
{
	if(input[i]==(17737+offset0))
{
	vR[i] = 17737;
}
else
{
	vR[i] = 17736;
}

}

}

}
else
{
	if(input[i]>(17731+offset0))
{
	if(input[i]>(17733+offset0))
{
	if(input[i]==(17735+offset0))
{
	vR[i] = 17735;
}
else
{
	vR[i] = 17734;
}

}
else
{
	if(input[i]==(17733+offset0))
{
	vR[i] = 17733;
}
else
{
	vR[i] = 17732;
}

}

}
else
{
	if(input[i]>(17729+offset0))
{
	if(input[i]==(17731+offset0))
{
	vR[i] = 17731;
}
else
{
	vR[i] = 17730;
}

}
else
{
	if(input[i]==(17729+offset0))
{
	vR[i] = 17729;
}
else
{
	vR[i] = 17728;
}

}

}

}

}

}

}
else
{
	if(input[i]>(17695+offset0))
{
	if(input[i]>(17711+offset0))
{
	if(input[i]>(17719+offset0))
{
	if(input[i]>(17723+offset0))
{
	if(input[i]>(17725+offset0))
{
	if(input[i]==(17727+offset0))
{
	vR[i] = 17727;
}
else
{
	vR[i] = 17726;
}

}
else
{
	if(input[i]==(17725+offset0))
{
	vR[i] = 17725;
}
else
{
	vR[i] = 17724;
}

}

}
else
{
	if(input[i]>(17721+offset0))
{
	if(input[i]==(17723+offset0))
{
	vR[i] = 17723;
}
else
{
	vR[i] = 17722;
}

}
else
{
	if(input[i]==(17721+offset0))
{
	vR[i] = 17721;
}
else
{
	vR[i] = 17720;
}

}

}

}
else
{
	if(input[i]>(17715+offset0))
{
	if(input[i]>(17717+offset0))
{
	if(input[i]==(17719+offset0))
{
	vR[i] = 17719;
}
else
{
	vR[i] = 17718;
}

}
else
{
	if(input[i]==(17717+offset0))
{
	vR[i] = 17717;
}
else
{
	vR[i] = 17716;
}

}

}
else
{
	if(input[i]>(17713+offset0))
{
	if(input[i]==(17715+offset0))
{
	vR[i] = 17715;
}
else
{
	vR[i] = 17714;
}

}
else
{
	if(input[i]==(17713+offset0))
{
	vR[i] = 17713;
}
else
{
	vR[i] = 17712;
}

}

}

}

}
else
{
	if(input[i]>(17703+offset0))
{
	if(input[i]>(17707+offset0))
{
	if(input[i]>(17709+offset0))
{
	if(input[i]==(17711+offset0))
{
	vR[i] = 17711;
}
else
{
	vR[i] = 17710;
}

}
else
{
	if(input[i]==(17709+offset0))
{
	vR[i] = 17709;
}
else
{
	vR[i] = 17708;
}

}

}
else
{
	if(input[i]>(17705+offset0))
{
	if(input[i]==(17707+offset0))
{
	vR[i] = 17707;
}
else
{
	vR[i] = 17706;
}

}
else
{
	if(input[i]==(17705+offset0))
{
	vR[i] = 17705;
}
else
{
	vR[i] = 17704;
}

}

}

}
else
{
	if(input[i]>(17699+offset0))
{
	if(input[i]>(17701+offset0))
{
	if(input[i]==(17703+offset0))
{
	vR[i] = 17703;
}
else
{
	vR[i] = 17702;
}

}
else
{
	if(input[i]==(17701+offset0))
{
	vR[i] = 17701;
}
else
{
	vR[i] = 17700;
}

}

}
else
{
	if(input[i]>(17697+offset0))
{
	if(input[i]==(17699+offset0))
{
	vR[i] = 17699;
}
else
{
	vR[i] = 17698;
}

}
else
{
	if(input[i]==(17697+offset0))
{
	vR[i] = 17697;
}
else
{
	vR[i] = 17696;
}

}

}

}

}

}
else
{
	if(input[i]>(17679+offset0))
{
	if(input[i]>(17687+offset0))
{
	if(input[i]>(17691+offset0))
{
	if(input[i]>(17693+offset0))
{
	if(input[i]==(17695+offset0))
{
	vR[i] = 17695;
}
else
{
	vR[i] = 17694;
}

}
else
{
	if(input[i]==(17693+offset0))
{
	vR[i] = 17693;
}
else
{
	vR[i] = 17692;
}

}

}
else
{
	if(input[i]>(17689+offset0))
{
	if(input[i]==(17691+offset0))
{
	vR[i] = 17691;
}
else
{
	vR[i] = 17690;
}

}
else
{
	if(input[i]==(17689+offset0))
{
	vR[i] = 17689;
}
else
{
	vR[i] = 17688;
}

}

}

}
else
{
	if(input[i]>(17683+offset0))
{
	if(input[i]>(17685+offset0))
{
	if(input[i]==(17687+offset0))
{
	vR[i] = 17687;
}
else
{
	vR[i] = 17686;
}

}
else
{
	if(input[i]==(17685+offset0))
{
	vR[i] = 17685;
}
else
{
	vR[i] = 17684;
}

}

}
else
{
	if(input[i]>(17681+offset0))
{
	if(input[i]==(17683+offset0))
{
	vR[i] = 17683;
}
else
{
	vR[i] = 17682;
}

}
else
{
	if(input[i]==(17681+offset0))
{
	vR[i] = 17681;
}
else
{
	vR[i] = 17680;
}

}

}

}

}
else
{
	if(input[i]>(17671+offset0))
{
	if(input[i]>(17675+offset0))
{
	if(input[i]>(17677+offset0))
{
	if(input[i]==(17679+offset0))
{
	vR[i] = 17679;
}
else
{
	vR[i] = 17678;
}

}
else
{
	if(input[i]==(17677+offset0))
{
	vR[i] = 17677;
}
else
{
	vR[i] = 17676;
}

}

}
else
{
	if(input[i]>(17673+offset0))
{
	if(input[i]==(17675+offset0))
{
	vR[i] = 17675;
}
else
{
	vR[i] = 17674;
}

}
else
{
	if(input[i]==(17673+offset0))
{
	vR[i] = 17673;
}
else
{
	vR[i] = 17672;
}

}

}

}
else
{
	if(input[i]>(17667+offset0))
{
	if(input[i]>(17669+offset0))
{
	if(input[i]==(17671+offset0))
{
	vR[i] = 17671;
}
else
{
	vR[i] = 17670;
}

}
else
{
	if(input[i]==(17669+offset0))
{
	vR[i] = 17669;
}
else
{
	vR[i] = 17668;
}

}

}
else
{
	if(input[i]>(17665+offset0))
{
	if(input[i]==(17667+offset0))
{
	vR[i] = 17667;
}
else
{
	vR[i] = 17666;
}

}
else
{
	if(input[i]==(17665+offset0))
{
	vR[i] = 17665;
}
else
{
	vR[i] = 17664;
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
	if(input[i]>(17535+offset0))
{
	if(input[i]>(17599+offset0))
{
	if(input[i]>(17631+offset0))
{
	if(input[i]>(17647+offset0))
{
	if(input[i]>(17655+offset0))
{
	if(input[i]>(17659+offset0))
{
	if(input[i]>(17661+offset0))
{
	if(input[i]==(17663+offset0))
{
	vR[i] = 17663;
}
else
{
	vR[i] = 17662;
}

}
else
{
	if(input[i]==(17661+offset0))
{
	vR[i] = 17661;
}
else
{
	vR[i] = 17660;
}

}

}
else
{
	if(input[i]>(17657+offset0))
{
	if(input[i]==(17659+offset0))
{
	vR[i] = 17659;
}
else
{
	vR[i] = 17658;
}

}
else
{
	if(input[i]==(17657+offset0))
{
	vR[i] = 17657;
}
else
{
	vR[i] = 17656;
}

}

}

}
else
{
	if(input[i]>(17651+offset0))
{
	if(input[i]>(17653+offset0))
{
	if(input[i]==(17655+offset0))
{
	vR[i] = 17655;
}
else
{
	vR[i] = 17654;
}

}
else
{
	if(input[i]==(17653+offset0))
{
	vR[i] = 17653;
}
else
{
	vR[i] = 17652;
}

}

}
else
{
	if(input[i]>(17649+offset0))
{
	if(input[i]==(17651+offset0))
{
	vR[i] = 17651;
}
else
{
	vR[i] = 17650;
}

}
else
{
	if(input[i]==(17649+offset0))
{
	vR[i] = 17649;
}
else
{
	vR[i] = 17648;
}

}

}

}

}
else
{
	if(input[i]>(17639+offset0))
{
	if(input[i]>(17643+offset0))
{
	if(input[i]>(17645+offset0))
{
	if(input[i]==(17647+offset0))
{
	vR[i] = 17647;
}
else
{
	vR[i] = 17646;
}

}
else
{
	if(input[i]==(17645+offset0))
{
	vR[i] = 17645;
}
else
{
	vR[i] = 17644;
}

}

}
else
{
	if(input[i]>(17641+offset0))
{
	if(input[i]==(17643+offset0))
{
	vR[i] = 17643;
}
else
{
	vR[i] = 17642;
}

}
else
{
	if(input[i]==(17641+offset0))
{
	vR[i] = 17641;
}
else
{
	vR[i] = 17640;
}

}

}

}
else
{
	if(input[i]>(17635+offset0))
{
	if(input[i]>(17637+offset0))
{
	if(input[i]==(17639+offset0))
{
	vR[i] = 17639;
}
else
{
	vR[i] = 17638;
}

}
else
{
	if(input[i]==(17637+offset0))
{
	vR[i] = 17637;
}
else
{
	vR[i] = 17636;
}

}

}
else
{
	if(input[i]>(17633+offset0))
{
	if(input[i]==(17635+offset0))
{
	vR[i] = 17635;
}
else
{
	vR[i] = 17634;
}

}
else
{
	if(input[i]==(17633+offset0))
{
	vR[i] = 17633;
}
else
{
	vR[i] = 17632;
}

}

}

}

}

}
else
{
	if(input[i]>(17615+offset0))
{
	if(input[i]>(17623+offset0))
{
	if(input[i]>(17627+offset0))
{
	if(input[i]>(17629+offset0))
{
	if(input[i]==(17631+offset0))
{
	vR[i] = 17631;
}
else
{
	vR[i] = 17630;
}

}
else
{
	if(input[i]==(17629+offset0))
{
	vR[i] = 17629;
}
else
{
	vR[i] = 17628;
}

}

}
else
{
	if(input[i]>(17625+offset0))
{
	if(input[i]==(17627+offset0))
{
	vR[i] = 17627;
}
else
{
	vR[i] = 17626;
}

}
else
{
	if(input[i]==(17625+offset0))
{
	vR[i] = 17625;
}
else
{
	vR[i] = 17624;
}

}

}

}
else
{
	if(input[i]>(17619+offset0))
{
	if(input[i]>(17621+offset0))
{
	if(input[i]==(17623+offset0))
{
	vR[i] = 17623;
}
else
{
	vR[i] = 17622;
}

}
else
{
	if(input[i]==(17621+offset0))
{
	vR[i] = 17621;
}
else
{
	vR[i] = 17620;
}

}

}
else
{
	if(input[i]>(17617+offset0))
{
	if(input[i]==(17619+offset0))
{
	vR[i] = 17619;
}
else
{
	vR[i] = 17618;
}

}
else
{
	if(input[i]==(17617+offset0))
{
	vR[i] = 17617;
}
else
{
	vR[i] = 17616;
}

}

}

}

}
else
{
	if(input[i]>(17607+offset0))
{
	if(input[i]>(17611+offset0))
{
	if(input[i]>(17613+offset0))
{
	if(input[i]==(17615+offset0))
{
	vR[i] = 17615;
}
else
{
	vR[i] = 17614;
}

}
else
{
	if(input[i]==(17613+offset0))
{
	vR[i] = 17613;
}
else
{
	vR[i] = 17612;
}

}

}
else
{
	if(input[i]>(17609+offset0))
{
	if(input[i]==(17611+offset0))
{
	vR[i] = 17611;
}
else
{
	vR[i] = 17610;
}

}
else
{
	if(input[i]==(17609+offset0))
{
	vR[i] = 17609;
}
else
{
	vR[i] = 17608;
}

}

}

}
else
{
	if(input[i]>(17603+offset0))
{
	if(input[i]>(17605+offset0))
{
	if(input[i]==(17607+offset0))
{
	vR[i] = 17607;
}
else
{
	vR[i] = 17606;
}

}
else
{
	if(input[i]==(17605+offset0))
{
	vR[i] = 17605;
}
else
{
	vR[i] = 17604;
}

}

}
else
{
	if(input[i]>(17601+offset0))
{
	if(input[i]==(17603+offset0))
{
	vR[i] = 17603;
}
else
{
	vR[i] = 17602;
}

}
else
{
	if(input[i]==(17601+offset0))
{
	vR[i] = 17601;
}
else
{
	vR[i] = 17600;
}

}

}

}

}

}

}
else
{
	if(input[i]>(17567+offset0))
{
	if(input[i]>(17583+offset0))
{
	if(input[i]>(17591+offset0))
{
	if(input[i]>(17595+offset0))
{
	if(input[i]>(17597+offset0))
{
	if(input[i]==(17599+offset0))
{
	vR[i] = 17599;
}
else
{
	vR[i] = 17598;
}

}
else
{
	if(input[i]==(17597+offset0))
{
	vR[i] = 17597;
}
else
{
	vR[i] = 17596;
}

}

}
else
{
	if(input[i]>(17593+offset0))
{
	if(input[i]==(17595+offset0))
{
	vR[i] = 17595;
}
else
{
	vR[i] = 17594;
}

}
else
{
	if(input[i]==(17593+offset0))
{
	vR[i] = 17593;
}
else
{
	vR[i] = 17592;
}

}

}

}
else
{
	if(input[i]>(17587+offset0))
{
	if(input[i]>(17589+offset0))
{
	if(input[i]==(17591+offset0))
{
	vR[i] = 17591;
}
else
{
	vR[i] = 17590;
}

}
else
{
	if(input[i]==(17589+offset0))
{
	vR[i] = 17589;
}
else
{
	vR[i] = 17588;
}

}

}
else
{
	if(input[i]>(17585+offset0))
{
	if(input[i]==(17587+offset0))
{
	vR[i] = 17587;
}
else
{
	vR[i] = 17586;
}

}
else
{
	if(input[i]==(17585+offset0))
{
	vR[i] = 17585;
}
else
{
	vR[i] = 17584;
}

}

}

}

}
else
{
	if(input[i]>(17575+offset0))
{
	if(input[i]>(17579+offset0))
{
	if(input[i]>(17581+offset0))
{
	if(input[i]==(17583+offset0))
{
	vR[i] = 17583;
}
else
{
	vR[i] = 17582;
}

}
else
{
	if(input[i]==(17581+offset0))
{
	vR[i] = 17581;
}
else
{
	vR[i] = 17580;
}

}

}
else
{
	if(input[i]>(17577+offset0))
{
	if(input[i]==(17579+offset0))
{
	vR[i] = 17579;
}
else
{
	vR[i] = 17578;
}

}
else
{
	if(input[i]==(17577+offset0))
{
	vR[i] = 17577;
}
else
{
	vR[i] = 17576;
}

}

}

}
else
{
	if(input[i]>(17571+offset0))
{
	if(input[i]>(17573+offset0))
{
	if(input[i]==(17575+offset0))
{
	vR[i] = 17575;
}
else
{
	vR[i] = 17574;
}

}
else
{
	if(input[i]==(17573+offset0))
{
	vR[i] = 17573;
}
else
{
	vR[i] = 17572;
}

}

}
else
{
	if(input[i]>(17569+offset0))
{
	if(input[i]==(17571+offset0))
{
	vR[i] = 17571;
}
else
{
	vR[i] = 17570;
}

}
else
{
	if(input[i]==(17569+offset0))
{
	vR[i] = 17569;
}
else
{
	vR[i] = 17568;
}

}

}

}

}

}
else
{
	if(input[i]>(17551+offset0))
{
	if(input[i]>(17559+offset0))
{
	if(input[i]>(17563+offset0))
{
	if(input[i]>(17565+offset0))
{
	if(input[i]==(17567+offset0))
{
	vR[i] = 17567;
}
else
{
	vR[i] = 17566;
}

}
else
{
	if(input[i]==(17565+offset0))
{
	vR[i] = 17565;
}
else
{
	vR[i] = 17564;
}

}

}
else
{
	if(input[i]>(17561+offset0))
{
	if(input[i]==(17563+offset0))
{
	vR[i] = 17563;
}
else
{
	vR[i] = 17562;
}

}
else
{
	if(input[i]==(17561+offset0))
{
	vR[i] = 17561;
}
else
{
	vR[i] = 17560;
}

}

}

}
else
{
	if(input[i]>(17555+offset0))
{
	if(input[i]>(17557+offset0))
{
	if(input[i]==(17559+offset0))
{
	vR[i] = 17559;
}
else
{
	vR[i] = 17558;
}

}
else
{
	if(input[i]==(17557+offset0))
{
	vR[i] = 17557;
}
else
{
	vR[i] = 17556;
}

}

}
else
{
	if(input[i]>(17553+offset0))
{
	if(input[i]==(17555+offset0))
{
	vR[i] = 17555;
}
else
{
	vR[i] = 17554;
}

}
else
{
	if(input[i]==(17553+offset0))
{
	vR[i] = 17553;
}
else
{
	vR[i] = 17552;
}

}

}

}

}
else
{
	if(input[i]>(17543+offset0))
{
	if(input[i]>(17547+offset0))
{
	if(input[i]>(17549+offset0))
{
	if(input[i]==(17551+offset0))
{
	vR[i] = 17551;
}
else
{
	vR[i] = 17550;
}

}
else
{
	if(input[i]==(17549+offset0))
{
	vR[i] = 17549;
}
else
{
	vR[i] = 17548;
}

}

}
else
{
	if(input[i]>(17545+offset0))
{
	if(input[i]==(17547+offset0))
{
	vR[i] = 17547;
}
else
{
	vR[i] = 17546;
}

}
else
{
	if(input[i]==(17545+offset0))
{
	vR[i] = 17545;
}
else
{
	vR[i] = 17544;
}

}

}

}
else
{
	if(input[i]>(17539+offset0))
{
	if(input[i]>(17541+offset0))
{
	if(input[i]==(17543+offset0))
{
	vR[i] = 17543;
}
else
{
	vR[i] = 17542;
}

}
else
{
	if(input[i]==(17541+offset0))
{
	vR[i] = 17541;
}
else
{
	vR[i] = 17540;
}

}

}
else
{
	if(input[i]>(17537+offset0))
{
	if(input[i]==(17539+offset0))
{
	vR[i] = 17539;
}
else
{
	vR[i] = 17538;
}

}
else
{
	if(input[i]==(17537+offset0))
{
	vR[i] = 17537;
}
else
{
	vR[i] = 17536;
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
	if(input[i]>(17471+offset0))
{
	if(input[i]>(17503+offset0))
{
	if(input[i]>(17519+offset0))
{
	if(input[i]>(17527+offset0))
{
	if(input[i]>(17531+offset0))
{
	if(input[i]>(17533+offset0))
{
	if(input[i]==(17535+offset0))
{
	vR[i] = 17535;
}
else
{
	vR[i] = 17534;
}

}
else
{
	if(input[i]==(17533+offset0))
{
	vR[i] = 17533;
}
else
{
	vR[i] = 17532;
}

}

}
else
{
	if(input[i]>(17529+offset0))
{
	if(input[i]==(17531+offset0))
{
	vR[i] = 17531;
}
else
{
	vR[i] = 17530;
}

}
else
{
	if(input[i]==(17529+offset0))
{
	vR[i] = 17529;
}
else
{
	vR[i] = 17528;
}

}

}

}
else
{
	if(input[i]>(17523+offset0))
{
	if(input[i]>(17525+offset0))
{
	if(input[i]==(17527+offset0))
{
	vR[i] = 17527;
}
else
{
	vR[i] = 17526;
}

}
else
{
	if(input[i]==(17525+offset0))
{
	vR[i] = 17525;
}
else
{
	vR[i] = 17524;
}

}

}
else
{
	if(input[i]>(17521+offset0))
{
	if(input[i]==(17523+offset0))
{
	vR[i] = 17523;
}
else
{
	vR[i] = 17522;
}

}
else
{
	if(input[i]==(17521+offset0))
{
	vR[i] = 17521;
}
else
{
	vR[i] = 17520;
}

}

}

}

}
else
{
	if(input[i]>(17511+offset0))
{
	if(input[i]>(17515+offset0))
{
	if(input[i]>(17517+offset0))
{
	if(input[i]==(17519+offset0))
{
	vR[i] = 17519;
}
else
{
	vR[i] = 17518;
}

}
else
{
	if(input[i]==(17517+offset0))
{
	vR[i] = 17517;
}
else
{
	vR[i] = 17516;
}

}

}
else
{
	if(input[i]>(17513+offset0))
{
	if(input[i]==(17515+offset0))
{
	vR[i] = 17515;
}
else
{
	vR[i] = 17514;
}

}
else
{
	if(input[i]==(17513+offset0))
{
	vR[i] = 17513;
}
else
{
	vR[i] = 17512;
}

}

}

}
else
{
	if(input[i]>(17507+offset0))
{
	if(input[i]>(17509+offset0))
{
	if(input[i]==(17511+offset0))
{
	vR[i] = 17511;
}
else
{
	vR[i] = 17510;
}

}
else
{
	if(input[i]==(17509+offset0))
{
	vR[i] = 17509;
}
else
{
	vR[i] = 17508;
}

}

}
else
{
	if(input[i]>(17505+offset0))
{
	if(input[i]==(17507+offset0))
{
	vR[i] = 17507;
}
else
{
	vR[i] = 17506;
}

}
else
{
	if(input[i]==(17505+offset0))
{
	vR[i] = 17505;
}
else
{
	vR[i] = 17504;
}

}

}

}

}

}
else
{
	if(input[i]>(17487+offset0))
{
	if(input[i]>(17495+offset0))
{
	if(input[i]>(17499+offset0))
{
	if(input[i]>(17501+offset0))
{
	if(input[i]==(17503+offset0))
{
	vR[i] = 17503;
}
else
{
	vR[i] = 17502;
}

}
else
{
	if(input[i]==(17501+offset0))
{
	vR[i] = 17501;
}
else
{
	vR[i] = 17500;
}

}

}
else
{
	if(input[i]>(17497+offset0))
{
	if(input[i]==(17499+offset0))
{
	vR[i] = 17499;
}
else
{
	vR[i] = 17498;
}

}
else
{
	if(input[i]==(17497+offset0))
{
	vR[i] = 17497;
}
else
{
	vR[i] = 17496;
}

}

}

}
else
{
	if(input[i]>(17491+offset0))
{
	if(input[i]>(17493+offset0))
{
	if(input[i]==(17495+offset0))
{
	vR[i] = 17495;
}
else
{
	vR[i] = 17494;
}

}
else
{
	if(input[i]==(17493+offset0))
{
	vR[i] = 17493;
}
else
{
	vR[i] = 17492;
}

}

}
else
{
	if(input[i]>(17489+offset0))
{
	if(input[i]==(17491+offset0))
{
	vR[i] = 17491;
}
else
{
	vR[i] = 17490;
}

}
else
{
	if(input[i]==(17489+offset0))
{
	vR[i] = 17489;
}
else
{
	vR[i] = 17488;
}

}

}

}

}
else
{
	if(input[i]>(17479+offset0))
{
	if(input[i]>(17483+offset0))
{
	if(input[i]>(17485+offset0))
{
	if(input[i]==(17487+offset0))
{
	vR[i] = 17487;
}
else
{
	vR[i] = 17486;
}

}
else
{
	if(input[i]==(17485+offset0))
{
	vR[i] = 17485;
}
else
{
	vR[i] = 17484;
}

}

}
else
{
	if(input[i]>(17481+offset0))
{
	if(input[i]==(17483+offset0))
{
	vR[i] = 17483;
}
else
{
