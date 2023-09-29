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

#define _MOD 4096
#define _4TREE
#define EXP_NAME "_RF_4095IF_4TREE_1INPUT__WORST_50000000"

// RF_with_if

__global__ void RF_kernel(float *input, const int n, const int offset0, const int offset1, const int offset2, const int offset3, float *vR)
{
	int i = blockIdx.x * blockDim.x + threadIdx.x;
	if (i < n)
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


if(input[i]>(2047+offset1))
{
	if(input[i]>(3071+offset1))
{
	if(input[i]>(3583+offset1))
{
	if(input[i]>(3839+offset1))
{
	if(input[i]>(3967+offset1))
{
	if(input[i]>(4031+offset1))
{
	if(input[i]>(4063+offset1))
{
	if(input[i]>(4079+offset1))
{
	if(input[i]>(4087+offset1))
{
	if(input[i]>(4091+offset1))
{
	if(input[i]>(4093+offset1))
{
	if(input[i]==(4095+offset1))
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
	if(input[i]==(4093+offset1))
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
	if(input[i]>(4089+offset1))
{
	if(input[i]==(4091+offset1))
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
	if(input[i]==(4089+offset1))
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
	if(input[i]>(4083+offset1))
{
	if(input[i]>(4085+offset1))
{
	if(input[i]==(4087+offset1))
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
	if(input[i]==(4085+offset1))
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
	if(input[i]>(4081+offset1))
{
	if(input[i]==(4083+offset1))
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
	if(input[i]==(4081+offset1))
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
	if(input[i]>(4071+offset1))
{
	if(input[i]>(4075+offset1))
{
	if(input[i]>(4077+offset1))
{
	if(input[i]==(4079+offset1))
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
	if(input[i]==(4077+offset1))
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
	if(input[i]>(4073+offset1))
{
	if(input[i]==(4075+offset1))
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
	if(input[i]==(4073+offset1))
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
	if(input[i]>(4067+offset1))
{
	if(input[i]>(4069+offset1))
{
	if(input[i]==(4071+offset1))
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
	if(input[i]==(4069+offset1))
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
	if(input[i]>(4065+offset1))
{
	if(input[i]==(4067+offset1))
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
	if(input[i]==(4065+offset1))
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
	if(input[i]>(4047+offset1))
{
	if(input[i]>(4055+offset1))
{
	if(input[i]>(4059+offset1))
{
	if(input[i]>(4061+offset1))
{
	if(input[i]==(4063+offset1))
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
	if(input[i]==(4061+offset1))
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
	if(input[i]>(4057+offset1))
{
	if(input[i]==(4059+offset1))
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
	if(input[i]==(4057+offset1))
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
	if(input[i]>(4051+offset1))
{
	if(input[i]>(4053+offset1))
{
	if(input[i]==(4055+offset1))
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
	if(input[i]==(4053+offset1))
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
	if(input[i]>(4049+offset1))
{
	if(input[i]==(4051+offset1))
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
	if(input[i]==(4049+offset1))
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
	if(input[i]>(4039+offset1))
{
	if(input[i]>(4043+offset1))
{
	if(input[i]>(4045+offset1))
{
	if(input[i]==(4047+offset1))
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
	if(input[i]==(4045+offset1))
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
	if(input[i]>(4041+offset1))
{
	if(input[i]==(4043+offset1))
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
	if(input[i]==(4041+offset1))
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
	if(input[i]>(4035+offset1))
{
	if(input[i]>(4037+offset1))
{
	if(input[i]==(4039+offset1))
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
	if(input[i]==(4037+offset1))
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
	if(input[i]>(4033+offset1))
{
	if(input[i]==(4035+offset1))
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
	if(input[i]==(4033+offset1))
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
	if(input[i]>(3999+offset1))
{
	if(input[i]>(4015+offset1))
{
	if(input[i]>(4023+offset1))
{
	if(input[i]>(4027+offset1))
{
	if(input[i]>(4029+offset1))
{
	if(input[i]==(4031+offset1))
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
	if(input[i]==(4029+offset1))
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
	if(input[i]>(4025+offset1))
{
	if(input[i]==(4027+offset1))
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
	if(input[i]==(4025+offset1))
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
	if(input[i]>(4019+offset1))
{
	if(input[i]>(4021+offset1))
{
	if(input[i]==(4023+offset1))
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
	if(input[i]==(4021+offset1))
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
	if(input[i]>(4017+offset1))
{
	if(input[i]==(4019+offset1))
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
	if(input[i]==(4017+offset1))
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
	if(input[i]>(4007+offset1))
{
	if(input[i]>(4011+offset1))
{
	if(input[i]>(4013+offset1))
{
	if(input[i]==(4015+offset1))
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
	if(input[i]==(4013+offset1))
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
	if(input[i]>(4009+offset1))
{
	if(input[i]==(4011+offset1))
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
	if(input[i]==(4009+offset1))
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
	if(input[i]>(4003+offset1))
{
	if(input[i]>(4005+offset1))
{
	if(input[i]==(4007+offset1))
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
	if(input[i]==(4005+offset1))
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
	if(input[i]>(4001+offset1))
{
	if(input[i]==(4003+offset1))
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
	if(input[i]==(4001+offset1))
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
	if(input[i]>(3983+offset1))
{
	if(input[i]>(3991+offset1))
{
	if(input[i]>(3995+offset1))
{
	if(input[i]>(3997+offset1))
{
	if(input[i]==(3999+offset1))
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
	if(input[i]==(3997+offset1))
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
	if(input[i]>(3993+offset1))
{
	if(input[i]==(3995+offset1))
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
	if(input[i]==(3993+offset1))
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
	if(input[i]>(3987+offset1))
{
	if(input[i]>(3989+offset1))
{
	if(input[i]==(3991+offset1))
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
	if(input[i]==(3989+offset1))
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
	if(input[i]>(3985+offset1))
{
	if(input[i]==(3987+offset1))
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
	if(input[i]==(3985+offset1))
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
	if(input[i]>(3975+offset1))
{
	if(input[i]>(3979+offset1))
{
	if(input[i]>(3981+offset1))
{
	if(input[i]==(3983+offset1))
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
	if(input[i]==(3981+offset1))
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
	if(input[i]>(3977+offset1))
{
	if(input[i]==(3979+offset1))
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
	if(input[i]==(3977+offset1))
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
	if(input[i]>(3971+offset1))
{
	if(input[i]>(3973+offset1))
{
	if(input[i]==(3975+offset1))
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
	if(input[i]==(3973+offset1))
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
	if(input[i]>(3969+offset1))
{
	if(input[i]==(3971+offset1))
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
	if(input[i]==(3969+offset1))
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
	if(input[i]>(3903+offset1))
{
	if(input[i]>(3935+offset1))
{
	if(input[i]>(3951+offset1))
{
	if(input[i]>(3959+offset1))
{
	if(input[i]>(3963+offset1))
{
	if(input[i]>(3965+offset1))
{
	if(input[i]==(3967+offset1))
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
	if(input[i]==(3965+offset1))
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
	if(input[i]>(3961+offset1))
{
	if(input[i]==(3963+offset1))
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
	if(input[i]==(3961+offset1))
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
	if(input[i]>(3955+offset1))
{
	if(input[i]>(3957+offset1))
{
	if(input[i]==(3959+offset1))
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
	if(input[i]==(3957+offset1))
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
	if(input[i]>(3953+offset1))
{
	if(input[i]==(3955+offset1))
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
	if(input[i]==(3953+offset1))
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
	if(input[i]>(3943+offset1))
{
	if(input[i]>(3947+offset1))
{
	if(input[i]>(3949+offset1))
{
	if(input[i]==(3951+offset1))
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
	if(input[i]==(3949+offset1))
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
	if(input[i]>(3945+offset1))
{
	if(input[i]==(3947+offset1))
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
	if(input[i]==(3945+offset1))
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
	if(input[i]>(3939+offset1))
{
	if(input[i]>(3941+offset1))
{
	if(input[i]==(3943+offset1))
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
	if(input[i]==(3941+offset1))
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
	if(input[i]>(3937+offset1))
{
	if(input[i]==(3939+offset1))
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
	if(input[i]==(3937+offset1))
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
	if(input[i]>(3919+offset1))
{
	if(input[i]>(3927+offset1))
{
	if(input[i]>(3931+offset1))
{
	if(input[i]>(3933+offset1))
{
	if(input[i]==(3935+offset1))
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
	if(input[i]==(3933+offset1))
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
	if(input[i]>(3929+offset1))
{
	if(input[i]==(3931+offset1))
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
	if(input[i]==(3929+offset1))
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
	if(input[i]>(3923+offset1))
{
	if(input[i]>(3925+offset1))
{
	if(input[i]==(3927+offset1))
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
	if(input[i]==(3925+offset1))
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
	if(input[i]>(3921+offset1))
{
	if(input[i]==(3923+offset1))
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
	if(input[i]==(3921+offset1))
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
	if(input[i]>(3911+offset1))
{
	if(input[i]>(3915+offset1))
{
	if(input[i]>(3917+offset1))
{
	if(input[i]==(3919+offset1))
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
	if(input[i]==(3917+offset1))
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
	if(input[i]>(3913+offset1))
{
	if(input[i]==(3915+offset1))
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
	if(input[i]==(3913+offset1))
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
	if(input[i]>(3907+offset1))
{
	if(input[i]>(3909+offset1))
{
	if(input[i]==(3911+offset1))
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
	if(input[i]==(3909+offset1))
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
	if(input[i]>(3905+offset1))
{
	if(input[i]==(3907+offset1))
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
	if(input[i]==(3905+offset1))
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
	if(input[i]>(3871+offset1))
{
	if(input[i]>(3887+offset1))
{
	if(input[i]>(3895+offset1))
{
	if(input[i]>(3899+offset1))
{
	if(input[i]>(3901+offset1))
{
	if(input[i]==(3903+offset1))
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
	if(input[i]==(3901+offset1))
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
	if(input[i]>(3897+offset1))
{
	if(input[i]==(3899+offset1))
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
	if(input[i]==(3897+offset1))
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
	if(input[i]>(3891+offset1))
{
	if(input[i]>(3893+offset1))
{
	if(input[i]==(3895+offset1))
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
	if(input[i]==(3893+offset1))
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
	if(input[i]>(3889+offset1))
{
	if(input[i]==(3891+offset1))
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
	if(input[i]==(3889+offset1))
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
	if(input[i]>(3879+offset1))
{
	if(input[i]>(3883+offset1))
{
	if(input[i]>(3885+offset1))
{
	if(input[i]==(3887+offset1))
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
	if(input[i]==(3885+offset1))
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
	if(input[i]>(3881+offset1))
{
	if(input[i]==(3883+offset1))
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
	if(input[i]==(3881+offset1))
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
	if(input[i]>(3875+offset1))
{
	if(input[i]>(3877+offset1))
{
	if(input[i]==(3879+offset1))
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
	if(input[i]==(3877+offset1))
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
	if(input[i]>(3873+offset1))
{
	if(input[i]==(3875+offset1))
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
	if(input[i]==(3873+offset1))
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
	if(input[i]>(3855+offset1))
{
	if(input[i]>(3863+offset1))
{
	if(input[i]>(3867+offset1))
{
	if(input[i]>(3869+offset1))
{
	if(input[i]==(3871+offset1))
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
	if(input[i]==(3869+offset1))
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
	if(input[i]>(3865+offset1))
{
	if(input[i]==(3867+offset1))
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
	if(input[i]==(3865+offset1))
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
	if(input[i]>(3859+offset1))
{
	if(input[i]>(3861+offset1))
{
	if(input[i]==(3863+offset1))
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
	if(input[i]==(3861+offset1))
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
	if(input[i]>(3857+offset1))
{
	if(input[i]==(3859+offset1))
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
	if(input[i]==(3857+offset1))
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
	if(input[i]>(3847+offset1))
{
	if(input[i]>(3851+offset1))
{
	if(input[i]>(3853+offset1))
{
	if(input[i]==(3855+offset1))
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
	if(input[i]==(3853+offset1))
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
	if(input[i]>(3849+offset1))
{
	if(input[i]==(3851+offset1))
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
	if(input[i]==(3849+offset1))
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
	if(input[i]>(3843+offset1))
{
	if(input[i]>(3845+offset1))
{
	if(input[i]==(3847+offset1))
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
	if(input[i]==(3845+offset1))
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
	if(input[i]>(3841+offset1))
{
	if(input[i]==(3843+offset1))
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
	if(input[i]==(3841+offset1))
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
	if(input[i]>(3711+offset1))
{
	if(input[i]>(3775+offset1))
{
	if(input[i]>(3807+offset1))
{
	if(input[i]>(3823+offset1))
{
	if(input[i]>(3831+offset1))
{
	if(input[i]>(3835+offset1))
{
	if(input[i]>(3837+offset1))
{
	if(input[i]==(3839+offset1))
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
	if(input[i]==(3837+offset1))
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
	if(input[i]>(3833+offset1))
{
	if(input[i]==(3835+offset1))
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
	if(input[i]==(3833+offset1))
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
	if(input[i]>(3827+offset1))
{
	if(input[i]>(3829+offset1))
{
	if(input[i]==(3831+offset1))
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
	if(input[i]==(3829+offset1))
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
	if(input[i]>(3825+offset1))
{
	if(input[i]==(3827+offset1))
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
	if(input[i]==(3825+offset1))
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
	if(input[i]>(3815+offset1))
{
	if(input[i]>(3819+offset1))
{
	if(input[i]>(3821+offset1))
{
	if(input[i]==(3823+offset1))
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
	if(input[i]==(3821+offset1))
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
	if(input[i]>(3817+offset1))
{
	if(input[i]==(3819+offset1))
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
	if(input[i]==(3817+offset1))
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
	if(input[i]>(3811+offset1))
{
	if(input[i]>(3813+offset1))
{
	if(input[i]==(3815+offset1))
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
	if(input[i]==(3813+offset1))
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
	if(input[i]>(3809+offset1))
{
	if(input[i]==(3811+offset1))
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
	if(input[i]==(3809+offset1))
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
	if(input[i]>(3791+offset1))
{
	if(input[i]>(3799+offset1))
{
	if(input[i]>(3803+offset1))
{
	if(input[i]>(3805+offset1))
{
	if(input[i]==(3807+offset1))
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
	if(input[i]==(3805+offset1))
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
	if(input[i]>(3801+offset1))
{
	if(input[i]==(3803+offset1))
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
	if(input[i]==(3801+offset1))
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
	if(input[i]>(3795+offset1))
{
	if(input[i]>(3797+offset1))
{
	if(input[i]==(3799+offset1))
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
	if(input[i]==(3797+offset1))
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
	if(input[i]>(3793+offset1))
{
	if(input[i]==(3795+offset1))
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
	if(input[i]==(3793+offset1))
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
	if(input[i]>(3783+offset1))
{
	if(input[i]>(3787+offset1))
{
	if(input[i]>(3789+offset1))
{
	if(input[i]==(3791+offset1))
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
	if(input[i]==(3789+offset1))
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
	if(input[i]>(3785+offset1))
{
	if(input[i]==(3787+offset1))
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
	if(input[i]==(3785+offset1))
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
	if(input[i]>(3779+offset1))
{
	if(input[i]>(3781+offset1))
{
	if(input[i]==(3783+offset1))
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
	if(input[i]==(3781+offset1))
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
	if(input[i]>(3777+offset1))
{
	if(input[i]==(3779+offset1))
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
	if(input[i]==(3777+offset1))
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
	if(input[i]>(3743+offset1))
{
	if(input[i]>(3759+offset1))
{
	if(input[i]>(3767+offset1))
{
	if(input[i]>(3771+offset1))
{
	if(input[i]>(3773+offset1))
{
	if(input[i]==(3775+offset1))
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
	if(input[i]==(3773+offset1))
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
	if(input[i]>(3769+offset1))
{
	if(input[i]==(3771+offset1))
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
	if(input[i]==(3769+offset1))
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
	if(input[i]>(3763+offset1))
{
	if(input[i]>(3765+offset1))
{
	if(input[i]==(3767+offset1))
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
	if(input[i]==(3765+offset1))
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
	if(input[i]>(3761+offset1))
{
	if(input[i]==(3763+offset1))
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
	if(input[i]==(3761+offset1))
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
	if(input[i]>(3751+offset1))
{
	if(input[i]>(3755+offset1))
{
	if(input[i]>(3757+offset1))
{
	if(input[i]==(3759+offset1))
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
	if(input[i]==(3757+offset1))
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
	if(input[i]>(3753+offset1))
{
	if(input[i]==(3755+offset1))
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
	if(input[i]==(3753+offset1))
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
	if(input[i]>(3747+offset1))
{
	if(input[i]>(3749+offset1))
{
	if(input[i]==(3751+offset1))
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
	if(input[i]==(3749+offset1))
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
	if(input[i]>(3745+offset1))
{
	if(input[i]==(3747+offset1))
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
	if(input[i]==(3745+offset1))
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
	if(input[i]>(3727+offset1))
{
	if(input[i]>(3735+offset1))
{
	if(input[i]>(3739+offset1))
{
	if(input[i]>(3741+offset1))
{
	if(input[i]==(3743+offset1))
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
	if(input[i]==(3741+offset1))
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
	if(input[i]>(3737+offset1))
{
	if(input[i]==(3739+offset1))
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
	if(input[i]==(3737+offset1))
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
	if(input[i]>(3731+offset1))
{
	if(input[i]>(3733+offset1))
{
	if(input[i]==(3735+offset1))
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
	if(input[i]==(3733+offset1))
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
	if(input[i]>(3729+offset1))
{
	if(input[i]==(3731+offset1))
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
	if(input[i]==(3729+offset1))
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
	if(input[i]>(3719+offset1))
{
	if(input[i]>(3723+offset1))
{
	if(input[i]>(3725+offset1))
{
	if(input[i]==(3727+offset1))
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
	if(input[i]==(3725+offset1))
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
	if(input[i]>(3721+offset1))
{
	if(input[i]==(3723+offset1))
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
	if(input[i]==(3721+offset1))
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
	if(input[i]>(3715+offset1))
{
	if(input[i]>(3717+offset1))
{
	if(input[i]==(3719+offset1))
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
	if(input[i]==(3717+offset1))
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
	if(input[i]>(3713+offset1))
{
	if(input[i]==(3715+offset1))
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
	if(input[i]==(3713+offset1))
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
	if(input[i]>(3647+offset1))
{
	if(input[i]>(3679+offset1))
{
	if(input[i]>(3695+offset1))
{
	if(input[i]>(3703+offset1))
{
	if(input[i]>(3707+offset1))
{
	if(input[i]>(3709+offset1))
{
	if(input[i]==(3711+offset1))
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
	if(input[i]==(3709+offset1))
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
	if(input[i]>(3705+offset1))
{
	if(input[i]==(3707+offset1))
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
	if(input[i]==(3705+offset1))
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
	if(input[i]>(3699+offset1))
{
	if(input[i]>(3701+offset1))
{
	if(input[i]==(3703+offset1))
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
	if(input[i]==(3701+offset1))
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
	if(input[i]>(3697+offset1))
{
	if(input[i]==(3699+offset1))
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
	if(input[i]==(3697+offset1))
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
	if(input[i]>(3687+offset1))
{
	if(input[i]>(3691+offset1))
{
	if(input[i]>(3693+offset1))
{
	if(input[i]==(3695+offset1))
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
	if(input[i]==(3693+offset1))
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
	if(input[i]>(3689+offset1))
{
	if(input[i]==(3691+offset1))
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
	if(input[i]==(3689+offset1))
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
	if(input[i]>(3683+offset1))
{
	if(input[i]>(3685+offset1))
{
	if(input[i]==(3687+offset1))
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
	if(input[i]==(3685+offset1))
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
	if(input[i]>(3681+offset1))
{
	if(input[i]==(3683+offset1))
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
	if(input[i]==(3681+offset1))
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
	if(input[i]>(3663+offset1))
{
	if(input[i]>(3671+offset1))
{
	if(input[i]>(3675+offset1))
{
	if(input[i]>(3677+offset1))
{
	if(input[i]==(3679+offset1))
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
	if(input[i]==(3677+offset1))
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
	if(input[i]>(3673+offset1))
{
	if(input[i]==(3675+offset1))
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
	if(input[i]==(3673+offset1))
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
	if(input[i]>(3667+offset1))
{
	if(input[i]>(3669+offset1))
{
	if(input[i]==(3671+offset1))
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
	if(input[i]==(3669+offset1))
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
	if(input[i]>(3665+offset1))
{
	if(input[i]==(3667+offset1))
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
	if(input[i]==(3665+offset1))
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
	if(input[i]>(3655+offset1))
{
	if(input[i]>(3659+offset1))
{
	if(input[i]>(3661+offset1))
{
	if(input[i]==(3663+offset1))
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
	if(input[i]==(3661+offset1))
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
	if(input[i]>(3657+offset1))
{
	if(input[i]==(3659+offset1))
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
	if(input[i]==(3657+offset1))
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
	if(input[i]>(3651+offset1))
{
	if(input[i]>(3653+offset1))
{
	if(input[i]==(3655+offset1))
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
	if(input[i]==(3653+offset1))
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
	if(input[i]>(3649+offset1))
{
	if(input[i]==(3651+offset1))
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
	if(input[i]==(3649+offset1))
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
	if(input[i]>(3615+offset1))
{
	if(input[i]>(3631+offset1))
{
	if(input[i]>(3639+offset1))
{
	if(input[i]>(3643+offset1))
{
	if(input[i]>(3645+offset1))
{
	if(input[i]==(3647+offset1))
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
	if(input[i]==(3645+offset1))
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
	if(input[i]>(3641+offset1))
{
	if(input[i]==(3643+offset1))
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
	if(input[i]==(3641+offset1))
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
	if(input[i]>(3635+offset1))
{
	if(input[i]>(3637+offset1))
{
	if(input[i]==(3639+offset1))
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
	if(input[i]==(3637+offset1))
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
	if(input[i]>(3633+offset1))
{
	if(input[i]==(3635+offset1))
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
	if(input[i]==(3633+offset1))
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
	if(input[i]>(3623+offset1))
{
	if(input[i]>(3627+offset1))
{
	if(input[i]>(3629+offset1))
{
	if(input[i]==(3631+offset1))
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
	if(input[i]==(3629+offset1))
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
	if(input[i]>(3625+offset1))
{
	if(input[i]==(3627+offset1))
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
	if(input[i]==(3625+offset1))
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
	if(input[i]>(3619+offset1))
{
	if(input[i]>(3621+offset1))
{
	if(input[i]==(3623+offset1))
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
	if(input[i]==(3621+offset1))
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
	if(input[i]>(3617+offset1))
{
	if(input[i]==(3619+offset1))
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
	if(input[i]==(3617+offset1))
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
	if(input[i]>(3599+offset1))
{
	if(input[i]>(3607+offset1))
{
	if(input[i]>(3611+offset1))
{
	if(input[i]>(3613+offset1))
{
	if(input[i]==(3615+offset1))
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
	if(input[i]==(3613+offset1))
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
	if(input[i]>(3609+offset1))
{
	if(input[i]==(3611+offset1))
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
	if(input[i]==(3609+offset1))
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
	if(input[i]>(3603+offset1))
{
	if(input[i]>(3605+offset1))
{
	if(input[i]==(3607+offset1))
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
	if(input[i]==(3605+offset1))
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
	if(input[i]>(3601+offset1))
{
	if(input[i]==(3603+offset1))
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
	if(input[i]==(3601+offset1))
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
	if(input[i]>(3591+offset1))
{
	if(input[i]>(3595+offset1))
{
	if(input[i]>(3597+offset1))
{
	if(input[i]==(3599+offset1))
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
	if(input[i]==(3597+offset1))
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
	if(input[i]>(3593+offset1))
{
	if(input[i]==(3595+offset1))
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
	if(input[i]==(3593+offset1))
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
	if(input[i]>(3587+offset1))
{
	if(input[i]>(3589+offset1))
{
	if(input[i]==(3591+offset1))
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
	if(input[i]==(3589+offset1))
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
	if(input[i]>(3585+offset1))
{
	if(input[i]==(3587+offset1))
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
	if(input[i]==(3585+offset1))
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
	if(input[i]>(3327+offset1))
{
	if(input[i]>(3455+offset1))
{
	if(input[i]>(3519+offset1))
{
	if(input[i]>(3551+offset1))
{
	if(input[i]>(3567+offset1))
{
	if(input[i]>(3575+offset1))
{
	if(input[i]>(3579+offset1))
{
	if(input[i]>(3581+offset1))
{
	if(input[i]==(3583+offset1))
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
	if(input[i]==(3581+offset1))
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
	if(input[i]>(3577+offset1))
{
	if(input[i]==(3579+offset1))
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
	if(input[i]==(3577+offset1))
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
	if(input[i]>(3571+offset1))
{
	if(input[i]>(3573+offset1))
{
	if(input[i]==(3575+offset1))
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
	if(input[i]==(3573+offset1))
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
	if(input[i]>(3569+offset1))
{
	if(input[i]==(3571+offset1))
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
	if(input[i]==(3569+offset1))
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
	if(input[i]>(3559+offset1))
{
	if(input[i]>(3563+offset1))
{
	if(input[i]>(3565+offset1))
{
	if(input[i]==(3567+offset1))
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
	if(input[i]==(3565+offset1))
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
	if(input[i]>(3561+offset1))
{
	if(input[i]==(3563+offset1))
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
	if(input[i]==(3561+offset1))
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
	if(input[i]>(3555+offset1))
{
	if(input[i]>(3557+offset1))
{
	if(input[i]==(3559+offset1))
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
	if(input[i]==(3557+offset1))
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
	if(input[i]>(3553+offset1))
{
	if(input[i]==(3555+offset1))
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
	if(input[i]==(3553+offset1))
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
	if(input[i]>(3535+offset1))
{
	if(input[i]>(3543+offset1))
{
	if(input[i]>(3547+offset1))
{
	if(input[i]>(3549+offset1))
{
	if(input[i]==(3551+offset1))
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
	if(input[i]==(3549+offset1))
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
	if(input[i]>(3545+offset1))
{
	if(input[i]==(3547+offset1))
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
	if(input[i]==(3545+offset1))
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
	if(input[i]>(3539+offset1))
{
	if(input[i]>(3541+offset1))
{
	if(input[i]==(3543+offset1))
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
	if(input[i]==(3541+offset1))
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
	if(input[i]>(3537+offset1))
{
	if(input[i]==(3539+offset1))
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
	if(input[i]==(3537+offset1))
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
	if(input[i]>(3527+offset1))
{
	if(input[i]>(3531+offset1))
{
	if(input[i]>(3533+offset1))
{
	if(input[i]==(3535+offset1))
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
	if(input[i]==(3533+offset1))
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
	if(input[i]>(3529+offset1))
{
	if(input[i]==(3531+offset1))
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
	if(input[i]==(3529+offset1))
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
	if(input[i]>(3523+offset1))
{
	if(input[i]>(3525+offset1))
{
	if(input[i]==(3527+offset1))
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
	if(input[i]==(3525+offset1))
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
	if(input[i]>(3521+offset1))
{
	if(input[i]==(3523+offset1))
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
	if(input[i]==(3521+offset1))
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
	if(input[i]>(3487+offset1))
{
	if(input[i]>(3503+offset1))
{
	if(input[i]>(3511+offset1))
{
	if(input[i]>(3515+offset1))
{
	if(input[i]>(3517+offset1))
{
	if(input[i]==(3519+offset1))
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
	if(input[i]==(3517+offset1))
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
	if(input[i]>(3513+offset1))
{
	if(input[i]==(3515+offset1))
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
	if(input[i]==(3513+offset1))
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
	if(input[i]>(3507+offset1))
{
	if(input[i]>(3509+offset1))
{
	if(input[i]==(3511+offset1))
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
	if(input[i]==(3509+offset1))
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
	if(input[i]>(3505+offset1))
{
	if(input[i]==(3507+offset1))
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
	if(input[i]==(3505+offset1))
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
	if(input[i]>(3495+offset1))
{
	if(input[i]>(3499+offset1))
{
	if(input[i]>(3501+offset1))
{
	if(input[i]==(3503+offset1))
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
	if(input[i]==(3501+offset1))
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
	if(input[i]>(3497+offset1))
{
	if(input[i]==(3499+offset1))
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
	if(input[i]==(3497+offset1))
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
	if(input[i]>(3491+offset1))
{
	if(input[i]>(3493+offset1))
{
	if(input[i]==(3495+offset1))
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
	if(input[i]==(3493+offset1))
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
	if(input[i]>(3489+offset1))
{
	if(input[i]==(3491+offset1))
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
	if(input[i]==(3489+offset1))
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
	if(input[i]>(3471+offset1))
{
	if(input[i]>(3479+offset1))
{
	if(input[i]>(3483+offset1))
{
	if(input[i]>(3485+offset1))
{
	if(input[i]==(3487+offset1))
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
	if(input[i]==(3485+offset1))
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
	if(input[i]>(3481+offset1))
{
	if(input[i]==(3483+offset1))
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
	if(input[i]==(3481+offset1))
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
	if(input[i]>(3475+offset1))
{
	if(input[i]>(3477+offset1))
{
	if(input[i]==(3479+offset1))
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
	if(input[i]==(3477+offset1))
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
	if(input[i]>(3473+offset1))
{
	if(input[i]==(3475+offset1))
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
	if(input[i]==(3473+offset1))
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
	if(input[i]>(3463+offset1))
{
	if(input[i]>(3467+offset1))
{
	if(input[i]>(3469+offset1))
{
	if(input[i]==(3471+offset1))
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
	if(input[i]==(3469+offset1))
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
	if(input[i]>(3465+offset1))
{
	if(input[i]==(3467+offset1))
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
	if(input[i]==(3465+offset1))
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
	if(input[i]>(3459+offset1))
{
	if(input[i]>(3461+offset1))
{
	if(input[i]==(3463+offset1))
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
	if(input[i]==(3461+offset1))
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
	if(input[i]>(3457+offset1))
{
	if(input[i]==(3459+offset1))
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
	if(input[i]==(3457+offset1))
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
	if(input[i]>(3391+offset1))
{
	if(input[i]>(3423+offset1))
{
	if(input[i]>(3439+offset1))
{
	if(input[i]>(3447+offset1))
{
	if(input[i]>(3451+offset1))
{
	if(input[i]>(3453+offset1))
{
	if(input[i]==(3455+offset1))
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
	if(input[i]==(3453+offset1))
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
	if(input[i]>(3449+offset1))
{
	if(input[i]==(3451+offset1))
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
	if(input[i]==(3449+offset1))
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
	if(input[i]>(3443+offset1))
{
	if(input[i]>(3445+offset1))
{
	if(input[i]==(3447+offset1))
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
	if(input[i]==(3445+offset1))
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
	if(input[i]>(3441+offset1))
{
	if(input[i]==(3443+offset1))
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
	if(input[i]==(3441+offset1))
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
	if(input[i]>(3431+offset1))
{
	if(input[i]>(3435+offset1))
{
	if(input[i]>(3437+offset1))
{
	if(input[i]==(3439+offset1))
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
	if(input[i]==(3437+offset1))
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
	if(input[i]>(3433+offset1))
{
	if(input[i]==(3435+offset1))
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
	if(input[i]==(3433+offset1))
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
	if(input[i]>(3427+offset1))
{
	if(input[i]>(3429+offset1))
{
	if(input[i]==(3431+offset1))
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
	if(input[i]==(3429+offset1))
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
	if(input[i]>(3425+offset1))
{
	if(input[i]==(3427+offset1))
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
	if(input[i]==(3425+offset1))
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
	if(input[i]>(3407+offset1))
{
	if(input[i]>(3415+offset1))
{
	if(input[i]>(3419+offset1))
{
	if(input[i]>(3421+offset1))
{
	if(input[i]==(3423+offset1))
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
	if(input[i]==(3421+offset1))
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
	if(input[i]>(3417+offset1))
{
	if(input[i]==(3419+offset1))
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
	if(input[i]==(3417+offset1))
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
	if(input[i]>(3411+offset1))
{
	if(input[i]>(3413+offset1))
{
	if(input[i]==(3415+offset1))
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
	if(input[i]==(3413+offset1))
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
	if(input[i]>(3409+offset1))
{
	if(input[i]==(3411+offset1))
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
	if(input[i]==(3409+offset1))
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
	if(input[i]>(3399+offset1))
{
	if(input[i]>(3403+offset1))
{
	if(input[i]>(3405+offset1))
{
	if(input[i]==(3407+offset1))
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
	if(input[i]==(3405+offset1))
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
	if(input[i]>(3401+offset1))
{
	if(input[i]==(3403+offset1))
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
	if(input[i]==(3401+offset1))
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
	if(input[i]>(3395+offset1))
{
	if(input[i]>(3397+offset1))
{
	if(input[i]==(3399+offset1))
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
	if(input[i]==(3397+offset1))
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
	if(input[i]>(3393+offset1))
{
	if(input[i]==(3395+offset1))
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
	if(input[i]==(3393+offset1))
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
	if(input[i]>(3359+offset1))
{
	if(input[i]>(3375+offset1))
{
	if(input[i]>(3383+offset1))
{
	if(input[i]>(3387+offset1))
{
	if(input[i]>(3389+offset1))
{
	if(input[i]==(3391+offset1))
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
	if(input[i]==(3389+offset1))
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
	if(input[i]>(3385+offset1))
{
	if(input[i]==(3387+offset1))
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
	if(input[i]==(3385+offset1))
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
	if(input[i]>(3379+offset1))
{
	if(input[i]>(3381+offset1))
{
	if(input[i]==(3383+offset1))
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
	if(input[i]==(3381+offset1))
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
	if(input[i]>(3377+offset1))
{
	if(input[i]==(3379+offset1))
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
	if(input[i]==(3377+offset1))
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
	if(input[i]>(3367+offset1))
{
	if(input[i]>(3371+offset1))
{
	if(input[i]>(3373+offset1))
{
	if(input[i]==(3375+offset1))
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
	if(input[i]==(3373+offset1))
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
	if(input[i]>(3369+offset1))
{
	if(input[i]==(3371+offset1))
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
	if(input[i]==(3369+offset1))
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
	if(input[i]>(3363+offset1))
{
	if(input[i]>(3365+offset1))
{
	if(input[i]==(3367+offset1))
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
	if(input[i]==(3365+offset1))
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
	if(input[i]>(3361+offset1))
{
	if(input[i]==(3363+offset1))
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
	if(input[i]==(3361+offset1))
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
	if(input[i]>(3343+offset1))
{
	if(input[i]>(3351+offset1))
{
	if(input[i]>(3355+offset1))
{
	if(input[i]>(3357+offset1))
{
	if(input[i]==(3359+offset1))
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
	if(input[i]==(3357+offset1))
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
	if(input[i]>(3353+offset1))
{
	if(input[i]==(3355+offset1))
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
	if(input[i]==(3353+offset1))
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
	if(input[i]>(3347+offset1))
{
	if(input[i]>(3349+offset1))
{
	if(input[i]==(3351+offset1))
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
	if(input[i]==(3349+offset1))
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
	if(input[i]>(3345+offset1))
{
	if(input[i]==(3347+offset1))
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
	if(input[i]==(3345+offset1))
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
	if(input[i]>(3335+offset1))
{
	if(input[i]>(3339+offset1))
{
	if(input[i]>(3341+offset1))
{
	if(input[i]==(3343+offset1))
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
	if(input[i]==(3341+offset1))
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
	if(input[i]>(3337+offset1))
{
	if(input[i]==(3339+offset1))
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
	if(input[i]==(3337+offset1))
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
	if(input[i]>(3331+offset1))
{
	if(input[i]>(3333+offset1))
{
	if(input[i]==(3335+offset1))
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
	if(input[i]==(3333+offset1))
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
	if(input[i]>(3329+offset1))
{
	if(input[i]==(3331+offset1))
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
	if(input[i]==(3329+offset1))
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
	if(input[i]>(3199+offset1))
{
	if(input[i]>(3263+offset1))
{
	if(input[i]>(3295+offset1))
{
	if(input[i]>(3311+offset1))
{
	if(input[i]>(3319+offset1))
{
	if(input[i]>(3323+offset1))
{
	if(input[i]>(3325+offset1))
{
	if(input[i]==(3327+offset1))
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
	if(input[i]==(3325+offset1))
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
	if(input[i]>(3321+offset1))
{
	if(input[i]==(3323+offset1))
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
	if(input[i]==(3321+offset1))
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
	if(input[i]>(3315+offset1))
{
	if(input[i]>(3317+offset1))
{
	if(input[i]==(3319+offset1))
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
	if(input[i]==(3317+offset1))
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
	if(input[i]>(3313+offset1))
{
	if(input[i]==(3315+offset1))
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
	if(input[i]==(3313+offset1))
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
	if(input[i]>(3303+offset1))
{
	if(input[i]>(3307+offset1))
{
	if(input[i]>(3309+offset1))
{
	if(input[i]==(3311+offset1))
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
	if(input[i]==(3309+offset1))
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
	if(input[i]>(3305+offset1))
{
	if(input[i]==(3307+offset1))
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
	if(input[i]==(3305+offset1))
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
	if(input[i]>(3299+offset1))
{
	if(input[i]>(3301+offset1))
{
	if(input[i]==(3303+offset1))
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
	if(input[i]==(3301+offset1))
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
	if(input[i]>(3297+offset1))
{
	if(input[i]==(3299+offset1))
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
	if(input[i]==(3297+offset1))
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
	if(input[i]>(3279+offset1))
{
	if(input[i]>(3287+offset1))
{
	if(input[i]>(3291+offset1))
{
	if(input[i]>(3293+offset1))
{
	if(input[i]==(3295+offset1))
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
	if(input[i]==(3293+offset1))
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
	if(input[i]>(3289+offset1))
{
	if(input[i]==(3291+offset1))
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
	if(input[i]==(3289+offset1))
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
	if(input[i]>(3283+offset1))
{
	if(input[i]>(3285+offset1))
{
	if(input[i]==(3287+offset1))
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
	if(input[i]==(3285+offset1))
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
	if(input[i]>(3281+offset1))
{
	if(input[i]==(3283+offset1))
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
	if(input[i]==(3281+offset1))
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
	if(input[i]>(3271+offset1))
{
	if(input[i]>(3275+offset1))
{
	if(input[i]>(3277+offset1))
{
	if(input[i]==(3279+offset1))
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
	if(input[i]==(3277+offset1))
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
	if(input[i]>(3273+offset1))
{
	if(input[i]==(3275+offset1))
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
	if(input[i]==(3273+offset1))
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
	if(input[i]>(3267+offset1))
{
	if(input[i]>(3269+offset1))
{
	if(input[i]==(3271+offset1))
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
	if(input[i]==(3269+offset1))
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
	if(input[i]>(3265+offset1))
{
	if(input[i]==(3267+offset1))
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
	if(input[i]==(3265+offset1))
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
	if(input[i]>(3231+offset1))
{
	if(input[i]>(3247+offset1))
{
	if(input[i]>(3255+offset1))
{
	if(input[i]>(3259+offset1))
{
	if(input[i]>(3261+offset1))
{
	if(input[i]==(3263+offset1))
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
	if(input[i]==(3261+offset1))
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
	if(input[i]>(3257+offset1))
{
	if(input[i]==(3259+offset1))
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
	if(input[i]==(3257+offset1))
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
	if(input[i]>(3251+offset1))
{
	if(input[i]>(3253+offset1))
{
	if(input[i]==(3255+offset1))
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
	if(input[i]==(3253+offset1))
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
	if(input[i]>(3249+offset1))
{
	if(input[i]==(3251+offset1))
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
	if(input[i]==(3249+offset1))
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
	if(input[i]>(3239+offset1))
{
	if(input[i]>(3243+offset1))
{
	if(input[i]>(3245+offset1))
{
	if(input[i]==(3247+offset1))
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
	if(input[i]==(3245+offset1))
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
	if(input[i]>(3241+offset1))
{
	if(input[i]==(3243+offset1))
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
	if(input[i]==(3241+offset1))
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
	if(input[i]>(3235+offset1))
{
	if(input[i]>(3237+offset1))
{
	if(input[i]==(3239+offset1))
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
	if(input[i]==(3237+offset1))
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
	if(input[i]>(3233+offset1))
{
	if(input[i]==(3235+offset1))
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
	if(input[i]==(3233+offset1))
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
	if(input[i]>(3215+offset1))
{
	if(input[i]>(3223+offset1))
{
	if(input[i]>(3227+offset1))
{
	if(input[i]>(3229+offset1))
{
	if(input[i]==(3231+offset1))
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
	if(input[i]==(3229+offset1))
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
	if(input[i]>(3225+offset1))
{
	if(input[i]==(3227+offset1))
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
	if(input[i]==(3225+offset1))
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
	if(input[i]>(3219+offset1))
{
	if(input[i]>(3221+offset1))
{
	if(input[i]==(3223+offset1))
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
	if(input[i]==(3221+offset1))
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
	if(input[i]>(3217+offset1))
{
	if(input[i]==(3219+offset1))
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
	if(input[i]==(3217+offset1))
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
	if(input[i]>(3207+offset1))
{
	if(input[i]>(3211+offset1))
{
	if(input[i]>(3213+offset1))
{
	if(input[i]==(3215+offset1))
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
	if(input[i]==(3213+offset1))
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
	if(input[i]>(3209+offset1))
{
	if(input[i]==(3211+offset1))
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
	if(input[i]==(3209+offset1))
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
	if(input[i]>(3203+offset1))
{
	if(input[i]>(3205+offset1))
{
	if(input[i]==(3207+offset1))
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
	if(input[i]==(3205+offset1))
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
	if(input[i]>(3201+offset1))
{
	if(input[i]==(3203+offset1))
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
	if(input[i]==(3201+offset1))
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
	if(input[i]>(3135+offset1))
{
	if(input[i]>(3167+offset1))
{
	if(input[i]>(3183+offset1))
{
	if(input[i]>(3191+offset1))
{
	if(input[i]>(3195+offset1))
{
	if(input[i]>(3197+offset1))
{
	if(input[i]==(3199+offset1))
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
	if(input[i]==(3197+offset1))
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
	if(input[i]>(3193+offset1))
{
	if(input[i]==(3195+offset1))
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
	if(input[i]==(3193+offset1))
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
	if(input[i]>(3187+offset1))
{
	if(input[i]>(3189+offset1))
{
	if(input[i]==(3191+offset1))
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
	if(input[i]==(3189+offset1))
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
	if(input[i]>(3185+offset1))
{
	if(input[i]==(3187+offset1))
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
	if(input[i]==(3185+offset1))
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
	if(input[i]>(3175+offset1))
{
	if(input[i]>(3179+offset1))
{
	if(input[i]>(3181+offset1))
{
	if(input[i]==(3183+offset1))
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
	if(input[i]==(3181+offset1))
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
	if(input[i]>(3177+offset1))
{
	if(input[i]==(3179+offset1))
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
	if(input[i]==(3177+offset1))
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
	if(input[i]>(3171+offset1))
{
	if(input[i]>(3173+offset1))
{
	if(input[i]==(3175+offset1))
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
	if(input[i]==(3173+offset1))
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
	if(input[i]>(3169+offset1))
{
	if(input[i]==(3171+offset1))
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
	if(input[i]==(3169+offset1))
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
	if(input[i]>(3151+offset1))
{
	if(input[i]>(3159+offset1))
{
	if(input[i]>(3163+offset1))
{
	if(input[i]>(3165+offset1))
{
	if(input[i]==(3167+offset1))
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
	if(input[i]==(3165+offset1))
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
	if(input[i]>(3161+offset1))
{
	if(input[i]==(3163+offset1))
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
	if(input[i]==(3161+offset1))
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
	if(input[i]>(3155+offset1))
{
	if(input[i]>(3157+offset1))
{
	if(input[i]==(3159+offset1))
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
	if(input[i]==(3157+offset1))
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
	if(input[i]>(3153+offset1))
{
	if(input[i]==(3155+offset1))
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
	if(input[i]==(3153+offset1))
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
	if(input[i]>(3143+offset1))
{
	if(input[i]>(3147+offset1))
{
	if(input[i]>(3149+offset1))
{
	if(input[i]==(3151+offset1))
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
	if(input[i]==(3149+offset1))
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
	if(input[i]>(3145+offset1))
{
	if(input[i]==(3147+offset1))
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
	if(input[i]==(3145+offset1))
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
	if(input[i]>(3139+offset1))
{
	if(input[i]>(3141+offset1))
{
	if(input[i]==(3143+offset1))
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
	if(input[i]==(3141+offset1))
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
	if(input[i]>(3137+offset1))
{
	if(input[i]==(3139+offset1))
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
	if(input[i]==(3137+offset1))
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
	if(input[i]>(3103+offset1))
{
	if(input[i]>(3119+offset1))
{
	if(input[i]>(3127+offset1))
{
	if(input[i]>(3131+offset1))
{
	if(input[i]>(3133+offset1))
{
	if(input[i]==(3135+offset1))
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
	if(input[i]==(3133+offset1))
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
	if(input[i]>(3129+offset1))
{
	if(input[i]==(3131+offset1))
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
	if(input[i]==(3129+offset1))
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
	if(input[i]>(3123+offset1))
{
	if(input[i]>(3125+offset1))
{
	if(input[i]==(3127+offset1))
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
	if(input[i]==(3125+offset1))
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
	if(input[i]>(3121+offset1))
{
	if(input[i]==(3123+offset1))
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
	if(input[i]==(3121+offset1))
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
	if(input[i]>(3111+offset1))
{
	if(input[i]>(3115+offset1))
{
	if(input[i]>(3117+offset1))
{
	if(input[i]==(3119+offset1))
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
	if(input[i]==(3117+offset1))
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
	if(input[i]>(3113+offset1))
{
	if(input[i]==(3115+offset1))
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
	if(input[i]==(3113+offset1))
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
	if(input[i]>(3107+offset1))
{
	if(input[i]>(3109+offset1))
{
	if(input[i]==(3111+offset1))
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
	if(input[i]==(3109+offset1))
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
	if(input[i]>(3105+offset1))
{
	if(input[i]==(3107+offset1))
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
	if(input[i]==(3105+offset1))
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
	if(input[i]>(3087+offset1))
{
	if(input[i]>(3095+offset1))
{
	if(input[i]>(3099+offset1))
{
	if(input[i]>(3101+offset1))
{
	if(input[i]==(3103+offset1))
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
	if(input[i]==(3101+offset1))
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
	if(input[i]>(3097+offset1))
{
	if(input[i]==(3099+offset1))
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
	if(input[i]==(3097+offset1))
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
	if(input[i]>(3091+offset1))
{
	if(input[i]>(3093+offset1))
{
	if(input[i]==(3095+offset1))
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
	if(input[i]==(3093+offset1))
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
	if(input[i]>(3089+offset1))
{
	if(input[i]==(3091+offset1))
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
	if(input[i]==(3089+offset1))
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
	if(input[i]>(3079+offset1))
{
	if(input[i]>(3083+offset1))
{
	if(input[i]>(3085+offset1))
{
	if(input[i]==(3087+offset1))
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
	if(input[i]==(3085+offset1))
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
	if(input[i]>(3081+offset1))
{
	if(input[i]==(3083+offset1))
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
	if(input[i]==(3081+offset1))
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
	if(input[i]>(3075+offset1))
{
	if(input[i]>(3077+offset1))
{
	if(input[i]==(3079+offset1))
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
	if(input[i]==(3077+offset1))
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
	if(input[i]>(3073+offset1))
{
	if(input[i]==(3075+offset1))
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
	if(input[i]==(3073+offset1))
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
	if(input[i]>(2559+offset1))
{
	if(input[i]>(2815+offset1))
{
	if(input[i]>(2943+offset1))
{
	if(input[i]>(3007+offset1))
{
	if(input[i]>(3039+offset1))
{
	if(input[i]>(3055+offset1))
{
	if(input[i]>(3063+offset1))
{
	if(input[i]>(3067+offset1))
{
	if(input[i]>(3069+offset1))
{
	if(input[i]==(3071+offset1))
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
	if(input[i]==(3069+offset1))
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
	if(input[i]>(3065+offset1))
{
	if(input[i]==(3067+offset1))
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
	if(input[i]==(3065+offset1))
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
	if(input[i]>(3059+offset1))
{
	if(input[i]>(3061+offset1))
{
	if(input[i]==(3063+offset1))
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
	if(input[i]==(3061+offset1))
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
	if(input[i]>(3057+offset1))
{
	if(input[i]==(3059+offset1))
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
	if(input[i]==(3057+offset1))
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
	if(input[i]>(3047+offset1))
{
	if(input[i]>(3051+offset1))
{
	if(input[i]>(3053+offset1))
{
	if(input[i]==(3055+offset1))
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
	if(input[i]==(3053+offset1))
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
	if(input[i]>(3049+offset1))
{
	if(input[i]==(3051+offset1))
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
	if(input[i]==(3049+offset1))
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
	if(input[i]>(3043+offset1))
{
	if(input[i]>(3045+offset1))
{
	if(input[i]==(3047+offset1))
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
	if(input[i]==(3045+offset1))
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
	if(input[i]>(3041+offset1))
{
	if(input[i]==(3043+offset1))
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
	if(input[i]==(3041+offset1))
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
	if(input[i]>(3023+offset1))
{
	if(input[i]>(3031+offset1))
{
	if(input[i]>(3035+offset1))
{
	if(input[i]>(3037+offset1))
{
	if(input[i]==(3039+offset1))
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
	if(input[i]==(3037+offset1))
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
	if(input[i]>(3033+offset1))
{
	if(input[i]==(3035+offset1))
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
	if(input[i]==(3033+offset1))
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
	if(input[i]>(3027+offset1))
{
	if(input[i]>(3029+offset1))
{
	if(input[i]==(3031+offset1))
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
	if(input[i]==(3029+offset1))
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
	if(input[i]>(3025+offset1))
{
	if(input[i]==(3027+offset1))
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
	if(input[i]==(3025+offset1))
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
	if(input[i]>(3015+offset1))
{
	if(input[i]>(3019+offset1))
{
	if(input[i]>(3021+offset1))
{
	if(input[i]==(3023+offset1))
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
	if(input[i]==(3021+offset1))
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
	if(input[i]>(3017+offset1))
{
	if(input[i]==(3019+offset1))
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
	if(input[i]==(3017+offset1))
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
	if(input[i]>(3011+offset1))
{
	if(input[i]>(3013+offset1))
{
	if(input[i]==(3015+offset1))
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
	if(input[i]==(3013+offset1))
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
	if(input[i]>(3009+offset1))
{
	if(input[i]==(3011+offset1))
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
	if(input[i]==(3009+offset1))
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
	if(input[i]>(2975+offset1))
{
	if(input[i]>(2991+offset1))
{
	if(input[i]>(2999+offset1))
{
	if(input[i]>(3003+offset1))
{
	if(input[i]>(3005+offset1))
{
	if(input[i]==(3007+offset1))
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
	if(input[i]==(3005+offset1))
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
	if(input[i]>(3001+offset1))
{
	if(input[i]==(3003+offset1))
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
	if(input[i]==(3001+offset1))
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
	if(input[i]>(2995+offset1))
{
	if(input[i]>(2997+offset1))
{
	if(input[i]==(2999+offset1))
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
	if(input[i]==(2997+offset1))
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
	if(input[i]>(2993+offset1))
{
	if(input[i]==(2995+offset1))
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
	if(input[i]==(2993+offset1))
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
	if(input[i]>(2983+offset1))
{
	if(input[i]>(2987+offset1))
{
	if(input[i]>(2989+offset1))
{
	if(input[i]==(2991+offset1))
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
	if(input[i]==(2989+offset1))
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
	if(input[i]>(2985+offset1))
{
	if(input[i]==(2987+offset1))
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
	if(input[i]==(2985+offset1))
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
	if(input[i]>(2979+offset1))
{
	if(input[i]>(2981+offset1))
{
	if(input[i]==(2983+offset1))
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
	if(input[i]==(2981+offset1))
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
	if(input[i]>(2977+offset1))
{
	if(input[i]==(2979+offset1))
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
	if(input[i]==(2977+offset1))
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
	if(input[i]>(2959+offset1))
{
	if(input[i]>(2967+offset1))
{
	if(input[i]>(2971+offset1))
{
	if(input[i]>(2973+offset1))
{
	if(input[i]==(2975+offset1))
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
	if(input[i]==(2973+offset1))
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
	if(input[i]>(2969+offset1))
{
	if(input[i]==(2971+offset1))
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
	if(input[i]==(2969+offset1))
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
	if(input[i]>(2963+offset1))
{
	if(input[i]>(2965+offset1))
{
	if(input[i]==(2967+offset1))
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
	if(input[i]==(2965+offset1))
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
	if(input[i]>(2961+offset1))
{
	if(input[i]==(2963+offset1))
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
	if(input[i]==(2961+offset1))
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
	if(input[i]>(2951+offset1))
{
	if(input[i]>(2955+offset1))
{
	if(input[i]>(2957+offset1))
{
	if(input[i]==(2959+offset1))
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
	if(input[i]==(2957+offset1))
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
	if(input[i]>(2953+offset1))
{
	if(input[i]==(2955+offset1))
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
	if(input[i]==(2953+offset1))
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
	if(input[i]>(2947+offset1))
{
	if(input[i]>(2949+offset1))
{
	if(input[i]==(2951+offset1))
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
	if(input[i]==(2949+offset1))
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
	if(input[i]>(2945+offset1))
{
	if(input[i]==(2947+offset1))
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
	if(input[i]==(2945+offset1))
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
	if(input[i]>(2879+offset1))
{
	if(input[i]>(2911+offset1))
{
	if(input[i]>(2927+offset1))
{
	if(input[i]>(2935+offset1))
{
	if(input[i]>(2939+offset1))
{
	if(input[i]>(2941+offset1))
{
	if(input[i]==(2943+offset1))
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
	if(input[i]==(2941+offset1))
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
	if(input[i]>(2937+offset1))
{
	if(input[i]==(2939+offset1))
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
	if(input[i]==(2937+offset1))
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
	if(input[i]>(2931+offset1))
{
	if(input[i]>(2933+offset1))
{
	if(input[i]==(2935+offset1))
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
	if(input[i]==(2933+offset1))
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
	if(input[i]>(2929+offset1))
{
	if(input[i]==(2931+offset1))
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
	if(input[i]==(2929+offset1))
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
	if(input[i]>(2919+offset1))
{
	if(input[i]>(2923+offset1))
{
	if(input[i]>(2925+offset1))
{
	if(input[i]==(2927+offset1))
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
	if(input[i]==(2925+offset1))
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
	if(input[i]>(2921+offset1))
{
	if(input[i]==(2923+offset1))
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
	if(input[i]==(2921+offset1))
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
	if(input[i]>(2915+offset1))
{
	if(input[i]>(2917+offset1))
{
	if(input[i]==(2919+offset1))
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
	if(input[i]==(2917+offset1))
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
	if(input[i]>(2913+offset1))
{
	if(input[i]==(2915+offset1))
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
	if(input[i]==(2913+offset1))
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
	if(input[i]>(2895+offset1))
{
	if(input[i]>(2903+offset1))
{
	if(input[i]>(2907+offset1))
{
	if(input[i]>(2909+offset1))
{
	if(input[i]==(2911+offset1))
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
	if(input[i]==(2909+offset1))
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
	if(input[i]>(2905+offset1))
{
	if(input[i]==(2907+offset1))
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
	if(input[i]==(2905+offset1))
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
	if(input[i]>(2899+offset1))
{
	if(input[i]>(2901+offset1))
{
	if(input[i]==(2903+offset1))
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
	if(input[i]==(2901+offset1))
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
	if(input[i]>(2897+offset1))
{
	if(input[i]==(2899+offset1))
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
	if(input[i]==(2897+offset1))
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
	if(input[i]>(2887+offset1))
{
	if(input[i]>(2891+offset1))
{
	if(input[i]>(2893+offset1))
{
	if(input[i]==(2895+offset1))
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
	if(input[i]==(2893+offset1))
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
	if(input[i]>(2889+offset1))
{
	if(input[i]==(2891+offset1))
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
	if(input[i]==(2889+offset1))
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
	if(input[i]>(2883+offset1))
{
	if(input[i]>(2885+offset1))
{
	if(input[i]==(2887+offset1))
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
	if(input[i]==(2885+offset1))
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
	if(input[i]>(2881+offset1))
{
	if(input[i]==(2883+offset1))
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
	if(input[i]==(2881+offset1))
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
	if(input[i]>(2847+offset1))
{
	if(input[i]>(2863+offset1))
{
	if(input[i]>(2871+offset1))
{
	if(input[i]>(2875+offset1))
{
	if(input[i]>(2877+offset1))
{
	if(input[i]==(2879+offset1))
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
	if(input[i]==(2877+offset1))
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
	if(input[i]>(2873+offset1))
{
	if(input[i]==(2875+offset1))
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
	if(input[i]==(2873+offset1))
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
	if(input[i]>(2867+offset1))
{
	if(input[i]>(2869+offset1))
{
	if(input[i]==(2871+offset1))
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
	if(input[i]==(2869+offset1))
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
	if(input[i]>(2865+offset1))
{
	if(input[i]==(2867+offset1))
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
	if(input[i]==(2865+offset1))
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
	if(input[i]>(2855+offset1))
{
	if(input[i]>(2859+offset1))
{
	if(input[i]>(2861+offset1))
{
	if(input[i]==(2863+offset1))
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
	if(input[i]==(2861+offset1))
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
	if(input[i]>(2857+offset1))
{
	if(input[i]==(2859+offset1))
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
	if(input[i]==(2857+offset1))
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
	if(input[i]>(2851+offset1))
{
	if(input[i]>(2853+offset1))
{
	if(input[i]==(2855+offset1))
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
	if(input[i]==(2853+offset1))
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
	if(input[i]>(2849+offset1))
{
	if(input[i]==(2851+offset1))
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
	if(input[i]==(2849+offset1))
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
	if(input[i]>(2831+offset1))
{
	if(input[i]>(2839+offset1))
{
	if(input[i]>(2843+offset1))
{
	if(input[i]>(2845+offset1))
{
	if(input[i]==(2847+offset1))
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
	if(input[i]==(2845+offset1))
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
	if(input[i]>(2841+offset1))
{
	if(input[i]==(2843+offset1))
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
	if(input[i]==(2841+offset1))
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
	if(input[i]>(2835+offset1))
{
	if(input[i]>(2837+offset1))
{
	if(input[i]==(2839+offset1))
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
	if(input[i]==(2837+offset1))
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
	if(input[i]>(2833+offset1))
{
	if(input[i]==(2835+offset1))
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
	if(input[i]==(2833+offset1))
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
	if(input[i]>(2823+offset1))
{
	if(input[i]>(2827+offset1))
{
	if(input[i]>(2829+offset1))
{
	if(input[i]==(2831+offset1))
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
	if(input[i]==(2829+offset1))
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
	if(input[i]>(2825+offset1))
{
	if(input[i]==(2827+offset1))
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
	if(input[i]==(2825+offset1))
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
	if(input[i]>(2819+offset1))
{
	if(input[i]>(2821+offset1))
{
	if(input[i]==(2823+offset1))
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
	if(input[i]==(2821+offset1))
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
	if(input[i]>(2817+offset1))
{
	if(input[i]==(2819+offset1))
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
	if(input[i]==(2817+offset1))
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
	if(input[i]>(2687+offset1))
{
	if(input[i]>(2751+offset1))
{
	if(input[i]>(2783+offset1))
{
	if(input[i]>(2799+offset1))
{
	if(input[i]>(2807+offset1))
{
	if(input[i]>(2811+offset1))
{
	if(input[i]>(2813+offset1))
{
	if(input[i]==(2815+offset1))
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
	if(input[i]==(2813+offset1))
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
	if(input[i]>(2809+offset1))
{
	if(input[i]==(2811+offset1))
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
	if(input[i]==(2809+offset1))
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
	if(input[i]>(2803+offset1))
{
	if(input[i]>(2805+offset1))
{
	if(input[i]==(2807+offset1))
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
	if(input[i]==(2805+offset1))
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
	if(input[i]>(2801+offset1))
{
	if(input[i]==(2803+offset1))
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
	if(input[i]==(2801+offset1))
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
	if(input[i]>(2791+offset1))
{
	if(input[i]>(2795+offset1))
{
	if(input[i]>(2797+offset1))
{
	if(input[i]==(2799+offset1))
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
	if(input[i]==(2797+offset1))
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
	if(input[i]>(2793+offset1))
{
	if(input[i]==(2795+offset1))
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
	if(input[i]==(2793+offset1))
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
	if(input[i]>(2787+offset1))
{
	if(input[i]>(2789+offset1))
{
	if(input[i]==(2791+offset1))
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
	if(input[i]==(2789+offset1))
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
	if(input[i]>(2785+offset1))
{
	if(input[i]==(2787+offset1))
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
	if(input[i]==(2785+offset1))
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
	if(input[i]>(2767+offset1))
{
	if(input[i]>(2775+offset1))
{
	if(input[i]>(2779+offset1))
{
	if(input[i]>(2781+offset1))
{
	if(input[i]==(2783+offset1))
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
	if(input[i]==(2781+offset1))
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
	if(input[i]>(2777+offset1))
{
	if(input[i]==(2779+offset1))
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
	if(input[i]==(2777+offset1))
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
	if(input[i]>(2771+offset1))
{
	if(input[i]>(2773+offset1))
{
	if(input[i]==(2775+offset1))
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
	if(input[i]==(2773+offset1))
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
	if(input[i]>(2769+offset1))
{
	if(input[i]==(2771+offset1))
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
	if(input[i]==(2769+offset1))
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
	if(input[i]>(2759+offset1))
{
	if(input[i]>(2763+offset1))
{
	if(input[i]>(2765+offset1))
{
	if(input[i]==(2767+offset1))
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
	if(input[i]==(2765+offset1))
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
	if(input[i]>(2761+offset1))
{
	if(input[i]==(2763+offset1))
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
	if(input[i]==(2761+offset1))
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
	if(input[i]>(2755+offset1))
{
	if(input[i]>(2757+offset1))
{
	if(input[i]==(2759+offset1))
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
	if(input[i]==(2757+offset1))
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
	if(input[i]>(2753+offset1))
{
	if(input[i]==(2755+offset1))
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
	if(input[i]==(2753+offset1))
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
	if(input[i]>(2719+offset1))
{
	if(input[i]>(2735+offset1))
{
	if(input[i]>(2743+offset1))
{
	if(input[i]>(2747+offset1))
{
	if(input[i]>(2749+offset1))
{
	if(input[i]==(2751+offset1))
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
	if(input[i]==(2749+offset1))
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
	if(input[i]>(2745+offset1))
{
	if(input[i]==(2747+offset1))
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
	if(input[i]==(2745+offset1))
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
	if(input[i]>(2739+offset1))
{
	if(input[i]>(2741+offset1))
{
	if(input[i]==(2743+offset1))
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
	if(input[i]==(2741+offset1))
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
	if(input[i]>(2737+offset1))
{
	if(input[i]==(2739+offset1))
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
	if(input[i]==(2737+offset1))
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
	if(input[i]>(2727+offset1))
{
	if(input[i]>(2731+offset1))
{
	if(input[i]>(2733+offset1))
{
	if(input[i]==(2735+offset1))
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
	if(input[i]==(2733+offset1))
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
	if(input[i]>(2729+offset1))
{
	if(input[i]==(2731+offset1))
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
	if(input[i]==(2729+offset1))
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
	if(input[i]>(2723+offset1))
{
	if(input[i]>(2725+offset1))
{
	if(input[i]==(2727+offset1))
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
	if(input[i]==(2725+offset1))
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
	if(input[i]>(2721+offset1))
{
	if(input[i]==(2723+offset1))
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
	if(input[i]==(2721+offset1))
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
	if(input[i]>(2703+offset1))
{
	if(input[i]>(2711+offset1))
{
	if(input[i]>(2715+offset1))
{
	if(input[i]>(2717+offset1))
{
	if(input[i]==(2719+offset1))
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
	if(input[i]==(2717+offset1))
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
	if(input[i]>(2713+offset1))
{
	if(input[i]==(2715+offset1))
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
	if(input[i]==(2713+offset1))
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
	if(input[i]>(2707+offset1))
{
	if(input[i]>(2709+offset1))
{
	if(input[i]==(2711+offset1))
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
	if(input[i]==(2709+offset1))
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
	if(input[i]>(2705+offset1))
{
	if(input[i]==(2707+offset1))
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
	if(input[i]==(2705+offset1))
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
	if(input[i]>(2695+offset1))
{
	if(input[i]>(2699+offset1))
{
	if(input[i]>(2701+offset1))
{
	if(input[i]==(2703+offset1))
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
	if(input[i]==(2701+offset1))
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
	if(input[i]>(2697+offset1))
{
	if(input[i]==(2699+offset1))
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
	if(input[i]==(2697+offset1))
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
	if(input[i]>(2691+offset1))
{
	if(input[i]>(2693+offset1))
{
	if(input[i]==(2695+offset1))
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
	if(input[i]==(2693+offset1))
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
	if(input[i]>(2689+offset1))
{
	if(input[i]==(2691+offset1))
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
	if(input[i]==(2689+offset1))
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
	if(input[i]>(2623+offset1))
{
	if(input[i]>(2655+offset1))
{
	if(input[i]>(2671+offset1))
{
	if(input[i]>(2679+offset1))
{
	if(input[i]>(2683+offset1))
{
	if(input[i]>(2685+offset1))
{
	if(input[i]==(2687+offset1))
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
	if(input[i]==(2685+offset1))
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
	if(input[i]>(2681+offset1))
{
	if(input[i]==(2683+offset1))
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
	if(input[i]==(2681+offset1))
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
	if(input[i]>(2675+offset1))
{
	if(input[i]>(2677+offset1))
{
	if(input[i]==(2679+offset1))
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
	if(input[i]==(2677+offset1))
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
	if(input[i]>(2673+offset1))
{
	if(input[i]==(2675+offset1))
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
	if(input[i]==(2673+offset1))
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
	if(input[i]>(2663+offset1))
{
	if(input[i]>(2667+offset1))
{
	if(input[i]>(2669+offset1))
{
	if(input[i]==(2671+offset1))
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
	if(input[i]==(2669+offset1))
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
	if(input[i]>(2665+offset1))
{
	if(input[i]==(2667+offset1))
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
	if(input[i]==(2665+offset1))
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
	if(input[i]>(2659+offset1))
{
	if(input[i]>(2661+offset1))
{
	if(input[i]==(2663+offset1))
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
	if(input[i]==(2661+offset1))
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
	if(input[i]>(2657+offset1))
{
	if(input[i]==(2659+offset1))
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
	if(input[i]==(2657+offset1))
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
	if(input[i]>(2639+offset1))
{
	if(input[i]>(2647+offset1))
{
	if(input[i]>(2651+offset1))
{
	if(input[i]>(2653+offset1))
{
	if(input[i]==(2655+offset1))
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
	if(input[i]==(2653+offset1))
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
	if(input[i]>(2649+offset1))
{
	if(input[i]==(2651+offset1))
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
	if(input[i]==(2649+offset1))
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
	if(input[i]>(2643+offset1))
{
	if(input[i]>(2645+offset1))
{
	if(input[i]==(2647+offset1))
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
	if(input[i]==(2645+offset1))
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
	if(input[i]>(2641+offset1))
{
	if(input[i]==(2643+offset1))
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
	if(input[i]==(2641+offset1))
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
	if(input[i]>(2631+offset1))
{
	if(input[i]>(2635+offset1))
{
	if(input[i]>(2637+offset1))
{
	if(input[i]==(2639+offset1))
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
	if(input[i]==(2637+offset1))
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
	if(input[i]>(2633+offset1))
{
	if(input[i]==(2635+offset1))
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
	if(input[i]==(2633+offset1))
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
	if(input[i]>(2627+offset1))
{
	if(input[i]>(2629+offset1))
{
	if(input[i]==(2631+offset1))
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
	if(input[i]==(2629+offset1))
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
	if(input[i]>(2625+offset1))
{
	if(input[i]==(2627+offset1))
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
	if(input[i]==(2625+offset1))
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
	if(input[i]>(2591+offset1))
{
	if(input[i]>(2607+offset1))
{
	if(input[i]>(2615+offset1))
{
	if(input[i]>(2619+offset1))
{
	if(input[i]>(2621+offset1))
{
	if(input[i]==(2623+offset1))
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
	if(input[i]==(2621+offset1))
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
	if(input[i]>(2617+offset1))
{
	if(input[i]==(2619+offset1))
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
	if(input[i]==(2617+offset1))
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
	if(input[i]>(2611+offset1))
{
	if(input[i]>(2613+offset1))
{
	if(input[i]==(2615+offset1))
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
	if(input[i]==(2613+offset1))
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
	if(input[i]>(2609+offset1))
{
	if(input[i]==(2611+offset1))
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
	if(input[i]==(2609+offset1))
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
	if(input[i]>(2599+offset1))
{
	if(input[i]>(2603+offset1))
{
	if(input[i]>(2605+offset1))
{
	if(input[i]==(2607+offset1))
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
	if(input[i]==(2605+offset1))
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
	if(input[i]>(2601+offset1))
{
	if(input[i]==(2603+offset1))
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
	if(input[i]==(2601+offset1))
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
	if(input[i]>(2595+offset1))
{
	if(input[i]>(2597+offset1))
{
	if(input[i]==(2599+offset1))
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
	if(input[i]==(2597+offset1))
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
	if(input[i]>(2593+offset1))
{
	if(input[i]==(2595+offset1))
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
	if(input[i]==(2593+offset1))
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
	if(input[i]>(2575+offset1))
{
	if(input[i]>(2583+offset1))
{
	if(input[i]>(2587+offset1))
{
	if(input[i]>(2589+offset1))
{
	if(input[i]==(2591+offset1))
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
	if(input[i]==(2589+offset1))
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
	if(input[i]>(2585+offset1))
{
	if(input[i]==(2587+offset1))
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
	if(input[i]==(2585+offset1))
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
	if(input[i]>(2579+offset1))
{
	if(input[i]>(2581+offset1))
{
	if(input[i]==(2583+offset1))
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
	if(input[i]==(2581+offset1))
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
	if(input[i]>(2577+offset1))
{
	if(input[i]==(2579+offset1))
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
	if(input[i]==(2577+offset1))
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
	if(input[i]>(2567+offset1))
{
	if(input[i]>(2571+offset1))
{
	if(input[i]>(2573+offset1))
{
	if(input[i]==(2575+offset1))
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
	if(input[i]==(2573+offset1))
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
	if(input[i]>(2569+offset1))
{
	if(input[i]==(2571+offset1))
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
	if(input[i]==(2569+offset1))
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
	if(input[i]>(2563+offset1))
{
	if(input[i]>(2565+offset1))
{
	if(input[i]==(2567+offset1))
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
	if(input[i]==(2565+offset1))
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
	if(input[i]>(2561+offset1))
{
	if(input[i]==(2563+offset1))
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
	if(input[i]==(2561+offset1))
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
	if(input[i]>(2303+offset1))
{
	if(input[i]>(2431+offset1))
{
	if(input[i]>(2495+offset1))
{
	if(input[i]>(2527+offset1))
{
	if(input[i]>(2543+offset1))
{
	if(input[i]>(2551+offset1))
{
	if(input[i]>(2555+offset1))
{
	if(input[i]>(2557+offset1))
{
	if(input[i]==(2559+offset1))
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
	if(input[i]==(2557+offset1))
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
	if(input[i]>(2553+offset1))
{
	if(input[i]==(2555+offset1))
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
	if(input[i]==(2553+offset1))
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
	if(input[i]>(2547+offset1))
{
	if(input[i]>(2549+offset1))
{
	if(input[i]==(2551+offset1))
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
	if(input[i]==(2549+offset1))
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
	if(input[i]>(2545+offset1))
{
	if(input[i]==(2547+offset1))
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
	if(input[i]==(2545+offset1))
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
	if(input[i]>(2535+offset1))
{
	if(input[i]>(2539+offset1))
{
	if(input[i]>(2541+offset1))
{
	if(input[i]==(2543+offset1))
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
	if(input[i]==(2541+offset1))
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
	if(input[i]>(2537+offset1))
{
	if(input[i]==(2539+offset1))
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
	if(input[i]==(2537+offset1))
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
	if(input[i]>(2531+offset1))
{
	if(input[i]>(2533+offset1))
{
	if(input[i]==(2535+offset1))
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
	if(input[i]==(2533+offset1))
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
	if(input[i]>(2529+offset1))
{
	if(input[i]==(2531+offset1))
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
	if(input[i]==(2529+offset1))
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
	if(input[i]>(2511+offset1))
{
	if(input[i]>(2519+offset1))
{
	if(input[i]>(2523+offset1))
{
	if(input[i]>(2525+offset1))
{
	if(input[i]==(2527+offset1))
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
	if(input[i]==(2525+offset1))
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
	if(input[i]>(2521+offset1))
{
	if(input[i]==(2523+offset1))
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
	if(input[i]==(2521+offset1))
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
	if(input[i]>(2515+offset1))
{
	if(input[i]>(2517+offset1))
{
	if(input[i]==(2519+offset1))
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
	if(input[i]==(2517+offset1))
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
	if(input[i]>(2513+offset1))
{
	if(input[i]==(2515+offset1))
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
	if(input[i]==(2513+offset1))
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
	if(input[i]>(2503+offset1))
{
	if(input[i]>(2507+offset1))
{
	if(input[i]>(2509+offset1))
{
	if(input[i]==(2511+offset1))
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
	if(input[i]==(2509+offset1))
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
	if(input[i]>(2505+offset1))
{
	if(input[i]==(2507+offset1))
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
	if(input[i]==(2505+offset1))
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
	if(input[i]>(2499+offset1))
{
	if(input[i]>(2501+offset1))
{
	if(input[i]==(2503+offset1))
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
	if(input[i]==(2501+offset1))
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
	if(input[i]>(2497+offset1))
{
	if(input[i]==(2499+offset1))
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
	if(input[i]==(2497+offset1))
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
	if(input[i]>(2463+offset1))
{
	if(input[i]>(2479+offset1))
{
	if(input[i]>(2487+offset1))
{
	if(input[i]>(2491+offset1))
{
	if(input[i]>(2493+offset1))
{
	if(input[i]==(2495+offset1))
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
	if(input[i]==(2493+offset1))
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
	if(input[i]>(2489+offset1))
{
	if(input[i]==(2491+offset1))
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
	if(input[i]==(2489+offset1))
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
	if(input[i]>(2483+offset1))
{
	if(input[i]>(2485+offset1))
{
	if(input[i]==(2487+offset1))
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
	if(input[i]==(2485+offset1))
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
	if(input[i]>(2481+offset1))
{
	if(input[i]==(2483+offset1))
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
	if(input[i]==(2481+offset1))
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
	if(input[i]>(2471+offset1))
{
	if(input[i]>(2475+offset1))
{
	if(input[i]>(2477+offset1))
{
	if(input[i]==(2479+offset1))
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
	if(input[i]==(2477+offset1))
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
	if(input[i]>(2473+offset1))
{
	if(input[i]==(2475+offset1))
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
	if(input[i]==(2473+offset1))
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
	if(input[i]>(2467+offset1))
{
	if(input[i]>(2469+offset1))
{
	if(input[i]==(2471+offset1))
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
	if(input[i]==(2469+offset1))
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
	if(input[i]>(2465+offset1))
{
	if(input[i]==(2467+offset1))
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
	if(input[i]==(2465+offset1))
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
	if(input[i]>(2447+offset1))
{
	if(input[i]>(2455+offset1))
{
	if(input[i]>(2459+offset1))
{
	if(input[i]>(2461+offset1))
{
	if(input[i]==(2463+offset1))
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
	if(input[i]==(2461+offset1))
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
	if(input[i]>(2457+offset1))
{
	if(input[i]==(2459+offset1))
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
	if(input[i]==(2457+offset1))
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
	if(input[i]>(2451+offset1))
{
	if(input[i]>(2453+offset1))
{
	if(input[i]==(2455+offset1))
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
	if(input[i]==(2453+offset1))
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
	if(input[i]>(2449+offset1))
{
	if(input[i]==(2451+offset1))
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
	if(input[i]==(2449+offset1))
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
	if(input[i]>(2439+offset1))
{
	if(input[i]>(2443+offset1))
{
	if(input[i]>(2445+offset1))
{
	if(input[i]==(2447+offset1))
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
	if(input[i]==(2445+offset1))
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
	if(input[i]>(2441+offset1))
{
	if(input[i]==(2443+offset1))
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
	if(input[i]==(2441+offset1))
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
	if(input[i]>(2435+offset1))
{
	if(input[i]>(2437+offset1))
{
	if(input[i]==(2439+offset1))
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
	if(input[i]==(2437+offset1))
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
	if(input[i]>(2433+offset1))
{
	if(input[i]==(2435+offset1))
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
	if(input[i]==(2433+offset1))
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
	if(input[i]>(2367+offset1))
{
	if(input[i]>(2399+offset1))
{
	if(input[i]>(2415+offset1))
{
	if(input[i]>(2423+offset1))
{
	if(input[i]>(2427+offset1))
{
	if(input[i]>(2429+offset1))
{
	if(input[i]==(2431+offset1))
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
	if(input[i]==(2429+offset1))
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
	if(input[i]>(2425+offset1))
{
	if(input[i]==(2427+offset1))
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
	if(input[i]==(2425+offset1))
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
	if(input[i]>(2419+offset1))
{
	if(input[i]>(2421+offset1))
{
	if(input[i]==(2423+offset1))
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
	if(input[i]==(2421+offset1))
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
	if(input[i]>(2417+offset1))
{
	if(input[i]==(2419+offset1))
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
	if(input[i]==(2417+offset1))
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
	if(input[i]>(2407+offset1))
{
	if(input[i]>(2411+offset1))
{
	if(input[i]>(2413+offset1))
{
	if(input[i]==(2415+offset1))
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
	if(input[i]==(2413+offset1))
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
	if(input[i]>(2409+offset1))
{
	if(input[i]==(2411+offset1))
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
	if(input[i]==(2409+offset1))
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
	if(input[i]>(2403+offset1))
{
	if(input[i]>(2405+offset1))
{
	if(input[i]==(2407+offset1))
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
	if(input[i]==(2405+offset1))
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
	if(input[i]>(2401+offset1))
{
	if(input[i]==(2403+offset1))
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
	if(input[i]==(2401+offset1))
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
	if(input[i]>(2383+offset1))
{
	if(input[i]>(2391+offset1))
{
	if(input[i]>(2395+offset1))
{
	if(input[i]>(2397+offset1))
{
	if(input[i]==(2399+offset1))
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
	if(input[i]==(2397+offset1))
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
	if(input[i]>(2393+offset1))
{
	if(input[i]==(2395+offset1))
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
	if(input[i]==(2393+offset1))
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
	if(input[i]>(2387+offset1))
{
	if(input[i]>(2389+offset1))
{
	if(input[i]==(2391+offset1))
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
	if(input[i]==(2389+offset1))
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
	if(input[i]>(2385+offset1))
{
	if(input[i]==(2387+offset1))
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
	if(input[i]==(2385+offset1))
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
	if(input[i]>(2375+offset1))
{
	if(input[i]>(2379+offset1))
{
	if(input[i]>(2381+offset1))
{
	if(input[i]==(2383+offset1))
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
	if(input[i]==(2381+offset1))
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
	if(input[i]>(2377+offset1))
{
	if(input[i]==(2379+offset1))
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
	if(input[i]==(2377+offset1))
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
	if(input[i]>(2371+offset1))
{
	if(input[i]>(2373+offset1))
{
	if(input[i]==(2375+offset1))
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
	if(input[i]==(2373+offset1))
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
	if(input[i]>(2369+offset1))
{
	if(input[i]==(2371+offset1))
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
	if(input[i]==(2369+offset1))
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
	if(input[i]>(2335+offset1))
{
	if(input[i]>(2351+offset1))
{
	if(input[i]>(2359+offset1))
{
	if(input[i]>(2363+offset1))
{
	if(input[i]>(2365+offset1))
{
	if(input[i]==(2367+offset1))
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
	if(input[i]==(2365+offset1))
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
	if(input[i]>(2361+offset1))
{
	if(input[i]==(2363+offset1))
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
	if(input[i]==(2361+offset1))
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
	if(input[i]>(2355+offset1))
{
	if(input[i]>(2357+offset1))
{
	if(input[i]==(2359+offset1))
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
	if(input[i]==(2357+offset1))
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
	if(input[i]>(2353+offset1))
{
	if(input[i]==(2355+offset1))
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
	if(input[i]==(2353+offset1))
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
	if(input[i]>(2343+offset1))
{
	if(input[i]>(2347+offset1))
{
	if(input[i]>(2349+offset1))
{
	if(input[i]==(2351+offset1))
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
	if(input[i]==(2349+offset1))
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
	if(input[i]>(2345+offset1))
{
	if(input[i]==(2347+offset1))
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
	if(input[i]==(2345+offset1))
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
	if(input[i]>(2339+offset1))
{
	if(input[i]>(2341+offset1))
{
	if(input[i]==(2343+offset1))
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
	if(input[i]==(2341+offset1))
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
	if(input[i]>(2337+offset1))
{
	if(input[i]==(2339+offset1))
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
	if(input[i]==(2337+offset1))
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
	if(input[i]>(2319+offset1))
{
	if(input[i]>(2327+offset1))
{
	if(input[i]>(2331+offset1))
{
	if(input[i]>(2333+offset1))
{
	if(input[i]==(2335+offset1))
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
	if(input[i]==(2333+offset1))
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
	if(input[i]>(2329+offset1))
{
	if(input[i]==(2331+offset1))
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
	if(input[i]==(2329+offset1))
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
	if(input[i]>(2323+offset1))
{
	if(input[i]>(2325+offset1))
{
	if(input[i]==(2327+offset1))
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
	if(input[i]==(2325+offset1))
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
	if(input[i]>(2321+offset1))
{
	if(input[i]==(2323+offset1))
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
	if(input[i]==(2321+offset1))
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
	if(input[i]>(2311+offset1))
{
	if(input[i]>(2315+offset1))
{
	if(input[i]>(2317+offset1))
{
	if(input[i]==(2319+offset1))
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
	if(input[i]==(2317+offset1))
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
	if(input[i]>(2313+offset1))
{
	if(input[i]==(2315+offset1))
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
	if(input[i]==(2313+offset1))
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
	if(input[i]>(2307+offset1))
{
	if(input[i]>(2309+offset1))
{
	if(input[i]==(2311+offset1))
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
	if(input[i]==(2309+offset1))
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
	if(input[i]>(2305+offset1))
{
	if(input[i]==(2307+offset1))
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
	if(input[i]==(2305+offset1))
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
	if(input[i]>(2175+offset1))
{
	if(input[i]>(2239+offset1))
{
	if(input[i]>(2271+offset1))
{
	if(input[i]>(2287+offset1))
{
	if(input[i]>(2295+offset1))
{
	if(input[i]>(2299+offset1))
{
	if(input[i]>(2301+offset1))
{
	if(input[i]==(2303+offset1))
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
	if(input[i]==(2301+offset1))
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
	if(input[i]>(2297+offset1))
{
	if(input[i]==(2299+offset1))
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
	if(input[i]==(2297+offset1))
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
	if(input[i]>(2291+offset1))
{
	if(input[i]>(2293+offset1))
{
	if(input[i]==(2295+offset1))
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
	if(input[i]==(2293+offset1))
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
	if(input[i]>(2289+offset1))
{
	if(input[i]==(2291+offset1))
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
	if(input[i]==(2289+offset1))
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
	if(input[i]>(2279+offset1))
{
	if(input[i]>(2283+offset1))
{
	if(input[i]>(2285+offset1))
{
	if(input[i]==(2287+offset1))
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
	if(input[i]==(2285+offset1))
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
	if(input[i]>(2281+offset1))
{
	if(input[i]==(2283+offset1))
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
	if(input[i]==(2281+offset1))
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
	if(input[i]>(2275+offset1))
{
	if(input[i]>(2277+offset1))
{
	if(input[i]==(2279+offset1))
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
	if(input[i]==(2277+offset1))
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
	if(input[i]>(2273+offset1))
{
	if(input[i]==(2275+offset1))
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
	if(input[i]==(2273+offset1))
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
	if(input[i]>(2255+offset1))
{
	if(input[i]>(2263+offset1))
{
	if(input[i]>(2267+offset1))
{
	if(input[i]>(2269+offset1))
{
	if(input[i]==(2271+offset1))
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
	if(input[i]==(2269+offset1))
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
	if(input[i]>(2265+offset1))
{
	if(input[i]==(2267+offset1))
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
	if(input[i]==(2265+offset1))
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
	if(input[i]>(2259+offset1))
{
	if(input[i]>(2261+offset1))
{
	if(input[i]==(2263+offset1))
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
	if(input[i]==(2261+offset1))
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
	if(input[i]>(2257+offset1))
{
	if(input[i]==(2259+offset1))
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
	if(input[i]==(2257+offset1))
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
	if(input[i]>(2247+offset1))
{
	if(input[i]>(2251+offset1))
{
	if(input[i]>(2253+offset1))
{
	if(input[i]==(2255+offset1))
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
	if(input[i]==(2253+offset1))
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
	if(input[i]>(2249+offset1))
{
	if(input[i]==(2251+offset1))
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
	if(input[i]==(2249+offset1))
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
	if(input[i]>(2243+offset1))
{
	if(input[i]>(2245+offset1))
{
	if(input[i]==(2247+offset1))
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
	if(input[i]==(2245+offset1))
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
	if(input[i]>(2241+offset1))
{
	if(input[i]==(2243+offset1))
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
	if(input[i]==(2241+offset1))
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
	if(input[i]>(2207+offset1))
{
	if(input[i]>(2223+offset1))
{
	if(input[i]>(2231+offset1))
{
	if(input[i]>(2235+offset1))
{
	if(input[i]>(2237+offset1))
{
	if(input[i]==(2239+offset1))
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
	if(input[i]==(2237+offset1))
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
	if(input[i]>(2233+offset1))
{
	if(input[i]==(2235+offset1))
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
	if(input[i]==(2233+offset1))
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
	if(input[i]>(2227+offset1))
{
	if(input[i]>(2229+offset1))
{
	if(input[i]==(2231+offset1))
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
	if(input[i]==(2229+offset1))
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
	if(input[i]>(2225+offset1))
{
	if(input[i]==(2227+offset1))
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
	if(input[i]==(2225+offset1))
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
	if(input[i]>(2215+offset1))
{
	if(input[i]>(2219+offset1))
{
	if(input[i]>(2221+offset1))
{
	if(input[i]==(2223+offset1))
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
	if(input[i]==(2221+offset1))
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
	if(input[i]>(2217+offset1))
{
	if(input[i]==(2219+offset1))
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
	if(input[i]==(2217+offset1))
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
	if(input[i]>(2211+offset1))
{
	if(input[i]>(2213+offset1))
{
	if(input[i]==(2215+offset1))
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
	if(input[i]==(2213+offset1))
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
	if(input[i]>(2209+offset1))
{
	if(input[i]==(2211+offset1))
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
	if(input[i]==(2209+offset1))
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
	if(input[i]>(2191+offset1))
{
	if(input[i]>(2199+offset1))
{
	if(input[i]>(2203+offset1))
{
	if(input[i]>(2205+offset1))
{
	if(input[i]==(2207+offset1))
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
	if(input[i]==(2205+offset1))
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
	if(input[i]>(2201+offset1))
{
	if(input[i]==(2203+offset1))
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
	if(input[i]==(2201+offset1))
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
	if(input[i]>(2195+offset1))
{
	if(input[i]>(2197+offset1))
{
	if(input[i]==(2199+offset1))
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
	if(input[i]==(2197+offset1))
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
	if(input[i]>(2193+offset1))
{
	if(input[i]==(2195+offset1))
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
	if(input[i]==(2193+offset1))
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
	if(input[i]>(2183+offset1))
{
	if(input[i]>(2187+offset1))
{
	if(input[i]>(2189+offset1))
{
	if(input[i]==(2191+offset1))
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
	if(input[i]==(2189+offset1))
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
	if(input[i]>(2185+offset1))
{
	if(input[i]==(2187+offset1))
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
	if(input[i]==(2185+offset1))
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
	if(input[i]>(2179+offset1))
{
	if(input[i]>(2181+offset1))
{
	if(input[i]==(2183+offset1))
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
	if(input[i]==(2181+offset1))
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
	if(input[i]>(2177+offset1))
{
	if(input[i]==(2179+offset1))
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
	if(input[i]==(2177+offset1))
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
	if(input[i]>(2111+offset1))
{
	if(input[i]>(2143+offset1))
{
	if(input[i]>(2159+offset1))
{
	if(input[i]>(2167+offset1))
{
	if(input[i]>(2171+offset1))
{
	if(input[i]>(2173+offset1))
{
	if(input[i]==(2175+offset1))
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
	if(input[i]==(2173+offset1))
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
	if(input[i]>(2169+offset1))
{
	if(input[i]==(2171+offset1))
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
	if(input[i]==(2169+offset1))
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
	if(input[i]>(2163+offset1))
{
	if(input[i]>(2165+offset1))
{
	if(input[i]==(2167+offset1))
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
	if(input[i]==(2165+offset1))
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
	if(input[i]>(2161+offset1))
{
	if(input[i]==(2163+offset1))
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
	if(input[i]==(2161+offset1))
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
	if(input[i]>(2151+offset1))
{
	if(input[i]>(2155+offset1))
{
	if(input[i]>(2157+offset1))
{
	if(input[i]==(2159+offset1))
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
	if(input[i]==(2157+offset1))
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
	if(input[i]>(2153+offset1))
{
	if(input[i]==(2155+offset1))
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
	if(input[i]==(2153+offset1))
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
	if(input[i]>(2147+offset1))
{
	if(input[i]>(2149+offset1))
{
	if(input[i]==(2151+offset1))
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
	if(input[i]==(2149+offset1))
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
	if(input[i]>(2145+offset1))
{
	if(input[i]==(2147+offset1))
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
	if(input[i]==(2145+offset1))
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
	if(input[i]>(2127+offset1))
{
	if(input[i]>(2135+offset1))
{
	if(input[i]>(2139+offset1))
{
	if(input[i]>(2141+offset1))
{
	if(input[i]==(2143+offset1))
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
	if(input[i]==(2141+offset1))
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
	if(input[i]>(2137+offset1))
{
	if(input[i]==(2139+offset1))
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
	if(input[i]==(2137+offset1))
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
	if(input[i]>(2131+offset1))
{
	if(input[i]>(2133+offset1))
{
	if(input[i]==(2135+offset1))
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
	if(input[i]==(2133+offset1))
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
	if(input[i]>(2129+offset1))
{
	if(input[i]==(2131+offset1))
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
	if(input[i]==(2129+offset1))
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
	if(input[i]>(2119+offset1))
{
	if(input[i]>(2123+offset1))
{
	if(input[i]>(2125+offset1))
{
	if(input[i]==(2127+offset1))
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
	if(input[i]==(2125+offset1))
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
	if(input[i]>(2121+offset1))
{
	if(input[i]==(2123+offset1))
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
	if(input[i]==(2121+offset1))
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
	if(input[i]>(2115+offset1))
{
	if(input[i]>(2117+offset1))
{
	if(input[i]==(2119+offset1))
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
	if(input[i]==(2117+offset1))
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
	if(input[i]>(2113+offset1))
{
	if(input[i]==(2115+offset1))
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
	if(input[i]==(2113+offset1))
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
	if(input[i]>(2079+offset1))
{
	if(input[i]>(2095+offset1))
{
	if(input[i]>(2103+offset1))
{
	if(input[i]>(2107+offset1))
{
	if(input[i]>(2109+offset1))
{
	if(input[i]==(2111+offset1))
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
	if(input[i]==(2109+offset1))
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
	if(input[i]>(2105+offset1))
{
	if(input[i]==(2107+offset1))
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
	if(input[i]==(2105+offset1))
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
	if(input[i]>(2099+offset1))
{
	if(input[i]>(2101+offset1))
{
	if(input[i]==(2103+offset1))
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
	if(input[i]==(2101+offset1))
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
	if(input[i]>(2097+offset1))
{
	if(input[i]==(2099+offset1))
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
	if(input[i]==(2097+offset1))
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
	if(input[i]>(2087+offset1))
{
	if(input[i]>(2091+offset1))
{
	if(input[i]>(2093+offset1))
{
	if(input[i]==(2095+offset1))
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
	if(input[i]==(2093+offset1))
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
	if(input[i]>(2089+offset1))
{
	if(input[i]==(2091+offset1))
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
	if(input[i]==(2089+offset1))
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
	if(input[i]>(2083+offset1))
{
	if(input[i]>(2085+offset1))
{
	if(input[i]==(2087+offset1))
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
	if(input[i]==(2085+offset1))
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
	if(input[i]>(2081+offset1))
{
	if(input[i]==(2083+offset1))
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
	if(input[i]==(2081+offset1))
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
	if(input[i]>(2063+offset1))
{
	if(input[i]>(2071+offset1))
{
	if(input[i]>(2075+offset1))
{
	if(input[i]>(2077+offset1))
{
	if(input[i]==(2079+offset1))
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
	if(input[i]==(2077+offset1))
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
	if(input[i]>(2073+offset1))
{
	if(input[i]==(2075+offset1))
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
	if(input[i]==(2073+offset1))
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
	if(input[i]>(2067+offset1))
{
	if(input[i]>(2069+offset1))
{
	if(input[i]==(2071+offset1))
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
	if(input[i]==(2069+offset1))
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
	if(input[i]>(2065+offset1))
{
	if(input[i]==(2067+offset1))
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
	if(input[i]==(2065+offset1))
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
	if(input[i]>(2055+offset1))
{
	if(input[i]>(2059+offset1))
{
	if(input[i]>(2061+offset1))
{
	if(input[i]==(2063+offset1))
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
	if(input[i]==(2061+offset1))
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
	if(input[i]>(2057+offset1))
{
	if(input[i]==(2059+offset1))
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
	if(input[i]==(2057+offset1))
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
	if(input[i]>(2051+offset1))
{
	if(input[i]>(2053+offset1))
{
	if(input[i]==(2055+offset1))
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
	if(input[i]==(2053+offset1))
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
	if(input[i]>(2049+offset1))
{
	if(input[i]==(2051+offset1))
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
	if(input[i]==(2049+offset1))
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
	if(input[i]>(1023+offset1))
{
	if(input[i]>(1535+offset1))
{
	if(input[i]>(1791+offset1))
{
	if(input[i]>(1919+offset1))
{
	if(input[i]>(1983+offset1))
{
	if(input[i]>(2015+offset1))
{
	if(input[i]>(2031+offset1))
{
	if(input[i]>(2039+offset1))
{
	if(input[i]>(2043+offset1))
{
	if(input[i]>(2045+offset1))
{
	if(input[i]==(2047+offset1))
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
	if(input[i]==(2045+offset1))
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
	if(input[i]>(2041+offset1))
{
	if(input[i]==(2043+offset1))
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
	if(input[i]==(2041+offset1))
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
	if(input[i]>(2035+offset1))
{
	if(input[i]>(2037+offset1))
{
	if(input[i]==(2039+offset1))
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
	if(input[i]==(2037+offset1))
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
	if(input[i]>(2033+offset1))
{
	if(input[i]==(2035+offset1))
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
	if(input[i]==(2033+offset1))
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
	if(input[i]>(2023+offset1))
{
	if(input[i]>(2027+offset1))
{
	if(input[i]>(2029+offset1))
{
	if(input[i]==(2031+offset1))
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
	if(input[i]==(2029+offset1))
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
	if(input[i]>(2025+offset1))
{
	if(input[i]==(2027+offset1))
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
	if(input[i]==(2025+offset1))
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
	if(input[i]>(2019+offset1))
{
	if(input[i]>(2021+offset1))
{
	if(input[i]==(2023+offset1))
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
	if(input[i]==(2021+offset1))
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
	if(input[i]>(2017+offset1))
{
	if(input[i]==(2019+offset1))
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
	if(input[i]==(2017+offset1))
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
	if(input[i]>(1999+offset1))
{
	if(input[i]>(2007+offset1))
{
	if(input[i]>(2011+offset1))
{
	if(input[i]>(2013+offset1))
{
	if(input[i]==(2015+offset1))
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
	if(input[i]==(2013+offset1))
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
	if(input[i]>(2009+offset1))
{
	if(input[i]==(2011+offset1))
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
	if(input[i]==(2009+offset1))
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
	if(input[i]>(2003+offset1))
{
	if(input[i]>(2005+offset1))
{
	if(input[i]==(2007+offset1))
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
	if(input[i]==(2005+offset1))
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
	if(input[i]>(2001+offset1))
{
	if(input[i]==(2003+offset1))
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
	if(input[i]==(2001+offset1))
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
	if(input[i]>(1991+offset1))
{
	if(input[i]>(1995+offset1))
{
	if(input[i]>(1997+offset1))
{
	if(input[i]==(1999+offset1))
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
	if(input[i]==(1997+offset1))
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
	if(input[i]>(1993+offset1))
{
	if(input[i]==(1995+offset1))
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
	if(input[i]==(1993+offset1))
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
	if(input[i]>(1987+offset1))
{
	if(input[i]>(1989+offset1))
{
	if(input[i]==(1991+offset1))
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
	if(input[i]==(1989+offset1))
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
	if(input[i]>(1985+offset1))
{
	if(input[i]==(1987+offset1))
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
	if(input[i]==(1985+offset1))
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
	if(input[i]>(1951+offset1))
{
	if(input[i]>(1967+offset1))
{
	if(input[i]>(1975+offset1))
{
	if(input[i]>(1979+offset1))
{
	if(input[i]>(1981+offset1))
{
	if(input[i]==(1983+offset1))
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
	if(input[i]==(1981+offset1))
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
	if(input[i]>(1977+offset1))
{
	if(input[i]==(1979+offset1))
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
	if(input[i]==(1977+offset1))
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
	if(input[i]>(1971+offset1))
{
	if(input[i]>(1973+offset1))
{
	if(input[i]==(1975+offset1))
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
	if(input[i]==(1973+offset1))
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
	if(input[i]>(1969+offset1))
{
	if(input[i]==(1971+offset1))
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
	if(input[i]==(1969+offset1))
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
	if(input[i]>(1959+offset1))
{
	if(input[i]>(1963+offset1))
{
	if(input[i]>(1965+offset1))
{
	if(input[i]==(1967+offset1))
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
	if(input[i]==(1965+offset1))
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
	if(input[i]>(1961+offset1))
{
	if(input[i]==(1963+offset1))
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
	if(input[i]==(1961+offset1))
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
	if(input[i]>(1955+offset1))
{
	if(input[i]>(1957+offset1))
{
	if(input[i]==(1959+offset1))
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
	if(input[i]==(1957+offset1))
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
	if(input[i]>(1953+offset1))
{
	if(input[i]==(1955+offset1))
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
	if(input[i]==(1953+offset1))
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
	if(input[i]>(1935+offset1))
{
	if(input[i]>(1943+offset1))
{
	if(input[i]>(1947+offset1))
{
	if(input[i]>(1949+offset1))
{
	if(input[i]==(1951+offset1))
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
	if(input[i]==(1949+offset1))
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
	if(input[i]>(1945+offset1))
{
	if(input[i]==(1947+offset1))
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
	if(input[i]==(1945+offset1))
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
	if(input[i]>(1939+offset1))
{
	if(input[i]>(1941+offset1))
{
	if(input[i]==(1943+offset1))
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
	if(input[i]==(1941+offset1))
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
	if(input[i]>(1937+offset1))
{
	if(input[i]==(1939+offset1))
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
	if(input[i]==(1937+offset1))
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
	if(input[i]>(1927+offset1))
{
	if(input[i]>(1931+offset1))
{
	if(input[i]>(1933+offset1))
{
	if(input[i]==(1935+offset1))
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
	if(input[i]==(1933+offset1))
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
	if(input[i]>(1929+offset1))
{
	if(input[i]==(1931+offset1))
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
	if(input[i]==(1929+offset1))
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
	if(input[i]>(1923+offset1))
{
	if(input[i]>(1925+offset1))
{
	if(input[i]==(1927+offset1))
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
	if(input[i]==(1925+offset1))
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
	if(input[i]>(1921+offset1))
{
	if(input[i]==(1923+offset1))
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
	if(input[i]==(1921+offset1))
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
	if(input[i]>(1855+offset1))
{
	if(input[i]>(1887+offset1))
{
	if(input[i]>(1903+offset1))
{
	if(input[i]>(1911+offset1))
{
	if(input[i]>(1915+offset1))
{
	if(input[i]>(1917+offset1))
{
	if(input[i]==(1919+offset1))
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
	if(input[i]==(1917+offset1))
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
	if(input[i]>(1913+offset1))
{
	if(input[i]==(1915+offset1))
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
	if(input[i]==(1913+offset1))
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
	if(input[i]>(1907+offset1))
{
	if(input[i]>(1909+offset1))
{
	if(input[i]==(1911+offset1))
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
	if(input[i]==(1909+offset1))
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
	if(input[i]>(1905+offset1))
{
	if(input[i]==(1907+offset1))
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
	if(input[i]==(1905+offset1))
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
	if(input[i]>(1895+offset1))
{
	if(input[i]>(1899+offset1))
{
	if(input[i]>(1901+offset1))
{
	if(input[i]==(1903+offset1))
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
	if(input[i]==(1901+offset1))
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
	if(input[i]>(1897+offset1))
{
	if(input[i]==(1899+offset1))
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
	if(input[i]==(1897+offset1))
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
	if(input[i]>(1891+offset1))
{
	if(input[i]>(1893+offset1))
{
	if(input[i]==(1895+offset1))
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
	if(input[i]==(1893+offset1))
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
	if(input[i]>(1889+offset1))
{
	if(input[i]==(1891+offset1))
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
	if(input[i]==(1889+offset1))
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
	if(input[i]>(1871+offset1))
{
	if(input[i]>(1879+offset1))
{
	if(input[i]>(1883+offset1))
{
	if(input[i]>(1885+offset1))
{
	if(input[i]==(1887+offset1))
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
	if(input[i]==(1885+offset1))
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
	if(input[i]>(1881+offset1))
{
	if(input[i]==(1883+offset1))
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
	if(input[i]==(1881+offset1))
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
	if(input[i]>(1875+offset1))
{
	if(input[i]>(1877+offset1))
{
	if(input[i]==(1879+offset1))
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
	if(input[i]==(1877+offset1))
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
	if(input[i]>(1873+offset1))
{
	if(input[i]==(1875+offset1))
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
	if(input[i]==(1873+offset1))
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
	if(input[i]>(1863+offset1))
{
	if(input[i]>(1867+offset1))
{
	if(input[i]>(1869+offset1))
{
	if(input[i]==(1871+offset1))
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
	if(input[i]==(1869+offset1))
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
	if(input[i]>(1865+offset1))
{
	if(input[i]==(1867+offset1))
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
	if(input[i]==(1865+offset1))
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
	if(input[i]>(1859+offset1))
{
	if(input[i]>(1861+offset1))
{
	if(input[i]==(1863+offset1))
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
	if(input[i]==(1861+offset1))
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
	if(input[i]>(1857+offset1))
{
	if(input[i]==(1859+offset1))
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
	if(input[i]==(1857+offset1))
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
	if(input[i]>(1823+offset1))
{
	if(input[i]>(1839+offset1))
{
	if(input[i]>(1847+offset1))
{
	if(input[i]>(1851+offset1))
{
	if(input[i]>(1853+offset1))
{
	if(input[i]==(1855+offset1))
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
	if(input[i]==(1853+offset1))
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
	if(input[i]>(1849+offset1))
{
	if(input[i]==(1851+offset1))
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
	if(input[i]==(1849+offset1))
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
	if(input[i]>(1843+offset1))
{
	if(input[i]>(1845+offset1))
{
	if(input[i]==(1847+offset1))
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
	if(input[i]==(1845+offset1))
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
	if(input[i]>(1841+offset1))
{
	if(input[i]==(1843+offset1))
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
	if(input[i]==(1841+offset1))
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
	if(input[i]>(1831+offset1))
{
	if(input[i]>(1835+offset1))
{
	if(input[i]>(1837+offset1))
{
	if(input[i]==(1839+offset1))
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
	if(input[i]==(1837+offset1))
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
	if(input[i]>(1833+offset1))
{
	if(input[i]==(1835+offset1))
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
	if(input[i]==(1833+offset1))
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
	if(input[i]>(1827+offset1))
{
	if(input[i]>(1829+offset1))
{
	if(input[i]==(1831+offset1))
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
	if(input[i]==(1829+offset1))
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
	if(input[i]>(1825+offset1))
{
	if(input[i]==(1827+offset1))
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
	if(input[i]==(1825+offset1))
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
	if(input[i]>(1807+offset1))
{
	if(input[i]>(1815+offset1))
{
	if(input[i]>(1819+offset1))
{
	if(input[i]>(1821+offset1))
{
	if(input[i]==(1823+offset1))
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
	if(input[i]==(1821+offset1))
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
	if(input[i]>(1817+offset1))
{
	if(input[i]==(1819+offset1))
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
	if(input[i]==(1817+offset1))
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
	if(input[i]>(1811+offset1))
{
	if(input[i]>(1813+offset1))
{
	if(input[i]==(1815+offset1))
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
	if(input[i]==(1813+offset1))
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
	if(input[i]>(1809+offset1))
{
	if(input[i]==(1811+offset1))
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
	if(input[i]==(1809+offset1))
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
	if(input[i]>(1799+offset1))
{
	if(input[i]>(1803+offset1))
{
	if(input[i]>(1805+offset1))
{
	if(input[i]==(1807+offset1))
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
	if(input[i]==(1805+offset1))
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
	if(input[i]>(1801+offset1))
{
	if(input[i]==(1803+offset1))
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
	if(input[i]==(1801+offset1))
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
	if(input[i]>(1795+offset1))
{
	if(input[i]>(1797+offset1))
{
	if(input[i]==(1799+offset1))
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
	if(input[i]==(1797+offset1))
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
	if(input[i]>(1793+offset1))
{
	if(input[i]==(1795+offset1))
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
	if(input[i]==(1793+offset1))
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
	if(input[i]>(1663+offset1))
{
	if(input[i]>(1727+offset1))
{
	if(input[i]>(1759+offset1))
{
	if(input[i]>(1775+offset1))
{
	if(input[i]>(1783+offset1))
{
	if(input[i]>(1787+offset1))
{
	if(input[i]>(1789+offset1))
{
	if(input[i]==(1791+offset1))
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
	if(input[i]==(1789+offset1))
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
	if(input[i]>(1785+offset1))
{
	if(input[i]==(1787+offset1))
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
	if(input[i]==(1785+offset1))
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
	if(input[i]>(1779+offset1))
{
	if(input[i]>(1781+offset1))
{
	if(input[i]==(1783+offset1))
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
	if(input[i]==(1781+offset1))
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
	if(input[i]>(1777+offset1))
{
	if(input[i]==(1779+offset1))
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
	if(input[i]==(1777+offset1))
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
	if(input[i]>(1767+offset1))
{
	if(input[i]>(1771+offset1))
{
	if(input[i]>(1773+offset1))
{
	if(input[i]==(1775+offset1))
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
	if(input[i]==(1773+offset1))
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
	if(input[i]>(1769+offset1))
{
	if(input[i]==(1771+offset1))
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
	if(input[i]==(1769+offset1))
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
	if(input[i]>(1763+offset1))
{
	if(input[i]>(1765+offset1))
{
	if(input[i]==(1767+offset1))
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
	if(input[i]==(1765+offset1))
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
	if(input[i]>(1761+offset1))
{
	if(input[i]==(1763+offset1))
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
	if(input[i]==(1761+offset1))
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
	if(input[i]>(1743+offset1))
{
	if(input[i]>(1751+offset1))
{
	if(input[i]>(1755+offset1))
{
	if(input[i]>(1757+offset1))
{
	if(input[i]==(1759+offset1))
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
	if(input[i]==(1757+offset1))
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
	if(input[i]>(1753+offset1))
{
	if(input[i]==(1755+offset1))
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
	if(input[i]==(1753+offset1))
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
	if(input[i]>(1747+offset1))
{
	if(input[i]>(1749+offset1))
{
	if(input[i]==(1751+offset1))
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
	if(input[i]==(1749+offset1))
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
	if(input[i]>(1745+offset1))
{
	if(input[i]==(1747+offset1))
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
	if(input[i]==(1745+offset1))
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
	if(input[i]>(1735+offset1))
{
	if(input[i]>(1739+offset1))
{
	if(input[i]>(1741+offset1))
{
	if(input[i]==(1743+offset1))
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
	if(input[i]==(1741+offset1))
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
	if(input[i]>(1737+offset1))
{
	if(input[i]==(1739+offset1))
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
	if(input[i]==(1737+offset1))
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
	if(input[i]>(1731+offset1))
{
	if(input[i]>(1733+offset1))
{
	if(input[i]==(1735+offset1))
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
	if(input[i]==(1733+offset1))
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
	if(input[i]>(1729+offset1))
{
	if(input[i]==(1731+offset1))
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
	if(input[i]==(1729+offset1))
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
	if(input[i]>(1695+offset1))
{
	if(input[i]>(1711+offset1))
{
	if(input[i]>(1719+offset1))
{
	if(input[i]>(1723+offset1))
{
	if(input[i]>(1725+offset1))
{
	if(input[i]==(1727+offset1))
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
	if(input[i]==(1725+offset1))
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
	if(input[i]>(1721+offset1))
{
	if(input[i]==(1723+offset1))
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
	if(input[i]==(1721+offset1))
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
	if(input[i]>(1715+offset1))
{
	if(input[i]>(1717+offset1))
{
	if(input[i]==(1719+offset1))
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
	if(input[i]==(1717+offset1))
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
	if(input[i]>(1713+offset1))
{
	if(input[i]==(1715+offset1))
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
	if(input[i]==(1713+offset1))
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
	if(input[i]>(1703+offset1))
{
	if(input[i]>(1707+offset1))
{
	if(input[i]>(1709+offset1))
{
	if(input[i]==(1711+offset1))
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
	if(input[i]==(1709+offset1))
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
	if(input[i]>(1705+offset1))
{
	if(input[i]==(1707+offset1))
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
	if(input[i]==(1705+offset1))
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
	if(input[i]>(1699+offset1))
{
	if(input[i]>(1701+offset1))
{
	if(input[i]==(1703+offset1))
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
	if(input[i]==(1701+offset1))
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
	if(input[i]>(1697+offset1))
{
	if(input[i]==(1699+offset1))
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
	if(input[i]==(1697+offset1))
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
	if(input[i]>(1679+offset1))
{
	if(input[i]>(1687+offset1))
{
	if(input[i]>(1691+offset1))
{
	if(input[i]>(1693+offset1))
{
	if(input[i]==(1695+offset1))
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
	if(input[i]==(1693+offset1))
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
	if(input[i]>(1689+offset1))
{
	if(input[i]==(1691+offset1))
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
	if(input[i]==(1689+offset1))
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
	if(input[i]>(1683+offset1))
{
	if(input[i]>(1685+offset1))
{
	if(input[i]==(1687+offset1))
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
	if(input[i]==(1685+offset1))
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
	if(input[i]>(1681+offset1))
{
	if(input[i]==(1683+offset1))
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
	if(input[i]==(1681+offset1))
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
	if(input[i]>(1671+offset1))
{
	if(input[i]>(1675+offset1))
{
	if(input[i]>(1677+offset1))
{
	if(input[i]==(1679+offset1))
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
	if(input[i]==(1677+offset1))
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
	if(input[i]>(1673+offset1))
{
	if(input[i]==(1675+offset1))
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
	if(input[i]==(1673+offset1))
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
	if(input[i]>(1667+offset1))
{
	if(input[i]>(1669+offset1))
{
	if(input[i]==(1671+offset1))
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
	if(input[i]==(1669+offset1))
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
	if(input[i]>(1665+offset1))
{
	if(input[i]==(1667+offset1))
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
	if(input[i]==(1665+offset1))
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
	if(input[i]>(1599+offset1))
{
	if(input[i]>(1631+offset1))
{
	if(input[i]>(1647+offset1))
{
	if(input[i]>(1655+offset1))
{
	if(input[i]>(1659+offset1))
{
	if(input[i]>(1661+offset1))
{
	if(input[i]==(1663+offset1))
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
	if(input[i]==(1661+offset1))
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
	if(input[i]>(1657+offset1))
{
	if(input[i]==(1659+offset1))
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
	if(input[i]==(1657+offset1))
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
	if(input[i]>(1651+offset1))
{
	if(input[i]>(1653+offset1))
{
	if(input[i]==(1655+offset1))
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
	if(input[i]==(1653+offset1))
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
	if(input[i]>(1649+offset1))
{
	if(input[i]==(1651+offset1))
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
	if(input[i]==(1649+offset1))
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
	if(input[i]>(1639+offset1))
{
	if(input[i]>(1643+offset1))
{
	if(input[i]>(1645+offset1))
{
	if(input[i]==(1647+offset1))
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
	if(input[i]==(1645+offset1))
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
	if(input[i]>(1641+offset1))
{
	if(input[i]==(1643+offset1))
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
	if(input[i]==(1641+offset1))
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
	if(input[i]>(1635+offset1))
{
	if(input[i]>(1637+offset1))
{
	if(input[i]==(1639+offset1))
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
	if(input[i]==(1637+offset1))
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
	if(input[i]>(1633+offset1))
{
	if(input[i]==(1635+offset1))
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
	if(input[i]==(1633+offset1))
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
	if(input[i]>(1615+offset1))
{
	if(input[i]>(1623+offset1))
{
	if(input[i]>(1627+offset1))
{
	if(input[i]>(1629+offset1))
{
	if(input[i]==(1631+offset1))
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
	if(input[i]==(1629+offset1))
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
	if(input[i]>(1625+offset1))
{
	if(input[i]==(1627+offset1))
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
	if(input[i]==(1625+offset1))
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
	if(input[i]>(1619+offset1))
{
	if(input[i]>(1621+offset1))
{
	if(input[i]==(1623+offset1))
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
	if(input[i]==(1621+offset1))
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
	if(input[i]>(1617+offset1))
{
	if(input[i]==(1619+offset1))
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
	if(input[i]==(1617+offset1))
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
	if(input[i]>(1607+offset1))
{
	if(input[i]>(1611+offset1))
{
	if(input[i]>(1613+offset1))
{
	if(input[i]==(1615+offset1))
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
	if(input[i]==(1613+offset1))
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
	if(input[i]>(1609+offset1))
{
	if(input[i]==(1611+offset1))
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
	if(input[i]==(1609+offset1))
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
	if(input[i]>(1603+offset1))
{
	if(input[i]>(1605+offset1))
{
	if(input[i]==(1607+offset1))
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
	if(input[i]==(1605+offset1))
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
	if(input[i]>(1601+offset1))
{
	if(input[i]==(1603+offset1))
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
	if(input[i]==(1601+offset1))
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
	if(input[i]>(1567+offset1))
{
	if(input[i]>(1583+offset1))
{
	if(input[i]>(1591+offset1))
{
	if(input[i]>(1595+offset1))
{
	if(input[i]>(1597+offset1))
{
	if(input[i]==(1599+offset1))
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
	if(input[i]==(1597+offset1))
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
	if(input[i]>(1593+offset1))
{
	if(input[i]==(1595+offset1))
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
	if(input[i]==(1593+offset1))
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
	if(input[i]>(1587+offset1))
{
	if(input[i]>(1589+offset1))
{
	if(input[i]==(1591+offset1))
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
	if(input[i]==(1589+offset1))
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
	if(input[i]>(1585+offset1))
{
	if(input[i]==(1587+offset1))
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
	if(input[i]==(1585+offset1))
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
	if(input[i]>(1575+offset1))
{
	if(input[i]>(1579+offset1))
{
	if(input[i]>(1581+offset1))
{
	if(input[i]==(1583+offset1))
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
	if(input[i]==(1581+offset1))
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
	if(input[i]>(1577+offset1))
{
	if(input[i]==(1579+offset1))
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
	if(input[i]==(1577+offset1))
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
	if(input[i]>(1571+offset1))
{
	if(input[i]>(1573+offset1))
{
	if(input[i]==(1575+offset1))
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
	if(input[i]==(1573+offset1))
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
	if(input[i]>(1569+offset1))
{
	if(input[i]==(1571+offset1))
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
	if(input[i]==(1569+offset1))
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
	if(input[i]>(1551+offset1))
{
	if(input[i]>(1559+offset1))
{
	if(input[i]>(1563+offset1))
{
	if(input[i]>(1565+offset1))
{
	if(input[i]==(1567+offset1))
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
	if(input[i]==(1565+offset1))
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
	if(input[i]>(1561+offset1))
{
	if(input[i]==(1563+offset1))
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
	if(input[i]==(1561+offset1))
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
	if(input[i]>(1555+offset1))
{
	if(input[i]>(1557+offset1))
{
	if(input[i]==(1559+offset1))
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
	if(input[i]==(1557+offset1))
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
	if(input[i]>(1553+offset1))
{
	if(input[i]==(1555+offset1))
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
	if(input[i]==(1553+offset1))
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
	if(input[i]>(1543+offset1))
{
	if(input[i]>(1547+offset1))
{
	if(input[i]>(1549+offset1))
{
	if(input[i]==(1551+offset1))
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
	if(input[i]==(1549+offset1))
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
	if(input[i]>(1545+offset1))
{
	if(input[i]==(1547+offset1))
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
	if(input[i]==(1545+offset1))
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
	if(input[i]>(1539+offset1))
{
	if(input[i]>(1541+offset1))
{
	if(input[i]==(1543+offset1))
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
	if(input[i]==(1541+offset1))
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
	if(input[i]>(1537+offset1))
{
	if(input[i]==(1539+offset1))
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
	if(input[i]==(1537+offset1))
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
	if(input[i]>(1279+offset1))
{
	if(input[i]>(1407+offset1))
{
	if(input[i]>(1471+offset1))
{
	if(input[i]>(1503+offset1))
{
	if(input[i]>(1519+offset1))
{
	if(input[i]>(1527+offset1))
{
	if(input[i]>(1531+offset1))
{
	if(input[i]>(1533+offset1))
{
	if(input[i]==(1535+offset1))
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
	if(input[i]==(1533+offset1))
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
	if(input[i]>(1529+offset1))
{
	if(input[i]==(1531+offset1))
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
	if(input[i]==(1529+offset1))
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
	if(input[i]>(1523+offset1))
{
	if(input[i]>(1525+offset1))
{
	if(input[i]==(1527+offset1))
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
	if(input[i]==(1525+offset1))
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
	if(input[i]>(1521+offset1))
{
	if(input[i]==(1523+offset1))
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
	if(input[i]==(1521+offset1))
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
	if(input[i]>(1511+offset1))
{
	if(input[i]>(1515+offset1))
{
	if(input[i]>(1517+offset1))
{
	if(input[i]==(1519+offset1))
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
	if(input[i]==(1517+offset1))
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
	if(input[i]>(1513+offset1))
{
	if(input[i]==(1515+offset1))
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
	if(input[i]==(1513+offset1))
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
	if(input[i]>(1507+offset1))
{
	if(input[i]>(1509+offset1))
{
	if(input[i]==(1511+offset1))
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
	if(input[i]==(1509+offset1))
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
	if(input[i]>(1505+offset1))
{
	if(input[i]==(1507+offset1))
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
	if(input[i]==(1505+offset1))
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
	if(input[i]>(1487+offset1))
{
	if(input[i]>(1495+offset1))
{
	if(input[i]>(1499+offset1))
{
	if(input[i]>(1501+offset1))
{
	if(input[i]==(1503+offset1))
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
	if(input[i]==(1501+offset1))
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
	if(input[i]>(1497+offset1))
{
	if(input[i]==(1499+offset1))
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
	if(input[i]==(1497+offset1))
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
	if(input[i]>(1491+offset1))
{
	if(input[i]>(1493+offset1))
{
	if(input[i]==(1495+offset1))
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
	if(input[i]==(1493+offset1))
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
	if(input[i]>(1489+offset1))
{
	if(input[i]==(1491+offset1))
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
	if(input[i]==(1489+offset1))
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
	if(input[i]>(1479+offset1))
{
	if(input[i]>(1483+offset1))
{
	if(input[i]>(1485+offset1))
{
	if(input[i]==(1487+offset1))
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
	if(input[i]==(1485+offset1))
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
	if(input[i]>(1481+offset1))
{
	if(input[i]==(1483+offset1))
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
	if(input[i]==(1481+offset1))
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
	if(input[i]>(1475+offset1))
{
	if(input[i]>(1477+offset1))
{
	if(input[i]==(1479+offset1))
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
	if(input[i]==(1477+offset1))
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
	if(input[i]>(1473+offset1))
{
	if(input[i]==(1475+offset1))
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
	if(input[i]==(1473+offset1))
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
	if(input[i]>(1439+offset1))
{
	if(input[i]>(1455+offset1))
{
	if(input[i]>(1463+offset1))
{
	if(input[i]>(1467+offset1))
{
	if(input[i]>(1469+offset1))
{
	if(input[i]==(1471+offset1))
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
	if(input[i]==(1469+offset1))
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
	if(input[i]>(1465+offset1))
{
	if(input[i]==(1467+offset1))
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
	if(input[i]==(1465+offset1))
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
	if(input[i]>(1459+offset1))
{
	if(input[i]>(1461+offset1))
{
	if(input[i]==(1463+offset1))
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
	if(input[i]==(1461+offset1))
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
	if(input[i]>(1457+offset1))
{
	if(input[i]==(1459+offset1))
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
	if(input[i]==(1457+offset1))
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
	if(input[i]>(1447+offset1))
{
	if(input[i]>(1451+offset1))
{
	if(input[i]>(1453+offset1))
{
	if(input[i]==(1455+offset1))
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
	if(input[i]==(1453+offset1))
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
	if(input[i]>(1449+offset1))
{
	if(input[i]==(1451+offset1))
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
	if(input[i]==(1449+offset1))
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
	if(input[i]>(1443+offset1))
{
	if(input[i]>(1445+offset1))
{
	if(input[i]==(1447+offset1))
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
	if(input[i]==(1445+offset1))
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
	if(input[i]>(1441+offset1))
{
	if(input[i]==(1443+offset1))
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
	if(input[i]==(1441+offset1))
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
	if(input[i]>(1423+offset1))
{
	if(input[i]>(1431+offset1))
{
	if(input[i]>(1435+offset1))
{
	if(input[i]>(1437+offset1))
{
	if(input[i]==(1439+offset1))
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
	if(input[i]==(1437+offset1))
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
	if(input[i]>(1433+offset1))
{
	if(input[i]==(1435+offset1))
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
	if(input[i]==(1433+offset1))
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
	if(input[i]>(1427+offset1))
{
	if(input[i]>(1429+offset1))
{
	if(input[i]==(1431+offset1))
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
	if(input[i]==(1429+offset1))
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
	if(input[i]>(1425+offset1))
{
	if(input[i]==(1427+offset1))
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
	if(input[i]==(1425+offset1))
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
	if(input[i]>(1415+offset1))
{
	if(input[i]>(1419+offset1))
{
	if(input[i]>(1421+offset1))
{
	if(input[i]==(1423+offset1))
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
	if(input[i]==(1421+offset1))
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
	if(input[i]>(1417+offset1))
{
	if(input[i]==(1419+offset1))
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
	if(input[i]==(1417+offset1))
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
	if(input[i]>(1411+offset1))
{
	if(input[i]>(1413+offset1))
{
	if(input[i]==(1415+offset1))
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
	if(input[i]==(1413+offset1))
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
	if(input[i]>(1409+offset1))
{
	if(input[i]==(1411+offset1))
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
	if(input[i]==(1409+offset1))
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
	if(input[i]>(1343+offset1))
{
	if(input[i]>(1375+offset1))
{
	if(input[i]>(1391+offset1))
{
	if(input[i]>(1399+offset1))
{
	if(input[i]>(1403+offset1))
{
	if(input[i]>(1405+offset1))
{
	if(input[i]==(1407+offset1))
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
	if(input[i]==(1405+offset1))
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
	if(input[i]>(1401+offset1))
{
	if(input[i]==(1403+offset1))
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
	if(input[i]==(1401+offset1))
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
	if(input[i]>(1395+offset1))
{
	if(input[i]>(1397+offset1))
{
	if(input[i]==(1399+offset1))
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
	if(input[i]==(1397+offset1))
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
	if(input[i]>(1393+offset1))
{
	if(input[i]==(1395+offset1))
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
	if(input[i]==(1393+offset1))
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
	if(input[i]>(1383+offset1))
{
	if(input[i]>(1387+offset1))
{
	if(input[i]>(1389+offset1))
{
	if(input[i]==(1391+offset1))
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
	if(input[i]==(1389+offset1))
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
	if(input[i]>(1385+offset1))
{
	if(input[i]==(1387+offset1))
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
	if(input[i]==(1385+offset1))
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
	if(input[i]>(1379+offset1))
{
	if(input[i]>(1381+offset1))
{
	if(input[i]==(1383+offset1))
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
	if(input[i]==(1381+offset1))
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
	if(input[i]>(1377+offset1))
{
	if(input[i]==(1379+offset1))
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
	if(input[i]==(1377+offset1))
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
	if(input[i]>(1359+offset1))
{
	if(input[i]>(1367+offset1))
{
	if(input[i]>(1371+offset1))
{
	if(input[i]>(1373+offset1))
{
	if(input[i]==(1375+offset1))
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
	if(input[i]==(1373+offset1))
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
	if(input[i]>(1369+offset1))
{
	if(input[i]==(1371+offset1))
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
	if(input[i]==(1369+offset1))
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
	if(input[i]>(1363+offset1))
{
	if(input[i]>(1365+offset1))
{
	if(input[i]==(1367+offset1))
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
	if(input[i]==(1365+offset1))
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
	if(input[i]>(1361+offset1))
{
	if(input[i]==(1363+offset1))
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
	if(input[i]==(1361+offset1))
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
	if(input[i]>(1351+offset1))
{
	if(input[i]>(1355+offset1))
{
	if(input[i]>(1357+offset1))
{
	if(input[i]==(1359+offset1))
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
	if(input[i]==(1357+offset1))
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
	if(input[i]>(1353+offset1))
{
	if(input[i]==(1355+offset1))
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
	if(input[i]==(1353+offset1))
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
	if(input[i]>(1347+offset1))
{
	if(input[i]>(1349+offset1))
{
	if(input[i]==(1351+offset1))
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
	if(input[i]==(1349+offset1))
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
	if(input[i]>(1345+offset1))
{
	if(input[i]==(1347+offset1))
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
	if(input[i]==(1345+offset1))
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
	if(input[i]>(1311+offset1))
{
	if(input[i]>(1327+offset1))
{
	if(input[i]>(1335+offset1))
{
	if(input[i]>(1339+offset1))
{
	if(input[i]>(1341+offset1))
{
	if(input[i]==(1343+offset1))
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
	if(input[i]==(1341+offset1))
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
	if(input[i]>(1337+offset1))
{
	if(input[i]==(1339+offset1))
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
	if(input[i]==(1337+offset1))
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
	if(input[i]>(1331+offset1))
{
	if(input[i]>(1333+offset1))
{
	if(input[i]==(1335+offset1))
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
	if(input[i]==(1333+offset1))
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
	if(input[i]>(1329+offset1))
{
	if(input[i]==(1331+offset1))
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
	if(input[i]==(1329+offset1))
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
	if(input[i]>(1319+offset1))
{
	if(input[i]>(1323+offset1))
{
	if(input[i]>(1325+offset1))
{
	if(input[i]==(1327+offset1))
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
	if(input[i]==(1325+offset1))
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
	if(input[i]>(1321+offset1))
{
	if(input[i]==(1323+offset1))
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
	if(input[i]==(1321+offset1))
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
	if(input[i]>(1315+offset1))
{
	if(input[i]>(1317+offset1))
{
	if(input[i]==(1319+offset1))
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
	if(input[i]==(1317+offset1))
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
	if(input[i]>(1313+offset1))
{
	if(input[i]==(1315+offset1))
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
	if(input[i]==(1313+offset1))
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
	if(input[i]>(1295+offset1))
{
	if(input[i]>(1303+offset1))
{
	if(input[i]>(1307+offset1))
{
	if(input[i]>(1309+offset1))
{
	if(input[i]==(1311+offset1))
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
	if(input[i]==(1309+offset1))
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
	if(input[i]>(1305+offset1))
{
	if(input[i]==(1307+offset1))
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
	if(input[i]==(1305+offset1))
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
	if(input[i]>(1299+offset1))
{
	if(input[i]>(1301+offset1))
{
	if(input[i]==(1303+offset1))
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
	if(input[i]==(1301+offset1))
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
	if(input[i]>(1297+offset1))
{
	if(input[i]==(1299+offset1))
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
	if(input[i]==(1297+offset1))
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
	if(input[i]>(1287+offset1))
{
	if(input[i]>(1291+offset1))
{
	if(input[i]>(1293+offset1))
{
	if(input[i]==(1295+offset1))
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
	if(input[i]==(1293+offset1))
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
	if(input[i]>(1289+offset1))
{
	if(input[i]==(1291+offset1))
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
	if(input[i]==(1289+offset1))
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
	if(input[i]>(1283+offset1))
{
	if(input[i]>(1285+offset1))
{
	if(input[i]==(1287+offset1))
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
	if(input[i]==(1285+offset1))
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
	if(input[i]>(1281+offset1))
{
	if(input[i]==(1283+offset1))
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
	if(input[i]==(1281+offset1))
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
	if(input[i]>(1151+offset1))
{
	if(input[i]>(1215+offset1))
{
	if(input[i]>(1247+offset1))
{
	if(input[i]>(1263+offset1))
{
	if(input[i]>(1271+offset1))
{
	if(input[i]>(1275+offset1))
{
	if(input[i]>(1277+offset1))
{
	if(input[i]==(1279+offset1))
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
	if(input[i]==(1277+offset1))
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
	if(input[i]>(1273+offset1))
{
	if(input[i]==(1275+offset1))
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
	if(input[i]==(1273+offset1))
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
	if(input[i]>(1267+offset1))
{
	if(input[i]>(1269+offset1))
{
	if(input[i]==(1271+offset1))
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
	if(input[i]==(1269+offset1))
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
	if(input[i]>(1265+offset1))
{
	if(input[i]==(1267+offset1))
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
	if(input[i]==(1265+offset1))
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
	if(input[i]>(1255+offset1))
{
	if(input[i]>(1259+offset1))
{
	if(input[i]>(1261+offset1))
{
	if(input[i]==(1263+offset1))
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
	if(input[i]==(1261+offset1))
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
	if(input[i]>(1257+offset1))
{
	if(input[i]==(1259+offset1))
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
	if(input[i]==(1257+offset1))
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
	if(input[i]>(1251+offset1))
{
	if(input[i]>(1253+offset1))
{
	if(input[i]==(1255+offset1))
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
	if(input[i]==(1253+offset1))
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
	if(input[i]>(1249+offset1))
{
	if(input[i]==(1251+offset1))
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
	if(input[i]==(1249+offset1))
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
	if(input[i]>(1231+offset1))
{
	if(input[i]>(1239+offset1))
{
	if(input[i]>(1243+offset1))
{
	if(input[i]>(1245+offset1))
{
	if(input[i]==(1247+offset1))
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
	if(input[i]==(1245+offset1))
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
	if(input[i]>(1241+offset1))
{
	if(input[i]==(1243+offset1))
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
	if(input[i]==(1241+offset1))
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
	if(input[i]>(1235+offset1))
{
	if(input[i]>(1237+offset1))
{
	if(input[i]==(1239+offset1))
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
	if(input[i]==(1237+offset1))
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
	if(input[i]>(1233+offset1))
{
	if(input[i]==(1235+offset1))
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
	if(input[i]==(1233+offset1))
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
	if(input[i]>(1223+offset1))
{
	if(input[i]>(1227+offset1))
{
	if(input[i]>(1229+offset1))
{
	if(input[i]==(1231+offset1))
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
	if(input[i]==(1229+offset1))
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
	if(input[i]>(1225+offset1))
{
	if(input[i]==(1227+offset1))
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
	if(input[i]==(1225+offset1))
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
	if(input[i]>(1219+offset1))
{
	if(input[i]>(1221+offset1))
{
	if(input[i]==(1223+offset1))
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
	if(input[i]==(1221+offset1))
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
	if(input[i]>(1217+offset1))
{
	if(input[i]==(1219+offset1))
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
	if(input[i]==(1217+offset1))
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
	if(input[i]>(1183+offset1))
{
	if(input[i]>(1199+offset1))
{
	if(input[i]>(1207+offset1))
{
	if(input[i]>(1211+offset1))
{
	if(input[i]>(1213+offset1))
{
	if(input[i]==(1215+offset1))
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
	if(input[i]==(1213+offset1))
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
	if(input[i]>(1209+offset1))
{
	if(input[i]==(1211+offset1))
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
	if(input[i]==(1209+offset1))
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
	if(input[i]>(1203+offset1))
{
	if(input[i]>(1205+offset1))
{
	if(input[i]==(1207+offset1))
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
	if(input[i]==(1205+offset1))
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
	if(input[i]>(1201+offset1))
{
	if(input[i]==(1203+offset1))
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
	if(input[i]==(1201+offset1))
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
	if(input[i]>(1191+offset1))
{
	if(input[i]>(1195+offset1))
{
	if(input[i]>(1197+offset1))
{
	if(input[i]==(1199+offset1))
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
	if(input[i]==(1197+offset1))
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
	if(input[i]>(1193+offset1))
{
	if(input[i]==(1195+offset1))
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
	if(input[i]==(1193+offset1))
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
	if(input[i]>(1187+offset1))
{
	if(input[i]>(1189+offset1))
{
	if(input[i]==(1191+offset1))
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
	if(input[i]==(1189+offset1))
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
	if(input[i]>(1185+offset1))
{
	if(input[i]==(1187+offset1))
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
	if(input[i]==(1185+offset1))
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
	if(input[i]>(1167+offset1))
{
	if(input[i]>(1175+offset1))
{
	if(input[i]>(1179+offset1))
{
	if(input[i]>(1181+offset1))
{
	if(input[i]==(1183+offset1))
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
	if(input[i]==(1181+offset1))
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
	if(input[i]>(1177+offset1))
{
	if(input[i]==(1179+offset1))
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
	if(input[i]==(1177+offset1))
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
	if(input[i]>(1171+offset1))
{
	if(input[i]>(1173+offset1))
{
	if(input[i]==(1175+offset1))
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
	if(input[i]==(1173+offset1))
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
	if(input[i]>(1169+offset1))
{
	if(input[i]==(1171+offset1))
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
	if(input[i]==(1169+offset1))
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
	if(input[i]>(1159+offset1))
{
	if(input[i]>(1163+offset1))
{
	if(input[i]>(1165+offset1))
{
	if(input[i]==(1167+offset1))
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
	if(input[i]==(1165+offset1))
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
	if(input[i]>(1161+offset1))
{
	if(input[i]==(1163+offset1))
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
	if(input[i]==(1161+offset1))
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
	if(input[i]>(1155+offset1))
{
	if(input[i]>(1157+offset1))
{
	if(input[i]==(1159+offset1))
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
	if(input[i]==(1157+offset1))
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
	if(input[i]>(1153+offset1))
{
	if(input[i]==(1155+offset1))
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
	if(input[i]==(1153+offset1))
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
	if(input[i]>(1087+offset1))
{
	if(input[i]>(1119+offset1))
{
	if(input[i]>(1135+offset1))
{
	if(input[i]>(1143+offset1))
{
	if(input[i]>(1147+offset1))
{
	if(input[i]>(1149+offset1))
{
	if(input[i]==(1151+offset1))
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
	if(input[i]==(1149+offset1))
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
	if(input[i]>(1145+offset1))
{
	if(input[i]==(1147+offset1))
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
	if(input[i]==(1145+offset1))
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
	if(input[i]>(1139+offset1))
{
	if(input[i]>(1141+offset1))
{
	if(input[i]==(1143+offset1))
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
	if(input[i]==(1141+offset1))
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
	if(input[i]>(1137+offset1))
{
	if(input[i]==(1139+offset1))
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
	if(input[i]==(1137+offset1))
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
	if(input[i]>(1127+offset1))
{
	if(input[i]>(1131+offset1))
{
	if(input[i]>(1133+offset1))
{
	if(input[i]==(1135+offset1))
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
	if(input[i]==(1133+offset1))
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
	if(input[i]>(1129+offset1))
{
	if(input[i]==(1131+offset1))
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
	if(input[i]==(1129+offset1))
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
	if(input[i]>(1123+offset1))
{
	if(input[i]>(1125+offset1))
{
	if(input[i]==(1127+offset1))
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
	if(input[i]==(1125+offset1))
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
	if(input[i]>(1121+offset1))
{
	if(input[i]==(1123+offset1))
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
	if(input[i]==(1121+offset1))
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
	if(input[i]>(1103+offset1))
{
	if(input[i]>(1111+offset1))
{
	if(input[i]>(1115+offset1))
{
	if(input[i]>(1117+offset1))
{
	if(input[i]==(1119+offset1))
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
	if(input[i]==(1117+offset1))
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
	if(input[i]>(1113+offset1))
{
	if(input[i]==(1115+offset1))
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
	if(input[i]==(1113+offset1))
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
	if(input[i]>(1107+offset1))
{
	if(input[i]>(1109+offset1))
{
	if(input[i]==(1111+offset1))
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
	if(input[i]==(1109+offset1))
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
	if(input[i]>(1105+offset1))
{
	if(input[i]==(1107+offset1))
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
	if(input[i]==(1105+offset1))
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
	if(input[i]>(1095+offset1))
{
	if(input[i]>(1099+offset1))
{
	if(input[i]>(1101+offset1))
{
	if(input[i]==(1103+offset1))
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
	if(input[i]==(1101+offset1))
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
	if(input[i]>(1097+offset1))
{
	if(input[i]==(1099+offset1))
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
	if(input[i]==(1097+offset1))
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
	if(input[i]>(1091+offset1))
{
	if(input[i]>(1093+offset1))
{
	if(input[i]==(1095+offset1))
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
	if(input[i]==(1093+offset1))
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
	if(input[i]>(1089+offset1))
{
	if(input[i]==(1091+offset1))
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
	if(input[i]==(1089+offset1))
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
	if(input[i]>(1055+offset1))
{
	if(input[i]>(1071+offset1))
{
	if(input[i]>(1079+offset1))
{
	if(input[i]>(1083+offset1))
{
	if(input[i]>(1085+offset1))
{
	if(input[i]==(1087+offset1))
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
	if(input[i]==(1085+offset1))
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
	if(input[i]>(1081+offset1))
{
	if(input[i]==(1083+offset1))
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
	if(input[i]==(1081+offset1))
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
	if(input[i]>(1075+offset1))
{
	if(input[i]>(1077+offset1))
{
	if(input[i]==(1079+offset1))
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
	if(input[i]==(1077+offset1))
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
	if(input[i]>(1073+offset1))
{
	if(input[i]==(1075+offset1))
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
	if(input[i]==(1073+offset1))
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
	if(input[i]>(1063+offset1))
{
	if(input[i]>(1067+offset1))
{
	if(input[i]>(1069+offset1))
{
	if(input[i]==(1071+offset1))
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
	if(input[i]==(1069+offset1))
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
	if(input[i]>(1065+offset1))
{
	if(input[i]==(1067+offset1))
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
	if(input[i]==(1065+offset1))
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
	if(input[i]>(1059+offset1))
{
	if(input[i]>(1061+offset1))
{
	if(input[i]==(1063+offset1))
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
	if(input[i]==(1061+offset1))
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
	if(input[i]>(1057+offset1))
{
	if(input[i]==(1059+offset1))
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
	if(input[i]==(1057+offset1))
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
	if(input[i]>(1039+offset1))
{
	if(input[i]>(1047+offset1))
{
	if(input[i]>(1051+offset1))
{
	if(input[i]>(1053+offset1))
{
	if(input[i]==(1055+offset1))
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
	if(input[i]==(1053+offset1))
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
	if(input[i]>(1049+offset1))
{
	if(input[i]==(1051+offset1))
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
	if(input[i]==(1049+offset1))
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
	if(input[i]>(1043+offset1))
{
	if(input[i]>(1045+offset1))
{
	if(input[i]==(1047+offset1))
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
	if(input[i]==(1045+offset1))
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
	if(input[i]>(1041+offset1))
{
	if(input[i]==(1043+offset1))
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
	if(input[i]==(1041+offset1))
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
	if(input[i]>(1031+offset1))
{
	if(input[i]>(1035+offset1))
{
	if(input[i]>(1037+offset1))
{
	if(input[i]==(1039+offset1))
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
	if(input[i]==(1037+offset1))
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
	if(input[i]>(1033+offset1))
{
	if(input[i]==(1035+offset1))
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
	if(input[i]==(1033+offset1))
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
	if(input[i]>(1027+offset1))
{
	if(input[i]>(1029+offset1))
{
	if(input[i]==(1031+offset1))
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
	if(input[i]==(1029+offset1))
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
	if(input[i]>(1025+offset1))
{
	if(input[i]==(1027+offset1))
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
	if(input[i]==(1025+offset1))
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

}

}


if(input[i]>(2047+offset2))
{
	if(input[i]>(3071+offset2))
{
	if(input[i]>(3583+offset2))
{
	if(input[i]>(3839+offset2))
{
	if(input[i]>(3967+offset2))
{
	if(input[i]>(4031+offset2))
{
	if(input[i]>(4063+offset2))
{
	if(input[i]>(4079+offset2))
{
	if(input[i]>(4087+offset2))
{
	if(input[i]>(4091+offset2))
{
	if(input[i]>(4093+offset2))
{
	if(input[i]==(4095+offset2))
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
	if(input[i]==(4093+offset2))
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
	if(input[i]>(4089+offset2))
{
	if(input[i]==(4091+offset2))
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
	if(input[i]==(4089+offset2))
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
	if(input[i]>(4083+offset2))
{
	if(input[i]>(4085+offset2))
{
	if(input[i]==(4087+offset2))
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
	if(input[i]==(4085+offset2))
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
	if(input[i]>(4081+offset2))
{
	if(input[i]==(4083+offset2))
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
	if(input[i]==(4081+offset2))
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
	if(input[i]>(4071+offset2))
{
	if(input[i]>(4075+offset2))
{
	if(input[i]>(4077+offset2))
{
	if(input[i]==(4079+offset2))
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
	if(input[i]==(4077+offset2))
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
	if(input[i]>(4073+offset2))
{
	if(input[i]==(4075+offset2))
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
	if(input[i]==(4073+offset2))
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
	if(input[i]>(4067+offset2))
{
	if(input[i]>(4069+offset2))
{
	if(input[i]==(4071+offset2))
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
	if(input[i]==(4069+offset2))
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
	if(input[i]>(4065+offset2))
{
	if(input[i]==(4067+offset2))
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
	if(input[i]==(4065+offset2))
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
	if(input[i]>(4047+offset2))
{
	if(input[i]>(4055+offset2))
{
	if(input[i]>(4059+offset2))
{
	if(input[i]>(4061+offset2))
{
	if(input[i]==(4063+offset2))
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
	if(input[i]==(4061+offset2))
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
	if(input[i]>(4057+offset2))
{
	if(input[i]==(4059+offset2))
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
	if(input[i]==(4057+offset2))
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
	if(input[i]>(4051+offset2))
{
	if(input[i]>(4053+offset2))
{
	if(input[i]==(4055+offset2))
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
	if(input[i]==(4053+offset2))
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
	if(input[i]>(4049+offset2))
{
	if(input[i]==(4051+offset2))
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
	if(input[i]==(4049+offset2))
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
	if(input[i]>(4039+offset2))
{
	if(input[i]>(4043+offset2))
{
	if(input[i]>(4045+offset2))
{
	if(input[i]==(4047+offset2))
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
	if(input[i]==(4045+offset2))
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
	if(input[i]>(4041+offset2))
{
	if(input[i]==(4043+offset2))
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
	if(input[i]==(4041+offset2))
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
	if(input[i]>(4035+offset2))
{
	if(input[i]>(4037+offset2))
{
	if(input[i]==(4039+offset2))
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
	if(input[i]==(4037+offset2))
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
	if(input[i]>(4033+offset2))
{
	if(input[i]==(4035+offset2))
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
	if(input[i]==(4033+offset2))
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
	if(input[i]>(3999+offset2))
{
	if(input[i]>(4015+offset2))
{
	if(input[i]>(4023+offset2))
{
	if(input[i]>(4027+offset2))
{
	if(input[i]>(4029+offset2))
{
	if(input[i]==(4031+offset2))
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
	if(input[i]==(4029+offset2))
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
	if(input[i]>(4025+offset2))
{
	if(input[i]==(4027+offset2))
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
	if(input[i]==(4025+offset2))
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
	if(input[i]>(4019+offset2))
{
	if(input[i]>(4021+offset2))
{
	if(input[i]==(4023+offset2))
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
	if(input[i]==(4021+offset2))
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
	if(input[i]>(4017+offset2))
{
	if(input[i]==(4019+offset2))
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
	if(input[i]==(4017+offset2))
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
	if(input[i]>(4007+offset2))
{
	if(input[i]>(4011+offset2))
{
	if(input[i]>(4013+offset2))
{
	if(input[i]==(4015+offset2))
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
	if(input[i]==(4013+offset2))
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
	if(input[i]>(4009+offset2))
{
	if(input[i]==(4011+offset2))
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
	if(input[i]==(4009+offset2))
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
	if(input[i]>(4003+offset2))
{
	if(input[i]>(4005+offset2))
{
	if(input[i]==(4007+offset2))
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
	if(input[i]==(4005+offset2))
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
	if(input[i]>(4001+offset2))
{
	if(input[i]==(4003+offset2))
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
	if(input[i]==(4001+offset2))
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
	if(input[i]>(3983+offset2))
{
	if(input[i]>(3991+offset2))
{
	if(input[i]>(3995+offset2))
{
	if(input[i]>(3997+offset2))
{
	if(input[i]==(3999+offset2))
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
	if(input[i]==(3997+offset2))
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
	if(input[i]>(3993+offset2))
{
	if(input[i]==(3995+offset2))
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
	if(input[i]==(3993+offset2))
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
	if(input[i]>(3987+offset2))
{
	if(input[i]>(3989+offset2))
{
	if(input[i]==(3991+offset2))
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
	if(input[i]==(3989+offset2))
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
	if(input[i]>(3985+offset2))
{
	if(input[i]==(3987+offset2))
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
	if(input[i]==(3985+offset2))
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
	if(input[i]>(3975+offset2))
{
	if(input[i]>(3979+offset2))
{
	if(input[i]>(3981+offset2))
{
	if(input[i]==(3983+offset2))
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
	if(input[i]==(3981+offset2))
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
	if(input[i]>(3977+offset2))
{
	if(input[i]==(3979+offset2))
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
	if(input[i]==(3977+offset2))
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
	if(input[i]>(3971+offset2))
{
	if(input[i]>(3973+offset2))
{
	if(input[i]==(3975+offset2))
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
	if(input[i]==(3973+offset2))
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
	if(input[i]>(3969+offset2))
{
	if(input[i]==(3971+offset2))
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
	if(input[i]==(3969+offset2))
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
	if(input[i]>(3903+offset2))
{
	if(input[i]>(3935+offset2))
{
	if(input[i]>(3951+offset2))
{
	if(input[i]>(3959+offset2))
{
	if(input[i]>(3963+offset2))
{
	if(input[i]>(3965+offset2))
{
	if(input[i]==(3967+offset2))
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
	if(input[i]==(3965+offset2))
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
	if(input[i]>(3961+offset2))
{
	if(input[i]==(3963+offset2))
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
	if(input[i]==(3961+offset2))
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
	if(input[i]>(3955+offset2))
{
	if(input[i]>(3957+offset2))
{
	if(input[i]==(3959+offset2))
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
	if(input[i]==(3957+offset2))
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
	if(input[i]>(3953+offset2))
{
	if(input[i]==(3955+offset2))
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
	if(input[i]==(3953+offset2))
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
	if(input[i]>(3943+offset2))
{
	if(input[i]>(3947+offset2))
{
	if(input[i]>(3949+offset2))
{
	if(input[i]==(3951+offset2))
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
	if(input[i]==(3949+offset2))
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
	if(input[i]>(3945+offset2))
{
	if(input[i]==(3947+offset2))
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
	if(input[i]==(3945+offset2))
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
	if(input[i]>(3939+offset2))
{
	if(input[i]>(3941+offset2))
{
	if(input[i]==(3943+offset2))
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
	if(input[i]==(3941+offset2))
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
	if(input[i]>(3937+offset2))
{
	if(input[i]==(3939+offset2))
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
	if(input[i]==(3937+offset2))
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
	if(input[i]>(3919+offset2))
{
	if(input[i]>(3927+offset2))
{
	if(input[i]>(3931+offset2))
{
	if(input[i]>(3933+offset2))
{
	if(input[i]==(3935+offset2))
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
	if(input[i]==(3933+offset2))
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
	if(input[i]>(3929+offset2))
{
	if(input[i]==(3931+offset2))
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
	if(input[i]==(3929+offset2))
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
	if(input[i]>(3923+offset2))
{
	if(input[i]>(3925+offset2))
{
	if(input[i]==(3927+offset2))
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
	if(input[i]==(3925+offset2))
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
	if(input[i]>(3921+offset2))
{
	if(input[i]==(3923+offset2))
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
	if(input[i]==(3921+offset2))
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
	if(input[i]>(3911+offset2))
{
	if(input[i]>(3915+offset2))
{
	if(input[i]>(3917+offset2))
{
	if(input[i]==(3919+offset2))
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
	if(input[i]==(3917+offset2))
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
	if(input[i]>(3913+offset2))
{
	if(input[i]==(3915+offset2))
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
	if(input[i]==(3913+offset2))
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
	if(input[i]>(3907+offset2))
{
	if(input[i]>(3909+offset2))
{
	if(input[i]==(3911+offset2))
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
	if(input[i]==(3909+offset2))
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
	if(input[i]>(3905+offset2))
{
	if(input[i]==(3907+offset2))
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
	if(input[i]==(3905+offset2))
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
	if(input[i]>(3871+offset2))
{
	if(input[i]>(3887+offset2))
{
	if(input[i]>(3895+offset2))
{
	if(input[i]>(3899+offset2))
{
	if(input[i]>(3901+offset2))
{
	if(input[i]==(3903+offset2))
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
	if(input[i]==(3901+offset2))
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
	if(input[i]>(3897+offset2))
{
	if(input[i]==(3899+offset2))
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
	if(input[i]==(3897+offset2))
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
	if(input[i]>(3891+offset2))
{
	if(input[i]>(3893+offset2))
{
	if(input[i]==(3895+offset2))
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
	if(input[i]==(3893+offset2))
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
	if(input[i]>(3889+offset2))
{
	if(input[i]==(3891+offset2))
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
	if(input[i]==(3889+offset2))
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
	if(input[i]>(3879+offset2))
{
	if(input[i]>(3883+offset2))
{
	if(input[i]>(3885+offset2))
{
	if(input[i]==(3887+offset2))
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
	if(input[i]==(3885+offset2))
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
	if(input[i]>(3881+offset2))
{
	if(input[i]==(3883+offset2))
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
	if(input[i]==(3881+offset2))
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
	if(input[i]>(3875+offset2))
{
	if(input[i]>(3877+offset2))
{
	if(input[i]==(3879+offset2))
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
	if(input[i]==(3877+offset2))
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
	if(input[i]>(3873+offset2))
{
	if(input[i]==(3875+offset2))
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
	if(input[i]==(3873+offset2))
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
	if(input[i]>(3855+offset2))
{
	if(input[i]>(3863+offset2))
{
	if(input[i]>(3867+offset2))
{
	if(input[i]>(3869+offset2))
{
	if(input[i]==(3871+offset2))
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
	if(input[i]==(3869+offset2))
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
	if(input[i]>(3865+offset2))
{
	if(input[i]==(3867+offset2))
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
	if(input[i]==(3865+offset2))
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
	if(input[i]>(3859+offset2))
{
	if(input[i]>(3861+offset2))
{
	if(input[i]==(3863+offset2))
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
	if(input[i]==(3861+offset2))
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
	if(input[i]>(3857+offset2))
{
	if(input[i]==(3859+offset2))
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
	if(input[i]==(3857+offset2))
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
	if(input[i]>(3847+offset2))
{
	if(input[i]>(3851+offset2))
{
	if(input[i]>(3853+offset2))
{
	if(input[i]==(3855+offset2))
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
	if(input[i]==(3853+offset2))
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
	if(input[i]>(3849+offset2))
{
	if(input[i]==(3851+offset2))
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
	if(input[i]==(3849+offset2))
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
	if(input[i]>(3843+offset2))
{
	if(input[i]>(3845+offset2))
{
	if(input[i]==(3847+offset2))
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
	if(input[i]==(3845+offset2))
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
	if(input[i]>(3841+offset2))
{
	if(input[i]==(3843+offset2))
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
	if(input[i]==(3841+offset2))
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
	if(input[i]>(3711+offset2))
{
	if(input[i]>(3775+offset2))
{
	if(input[i]>(3807+offset2))
{
	if(input[i]>(3823+offset2))
{
	if(input[i]>(3831+offset2))
{
	if(input[i]>(3835+offset2))
{
	if(input[i]>(3837+offset2))
{
	if(input[i]==(3839+offset2))
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
	if(input[i]==(3837+offset2))
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
	if(input[i]>(3833+offset2))
{
	if(input[i]==(3835+offset2))
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
	if(input[i]==(3833+offset2))
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
	if(input[i]>(3827+offset2))
{
	if(input[i]>(3829+offset2))
{
	if(input[i]==(3831+offset2))
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
	if(input[i]==(3829+offset2))
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
	if(input[i]>(3825+offset2))
{
	if(input[i]==(3827+offset2))
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
	if(input[i]==(3825+offset2))
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
	if(input[i]>(3815+offset2))
{
	if(input[i]>(3819+offset2))
{
	if(input[i]>(3821+offset2))
{
	if(input[i]==(3823+offset2))
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
	if(input[i]==(3821+offset2))
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
	if(input[i]>(3817+offset2))
{
	if(input[i]==(3819+offset2))
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
	if(input[i]==(3817+offset2))
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
	if(input[i]>(3811+offset2))
{
	if(input[i]>(3813+offset2))
{
	if(input[i]==(3815+offset2))
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
	if(input[i]==(3813+offset2))
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
	if(input[i]>(3809+offset2))
{
	if(input[i]==(3811+offset2))
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
	if(input[i]==(3809+offset2))
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
	if(input[i]>(3791+offset2))
{
	if(input[i]>(3799+offset2))
{
	if(input[i]>(3803+offset2))
{
	if(input[i]>(3805+offset2))
{
	if(input[i]==(3807+offset2))
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
	if(input[i]==(3805+offset2))
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
	if(input[i]>(3801+offset2))
{
	if(input[i]==(3803+offset2))
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
	if(input[i]==(3801+offset2))
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
	if(input[i]>(3795+offset2))
{
	if(input[i]>(3797+offset2))
{
	if(input[i]==(3799+offset2))
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
	if(input[i]==(3797+offset2))
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
	if(input[i]>(3793+offset2))
{
	if(input[i]==(3795+offset2))
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
	if(input[i]==(3793+offset2))
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
	if(input[i]>(3783+offset2))
{
	if(input[i]>(3787+offset2))
{
	if(input[i]>(3789+offset2))
{
	if(input[i]==(3791+offset2))
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
	if(input[i]==(3789+offset2))
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
	if(input[i]>(3785+offset2))
{
	if(input[i]==(3787+offset2))
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
	if(input[i]==(3785+offset2))
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
	if(input[i]>(3779+offset2))
{
	if(input[i]>(3781+offset2))
{
	if(input[i]==(3783+offset2))
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
	if(input[i]==(3781+offset2))
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
	if(input[i]>(3777+offset2))
{
	if(input[i]==(3779+offset2))
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
	if(input[i]==(3777+offset2))
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
	if(input[i]>(3743+offset2))
{
	if(input[i]>(3759+offset2))
{
	if(input[i]>(3767+offset2))
{
	if(input[i]>(3771+offset2))
{
	if(input[i]>(3773+offset2))
{
	if(input[i]==(3775+offset2))
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
	if(input[i]==(3773+offset2))
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
	if(input[i]>(3769+offset2))
{
	if(input[i]==(3771+offset2))
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
	if(input[i]==(3769+offset2))
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
	if(input[i]>(3763+offset2))
{
	if(input[i]>(3765+offset2))
{
	if(input[i]==(3767+offset2))
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
	if(input[i]==(3765+offset2))
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
	if(input[i]>(3761+offset2))
{
	if(input[i]==(3763+offset2))
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
	if(input[i]==(3761+offset2))
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
	if(input[i]>(3751+offset2))
{
	if(input[i]>(3755+offset2))
{
	if(input[i]>(3757+offset2))
{
	if(input[i]==(3759+offset2))
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
	if(input[i]==(3757+offset2))
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
	if(input[i]>(3753+offset2))
{
	if(input[i]==(3755+offset2))
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
	if(input[i]==(3753+offset2))
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
	if(input[i]>(3747+offset2))
{
	if(input[i]>(3749+offset2))
{
	if(input[i]==(3751+offset2))
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
	if(input[i]==(3749+offset2))
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
	if(input[i]>(3745+offset2))
{
	if(input[i]==(3747+offset2))
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
	if(input[i]==(3745+offset2))
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
	if(input[i]>(3727+offset2))
{
	if(input[i]>(3735+offset2))
{
	if(input[i]>(3739+offset2))
{
	if(input[i]>(3741+offset2))
{
	if(input[i]==(3743+offset2))
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
	if(input[i]==(3741+offset2))
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
	if(input[i]>(3737+offset2))
{
	if(input[i]==(3739+offset2))
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
	if(input[i]==(3737+offset2))
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
	if(input[i]>(3731+offset2))
{
	if(input[i]>(3733+offset2))
{
	if(input[i]==(3735+offset2))
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
	if(input[i]==(3733+offset2))
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
	if(input[i]>(3729+offset2))
{
	if(input[i]==(3731+offset2))
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
	if(input[i]==(3729+offset2))
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
	if(input[i]>(3719+offset2))
{
	if(input[i]>(3723+offset2))
{
	if(input[i]>(3725+offset2))
{
	if(input[i]==(3727+offset2))
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
	if(input[i]==(3725+offset2))
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
	if(input[i]>(3721+offset2))
{
	if(input[i]==(3723+offset2))
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
	if(input[i]==(3721+offset2))
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
	if(input[i]>(3715+offset2))
{
	if(input[i]>(3717+offset2))
{
	if(input[i]==(3719+offset2))
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
	if(input[i]==(3717+offset2))
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
	if(input[i]>(3713+offset2))
{
	if(input[i]==(3715+offset2))
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
	if(input[i]==(3713+offset2))
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
	if(input[i]>(3647+offset2))
{
	if(input[i]>(3679+offset2))
{
	if(input[i]>(3695+offset2))
{
	if(input[i]>(3703+offset2))
{
	if(input[i]>(3707+offset2))
{
	if(input[i]>(3709+offset2))
{
	if(input[i]==(3711+offset2))
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
	if(input[i]==(3709+offset2))
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
	if(input[i]>(3705+offset2))
{
	if(input[i]==(3707+offset2))
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
	if(input[i]==(3705+offset2))
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
	if(input[i]>(3699+offset2))
{
	if(input[i]>(3701+offset2))
{
	if(input[i]==(3703+offset2))
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
	if(input[i]==(3701+offset2))
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
	if(input[i]>(3697+offset2))
{
	if(input[i]==(3699+offset2))
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
	if(input[i]==(3697+offset2))
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
	if(input[i]>(3687+offset2))
{
	if(input[i]>(3691+offset2))
{
	if(input[i]>(3693+offset2))
{
	if(input[i]==(3695+offset2))
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
	if(input[i]==(3693+offset2))
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
	if(input[i]>(3689+offset2))
{
	if(input[i]==(3691+offset2))
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
	if(input[i]==(3689+offset2))
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
	if(input[i]>(3683+offset2))
{
	if(input[i]>(3685+offset2))
{
	if(input[i]==(3687+offset2))
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
	if(input[i]==(3685+offset2))
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
	if(input[i]>(3681+offset2))
{
	if(input[i]==(3683+offset2))
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
	if(input[i]==(3681+offset2))
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
	if(input[i]>(3663+offset2))
{
	if(input[i]>(3671+offset2))
{
	if(input[i]>(3675+offset2))
{
	if(input[i]>(3677+offset2))
{
	if(input[i]==(3679+offset2))
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
	if(input[i]==(3677+offset2))
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
	if(input[i]>(3673+offset2))
{
	if(input[i]==(3675+offset2))
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
	if(input[i]==(3673+offset2))
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
	if(input[i]>(3667+offset2))
{
	if(input[i]>(3669+offset2))
{
	if(input[i]==(3671+offset2))
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
	if(input[i]==(3669+offset2))
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
	if(input[i]>(3665+offset2))
{
	if(input[i]==(3667+offset2))
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
	if(input[i]==(3665+offset2))
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
	if(input[i]>(3655+offset2))
{
	if(input[i]>(3659+offset2))
{
	if(input[i]>(3661+offset2))
{
	if(input[i]==(3663+offset2))
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
	if(input[i]==(3661+offset2))
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
	if(input[i]>(3657+offset2))
{
	if(input[i]==(3659+offset2))
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
	if(input[i]==(3657+offset2))
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
	if(input[i]>(3651+offset2))
{
	if(input[i]>(3653+offset2))
{
	if(input[i]==(3655+offset2))
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
	if(input[i]==(3653+offset2))
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
	if(input[i]>(3649+offset2))
{
	if(input[i]==(3651+offset2))
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
	if(input[i]==(3649+offset2))
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
	if(input[i]>(3615+offset2))
{
	if(input[i]>(3631+offset2))
{
	if(input[i]>(3639+offset2))
{
	if(input[i]>(3643+offset2))
{
	if(input[i]>(3645+offset2))
{
	if(input[i]==(3647+offset2))
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
	if(input[i]==(3645+offset2))
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
	if(input[i]>(3641+offset2))
{
	if(input[i]==(3643+offset2))
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
	if(input[i]==(3641+offset2))
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
	if(input[i]>(3635+offset2))
{
	if(input[i]>(3637+offset2))
{
	if(input[i]==(3639+offset2))
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
	if(input[i]==(3637+offset2))
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
	if(input[i]>(3633+offset2))
{
	if(input[i]==(3635+offset2))
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
	if(input[i]==(3633+offset2))
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
	if(input[i]>(3623+offset2))
{
	if(input[i]>(3627+offset2))
{
	if(input[i]>(3629+offset2))
{
	if(input[i]==(3631+offset2))
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
	if(input[i]==(3629+offset2))
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
	if(input[i]>(3625+offset2))
{
	if(input[i]==(3627+offset2))
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
	if(input[i]==(3625+offset2))
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
	if(input[i]>(3619+offset2))
{
	if(input[i]>(3621+offset2))
{
	if(input[i]==(3623+offset2))
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
	if(input[i]==(3621+offset2))
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
	if(input[i]>(3617+offset2))
{
	if(input[i]==(3619+offset2))
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
	if(input[i]==(3617+offset2))
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
	if(input[i]>(3599+offset2))
{
	if(input[i]>(3607+offset2))
{
	if(input[i]>(3611+offset2))
{
	if(input[i]>(3613+offset2))
{
	if(input[i]==(3615+offset2))
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
	if(input[i]==(3613+offset2))
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
	if(input[i]>(3609+offset2))
{
	if(input[i]==(3611+offset2))
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
	if(input[i]==(3609+offset2))
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
	if(input[i]>(3603+offset2))
{
	if(input[i]>(3605+offset2))
{
	if(input[i]==(3607+offset2))
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
	if(input[i]==(3605+offset2))
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
	if(input[i]>(3601+offset2))
{
	if(input[i]==(3603+offset2))
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
	if(input[i]==(3601+offset2))
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
	if(input[i]>(3591+offset2))
{
	if(input[i]>(3595+offset2))
{
	if(input[i]>(3597+offset2))
{
	if(input[i]==(3599+offset2))
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
	if(input[i]==(3597+offset2))
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
	if(input[i]>(3593+offset2))
{
	if(input[i]==(3595+offset2))
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
	if(input[i]==(3593+offset2))
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
	if(input[i]>(3587+offset2))
{
	if(input[i]>(3589+offset2))
{
	if(input[i]==(3591+offset2))
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
	if(input[i]==(3589+offset2))
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
	if(input[i]>(3585+offset2))
{
	if(input[i]==(3587+offset2))
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
	if(input[i]==(3585+offset2))
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
	if(input[i]>(3327+offset2))
{
	if(input[i]>(3455+offset2))
{
	if(input[i]>(3519+offset2))
{
	if(input[i]>(3551+offset2))
{
	if(input[i]>(3567+offset2))
{
	if(input[i]>(3575+offset2))
{
	if(input[i]>(3579+offset2))
{
	if(input[i]>(3581+offset2))
{
	if(input[i]==(3583+offset2))
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
	if(input[i]==(3581+offset2))
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
	if(input[i]>(3577+offset2))
{
	if(input[i]==(3579+offset2))
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
	if(input[i]==(3577+offset2))
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
	if(input[i]>(3571+offset2))
{
	if(input[i]>(3573+offset2))
{
	if(input[i]==(3575+offset2))
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
	if(input[i]==(3573+offset2))
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
	if(input[i]>(3569+offset2))
{
	if(input[i]==(3571+offset2))
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
	if(input[i]==(3569+offset2))
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
	if(input[i]>(3559+offset2))
{
	if(input[i]>(3563+offset2))
{
	if(input[i]>(3565+offset2))
{
	if(input[i]==(3567+offset2))
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
	if(input[i]==(3565+offset2))
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
	if(input[i]>(3561+offset2))
{
	if(input[i]==(3563+offset2))
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
	if(input[i]==(3561+offset2))
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
	if(input[i]>(3555+offset2))
{
	if(input[i]>(3557+offset2))
{
	if(input[i]==(3559+offset2))
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
	if(input[i]==(3557+offset2))
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
	if(input[i]>(3553+offset2))
{
	if(input[i]==(3555+offset2))
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
	if(input[i]==(3553+offset2))
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
	if(input[i]>(3535+offset2))
{
	if(input[i]>(3543+offset2))
{
	if(input[i]>(3547+offset2))
{
	if(input[i]>(3549+offset2))
{
	if(input[i]==(3551+offset2))
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
	if(input[i]==(3549+offset2))
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
	if(input[i]>(3545+offset2))
{
	if(input[i]==(3547+offset2))
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
	if(input[i]==(3545+offset2))
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
	if(input[i]>(3539+offset2))
{
	if(input[i]>(3541+offset2))
{
	if(input[i]==(3543+offset2))
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
	if(input[i]==(3541+offset2))
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
	if(input[i]>(3537+offset2))
{
	if(input[i]==(3539+offset2))
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
	if(input[i]==(3537+offset2))
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
	if(input[i]>(3527+offset2))
{
	if(input[i]>(3531+offset2))
{
	if(input[i]>(3533+offset2))
{
	if(input[i]==(3535+offset2))
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
	if(input[i]==(3533+offset2))
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
	if(input[i]>(3529+offset2))
{
	if(input[i]==(3531+offset2))
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
	if(input[i]==(3529+offset2))
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
	if(input[i]>(3523+offset2))
{
	if(input[i]>(3525+offset2))
{
	if(input[i]==(3527+offset2))
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
	if(input[i]==(3525+offset2))
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
	if(input[i]>(3521+offset2))
{
	if(input[i]==(3523+offset2))
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
	if(input[i]==(3521+offset2))
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
	if(input[i]>(3487+offset2))
{
	if(input[i]>(3503+offset2))
{
	if(input[i]>(3511+offset2))
{
	if(input[i]>(3515+offset2))
{
	if(input[i]>(3517+offset2))
{
	if(input[i]==(3519+offset2))
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
	if(input[i]==(3517+offset2))
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
	if(input[i]>(3513+offset2))
{
	if(input[i]==(3515+offset2))
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
	if(input[i]==(3513+offset2))
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
	if(input[i]>(3507+offset2))
{
	if(input[i]>(3509+offset2))
{
	if(input[i]==(3511+offset2))
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
	if(input[i]==(3509+offset2))
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
	if(input[i]>(3505+offset2))
{
	if(input[i]==(3507+offset2))
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
	if(input[i]==(3505+offset2))
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
	if(input[i]>(3495+offset2))
{
	if(input[i]>(3499+offset2))
{
	if(input[i]>(3501+offset2))
{
	if(input[i]==(3503+offset2))
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
	if(input[i]==(3501+offset2))
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
	if(input[i]>(3497+offset2))
{
	if(input[i]==(3499+offset2))
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
	if(input[i]==(3497+offset2))
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
	if(input[i]>(3491+offset2))
{
	if(input[i]>(3493+offset2))
{
	if(input[i]==(3495+offset2))
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
	if(input[i]==(3493+offset2))
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
	if(input[i]>(3489+offset2))
{
	if(input[i]==(3491+offset2))
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
	if(input[i]==(3489+offset2))
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
	if(input[i]>(3471+offset2))
{
	if(input[i]>(3479+offset2))
{
	if(input[i]>(3483+offset2))
{
	if(input[i]>(3485+offset2))
{
	if(input[i]==(3487+offset2))
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
	if(input[i]==(3485+offset2))
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
	if(input[i]>(3481+offset2))
{
	if(input[i]==(3483+offset2))
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
	if(input[i]==(3481+offset2))
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
	if(input[i]>(3475+offset2))
{
	if(input[i]>(3477+offset2))
{
	if(input[i]==(3479+offset2))
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
	if(input[i]==(3477+offset2))
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
	if(input[i]>(3473+offset2))
{
	if(input[i]==(3475+offset2))
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
	if(input[i]==(3473+offset2))
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
	if(input[i]>(3463+offset2))
{
	if(input[i]>(3467+offset2))
{
	if(input[i]>(3469+offset2))
{
	if(input[i]==(3471+offset2))
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
	if(input[i]==(3469+offset2))
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
	if(input[i]>(3465+offset2))
{
	if(input[i]==(3467+offset2))
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
	if(input[i]==(3465+offset2))
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
	if(input[i]>(3459+offset2))
{
	if(input[i]>(3461+offset2))
{
	if(input[i]==(3463+offset2))
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
	if(input[i]==(3461+offset2))
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
	if(input[i]>(3457+offset2))
{
	if(input[i]==(3459+offset2))
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
	if(input[i]==(3457+offset2))
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
	if(input[i]>(3391+offset2))
{
	if(input[i]>(3423+offset2))
{
	if(input[i]>(3439+offset2))
{
	if(input[i]>(3447+offset2))
{
	if(input[i]>(3451+offset2))
{
	if(input[i]>(3453+offset2))
{
	if(input[i]==(3455+offset2))
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
	if(input[i]==(3453+offset2))
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
	if(input[i]>(3449+offset2))
{
	if(input[i]==(3451+offset2))
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
	if(input[i]==(3449+offset2))
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
	if(input[i]>(3443+offset2))
{
	if(input[i]>(3445+offset2))
{
	if(input[i]==(3447+offset2))
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
	if(input[i]==(3445+offset2))
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
	if(input[i]>(3441+offset2))
{
	if(input[i]==(3443+offset2))
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
	if(input[i]==(3441+offset2))
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
	if(input[i]>(3431+offset2))
{
	if(input[i]>(3435+offset2))
{
	if(input[i]>(3437+offset2))
{
	if(input[i]==(3439+offset2))
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
	if(input[i]==(3437+offset2))
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
	if(input[i]>(3433+offset2))
{
	if(input[i]==(3435+offset2))
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
	if(input[i]==(3433+offset2))
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
	if(input[i]>(3427+offset2))
{
	if(input[i]>(3429+offset2))
{
	if(input[i]==(3431+offset2))
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
	if(input[i]==(3429+offset2))
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
	if(input[i]>(3425+offset2))
{
	if(input[i]==(3427+offset2))
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
	if(input[i]==(3425+offset2))
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
	if(input[i]>(3407+offset2))
{
	if(input[i]>(3415+offset2))
{
	if(input[i]>(3419+offset2))
{
	if(input[i]>(3421+offset2))
{
	if(input[i]==(3423+offset2))
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
	if(input[i]==(3421+offset2))
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
	if(input[i]>(3417+offset2))
{
	if(input[i]==(3419+offset2))
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
	if(input[i]==(3417+offset2))
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
	if(input[i]>(3411+offset2))
{
	if(input[i]>(3413+offset2))
{
	if(input[i]==(3415+offset2))
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
	if(input[i]==(3413+offset2))
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
	if(input[i]>(3409+offset2))
{
	if(input[i]==(3411+offset2))
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
	if(input[i]==(3409+offset2))
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
	if(input[i]>(3399+offset2))
{
	if(input[i]>(3403+offset2))
{
	if(input[i]>(3405+offset2))
{
	if(input[i]==(3407+offset2))
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
	if(input[i]==(3405+offset2))
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
	if(input[i]>(3401+offset2))
{
	if(input[i]==(3403+offset2))
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
	if(input[i]==(3401+offset2))
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
	if(input[i]>(3395+offset2))
{
	if(input[i]>(3397+offset2))
{
	if(input[i]==(3399+offset2))
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
	if(input[i]==(3397+offset2))
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
	if(input[i]>(3393+offset2))
{
	if(input[i]==(3395+offset2))
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
	if(input[i]==(3393+offset2))
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
	if(input[i]>(3359+offset2))
{
	if(input[i]>(3375+offset2))
{
	if(input[i]>(3383+offset2))
{
	if(input[i]>(3387+offset2))
{
	if(input[i]>(3389+offset2))
{
	if(input[i]==(3391+offset2))
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
	if(input[i]==(3389+offset2))
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
	if(input[i]>(3385+offset2))
{
	if(input[i]==(3387+offset2))
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
	if(input[i]==(3385+offset2))
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
	if(input[i]>(3379+offset2))
{
	if(input[i]>(3381+offset2))
{
	if(input[i]==(3383+offset2))
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
	if(input[i]==(3381+offset2))
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
	if(input[i]>(3377+offset2))
{
	if(input[i]==(3379+offset2))
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
	if(input[i]==(3377+offset2))
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
	if(input[i]>(3367+offset2))
{
	if(input[i]>(3371+offset2))
{
	if(input[i]>(3373+offset2))
{
	if(input[i]==(3375+offset2))
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
	if(input[i]==(3373+offset2))
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
	if(input[i]>(3369+offset2))
{
	if(input[i]==(3371+offset2))
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
	if(input[i]==(3369+offset2))
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
	if(input[i]>(3363+offset2))
{
	if(input[i]>(3365+offset2))
{
	if(input[i]==(3367+offset2))
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
	if(input[i]==(3365+offset2))
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
	if(input[i]>(3361+offset2))
{
	if(input[i]==(3363+offset2))
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
	if(input[i]==(3361+offset2))
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
	if(input[i]>(3343+offset2))
{
	if(input[i]>(3351+offset2))
{
	if(input[i]>(3355+offset2))
{
	if(input[i]>(3357+offset2))
{
	if(input[i]==(3359+offset2))
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
	if(input[i]==(3357+offset2))
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
	if(input[i]>(3353+offset2))
{
	if(input[i]==(3355+offset2))
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
	if(input[i]==(3353+offset2))
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
	if(input[i]>(3347+offset2))
{
	if(input[i]>(3349+offset2))
{
	if(input[i]==(3351+offset2))
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
	if(input[i]==(3349+offset2))
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
	if(input[i]>(3345+offset2))
{
	if(input[i]==(3347+offset2))
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
	if(input[i]==(3345+offset2))
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
	if(input[i]>(3335+offset2))
{
	if(input[i]>(3339+offset2))
{
	if(input[i]>(3341+offset2))
{
	if(input[i]==(3343+offset2))
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
	if(input[i]==(3341+offset2))
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
	if(input[i]>(3337+offset2))
{
	if(input[i]==(3339+offset2))
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
	if(input[i]==(3337+offset2))
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
	if(input[i]>(3331+offset2))
{
	if(input[i]>(3333+offset2))
{
	if(input[i]==(3335+offset2))
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
	if(input[i]==(3333+offset2))
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
	if(input[i]>(3329+offset2))
{
	if(input[i]==(3331+offset2))
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
	if(input[i]==(3329+offset2))
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
	if(input[i]>(3199+offset2))
{
	if(input[i]>(3263+offset2))
{
	if(input[i]>(3295+offset2))
{
	if(input[i]>(3311+offset2))
{
	if(input[i]>(3319+offset2))
{
	if(input[i]>(3323+offset2))
{
	if(input[i]>(3325+offset2))
{
	if(input[i]==(3327+offset2))
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
	if(input[i]==(3325+offset2))
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
	if(input[i]>(3321+offset2))
{
	if(input[i]==(3323+offset2))
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
	if(input[i]==(3321+offset2))
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
	if(input[i]>(3315+offset2))
{
	if(input[i]>(3317+offset2))
{
	if(input[i]==(3319+offset2))
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
	if(input[i]==(3317+offset2))
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
	if(input[i]>(3313+offset2))
{
	if(input[i]==(3315+offset2))
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
	if(input[i]==(3313+offset2))
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
	if(input[i]>(3303+offset2))
{
	if(input[i]>(3307+offset2))
{
	if(input[i]>(3309+offset2))
{
	if(input[i]==(3311+offset2))
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
	if(input[i]==(3309+offset2))
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
	if(input[i]>(3305+offset2))
{
	if(input[i]==(3307+offset2))
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
	if(input[i]==(3305+offset2))
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
	if(input[i]>(3299+offset2))
{
	if(input[i]>(3301+offset2))
{
	if(input[i]==(3303+offset2))
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
	if(input[i]==(3301+offset2))
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
	if(input[i]>(3297+offset2))
{
	if(input[i]==(3299+offset2))
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
	if(input[i]==(3297+offset2))
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
	if(input[i]>(3279+offset2))
{
	if(input[i]>(3287+offset2))
{
	if(input[i]>(3291+offset2))
{
	if(input[i]>(3293+offset2))
{
	if(input[i]==(3295+offset2))
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
	if(input[i]==(3293+offset2))
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
	if(input[i]>(3289+offset2))
{
	if(input[i]==(3291+offset2))
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
	if(input[i]==(3289+offset2))
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
	if(input[i]>(3283+offset2))
{
	if(input[i]>(3285+offset2))
{
	if(input[i]==(3287+offset2))
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
	if(input[i]==(3285+offset2))
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
	if(input[i]>(3281+offset2))
{
	if(input[i]==(3283+offset2))
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
	if(input[i]==(3281+offset2))
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
	if(input[i]>(3271+offset2))
{
	if(input[i]>(3275+offset2))
{
	if(input[i]>(3277+offset2))
{
	if(input[i]==(3279+offset2))
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
	if(input[i]==(3277+offset2))
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
	if(input[i]>(3273+offset2))
{
	if(input[i]==(3275+offset2))
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
	if(input[i]==(3273+offset2))
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
	if(input[i]>(3267+offset2))
{
	if(input[i]>(3269+offset2))
{
	if(input[i]==(3271+offset2))
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
	if(input[i]==(3269+offset2))
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
	if(input[i]>(3265+offset2))
{
	if(input[i]==(3267+offset2))
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
	if(input[i]==(3265+offset2))
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
	if(input[i]>(3231+offset2))
{
	if(input[i]>(3247+offset2))
{
	if(input[i]>(3255+offset2))
{
	if(input[i]>(3259+offset2))
{
	if(input[i]>(3261+offset2))
{
	if(input[i]==(3263+offset2))
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
	if(input[i]==(3261+offset2))
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
	if(input[i]>(3257+offset2))
{
	if(input[i]==(3259+offset2))
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
	if(input[i]==(3257+offset2))
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
	if(input[i]>(3251+offset2))
{
	if(input[i]>(3253+offset2))
{
	if(input[i]==(3255+offset2))
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
	if(input[i]==(3253+offset2))
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
	if(input[i]>(3249+offset2))
{
	if(input[i]==(3251+offset2))
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
	if(input[i]==(3249+offset2))
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
	if(input[i]>(3239+offset2))
{
	if(input[i]>(3243+offset2))
{
	if(input[i]>(3245+offset2))
{
	if(input[i]==(3247+offset2))
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
	if(input[i]==(3245+offset2))
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
	if(input[i]>(3241+offset2))
{
	if(input[i]==(3243+offset2))
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
	if(input[i]==(3241+offset2))
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
	if(input[i]>(3235+offset2))
{
	if(input[i]>(3237+offset2))
{
	if(input[i]==(3239+offset2))
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
	if(input[i]==(3237+offset2))
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
	if(input[i]>(3233+offset2))
{
	if(input[i]==(3235+offset2))
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
	if(input[i]==(3233+offset2))
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
	if(input[i]>(3215+offset2))
{
	if(input[i]>(3223+offset2))
{
	if(input[i]>(3227+offset2))
{
	if(input[i]>(3229+offset2))
{
	if(input[i]==(3231+offset2))
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
	if(input[i]==(3229+offset2))
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
	if(input[i]>(3225+offset2))
{
	if(input[i]==(3227+offset2))
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
	if(input[i]==(3225+offset2))
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
	if(input[i]>(3219+offset2))
{
	if(input[i]>(3221+offset2))
{
	if(input[i]==(3223+offset2))
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
	if(input[i]==(3221+offset2))
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
	if(input[i]>(3217+offset2))
{
	if(input[i]==(3219+offset2))
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
	if(input[i]==(3217+offset2))
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
	if(input[i]>(3207+offset2))
{
	if(input[i]>(3211+offset2))
{
	if(input[i]>(3213+offset2))
{
	if(input[i]==(3215+offset2))
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
	if(input[i]==(3213+offset2))
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
	if(input[i]>(3209+offset2))
{
	if(input[i]==(3211+offset2))
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
	if(input[i]==(3209+offset2))
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
	if(input[i]>(3203+offset2))
{
	if(input[i]>(3205+offset2))
{
	if(input[i]==(3207+offset2))
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
	if(input[i]==(3205+offset2))
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
	if(input[i]>(3201+offset2))
{
	if(input[i]==(3203+offset2))
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
	if(input[i]==(3201+offset2))
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
	if(input[i]>(3135+offset2))
{
	if(input[i]>(3167+offset2))
{
	if(input[i]>(3183+offset2))
{
	if(input[i]>(3191+offset2))
{
	if(input[i]>(3195+offset2))
{
	if(input[i]>(3197+offset2))
{
	if(input[i]==(3199+offset2))
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
	if(input[i]==(3197+offset2))
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
	if(input[i]>(3193+offset2))
{
	if(input[i]==(3195+offset2))
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
	if(input[i]==(3193+offset2))
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
	if(input[i]>(3187+offset2))
{
	if(input[i]>(3189+offset2))
{
	if(input[i]==(3191+offset2))
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
	if(input[i]==(3189+offset2))
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
	if(input[i]>(3185+offset2))
{
	if(input[i]==(3187+offset2))
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
	if(input[i]==(3185+offset2))
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
	if(input[i]>(3175+offset2))
{
	if(input[i]>(3179+offset2))
{
	if(input[i]>(3181+offset2))
{
	if(input[i]==(3183+offset2))
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
	if(input[i]==(3181+offset2))
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
	if(input[i]>(3177+offset2))
{
	if(input[i]==(3179+offset2))
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
	if(input[i]==(3177+offset2))
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
	if(input[i]>(3171+offset2))
{
	if(input[i]>(3173+offset2))
{
	if(input[i]==(3175+offset2))
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
	if(input[i]==(3173+offset2))
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
	if(input[i]>(3169+offset2))
{
	if(input[i]==(3171+offset2))
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
	if(input[i]==(3169+offset2))
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
	if(input[i]>(3151+offset2))
{
	if(input[i]>(3159+offset2))
{
	if(input[i]>(3163+offset2))
{
	if(input[i]>(3165+offset2))
{
	if(input[i]==(3167+offset2))
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
	if(input[i]==(3165+offset2))
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
	if(input[i]>(3161+offset2))
{
	if(input[i]==(3163+offset2))
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
	if(input[i]==(3161+offset2))
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
	if(input[i]>(3155+offset2))
{
	if(input[i]>(3157+offset2))
{
	if(input[i]==(3159+offset2))
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
	if(input[i]==(3157+offset2))
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
	if(input[i]>(3153+offset2))
{
	if(input[i]==(3155+offset2))
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
	if(input[i]==(3153+offset2))
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
	if(input[i]>(3143+offset2))
{
	if(input[i]>(3147+offset2))
{
	if(input[i]>(3149+offset2))
{
	if(input[i]==(3151+offset2))
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
	if(input[i]==(3149+offset2))
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
	if(input[i]>(3145+offset2))
{
	if(input[i]==(3147+offset2))
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
	if(input[i]==(3145+offset2))
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
	if(input[i]>(3139+offset2))
{
	if(input[i]>(3141+offset2))
{
	if(input[i]==(3143+offset2))
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
	if(input[i]==(3141+offset2))
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
	if(input[i]>(3137+offset2))
{
	if(input[i]==(3139+offset2))
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
	if(input[i]==(3137+offset2))
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
	if(input[i]>(3103+offset2))
{
	if(input[i]>(3119+offset2))
{
	if(input[i]>(3127+offset2))
{
	if(input[i]>(3131+offset2))
{
	if(input[i]>(3133+offset2))
{
	if(input[i]==(3135+offset2))
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
	if(input[i]==(3133+offset2))
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
	if(input[i]>(3129+offset2))
{
	if(input[i]==(3131+offset2))
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
	if(input[i]==(3129+offset2))
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
	if(input[i]>(3123+offset2))
{
	if(input[i]>(3125+offset2))
{
	if(input[i]==(3127+offset2))
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
	if(input[i]==(3125+offset2))
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
	if(input[i]>(3121+offset2))
{
	if(input[i]==(3123+offset2))
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
	if(input[i]==(3121+offset2))
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
	if(input[i]>(3111+offset2))
{
	if(input[i]>(3115+offset2))
{
	if(input[i]>(3117+offset2))
{
	if(input[i]==(3119+offset2))
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
	if(input[i]==(3117+offset2))
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
	if(input[i]>(3113+offset2))
{
	if(input[i]==(3115+offset2))
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
	if(input[i]==(3113+offset2))
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
	if(input[i]>(3107+offset2))
{
	if(input[i]>(3109+offset2))
{
	if(input[i]==(3111+offset2))
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
	if(input[i]==(3109+offset2))
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
	if(input[i]>(3105+offset2))
{
	if(input[i]==(3107+offset2))
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
	if(input[i]==(3105+offset2))
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
	if(input[i]>(3087+offset2))
{
	if(input[i]>(3095+offset2))
{
	if(input[i]>(3099+offset2))
{
	if(input[i]>(3101+offset2))
{
	if(input[i]==(3103+offset2))
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
	if(input[i]==(3101+offset2))
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
	if(input[i]>(3097+offset2))
{
	if(input[i]==(3099+offset2))
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
	if(input[i]==(3097+offset2))
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
	if(input[i]>(3091+offset2))
{
	if(input[i]>(3093+offset2))
{
	if(input[i]==(3095+offset2))
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
	if(input[i]==(3093+offset2))
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
	if(input[i]>(3089+offset2))
{
	if(input[i]==(3091+offset2))
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
	if(input[i]==(3089+offset2))
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
	if(input[i]>(3079+offset2))
{
	if(input[i]>(3083+offset2))
{
	if(input[i]>(3085+offset2))
{
	if(input[i]==(3087+offset2))
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
	if(input[i]==(3085+offset2))
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
	if(input[i]>(3081+offset2))
{
	if(input[i]==(3083+offset2))
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
	if(input[i]==(3081+offset2))
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
	if(input[i]>(3075+offset2))
{
	if(input[i]>(3077+offset2))
{
	if(input[i]==(3079+offset2))
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
	if(input[i]==(3077+offset2))
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
	if(input[i]>(3073+offset2))
{
	if(input[i]==(3075+offset2))
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
	if(input[i]==(3073+offset2))
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
	if(input[i]>(2559+offset2))
{
	if(input[i]>(2815+offset2))
{
	if(input[i]>(2943+offset2))
{
	if(input[i]>(3007+offset2))
{
	if(input[i]>(3039+offset2))
{
	if(input[i]>(3055+offset2))
{
	if(input[i]>(3063+offset2))
{
	if(input[i]>(3067+offset2))
{
	if(input[i]>(3069+offset2))
{
	if(input[i]==(3071+offset2))
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
	if(input[i]==(3069+offset2))
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
	if(input[i]>(3065+offset2))
{
	if(input[i]==(3067+offset2))
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
	if(input[i]==(3065+offset2))
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
	if(input[i]>(3059+offset2))
{
	if(input[i]>(3061+offset2))
{
	if(input[i]==(3063+offset2))
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
	if(input[i]==(3061+offset2))
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
	if(input[i]>(3057+offset2))
{
	if(input[i]==(3059+offset2))
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
	if(input[i]==(3057+offset2))
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
	if(input[i]>(3047+offset2))
{
	if(input[i]>(3051+offset2))
{
	if(input[i]>(3053+offset2))
{
	if(input[i]==(3055+offset2))
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
	if(input[i]==(3053+offset2))
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
	if(input[i]>(3049+offset2))
{
	if(input[i]==(3051+offset2))
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
	if(input[i]==(3049+offset2))
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
	if(input[i]>(3043+offset2))
{
	if(input[i]>(3045+offset2))
{
	if(input[i]==(3047+offset2))
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
	if(input[i]==(3045+offset2))
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
	if(input[i]>(3041+offset2))
{
	if(input[i]==(3043+offset2))
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
	if(input[i]==(3041+offset2))
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
	if(input[i]>(3023+offset2))
{
	if(input[i]>(3031+offset2))
{
	if(input[i]>(3035+offset2))
{
	if(input[i]>(3037+offset2))
{
	if(input[i]==(3039+offset2))
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
	if(input[i]==(3037+offset2))
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
	if(input[i]>(3033+offset2))
{
	if(input[i]==(3035+offset2))
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
	if(input[i]==(3033+offset2))
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
	if(input[i]>(3027+offset2))
{
	if(input[i]>(3029+offset2))
{
	if(input[i]==(3031+offset2))
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
	if(input[i]==(3029+offset2))
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
	if(input[i]>(3025+offset2))
{
	if(input[i]==(3027+offset2))
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
	if(input[i]==(3025+offset2))
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
	if(input[i]>(3015+offset2))
{
	if(input[i]>(3019+offset2))
{
	if(input[i]>(3021+offset2))
{
	if(input[i]==(3023+offset2))
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
	if(input[i]==(3021+offset2))
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
	if(input[i]>(3017+offset2))
{
	if(input[i]==(3019+offset2))
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
	if(input[i]==(3017+offset2))
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
	if(input[i]>(3011+offset2))
{
	if(input[i]>(3013+offset2))
{
	if(input[i]==(3015+offset2))
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
	if(input[i]==(3013+offset2))
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
	if(input[i]>(3009+offset2))
{
	if(input[i]==(3011+offset2))
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
	if(input[i]==(3009+offset2))
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
	if(input[i]>(2975+offset2))
{
	if(input[i]>(2991+offset2))
{
	if(input[i]>(2999+offset2))
{
	if(input[i]>(3003+offset2))
{
	if(input[i]>(3005+offset2))
{
	if(input[i]==(3007+offset2))
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
	if(input[i]==(3005+offset2))
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
	if(input[i]>(3001+offset2))
{
	if(input[i]==(3003+offset2))
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
	if(input[i]==(3001+offset2))
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
	if(input[i]>(2995+offset2))
{
	if(input[i]>(2997+offset2))
{
	if(input[i]==(2999+offset2))
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
	if(input[i]==(2997+offset2))
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
	if(input[i]>(2993+offset2))
{
	if(input[i]==(2995+offset2))
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
	if(input[i]==(2993+offset2))
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
	if(input[i]>(2983+offset2))
{
	if(input[i]>(2987+offset2))
{
	if(input[i]>(2989+offset2))
{
	if(input[i]==(2991+offset2))
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
	if(input[i]==(2989+offset2))
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
	if(input[i]>(2985+offset2))
{
	if(input[i]==(2987+offset2))
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
	if(input[i]==(2985+offset2))
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
	if(input[i]>(2979+offset2))
{
	if(input[i]>(2981+offset2))
{
	if(input[i]==(2983+offset2))
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
	if(input[i]==(2981+offset2))
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
	if(input[i]>(2977+offset2))
{
	if(input[i]==(2979+offset2))
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
	if(input[i]==(2977+offset2))
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
	if(input[i]>(2959+offset2))
{
	if(input[i]>(2967+offset2))
{
	if(input[i]>(2971+offset2))
{
	if(input[i]>(2973+offset2))
{
	if(input[i]==(2975+offset2))
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
	if(input[i]==(2973+offset2))
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
	if(input[i]>(2969+offset2))
{
	if(input[i]==(2971+offset2))
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
	if(input[i]==(2969+offset2))
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
	if(input[i]>(2963+offset2))
{
	if(input[i]>(2965+offset2))
{
	if(input[i]==(2967+offset2))
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
	if(input[i]==(2965+offset2))
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
	if(input[i]>(2961+offset2))
{
	if(input[i]==(2963+offset2))
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
	if(input[i]==(2961+offset2))
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
	if(input[i]>(2951+offset2))
{
	if(input[i]>(2955+offset2))
{
	if(input[i]>(2957+offset2))
{
	if(input[i]==(2959+offset2))
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
	if(input[i]==(2957+offset2))
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
	if(input[i]>(2953+offset2))
{
	if(input[i]==(2955+offset2))
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
	if(input[i]==(2953+offset2))
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
	if(input[i]>(2947+offset2))
{
	if(input[i]>(2949+offset2))
{
	if(input[i]==(2951+offset2))
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
	if(input[i]==(2949+offset2))
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
	if(input[i]>(2945+offset2))
{
	if(input[i]==(2947+offset2))
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
	if(input[i]==(2945+offset2))
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
	if(input[i]>(2879+offset2))
{
	if(input[i]>(2911+offset2))
{
	if(input[i]>(2927+offset2))
{
	if(input[i]>(2935+offset2))
{
	if(input[i]>(2939+offset2))
{
	if(input[i]>(2941+offset2))
{
	if(input[i]==(2943+offset2))
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
	if(input[i]==(2941+offset2))
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
	if(input[i]>(2937+offset2))
{
	if(input[i]==(2939+offset2))
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
	if(input[i]==(2937+offset2))
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
	if(input[i]>(2931+offset2))
{
	if(input[i]>(2933+offset2))
{
	if(input[i]==(2935+offset2))
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
	if(input[i]==(2933+offset2))
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
	if(input[i]>(2929+offset2))
{
	if(input[i]==(2931+offset2))
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
	if(input[i]==(2929+offset2))
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
	if(input[i]>(2919+offset2))
{
	if(input[i]>(2923+offset2))
{
	if(input[i]>(2925+offset2))
{
	if(input[i]==(2927+offset2))
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
	if(input[i]==(2925+offset2))
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
	if(input[i]>(2921+offset2))
{
	if(input[i]==(2923+offset2))
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
	if(input[i]==(2921+offset2))
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
	if(input[i]>(2915+offset2))
{
	if(input[i]>(2917+offset2))
{
	if(input[i]==(2919+offset2))
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
	if(input[i]==(2917+offset2))
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
	if(input[i]>(2913+offset2))
{
	if(input[i]==(2915+offset2))
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
	if(input[i]==(2913+offset2))
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
	if(input[i]>(2895+offset2))
{
	if(input[i]>(2903+offset2))
{
	if(input[i]>(2907+offset2))
{
	if(input[i]>(2909+offset2))
{
	if(input[i]==(2911+offset2))
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
	if(input[i]==(2909+offset2))
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
	if(input[i]>(2905+offset2))
{
	if(input[i]==(2907+offset2))
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
	if(input[i]==(2905+offset2))
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
	if(input[i]>(2899+offset2))
{
	if(input[i]>(2901+offset2))
{
	if(input[i]==(2903+offset2))
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
	if(input[i]==(2901+offset2))
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
	if(input[i]>(2897+offset2))
{
	if(input[i]==(2899+offset2))
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
	if(input[i]==(2897+offset2))
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
	if(input[i]>(2887+offset2))
{
	if(input[i]>(2891+offset2))
{
	if(input[i]>(2893+offset2))
{
	if(input[i]==(2895+offset2))
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
	if(input[i]==(2893+offset2))
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
	if(input[i]>(2889+offset2))
{
	if(input[i]==(2891+offset2))
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
	if(input[i]==(2889+offset2))
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
	if(input[i]>(2883+offset2))
{
	if(input[i]>(2885+offset2))
{
	if(input[i]==(2887+offset2))
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
	if(input[i]==(2885+offset2))
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
	if(input[i]>(2881+offset2))
{
	if(input[i]==(2883+offset2))
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
	if(input[i]==(2881+offset2))
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
	if(input[i]>(2847+offset2))
{
	if(input[i]>(2863+offset2))
{
	if(input[i]>(2871+offset2))
{
	if(input[i]>(2875+offset2))
{
	if(input[i]>(2877+offset2))
{
	if(input[i]==(2879+offset2))
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
	if(input[i]==(2877+offset2))
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
	if(input[i]>(2873+offset2))
{
	if(input[i]==(2875+offset2))
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
	if(input[i]==(2873+offset2))
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
	if(input[i]>(2867+offset2))
{
	if(input[i]>(2869+offset2))
{
	if(input[i]==(2871+offset2))
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
	if(input[i]==(2869+offset2))
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
	if(input[i]>(2865+offset2))
{
	if(input[i]==(2867+offset2))
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
	if(input[i]==(2865+offset2))
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
	if(input[i]>(2855+offset2))
{
	if(input[i]>(2859+offset2))
{
	if(input[i]>(2861+offset2))
{
	if(input[i]==(2863+offset2))
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
	if(input[i]==(2861+offset2))
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
	if(input[i]>(2857+offset2))
{
	if(input[i]==(2859+offset2))
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
	if(input[i]==(2857+offset2))
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
	if(input[i]>(2851+offset2))
{
	if(input[i]>(2853+offset2))
{
	if(input[i]==(2855+offset2))
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
	if(input[i]==(2853+offset2))
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
	if(input[i]>(2849+offset2))
{
	if(input[i]==(2851+offset2))
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
	if(input[i]==(2849+offset2))
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
	if(input[i]>(2831+offset2))
{
	if(input[i]>(2839+offset2))
{
	if(input[i]>(2843+offset2))
{
	if(input[i]>(2845+offset2))
{
	if(input[i]==(2847+offset2))
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
	if(input[i]==(2845+offset2))
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
	if(input[i]>(2841+offset2))
{
	if(input[i]==(2843+offset2))
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
	if(input[i]==(2841+offset2))
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
	if(input[i]>(2835+offset2))
{
	if(input[i]>(2837+offset2))
{
	if(input[i]==(2839+offset2))
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
	if(input[i]==(2837+offset2))
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
	if(input[i]>(2833+offset2))
{
	if(input[i]==(2835+offset2))
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
	if(input[i]==(2833+offset2))
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
	if(input[i]>(2823+offset2))
{
	if(input[i]>(2827+offset2))
{
	if(input[i]>(2829+offset2))
{
	if(input[i]==(2831+offset2))
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
	if(input[i]==(2829+offset2))
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
	if(input[i]>(2825+offset2))
{
	if(input[i]==(2827+offset2))
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
	if(input[i]==(2825+offset2))
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
	if(input[i]>(2819+offset2))
{
	if(input[i]>(2821+offset2))
{
	if(input[i]==(2823+offset2))
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
	if(input[i]==(2821+offset2))
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
	if(input[i]>(2817+offset2))
{
	if(input[i]==(2819+offset2))
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
	if(input[i]==(2817+offset2))
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
	if(input[i]>(2687+offset2))
{
	if(input[i]>(2751+offset2))
{
	if(input[i]>(2783+offset2))
{
	if(input[i]>(2799+offset2))
{
	if(input[i]>(2807+offset2))
{
	if(input[i]>(2811+offset2))
{
	if(input[i]>(2813+offset2))
{
	if(input[i]==(2815+offset2))
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
	if(input[i]==(2813+offset2))
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
	if(input[i]>(2809+offset2))
{
	if(input[i]==(2811+offset2))
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
	if(input[i]==(2809+offset2))
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
	if(input[i]>(2803+offset2))
{
	if(input[i]>(2805+offset2))
{
	if(input[i]==(2807+offset2))
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
	if(input[i]==(2805+offset2))
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
	if(input[i]>(2801+offset2))
{
	if(input[i]==(2803+offset2))
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
	if(input[i]==(2801+offset2))
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
	if(input[i]>(2791+offset2))
{
	if(input[i]>(2795+offset2))
{
	if(input[i]>(2797+offset2))
{
	if(input[i]==(2799+offset2))
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
	if(input[i]==(2797+offset2))
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
	if(input[i]>(2793+offset2))
{
	if(input[i]==(2795+offset2))
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
	if(input[i]==(2793+offset2))
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
	if(input[i]>(2787+offset2))
{
	if(input[i]>(2789+offset2))
{
	if(input[i]==(2791+offset2))
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
	if(input[i]==(2789+offset2))
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
	if(input[i]>(2785+offset2))
{
	if(input[i]==(2787+offset2))
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
	if(input[i]==(2785+offset2))
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
	if(input[i]>(2767+offset2))
{
	if(input[i]>(2775+offset2))
{
	if(input[i]>(2779+offset2))
{
	if(input[i]>(2781+offset2))
{
	if(input[i]==(2783+offset2))
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
	if(input[i]==(2781+offset2))
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
	if(input[i]>(2777+offset2))
{
	if(input[i]==(2779+offset2))
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
	if(input[i]==(2777+offset2))
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
	if(input[i]>(2771+offset2))
{
	if(input[i]>(2773+offset2))
{
	if(input[i]==(2775+offset2))
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
	if(input[i]==(2773+offset2))
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
	if(input[i]>(2769+offset2))
{
	if(input[i]==(2771+offset2))
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
	if(input[i]==(2769+offset2))
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
	if(input[i]>(2759+offset2))
{
	if(input[i]>(2763+offset2))
{
	if(input[i]>(2765+offset2))
{
	if(input[i]==(2767+offset2))
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
	if(input[i]==(2765+offset2))
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
	if(input[i]>(2761+offset2))
{
	if(input[i]==(2763+offset2))
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
	if(input[i]==(2761+offset2))
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
	if(input[i]>(2755+offset2))
{
	if(input[i]>(2757+offset2))
{
	if(input[i]==(2759+offset2))
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
	if(input[i]==(2757+offset2))
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
	if(input[i]>(2753+offset2))
{
	if(input[i]==(2755+offset2))
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
	if(input[i]==(2753+offset2))
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
	if(input[i]>(2719+offset2))
{
	if(input[i]>(2735+offset2))
{
	if(input[i]>(2743+offset2))
{
	if(input[i]>(2747+offset2))
{
	if(input[i]>(2749+offset2))
{
	if(input[i]==(2751+offset2))
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
	if(input[i]==(2749+offset2))
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
	if(input[i]>(2745+offset2))
{
	if(input[i]==(2747+offset2))
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
	if(input[i]==(2745+offset2))
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
	if(input[i]>(2739+offset2))
{
	if(input[i]>(2741+offset2))
{
	if(input[i]==(2743+offset2))
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
	if(input[i]==(2741+offset2))
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
	if(input[i]>(2737+offset2))
{
	if(input[i]==(2739+offset2))
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
	if(input[i]==(2737+offset2))
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
	if(input[i]>(2727+offset2))
{
	if(input[i]>(2731+offset2))
{
	if(input[i]>(2733+offset2))
{
	if(input[i]==(2735+offset2))
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
	if(input[i]==(2733+offset2))
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
	if(input[i]>(2729+offset2))
{
	if(input[i]==(2731+offset2))
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
	if(input[i]==(2729+offset2))
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
	if(input[i]>(2723+offset2))
{
	if(input[i]>(2725+offset2))
{
	if(input[i]==(2727+offset2))
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
	if(input[i]==(2725+offset2))
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
	if(input[i]>(2721+offset2))
{
	if(input[i]==(2723+offset2))
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
	if(input[i]==(2721+offset2))
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
	if(input[i]>(2703+offset2))
{
	if(input[i]>(2711+offset2))
{
	if(input[i]>(2715+offset2))
{
	if(input[i]>(2717+offset2))
{
	if(input[i]==(2719+offset2))
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
	if(input[i]==(2717+offset2))
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
	if(input[i]>(2713+offset2))
{
	if(input[i]==(2715+offset2))
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
	if(input[i]==(2713+offset2))
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
	if(input[i]>(2707+offset2))
{
	if(input[i]>(2709+offset2))
{
	if(input[i]==(2711+offset2))
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
	if(input[i]==(2709+offset2))
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
	if(input[i]>(2705+offset2))
{
	if(input[i]==(2707+offset2))
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
	if(input[i]==(2705+offset2))
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
	if(input[i]>(2695+offset2))
{
	if(input[i]>(2699+offset2))
{
	if(input[i]>(2701+offset2))
{
	if(input[i]==(2703+offset2))
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
	if(input[i]==(2701+offset2))
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
	if(input[i]>(2697+offset2))
{
	if(input[i]==(2699+offset2))
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
	if(input[i]==(2697+offset2))
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
	if(input[i]>(2691+offset2))
{
	if(input[i]>(2693+offset2))
{
	if(input[i]==(2695+offset2))
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
	if(input[i]==(2693+offset2))
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
	if(input[i]>(2689+offset2))
{
	if(input[i]==(2691+offset2))
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
	if(input[i]==(2689+offset2))
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
	if(input[i]>(2623+offset2))
{
	if(input[i]>(2655+offset2))
{
	if(input[i]>(2671+offset2))
{
	if(input[i]>(2679+offset2))
{
	if(input[i]>(2683+offset2))
{
	if(input[i]>(2685+offset2))
{
	if(input[i]==(2687+offset2))
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
	if(input[i]==(2685+offset2))
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
	if(input[i]>(2681+offset2))
{
	if(input[i]==(2683+offset2))
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
	if(input[i]==(2681+offset2))
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
	if(input[i]>(2675+offset2))
{
	if(input[i]>(2677+offset2))
{
	if(input[i]==(2679+offset2))
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
	if(input[i]==(2677+offset2))
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
	if(input[i]>(2673+offset2))
{
	if(input[i]==(2675+offset2))
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
	if(input[i]==(2673+offset2))
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
	if(input[i]>(2663+offset2))
{
	if(input[i]>(2667+offset2))
{
	if(input[i]>(2669+offset2))
{
	if(input[i]==(2671+offset2))
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
	if(input[i]==(2669+offset2))
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
	if(input[i]>(2665+offset2))
{
	if(input[i]==(2667+offset2))
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
	if(input[i]==(2665+offset2))
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
	if(input[i]>(2659+offset2))
{
	if(input[i]>(2661+offset2))
{
	if(input[i]==(2663+offset2))
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
	if(input[i]==(2661+offset2))
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
	if(input[i]>(2657+offset2))
{
	if(input[i]==(2659+offset2))
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
	if(input[i]==(2657+offset2))
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
	if(input[i]>(2639+offset2))
{
	if(input[i]>(2647+offset2))
{
	if(input[i]>(2651+offset2))
{
	if(input[i]>(2653+offset2))
{
	if(input[i]==(2655+offset2))
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
	if(input[i]==(2653+offset2))
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
	if(input[i]>(2649+offset2))
{
	if(input[i]==(2651+offset2))
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
	if(input[i]==(2649+offset2))
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
	if(input[i]>(2643+offset2))
{
	if(input[i]>(2645+offset2))
{
	if(input[i]==(2647+offset2))
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
	if(input[i]==(2645+offset2))
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
	if(input[i]>(2641+offset2))
{
	if(input[i]==(2643+offset2))
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
	if(input[i]==(2641+offset2))
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
	if(input[i]>(2631+offset2))
{
	if(input[i]>(2635+offset2))
{
	if(input[i]>(2637+offset2))
{
	if(input[i]==(2639+offset2))
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
	if(input[i]==(2637+offset2))
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
	if(input[i]>(2633+offset2))
{
	if(input[i]==(2635+offset2))
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
	if(input[i]==(2633+offset2))
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
	if(input[i]>(2627+offset2))
{
	if(input[i]>(2629+offset2))
{
	if(input[i]==(2631+offset2))
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
	if(input[i]==(2629+offset2))
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
	if(input[i]>(2625+offset2))
{
	if(input[i]==(2627+offset2))
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
	if(input[i]==(2625+offset2))
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
	if(input[i]>(2591+offset2))
{
	if(input[i]>(2607+offset2))
{
	if(input[i]>(2615+offset2))
{
	if(input[i]>(2619+offset2))
{
	if(input[i]>(2621+offset2))
{
	if(input[i]==(2623+offset2))
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
	if(input[i]==(2621+offset2))
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
	if(input[i]>(2617+offset2))
{
	if(input[i]==(2619+offset2))
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
	if(input[i]==(2617+offset2))
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
	if(input[i]>(2611+offset2))
{
	if(input[i]>(2613+offset2))
{
	if(input[i]==(2615+offset2))
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
	if(input[i]==(2613+offset2))
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
	if(input[i]>(2609+offset2))
{
	if(input[i]==(2611+offset2))
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
	if(input[i]==(2609+offset2))
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
	if(input[i]>(2599+offset2))
{
	if(input[i]>(2603+offset2))
{
	if(input[i]>(2605+offset2))
{
	if(input[i]==(2607+offset2))
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
	if(input[i]==(2605+offset2))
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
	if(input[i]>(2601+offset2))
{
	if(input[i]==(2603+offset2))
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
	if(input[i]==(2601+offset2))
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
	if(input[i]>(2595+offset2))
{
	if(input[i]>(2597+offset2))
{
	if(input[i]==(2599+offset2))
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
	if(input[i]==(2597+offset2))
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
	if(input[i]>(2593+offset2))
{
	if(input[i]==(2595+offset2))
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
	if(input[i]==(2593+offset2))
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
	if(input[i]>(2575+offset2))
{
	if(input[i]>(2583+offset2))
{
	if(input[i]>(2587+offset2))
{
	if(input[i]>(2589+offset2))
{
	if(input[i]==(2591+offset2))
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
	if(input[i]==(2589+offset2))
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
	if(input[i]>(2585+offset2))
{
	if(input[i]==(2587+offset2))
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
	if(input[i]==(2585+offset2))
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
	if(input[i]>(2579+offset2))
{
	if(input[i]>(2581+offset2))
{
	if(input[i]==(2583+offset2))
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
	if(input[i]==(2581+offset2))
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
	if(input[i]>(2577+offset2))
{
	if(input[i]==(2579+offset2))
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
	if(input[i]==(2577+offset2))
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
	if(input[i]>(2567+offset2))
{
	if(input[i]>(2571+offset2))
{
	if(input[i]>(2573+offset2))
{
	if(input[i]==(2575+offset2))
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
	if(input[i]==(2573+offset2))
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
	if(input[i]>(2569+offset2))
{
	if(input[i]==(2571+offset2))
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
	if(input[i]==(2569+offset2))
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
	if(input[i]>(2563+offset2))
{
	if(input[i]>(2565+offset2))
{
	if(input[i]==(2567+offset2))
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
	if(input[i]==(2565+offset2))
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
	if(input[i]>(2561+offset2))
{
	if(input[i]==(2563+offset2))
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
	if(input[i]==(2561+offset2))
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
	if(input[i]>(2303+offset2))
{
	if(input[i]>(2431+offset2))
{
	if(input[i]>(2495+offset2))
{
	if(input[i]>(2527+offset2))
{
	if(input[i]>(2543+offset2))
{
	if(input[i]>(2551+offset2))
{
	if(input[i]>(2555+offset2))
{
	if(input[i]>(2557+offset2))
{
	if(input[i]==(2559+offset2))
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
	if(input[i]==(2557+offset2))
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
	if(input[i]>(2553+offset2))
{
	if(input[i]==(2555+offset2))
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
	if(input[i]==(2553+offset2))
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
	if(input[i]>(2547+offset2))
{
	if(input[i]>(2549+offset2))
{
	if(input[i]==(2551+offset2))
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
	if(input[i]==(2549+offset2))
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
	if(input[i]>(2545+offset2))
{
	if(input[i]==(2547+offset2))
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
	if(input[i]==(2545+offset2))
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
	if(input[i]>(2535+offset2))
{
	if(input[i]>(2539+offset2))
{
	if(input[i]>(2541+offset2))
{
	if(input[i]==(2543+offset2))
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
	if(input[i]==(2541+offset2))
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
	if(input[i]>(2537+offset2))
{
	if(input[i]==(2539+offset2))
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
	if(input[i]==(2537+offset2))
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
	if(input[i]>(2531+offset2))
{
	if(input[i]>(2533+offset2))
{
	if(input[i]==(2535+offset2))
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
	if(input[i]==(2533+offset2))
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
	if(input[i]>(2529+offset2))
{
	if(input[i]==(2531+offset2))
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
	if(input[i]==(2529+offset2))
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
	if(input[i]>(2511+offset2))
{
	if(input[i]>(2519+offset2))
{
	if(input[i]>(2523+offset2))
{
	if(input[i]>(2525+offset2))
{
	if(input[i]==(2527+offset2))
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
	if(input[i]==(2525+offset2))
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
	if(input[i]>(2521+offset2))
{
	if(input[i]==(2523+offset2))
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
	if(input[i]==(2521+offset2))
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
	if(input[i]>(2515+offset2))
{
	if(input[i]>(2517+offset2))
{
	if(input[i]==(2519+offset2))
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
	if(input[i]==(2517+offset2))
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
	if(input[i]>(2513+offset2))
{
	if(input[i]==(2515+offset2))
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
	if(input[i]==(2513+offset2))
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
	if(input[i]>(2503+offset2))
{
	if(input[i]>(2507+offset2))
{
	if(input[i]>(2509+offset2))
{
	if(input[i]==(2511+offset2))
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
	if(input[i]==(2509+offset2))
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
	if(input[i]>(2505+offset2))
{
	if(input[i]==(2507+offset2))
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
	if(input[i]==(2505+offset2))
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
	if(input[i]>(2499+offset2))
{
	if(input[i]>(2501+offset2))
{
	if(input[i]==(2503+offset2))
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
	if(input[i]==(2501+offset2))
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
	if(input[i]>(2497+offset2))
{
	if(input[i]==(2499+offset2))
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
	if(input[i]==(2497+offset2))
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
	if(input[i]>(2463+offset2))
{
	if(input[i]>(2479+offset2))
{
	if(input[i]>(2487+offset2))
{
	if(input[i]>(2491+offset2))
{
	if(input[i]>(2493+offset2))
{
	if(input[i]==(2495+offset2))
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
	if(input[i]==(2493+offset2))
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
	if(input[i]>(2489+offset2))
{
	if(input[i]==(2491+offset2))
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
	if(input[i]==(2489+offset2))
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
	if(input[i]>(2483+offset2))
{
	if(input[i]>(2485+offset2))
{
	if(input[i]==(2487+offset2))
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
	if(input[i]==(2485+offset2))
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
	if(input[i]>(2481+offset2))
{
	if(input[i]==(2483+offset2))
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
	if(input[i]==(2481+offset2))
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
	if(input[i]>(2471+offset2))
{
	if(input[i]>(2475+offset2))
{
	if(input[i]>(2477+offset2))
{
	if(input[i]==(2479+offset2))
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
	if(input[i]==(2477+offset2))
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
	if(input[i]>(2473+offset2))
{
	if(input[i]==(2475+offset2))
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
	if(input[i]==(2473+offset2))
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
	if(input[i]>(2467+offset2))
{
	if(input[i]>(2469+offset2))
{
	if(input[i]==(2471+offset2))
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
	if(input[i]==(2469+offset2))
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
	if(input[i]>(2465+offset2))
{
	if(input[i]==(2467+offset2))
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
	if(input[i]==(2465+offset2))
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
	if(input[i]>(2447+offset2))
{
	if(input[i]>(2455+offset2))
{
	if(input[i]>(2459+offset2))
{
	if(input[i]>(2461+offset2))
{
	if(input[i]==(2463+offset2))
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
	if(input[i]==(2461+offset2))
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
	if(input[i]>(2457+offset2))
{
	if(input[i]==(2459+offset2))
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
	if(input[i]==(2457+offset2))
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
	if(input[i]>(2451+offset2))
{
	if(input[i]>(2453+offset2))
{
	if(input[i]==(2455+offset2))
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
	if(input[i]==(2453+offset2))
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
	if(input[i]>(2449+offset2))
{
	if(input[i]==(2451+offset2))
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
	if(input[i]==(2449+offset2))
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
	if(input[i]>(2439+offset2))
{
	if(input[i]>(2443+offset2))
{
	if(input[i]>(2445+offset2))
{
	if(input[i]==(2447+offset2))
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
	if(input[i]==(2445+offset2))
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
	if(input[i]>(2441+offset2))
{
	if(input[i]==(2443+offset2))
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
	if(input[i]==(2441+offset2))
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
	if(input[i]>(2435+offset2))
{
	if(input[i]>(2437+offset2))
{
	if(input[i]==(2439+offset2))
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
	if(input[i]==(2437+offset2))
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
	if(input[i]>(2433+offset2))
{
	if(input[i]==(2435+offset2))
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
	if(input[i]==(2433+offset2))
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
	if(input[i]>(2367+offset2))
{
	if(input[i]>(2399+offset2))
{
	if(input[i]>(2415+offset2))
{
	if(input[i]>(2423+offset2))
{
	if(input[i]>(2427+offset2))
{
	if(input[i]>(2429+offset2))
{
	if(input[i]==(2431+offset2))
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
	if(input[i]==(2429+offset2))
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
	if(input[i]>(2425+offset2))
{
	if(input[i]==(2427+offset2))
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
	if(input[i]==(2425+offset2))
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
	if(input[i]>(2419+offset2))
{
	if(input[i]>(2421+offset2))
{
	if(input[i]==(2423+offset2))
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
	if(input[i]==(2421+offset2))
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
	if(input[i]>(2417+offset2))
{
	if(input[i]==(2419+offset2))
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
	if(input[i]==(2417+offset2))
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
	if(input[i]>(2407+offset2))
{
	if(input[i]>(2411+offset2))
{
	if(input[i]>(2413+offset2))
{
	if(input[i]==(2415+offset2))
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
	if(input[i]==(2413+offset2))
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
	if(input[i]>(2409+offset2))
{
	if(input[i]==(2411+offset2))
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
	if(input[i]==(2409+offset2))
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
	if(input[i]>(2403+offset2))
{
	if(input[i]>(2405+offset2))
{
	if(input[i]==(2407+offset2))
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
	if(input[i]==(2405+offset2))
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
	if(input[i]>(2401+offset2))
{
	if(input[i]==(2403+offset2))
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
	if(input[i]==(2401+offset2))
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
	if(input[i]>(2383+offset2))
{
	if(input[i]>(2391+offset2))
{
	if(input[i]>(2395+offset2))
{
	if(input[i]>(2397+offset2))
{
	if(input[i]==(2399+offset2))
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
	if(input[i]==(2397+offset2))
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
	if(input[i]>(2393+offset2))
{
	if(input[i]==(2395+offset2))
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
	if(input[i]==(2393+offset2))
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
	if(input[i]>(2387+offset2))
{
	if(input[i]>(2389+offset2))
{
	if(input[i]==(2391+offset2))
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
	if(input[i]==(2389+offset2))
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
	if(input[i]>(2385+offset2))
{
	if(input[i]==(2387+offset2))
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
	if(input[i]==(2385+offset2))
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
	if(input[i]>(2375+offset2))
{
	if(input[i]>(2379+offset2))
{
	if(input[i]>(2381+offset2))
{
	if(input[i]==(2383+offset2))
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
	if(input[i]==(2381+offset2))
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
	if(input[i]>(2377+offset2))
{
	if(input[i]==(2379+offset2))
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
	if(input[i]==(2377+offset2))
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
	if(input[i]>(2371+offset2))
{
	if(input[i]>(2373+offset2))
{
	if(input[i]==(2375+offset2))
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
	if(input[i]==(2373+offset2))
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
	if(input[i]>(2369+offset2))
{
	if(input[i]==(2371+offset2))
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
	if(input[i]==(2369+offset2))
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
	if(input[i]>(2335+offset2))
{
	if(input[i]>(2351+offset2))
{
	if(input[i]>(2359+offset2))
{
	if(input[i]>(2363+offset2))
{
	if(input[i]>(2365+offset2))
{
	if(input[i]==(2367+offset2))
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
	if(input[i]==(2365+offset2))
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
	if(input[i]>(2361+offset2))
{
	if(input[i]==(2363+offset2))
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
	if(input[i]==(2361+offset2))
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
	if(input[i]>(2355+offset2))
{
	if(input[i]>(2357+offset2))
{
	if(input[i]==(2359+offset2))
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
	if(input[i]==(2357+offset2))
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
	if(input[i]>(2353+offset2))
{
	if(input[i]==(2355+offset2))
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
	if(input[i]==(2353+offset2))
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
	if(input[i]>(2343+offset2))
{
	if(input[i]>(2347+offset2))
{
	if(input[i]>(2349+offset2))
{
	if(input[i]==(2351+offset2))
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
	if(input[i]==(2349+offset2))
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
	if(input[i]>(2345+offset2))
{
	if(input[i]==(2347+offset2))
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
	if(input[i]==(2345+offset2))
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
	if(input[i]>(2339+offset2))
{
	if(input[i]>(2341+offset2))
{
	if(input[i]==(2343+offset2))
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
	if(input[i]==(2341+offset2))
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
	if(input[i]>(2337+offset2))
{
	if(input[i]==(2339+offset2))
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
	if(input[i]==(2337+offset2))
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
	if(input[i]>(2319+offset2))
{
	if(input[i]>(2327+offset2))
{
	if(input[i]>(2331+offset2))
{
	if(input[i]>(2333+offset2))
{
	if(input[i]==(2335+offset2))
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
	if(input[i]==(2333+offset2))
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
	if(input[i]>(2329+offset2))
{
	if(input[i]==(2331+offset2))
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
	if(input[i]==(2329+offset2))
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
	if(input[i]>(2323+offset2))
{
	if(input[i]>(2325+offset2))
{
	if(input[i]==(2327+offset2))
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
	if(input[i]==(2325+offset2))
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
	if(input[i]>(2321+offset2))
{
	if(input[i]==(2323+offset2))
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
	if(input[i]==(2321+offset2))
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
	if(input[i]>(2311+offset2))
{
	if(input[i]>(2315+offset2))
{
	if(input[i]>(2317+offset2))
{
	if(input[i]==(2319+offset2))
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
	if(input[i]==(2317+offset2))
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
	if(input[i]>(2313+offset2))
{
	if(input[i]==(2315+offset2))
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
	if(input[i]==(2313+offset2))
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
	if(input[i]>(2307+offset2))
{
	if(input[i]>(2309+offset2))
{
	if(input[i]==(2311+offset2))
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
	if(input[i]==(2309+offset2))
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
	if(input[i]>(2305+offset2))
{
	if(input[i]==(2307+offset2))
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
	if(input[i]==(2305+offset2))
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
	if(input[i]>(2175+offset2))
{
	if(input[i]>(2239+offset2))
{
	if(input[i]>(2271+offset2))
{
	if(input[i]>(2287+offset2))
{
	if(input[i]>(2295+offset2))
{
	if(input[i]>(2299+offset2))
{
	if(input[i]>(2301+offset2))
{
	if(input[i]==(2303+offset2))
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
	if(input[i]==(2301+offset2))
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
	if(input[i]>(2297+offset2))
{
	if(input[i]==(2299+offset2))
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
	if(input[i]==(2297+offset2))
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
	if(input[i]>(2291+offset2))
{
	if(input[i]>(2293+offset2))
{
	if(input[i]==(2295+offset2))
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
	if(input[i]==(2293+offset2))
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
	if(input[i]>(2289+offset2))
{
	if(input[i]==(2291+offset2))
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
	if(input[i]==(2289+offset2))
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
	if(input[i]>(2279+offset2))
{
	if(input[i]>(2283+offset2))
{
	if(input[i]>(2285+offset2))
{
	if(input[i]==(2287+offset2))
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
	if(input[i]==(2285+offset2))
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
	if(input[i]>(2281+offset2))
{
	if(input[i]==(2283+offset2))
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
	if(input[i]==(2281+offset2))
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
	if(input[i]>(2275+offset2))
{
	if(input[i]>(2277+offset2))
{
	if(input[i]==(2279+offset2))
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
	if(input[i]==(2277+offset2))
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
	if(input[i]>(2273+offset2))
{
	if(input[i]==(2275+offset2))
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
	if(input[i]==(2273+offset2))
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
	if(input[i]>(2255+offset2))
{
	if(input[i]>(2263+offset2))
{
	if(input[i]>(2267+offset2))
{
	if(input[i]>(2269+offset2))
{
	if(input[i]==(2271+offset2))
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
	if(input[i]==(2269+offset2))
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
	if(input[i]>(2265+offset2))
{
	if(input[i]==(2267+offset2))
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
	if(input[i]==(2265+offset2))
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
	if(input[i]>(2259+offset2))
{
	if(input[i]>(2261+offset2))
{
	if(input[i]==(2263+offset2))
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
	if(input[i]==(2261+offset2))
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
	if(input[i]>(2257+offset2))
{
	if(input[i]==(2259+offset2))
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
	if(input[i]==(2257+offset2))
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
	if(input[i]>(2247+offset2))
{
	if(input[i]>(2251+offset2))
{
	if(input[i]>(2253+offset2))
{
	if(input[i]==(2255+offset2))
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
	if(input[i]==(2253+offset2))
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
	if(input[i]>(2249+offset2))
{
	if(input[i]==(2251+offset2))
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
	if(input[i]==(2249+offset2))
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
	if(input[i]>(2243+offset2))
{
	if(input[i]>(2245+offset2))
{
	if(input[i]==(2247+offset2))
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
	if(input[i]==(2245+offset2))
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
	if(input[i]>(2241+offset2))
{
	if(input[i]==(2243+offset2))
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
	if(input[i]==(2241+offset2))
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
	if(input[i]>(2207+offset2))
{
	if(input[i]>(2223+offset2))
{
	if(input[i]>(2231+offset2))
{
	if(input[i]>(2235+offset2))
{
	if(input[i]>(2237+offset2))
{
	if(input[i]==(2239+offset2))
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
	if(input[i]==(2237+offset2))
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
	if(input[i]>(2233+offset2))
{
	if(input[i]==(2235+offset2))
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
	if(input[i]==(2233+offset2))
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
	if(input[i]>(2227+offset2))
{
	if(input[i]>(2229+offset2))
{
	if(input[i]==(2231+offset2))
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
	if(input[i]==(2229+offset2))
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
	if(input[i]>(2225+offset2))
{
	if(input[i]==(2227+offset2))
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
	if(input[i]==(2225+offset2))
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
	if(input[i]>(2215+offset2))
{
	if(input[i]>(2219+offset2))
{
	if(input[i]>(2221+offset2))
{
	if(input[i]==(2223+offset2))
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
	if(input[i]==(2221+offset2))
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
	if(input[i]>(2217+offset2))
{
	if(input[i]==(2219+offset2))
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
	if(input[i]==(2217+offset2))
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
	if(input[i]>(2211+offset2))
{
	if(input[i]>(2213+offset2))
{
	if(input[i]==(2215+offset2))
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
	if(input[i]==(2213+offset2))
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
	if(input[i]>(2209+offset2))
{
	if(input[i]==(2211+offset2))
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
	if(input[i]==(2209+offset2))
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
	if(input[i]>(2191+offset2))
{
	if(input[i]>(2199+offset2))
{
	if(input[i]>(2203+offset2))
{
	if(input[i]>(2205+offset2))
{
	if(input[i]==(2207+offset2))
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
	if(input[i]==(2205+offset2))
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
	if(input[i]>(2201+offset2))
{
	if(input[i]==(2203+offset2))
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
	if(input[i]==(2201+offset2))
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
	if(input[i]>(2195+offset2))
{
	if(input[i]>(2197+offset2))
{
	if(input[i]==(2199+offset2))
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
	if(input[i]==(2197+offset2))
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
	if(input[i]>(2193+offset2))
{
	if(input[i]==(2195+offset2))
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
	if(input[i]==(2193+offset2))
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
	if(input[i]>(2183+offset2))
{
	if(input[i]>(2187+offset2))
{
	if(input[i]>(2189+offset2))
{
	if(input[i]==(2191+offset2))
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
	if(input[i]==(2189+offset2))
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
	if(input[i]>(2185+offset2))
{
	if(input[i]==(2187+offset2))
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
	if(input[i]==(2185+offset2))
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
	if(input[i]>(2179+offset2))
{
	if(input[i]>(2181+offset2))
{
	if(input[i]==(2183+offset2))
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
	if(input[i]==(2181+offset2))
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
	if(input[i]>(2177+offset2))
{
	if(input[i]==(2179+offset2))
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
	if(input[i]==(2177+offset2))
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
	if(input[i]>(2111+offset2))
{
	if(input[i]>(2143+offset2))
{
	if(input[i]>(2159+offset2))
{
	if(input[i]>(2167+offset2))
{
	if(input[i]>(2171+offset2))
{
	if(input[i]>(2173+offset2))
{
	if(input[i]==(2175+offset2))
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
	if(input[i]==(2173+offset2))
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
	if(input[i]>(2169+offset2))
{
	if(input[i]==(2171+offset2))
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
	if(input[i]==(2169+offset2))
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
	if(input[i]>(2163+offset2))
{
	if(input[i]>(2165+offset2))
{
	if(input[i]==(2167+offset2))
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
	if(input[i]==(2165+offset2))
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
	if(input[i]>(2161+offset2))
{
	if(input[i]==(2163+offset2))
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
	if(input[i]==(2161+offset2))
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
	if(input[i]>(2151+offset2))
{
	if(input[i]>(2155+offset2))
{
	if(input[i]>(2157+offset2))
{
	if(input[i]==(2159+offset2))
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
	if(input[i]==(2157+offset2))
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
	if(input[i]>(2153+offset2))
{
	if(input[i]==(2155+offset2))
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
	if(input[i]==(2153+offset2))
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
	if(input[i]>(2147+offset2))
{
	if(input[i]>(2149+offset2))
{
	if(input[i]==(2151+offset2))
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
	if(input[i]==(2149+offset2))
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
	if(input[i]>(2145+offset2))
{
	if(input[i]==(2147+offset2))
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
	if(input[i]==(2145+offset2))
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
	if(input[i]>(2127+offset2))
{
	if(input[i]>(2135+offset2))
{
	if(input[i]>(2139+offset2))
{
	if(input[i]>(2141+offset2))
{
	if(input[i]==(2143+offset2))
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
	if(input[i]==(2141+offset2))
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
	if(input[i]>(2137+offset2))
{
	if(input[i]==(2139+offset2))
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
	if(input[i]==(2137+offset2))
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
	if(input[i]>(2131+offset2))
{
	if(input[i]>(2133+offset2))
{
	if(input[i]==(2135+offset2))
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
	if(input[i]==(2133+offset2))
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
	if(input[i]>(2129+offset2))
{
	if(input[i]==(2131+offset2))
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
	if(input[i]==(2129+offset2))
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
	if(input[i]>(2119+offset2))
{
	if(input[i]>(2123+offset2))
{
	if(input[i]>(2125+offset2))
{
	if(input[i]==(2127+offset2))
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
	if(input[i]==(2125+offset2))
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
	if(input[i]>(2121+offset2))
{
	if(input[i]==(2123+offset2))
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
	if(input[i]==(2121+offset2))
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
	if(input[i]>(2115+offset2))
{
	if(input[i]>(2117+offset2))
{
	if(input[i]==(2119+offset2))
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
	if(input[i]==(2117+offset2))
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
	if(input[i]>(2113+offset2))
{
	if(input[i]==(2115+offset2))
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
	if(input[i]==(2113+offset2))
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
	if(input[i]>(2079+offset2))
{
	if(input[i]>(2095+offset2))
{
	if(input[i]>(2103+offset2))
{
	if(input[i]>(2107+offset2))
{
	if(input[i]>(2109+offset2))
{
	if(input[i]==(2111+offset2))
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
	if(input[i]==(2109+offset2))
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
	if(input[i]>(2105+offset2))
{
	if(input[i]==(2107+offset2))
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
	if(input[i]==(2105+offset2))
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
	if(input[i]>(2099+offset2))
{
	if(input[i]>(2101+offset2))
{
	if(input[i]==(2103+offset2))
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
	if(input[i]==(2101+offset2))
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
	if(input[i]>(2097+offset2))
{
	if(input[i]==(2099+offset2))
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
	if(input[i]==(2097+offset2))
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
	if(input[i]>(2087+offset2))
{
	if(input[i]>(2091+offset2))
{
	if(input[i]>(2093+offset2))
{
	if(input[i]==(2095+offset2))
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
	if(input[i]==(2093+offset2))
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
	if(input[i]>(2089+offset2))
{
	if(input[i]==(2091+offset2))
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
	if(input[i]==(2089+offset2))
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
	if(input[i]>(2083+offset2))
{
	if(input[i]>(2085+offset2))
{
	if(input[i]==(2087+offset2))
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
	if(input[i]==(2085+offset2))
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
	if(input[i]>(2081+offset2))
{
	if(input[i]==(2083+offset2))
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
	if(input[i]==(2081+offset2))
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
	if(input[i]>(2063+offset2))
{
	if(input[i]>(2071+offset2))
{
	if(input[i]>(2075+offset2))
{
	if(input[i]>(2077+offset2))
{
	if(input[i]==(2079+offset2))
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
	if(input[i]==(2077+offset2))
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
	if(input[i]>(2073+offset2))
{
	if(input[i]==(2075+offset2))
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
	if(input[i]==(2073+offset2))
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
	if(input[i]>(2067+offset2))
{
	if(input[i]>(2069+offset2))
{
	if(input[i]==(2071+offset2))
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
	if(input[i]==(2069+offset2))
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
	if(input[i]>(2065+offset2))
{
	if(input[i]==(2067+offset2))
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
	if(input[i]==(2065+offset2))
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
	if(input[i]>(2055+offset2))
{
	if(input[i]>(2059+offset2))
{
	if(input[i]>(2061+offset2))
{
	if(input[i]==(2063+offset2))
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
	if(input[i]==(2061+offset2))
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
	if(input[i]>(2057+offset2))
{
	if(input[i]==(2059+offset2))
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
	if(input[i]==(2057+offset2))
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
	if(input[i]>(2051+offset2))
{
	if(input[i]>(2053+offset2))
{
	if(input[i]==(2055+offset2))
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
	if(input[i]==(2053+offset2))
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
	if(input[i]>(2049+offset2))
{
	if(input[i]==(2051+offset2))
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
	if(input[i]==(2049+offset2))
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
	if(input[i]>(1023+offset2))
{
	if(input[i]>(1535+offset2))
{
	if(input[i]>(1791+offset2))
{
	if(input[i]>(1919+offset2))
{
	if(input[i]>(1983+offset2))
{
	if(input[i]>(2015+offset2))
{
	if(input[i]>(2031+offset2))
{
	if(input[i]>(2039+offset2))
{
	if(input[i]>(2043+offset2))
{
	if(input[i]>(2045+offset2))
{
	if(input[i]==(2047+offset2))
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
	if(input[i]==(2045+offset2))
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
	if(input[i]>(2041+offset2))
{
	if(input[i]==(2043+offset2))
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
	if(input[i]==(2041+offset2))
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
	if(input[i]>(2035+offset2))
{
	if(input[i]>(2037+offset2))
{
	if(input[i]==(2039+offset2))
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
	if(input[i]==(2037+offset2))
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
	if(input[i]>(2033+offset2))
{
	if(input[i]==(2035+offset2))
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
	if(input[i]==(2033+offset2))
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
	if(input[i]>(2023+offset2))
{
	if(input[i]>(2027+offset2))
{
	if(input[i]>(2029+offset2))
{
	if(input[i]==(2031+offset2))
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
	if(input[i]==(2029+offset2))
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
	if(input[i]>(2025+offset2))
{
	if(input[i]==(2027+offset2))
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
	if(input[i]==(2025+offset2))
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
	if(input[i]>(2019+offset2))
{
	if(input[i]>(2021+offset2))
{
	if(input[i]==(2023+offset2))
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
	if(input[i]==(2021+offset2))
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
	if(input[i]>(2017+offset2))
{
	if(input[i]==(2019+offset2))
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
	if(input[i]==(2017+offset2))
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
	if(input[i]>(1999+offset2))
{
	if(input[i]>(2007+offset2))
{
	if(input[i]>(2011+offset2))
{
	if(input[i]>(2013+offset2))
{
	if(input[i]==(2015+offset2))
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
	if(input[i]==(2013+offset2))
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
	if(input[i]>(2009+offset2))
{
	if(input[i]==(2011+offset2))
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
	if(input[i]==(2009+offset2))
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
	if(input[i]>(2003+offset2))
{
	if(input[i]>(2005+offset2))
{
	if(input[i]==(2007+offset2))
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
	if(input[i]==(2005+offset2))
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
	if(input[i]>(2001+offset2))
{
	if(input[i]==(2003+offset2))
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
	if(input[i]==(2001+offset2))
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
	if(input[i]>(1991+offset2))
{
	if(input[i]>(1995+offset2))
{
	if(input[i]>(1997+offset2))
{
	if(input[i]==(1999+offset2))
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
	if(input[i]==(1997+offset2))
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
	if(input[i]>(1993+offset2))
{
	if(input[i]==(1995+offset2))
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
	if(input[i]==(1993+offset2))
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
	if(input[i]>(1987+offset2))
{
	if(input[i]>(1989+offset2))
{
	if(input[i]==(1991+offset2))
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
	if(input[i]==(1989+offset2))
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
	if(input[i]>(1985+offset2))
{
	if(input[i]==(1987+offset2))
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
	if(input[i]==(1985+offset2))
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
	if(input[i]>(1951+offset2))
{
	if(input[i]>(1967+offset2))
{
	if(input[i]>(1975+offset2))
{
	if(input[i]>(1979+offset2))
{
	if(input[i]>(1981+offset2))
{
	if(input[i]==(1983+offset2))
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
	if(input[i]==(1981+offset2))
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
	if(input[i]>(1977+offset2))
{
	if(input[i]==(1979+offset2))
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
	if(input[i]==(1977+offset2))
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
	if(input[i]>(1971+offset2))
{
	if(input[i]>(1973+offset2))
{
	if(input[i]==(1975+offset2))
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
	if(input[i]==(1973+offset2))
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
	if(input[i]>(1969+offset2))
{
	if(input[i]==(1971+offset2))
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
	if(input[i]==(1969+offset2))
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
	if(input[i]>(1959+offset2))
{
	if(input[i]>(1963+offset2))
{
	if(input[i]>(1965+offset2))
{
	if(input[i]==(1967+offset2))
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
	if(input[i]==(1965+offset2))
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
	if(input[i]>(1961+offset2))
{
	if(input[i]==(1963+offset2))
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
	if(input[i]==(1961+offset2))
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
	if(input[i]>(1955+offset2))
{
	if(input[i]>(1957+offset2))
{
	if(input[i]==(1959+offset2))
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
	if(input[i]==(1957+offset2))
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
	if(input[i]>(1953+offset2))
{
	if(input[i]==(1955+offset2))
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
	if(input[i]==(1953+offset2))
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
	if(input[i]>(1935+offset2))
{
	if(input[i]>(1943+offset2))
{
	if(input[i]>(1947+offset2))
{
	if(input[i]>(1949+offset2))
{
	if(input[i]==(1951+offset2))
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
	if(input[i]==(1949+offset2))
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
	if(input[i]>(1945+offset2))
{
	if(input[i]==(1947+offset2))
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
	if(input[i]==(1945+offset2))
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
	if(input[i]>(1939+offset2))
{
	if(input[i]>(1941+offset2))
{
	if(input[i]==(1943+offset2))
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
	if(input[i]==(1941+offset2))
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
	if(input[i]>(1937+offset2))
{
	if(input[i]==(1939+offset2))
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
	if(input[i]==(1937+offset2))
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
	if(input[i]>(1927+offset2))
{
	if(input[i]>(1931+offset2))
{
	if(input[i]>(1933+offset2))
{
	if(input[i]==(1935+offset2))
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
	if(input[i]==(1933+offset2))
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
	if(input[i]>(1929+offset2))
{
	if(input[i]==(1931+offset2))
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
	if(input[i]==(1929+offset2))
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
	if(input[i]>(1923+offset2))
{
	if(input[i]>(1925+offset2))
{
	if(input[i]==(1927+offset2))
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
	if(input[i]==(1925+offset2))
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
	if(input[i]>(1921+offset2))
{
	if(input[i]==(1923+offset2))
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
	if(input[i]==(1921+offset2))
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
	if(input[i]>(1855+offset2))
{
	if(input[i]>(1887+offset2))
{
	if(input[i]>(1903+offset2))
{
	if(input[i]>(1911+offset2))
{
	if(input[i]>(1915+offset2))
{
	if(input[i]>(1917+offset2))
{
	if(input[i]==(1919+offset2))
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
	if(input[i]==(1917+offset2))
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
	if(input[i]>(1913+offset2))
{
	if(input[i]==(1915+offset2))
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
	if(input[i]==(1913+offset2))
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
	if(input[i]>(1907+offset2))
{
	if(input[i]>(1909+offset2))
{
	if(input[i]==(1911+offset2))
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
	if(input[i]==(1909+offset2))
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
	if(input[i]>(1905+offset2))
{
	if(input[i]==(1907+offset2))
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
	if(input[i]==(1905+offset2))
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
	if(input[i]>(1895+offset2))
{
	if(input[i]>(1899+offset2))
{
	if(input[i]>(1901+offset2))
{
	if(input[i]==(1903+offset2))
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
	if(input[i]==(1901+offset2))
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
	if(input[i]>(1897+offset2))
{
	if(input[i]==(1899+offset2))
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
	if(input[i]==(1897+offset2))
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
	if(input[i]>(1891+offset2))
{
	if(input[i]>(1893+offset2))
{
	if(input[i]==(1895+offset2))
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
	if(input[i]==(1893+offset2))
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
	if(input[i]>(1889+offset2))
{
	if(input[i]==(1891+offset2))
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
	if(input[i]==(1889+offset2))
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
	if(input[i]>(1871+offset2))
{
	if(input[i]>(1879+offset2))
{
	if(input[i]>(1883+offset2))
{
	if(input[i]>(1885+offset2))
{
	if(input[i]==(1887+offset2))
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
	if(input[i]==(1885+offset2))
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
	if(input[i]>(1881+offset2))
{
	if(input[i]==(1883+offset2))
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
	if(input[i]==(1881+offset2))
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
	if(input[i]>(1875+offset2))
{
	if(input[i]>(1877+offset2))
{
	if(input[i]==(1879+offset2))
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
	if(input[i]==(1877+offset2))
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
	if(input[i]>(1873+offset2))
{
	if(input[i]==(1875+offset2))
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
	if(input[i]==(1873+offset2))
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
	if(input[i]>(1863+offset2))
{
	if(input[i]>(1867+offset2))
{
	if(input[i]>(1869+offset2))
{
	if(input[i]==(1871+offset2))
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
	if(input[i]==(1869+offset2))
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
	if(input[i]>(1865+offset2))
{
	if(input[i]==(1867+offset2))
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
	if(input[i]==(1865+offset2))
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
	if(input[i]>(1859+offset2))
{
	if(input[i]>(1861+offset2))
{
	if(input[i]==(1863+offset2))
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
	if(input[i]==(1861+offset2))
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
	if(input[i]>(1857+offset2))
{
	if(input[i]==(1859+offset2))
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
	if(input[i]==(1857+offset2))
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
	if(input[i]>(1823+offset2))
{
	if(input[i]>(1839+offset2))
{
	if(input[i]>(1847+offset2))
{
	if(input[i]>(1851+offset2))
{
	if(input[i]>(1853+offset2))
{
	if(input[i]==(1855+offset2))
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
	if(input[i]==(1853+offset2))
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
	if(input[i]>(1849+offset2))
{
	if(input[i]==(1851+offset2))
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
	if(input[i]==(1849+offset2))
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
	if(input[i]>(1843+offset2))
{
	if(input[i]>(1845+offset2))
{
	if(input[i]==(1847+offset2))
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
	if(input[i]==(1845+offset2))
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
	if(input[i]>(1841+offset2))
{
	if(input[i]==(1843+offset2))
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
	if(input[i]==(1841+offset2))
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
	if(input[i]>(1831+offset2))
{
	if(input[i]>(1835+offset2))
{
	if(input[i]>(1837+offset2))
{
	if(input[i]==(1839+offset2))
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
	if(input[i]==(1837+offset2))
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
	if(input[i]>(1833+offset2))
{
	if(input[i]==(1835+offset2))
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
	if(input[i]==(1833+offset2))
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
	if(input[i]>(1827+offset2))
{
	if(input[i]>(1829+offset2))
{
	if(input[i]==(1831+offset2))
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
	if(input[i]==(1829+offset2))
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
	if(input[i]>(1825+offset2))
{
	if(input[i]==(1827+offset2))
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
	if(input[i]==(1825+offset2))
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
	if(input[i]>(1807+offset2))
{
	if(input[i]>(1815+offset2))
{
	if(input[i]>(1819+offset2))
{
	if(input[i]>(1821+offset2))
{
	if(input[i]==(1823+offset2))
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
	if(input[i]==(1821+offset2))
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
	if(input[i]>(1817+offset2))
{
	if(input[i]==(1819+offset2))
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
	if(input[i]==(1817+offset2))
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
	if(input[i]>(1811+offset2))
{
	if(input[i]>(1813+offset2))
{
	if(input[i]==(1815+offset2))
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
	if(input[i]==(1813+offset2))
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
	if(input[i]>(1809+offset2))
{
	if(input[i]==(1811+offset2))
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
	if(input[i]==(1809+offset2))
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
	if(input[i]>(1799+offset2))
{
	if(input[i]>(1803+offset2))
{
	if(input[i]>(1805+offset2))
{
	if(input[i]==(1807+offset2))
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
	if(input[i]==(1805+offset2))
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
	if(input[i]>(1801+offset2))
{
	if(input[i]==(1803+offset2))
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
	if(input[i]==(1801+offset2))
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
	if(input[i]>(1795+offset2))
{
	if(input[i]>(1797+offset2))
{
	if(input[i]==(1799+offset2))
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
	if(input[i]==(1797+offset2))
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
	if(input[i]>(1793+offset2))
{
	if(input[i]==(1795+offset2))
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
	if(input[i]==(1793+offset2))
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
	if(input[i]>(1663+offset2))
{
	if(input[i]>(1727+offset2))
{
	if(input[i]>(1759+offset2))
{
	if(input[i]>(1775+offset2))
{
	if(input[i]>(1783+offset2))
{
	if(input[i]>(1787+offset2))
{
	if(input[i]>(1789+offset2))
{
	if(input[i]==(1791+offset2))
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
	if(input[i]==(1789+offset2))
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
	if(input[i]>(1785+offset2))
{
	if(input[i]==(1787+offset2))
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
	if(input[i]==(1785+offset2))
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
	if(input[i]>(1779+offset2))
{
	if(input[i]>(1781+offset2))
{
	if(input[i]==(1783+offset2))
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
	if(input[i]==(1781+offset2))
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
	if(input[i]>(1777+offset2))
{
	if(input[i]==(1779+offset2))
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
	if(input[i]==(1777+offset2))
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
	if(input[i]>(1767+offset2))
{
	if(input[i]>(1771+offset2))
{
	if(input[i]>(1773+offset2))
{
	if(input[i]==(1775+offset2))
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
	if(input[i]==(1773+offset2))
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
	if(input[i]>(1769+offset2))
{
	if(input[i]==(1771+offset2))
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
	if(input[i]==(1769+offset2))
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
	if(input[i]>(1763+offset2))
{
	if(input[i]>(1765+offset2))
{
	if(input[i]==(1767+offset2))
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
	if(input[i]==(1765+offset2))
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
	if(input[i]>(1761+offset2))
{
	if(input[i]==(1763+offset2))
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
	if(input[i]==(1761+offset2))
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
	if(input[i]>(1743+offset2))
{
	if(input[i]>(1751+offset2))
{
	if(input[i]>(1755+offset2))
{
	if(input[i]>(1757+offset2))
{
	if(input[i]==(1759+offset2))
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
	if(input[i]==(1757+offset2))
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
	if(input[i]>(1753+offset2))
{
	if(input[i]==(1755+offset2))
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
	if(input[i]==(1753+offset2))
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
	if(input[i]>(1747+offset2))
{
	if(input[i]>(1749+offset2))
{
	if(input[i]==(1751+offset2))
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
	if(input[i]==(1749+offset2))
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
	if(input[i]>(1745+offset2))
{
	if(input[i]==(1747+offset2))
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
	if(input[i]==(1745+offset2))
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
	if(input[i]>(1735+offset2))
{
	if(input[i]>(1739+offset2))
{
	if(input[i]>(1741+offset2))
{
	if(input[i]==(1743+offset2))
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
	if(input[i]==(1741+offset2))
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
	if(input[i]>(1737+offset2))
{
	if(input[i]==(1739+offset2))
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
	if(input[i]==(1737+offset2))
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
	if(input[i]>(1731+offset2))
{
	if(input[i]>(1733+offset2))
{
	if(input[i]==(1735+offset2))
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
	if(input[i]==(1733+offset2))
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
	if(input[i]>(1729+offset2))
{
	if(input[i]==(1731+offset2))
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
	if(input[i]==(1729+offset2))
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
	if(input[i]>(1695+offset2))
{
	if(input[i]>(1711+offset2))
{
	if(input[i]>(1719+offset2))
{
	if(input[i]>(1723+offset2))
{
	if(input[i]>(1725+offset2))
{
	if(input[i]==(1727+offset2))
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
	if(input[i]==(1725+offset2))
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
	if(input[i]>(1721+offset2))
{
	if(input[i]==(1723+offset2))
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
	if(input[i]==(1721+offset2))
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
	if(input[i]>(1715+offset2))
{
	if(input[i]>(1717+offset2))
{
	if(input[i]==(1719+offset2))
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
	if(input[i]==(1717+offset2))
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
	if(input[i]>(1713+offset2))
{
	if(input[i]==(1715+offset2))
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
	if(input[i]==(1713+offset2))
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
	if(input[i]>(1703+offset2))
{
	if(input[i]>(1707+offset2))
{
	if(input[i]>(1709+offset2))
{
	if(input[i]==(1711+offset2))
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
	if(input[i]==(1709+offset2))
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
	if(input[i]>(1705+offset2))
{
	if(input[i]==(1707+offset2))
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
	if(input[i]==(1705+offset2))
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
	if(input[i]>(1699+offset2))
{
	if(input[i]>(1701+offset2))
{
	if(input[i]==(1703+offset2))
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
	if(input[i]==(1701+offset2))
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
	if(input[i]>(1697+offset2))
{
	if(input[i]==(1699+offset2))
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
	if(input[i]==(1697+offset2))
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
	if(input[i]>(1679+offset2))
{
	if(input[i]>(1687+offset2))
{
	if(input[i]>(1691+offset2))
{
	if(input[i]>(1693+offset2))
{
	if(input[i]==(1695+offset2))
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
	if(input[i]==(1693+offset2))
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
	if(input[i]>(1689+offset2))
{
	if(input[i]==(1691+offset2))
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
	if(input[i]==(1689+offset2))
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
	if(input[i]>(1683+offset2))
{
	if(input[i]>(1685+offset2))
{
	if(input[i]==(1687+offset2))
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
	if(input[i]==(1685+offset2))
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
	if(input[i]>(1681+offset2))
{
	if(input[i]==(1683+offset2))
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
	if(input[i]==(1681+offset2))
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
	if(input[i]>(1671+offset2))
{
	if(input[i]>(1675+offset2))
{
	if(input[i]>(1677+offset2))
{
	if(input[i]==(1679+offset2))
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
	if(input[i]==(1677+offset2))
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
	if(input[i]>(1673+offset2))
{
	if(input[i]==(1675+offset2))
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
	if(input[i]==(1673+offset2))
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
	if(input[i]>(1667+offset2))
{
	if(input[i]>(1669+offset2))
{
	if(input[i]==(1671+offset2))
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
	if(input[i]==(1669+offset2))
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
	if(input[i]>(1665+offset2))
{
	if(input[i]==(1667+offset2))
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
	if(input[i]==(1665+offset2))
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
	if(input[i]>(1599+offset2))
{
	if(input[i]>(1631+offset2))
{
	if(input[i]>(1647+offset2))
{
	if(input[i]>(1655+offset2))
{
	if(input[i]>(1659+offset2))
{
	if(input[i]>(1661+offset2))
{
	if(input[i]==(1663+offset2))
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
	if(input[i]==(1661+offset2))
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
	if(input[i]>(1657+offset2))
{
	if(input[i]==(1659+offset2))
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
	if(input[i]==(1657+offset2))
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
	if(input[i]>(1651+offset2))
{
	if(input[i]>(1653+offset2))
{
	if(input[i]==(1655+offset2))
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
	if(input[i]==(1653+offset2))
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
	if(input[i]>(1649+offset2))
{
	if(input[i]==(1651+offset2))
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
	if(input[i]==(1649+offset2))
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
	if(input[i]>(1639+offset2))
{
	if(input[i]>(1643+offset2))
{
	if(input[i]>(1645+offset2))
{
	if(input[i]==(1647+offset2))
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
	if(input[i]==(1645+offset2))
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
	if(input[i]>(1641+offset2))
{
	if(input[i]==(1643+offset2))
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
	if(input[i]==(1641+offset2))
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
	if(input[i]>(1635+offset2))
{
	if(input[i]>(1637+offset2))
{
	if(input[i]==(1639+offset2))
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
	if(input[i]==(1637+offset2))
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
	if(input[i]>(1633+offset2))
{
	if(input[i]==(1635+offset2))
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
	if(input[i]==(1633+offset2))
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
	if(input[i]>(1615+offset2))
{
	if(input[i]>(1623+offset2))
{
	if(input[i]>(1627+offset2))
{
	if(input[i]>(1629+offset2))
{
	if(input[i]==(1631+offset2))
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
	if(input[i]==(1629+offset2))
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
	if(input[i]>(1625+offset2))
{
	if(input[i]==(1627+offset2))
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
	if(input[i]==(1625+offset2))
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
	if(input[i]>(1619+offset2))
{
	if(input[i]>(1621+offset2))
{
	if(input[i]==(1623+offset2))
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
	if(input[i]==(1621+offset2))
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
	if(input[i]>(1617+offset2))
{
	if(input[i]==(1619+offset2))
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
	if(input[i]==(1617+offset2))
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
	if(input[i]>(1607+offset2))
{
	if(input[i]>(1611+offset2))
{
	if(input[i]>(1613+offset2))
{
	if(input[i]==(1615+offset2))
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
	if(input[i]==(1613+offset2))
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
	if(input[i]>(1609+offset2))
{
	if(input[i]==(1611+offset2))
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
	if(input[i]==(1609+offset2))
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
	if(input[i]>(1603+offset2))
{
	if(input[i]>(1605+offset2))
{
	if(input[i]==(1607+offset2))
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
	if(input[i]==(1605+offset2))
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
	if(input[i]>(1601+offset2))
{
	if(input[i]==(1603+offset2))
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
	if(input[i]==(1601+offset2))
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
	if(input[i]>(1567+offset2))
{
	if(input[i]>(1583+offset2))
{
	if(input[i]>(1591+offset2))
{
	if(input[i]>(1595+offset2))
{
	if(input[i]>(1597+offset2))
{
	if(input[i]==(1599+offset2))
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
	if(input[i]==(1597+offset2))
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
	if(input[i]>(1593+offset2))
{
	if(input[i]==(1595+offset2))
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
	if(input[i]==(1593+offset2))
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
	if(input[i]>(1587+offset2))
{
	if(input[i]>(1589+offset2))
{
	if(input[i]==(1591+offset2))
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
	if(input[i]==(1589+offset2))
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
	if(input[i]>(1585+offset2))
{
	if(input[i]==(1587+offset2))
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
	if(input[i]==(1585+offset2))
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
	if(input[i]>(1575+offset2))
{
	if(input[i]>(1579+offset2))
{
	if(input[i]>(1581+offset2))
{
	if(input[i]==(1583+offset2))
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
	if(input[i]==(1581+offset2))
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
	if(input[i]>(1577+offset2))
{
	if(input[i]==(1579+offset2))
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
	if(input[i]==(1577+offset2))
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
	if(input[i]>(1571+offset2))
{
	if(input[i]>(1573+offset2))
{
	if(input[i]==(1575+offset2))
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
	if(input[i]==(1573+offset2))
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
	if(input[i]>(1569+offset2))
{
	if(input[i]==(1571+offset2))
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
	if(input[i]==(1569+offset2))
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
	if(input[i]>(1551+offset2))
{
	if(input[i]>(1559+offset2))
{
	if(input[i]>(1563+offset2))
{
	if(input[i]>(1565+offset2))
{
	if(input[i]==(1567+offset2))
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
	if(input[i]==(1565+offset2))
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
	if(input[i]>(1561+offset2))
{
	if(input[i]==(1563+offset2))
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
	if(input[i]==(1561+offset2))
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
	if(input[i]>(1555+offset2))
{
	if(input[i]>(1557+offset2))
{
	if(input[i]==(1559+offset2))
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
	if(input[i]==(1557+offset2))
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
	if(input[i]>(1553+offset2))
{
	if(input[i]==(1555+offset2))
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
	if(input[i]==(1553+offset2))
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
	if(input[i]>(1543+offset2))
{
	if(input[i]>(1547+offset2))
{
	if(input[i]>(1549+offset2))
{
	if(input[i]==(1551+offset2))
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
	if(input[i]==(1549+offset2))
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
	if(input[i]>(1545+offset2))
{
	if(input[i]==(1547+offset2))
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
	if(input[i]==(1545+offset2))
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
	if(input[i]>(1539+offset2))
{
	if(input[i]>(1541+offset2))
{
	if(input[i]==(1543+offset2))
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
	if(input[i]==(1541+offset2))
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
	if(input[i]>(1537+offset2))
{
	if(input[i]==(1539+offset2))
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
	if(input[i]==(1537+offset2))
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
	if(input[i]>(1279+offset2))
{
	if(input[i]>(1407+offset2))
{
	if(input[i]>(1471+offset2))
{
	if(input[i]>(1503+offset2))
{
	if(input[i]>(1519+offset2))
{
	if(input[i]>(1527+offset2))
{
	if(input[i]>(1531+offset2))
{
	if(input[i]>(1533+offset2))
{
	if(input[i]==(1535+offset2))
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
	if(input[i]==(1533+offset2))
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
	if(input[i]>(1529+offset2))
{
	if(input[i]==(1531+offset2))
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
	if(input[i]==(1529+offset2))
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
	if(input[i]>(1523+offset2))
{
	if(input[i]>(1525+offset2))
{
	if(input[i]==(1527+offset2))
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
	if(input[i]==(1525+offset2))
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
	if(input[i]>(1521+offset2))
{
	if(input[i]==(1523+offset2))
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
	if(input[i]==(1521+offset2))
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
	if(input[i]>(1511+offset2))
{
	if(input[i]>(1515+offset2))
{
	if(input[i]>(1517+offset2))
{
	if(input[i]==(1519+offset2))
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
	if(input[i]==(1517+offset2))
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
	if(input[i]>(1513+offset2))
{
	if(input[i]==(1515+offset2))
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
	if(input[i]==(1513+offset2))
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
	if(input[i]>(1507+offset2))
{
	if(input[i]>(1509+offset2))
{
	if(input[i]==(1511+offset2))
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
	if(input[i]==(1509+offset2))
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
	if(input[i]>(1505+offset2))
{
	if(input[i]==(1507+offset2))
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
	if(input[i]==(1505+offset2))
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
	if(input[i]>(1487+offset2))
{
	if(input[i]>(1495+offset2))
{
	if(input[i]>(1499+offset2))
{
	if(input[i]>(1501+offset2))
{
	if(input[i]==(1503+offset2))
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
	if(input[i]==(1501+offset2))
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
	if(input[i]>(1497+offset2))
{
	if(input[i]==(1499+offset2))
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
	if(input[i]==(1497+offset2))
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
	if(input[i]>(1491+offset2))
{
	if(input[i]>(1493+offset2))
{
	if(input[i]==(1495+offset2))
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
	if(input[i]==(1493+offset2))
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
	if(input[i]>(1489+offset2))
{
	if(input[i]==(1491+offset2))
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
	if(input[i]==(1489+offset2))
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
	if(input[i]>(1479+offset2))
{
	if(input[i]>(1483+offset2))
{
	if(input[i]>(1485+offset2))
{
	if(input[i]==(1487+offset2))
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
	if(input[i]==(1485+offset2))
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
	if(input[i]>(1481+offset2))
{
	if(input[i]==(1483+offset2))
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
	if(input[i]==(1481+offset2))
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
	if(input[i]>(1475+offset2))
{
	if(input[i]>(1477+offset2))
{
	if(input[i]==(1479+offset2))
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
	if(input[i]==(1477+offset2))
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
	if(input[i]>(1473+offset2))
{
	if(input[i]==(1475+offset2))
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
	if(input[i]==(1473+offset2))
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
	if(input[i]>(1439+offset2))
{
	if(input[i]>(1455+offset2))
{
	if(input[i]>(1463+offset2))
{
	if(input[i]>(1467+offset2))
{
	if(input[i]>(1469+offset2))
{
	if(input[i]==(1471+offset2))
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
	if(input[i]==(1469+offset2))
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
	if(input[i]>(1465+offset2))
{
	if(input[i]==(1467+offset2))
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
	if(input[i]==(1465+offset2))
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
	if(input[i]>(1459+offset2))
{
	if(input[i]>(1461+offset2))
{
	if(input[i]==(1463+offset2))
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
	if(input[i]==(1461+offset2))
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
	if(input[i]>(1457+offset2))
{
	if(input[i]==(1459+offset2))
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
	if(input[i]==(1457+offset2))
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
	if(input[i]>(1447+offset2))
{
	if(input[i]>(1451+offset2))
{
	if(input[i]>(1453+offset2))
{
	if(input[i]==(1455+offset2))
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
	if(input[i]==(1453+offset2))
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
	if(input[i]>(1449+offset2))
{
	if(input[i]==(1451+offset2))
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
	if(input[i]==(1449+offset2))
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
	if(input[i]>(1443+offset2))
{
	if(input[i]>(1445+offset2))
{
	if(input[i]==(1447+offset2))
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
	if(input[i]==(1445+offset2))
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
	if(input[i]>(1441+offset2))
{
	if(input[i]==(1443+offset2))
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
	if(input[i]==(1441+offset2))
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
	if(input[i]>(1423+offset2))
{
	if(input[i]>(1431+offset2))
{
	if(input[i]>(1435+offset2))
{
	if(input[i]>(1437+offset2))
{
	if(input[i]==(1439+offset2))
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
	if(input[i]==(1437+offset2))
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
	if(input[i]>(1433+offset2))
{
	if(input[i]==(1435+offset2))
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
	if(input[i]==(1433+offset2))
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
	if(input[i]>(1427+offset2))
{
	if(input[i]>(1429+offset2))
{
	if(input[i]==(1431+offset2))
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
	if(input[i]==(1429+offset2))
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
	if(input[i]>(1425+offset2))
{
	if(input[i]==(1427+offset2))
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
	if(input[i]==(1425+offset2))
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
	if(input[i]>(1415+offset2))
{
	if(input[i]>(1419+offset2))
{
	if(input[i]>(1421+offset2))
{
	if(input[i]==(1423+offset2))
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
	if(input[i]==(1421+offset2))
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
	if(input[i]>(1417+offset2))
{
	if(input[i]==(1419+offset2))
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
	if(input[i]==(1417+offset2))
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
	if(input[i]>(1411+offset2))
{
	if(input[i]>(1413+offset2))
{
	if(input[i]==(1415+offset2))
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
	if(input[i]==(1413+offset2))
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
	if(input[i]>(1409+offset2))
{
	if(input[i]==(1411+offset2))
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
	if(input[i]==(1409+offset2))
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
	if(input[i]>(1343+offset2))
{
	if(input[i]>(1375+offset2))
{
	if(input[i]>(1391+offset2))
{
	if(input[i]>(1399+offset2))
{
	if(input[i]>(1403+offset2))
{
	if(input[i]>(1405+offset2))
{
	if(input[i]==(1407+offset2))
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
	if(input[i]==(1405+offset2))
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
	if(input[i]>(1401+offset2))
{
	if(input[i]==(1403+offset2))
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
	if(input[i]==(1401+offset2))
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
	if(input[i]>(1395+offset2))
{
	if(input[i]>(1397+offset2))
{
	if(input[i]==(1399+offset2))
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
	if(input[i]==(1397+offset2))
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
	if(input[i]>(1393+offset2))
{
	if(input[i]==(1395+offset2))
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
	if(input[i]==(1393+offset2))
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
	if(input[i]>(1383+offset2))
{
	if(input[i]>(1387+offset2))
{
	if(input[i]>(1389+offset2))
{
	if(input[i]==(1391+offset2))
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
	if(input[i]==(1389+offset2))
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
	if(input[i]>(1385+offset2))
{
	if(input[i]==(1387+offset2))
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
	if(input[i]==(1385+offset2))
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
	if(input[i]>(1379+offset2))
{
	if(input[i]>(1381+offset2))
{
	if(input[i]==(1383+offset2))
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
	if(input[i]==(1381+offset2))
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
	if(input[i]>(1377+offset2))
{
	if(input[i]==(1379+offset2))
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
	if(input[i]==(1377+offset2))
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
	if(input[i]>(1359+offset2))
{
	if(input[i]>(1367+offset2))
{
	if(input[i]>(1371+offset2))
{
	if(input[i]>(1373+offset2))
{
	if(input[i]==(1375+offset2))
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
	if(input[i]==(1373+offset2))
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
	if(input[i]>(1369+offset2))
{
	if(input[i]==(1371+offset2))
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
	if(input[i]==(1369+offset2))
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
	if(input[i]>(1363+offset2))
{
	if(input[i]>(1365+offset2))
{
	if(input[i]==(1367+offset2))
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
	if(input[i]==(1365+offset2))
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
	if(input[i]>(1361+offset2))
{
	if(input[i]==(1363+offset2))
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
	if(input[i]==(1361+offset2))
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
	if(input[i]>(1351+offset2))
{
	if(input[i]>(1355+offset2))
{
	if(input[i]>(1357+offset2))
{
	if(input[i]==(1359+offset2))
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
	if(input[i]==(1357+offset2))
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
	if(input[i]>(1353+offset2))
{
	if(input[i]==(1355+offset2))
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
	if(input[i]==(1353+offset2))
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
	if(input[i]>(1347+offset2))
{
	if(input[i]>(1349+offset2))
{
	if(input[i]==(1351+offset2))
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
	if(input[i]==(1349+offset2))
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
	if(input[i]>(1345+offset2))
{
	if(input[i]==(1347+offset2))
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
	if(input[i]==(1345+offset2))
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
	if(input[i]>(1311+offset2))
{
	if(input[i]>(1327+offset2))
{
	if(input[i]>(1335+offset2))
{
	if(input[i]>(1339+offset2))
{
	if(input[i]>(1341+offset2))
{
	if(input[i]==(1343+offset2))
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
	if(input[i]==(1341+offset2))
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
	if(input[i]>(1337+offset2))
{
	if(input[i]==(1339+offset2))
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
	if(input[i]==(1337+offset2))
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
	if(input[i]>(1331+offset2))
{
	if(input[i]>(1333+offset2))
{
	if(input[i]==(1335+offset2))
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
	if(input[i]==(1333+offset2))
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
	if(input[i]>(1329+offset2))
{
	if(input[i]==(1331+offset2))
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
	if(input[i]==(1329+offset2))
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
	if(input[i]>(1319+offset2))
{
	if(input[i]>(1323+offset2))
{
	if(input[i]>(1325+offset2))
{
	if(input[i]==(1327+offset2))
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
	if(input[i]==(1325+offset2))
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
	if(input[i]>(1321+offset2))
{
	if(input[i]==(1323+offset2))
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
	if(input[i]==(1321+offset2))
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
	if(input[i]>(1315+offset2))
{
	if(input[i]>(1317+offset2))
{
	if(input[i]==(1319+offset2))
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
	if(input[i]==(1317+offset2))
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
	if(input[i]>(1313+offset2))
{
	if(input[i]==(1315+offset2))
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
	if(input[i]==(1313+offset2))
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
	if(input[i]>(1295+offset2))
{
	if(input[i]>(1303+offset2))
{
	if(input[i]>(1307+offset2))
{
	if(input[i]>(1309+offset2))
{
	if(input[i]==(1311+offset2))
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
	if(input[i]==(1309+offset2))
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
	if(input[i]>(1305+offset2))
{
	if(input[i]==(1307+offset2))
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
	if(input[i]==(1305+offset2))
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
	if(input[i]>(1299+offset2))
{
	if(input[i]>(1301+offset2))
{
	if(input[i]==(1303+offset2))
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
	if(input[i]==(1301+offset2))
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
	if(input[i]>(1297+offset2))
{
	if(input[i]==(1299+offset2))
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
	if(input[i]==(1297+offset2))
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
	if(input[i]>(1287+offset2))
{
	if(input[i]>(1291+offset2))
{
	if(input[i]>(1293+offset2))
{
	if(input[i]==(1295+offset2))
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
	if(input[i]==(1293+offset2))
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
	if(input[i]>(1289+offset2))
{
	if(input[i]==(1291+offset2))
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
	if(input[i]==(1289+offset2))
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
	if(input[i]>(1283+offset2))
{
	if(input[i]>(1285+offset2))
{
	if(input[i]==(1287+offset2))
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
	if(input[i]==(1285+offset2))
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
	if(input[i]>(1281+offset2))
{
	if(input[i]==(1283+offset2))
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
	if(input[i]==(1281+offset2))
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
	if(input[i]>(1151+offset2))
{
	if(input[i]>(1215+offset2))
{
	if(input[i]>(1247+offset2))
{
	if(input[i]>(1263+offset2))
{
	if(input[i]>(1271+offset2))
{
	if(input[i]>(1275+offset2))
{
	if(input[i]>(1277+offset2))
{
	if(input[i]==(1279+offset2))
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
	if(input[i]==(1277+offset2))
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
	if(input[i]>(1273+offset2))
{
	if(input[i]==(1275+offset2))
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
	if(input[i]==(1273+offset2))
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
	if(input[i]>(1267+offset2))
{
	if(input[i]>(1269+offset2))
{
	if(input[i]==(1271+offset2))
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
	if(input[i]==(1269+offset2))
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
	if(input[i]>(1265+offset2))
{
	if(input[i]==(1267+offset2))
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
	if(input[i]==(1265+offset2))
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
	if(input[i]>(1255+offset2))
{
	if(input[i]>(1259+offset2))
{
	if(input[i]>(1261+offset2))
{
	if(input[i]==(1263+offset2))
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
	if(input[i]==(1261+offset2))
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
	if(input[i]>(1257+offset2))
{
	if(input[i]==(1259+offset2))
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
	if(input[i]==(1257+offset2))
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
	if(input[i]>(1251+offset2))
{
	if(input[i]>(1253+offset2))
{
	if(input[i]==(1255+offset2))
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
	if(input[i]==(1253+offset2))
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
	if(input[i]>(1249+offset2))
{
	if(input[i]==(1251+offset2))
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
	if(input[i]==(1249+offset2))
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
	if(input[i]>(1231+offset2))
{
	if(input[i]>(1239+offset2))
{
	if(input[i]>(1243+offset2))
{
	if(input[i]>(1245+offset2))
{
	if(input[i]==(1247+offset2))
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
	if(input[i]==(1245+offset2))
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
	if(input[i]>(1241+offset2))
{
	if(input[i]==(1243+offset2))
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
	if(input[i]==(1241+offset2))
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
	if(input[i]>(1235+offset2))
{
	if(input[i]>(1237+offset2))
{
	if(input[i]==(1239+offset2))
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
	if(input[i]==(1237+offset2))
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
	if(input[i]>(1233+offset2))
{
	if(input[i]==(1235+offset2))
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
	if(input[i]==(1233+offset2))
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
	if(input[i]>(1223+offset2))
{
	if(input[i]>(1227+offset2))
{
	if(input[i]>(1229+offset2))
{
	if(input[i]==(1231+offset2))
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
	if(input[i]==(1229+offset2))
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
	if(input[i]>(1225+offset2))
{
	if(input[i]==(1227+offset2))
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
	if(input[i]==(1225+offset2))
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
	if(input[i]>(1219+offset2))
{
	if(input[i]>(1221+offset2))
{
	if(input[i]==(1223+offset2))
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
	if(input[i]==(1221+offset2))
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
	if(input[i]>(1217+offset2))
{
	if(input[i]==(1219+offset2))
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
	if(input[i]==(1217+offset2))
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
	if(input[i]>(1183+offset2))
{
	if(input[i]>(1199+offset2))
{
	if(input[i]>(1207+offset2))
{
	if(input[i]>(1211+offset2))
{
	if(input[i]>(1213+offset2))
{
	if(input[i]==(1215+offset2))
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
	if(input[i]==(1213+offset2))
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
	if(input[i]>(1209+offset2))
{
	if(input[i]==(1211+offset2))
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
	if(input[i]==(1209+offset2))
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
	if(input[i]>(1203+offset2))
{
	if(input[i]>(1205+offset2))
{
	if(input[i]==(1207+offset2))
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
	if(input[i]==(1205+offset2))
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
	if(input[i]>(1201+offset2))
{
	if(input[i]==(1203+offset2))
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
	if(input[i]==(1201+offset2))
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
	if(input[i]>(1191+offset2))
{
	if(input[i]>(1195+offset2))
{
	if(input[i]>(1197+offset2))
{
	if(input[i]==(1199+offset2))
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
	if(input[i]==(1197+offset2))
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
	if(input[i]>(1193+offset2))
{
	if(input[i]==(1195+offset2))
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
	if(input[i]==(1193+offset2))
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
	if(input[i]>(1187+offset2))
{
	if(input[i]>(1189+offset2))
{
	if(input[i]==(1191+offset2))
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
	if(input[i]==(1189+offset2))
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
	if(input[i]>(1185+offset2))
{
	if(input[i]==(1187+offset2))
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
	if(input[i]==(1185+offset2))
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
	if(input[i]>(1167+offset2))
{
	if(input[i]>(1175+offset2))
{
	if(input[i]>(1179+offset2))
{
	if(input[i]>(1181+offset2))
{
	if(input[i]==(1183+offset2))
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
	if(input[i]==(1181+offset2))
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
	if(input[i]>(1177+offset2))
{
	if(input[i]==(1179+offset2))
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
	if(input[i]==(1177+offset2))
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
	if(input[i]>(1171+offset2))
{
	if(input[i]>(1173+offset2))
{
	if(input[i]==(1175+offset2))
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
	if(input[i]==(1173+offset2))
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
	if(input[i]>(1169+offset2))
{
	if(input[i]==(1171+offset2))
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
	if(input[i]==(1169+offset2))
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
	if(input[i]>(1159+offset2))
{
	if(input[i]>(1163+offset2))
{
	if(input[i]>(1165+offset2))
{
	if(input[i]==(1167+offset2))
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
	if(input[i]==(1165+offset2))
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
	if(input[i]>(1161+offset2))
{
	if(input[i]==(1163+offset2))
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
	if(input[i]==(1161+offset2))
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
	if(input[i]>(1155+offset2))
{
	if(input[i]>(1157+offset2))
{
	if(input[i]==(1159+offset2))
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
	if(input[i]==(1157+offset2))
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
	if(input[i]>(1153+offset2))
{
	if(input[i]==(1155+offset2))
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
	if(input[i]==(1153+offset2))
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
	if(input[i]>(1087+offset2))
{
	if(input[i]>(1119+offset2))
{
	if(input[i]>(1135+offset2))
{
	if(input[i]>(1143+offset2))
{
	if(input[i]>(1147+offset2))
{
	if(input[i]>(1149+offset2))
{
	if(input[i]==(1151+offset2))
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
	if(input[i]==(1149+offset2))
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
	if(input[i]>(1145+offset2))
{
	if(input[i]==(1147+offset2))
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
	if(input[i]==(1145+offset2))
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
	if(input[i]>(1139+offset2))
{
	if(input[i]>(1141+offset2))
{
	if(input[i]==(1143+offset2))
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
	if(input[i]==(1141+offset2))
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
	if(input[i]>(1137+offset2))
{
	if(input[i]==(1139+offset2))
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
	if(input[i]==(1137+offset2))
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
	if(input[i]>(1127+offset2))
{
	if(input[i]>(1131+offset2))
{
	if(input[i]>(1133+offset2))
{
	if(input[i]==(1135+offset2))
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
	if(input[i]==(1133+offset2))
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
	if(input[i]>(1129+offset2))
{
	if(input[i]==(1131+offset2))
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
	if(input[i]==(1129+offset2))
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
	if(input[i]>(1123+offset2))
{
	if(input[i]>(1125+offset2))
{
	if(input[i]==(1127+offset2))
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
	if(input[i]==(1125+offset2))
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
	if(input[i]>(1121+offset2))
{
	if(input[i]==(1123+offset2))
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
	if(input[i]==(1121+offset2))
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
	if(input[i]>(1103+offset2))
{
	if(input[i]>(1111+offset2))
{
	if(input[i]>(1115+offset2))
{
	if(input[i]>(1117+offset2))
{
	if(input[i]==(1119+offset2))
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
	if(input[i]==(1117+offset2))
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
	if(input[i]>(1113+offset2))
{
	if(input[i]==(1115+offset2))
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
	if(input[i]==(1113+offset2))
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
	if(input[i]>(1107+offset2))
{
	if(input[i]>(1109+offset2))
{
	if(input[i]==(1111+offset2))
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
	if(input[i]==(1109+offset2))
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
	if(input[i]>(1105+offset2))
{
	if(input[i]==(1107+offset2))
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
	if(input[i]==(1105+offset2))
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
	if(input[i]>(1095+offset2))
{
	if(input[i]>(1099+offset2))
{
	if(input[i]>(1101+offset2))
{
	if(input[i]==(1103+offset2))
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
	if(input[i]==(1101+offset2))
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
	if(input[i]>(1097+offset2))
{
	if(input[i]==(1099+offset2))
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
	if(input[i]==(1097+offset2))
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
	if(input[i]>(1091+offset2))
{
	if(input[i]>(1093+offset2))
{
	if(input[i]==(1095+offset2))
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
	if(input[i]==(1093+offset2))
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
	if(input[i]>(1089+offset2))
{
	if(input[i]==(1091+offset2))
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
	if(input[i]==(1089+offset2))
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
	if(input[i]>(1055+offset2))
{
	if(input[i]>(1071+offset2))
{
	if(input[i]>(1079+offset2))
{
	if(input[i]>(1083+offset2))
{
	if(input[i]>(1085+offset2))
{
	if(input[i]==(1087+offset2))
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
	if(input[i]==(1085+offset2))
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
	if(input[i]>(1081+offset2))
{
	if(input[i]==(1083+offset2))
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
	if(input[i]==(1081+offset2))
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
	if(input[i]>(1075+offset2))
{
	if(input[i]>(1077+offset2))
{
	if(input[i]==(1079+offset2))
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
	if(input[i]==(1077+offset2))
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
	if(input[i]>(1073+offset2))
{
	if(input[i]==(1075+offset2))
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
	if(input[i]==(1073+offset2))
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
	if(input[i]>(1063+offset2))
{
	if(input[i]>(1067+offset2))
{
	if(input[i]>(1069+offset2))
{
	if(input[i]==(1071+offset2))
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
	if(input[i]==(1069+offset2))
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
	if(input[i]>(1065+offset2))
{
	if(input[i]==(1067+offset2))
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
	if(input[i]==(1065+offset2))
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
	if(input[i]>(1059+offset2))
{
	if(input[i]>(1061+offset2))
{
	if(input[i]==(1063+offset2))
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
	if(input[i]==(1061+offset2))
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
	if(input[i]>(1057+offset2))
{
	if(input[i]==(1059+offset2))
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
	if(input[i]==(1057+offset2))
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
	if(input[i]>(1039+offset2))
{
	if(input[i]>(1047+offset2))
{
	if(input[i]>(1051+offset2))
{
	if(input[i]>(1053+offset2))
{
	if(input[i]==(1055+offset2))
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
	if(input[i]==(1053+offset2))
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
	if(input[i]>(1049+offset2))
{
	if(input[i]==(1051+offset2))
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
	if(input[i]==(1049+offset2))
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
	if(input[i]>(1043+offset2))
{
	if(input[i]>(1045+offset2))
{
	if(input[i]==(1047+offset2))
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
	if(input[i]==(1045+offset2))
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
	if(input[i]>(1041+offset2))
{
	if(input[i]==(1043+offset2))
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
	if(input[i]==(1041+offset2))
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
	if(input[i]>(1031+offset2))
{
	if(input[i]>(1035+offset2))
{
	if(input[i]>(1037+offset2))
{
	if(input[i]==(1039+offset2))
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
	if(input[i]==(1037+offset2))
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
	if(input[i]>(1033+offset2))
{
	if(input[i]==(1035+offset2))
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
	if(input[i]==(1033+offset2))
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
	if(input[i]>(1027+offset2))
{
	if(input[i]>(1029+offset2))
{
	if(input[i]==(1031+offset2))
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
	if(input[i]==(1029+offset2))
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
	if(input[i]>(1025+offset2))
{
	if(input[i]==(1027+offset2))
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
	if(input[i]==(1025+offset2))
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


if(input[i]>(2047+offset3))
{
	if(input[i]>(3071+offset3))
{
	if(input[i]>(3583+offset3))
{
	if(input[i]>(3839+offset3))
{
	if(input[i]>(3967+offset3))
{
	if(input[i]>(4031+offset3))
{
	if(input[i]>(4063+offset3))
{
	if(input[i]>(4079+offset3))
{
	if(input[i]>(4087+offset3))
{
	if(input[i]>(4091+offset3))
{
	if(input[i]>(4093+offset3))
{
	if(input[i]==(4095+offset3))
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
	if(input[i]==(4093+offset3))
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
	if(input[i]>(4089+offset3))
{
	if(input[i]==(4091+offset3))
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
	if(input[i]==(4089+offset3))
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
	if(input[i]>(4083+offset3))
{
	if(input[i]>(4085+offset3))
{
	if(input[i]==(4087+offset3))
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
	if(input[i]==(4085+offset3))
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
	if(input[i]>(4081+offset3))
{
	if(input[i]==(4083+offset3))
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
	if(input[i]==(4081+offset3))
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
	if(input[i]>(4071+offset3))
{
	if(input[i]>(4075+offset3))
{
	if(input[i]>(4077+offset3))
{
	if(input[i]==(4079+offset3))
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
	if(input[i]==(4077+offset3))
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
	if(input[i]>(4073+offset3))
{
	if(input[i]==(4075+offset3))
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
	if(input[i]==(4073+offset3))
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
	if(input[i]>(4067+offset3))
{
	if(input[i]>(4069+offset3))
{
	if(input[i]==(4071+offset3))
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
	if(input[i]==(4069+offset3))
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
	if(input[i]>(4065+offset3))
{
	if(input[i]==(4067+offset3))
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
	if(input[i]==(4065+offset3))
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
	if(input[i]>(4047+offset3))
{
	if(input[i]>(4055+offset3))
{
	if(input[i]>(4059+offset3))
{
	if(input[i]>(4061+offset3))
{
	if(input[i]==(4063+offset3))
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
	if(input[i]==(4061+offset3))
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
	if(input[i]>(4057+offset3))
{
	if(input[i]==(4059+offset3))
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
	if(input[i]==(4057+offset3))
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
	if(input[i]>(4051+offset3))
{
	if(input[i]>(4053+offset3))
{
	if(input[i]==(4055+offset3))
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
	if(input[i]==(4053+offset3))
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
	if(input[i]>(4049+offset3))
{
	if(input[i]==(4051+offset3))
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
	if(input[i]==(4049+offset3))
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
	if(input[i]>(4039+offset3))
{
	if(input[i]>(4043+offset3))
{
	if(input[i]>(4045+offset3))
{
	if(input[i]==(4047+offset3))
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
	if(input[i]==(4045+offset3))
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
	if(input[i]>(4041+offset3))
{
	if(input[i]==(4043+offset3))
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
	if(input[i]==(4041+offset3))
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
	if(input[i]>(4035+offset3))
{
	if(input[i]>(4037+offset3))
{
	if(input[i]==(4039+offset3))
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
	if(input[i]==(4037+offset3))
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
	if(input[i]>(4033+offset3))
{
	if(input[i]==(4035+offset3))
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
	if(input[i]==(4033+offset3))
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
	if(input[i]>(3999+offset3))
{
	if(input[i]>(4015+offset3))
{
	if(input[i]>(4023+offset3))
{
	if(input[i]>(4027+offset3))
{
	if(input[i]>(4029+offset3))
{
	if(input[i]==(4031+offset3))
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
	if(input[i]==(4029+offset3))
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
	if(input[i]>(4025+offset3))
{
	if(input[i]==(4027+offset3))
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
	if(input[i]==(4025+offset3))
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
	if(input[i]>(4019+offset3))
{
	if(input[i]>(4021+offset3))
{
	if(input[i]==(4023+offset3))
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
	if(input[i]==(4021+offset3))
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
	if(input[i]>(4017+offset3))
{
	if(input[i]==(4019+offset3))
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
	if(input[i]==(4017+offset3))
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
	if(input[i]>(4007+offset3))
{
	if(input[i]>(4011+offset3))
{
	if(input[i]>(4013+offset3))
{
	if(input[i]==(4015+offset3))
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
	if(input[i]==(4013+offset3))
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
	if(input[i]>(4009+offset3))
{
	if(input[i]==(4011+offset3))
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
	if(input[i]==(4009+offset3))
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
	if(input[i]>(4003+offset3))
{
	if(input[i]>(4005+offset3))
{
	if(input[i]==(4007+offset3))
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
	if(input[i]==(4005+offset3))
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
	if(input[i]>(4001+offset3))
{
	if(input[i]==(4003+offset3))
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
	if(input[i]==(4001+offset3))
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
	if(input[i]>(3983+offset3))
{
	if(input[i]>(3991+offset3))
{
	if(input[i]>(3995+offset3))
{
	if(input[i]>(3997+offset3))
{
	if(input[i]==(3999+offset3))
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
	if(input[i]==(3997+offset3))
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
	if(input[i]>(3993+offset3))
{
	if(input[i]==(3995+offset3))
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
	if(input[i]==(3993+offset3))
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
	if(input[i]>(3987+offset3))
{
	if(input[i]>(3989+offset3))
{
	if(input[i]==(3991+offset3))
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
	if(input[i]==(3989+offset3))
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
	if(input[i]>(3985+offset3))
{
	if(input[i]==(3987+offset3))
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
	if(input[i]==(3985+offset3))
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
	if(input[i]>(3975+offset3))
{
	if(input[i]>(3979+offset3))
{
	if(input[i]>(3981+offset3))
{
	if(input[i]==(3983+offset3))
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
	if(input[i]==(3981+offset3))
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
	if(input[i]>(3977+offset3))
{
	if(input[i]==(3979+offset3))
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
	if(input[i]==(3977+offset3))
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
	if(input[i]>(3971+offset3))
{
	if(input[i]>(3973+offset3))
{
	if(input[i]==(3975+offset3))
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
	if(input[i]==(3973+offset3))
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
	if(input[i]>(3969+offset3))
{
	if(input[i]==(3971+offset3))
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
	if(input[i]==(3969+offset3))
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
	if(input[i]>(3903+offset3))
{
	if(input[i]>(3935+offset3))
{
	if(input[i]>(3951+offset3))
{
	if(input[i]>(3959+offset3))
{
	if(input[i]>(3963+offset3))
{
	if(input[i]>(3965+offset3))
{
	if(input[i]==(3967+offset3))
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
	if(input[i]==(3965+offset3))
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
	if(input[i]>(3961+offset3))
{
	if(input[i]==(3963+offset3))
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
	if(input[i]==(3961+offset3))
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
	if(input[i]>(3955+offset3))
{
	if(input[i]>(3957+offset3))
{
	if(input[i]==(3959+offset3))
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
	if(input[i]==(3957+offset3))
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
	if(input[i]>(3953+offset3))
{
	if(input[i]==(3955+offset3))
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
	if(input[i]==(3953+offset3))
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
	if(input[i]>(3943+offset3))
{
	if(input[i]>(3947+offset3))
{
	if(input[i]>(3949+offset3))
{
	if(input[i]==(3951+offset3))
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
	if(input[i]==(3949+offset3))
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
	if(input[i]>(3945+offset3))
{
	if(input[i]==(3947+offset3))
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
	if(input[i]==(3945+offset3))
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
	if(input[i]>(3939+offset3))
{
	if(input[i]>(3941+offset3))
{
	if(input[i]==(3943+offset3))
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
	if(input[i]==(3941+offset3))
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
	if(input[i]>(3937+offset3))
{
	if(input[i]==(3939+offset3))
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
	if(input[i]==(3937+offset3))
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
	if(input[i]>(3919+offset3))
{
	if(input[i]>(3927+offset3))
{
	if(input[i]>(3931+offset3))
{
	if(input[i]>(3933+offset3))
{
	if(input[i]==(3935+offset3))
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
	if(input[i]==(3933+offset3))
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
	if(input[i]>(3929+offset3))
{
	if(input[i]==(3931+offset3))
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
	if(input[i]==(3929+offset3))
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
	if(input[i]>(3923+offset3))
{
	if(input[i]>(3925+offset3))
{
	if(input[i]==(3927+offset3))
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
	if(input[i]==(3925+offset3))
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
	if(input[i]>(3921+offset3))
{
	if(input[i]==(3923+offset3))
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
	if(input[i]==(3921+offset3))
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
	if(input[i]>(3911+offset3))
{
	if(input[i]>(3915+offset3))
{
	if(input[i]>(3917+offset3))
{
	if(input[i]==(3919+offset3))
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
	if(input[i]==(3917+offset3))
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
	if(input[i]>(3913+offset3))
{
	if(input[i]==(3915+offset3))
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
	if(input[i]==(3913+offset3))
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
	if(input[i]>(3907+offset3))
{
	if(input[i]>(3909+offset3))
{
	if(input[i]==(3911+offset3))
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
	if(input[i]==(3909+offset3))
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
	if(input[i]>(3905+offset3))
{
	if(input[i]==(3907+offset3))
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
	if(input[i]==(3905+offset3))
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
	if(input[i]>(3871+offset3))
{
	if(input[i]>(3887+offset3))
{
	if(input[i]>(3895+offset3))
{
	if(input[i]>(3899+offset3))
{
	if(input[i]>(3901+offset3))
{
	if(input[i]==(3903+offset3))
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
	if(input[i]==(3901+offset3))
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
	if(input[i]>(3897+offset3))
{
	if(input[i]==(3899+offset3))
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
	if(input[i]==(3897+offset3))
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
	if(input[i]>(3891+offset3))
{
	if(input[i]>(3893+offset3))
{
	if(input[i]==(3895+offset3))
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
	if(input[i]==(3893+offset3))
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
	if(input[i]>(3889+offset3))
{
	if(input[i]==(3891+offset3))
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
	if(input[i]==(3889+offset3))
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
	if(input[i]>(3879+offset3))
{
	if(input[i]>(3883+offset3))
{
	if(input[i]>(3885+offset3))
{
	if(input[i]==(3887+offset3))
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
	if(input[i]==(3885+offset3))
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
	if(input[i]>(3881+offset3))
{
	if(input[i]==(3883+offset3))
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
	if(input[i]==(3881+offset3))
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
	if(input[i]>(3875+offset3))
{
	if(input[i]>(3877+offset3))
{
	if(input[i]==(3879+offset3))
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
	if(input[i]==(3877+offset3))
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
	if(input[i]>(3873+offset3))
{
	if(input[i]==(3875+offset3))
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
	if(input[i]==(3873+offset3))
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
	if(input[i]>(3855+offset3))
{
	if(input[i]>(3863+offset3))
{
	if(input[i]>(3867+offset3))
{
	if(input[i]>(3869+offset3))
{
	if(input[i]==(3871+offset3))
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
	if(input[i]==(3869+offset3))
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
	if(input[i]>(3865+offset3))
{
	if(input[i]==(3867+offset3))
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
	if(input[i]==(3865+offset3))
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
	if(input[i]>(3859+offset3))
{
	if(input[i]>(3861+offset3))
{
	if(input[i]==(3863+offset3))
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
	if(input[i]==(3861+offset3))
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
	if(input[i]>(3857+offset3))
{
	if(input[i]==(3859+offset3))
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
	if(input[i]==(3857+offset3))
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
	if(input[i]>(3847+offset3))
{
	if(input[i]>(3851+offset3))
{
	if(input[i]>(3853+offset3))
{
	if(input[i]==(3855+offset3))
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
	if(input[i]==(3853+offset3))
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
	if(input[i]>(3849+offset3))
{
	if(input[i]==(3851+offset3))
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
	if(input[i]==(3849+offset3))
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
	if(input[i]>(3843+offset3))
{
	if(input[i]>(3845+offset3))
{
	if(input[i]==(3847+offset3))
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
	if(input[i]==(3845+offset3))
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
	if(input[i]>(3841+offset3))
{
	if(input[i]==(3843+offset3))
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
	if(input[i]==(3841+offset3))
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
	if(input[i]>(3711+offset3))
{
	if(input[i]>(3775+offset3))
{
	if(input[i]>(3807+offset3))
{
	if(input[i]>(3823+offset3))
{
	if(input[i]>(3831+offset3))
{
	if(input[i]>(3835+offset3))
{
	if(input[i]>(3837+offset3))
{
	if(input[i]==(3839+offset3))
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
	if(input[i]==(3837+offset3))
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
	if(input[i]>(3833+offset3))
{
	if(input[i]==(3835+offset3))
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
	if(input[i]==(3833+offset3))
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
	if(input[i]>(3827+offset3))
{
	if(input[i]>(3829+offset3))
{
	if(input[i]==(3831+offset3))
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
	if(input[i]==(3829+offset3))
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
	if(input[i]>(3825+offset3))
{
	if(input[i]==(3827+offset3))
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
	if(input[i]==(3825+offset3))
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
	if(input[i]>(3815+offset3))
{
	if(input[i]>(3819+offset3))
{
	if(input[i]>(3821+offset3))
{
	if(input[i]==(3823+offset3))
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
	if(input[i]==(3821+offset3))
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
	if(input[i]>(3817+offset3))
{
	if(input[i]==(3819+offset3))
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
	if(input[i]==(3817+offset3))
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
	if(input[i]>(3811+offset3))
{
	if(input[i]>(3813+offset3))
{
	if(input[i]==(3815+offset3))
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
	if(input[i]==(3813+offset3))
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
	if(input[i]>(3809+offset3))
{
	if(input[i]==(3811+offset3))
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
	if(input[i]==(3809+offset3))
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
	if(input[i]>(3791+offset3))
{
	if(input[i]>(3799+offset3))
{
	if(input[i]>(3803+offset3))
{
	if(input[i]>(3805+offset3))
{
	if(input[i]==(3807+offset3))
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
	if(input[i]==(3805+offset3))
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
	if(input[i]>(3801+offset3))
{
	if(input[i]==(3803+offset3))
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
	if(input[i]==(3801+offset3))
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
	if(input[i]>(3795+offset3))
{
	if(input[i]>(3797+offset3))
{
	if(input[i]==(3799+offset3))
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
	if(input[i]==(3797+offset3))
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
	if(input[i]>(3793+offset3))
{
	if(input[i]==(3795+offset3))
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
	if(input[i]==(3793+offset3))
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
	if(input[i]>(3783+offset3))
{
	if(input[i]>(3787+offset3))
{
	if(input[i]>(3789+offset3))
{
	if(input[i]==(3791+offset3))
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
	if(input[i]==(3789+offset3))
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
	if(input[i]>(3785+offset3))
{
	if(input[i]==(3787+offset3))
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
	if(input[i]==(3785+offset3))
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
	if(input[i]>(3779+offset3))
{
	if(input[i]>(3781+offset3))
{
	if(input[i]==(3783+offset3))
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
	if(input[i]==(3781+offset3))
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
	if(input[i]>(3777+offset3))
{
	if(input[i]==(3779+offset3))
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
	if(input[i]==(3777+offset3))
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
	if(input[i]>(3743+offset3))
{
	if(input[i]>(3759+offset3))
{
	if(input[i]>(3767+offset3))
{
	if(input[i]>(3771+offset3))
{
	if(input[i]>(3773+offset3))
{
	if(input[i]==(3775+offset3))
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
	if(input[i]==(3773+offset3))
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
	if(input[i]>(3769+offset3))
{
	if(input[i]==(3771+offset3))
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
	if(input[i]==(3769+offset3))
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
	if(input[i]>(3763+offset3))
{
	if(input[i]>(3765+offset3))
{
	if(input[i]==(3767+offset3))
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
	if(input[i]==(3765+offset3))
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
	if(input[i]>(3761+offset3))
{
	if(input[i]==(3763+offset3))
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
	if(input[i]==(3761+offset3))
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
	if(input[i]>(3751+offset3))
{
	if(input[i]>(3755+offset3))
{
	if(input[i]>(3757+offset3))
{
	if(input[i]==(3759+offset3))
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
	if(input[i]==(3757+offset3))
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
	if(input[i]>(3753+offset3))
{
	if(input[i]==(3755+offset3))
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
	if(input[i]==(3753+offset3))
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
	if(input[i]>(3747+offset3))
{
	if(input[i]>(3749+offset3))
{
	if(input[i]==(3751+offset3))
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
	if(input[i]==(3749+offset3))
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
	if(input[i]>(3745+offset3))
{
	if(input[i]==(3747+offset3))
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
	if(input[i]==(3745+offset3))
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
	if(input[i]>(3727+offset3))
{
	if(input[i]>(3735+offset3))
{
	if(input[i]>(3739+offset3))
{
	if(input[i]>(3741+offset3))
{
	if(input[i]==(3743+offset3))
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
	if(input[i]==(3741+offset3))
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
	if(input[i]>(3737+offset3))
{
	if(input[i]==(3739+offset3))
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
	if(input[i]==(3737+offset3))
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
	if(input[i]>(3731+offset3))
{
	if(input[i]>(3733+offset3))
{
	if(input[i]==(3735+offset3))
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
	if(input[i]==(3733+offset3))
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
	if(input[i]>(3729+offset3))
{
	if(input[i]==(3731+offset3))
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
	if(input[i]==(3729+offset3))
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
	if(input[i]>(3719+offset3))
{
	if(input[i]>(3723+offset3))
{
	if(input[i]>(3725+offset3))
{
	if(input[i]==(3727+offset3))
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
	if(input[i]==(3725+offset3))
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
	if(input[i]>(3721+offset3))
{
	if(input[i]==(3723+offset3))
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
	if(input[i]==(3721+offset3))
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
	if(input[i]>(3715+offset3))
{
	if(input[i]>(3717+offset3))
{
	if(input[i]==(3719+offset3))
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
	if(input[i]==(3717+offset3))
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
	if(input[i]>(3713+offset3))
{
	if(input[i]==(3715+offset3))
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
	if(input[i]==(3713+offset3))
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
	if(input[i]>(3647+offset3))
{
	if(input[i]>(3679+offset3))
{
	if(input[i]>(3695+offset3))
{
	if(input[i]>(3703+offset3))
{
	if(input[i]>(3707+offset3))
{
	if(input[i]>(3709+offset3))
{
	if(input[i]==(3711+offset3))
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
	if(input[i]==(3709+offset3))
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
	if(input[i]>(3705+offset3))
{
	if(input[i]==(3707+offset3))
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
	if(input[i]==(3705+offset3))
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
	if(input[i]>(3699+offset3))
{
	if(input[i]>(3701+offset3))
{
	if(input[i]==(3703+offset3))
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
	if(input[i]==(3701+offset3))
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
	if(input[i]>(3697+offset3))
{
	if(input[i]==(3699+offset3))
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
	if(input[i]==(3697+offset3))
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
	if(input[i]>(3687+offset3))
{
	if(input[i]>(3691+offset3))
{
	if(input[i]>(3693+offset3))
{
	if(input[i]==(3695+offset3))
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
	if(input[i]==(3693+offset3))
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
	if(input[i]>(3689+offset3))
{
	if(input[i]==(3691+offset3))
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
	if(input[i]==(3689+offset3))
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
	if(input[i]>(3683+offset3))
{
	if(input[i]>(3685+offset3))
{
	if(input[i]==(3687+offset3))
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
	if(input[i]==(3685+offset3))
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
	if(input[i]>(3681+offset3))
{
	if(input[i]==(3683+offset3))
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
	if(input[i]==(3681+offset3))
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
	if(input[i]>(3663+offset3))
{
	if(input[i]>(3671+offset3))
{
	if(input[i]>(3675+offset3))
{
	if(input[i]>(3677+offset3))
{
	if(input[i]==(3679+offset3))
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
	if(input[i]==(3677+offset3))
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
	if(input[i]>(3673+offset3))
{
	if(input[i]==(3675+offset3))
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
	if(input[i]==(3673+offset3))
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
	if(input[i]>(3667+offset3))
{
	if(input[i]>(3669+offset3))
{
	if(input[i]==(3671+offset3))
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
	if(input[i]==(3669+offset3))
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
	if(input[i]>(3665+offset3))
{
	if(input[i]==(3667+offset3))
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
	if(input[i]==(3665+offset3))
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
	if(input[i]>(3655+offset3))
{
	if(input[i]>(3659+offset3))
{
	if(input[i]>(3661+offset3))
{
	if(input[i]==(3663+offset3))
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
	if(input[i]==(3661+offset3))
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
	if(input[i]>(3657+offset3))
{
	if(input[i]==(3659+offset3))
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
	if(input[i]==(3657+offset3))
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
	if(input[i]>(3651+offset3))
{
	if(input[i]>(3653+offset3))
{
	if(input[i]==(3655+offset3))
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
	if(input[i]==(3653+offset3))
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
	if(input[i]>(3649+offset3))
{
	if(input[i]==(3651+offset3))
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
	if(input[i]==(3649+offset3))
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
	if(input[i]>(3615+offset3))
{
	if(input[i]>(3631+offset3))
{
	if(input[i]>(3639+offset3))
{
	if(input[i]>(3643+offset3))
{
	if(input[i]>(3645+offset3))
{
	if(input[i]==(3647+offset3))
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
	if(input[i]==(3645+offset3))
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
	if(input[i]>(3641+offset3))
{
	if(input[i]==(3643+offset3))
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
	if(input[i]==(3641+offset3))
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
	if(input[i]>(3635+offset3))
{
	if(input[i]>(3637+offset3))
{
	if(input[i]==(3639+offset3))
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
	if(input[i]==(3637+offset3))
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
	if(input[i]>(3633+offset3))
{
	if(input[i]==(3635+offset3))
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
	if(input[i]==(3633+offset3))
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
	if(input[i]>(3623+offset3))
{
	if(input[i]>(3627+offset3))
{
	if(input[i]>(3629+offset3))
{
	if(input[i]==(3631+offset3))
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
	if(input[i]==(3629+offset3))
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
	if(input[i]>(3625+offset3))
{
	if(input[i]==(3627+offset3))
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
	if(input[i]==(3625+offset3))
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
	if(input[i]>(3619+offset3))
{
	if(input[i]>(3621+offset3))
{
	if(input[i]==(3623+offset3))
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
	if(input[i]==(3621+offset3))
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
	if(input[i]>(3617+offset3))
{
	if(input[i]==(3619+offset3))
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
	if(input[i]==(3617+offset3))
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
	if(input[i]>(3599+offset3))
{
	if(input[i]>(3607+offset3))
{
	if(input[i]>(3611+offset3))
{
	if(input[i]>(3613+offset3))
{
	if(input[i]==(3615+offset3))
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
	if(input[i]==(3613+offset3))
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
	if(input[i]>(3609+offset3))
{
	if(input[i]==(3611+offset3))
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
	if(input[i]==(3609+offset3))
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
	if(input[i]>(3603+offset3))
{
	if(input[i]>(3605+offset3))
{
	if(input[i]==(3607+offset3))
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
	if(input[i]==(3605+offset3))
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
	if(input[i]>(3601+offset3))
{
	if(input[i]==(3603+offset3))
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
	if(input[i]==(3601+offset3))
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
	if(input[i]>(3591+offset3))
{
	if(input[i]>(3595+offset3))
{
	if(input[i]>(3597+offset3))
{
	if(input[i]==(3599+offset3))
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
	if(input[i]==(3597+offset3))
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
	if(input[i]>(3593+offset3))
{
	if(input[i]==(3595+offset3))
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
	if(input[i]==(3593+offset3))
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
	if(input[i]>(3587+offset3))
{
	if(input[i]>(3589+offset3))
{
	if(input[i]==(3591+offset3))
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
	if(input[i]==(3589+offset3))
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
	if(input[i]>(3585+offset3))
{
	if(input[i]==(3587+offset3))
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
	if(input[i]==(3585+offset3))
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
	if(input[i]>(3327+offset3))
{
	if(input[i]>(3455+offset3))
{
	if(input[i]>(3519+offset3))
{
	if(input[i]>(3551+offset3))
{
	if(input[i]>(3567+offset3))
{
	if(input[i]>(3575+offset3))
{
	if(input[i]>(3579+offset3))
{
	if(input[i]>(3581+offset3))
{
	if(input[i]==(3583+offset3))
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
	if(input[i]==(3581+offset3))
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
	if(input[i]>(3577+offset3))
{
	if(input[i]==(3579+offset3))
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
	if(input[i]==(3577+offset3))
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
	if(input[i]>(3571+offset3))
{
	if(input[i]>(3573+offset3))
{
	if(input[i]==(3575+offset3))
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
	if(input[i]==(3573+offset3))
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
	if(input[i]>(3569+offset3))
{
	if(input[i]==(3571+offset3))
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
	if(input[i]==(3569+offset3))
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
	if(input[i]>(3559+offset3))
{
	if(input[i]>(3563+offset3))
{
	if(input[i]>(3565+offset3))
{
	if(input[i]==(3567+offset3))
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
	if(input[i]==(3565+offset3))
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
	if(input[i]>(3561+offset3))
{
	if(input[i]==(3563+offset3))
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
	if(input[i]==(3561+offset3))
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
	if(input[i]>(3555+offset3))
{
	if(input[i]>(3557+offset3))
{
	if(input[i]==(3559+offset3))
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
	if(input[i]==(3557+offset3))
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
	if(input[i]>(3553+offset3))
{
	if(input[i]==(3555+offset3))
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
	if(input[i]==(3553+offset3))
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
	if(input[i]>(3535+offset3))
{
	if(input[i]>(3543+offset3))
{
	if(input[i]>(3547+offset3))
{
	if(input[i]>(3549+offset3))
{
	if(input[i]==(3551+offset3))
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
	if(input[i]==(3549+offset3))
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
	if(input[i]>(3545+offset3))
{
	if(input[i]==(3547+offset3))
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
	if(input[i]==(3545+offset3))
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
	if(input[i]>(3539+offset3))
{
	if(input[i]>(3541+offset3))
{
	if(input[i]==(3543+offset3))
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
	if(input[i]==(3541+offset3))
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
	if(input[i]>(3537+offset3))
{
	if(input[i]==(3539+offset3))
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
	if(input[i]==(3537+offset3))
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
	if(input[i]>(3527+offset3))
{
	if(input[i]>(3531+offset3))
{
	if(input[i]>(3533+offset3))
{
	if(input[i]==(3535+offset3))
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
	if(input[i]==(3533+offset3))
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
	if(input[i]>(3529+offset3))
{
	if(input[i]==(3531+offset3))
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
	if(input[i]==(3529+offset3))
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
	if(input[i]>(3523+offset3))
{
	if(input[i]>(3525+offset3))
{
	if(input[i]==(3527+offset3))
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
	if(input[i]==(3525+offset3))
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
	if(input[i]>(3521+offset3))
{
	if(input[i]==(3523+offset3))
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
	if(input[i]==(3521+offset3))
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
	if(input[i]>(3487+offset3))
{
	if(input[i]>(3503+offset3))
{
	if(input[i]>(3511+offset3))
{
	if(input[i]>(3515+offset3))
{
	if(input[i]>(3517+offset3))
{
	if(input[i]==(3519+offset3))
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
	if(input[i]==(3517+offset3))
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
	if(input[i]>(3513+offset3))
{
	if(input[i]==(3515+offset3))
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
	if(input[i]==(3513+offset3))
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
	if(input[i]>(3507+offset3))
{
	if(input[i]>(3509+offset3))
{
	if(input[i]==(3511+offset3))
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
	if(input[i]==(3509+offset3))
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
	if(input[i]>(3505+offset3))
{
	if(input[i]==(3507+offset3))
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
	if(input[i]==(3505+offset3))
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
	if(input[i]>(3495+offset3))
{
	if(input[i]>(3499+offset3))
{
	if(input[i]>(3501+offset3))
{
	if(input[i]==(3503+offset3))
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
	if(input[i]==(3501+offset3))
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
	if(input[i]>(3497+offset3))
{
	if(input[i]==(3499+offset3))
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
	if(input[i]==(3497+offset3))
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
	if(input[i]>(3491+offset3))
{
	if(input[i]>(3493+offset3))
{
	if(input[i]==(3495+offset3))
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
	if(input[i]==(3493+offset3))
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
	if(input[i]>(3489+offset3))
{
	if(input[i]==(3491+offset3))
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
	if(input[i]==(3489+offset3))
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
	if(input[i]>(3471+offset3))
{
	if(input[i]>(3479+offset3))
{
	if(input[i]>(3483+offset3))
{
	if(input[i]>(3485+offset3))
{
	if(input[i]==(3487+offset3))
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
	if(input[i]==(3485+offset3))
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
	if(input[i]>(3481+offset3))
{
	if(input[i]==(3483+offset3))
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
	if(input[i]==(3481+offset3))
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
	if(input[i]>(3475+offset3))
{
	if(input[i]>(3477+offset3))
{
	if(input[i]==(3479+offset3))
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
	if(input[i]==(3477+offset3))
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
	if(input[i]>(3473+offset3))
{
	if(input[i]==(3475+offset3))
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
	if(input[i]==(3473+offset3))
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
	if(input[i]>(3463+offset3))
{
	if(input[i]>(3467+offset3))
{
	if(input[i]>(3469+offset3))
{
	if(input[i]==(3471+offset3))
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
	if(input[i]==(3469+offset3))
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
	if(input[i]>(3465+offset3))
{
	if(input[i]==(3467+offset3))
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
	if(input[i]==(3465+offset3))
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
	if(input[i]>(3459+offset3))
{
	if(input[i]>(3461+offset3))
{
	if(input[i]==(3463+offset3))
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
	if(input[i]==(3461+offset3))
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
	if(input[i]>(3457+offset3))
{
	if(input[i]==(3459+offset3))
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
	if(input[i]==(3457+offset3))
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
	if(input[i]>(3391+offset3))
{
	if(input[i]>(3423+offset3))
{
	if(input[i]>(3439+offset3))
{
	if(input[i]>(3447+offset3))
{
	if(input[i]>(3451+offset3))
{
	if(input[i]>(3453+offset3))
{
	if(input[i]==(3455+offset3))
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
	if(input[i]==(3453+offset3))
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
	if(input[i]>(3449+offset3))
{
	if(input[i]==(3451+offset3))
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
	if(input[i]==(3449+offset3))
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
	if(input[i]>(3443+offset3))
{
	if(input[i]>(3445+offset3))
{
	if(input[i]==(3447+offset3))
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
	if(input[i]==(3445+offset3))
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
	if(input[i]>(3441+offset3))
{
	if(input[i]==(3443+offset3))
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
	if(input[i]==(3441+offset3))
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
	if(input[i]>(3431+offset3))
{
	if(input[i]>(3435+offset3))
{
	if(input[i]>(3437+offset3))
{
	if(input[i]==(3439+offset3))
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
	if(input[i]==(3437+offset3))
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
	if(input[i]>(3433+offset3))
{
	if(input[i]==(3435+offset3))
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
	if(input[i]==(3433+offset3))
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
	if(input[i]>(3427+offset3))
{
	if(input[i]>(3429+offset3))
{
	if(input[i]==(3431+offset3))
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
	if(input[i]==(3429+offset3))
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
	if(input[i]>(3425+offset3))
{
	if(input[i]==(3427+offset3))
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
	if(input[i]==(3425+offset3))
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
	if(input[i]>(3407+offset3))
{
	if(input[i]>(3415+offset3))
{
	if(input[i]>(3419+offset3))
{
	if(input[i]>(3421+offset3))
{
	if(input[i]==(3423+offset3))
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
	if(input[i]==(3421+offset3))
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
	if(input[i]>(3417+offset3))
{
	if(input[i]==(3419+offset3))
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
	if(input[i]==(3417+offset3))
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
	if(input[i]>(3411+offset3))
{
	if(input[i]>(3413+offset3))
{
	if(input[i]==(3415+offset3))
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
	if(input[i]==(3413+offset3))
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
	if(input[i]>(3409+offset3))
{
	if(input[i]==(3411+offset3))
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
	if(input[i]==(3409+offset3))
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
	if(input[i]>(3399+offset3))
{
	if(input[i]>(3403+offset3))
{
	if(input[i]>(3405+offset3))
{
	if(input[i]==(3407+offset3))
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
	if(input[i]==(3405+offset3))
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
	if(input[i]>(3401+offset3))
{
	if(input[i]==(3403+offset3))
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
	if(input[i]==(3401+offset3))
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
	if(input[i]>(3395+offset3))
{
	if(input[i]>(3397+offset3))
{
	if(input[i]==(3399+offset3))
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
	if(input[i]==(3397+offset3))
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
	if(input[i]>(3393+offset3))
{
	if(input[i]==(3395+offset3))
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
	if(input[i]==(3393+offset3))
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
	if(input[i]>(3359+offset3))
{
	if(input[i]>(3375+offset3))
{
	if(input[i]>(3383+offset3))
{
	if(input[i]>(3387+offset3))
{
	if(input[i]>(3389+offset3))
{
	if(input[i]==(3391+offset3))
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
	if(input[i]==(3389+offset3))
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
	if(input[i]>(3385+offset3))
{
	if(input[i]==(3387+offset3))
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
	if(input[i]==(3385+offset3))
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
	if(input[i]>(3379+offset3))
{
	if(input[i]>(3381+offset3))
{
	if(input[i]==(3383+offset3))
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
	if(input[i]==(3381+offset3))
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
	if(input[i]>(3377+offset3))
{
	if(input[i]==(3379+offset3))
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
	if(input[i]==(3377+offset3))
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
	if(input[i]>(3367+offset3))
{
	if(input[i]>(3371+offset3))
{
	if(input[i]>(3373+offset3))
{
	if(input[i]==(3375+offset3))
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
	if(input[i]==(3373+offset3))
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
	if(input[i]>(3369+offset3))
{
	if(input[i]==(3371+offset3))
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
	if(input[i]==(3369+offset3))
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
	if(input[i]>(3363+offset3))
{
	if(input[i]>(3365+offset3))
{
	if(input[i]==(3367+offset3))
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
	if(input[i]==(3365+offset3))
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
	if(input[i]>(3361+offset3))
{
	if(input[i]==(3363+offset3))
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
	if(input[i]==(3361+offset3))
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
	if(input[i]>(3343+offset3))
{
	if(input[i]>(3351+offset3))
{
	if(input[i]>(3355+offset3))
{
	if(input[i]>(3357+offset3))
{
	if(input[i]==(3359+offset3))
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
	if(input[i]==(3357+offset3))
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
	if(input[i]>(3353+offset3))
{
	if(input[i]==(3355+offset3))
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
	if(input[i]==(3353+offset3))
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
	if(input[i]>(3347+offset3))
{
	if(input[i]>(3349+offset3))
{
	if(input[i]==(3351+offset3))
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
	if(input[i]==(3349+offset3))
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
	if(input[i]>(3345+offset3))
{
	if(input[i]==(3347+offset3))
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
	if(input[i]==(3345+offset3))
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
	if(input[i]>(3335+offset3))
{
	if(input[i]>(3339+offset3))
{
	if(input[i]>(3341+offset3))
{
	if(input[i]==(3343+offset3))
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
	if(input[i]==(3341+offset3))
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
	if(input[i]>(3337+offset3))
{
	if(input[i]==(3339+offset3))
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
	if(input[i]==(3337+offset3))
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
	if(input[i]>(3331+offset3))
{
	if(input[i]>(3333+offset3))
{
	if(input[i]==(3335+offset3))
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
	if(input[i]==(3333+offset3))
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
	if(input[i]>(3329+offset3))
{
	if(input[i]==(3331+offset3))
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
	if(input[i]==(3329+offset3))
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
	if(input[i]>(3199+offset3))
{
	if(input[i]>(3263+offset3))
{
	if(input[i]>(3295+offset3))
{
	if(input[i]>(3311+offset3))
{
	if(input[i]>(3319+offset3))
{
	if(input[i]>(3323+offset3))
{
	if(input[i]>(3325+offset3))
{
	if(input[i]==(3327+offset3))
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
	if(input[i]==(3325+offset3))
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
	if(input[i]>(3321+offset3))
{
	if(input[i]==(3323+offset3))
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
	if(input[i]==(3321+offset3))
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
	if(input[i]>(3315+offset3))
{
	if(input[i]>(3317+offset3))
{
	if(input[i]==(3319+offset3))
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
	if(input[i]==(3317+offset3))
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
	if(input[i]>(3313+offset3))
{
	if(input[i]==(3315+offset3))
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
	if(input[i]==(3313+offset3))
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
	if(input[i]>(3303+offset3))
{
	if(input[i]>(3307+offset3))
{
	if(input[i]>(3309+offset3))
{
	if(input[i]==(3311+offset3))
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
	if(input[i]==(3309+offset3))
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
	if(input[i]>(3305+offset3))
{
	if(input[i]==(3307+offset3))
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
	if(input[i]==(3305+offset3))
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
	if(input[i]>(3299+offset3))
{
	if(input[i]>(3301+offset3))
{
	if(input[i]==(3303+offset3))
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
	if(input[i]==(3301+offset3))
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
	if(input[i]>(3297+offset3))
{
	if(input[i]==(3299+offset3))
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
	if(input[i]==(3297+offset3))
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
	if(input[i]>(3279+offset3))
{
	if(input[i]>(3287+offset3))
{
	if(input[i]>(3291+offset3))
{
	if(input[i]>(3293+offset3))
{
	if(input[i]==(3295+offset3))
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
	if(input[i]==(3293+offset3))
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
	if(input[i]>(3289+offset3))
{
	if(input[i]==(3291+offset3))
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
	if(input[i]==(3289+offset3))
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
	if(input[i]>(3283+offset3))
{
	if(input[i]>(3285+offset3))
{
	if(input[i]==(3287+offset3))
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
	if(input[i]==(3285+offset3))
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
	if(input[i]>(3281+offset3))
{
	if(input[i]==(3283+offset3))
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
	if(input[i]==(3281+offset3))
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
	if(input[i]>(3271+offset3))
{
	if(input[i]>(3275+offset3))
{
	if(input[i]>(3277+offset3))
{
	if(input[i]==(3279+offset3))
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
	if(input[i]==(3277+offset3))
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
	if(input[i]>(3273+offset3))
{
	if(input[i]==(3275+offset3))
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
	if(input[i]==(3273+offset3))
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
	if(input[i]>(3267+offset3))
{
	if(input[i]>(3269+offset3))
{
	if(input[i]==(3271+offset3))
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
	if(input[i]==(3269+offset3))
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
	if(input[i]>(3265+offset3))
{
	if(input[i]==(3267+offset3))
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
	if(input[i]==(3265+offset3))
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
	if(input[i]>(3231+offset3))
{
	if(input[i]>(3247+offset3))
{
	if(input[i]>(3255+offset3))
{
	if(input[i]>(3259+offset3))
{
	if(input[i]>(3261+offset3))
{
	if(input[i]==(3263+offset3))
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
	if(input[i]==(3261+offset3))
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
	if(input[i]>(3257+offset3))
{
	if(input[i]==(3259+offset3))
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
	if(input[i]==(3257+offset3))
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
	if(input[i]>(3251+offset3))
{
	if(input[i]>(3253+offset3))
{
	if(input[i]==(3255+offset3))
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
	if(input[i]==(3253+offset3))
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
	if(input[i]>(3249+offset3))
{
	if(input[i]==(3251+offset3))
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
	if(input[i]==(3249+offset3))
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
	if(input[i]>(3239+offset3))
{
	if(input[i]>(3243+offset3))
{
	if(input[i]>(3245+offset3))
{
	if(input[i]==(3247+offset3))
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
	if(input[i]==(3245+offset3))
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
	if(input[i]>(3241+offset3))
{
	if(input[i]==(3243+offset3))
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
	if(input[i]==(3241+offset3))
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
	if(input[i]>(3235+offset3))
{
	if(input[i]>(3237+offset3))
{
	if(input[i]==(3239+offset3))
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
	if(input[i]==(3237+offset3))
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
	if(input[i]>(3233+offset3))
{
	if(input[i]==(3235+offset3))
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
	if(input[i]==(3233+offset3))
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
	if(input[i]>(3215+offset3))
{
	if(input[i]>(3223+offset3))
{
	if(input[i]>(3227+offset3))
{
	if(input[i]>(3229+offset3))
{
	if(input[i]==(3231+offset3))
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
	if(input[i]==(3229+offset3))
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
	if(input[i]>(3225+offset3))
{
	if(input[i]==(3227+offset3))
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
	if(input[i]==(3225+offset3))
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
	if(input[i]>(3219+offset3))
{
	if(input[i]>(3221+offset3))
{
	if(input[i]==(3223+offset3))
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
	if(input[i]==(3221+offset3))
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
	if(input[i]>(3217+offset3))
{
	if(input[i]==(3219+offset3))
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
	if(input[i]==(3217+offset3))
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
	if(input[i]>(3207+offset3))
{
	if(input[i]>(3211+offset3))
{
	if(input[i]>(3213+offset3))
{
	if(input[i]==(3215+offset3))
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
	if(input[i]==(3213+offset3))
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
	if(input[i]>(3209+offset3))
{
	if(input[i]==(3211+offset3))
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
	if(input[i]==(3209+offset3))
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
	if(input[i]>(3203+offset3))
{
	if(input[i]>(3205+offset3))
{
	if(input[i]==(3207+offset3))
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
	if(input[i]==(3205+offset3))
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
	if(input[i]>(3201+offset3))
{
	if(input[i]==(3203+offset3))
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
	if(input[i]==(3201+offset3))
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
	if(input[i]>(3135+offset3))
{
	if(input[i]>(3167+offset3))
{
	if(input[i]>(3183+offset3))
{
	if(input[i]>(3191+offset3))
{
	if(input[i]>(3195+offset3))
{
	if(input[i]>(3197+offset3))
{
	if(input[i]==(3199+offset3))
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
	if(input[i]==(3197+offset3))
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
	if(input[i]>(3193+offset3))
{
	if(input[i]==(3195+offset3))
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
	if(input[i]==(3193+offset3))
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
	if(input[i]>(3187+offset3))
{
	if(input[i]>(3189+offset3))
{
	if(input[i]==(3191+offset3))
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
	if(input[i]==(3189+offset3))
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
	if(input[i]>(3185+offset3))
{
	if(input[i]==(3187+offset3))
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
	if(input[i]==(3185+offset3))
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
	if(input[i]>(3175+offset3))
{
	if(input[i]>(3179+offset3))
{
	if(input[i]>(3181+offset3))
{
	if(input[i]==(3183+offset3))
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
	if(input[i]==(3181+offset3))
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
	if(input[i]>(3177+offset3))
{
	if(input[i]==(3179+offset3))
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
	if(input[i]==(3177+offset3))
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
	if(input[i]>(3171+offset3))
{
	if(input[i]>(3173+offset3))
{
	if(input[i]==(3175+offset3))
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
	if(input[i]==(3173+offset3))
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
	if(input[i]>(3169+offset3))
{
	if(input[i]==(3171+offset3))
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
	if(input[i]==(3169+offset3))
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
	if(input[i]>(3151+offset3))
{
	if(input[i]>(3159+offset3))
{
	if(input[i]>(3163+offset3))
{
	if(input[i]>(3165+offset3))
{
	if(input[i]==(3167+offset3))
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
	if(input[i]==(3165+offset3))
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
	if(input[i]>(3161+offset3))
{
	if(input[i]==(3163+offset3))
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
	if(input[i]==(3161+offset3))
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
	if(input[i]>(3155+offset3))
{
	if(input[i]>(3157+offset3))
{
	if(input[i]==(3159+offset3))
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
	if(input[i]==(3157+offset3))
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
	if(input[i]>(3153+offset3))
{
	if(input[i]==(3155+offset3))
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
	if(input[i]==(3153+offset3))
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
	if(input[i]>(3143+offset3))
{
	if(input[i]>(3147+offset3))
{
	if(input[i]>(3149+offset3))
{
	if(input[i]==(3151+offset3))
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
	if(input[i]==(3149+offset3))
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
	if(input[i]>(3145+offset3))
{
	if(input[i]==(3147+offset3))
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
	if(input[i]==(3145+offset3))
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
	if(input[i]>(3139+offset3))
{
	if(input[i]>(3141+offset3))
{
	if(input[i]==(3143+offset3))
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
	if(input[i]==(3141+offset3))
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
	if(input[i]>(3137+offset3))
{
	if(input[i]==(3139+offset3))
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
	if(input[i]==(3137+offset3))
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
	if(input[i]>(3103+offset3))
{
	if(input[i]>(3119+offset3))
{
	if(input[i]>(3127+offset3))
{
	if(input[i]>(3131+offset3))
{
	if(input[i]>(3133+offset3))
{
	if(input[i]==(3135+offset3))
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
	if(input[i]==(3133+offset3))
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
	if(input[i]>(3129+offset3))
{
	if(input[i]==(3131+offset3))
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
	if(input[i]==(3129+offset3))
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
	if(input[i]>(3123+offset3))
{
	if(input[i]>(3125+offset3))
{
	if(input[i]==(3127+offset3))
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
	if(input[i]==(3125+offset3))
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
	if(input[i]>(3121+offset3))
{
	if(input[i]==(3123+offset3))
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
	if(input[i]==(3121+offset3))
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
	if(input[i]>(3111+offset3))
{
	if(input[i]>(3115+offset3))
{
	if(input[i]>(3117+offset3))
{
	if(input[i]==(3119+offset3))
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
	if(input[i]==(3117+offset3))
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
	if(input[i]>(3113+offset3))
{
	if(input[i]==(3115+offset3))
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
	if(input[i]==(3113+offset3))
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
	if(input[i]>(3107+offset3))
{
	if(input[i]>(3109+offset3))
{
	if(input[i]==(3111+offset3))
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
	if(input[i]==(3109+offset3))
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
	if(input[i]>(3105+offset3))
{
	if(input[i]==(3107+offset3))
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
	if(input[i]==(3105+offset3))
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
	if(input[i]>(3087+offset3))
{
	if(input[i]>(3095+offset3))
{
	if(input[i]>(3099+offset3))
{
	if(input[i]>(3101+offset3))
{
	if(input[i]==(3103+offset3))
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
	if(input[i]==(3101+offset3))
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
	if(input[i]>(3097+offset3))
{
	if(input[i]==(3099+offset3))
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
	if(input[i]==(3097+offset3))
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
	if(input[i]>(3091+offset3))
{
	if(input[i]>(3093+offset3))
{
	if(input[i]==(3095+offset3))
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
	if(input[i]==(3093+offset3))
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
	if(input[i]>(3089+offset3))
{
	if(input[i]==(3091+offset3))
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
	if(input[i]==(3089+offset3))
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
	if(input[i]>(3079+offset3))
{
	if(input[i]>(3083+offset3))
{
	if(input[i]>(3085+offset3))
{
	if(input[i]==(3087+offset3))
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
	if(input[i]==(3085+offset3))
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
	if(input[i]>(3081+offset3))
{
	if(input[i]==(3083+offset3))
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
	if(input[i]==(3081+offset3))
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
	if(input[i]>(3075+offset3))
{
	if(input[i]>(3077+offset3))
{
	if(input[i]==(3079+offset3))
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
	if(input[i]==(3077+offset3))
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
	if(input[i]>(3073+offset3))
{
	if(input[i]==(3075+offset3))
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
	if(input[i]==(3073+offset3))
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
	if(input[i]>(2559+offset3))
{
	if(input[i]>(2815+offset3))
{
	if(input[i]>(2943+offset3))
{
	if(input[i]>(3007+offset3))
{
	if(input[i]>(3039+offset3))
{
	if(input[i]>(3055+offset3))
{
	if(input[i]>(3063+offset3))
{
	if(input[i]>(3067+offset3))
{
	if(input[i]>(3069+offset3))
{
	if(input[i]==(3071+offset3))
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
	if(input[i]==(3069+offset3))
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
	if(input[i]>(3065+offset3))
{
	if(input[i]==(3067+offset3))
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
	if(input[i]==(3065+offset3))
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
	if(input[i]>(3059+offset3))
{
	if(input[i]>(3061+offset3))
{
	if(input[i]==(3063+offset3))
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
	if(input[i]==(3061+offset3))
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
	if(input[i]>(3057+offset3))
{
	if(input[i]==(3059+offset3))
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
	if(input[i]==(3057+offset3))
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
	if(input[i]>(3047+offset3))
{
	if(input[i]>(3051+offset3))
{
	if(input[i]>(3053+offset3))
{
	if(input[i]==(3055+offset3))
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
	if(input[i]==(3053+offset3))
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
	if(input[i]>(3049+offset3))
{
	if(input[i]==(3051+offset3))
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
	if(input[i]==(3049+offset3))
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
	if(input[i]>(3043+offset3))
{
	if(input[i]>(3045+offset3))
{
	if(input[i]==(3047+offset3))
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
	if(input[i]==(3045+offset3))
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
	if(input[i]>(3041+offset3))
{
	if(input[i]==(3043+offset3))
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
	if(input[i]==(3041+offset3))
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
	if(input[i]>(3023+offset3))
{
	if(input[i]>(3031+offset3))
{
	if(input[i]>(3035+offset3))
{
	if(input[i]>(3037+offset3))
{
	if(input[i]==(3039+offset3))
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
	if(input[i]==(3037+offset3))
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
	if(input[i]>(3033+offset3))
{
	if(input[i]==(3035+offset3))
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
	if(input[i]==(3033+offset3))
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
	if(input[i]>(3027+offset3))
{
	if(input[i]>(3029+offset3))
{
	if(input[i]==(3031+offset3))
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
	if(input[i]==(3029+offset3))
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
	if(input[i]>(3025+offset3))
{
	if(input[i]==(3027+offset3))
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
	if(input[i]==(3025+offset3))
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
	if(input[i]>(3015+offset3))
{
	if(input[i]>(3019+offset3))
{
	if(input[i]>(3021+offset3))
{
	if(input[i]==(3023+offset3))
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
	if(input[i]==(3021+offset3))
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
	if(input[i]>(3017+offset3))
{
	if(input[i]==(3019+offset3))
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
	if(input[i]==(3017+offset3))
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
	if(input[i]>(3011+offset3))
{
	if(input[i]>(3013+offset3))
{
	if(input[i]==(3015+offset3))
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
	if(input[i]==(3013+offset3))
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
	if(input[i]>(3009+offset3))
{
	if(input[i]==(3011+offset3))
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
	if(input[i]==(3009+offset3))
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
	if(input[i]>(2975+offset3))
{
	if(input[i]>(2991+offset3))
{
	if(input[i]>(2999+offset3))
{
	if(input[i]>(3003+offset3))
{
	if(input[i]>(3005+offset3))
{
	if(input[i]==(3007+offset3))
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
	if(input[i]==(3005+offset3))
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
	if(input[i]>(3001+offset3))
{
	if(input[i]==(3003+offset3))
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
	if(input[i]==(3001+offset3))
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
	if(input[i]>(2995+offset3))
{
	if(input[i]>(2997+offset3))
{
	if(input[i]==(2999+offset3))
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
	if(input[i]==(2997+offset3))
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
	if(input[i]>(2993+offset3))
{
	if(input[i]==(2995+offset3))
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
	if(input[i]==(2993+offset3))
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
	if(input[i]>(2983+offset3))
{
	if(input[i]>(2987+offset3))
{
	if(input[i]>(2989+offset3))
{
	if(input[i]==(2991+offset3))
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
	if(input[i]==(2989+offset3))
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
	if(input[i]>(2985+offset3))
{
	if(input[i]==(2987+offset3))
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
	if(input[i]==(2985+offset3))
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
	if(input[i]>(2979+offset3))
{
	if(input[i]>(2981+offset3))
{
	if(input[i]==(2983+offset3))
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
	if(input[i]==(2981+offset3))
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
	if(input[i]>(2977+offset3))
{
	if(input[i]==(2979+offset3))
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
	if(input[i]==(2977+offset3))
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
	if(input[i]>(2959+offset3))
{
	if(input[i]>(2967+offset3))
{
	if(input[i]>(2971+offset3))
{
	if(input[i]>(2973+offset3))
{
	if(input[i]==(2975+offset3))
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
	if(input[i]==(2973+offset3))
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
	if(input[i]>(2969+offset3))
{
	if(input[i]==(2971+offset3))
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
	if(input[i]==(2969+offset3))
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
	if(input[i]>(2963+offset3))
{
	if(input[i]>(2965+offset3))
{
	if(input[i]==(2967+offset3))
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
	if(input[i]==(2965+offset3))
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
	if(input[i]>(2961+offset3))
{
	if(input[i]==(2963+offset3))
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
	if(input[i]==(2961+offset3))
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
	if(input[i]>(2951+offset3))
{
	if(input[i]>(2955+offset3))
{
	if(input[i]>(2957+offset3))
{
	if(input[i]==(2959+offset3))
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
	if(input[i]==(2957+offset3))
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
	if(input[i]>(2953+offset3))
{
	if(input[i]==(2955+offset3))
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
	if(input[i]==(2953+offset3))
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
	if(input[i]>(2947+offset3))
{
	if(input[i]>(2949+offset3))
{
	if(input[i]==(2951+offset3))
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
	if(input[i]==(2949+offset3))
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
	if(input[i]>(2945+offset3))
{
	if(input[i]==(2947+offset3))
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
	if(input[i]==(2945+offset3))
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
	if(input[i]>(2879+offset3))
{
	if(input[i]>(2911+offset3))
{
	if(input[i]>(2927+offset3))
{
	if(input[i]>(2935+offset3))
{
	if(input[i]>(2939+offset3))
{
	if(input[i]>(2941+offset3))
{
	if(input[i]==(2943+offset3))
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
	if(input[i]==(2941+offset3))
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
	if(input[i]>(2937+offset3))
{
	if(input[i]==(2939+offset3))
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
	if(input[i]==(2937+offset3))
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
	if(input[i]>(2931+offset3))
{
	if(input[i]>(2933+offset3))
{
	if(input[i]==(2935+offset3))
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
	if(input[i]==(2933+offset3))
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
	if(input[i]>(2929+offset3))
{
	if(input[i]==(2931+offset3))
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
	if(input[i]==(2929+offset3))
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
	if(input[i]>(2919+offset3))
{
	if(input[i]>(2923+offset3))
{
	if(input[i]>(2925+offset3))
{
	if(input[i]==(2927+offset3))
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
	if(input[i]==(2925+offset3))
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
	if(input[i]>(2921+offset3))
{
	if(input[i]==(2923+offset3))
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
	if(input[i]==(2921+offset3))
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
	if(input[i]>(2915+offset3))
{
	if(input[i]>(2917+offset3))
{
	if(input[i]==(2919+offset3))
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
	if(input[i]==(2917+offset3))
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
	if(input[i]>(2913+offset3))
{
	if(input[i]==(2915+offset3))
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
	if(input[i]==(2913+offset3))
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
	if(input[i]>(2895+offset3))
{
	if(input[i]>(2903+offset3))
{
	if(input[i]>(2907+offset3))
{
	if(input[i]>(2909+offset3))
{
	if(input[i]==(2911+offset3))
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
	if(input[i]==(2909+offset3))
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
	if(input[i]>(2905+offset3))
{
	if(input[i]==(2907+offset3))
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
	if(input[i]==(2905+offset3))
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
	if(input[i]>(2899+offset3))
{
	if(input[i]>(2901+offset3))
{
	if(input[i]==(2903+offset3))
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
	if(input[i]==(2901+offset3))
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
	if(input[i]>(2897+offset3))
{
	if(input[i]==(2899+offset3))
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
	if(input[i]==(2897+offset3))
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
	if(input[i]>(2887+offset3))
{
	if(input[i]>(2891+offset3))
{
	if(input[i]>(2893+offset3))
{
	if(input[i]==(2895+offset3))
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
	if(input[i]==(2893+offset3))
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
	if(input[i]>(2889+offset3))
{
	if(input[i]==(2891+offset3))
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
	if(input[i]==(2889+offset3))
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
	if(input[i]>(2883+offset3))
{
	if(input[i]>(2885+offset3))
{
	if(input[i]==(2887+offset3))
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
	if(input[i]==(2885+offset3))
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
	if(input[i]>(2881+offset3))
{
	if(input[i]==(2883+offset3))
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
	if(input[i]==(2881+offset3))
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
	if(input[i]>(2847+offset3))
{
	if(input[i]>(2863+offset3))
{
	if(input[i]>(2871+offset3))
{
	if(input[i]>(2875+offset3))
{
	if(input[i]>(2877+offset3))
{
	if(input[i]==(2879+offset3))
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
	if(input[i]==(2877+offset3))
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
	if(input[i]>(2873+offset3))
{
	if(input[i]==(2875+offset3))
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
	if(input[i]==(2873+offset3))
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
	if(input[i]>(2867+offset3))
{
	if(input[i]>(2869+offset3))
{
	if(input[i]==(2871+offset3))
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
	if(input[i]==(2869+offset3))
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
	if(input[i]>(2865+offset3))
{
	if(input[i]==(2867+offset3))
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
	if(input[i]==(2865+offset3))
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
	if(input[i]>(2855+offset3))
{
	if(input[i]>(2859+offset3))
{
	if(input[i]>(2861+offset3))
{
	if(input[i]==(2863+offset3))
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
	if(input[i]==(2861+offset3))
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
	if(input[i]>(2857+offset3))
{
	if(input[i]==(2859+offset3))
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
	if(input[i]==(2857+offset3))
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
	if(input[i]>(2851+offset3))
{
	if(input[i]>(2853+offset3))
{
	if(input[i]==(2855+offset3))
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
	if(input[i]==(2853+offset3))
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
	if(input[i]>(2849+offset3))
{
	if(input[i]==(2851+offset3))
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
	if(input[i]==(2849+offset3))
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
	if(input[i]>(2831+offset3))
{
	if(input[i]>(2839+offset3))
{
	if(input[i]>(2843+offset3))
{
	if(input[i]>(2845+offset3))
{
	if(input[i]==(2847+offset3))
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
	if(input[i]==(2845+offset3))
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
	if(input[i]>(2841+offset3))
{
	if(input[i]==(2843+offset3))
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
	if(input[i]==(2841+offset3))
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
	if(input[i]>(2835+offset3))
{
	if(input[i]>(2837+offset3))
{
	if(input[i]==(2839+offset3))
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
	if(input[i]==(2837+offset3))
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
	if(input[i]>(2833+offset3))
{
	if(input[i]==(2835+offset3))
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
	if(input[i]==(2833+offset3))
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
	if(input[i]>(2823+offset3))
{
	if(input[i]>(2827+offset3))
{
	if(input[i]>(2829+offset3))
{
	if(input[i]==(2831+offset3))
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
	if(input[i]==(2829+offset3))
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
	if(input[i]>(2825+offset3))
{
	if(input[i]==(2827+offset3))
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
	if(input[i]==(2825+offset3))
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
	if(input[i]>(2819+offset3))
{
	if(input[i]>(2821+offset3))
{
	if(input[i]==(2823+offset3))
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
	if(input[i]==(2821+offset3))
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
	if(input[i]>(2817+offset3))
{
	if(input[i]==(2819+offset3))
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
	if(input[i]==(2817+offset3))
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
	if(input[i]>(2687+offset3))
{
	if(input[i]>(2751+offset3))
{
	if(input[i]>(2783+offset3))
{
	if(input[i]>(2799+offset3))
{
	if(input[i]>(2807+offset3))
{
	if(input[i]>(2811+offset3))
{
	if(input[i]>(2813+offset3))
{
	if(input[i]==(2815+offset3))
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
	if(input[i]==(2813+offset3))
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
	if(input[i]>(2809+offset3))
{
	if(input[i]==(2811+offset3))
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
	if(input[i]==(2809+offset3))
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
	if(input[i]>(2803+offset3))
{
	if(input[i]>(2805+offset3))
{
	if(input[i]==(2807+offset3))
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
	if(input[i]==(2805+offset3))
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
	if(input[i]>(2801+offset3))
{
	if(input[i]==(2803+offset3))
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
	if(input[i]==(2801+offset3))
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
	if(input[i]>(2791+offset3))
{
	if(input[i]>(2795+offset3))
{
	if(input[i]>(2797+offset3))
{
	if(input[i]==(2799+offset3))
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
	if(input[i]==(2797+offset3))
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
	if(input[i]>(2793+offset3))
{
	if(input[i]==(2795+offset3))
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
	if(input[i]==(2793+offset3))
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
	if(input[i]>(2787+offset3))
{
	if(input[i]>(2789+offset3))
{
	if(input[i]==(2791+offset3))
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
	if(input[i]==(2789+offset3))
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
	if(input[i]>(2785+offset3))
{
	if(input[i]==(2787+offset3))
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
	if(input[i]==(2785+offset3))
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
	if(input[i]>(2767+offset3))
{
	if(input[i]>(2775+offset3))
{
	if(input[i]>(2779+offset3))
{
	if(input[i]>(2781+offset3))
{
	if(input[i]==(2783+offset3))
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
	if(input[i]==(2781+offset3))
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
	if(input[i]>(2777+offset3))
{
	if(input[i]==(2779+offset3))
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
	if(input[i]==(2777+offset3))
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
	if(input[i]>(2771+offset3))
{
	if(input[i]>(2773+offset3))
{
	if(input[i]==(2775+offset3))
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
	if(input[i]==(2773+offset3))
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
	if(input[i]>(2769+offset3))
{
	if(input[i]==(2771+offset3))
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
	if(input[i]==(2769+offset3))
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
	if(input[i]>(2759+offset3))
{
	if(input[i]>(2763+offset3))
{
	if(input[i]>(2765+offset3))
{
	if(input[i]==(2767+offset3))
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
	if(input[i]==(2765+offset3))
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
	if(input[i]>(2761+offset3))
{
	if(input[i]==(2763+offset3))
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
	if(input[i]==(2761+offset3))
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
	if(input[i]>(2755+offset3))
{
	if(input[i]>(2757+offset3))
{
	if(input[i]==(2759+offset3))
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
	if(input[i]==(2757+offset3))
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
	if(input[i]>(2753+offset3))
{
	if(input[i]==(2755+offset3))
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
	if(input[i]==(2753+offset3))
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
	if(input[i]>(2719+offset3))
{
	if(input[i]>(2735+offset3))
{
	if(input[i]>(2743+offset3))
{
	if(input[i]>(2747+offset3))
{
	if(input[i]>(2749+offset3))
{
	if(input[i]==(2751+offset3))
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
	if(input[i]==(2749+offset3))
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
	if(input[i]>(2745+offset3))
{
	if(input[i]==(2747+offset3))
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
	if(input[i]==(2745+offset3))
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
	if(input[i]>(2739+offset3))
{
	if(input[i]>(2741+offset3))
{
	if(input[i]==(2743+offset3))
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
	if(input[i]==(2741+offset3))
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
	if(input[i]>(2737+offset3))
{
	if(input[i]==(2739+offset3))
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
	if(input[i]==(2737+offset3))
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
	if(input[i]>(2727+offset3))
{
	if(input[i]>(2731+offset3))
{
	if(input[i]>(2733+offset3))
{
	if(input[i]==(2735+offset3))
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
	if(input[i]==(2733+offset3))
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
	if(input[i]>(2729+offset3))
{
	if(input[i]==(2731+offset3))
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
	if(input[i]==(2729+offset3))
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
	if(input[i]>(2723+offset3))
{
	if(input[i]>(2725+offset3))
{
	if(input[i]==(2727+offset3))
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
	if(input[i]==(2725+offset3))
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
	if(input[i]>(2721+offset3))
{
	if(input[i]==(2723+offset3))
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
	if(input[i]==(2721+offset3))
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
	if(input[i]>(2703+offset3))
{
	if(input[i]>(2711+offset3))
{
	if(input[i]>(2715+offset3))
{
	if(input[i]>(2717+offset3))
{
	if(input[i]==(2719+offset3))
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
	if(input[i]==(2717+offset3))
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
	if(input[i]>(2713+offset3))
{
	if(input[i]==(2715+offset3))
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
	if(input[i]==(2713+offset3))
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
	if(input[i]>(2707+offset3))
{
	if(input[i]>(2709+offset3))
{
	if(input[i]==(2711+offset3))
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
	if(input[i]==(2709+offset3))
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
	if(input[i]>(2705+offset3))
{
	if(input[i]==(2707+offset3))
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
	if(input[i]==(2705+offset3))
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
	if(input[i]>(2695+offset3))
{
	if(input[i]>(2699+offset3))
{
	if(input[i]>(2701+offset3))
{
	if(input[i]==(2703+offset3))
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
	if(input[i]==(2701+offset3))
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
	if(input[i]>(2697+offset3))
{
	if(input[i]==(2699+offset3))
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
	if(input[i]==(2697+offset3))
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
	if(input[i]>(2691+offset3))
{
	if(input[i]>(2693+offset3))
{
	if(input[i]==(2695+offset3))
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
	if(input[i]==(2693+offset3))
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
	if(input[i]>(2689+offset3))
{
	if(input[i]==(2691+offset3))
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
	if(input[i]==(2689+offset3))
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
	if(input[i]>(2623+offset3))
{
	if(input[i]>(2655+offset3))
{
	if(input[i]>(2671+offset3))
{
	if(input[i]>(2679+offset3))
{
	if(input[i]>(2683+offset3))
{
	if(input[i]>(2685+offset3))
{
	if(input[i]==(2687+offset3))
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
	if(input[i]==(2685+offset3))
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
	if(input[i]>(2681+offset3))
{
	if(input[i]==(2683+offset3))
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
	if(input[i]==(2681+offset3))
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
	if(input[i]>(2675+offset3))
{
	if(input[i]>(2677+offset3))
{
	if(input[i]==(2679+offset3))
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
	if(input[i]==(2677+offset3))
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
	if(input[i]>(2673+offset3))
{
	if(input[i]==(2675+offset3))
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
	if(input[i]==(2673+offset3))
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
	if(input[i]>(2663+offset3))
{
	if(input[i]>(2667+offset3))
{
	if(input[i]>(2669+offset3))
{
	if(input[i]==(2671+offset3))
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
	if(input[i]==(2669+offset3))
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
	if(input[i]>(2665+offset3))
{
	if(input[i]==(2667+offset3))
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
	if(input[i]==(2665+offset3))
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
	if(input[i]>(2659+offset3))
{
	if(input[i]>(2661+offset3))
{
	if(input[i]==(2663+offset3))
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
	if(input[i]==(2661+offset3))
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
	if(input[i]>(2657+offset3))
{
	if(input[i]==(2659+offset3))
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
	if(input[i]==(2657+offset3))
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
	if(input[i]>(2639+offset3))
{
	if(input[i]>(2647+offset3))
{
	if(input[i]>(2651+offset3))
{
	if(input[i]>(2653+offset3))
{
	if(input[i]==(2655+offset3))
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
	if(input[i]==(2653+offset3))
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
	if(input[i]>(2649+offset3))
{
	if(input[i]==(2651+offset3))
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
	if(input[i]==(2649+offset3))
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
	if(input[i]>(2643+offset3))
{
	if(input[i]>(2645+offset3))
{
	if(input[i]==(2647+offset3))
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
	if(input[i]==(2645+offset3))
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
	if(input[i]>(2641+offset3))
{
	if(input[i]==(2643+offset3))
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
	if(input[i]==(2641+offset3))
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
	if(input[i]>(2631+offset3))
{
	if(input[i]>(2635+offset3))
{
	if(input[i]>(2637+offset3))
{
	if(input[i]==(2639+offset3))
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
	if(input[i]==(2637+offset3))
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
	if(input[i]>(2633+offset3))
{
	if(input[i]==(2635+offset3))
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
	if(input[i]==(2633+offset3))
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
	if(input[i]>(2627+offset3))
{
	if(input[i]>(2629+offset3))
{
	if(input[i]==(2631+offset3))
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
	if(input[i]==(2629+offset3))
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
	if(input[i]>(2625+offset3))
{
	if(input[i]==(2627+offset3))
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
	if(input[i]==(2625+offset3))
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
	if(input[i]>(2591+offset3))
{
	if(input[i]>(2607+offset3))
{
	if(input[i]>(2615+offset3))
{
	if(input[i]>(2619+offset3))
{
	if(input[i]>(2621+offset3))
{
	if(input[i]==(2623+offset3))
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
	if(input[i]==(2621+offset3))
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
	if(input[i]>(2617+offset3))
{
	if(input[i]==(2619+offset3))
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
	if(input[i]==(2617+offset3))
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
	if(input[i]>(2611+offset3))
{
	if(input[i]>(2613+offset3))
{
	if(input[i]==(2615+offset3))
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
	if(input[i]==(2613+offset3))
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
	if(input[i]>(2609+offset3))
{
	if(input[i]==(2611+offset3))
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
	if(input[i]==(2609+offset3))
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
	if(input[i]>(2599+offset3))
{
	if(input[i]>(2603+offset3))
{
	if(input[i]>(2605+offset3))
{
	if(input[i]==(2607+offset3))
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
	if(input[i]==(2605+offset3))
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
	if(input[i]>(2601+offset3))
{
	if(input[i]==(2603+offset3))
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
	if(input[i]==(2601+offset3))
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
	if(input[i]>(2595+offset3))
{
	if(input[i]>(2597+offset3))
{
	if(input[i]==(2599+offset3))
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
	if(input[i]==(2597+offset3))
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
	if(input[i]>(2593+offset3))
{
	if(input[i]==(2595+offset3))
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
	if(input[i]==(2593+offset3))
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
	if(input[i]>(2575+offset3))
{
	if(input[i]>(2583+offset3))
{
	if(input[i]>(2587+offset3))
{
	if(input[i]>(2589+offset3))
{
	if(input[i]==(2591+offset3))
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
	if(input[i]==(2589+offset3))
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
	if(input[i]>(2585+offset3))
{
	if(input[i]==(2587+offset3))
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
	if(input[i]==(2585+offset3))
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
	if(input[i]>(2579+offset3))
{
	if(input[i]>(2581+offset3))
{
	if(input[i]==(2583+offset3))
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
	if(input[i]==(2581+offset3))
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
	if(input[i]>(2577+offset3))
{
	if(input[i]==(2579+offset3))
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
	if(input[i]==(2577+offset3))
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
	if(input[i]>(2567+offset3))
{
	if(input[i]>(2571+offset3))
{
	if(input[i]>(2573+offset3))
{
	if(input[i]==(2575+offset3))
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
	if(input[i]==(2573+offset3))
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
	if(input[i]>(2569+offset3))
{
	if(input[i]==(2571+offset3))
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
	if(input[i]==(2569+offset3))
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
	if(input[i]>(2563+offset3))
{
	if(input[i]>(2565+offset3))
{
	if(input[i]==(2567+offset3))
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
	if(input[i]==(2565+offset3))
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
	if(input[i]>(2561+offset3))
{
	if(input[i]==(2563+offset3))
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
	if(input[i]==(2561+offset3))
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
	if(input[i]>(2303+offset3))
{
	if(input[i]>(2431+offset3))
{
	if(input[i]>(2495+offset3))
{
	if(input[i]>(2527+offset3))
{
	if(input[i]>(2543+offset3))
{
	if(input[i]>(2551+offset3))
{
	if(input[i]>(2555+offset3))
{
	if(input[i]>(2557+offset3))
{
	if(input[i]==(2559+offset3))
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
	if(input[i]==(2557+offset3))
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
	if(input[i]>(2553+offset3))
{
	if(input[i]==(2555+offset3))
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
	if(input[i]==(2553+offset3))
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
	if(input[i]>(2547+offset3))
{
	if(input[i]>(2549+offset3))
{
	if(input[i]==(2551+offset3))
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
	if(input[i]==(2549+offset3))
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
	if(input[i]>(2545+offset3))
{
	if(input[i]==(2547+offset3))
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
	if(input[i]==(2545+offset3))
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
	if(input[i]>(2535+offset3))
{
	if(input[i]>(2539+offset3))
{
	if(input[i]>(2541+offset3))
{
	if(input[i]==(2543+offset3))
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
	if(input[i]==(2541+offset3))
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
	if(input[i]>(2537+offset3))
{
	if(input[i]==(2539+offset3))
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
	if(input[i]==(2537+offset3))
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
	if(input[i]>(2531+offset3))
{
	if(input[i]>(2533+offset3))
{
	if(input[i]==(2535+offset3))
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
	if(input[i]==(2533+offset3))
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
	if(input[i]>(2529+offset3))
{
	if(input[i]==(2531+offset3))
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
	if(input[i]==(2529+offset3))
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
	if(input[i]>(2511+offset3))
{
	if(input[i]>(2519+offset3))
{
	if(input[i]>(2523+offset3))
{
	if(input[i]>(2525+offset3))
{
	if(input[i]==(2527+offset3))
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
	if(input[i]==(2525+offset3))
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
	if(input[i]>(2521+offset3))
{
	if(input[i]==(2523+offset3))
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
	if(input[i]==(2521+offset3))
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
	if(input[i]>(2515+offset3))
{
	if(input[i]>(2517+offset3))
{
	if(input[i]==(2519+offset3))
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
	if(input[i]==(2517+offset3))
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
	if(input[i]>(2513+offset3))
{
	if(input[i]==(2515+offset3))
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
	if(input[i]==(2513+offset3))
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
	if(input[i]>(2503+offset3))
{
	if(input[i]>(2507+offset3))
{
	if(input[i]>(2509+offset3))
{
	if(input[i]==(2511+offset3))
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
	if(input[i]==(2509+offset3))
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
	if(input[i]>(2505+offset3))
{
	if(input[i]==(2507+offset3))
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
	if(input[i]==(2505+offset3))
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
	if(input[i]>(2499+offset3))
{
	if(input[i]>(2501+offset3))
{
	if(input[i]==(2503+offset3))
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
	if(input[i]==(2501+offset3))
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
	if(input[i]>(2497+offset3))
{
	if(input[i]==(2499+offset3))
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
	if(input[i]==(2497+offset3))
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
	if(input[i]>(2463+offset3))
{
	if(input[i]>(2479+offset3))
{
	if(input[i]>(2487+offset3))
{
	if(input[i]>(2491+offset3))
{
	if(input[i]>(2493+offset3))
{
	if(input[i]==(2495+offset3))
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
	if(input[i]==(2493+offset3))
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
	if(input[i]>(2489+offset3))
{
	if(input[i]==(2491+offset3))
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
	if(input[i]==(2489+offset3))
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
	if(input[i]>(2483+offset3))
{
	if(input[i]>(2485+offset3))
{
	if(input[i]==(2487+offset3))
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
	if(input[i]==(2485+offset3))
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
	if(input[i]>(2481+offset3))
{
	if(input[i]==(2483+offset3))
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
	if(input[i]==(2481+offset3))
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
	if(input[i]>(2471+offset3))
{
	if(input[i]>(2475+offset3))
{
	if(input[i]>(2477+offset3))
{
	if(input[i]==(2479+offset3))
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
	if(input[i]==(2477+offset3))
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
	if(input[i]>(2473+offset3))
{
	if(input[i]==(2475+offset3))
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
	if(input[i]==(2473+offset3))
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
	if(input[i]>(2467+offset3))
{
	if(input[i]>(2469+offset3))
{
	if(input[i]==(2471+offset3))
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
	if(input[i]==(2469+offset3))
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
	if(input[i]>(2465+offset3))
{
	if(input[i]==(2467+offset3))
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
	if(input[i]==(2465+offset3))
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
	if(input[i]>(2447+offset3))
{
	if(input[i]>(2455+offset3))
{
	if(input[i]>(2459+offset3))
{
	if(input[i]>(2461+offset3))
{
	if(input[i]==(2463+offset3))
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
	if(input[i]==(2461+offset3))
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
	if(input[i]>(2457+offset3))
{
	if(input[i]==(2459+offset3))
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
	if(input[i]==(2457+offset3))
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
	if(input[i]>(2451+offset3))
{
	if(input[i]>(2453+offset3))
{
	if(input[i]==(2455+offset3))
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
	if(input[i]==(2453+offset3))
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
	if(input[i]>(2449+offset3))
{
	if(input[i]==(2451+offset3))
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
	if(input[i]==(2449+offset3))
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
	if(input[i]>(2439+offset3))
{
	if(input[i]>(2443+offset3))
{
	if(input[i]>(2445+offset3))
{
	if(input[i]==(2447+offset3))
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
	if(input[i]==(2445+offset3))
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
	if(input[i]>(2441+offset3))
{
	if(input[i]==(2443+offset3))
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
	if(input[i]==(2441+offset3))
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
	if(input[i]>(2435+offset3))
{
	if(input[i]>(2437+offset3))
{
	if(input[i]==(2439+offset3))
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
	if(input[i]==(2437+offset3))
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
	if(input[i]>(2433+offset3))
{
	if(input[i]==(2435+offset3))
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
	if(input[i]==(2433+offset3))
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
	if(input[i]>(2367+offset3))
{
	if(input[i]>(2399+offset3))
{
	if(input[i]>(2415+offset3))
{
	if(input[i]>(2423+offset3))
{
	if(input[i]>(2427+offset3))
{
	if(input[i]>(2429+offset3))
{
	if(input[i]==(2431+offset3))
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
	if(input[i]==(2429+offset3))
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
	if(input[i]>(2425+offset3))
{
	if(input[i]==(2427+offset3))
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
	if(input[i]==(2425+offset3))
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
	if(input[i]>(2419+offset3))
{
	if(input[i]>(2421+offset3))
{
	if(input[i]==(2423+offset3))
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
	if(input[i]==(2421+offset3))
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
	if(input[i]>(2417+offset3))
{
	if(input[i]==(2419+offset3))
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
	if(input[i]==(2417+offset3))
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
	if(input[i]>(2407+offset3))
{
	if(input[i]>(2411+offset3))
{
	if(input[i]>(2413+offset3))
{
	if(input[i]==(2415+offset3))
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
	if(input[i]==(2413+offset3))
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
	if(input[i]>(2409+offset3))
{
	if(input[i]==(2411+offset3))
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
	if(input[i]==(2409+offset3))
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
	if(input[i]>(2403+offset3))
{
	if(input[i]>(2405+offset3))
{
	if(input[i]==(2407+offset3))
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
	if(input[i]==(2405+offset3))
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
	if(input[i]>(2401+offset3))
{
	if(input[i]==(2403+offset3))
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
	if(input[i]==(2401+offset3))
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
	if(input[i]>(2383+offset3))
{
	if(input[i]>(2391+offset3))
{
	if(input[i]>(2395+offset3))
{
	if(input[i]>(2397+offset3))
{
	if(input[i]==(2399+offset3))
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
	if(input[i]==(2397+offset3))
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
	if(input[i]>(2393+offset3))
{
	if(input[i]==(2395+offset3))
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
	if(input[i]==(2393+offset3))
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
	if(input[i]>(2387+offset3))
{
	if(input[i]>(2389+offset3))
{
	if(input[i]==(2391+offset3))
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
	if(input[i]==(2389+offset3))
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
	if(input[i]>(2385+offset3))
{
	if(input[i]==(2387+offset3))
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
	if(input[i]==(2385+offset3))
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
	if(input[i]>(2375+offset3))
{
	if(input[i]>(2379+offset3))
{
	if(input[i]>(2381+offset3))
{
	if(input[i]==(2383+offset3))
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
	if(input[i]==(2381+offset3))
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
	if(input[i]>(2377+offset3))
{
	if(input[i]==(2379+offset3))
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
	if(input[i]==(2377+offset3))
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
	if(input[i]>(2371+offset3))
{
	if(input[i]>(2373+offset3))
{
	if(input[i]==(2375+offset3))
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
	if(input[i]==(2373+offset3))
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
	if(input[i]>(2369+offset3))
{
	if(input[i]==(2371+offset3))
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
	if(input[i]==(2369+offset3))
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
	if(input[i]>(2335+offset3))
{
	if(input[i]>(2351+offset3))
{
	if(input[i]>(2359+offset3))
{
	if(input[i]>(2363+offset3))
{
	if(input[i]>(2365+offset3))
{
	if(input[i]==(2367+offset3))
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
	if(input[i]==(2365+offset3))
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
	if(input[i]>(2361+offset3))
{
	if(input[i]==(2363+offset3))
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
	if(input[i]==(2361+offset3))
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
	if(input[i]>(2355+offset3))
{
	if(input[i]>(2357+offset3))
{
	if(input[i]==(2359+offset3))
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
	if(input[i]==(2357+offset3))
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
	if(input[i]>(2353+offset3))
{
	if(input[i]==(2355+offset3))
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
	if(input[i]==(2353+offset3))
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
	if(input[i]>(2343+offset3))
{
	if(input[i]>(2347+offset3))
{
	if(input[i]>(2349+offset3))
{
	if(input[i]==(2351+offset3))
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
	if(input[i]==(2349+offset3))
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
	if(input[i]>(2345+offset3))
{
	if(input[i]==(2347+offset3))
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
	if(input[i]==(2345+offset3))
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
	if(input[i]>(2339+offset3))
{
	if(input[i]>(2341+offset3))
{
	if(input[i]==(2343+offset3))
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
	if(input[i]==(2341+offset3))
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
	if(input[i]>(2337+offset3))
{
	if(input[i]==(2339+offset3))
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
	if(input[i]==(2337+offset3))
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
	if(input[i]>(2319+offset3))
{
	if(input[i]>(2327+offset3))
{
	if(input[i]>(2331+offset3))
{
	if(input[i]>(2333+offset3))
{
	if(input[i]==(2335+offset3))
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
	if(input[i]==(2333+offset3))
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
	if(input[i]>(2329+offset3))
{
	if(input[i]==(2331+offset3))
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
	if(input[i]==(2329+offset3))
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
	if(input[i]>(2323+offset3))
{
	if(input[i]>(2325+offset3))
{
	if(input[i]==(2327+offset3))
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
	if(input[i]==(2325+offset3))
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
	if(input[i]>(2321+offset3))
{
	if(input[i]==(2323+offset3))
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
	if(input[i]==(2321+offset3))
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
	if(input[i]>(2311+offset3))
{
	if(input[i]>(2315+offset3))
{
	if(input[i]>(2317+offset3))
{
	if(input[i]==(2319+offset3))
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
	if(input[i]==(2317+offset3))
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
	if(input[i]>(2313+offset3))
{
	if(input[i]==(2315+offset3))
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
	if(input[i]==(2313+offset3))
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
	if(input[i]>(2307+offset3))
{
	if(input[i]>(2309+offset3))
{
	if(input[i]==(2311+offset3))
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
	if(input[i]==(2309+offset3))
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
	if(input[i]>(2305+offset3))
{
	if(input[i]==(2307+offset3))
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
	if(input[i]==(2305+offset3))
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
	if(input[i]>(2175+offset3))
{
	if(input[i]>(2239+offset3))
{
	if(input[i]>(2271+offset3))
{
	if(input[i]>(2287+offset3))
{
	if(input[i]>(2295+offset3))
{
	if(input[i]>(2299+offset3))
{
	if(input[i]>(2301+offset3))
{
	if(input[i]==(2303+offset3))
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
	if(input[i]==(2301+offset3))
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
	if(input[i]>(2297+offset3))
{
	if(input[i]==(2299+offset3))
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
	if(input[i]==(2297+offset3))
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
	if(input[i]>(2291+offset3))
{
	if(input[i]>(2293+offset3))
{
	if(input[i]==(2295+offset3))
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
	if(input[i]==(2293+offset3))
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
	if(input[i]>(2289+offset3))
{
	if(input[i]==(2291+offset3))
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
	if(input[i]==(2289+offset3))
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
	if(input[i]>(2279+offset3))
{
	if(input[i]>(2283+offset3))
{
	if(input[i]>(2285+offset3))
{
	if(input[i]==(2287+offset3))
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
	if(input[i]==(2285+offset3))
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
	if(input[i]>(2281+offset3))
{
	if(input[i]==(2283+offset3))
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
	if(input[i]==(2281+offset3))
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
	if(input[i]>(2275+offset3))
{
	if(input[i]>(2277+offset3))
{
	if(input[i]==(2279+offset3))
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
	if(input[i]==(2277+offset3))
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
	if(input[i]>(2273+offset3))
{
	if(input[i]==(2275+offset3))
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
	if(input[i]==(2273+offset3))
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
	if(input[i]>(2255+offset3))
{
	if(input[i]>(2263+offset3))
{
	if(input[i]>(2267+offset3))
{
	if(input[i]>(2269+offset3))
{
	if(input[i]==(2271+offset3))
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
	if(input[i]==(2269+offset3))
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
	if(input[i]>(2265+offset3))
{
	if(input[i]==(2267+offset3))
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
	if(input[i]==(2265+offset3))
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
	if(input[i]>(2259+offset3))
{
	if(input[i]>(2261+offset3))
{
	if(input[i]==(2263+offset3))
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
	if(input[i]==(2261+offset3))
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
	if(input[i]>(2257+offset3))
{
	if(input[i]==(2259+offset3))
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
	if(input[i]==(2257+offset3))
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
	if(input[i]>(2247+offset3))
{
	if(input[i]>(2251+offset3))
{
	if(input[i]>(2253+offset3))
{
	if(input[i]==(2255+offset3))
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
	if(input[i]==(2253+offset3))
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
	if(input[i]>(2249+offset3))
{
	if(input[i]==(2251+offset3))
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
	if(input[i]==(2249+offset3))
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
	if(input[i]>(2243+offset3))
{
	if(input[i]>(2245+offset3))
{
	if(input[i]==(2247+offset3))
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
	if(input[i]==(2245+offset3))
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
	if(input[i]>(2241+offset3))
{
	if(input[i]==(2243+offset3))
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
	if(input[i]==(2241+offset3))
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
	if(input[i]>(2207+offset3))
{
	if(input[i]>(2223+offset3))
{
	if(input[i]>(2231+offset3))
{
	if(input[i]>(2235+offset3))
{
	if(input[i]>(2237+offset3))
{
	if(input[i]==(2239+offset3))
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
	if(input[i]==(2237+offset3))
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
	if(input[i]>(2233+offset3))
{
	if(input[i]==(2235+offset3))
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
	if(input[i]==(2233+offset3))
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
	if(input[i]>(2227+offset3))
{
	if(input[i]>(2229+offset3))
{
	if(input[i]==(2231+offset3))
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
	if(input[i]==(2229+offset3))
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
	if(input[i]>(2225+offset3))
{
	if(input[i]==(2227+offset3))
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
	if(input[i]==(2225+offset3))
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
	if(input[i]>(2215+offset3))
{
	if(input[i]>(2219+offset3))
{
	if(input[i]>(2221+offset3))
{
	if(input[i]==(2223+offset3))
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
	if(input[i]==(2221+offset3))
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
	if(input[i]>(2217+offset3))
{
	if(input[i]==(2219+offset3))
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
	if(input[i]==(2217+offset3))
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
	if(input[i]>(2211+offset3))
{
	if(input[i]>(2213+offset3))
{
	if(input[i]==(2215+offset3))
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
	if(input[i]==(2213+offset3))
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
	if(input[i]>(2209+offset3))
{
	if(input[i]==(2211+offset3))
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
	if(input[i]==(2209+offset3))
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
	if(input[i]>(2191+offset3))
{
	if(input[i]>(2199+offset3))
{
	if(input[i]>(2203+offset3))
{
	if(input[i]>(2205+offset3))
{
	if(input[i]==(2207+offset3))
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
	if(input[i]==(2205+offset3))
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
	if(input[i]>(2201+offset3))
{
	if(input[i]==(2203+offset3))
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
	if(input[i]==(2201+offset3))
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
	if(input[i]>(2195+offset3))
{
	if(input[i]>(2197+offset3))
{
	if(input[i]==(2199+offset3))
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
	if(input[i]==(2197+offset3))
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
	if(input[i]>(2193+offset3))
{
	if(input[i]==(2195+offset3))
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
	if(input[i]==(2193+offset3))
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
	if(input[i]>(2183+offset3))
{
	if(input[i]>(2187+offset3))
{
	if(input[i]>(2189+offset3))
{
	if(input[i]==(2191+offset3))
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
	if(input[i]==(2189+offset3))
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
	if(input[i]>(2185+offset3))
{
	if(input[i]==(2187+offset3))
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
	if(input[i]==(2185+offset3))
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
	if(input[i]>(2179+offset3))
{
	if(input[i]>(2181+offset3))
{
	if(input[i]==(2183+offset3))
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
	if(input[i]==(2181+offset3))
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
	if(input[i]>(2177+offset3))
{
	if(input[i]==(2179+offset3))
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
	if(input[i]==(2177+offset3))
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
	if(input[i]>(2111+offset3))
{
	if(input[i]>(2143+offset3))
{
	if(input[i]>(2159+offset3))
{
	if(input[i]>(2167+offset3))
{
	if(input[i]>(2171+offset3))
{
	if(input[i]>(2173+offset3))
{
	if(input[i]==(2175+offset3))
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
	if(input[i]==(2173+offset3))
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
	if(input[i]>(2169+offset3))
{
	if(input[i]==(2171+offset3))
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
	if(input[i]==(2169+offset3))
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
	if(input[i]>(2163+offset3))
{
	if(input[i]>(2165+offset3))
{
	if(input[i]==(2167+offset3))
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
	if(input[i]==(2165+offset3))
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
	if(input[i]>(2161+offset3))
{
	if(input[i]==(2163+offset3))
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
	if(input[i]==(2161+offset3))
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
	if(input[i]>(2151+offset3))
{
	if(input[i]>(2155+offset3))
{
	if(input[i]>(2157+offset3))
{
	if(input[i]==(2159+offset3))
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
	if(input[i]==(2157+offset3))
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
	if(input[i]>(2153+offset3))
{
	if(input[i]==(2155+offset3))
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
	if(input[i]==(2153+offset3))
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
	if(input[i]>(2147+offset3))
{
	if(input[i]>(2149+offset3))
{
	if(input[i]==(2151+offset3))
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
	if(input[i]==(2149+offset3))
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
	if(input[i]>(2145+offset3))
{
	if(input[i]==(2147+offset3))
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
	if(input[i]==(2145+offset3))
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
	if(input[i]>(2127+offset3))
{
	if(input[i]>(2135+offset3))
{
	if(input[i]>(2139+offset3))
{
	if(input[i]>(2141+offset3))
{
	if(input[i]==(2143+offset3))
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
	if(input[i]==(2141+offset3))
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
	if(input[i]>(2137+offset3))
{
	if(input[i]==(2139+offset3))
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
	if(input[i]==(2137+offset3))
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
	if(input[i]>(2131+offset3))
{
	if(input[i]>(2133+offset3))
{
	if(input[i]==(2135+offset3))
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
	if(input[i]==(2133+offset3))
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
	if(input[i]>(2129+offset3))
{
	if(input[i]==(2131+offset3))
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
	if(input[i]==(2129+offset3))
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
	if(input[i]>(2119+offset3))
{
	if(input[i]>(2123+offset3))
{
	if(input[i]>(2125+offset3))
{
	if(input[i]==(2127+offset3))
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
	if(input[i]==(2125+offset3))
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
	if(input[i]>(2121+offset3))
{
	if(input[i]==(2123+offset3))
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
	if(input[i]==(2121+offset3))
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
	if(input[i]>(2115+offset3))
{
	if(input[i]>(2117+offset3))
{
	if(input[i]==(2119+offset3))
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
	if(input[i]==(2117+offset3))
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
	if(input[i]>(2113+offset3))
{
	if(input[i]==(2115+offset3))
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
	if(input[i]==(2113+offset3))
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
	if(input[i]>(2079+offset3))
{
	if(input[i]>(2095+offset3))
{
	if(input[i]>(2103+offset3))
{
	if(input[i]>(2107+offset3))
{
	if(input[i]>(2109+offset3))
{
	if(input[i]==(2111+offset3))
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
	if(input[i]==(2109+offset3))
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
	if(input[i]>(2105+offset3))
{
	if(input[i]==(2107+offset3))
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
	if(input[i]==(2105+offset3))
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
	if(input[i]>(2099+offset3))
{
	if(input[i]>(2101+offset3))
{
	if(input[i]==(2103+offset3))
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
	if(input[i]==(2101+offset3))
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
	if(input[i]>(2097+offset3))
{
	if(input[i]==(2099+offset3))
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
	if(input[i]==(2097+offset3))
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
	if(input[i]>(2087+offset3))
{
	if(input[i]>(2091+offset3))
{
	if(input[i]>(2093+offset3))
{
	if(input[i]==(2095+offset3))
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
	if(input[i]==(2093+offset3))
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
	if(input[i]>(2089+offset3))
{
	if(input[i]==(2091+offset3))
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
	if(input[i]==(2089+offset3))
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
	if(input[i]>(2083+offset3))
{
	if(input[i]>(2085+offset3))
{
	if(input[i]==(2087+offset3))
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
	if(input[i]==(2085+offset3))
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
	if(input[i]>(2081+offset3))
{
	if(input[i]==(2083+offset3))
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
	if(input[i]==(2081+offset3))
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
	if(input[i]>(2063+offset3))
{
	if(input[i]>(2071+offset3))
{
	if(input[i]>(2075+offset3))
{
	if(input[i]>(2077+offset3))
{
	if(input[i]==(2079+offset3))
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
	if(input[i]==(2077+offset3))
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
	if(input[i]>(2073+offset3))
{
	if(input[i]==(2075+offset3))
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
	if(input[i]==(2073+offset3))
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
	if(input[i]>(2067+offset3))
{
	if(input[i]>(2069+offset3))
{
	if(input[i]==(2071+offset3))
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
	if(input[i]==(2069+offset3))
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
	if(input[i]>(2065+offset3))
{
	if(input[i]==(2067+offset3))
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
	if(input[i]==(2065+offset3))
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
	if(input[i]>(2055+offset3))
{
	if(input[i]>(2059+offset3))
{
	if(input[i]>(2061+offset3))
{
	if(input[i]==(2063+offset3))
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
	if(input[i]==(2061+offset3))
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
	if(input[i]>(2057+offset3))
{
	if(input[i]==(2059+offset3))
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
	if(input[i]==(2057+offset3))
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
	if(input[i]>(2051+offset3))
{
	if(input[i]>(2053+offset3))
{
	if(input[i]==(2055+offset3))
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
	if(input[i]==(2053+offset3))
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
	if(input[i]>(2049+offset3))
{
	if(input[i]==(2051+offset3))
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
	if(input[i]==(2049+offset3))
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
	if(input[i]>(1023+offset3))
{
	if(input[i]>(1535+offset3))
{
	if(input[i]>(1791+offset3))
{
	if(input[i]>(1919+offset3))
{
	if(input[i]>(1983+offset3))
{
	if(input[i]>(2015+offset3))
{
	if(input[i]>(2031+offset3))
{
	if(input[i]>(2039+offset3))
{
	if(input[i]>(2043+offset3))
{
	if(input[i]>(2045+offset3))
{
	if(input[i]==(2047+offset3))
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
	if(input[i]==(2045+offset3))
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
	if(input[i]>(2041+offset3))
{
	if(input[i]==(2043+offset3))
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
	if(input[i]==(2041+offset3))
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
	if(input[i]>(2035+offset3))
{
	if(input[i]>(2037+offset3))
{
	if(input[i]==(2039+offset3))
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
	if(input[i]==(2037+offset3))
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
	if(input[i]>(2033+offset3))
{
	if(input[i]==(2035+offset3))
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
	if(input[i]==(2033+offset3))
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
	if(input[i]>(2023+offset3))
{
	if(input[i]>(2027+offset3))
{
	if(input[i]>(2029+offset3))
{
	if(input[i]==(2031+offset3))
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
	if(input[i]==(2029+offset3))
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
	if(input[i]>(2025+offset3))
{
	if(input[i]==(2027+offset3))
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
	if(input[i]==(2025+offset3))
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
	if(input[i]>(2019+offset3))
{
	if(input[i]>(2021+offset3))
{
	if(input[i]==(2023+offset3))
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
	if(input[i]==(2021+offset3))
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
	if(input[i]>(2017+offset3))
{
	if(input[i]==(2019+offset3))
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
	if(input[i]==(2017+offset3))
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
	if(input[i]>(1999+offset3))
{
	if(input[i]>(2007+offset3))
{
	if(input[i]>(2011+offset3))
{
	if(input[i]>(2013+offset3))
{
	if(input[i]==(2015+offset3))
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
	if(input[i]==(2013+offset3))
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
	if(input[i]>(2009+offset3))
{
	if(input[i]==(2011+offset3))
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
	if(input[i]==(2009+offset3))
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
	if(input[i]>(2003+offset3))
{
	if(input[i]>(2005+offset3))
{
	if(input[i]==(2007+offset3))
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
	if(input[i]==(2005+offset3))
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
	if(input[i]>(2001+offset3))
{
	if(input[i]==(2003+offset3))
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
	if(input[i]==(2001+offset3))
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
	if(input[i]>(1991+offset3))
{
	if(input[i]>(1995+offset3))
{
	if(input[i]>(1997+offset3))
{
	if(input[i]==(1999+offset3))
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
	if(input[i]==(1997+offset3))
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
	if(input[i]>(1993+offset3))
{
	if(input[i]==(1995+offset3))
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
	if(input[i]==(1993+offset3))
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
	if(input[i]>(1987+offset3))
{
	if(input[i]>(1989+offset3))
{
	if(input[i]==(1991+offset3))
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
	if(input[i]==(1989+offset3))
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
	if(input[i]>(1985+offset3))
{
	if(input[i]==(1987+offset3))
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
	if(input[i]==(1985+offset3))
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
	if(input[i]>(1951+offset3))
{
	if(input[i]>(1967+offset3))
{
	if(input[i]>(1975+offset3))
{
	if(input[i]>(1979+offset3))
{
	if(input[i]>(1981+offset3))
{
	if(input[i]==(1983+offset3))
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
	if(input[i]==(1981+offset3))
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
	if(input[i]>(1977+offset3))
{
	if(input[i]==(1979+offset3))
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
	if(input[i]==(1977+offset3))
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
	if(input[i]>(1971+offset3))
{
	if(input[i]>(1973+offset3))
{
	if(input[i]==(1975+offset3))
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
	if(input[i]==(1973+offset3))
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
	if(input[i]>(1969+offset3))
{
	if(input[i]==(1971+offset3))
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
	if(input[i]==(1969+offset3))
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
	if(input[i]>(1959+offset3))
{
	if(input[i]>(1963+offset3))
{
	if(input[i]>(1965+offset3))
{
	if(input[i]==(1967+offset3))
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
	if(input[i]==(1965+offset3))
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
	if(input[i]>(1961+offset3))
{
	if(input[i]==(1963+offset3))
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
	if(input[i]==(1961+offset3))
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
	if(input[i]>(1955+offset3))
{
	if(input[i]>(1957+offset3))
{
	if(input[i]==(1959+offset3))
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
	if(input[i]==(1957+offset3))
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
	if(input[i]>(1953+offset3))
{
	if(input[i]==(1955+offset3))
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
	if(input[i]==(1953+offset3))
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
	if(input[i]>(1935+offset3))
{
	if(input[i]>(1943+offset3))
{
	if(input[i]>(1947+offset3))
{
	if(input[i]>(1949+offset3))
{
	if(input[i]==(1951+offset3))
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
	if(input[i]==(1949+offset3))
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
	if(input[i]>(1945+offset3))
{
	if(input[i]==(1947+offset3))
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
	if(input[i]==(1945+offset3))
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
	if(input[i]>(1939+offset3))
{
	if(input[i]>(1941+offset3))
{
	if(input[i]==(1943+offset3))
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
	if(input[i]==(1941+offset3))
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
	if(input[i]>(1937+offset3))
{
	if(input[i]==(1939+offset3))
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
	if(input[i]==(1937+offset3))
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
	if(input[i]>(1927+offset3))
{
	if(input[i]>(1931+offset3))
{
	if(input[i]>(1933+offset3))
{
	if(input[i]==(1935+offset3))
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
	if(input[i]==(1933+offset3))
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
	if(input[i]>(1929+offset3))
{
	if(input[i]==(1931+offset3))
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
	if(input[i]==(1929+offset3))
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
	if(input[i]>(1923+offset3))
{
	if(input[i]>(1925+offset3))
{
	if(input[i]==(1927+offset3))
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
	if(input[i]==(1925+offset3))
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
	if(input[i]>(1921+offset3))
{
	if(input[i]==(1923+offset3))
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
	if(input[i]==(1921+offset3))
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
	if(input[i]>(1855+offset3))
{
	if(input[i]>(1887+offset3))
{
	if(input[i]>(1903+offset3))
{
	if(input[i]>(1911+offset3))
{
	if(input[i]>(1915+offset3))
{
	if(input[i]>(1917+offset3))
{
	if(input[i]==(1919+offset3))
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
	if(input[i]==(1917+offset3))
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
	if(input[i]>(1913+offset3))
{
	if(input[i]==(1915+offset3))
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
	if(input[i]==(1913+offset3))
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
	if(input[i]>(1907+offset3))
{
	if(input[i]>(1909+offset3))
{
	if(input[i]==(1911+offset3))
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
	if(input[i]==(1909+offset3))
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
	if(input[i]>(1905+offset3))
{
	if(input[i]==(1907+offset3))
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
	if(input[i]==(1905+offset3))
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
	if(input[i]>(1895+offset3))
{
	if(input[i]>(1899+offset3))
{
	if(input[i]>(1901+offset3))
{
	if(input[i]==(1903+offset3))
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
	if(input[i]==(1901+offset3))
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
	if(input[i]>(1897+offset3))
{
	if(input[i]==(1899+offset3))
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
	if(input[i]==(1897+offset3))
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
	if(input[i]>(1891+offset3))
{
	if(input[i]>(1893+offset3))
{
	if(input[i]==(1895+offset3))
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
	if(input[i]==(1893+offset3))
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
	if(input[i]>(1889+offset3))
{
	if(input[i]==(1891+offset3))
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
	if(input[i]==(1889+offset3))
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
	if(input[i]>(1871+offset3))
{
	if(input[i]>(1879+offset3))
{
	if(input[i]>(1883+offset3))
{
	if(input[i]>(1885+offset3))
{
	if(input[i]==(1887+offset3))
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
	if(input[i]==(1885+offset3))
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
	if(input[i]>(1881+offset3))
{
	if(input[i]==(1883+offset3))
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
	if(input[i]==(1881+offset3))
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
	if(input[i]>(1875+offset3))
{
	if(input[i]>(1877+offset3))
{
	if(input[i]==(1879+offset3))
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
	if(input[i]==(1877+offset3))
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
	if(input[i]>(1873+offset3))
{
	if(input[i]==(1875+offset3))
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
	if(input[i]==(1873+offset3))
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
	if(input[i]>(1863+offset3))
{
	if(input[i]>(1867+offset3))
{
	if(input[i]>(1869+offset3))
{
	if(input[i]==(1871+offset3))
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
	if(input[i]==(1869+offset3))
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
	if(input[i]>(1865+offset3))
{
	if(input[i]==(1867+offset3))
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
	if(input[i]==(1865+offset3))
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
	if(input[i]>(1859+offset3))
{
	if(input[i]>(1861+offset3))
{
	if(input[i]==(1863+offset3))
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
	if(input[i]==(1861+offset3))
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
	if(input[i]>(1857+offset3))
{
	if(input[i]==(1859+offset3))
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
	if(input[i]==(1857+offset3))
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
	if(input[i]>(1823+offset3))
{
	if(input[i]>(1839+offset3))
{
	if(input[i]>(1847+offset3))
{
	if(input[i]>(1851+offset3))
{
	if(input[i]>(1853+offset3))
{
	if(input[i]==(1855+offset3))
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
	if(input[i]==(1853+offset3))
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
	if(input[i]>(1849+offset3))
{
	if(input[i]==(1851+offset3))
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
	if(input[i]==(1849+offset3))
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
	if(input[i]>(1843+offset3))
{
	if(input[i]>(1845+offset3))
{
	if(input[i]==(1847+offset3))
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
	if(input[i]==(1845+offset3))
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
	if(input[i]>(1841+offset3))
{
	if(input[i]==(1843+offset3))
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
	if(input[i]==(1841+offset3))
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
	if(input[i]>(1831+offset3))
{
	if(input[i]>(1835+offset3))
{
	if(input[i]>(1837+offset3))
{
	if(input[i]==(1839+offset3))
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
	if(input[i]==(1837+offset3))
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
	if(input[i]>(1833+offset3))
{
	if(input[i]==(1835+offset3))
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
	if(input[i]==(1833+offset3))
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
	if(input[i]>(1827+offset3))
{
	if(input[i]>(1829+offset3))
{
	if(input[i]==(1831+offset3))
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
	if(input[i]==(1829+offset3))
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
	if(input[i]>(1825+offset3))
{
	if(input[i]==(1827+offset3))
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
	if(input[i]==(1825+offset3))
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
	if(input[i]>(1807+offset3))
{
	if(input[i]>(1815+offset3))
{
	if(input[i]>(1819+offset3))
{
	if(input[i]>(1821+offset3))
{
	if(input[i]==(1823+offset3))
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
	if(input[i]==(1821+offset3))
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
	if(input[i]>(1817+offset3))
{
	if(input[i]==(1819+offset3))
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
	if(input[i]==(1817+offset3))
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
	if(input[i]>(1811+offset3))
{
	if(input[i]>(1813+offset3))
{
	if(input[i]==(1815+offset3))
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
	if(input[i]==(1813+offset3))
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
	if(input[i]>(1809+offset3))
{
	if(input[i]==(1811+offset3))
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
	if(input[i]==(1809+offset3))
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
	if(input[i]>(1799+offset3))
{
	if(input[i]>(1803+offset3))
{
	if(input[i]>(1805+offset3))
{
	if(input[i]==(1807+offset3))
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
	if(input[i]==(1805+offset3))
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
	if(input[i]>(1801+offset3))
{
	if(input[i]==(1803+offset3))
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
	if(input[i]==(1801+offset3))
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
	if(input[i]>(1795+offset3))
{
	if(input[i]>(1797+offset3))
{
	if(input[i]==(1799+offset3))
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
	if(input[i]==(1797+offset3))
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
	if(input[i]>(1793+offset3))
{
	if(input[i]==(1795+offset3))
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
	if(input[i]==(1793+offset3))
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
	if(input[i]>(1663+offset3))
{
	if(input[i]>(1727+offset3))
{
	if(input[i]>(1759+offset3))
{
	if(input[i]>(1775+offset3))
{
	if(input[i]>(1783+offset3))
{
	if(input[i]>(1787+offset3))
{
	if(input[i]>(1789+offset3))
{
	if(input[i]==(1791+offset3))
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
	if(input[i]==(1789+offset3))
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
	if(input[i]>(1785+offset3))
{
	if(input[i]==(1787+offset3))
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
	if(input[i]==(1785+offset3))
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
	if(input[i]>(1779+offset3))
{
	if(input[i]>(1781+offset3))
{
	if(input[i]==(1783+offset3))
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
	if(input[i]==(1781+offset3))
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
	if(input[i]>(1777+offset3))
{
	if(input[i]==(1779+offset3))
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
	if(input[i]==(1777+offset3))
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
	if(input[i]>(1767+offset3))
{
	if(input[i]>(1771+offset3))
{
	if(input[i]>(1773+offset3))
{
	if(input[i]==(1775+offset3))
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
	if(input[i]==(1773+offset3))
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
	if(input[i]>(1769+offset3))
{
	if(input[i]==(1771+offset3))
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
	if(input[i]==(1769+offset3))
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
	if(input[i]>(1763+offset3))
{
	if(input[i]>(1765+offset3))
{
	if(input[i]==(1767+offset3))
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
	if(input[i]==(1765+offset3))
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
	if(input[i]>(1761+offset3))
{
	if(input[i]==(1763+offset3))
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
	if(input[i]==(1761+offset3))
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
	if(input[i]>(1743+offset3))
{
	if(input[i]>(1751+offset3))
{
	if(input[i]>(1755+offset3))
{
	if(input[i]>(1757+offset3))
{
	if(input[i]==(1759+offset3))
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
	if(input[i]==(1757+offset3))
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
	if(input[i]>(1753+offset3))
{
	if(input[i]==(1755+offset3))
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
	if(input[i]==(1753+offset3))
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
	if(input[i]>(1747+offset3))
{
	if(input[i]>(1749+offset3))
{
	if(input[i]==(1751+offset3))
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
	if(input[i]==(1749+offset3))
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
	if(input[i]>(1745+offset3))
{
	if(input[i]==(1747+offset3))
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
	if(input[i]==(1745+offset3))
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
	if(input[i]>(1735+offset3))
{
	if(input[i]>(1739+offset3))
{
	if(input[i]>(1741+offset3))
{
	if(input[i]==(1743+offset3))
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
	if(input[i]==(1741+offset3))
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
	if(input[i]>(1737+offset3))
{
	if(input[i]==(1739+offset3))
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
	if(input[i]==(1737+offset3))
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
	if(input[i]>(1731+offset3))
{
	if(input[i]>(1733+offset3))
{
	if(input[i]==(1735+offset3))
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
	if(input[i]==(1733+offset3))
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
	if(input[i]>(1729+offset3))
{
	if(input[i]==(1731+offset3))
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
	if(input[i]==(1729+offset3))
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
	if(input[i]>(1695+offset3))
{
	if(input[i]>(1711+offset3))
{
	if(input[i]>(1719+offset3))
{
	if(input[i]>(1723+offset3))
{
	if(input[i]>(1725+offset3))
{
	if(input[i]==(1727+offset3))
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
	if(input[i]==(1725+offset3))
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
	if(input[i]>(1721+offset3))
{
	if(input[i]==(1723+offset3))
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
	if(input[i]==(1721+offset3))
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
	if(input[i]>(1715+offset3))
{
	if(input[i]>(1717+offset3))
{
	if(input[i]==(1719+offset3))
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
	if(input[i]==(1717+offset3))
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
	if(input[i]>(1713+offset3))
{
	if(input[i]==(1715+offset3))
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
	if(input[i]==(1713+offset3))
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
	if(input[i]>(1703+offset3))
{
	if(input[i]>(1707+offset3))
{
	if(input[i]>(1709+offset3))
{
	if(input[i]==(1711+offset3))
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
	if(input[i]==(1709+offset3))
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
	if(input[i]>(1705+offset3))
{
	if(input[i]==(1707+offset3))
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
	if(input[i]==(1705+offset3))
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
	if(input[i]>(1699+offset3))
{
	if(input[i]>(1701+offset3))
{
	if(input[i]==(1703+offset3))
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
	if(input[i]==(1701+offset3))
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
	if(input[i]>(1697+offset3))
{
	if(input[i]==(1699+offset3))
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
	if(input[i]==(1697+offset3))
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
	if(input[i]>(1679+offset3))
{
	if(input[i]>(1687+offset3))
{
	if(input[i]>(1691+offset3))
{
	if(input[i]>(1693+offset3))
{
	if(input[i]==(1695+offset3))
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
	if(input[i]==(1693+offset3))
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
	if(input[i]>(1689+offset3))
{
	if(input[i]==(1691+offset3))
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
	if(input[i]==(1689+offset3))
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
	if(input[i]>(1683+offset3))
{
	if(input[i]>(1685+offset3))
{
	if(input[i]==(1687+offset3))
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
	if(input[i]==(1685+offset3))
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
	if(input[i]>(1681+offset3))
{
	if(input[i]==(1683+offset3))
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
	if(input[i]==(1681+offset3))
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
	if(input[i]>(1671+offset3))
{
	if(input[i]>(1675+offset3))
{
	if(input[i]>(1677+offset3))
{
	if(input[i]==(1679+offset3))
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
	if(input[i]==(1677+offset3))
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
	if(input[i]>(1673+offset3))
{
	if(input[i]==(1675+offset3))
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
	if(input[i]==(1673+offset3))
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
	if(input[i]>(1667+offset3))
{
	if(input[i]>(1669+offset3))
{
	if(input[i]==(1671+offset3))
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
	if(input[i]==(1669+offset3))
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
	if(input[i]>(1665+offset3))
{
	if(input[i]==(1667+offset3))
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
	if(input[i]==(1665+offset3))
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
	if(input[i]>(1599+offset3))
{
	if(input[i]>(1631+offset3))
{
	if(input[i]>(1647+offset3))
{
	if(input[i]>(1655+offset3))
{
	if(input[i]>(1659+offset3))
{
	if(input[i]>(1661+offset3))
{
	if(input[i]==(1663+offset3))
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
	if(input[i]==(1661+offset3))
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
	if(input[i]>(1657+offset3))
{
	if(input[i]==(1659+offset3))
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
	if(input[i]==(1657+offset3))
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
	if(input[i]>(1651+offset3))
{
	if(input[i]>(1653+offset3))
{
	if(input[i]==(1655+offset3))
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
	if(input[i]==(1653+offset3))
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
	if(input[i]>(1649+offset3))
{
	if(input[i]==(1651+offset3))
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
	if(input[i]==(1649+offset3))
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
	if(input[i]>(1639+offset3))
{
	if(input[i]>(1643+offset3))
{
	if(input[i]>(1645+offset3))
{
	if(input[i]==(1647+offset3))
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
	if(input[i]==(1645+offset3))
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
	if(input[i]>(1641+offset3))
{
	if(input[i]==(1643+offset3))
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
	if(input[i]==(1641+offset3))
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
	if(input[i]>(1635+offset3))
{
	if(input[i]>(1637+offset3))
{
	if(input[i]==(1639+offset3))
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
	if(input[i]==(1637+offset3))
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
	if(input[i]>(1633+offset3))
{
	if(input[i]==(1635+offset3))
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
	if(input[i]==(1633+offset3))
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
	if(input[i]>(1615+offset3))
{
	if(input[i]>(1623+offset3))
{
	if(input[i]>(1627+offset3))
{
	if(input[i]>(1629+offset3))
{
	if(input[i]==(1631+offset3))
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
	if(input[i]==(1629+offset3))
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
	if(input[i]>(1625+offset3))
{
	if(input[i]==(1627+offset3))
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
	if(input[i]==(1625+offset3))
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
	if(input[i]>(1619+offset3))
{
	if(input[i]>(1621+offset3))
{
	if(input[i]==(1623+offset3))
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
	if(input[i]==(1621+offset3))
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
	if(input[i]>(1617+offset3))
{
	if(input[i]==(1619+offset3))
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
	if(input[i]==(1617+offset3))
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
	if(input[i]>(1607+offset3))
{
	if(input[i]>(1611+offset3))
{
	if(input[i]>(1613+offset3))
{
	if(input[i]==(1615+offset3))
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
	if(input[i]==(1613+offset3))
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
	if(input[i]>(1609+offset3))
{
	if(input[i]==(1611+offset3))
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
	if(input[i]==(1609+offset3))
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
	if(input[i]>(1603+offset3))
{
	if(input[i]>(1605+offset3))
{
	if(input[i]==(1607+offset3))
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
	if(input[i]==(1605+offset3))
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
	if(input[i]>(1601+offset3))
{
	if(input[i]==(1603+offset3))
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
	if(input[i]==(1601+offset3))
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
	if(input[i]>(1567+offset3))
{
	if(input[i]>(1583+offset3))
{
	if(input[i]>(1591+offset3))
{
	if(input[i]>(1595+offset3))
{
	if(input[i]>(1597+offset3))
{
	if(input[i]==(1599+offset3))
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
	if(input[i]==(1597+offset3))
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
	if(input[i]>(1593+offset3))
{
	if(input[i]==(1595+offset3))
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
	if(input[i]==(1593+offset3))
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
	if(input[i]>(1587+offset3))
{
	if(input[i]>(1589+offset3))
{
	if(input[i]==(1591+offset3))
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
	if(input[i]==(1589+offset3))
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
	if(input[i]>(1585+offset3))
{
	if(input[i]==(1587+offset3))
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
	if(input[i]==(1585+offset3))
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
	if(input[i]>(1575+offset3))
{
	if(input[i]>(1579+offset3))
{
	if(input[i]>(1581+offset3))
{
	if(input[i]==(1583+offset3))
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
	if(input[i]==(1581+offset3))
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
	if(input[i]>(1577+offset3))
{
	if(input[i]==(1579+offset3))
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
	if(input[i]==(1577+offset3))
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
	if(input[i]>(1571+offset3))
{
	if(input[i]>(1573+offset3))
{
	if(input[i]==(1575+offset3))
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
	if(input[i]==(1573+offset3))
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
	if(input[i]>(1569+offset3))
{
	if(input[i]==(1571+offset3))
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
	if(input[i]==(1569+offset3))
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
	if(input[i]>(1551+offset3))
{
	if(input[i]>(1559+offset3))
{
	if(input[i]>(1563+offset3))
{
	if(input[i]>(1565+offset3))
{
	if(input[i]==(1567+offset3))
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
	if(input[i]==(1565+offset3))
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
	if(input[i]>(1561+offset3))
{
	if(input[i]==(1563+offset3))
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
	if(input[i]==(1561+offset3))
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
	if(input[i]>(1555+offset3))
{
	if(input[i]>(1557+offset3))
{
	if(input[i]==(1559+offset3))
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
	if(input[i]==(1557+offset3))
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
	if(input[i]>(1553+offset3))
{
	if(input[i]==(1555+offset3))
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
	if(input[i]==(1553+offset3))
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
	if(input[i]>(1543+offset3))
{
	if(input[i]>(1547+offset3))
{
	if(input[i]>(1549+offset3))
{
	if(input[i]==(1551+offset3))
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
	if(input[i]==(1549+offset3))
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
	if(input[i]>(1545+offset3))
{
	if(input[i]==(1547+offset3))
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
	if(input[i]==(1545+offset3))
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
	if(input[i]>(1539+offset3))
{
	if(input[i]>(1541+offset3))
{
	if(input[i]==(1543+offset3))
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
	if(input[i]==(1541+offset3))
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
	if(input[i]>(1537+offset3))
{
	if(input[i]==(1539+offset3))
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
	if(input[i]==(1537+offset3))
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
	if(input[i]>(1279+offset3))
{
	if(input[i]>(1407+offset3))
{
	if(input[i]>(1471+offset3))
{
	if(input[i]>(1503+offset3))
{
	if(input[i]>(1519+offset3))
{
	if(input[i]>(1527+offset3))
{
	if(input[i]>(1531+offset3))
{
	if(input[i]>(1533+offset3))
{
	if(input[i]==(1535+offset3))
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
	if(input[i]==(1533+offset3))
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
	if(input[i]>(1529+offset3))
{
	if(input[i]==(1531+offset3))
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
	if(input[i]==(1529+offset3))
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
	if(input[i]>(1523+offset3))
{
	if(input[i]>(1525+offset3))
{
	if(input[i]==(1527+offset3))
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
	if(input[i]==(1525+offset3))
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
	if(input[i]>(1521+offset3))
{
	if(input[i]==(1523+offset3))
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
	if(input[i]==(1521+offset3))
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
	if(input[i]>(1511+offset3))
{
	if(input[i]>(1515+offset3))
{
	if(input[i]>(1517+offset3))
{
	if(input[i]==(1519+offset3))
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
	if(input[i]==(1517+offset3))
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
	if(input[i]>(1513+offset3))
{
	if(input[i]==(1515+offset3))
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
	if(input[i]==(1513+offset3))
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
	if(input[i]>(1507+offset3))
{
	if(input[i]>(1509+offset3))
{
	if(input[i]==(1511+offset3))
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
	if(input[i]==(1509+offset3))
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
	if(input[i]>(1505+offset3))
{
	if(input[i]==(1507+offset3))
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
	if(input[i]==(1505+offset3))
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
	if(input[i]>(1487+offset3))
{
	if(input[i]>(1495+offset3))
{
	if(input[i]>(1499+offset3))
{
	if(input[i]>(1501+offset3))
{
	if(input[i]==(1503+offset3))
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
	if(input[i]==(1501+offset3))
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
	if(input[i]>(1497+offset3))
{
	if(input[i]==(1499+offset3))
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
	if(input[i]==(1497+offset3))
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
	if(input[i]>(1491+offset3))
{
	if(input[i]>(1493+offset3))
{
	if(input[i]==(1495+offset3))
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
	if(input[i]==(1493+offset3))
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
	if(input[i]>(1489+offset3))
{
	if(input[i]==(1491+offset3))
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
	if(input[i]==(1489+offset3))
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
	if(input[i]>(1479+offset3))
{
	if(input[i]>(1483+offset3))
{
	if(input[i]>(1485+offset3))
{
	if(input[i]==(1487+offset3))
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
	if(input[i]==(1485+offset3))
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
	if(input[i]>(1481+offset3))
{
	if(input[i]==(1483+offset3))
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
	if(input[i]==(1481+offset3))
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
	if(input[i]>(1475+offset3))
{
	if(input[i]>(1477+offset3))
{
	if(input[i]==(1479+offset3))
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
	if(input[i]==(1477+offset3))
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
	if(input[i]>(1473+offset3))
{
	if(input[i]==(1475+offset3))
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
	if(input[i]==(1473+offset3))
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
	if(input[i]>(1439+offset3))
{
	if(input[i]>(1455+offset3))
{
	if(input[i]>(1463+offset3))
{
	if(input[i]>(1467+offset3))
{
	if(input[i]>(1469+offset3))
{
	if(input[i]==(1471+offset3))
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
	if(input[i]==(1469+offset3))
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
	if(input[i]>(1465+offset3))
{
	if(input[i]==(1467+offset3))
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
	if(input[i]==(1465+offset3))
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
	if(input[i]>(1459+offset3))
{
	if(input[i]>(1461+offset3))
{
	if(input[i]==(1463+offset3))
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
	if(input[i]==(1461+offset3))
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
	if(input[i]>(1457+offset3))
{
	if(input[i]==(1459+offset3))
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
	if(input[i]==(1457+offset3))
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
	if(input[i]>(1447+offset3))
{
	if(input[i]>(1451+offset3))
{
	if(input[i]>(1453+offset3))
{
	if(input[i]==(1455+offset3))
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
	if(input[i]==(1453+offset3))
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
	if(input[i]>(1449+offset3))
{
	if(input[i]==(1451+offset3))
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
	if(input[i]==(1449+offset3))
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
	if(input[i]>(1443+offset3))
{
	if(input[i]>(1445+offset3))
{
	if(input[i]==(1447+offset3))
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
	if(input[i]==(1445+offset3))
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
	if(input[i]>(1441+offset3))
{
	if(input[i]==(1443+offset3))
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
	if(input[i]==(1441+offset3))
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
	if(input[i]>(1423+offset3))
{
	if(input[i]>(1431+offset3))
{
	if(input[i]>(1435+offset3))
{
	if(input[i]>(1437+offset3))
{
	if(input[i]==(1439+offset3))
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
	if(input[i]==(1437+offset3))
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
	if(input[i]>(1433+offset3))
{
	if(input[i]==(1435+offset3))
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
	if(input[i]==(1433+offset3))
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
	if(input[i]>(1427+offset3))
{
	if(input[i]>(1429+offset3))
{
	if(input[i]==(1431+offset3))
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
	if(input[i]==(1429+offset3))
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
	if(input[i]>(1425+offset3))
{
	if(input[i]==(1427+offset3))
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
	if(input[i]==(1425+offset3))
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
	if(input[i]>(1415+offset3))
{
	if(input[i]>(1419+offset3))
{
	if(input[i]>(1421+offset3))
{
	if(input[i]==(1423+offset3))
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
	if(input[i]==(1421+offset3))
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
	if(input[i]>(1417+offset3))
{
	if(input[i]==(1419+offset3))
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
	if(input[i]==(1417+offset3))
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
	if(input[i]>(1411+offset3))
{
	if(input[i]>(1413+offset3))
{
	if(input[i]==(1415+offset3))
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
	if(input[i]==(1413+offset3))
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
	if(input[i]>(1409+offset3))
{
	if(input[i]==(1411+offset3))
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
	if(input[i]==(1409+offset3))
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
	if(input[i]>(1343+offset3))
{
	if(input[i]>(1375+offset3))
{
	if(input[i]>(1391+offset3))
{
	if(input[i]>(1399+offset3))
{
	if(input[i]>(1403+offset3))
{
	if(input[i]>(1405+offset3))
{
	if(input[i]==(1407+offset3))
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
	if(input[i]==(1405+offset3))
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
	if(input[i]>(1401+offset3))
{
	if(input[i]==(1403+offset3))
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
	if(input[i]==(1401+offset3))
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
	if(input[i]>(1395+offset3))
{
	if(input[i]>(1397+offset3))
{
	if(input[i]==(1399+offset3))
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
	if(input[i]==(1397+offset3))
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
	if(input[i]>(1393+offset3))
{
	if(input[i]==(1395+offset3))
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
	if(input[i]==(1393+offset3))
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
	if(input[i]>(1383+offset3))
{
	if(input[i]>(1387+offset3))
{
	if(input[i]>(1389+offset3))
{
	if(input[i]==(1391+offset3))
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
	if(input[i]==(1389+offset3))
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
	if(input[i]>(1385+offset3))
{
	if(input[i]==(1387+offset3))
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
	if(input[i]==(1385+offset3))
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
	if(input[i]>(1379+offset3))
{
	if(input[i]>(1381+offset3))
{
	if(input[i]==(1383+offset3))
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
	if(input[i]==(1381+offset3))
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
	if(input[i]>(1377+offset3))
{
	if(input[i]==(1379+offset3))
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
	if(input[i]==(1377+offset3))
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
	if(input[i]>(1359+offset3))
{
	if(input[i]>(1367+offset3))
{
	if(input[i]>(1371+offset3))
{
	if(input[i]>(1373+offset3))
{
	if(input[i]==(1375+offset3))
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
	if(input[i]==(1373+offset3))
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
	if(input[i]>(1369+offset3))
{
	if(input[i]==(1371+offset3))
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
	if(input[i]==(1369+offset3))
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
	if(input[i]>(1363+offset3))
{
	if(input[i]>(1365+offset3))
{
	if(input[i]==(1367+offset3))
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
	if(input[i]==(1365+offset3))
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
	if(input[i]>(1361+offset3))
{
	if(input[i]==(1363+offset3))
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
	if(input[i]==(1361+offset3))
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
	if(input[i]>(1351+offset3))
{
	if(input[i]>(1355+offset3))
{
	if(input[i]>(1357+offset3))
{
	if(input[i]==(1359+offset3))
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
	if(input[i]==(1357+offset3))
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
	if(input[i]>(1353+offset3))
{
	if(input[i]==(1355+offset3))
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
	if(input[i]==(1353+offset3))
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
	if(input[i]>(1347+offset3))
{
	if(input[i]>(1349+offset3))
{
	if(input[i]==(1351+offset3))
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
	if(input[i]==(1349+offset3))
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
	if(input[i]>(1345+offset3))
{
	if(input[i]==(1347+offset3))
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
	if(input[i]==(1345+offset3))
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
	if(input[i]>(1311+offset3))
{
	if(input[i]>(1327+offset3))
{
	if(input[i]>(1335+offset3))
{
	if(input[i]>(1339+offset3))
{
	if(input[i]>(1341+offset3))
{
	if(input[i]==(1343+offset3))
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
	if(input[i]==(1341+offset3))
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
	if(input[i]>(1337+offset3))
{
	if(input[i]==(1339+offset3))
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
	if(input[i]==(1337+offset3))
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
	if(input[i]>(1331+offset3))
{
	if(input[i]>(1333+offset3))
{
	if(input[i]==(1335+offset3))
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
	if(input[i]==(1333+offset3))
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
	if(input[i]>(1329+offset3))
{
	if(input[i]==(1331+offset3))
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
	if(input[i]==(1329+offset3))
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
	if(input[i]>(1319+offset3))
{
	if(input[i]>(1323+offset3))
{
	if(input[i]>(1325+offset3))
{
	if(input[i]==(1327+offset3))
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
	if(input[i]==(1325+offset3))
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
	if(input[i]>(1321+offset3))
{
	if(input[i]==(1323+offset3))
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
	if(input[i]==(1321+offset3))
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
	if(input[i]>(1315+offset3))
{
	if(input[i]>(1317+offset3))
{
	if(input[i]==(1319+offset3))
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
	if(input[i]==(1317+offset3))
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
	if(input[i]>(1313+offset3))
{
	if(input[i]==(1315+offset3))
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
	if(input[i]==(1313+offset3))
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
	if(input[i]>(1295+offset3))
{
	if(input[i]>(1303+offset3))
{
	if(input[i]>(1307+offset3))
{
	if(input[i]>(1309+offset3))
{
	if(input[i]==(1311+offset3))
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
	if(input[i]==(1309+offset3))
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
	if(input[i]>(1305+offset3))
{
	if(input[i]==(1307+offset3))
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
	if(input[i]==(1305+offset3))
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
	if(input[i]>(1299+offset3))
{
	if(input[i]>(1301+offset3))
{
	if(input[i]==(1303+offset3))
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
	if(input[i]==(1301+offset3))
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
	if(input[i]>(1297+offset3))
{
	if(input[i]==(1299+offset3))
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
	if(input[i]==(1297+offset3))
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
	if(input[i]>(1287+offset3))
{
	if(input[i]>(1291+offset3))
{
	if(input[i]>(1293+offset3))
{
	if(input[i]==(1295+offset3))
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
	if(input[i]==(1293+offset3))
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
	if(input[i]>(1289+offset3))
{
	if(input[i]==(1291+offset3))
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
	if(input[i]==(1289+offset3))
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
	if(input[i]>(1283+offset3))
{
	if(input[i]>(1285+offset3))
{
	if(input[i]==(1287+offset3))
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
	if(input[i]==(1285+offset3))
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
	if(input[i]>(1281+offset3))
{
	if(input[i]==(1283+offset3))
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
	if(input[i]==(1281+offset3))
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
	if(input[i]>(1151+offset3))
{
	if(input[i]>(1215+offset3))
{
	if(input[i]>(1247+offset3))
{
	if(input[i]>(1263+offset3))
{
	if(input[i]>(1271+offset3))
{
	if(input[i]>(1275+offset3))
{
	if(input[i]>(1277+offset3))
{
	if(input[i]==(1279+offset3))
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
	if(input[i]==(1277+offset3))
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
	if(input[i]>(1273+offset3))
{
	if(input[i]==(1275+offset3))
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
	if(input[i]==(1273+offset3))
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
	if(input[i]>(1267+offset3))
{
	if(input[i]>(1269+offset3))
{
	if(input[i]==(1271+offset3))
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
	if(input[i]==(1269+offset3))
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
	if(input[i]>(1265+offset3))
{
	if(input[i]==(1267+offset3))
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
	if(input[i]==(1265+offset3))
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
	if(input[i]>(1255+offset3))
{
	if(input[i]>(1259+offset3))
{
	if(input[i]>(1261+offset3))
{
	if(input[i]==(1263+offset3))
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
	if(input[i]==(1261+offset3))
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
	if(input[i]>(1257+offset3))
{
	if(input[i]==(1259+offset3))
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
	if(input[i]==(1257+offset3))
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
	if(input[i]>(1251+offset3))
{
	if(input[i]>(1253+offset3))
{
	if(input[i]==(1255+offset3))
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
	if(input[i]==(1253+offset3))
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
	if(input[i]>(1249+offset3))
{
	if(input[i]==(1251+offset3))
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
	if(input[i]==(1249+offset3))
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
	if(input[i]>(1231+offset3))
{
	if(input[i]>(1239+offset3))
{
	if(input[i]>(1243+offset3))
{
	if(input[i]>(1245+offset3))
{
	if(input[i]==(1247+offset3))
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
	if(input[i]==(1245+offset3))
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
	if(input[i]>(1241+offset3))
{
	if(input[i]==(1243+offset3))
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
	if(input[i]==(1241+offset3))
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
	if(input[i]>(1235+offset3))
{
	if(input[i]>(1237+offset3))
{
	if(input[i]==(1239+offset3))
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
	if(input[i]==(1237+offset3))
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
	if(input[i]>(1233+offset3))
{
	if(input[i]==(1235+offset3))
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
	if(input[i]==(1233+offset3))
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
	if(input[i]>(1223+offset3))
{
	if(input[i]>(1227+offset3))
{
	if(input[i]>(1229+offset3))
{
	if(input[i]==(1231+offset3))
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
	if(input[i]==(1229+offset3))
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
	if(input[i]>(1225+offset3))
{
	if(input[i]==(1227+offset3))
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
	if(input[i]==(1225+offset3))
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
	if(input[i]>(1219+offset3))
{
	if(input[i]>(1221+offset3))
{
	if(input[i]==(1223+offset3))
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
	if(input[i]==(1221+offset3))
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
	if(input[i]>(1217+offset3))
{
	if(input[i]==(1219+offset3))
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
	if(input[i]==(1217+offset3))
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
	if(input[i]>(1183+offset3))
{
	if(input[i]>(1199+offset3))
{
	if(input[i]>(1207+offset3))
{
	if(input[i]>(1211+offset3))
{
	if(input[i]>(1213+offset3))
{
	if(input[i]==(1215+offset3))
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
	if(input[i]==(1213+offset3))
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
	if(input[i]>(1209+offset3))
{
	if(input[i]==(1211+offset3))
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
	if(input[i]==(1209+offset3))
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
	if(input[i]>(1203+offset3))
{
	if(input[i]>(1205+offset3))
{
	if(input[i]==(1207+offset3))
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
	if(input[i]==(1205+offset3))
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
	if(input[i]>(1201+offset3))
{
	if(input[i]==(1203+offset3))
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
	if(input[i]==(1201+offset3))
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
	if(input[i]>(1191+offset3))
{
	if(input[i]>(1195+offset3))
{
	if(input[i]>(1197+offset3))
{
	if(input[i]==(1199+offset3))
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
	if(input[i]==(1197+offset3))
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
	if(input[i]>(1193+offset3))
{
	if(input[i]==(1195+offset3))
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
	if(input[i]==(1193+offset3))
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
	if(input[i]>(1187+offset3))
{
	if(input[i]>(1189+offset3))
{
	if(input[i]==(1191+offset3))
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
	if(input[i]==(1189+offset3))
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
	if(input[i]>(1185+offset3))
{
	if(input[i]==(1187+offset3))
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
	if(input[i]==(1185+offset3))
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
	if(input[i]>(1167+offset3))
{
	if(input[i]>(1175+offset3))
{
	if(input[i]>(1179+offset3))
{
	if(input[i]>(1181+offset3))
{
	if(input[i]==(1183+offset3))
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
	if(input[i]==(1181+offset3))
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
	if(input[i]>(1177+offset3))
{
	if(input[i]==(1179+offset3))
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
	if(input[i]==(1177+offset3))
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
	if(input[i]>(1171+offset3))
{
	if(input[i]>(1173+offset3))
{
	if(input[i]==(1175+offset3))
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
	if(input[i]==(1173+offset3))
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
	if(input[i]>(1169+offset3))
{
	if(input[i]==(1171+offset3))
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
	if(input[i]==(1169+offset3))
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
	if(input[i]>(1159+offset3))
{
	if(input[i]>(1163+offset3))
{
	if(input[i]>(1165+offset3))
{
	if(input[i]==(1167+offset3))
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
	if(input[i]==(1165+offset3))
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
	if(input[i]>(1161+offset3))
{
	if(input[i]==(1163+offset3))
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
	if(input[i]==(1161+offset3))
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
	if(input[i]>(1155+offset3))
{
	if(input[i]>(1157+offset3))
{
	if(input[i]==(1159+offset3))
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
	if(input[i]==(1157+offset3))
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
	if(input[i]>(1153+offset3))
{
	if(input[i]==(1155+offset3))
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
	if(input[i]==(1153+offset3))
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
	if(input[i]>(1087+offset3))
{
	if(input[i]>(1119+offset3))
{
	if(input[i]>(1135+offset3))
{
	if(input[i]>(1143+offset3))
{
	if(input[i]>(1147+offset3))
{
	if(input[i]>(1149+offset3))
{
	if(input[i]==(1151+offset3))
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
	if(input[i]==(1149+offset3))
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
	if(input[i]>(1145+offset3))
{
	if(input[i]==(1147+offset3))
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
	if(input[i]==(1145+offset3))
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
	if(input[i]>(1139+offset3))
{
	if(input[i]>(1141+offset3))
{
	if(input[i]==(1143+offset3))
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
	if(input[i]==(1141+offset3))
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
	if(input[i]>(1137+offset3))
{
	if(input[i]==(1139+offset3))
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
	if(input[i]==(1137+offset3))
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
	if(input[i]>(1127+offset3))
{
	if(input[i]>(1131+offset3))
{
	if(input[i]>(1133+offset3))
{
	if(input[i]==(1135+offset3))
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
	if(input[i]==(1133+offset3))
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
	if(input[i]>(1129+offset3))
{
	if(input[i]==(1131+offset3))
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
	if(input[i]==(1129+offset3))
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
	if(input[i]>(1123+offset3))
{
	if(input[i]>(1125+offset3))
{
	if(input[i]==(1127+offset3))
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
	if(input[i]==(1125+offset3))
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
	if(input[i]>(1121+offset3))
{
	if(input[i]==(1123+offset3))
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
	if(input[i]==(1121+offset3))
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
	if(input[i]>(1103+offset3))
{
	if(input[i]>(1111+offset3))
{
	if(input[i]>(1115+offset3))
{
	if(input[i]>(1117+offset3))
{
	if(input[i]==(1119+offset3))
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
	if(input[i]==(1117+offset3))
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
	if(input[i]>(1113+offset3))
{
	if(input[i]==(1115+offset3))
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
	if(input[i]==(1113+offset3))
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
	if(input[i]>(1107+offset3))
{
	if(input[i]>(1109+offset3))
{
	if(input[i]==(1111+offset3))
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
	if(input[i]==(1109+offset3))
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
	if(input[i]>(1105+offset3))
{
	if(input[i]==(1107+offset3))
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
	if(input[i]==(1105+offset3))
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
	if(input[i]>(1095+offset3))
{
	if(input[i]>(1099+offset3))
{
	if(input[i]>(1101+offset3))
{
	if(input[i]==(1103+offset3))
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
	if(input[i]==(1101+offset3))
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
	if(input[i]>(1097+offset3))
{
	if(input[i]==(1099+offset3))
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
	if(input[i]==(1097+offset3))
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
	if(input[i]>(1091+offset3))
{
	if(input[i]>(1093+offset3))
{
	if(input[i]==(1095+offset3))
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
	if(input[i]==(1093+offset3))
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
	if(input[i]>(1089+offset3))
{
	if(input[i]==(1091+offset3))
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
	if(input[i]==(1089+offset3))
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
	if(input[i]>(1055+offset3))
{
	if(input[i]>(1071+offset3))
{
	if(input[i]>(1079+offset3))
{
	if(input[i]>(1083+offset3))
{
	if(input[i]>(1085+offset3))
{
	if(input[i]==(1087+offset3))
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
	if(input[i]==(1085+offset3))
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
	if(input[i]>(1081+offset3))
{
	if(input[i]==(1083+offset3))
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
	if(input[i]==(1081+offset3))
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
	if(input[i]>(1075+offset3))
{
	if(input[i]>(1077+offset3))
{
	if(input[i]==(1079+offset3))
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
	if(input[i]==(1077+offset3))
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
	if(input[i]>(1073+offset3))
{
	if(input[i]==(1075+offset3))
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
	if(input[i]==(1073+offset3))
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
	if(input[i]>(1063+offset3))
{
	if(input[i]>(1067+offset3))
{
	if(input[i]>(1069+offset3))
{
	if(input[i]==(1071+offset3))
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
	if(input[i]==(1069+offset3))
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
	if(input[i]>(1065+offset3))
{
	if(input[i]==(1067+offset3))
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
	if(input[i]==(1065+offset3))
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
	if(input[i]>(1059+offset3))
{
	if(input[i]>(1061+offset3))
{
	if(input[i]==(1063+offset3))
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
	if(input[i]==(1061+offset3))
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
	if(input[i]>(1057+offset3))
{
	if(input[i]==(1059+offset3))
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
	if(input[i]==(1057+offset3))
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
	if(input[i]>(1039+offset3))
{
	if(input[i]>(1047+offset3))
{
	if(input[i]>(1051+offset3))
{
	if(input[i]>(1053+offset3))
{
	if(input[i]==(1055+offset3))
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
	if(input[i]==(1053+offset3))
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
	if(input[i]>(1049+offset3))
{
	if(input[i]==(1051+offset3))
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
	if(input[i]==(1049+offset3))
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
	if(input[i]>(1043+offset3))
{
	if(input[i]>(1045+offset3))
{
	if(input[i]==(1047+offset3))
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
	if(input[i]==(1045+offset3))
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
	if(input[i]>(1041+offset3))
{
	if(input[i]==(1043+offset3))
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
	if(input[i]==(1041+offset3))
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
	if(input[i]>(1031+offset3))
{
	if(input[i]>(1035+offset3))
{
	if(input[i]>(1037+offset3))
{
	if(input[i]==(1039+offset3))
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
	if(input[i]==(1037+offset3))
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
	if(input[i]>(1033+offset3))
{
	if(input[i]==(1035+offset3))
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
	if(input[i]==(1033+offset3))
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
	if(input[i]>(1027+offset3))
{
	if(input[i]>(1029+offset3))
{
	if(input[i]==(1031+offset3))
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
	if(input[i]==(1029+offset3))
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
	if(input[i]>(1025+offset3))
{
	if(input[i]==(1027+offset3))
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
	if(input[i]==(1025+offset3))
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
	if(input[i]>(511+offset3))
{
	if(input[i]>(767+offset3))
{
	if(input[i]>(895+offset3))
{
	if(input[i]>(959+offset3))
{
	if(input[i]>(991+offset3))
{
	if(input[i]>(1007+offset3))
{
	if(input[i]>(1015+offset3))
{
	if(input[i]>(1019+offset3))
{
	if(input[i]>(1021+offset3))
{
	if(input[i]==(1023+offset3))
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
	if(input[i]==(1021+offset3))
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
	if(input[i]>(1017+offset3))
{
	if(input[i]==(1019+offset3))
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
	if(input[i]==(1017+offset3))
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
	if(input[i]>(1011+offset3))
{
	if(input[i]>(1013+offset3))
{
	if(input[i]==(1015+offset3))
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
	if(input[i]==(1013+offset3))
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
	if(input[i]>(1009+offset3))
{
	if(input[i]==(1011+offset3))
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
	if(input[i]==(1009+offset3))
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
	if(input[i]>(999+offset3))
{
	if(input[i]>(1003+offset3))
{
	if(input[i]>(1005+offset3))
{
	if(input[i]==(1007+offset3))
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
	if(input[i]==(1005+offset3))
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
	if(input[i]>(1001+offset3))
{
	if(input[i]==(1003+offset3))
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
	if(input[i]==(1001+offset3))
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
	if(input[i]>(995+offset3))
{
	if(input[i]>(997+offset3))
{
	if(input[i]==(999+offset3))
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
	if(input[i]==(997+offset3))
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
	if(input[i]>(993+offset3))
{
	if(input[i]==(995+offset3))
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
	if(input[i]==(993+offset3))
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
	if(input[i]>(975+offset3))
{
	if(input[i]>(983+offset3))
{
	if(input[i]>(987+offset3))
{
	if(input[i]>(989+offset3))
{
	if(input[i]==(991+offset3))
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
	if(input[i]==(989+offset3))
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
	if(input[i]>(985+offset3))
{
	if(input[i]==(987+offset3))
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
	if(input[i]==(985+offset3))
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
	if(input[i]>(979+offset3))
{
	if(input[i]>(981+offset3))
{
	if(input[i]==(983+offset3))
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
	if(input[i]==(981+offset3))
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
	if(input[i]>(977+offset3))
{
	if(input[i]==(979+offset3))
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
	if(input[i]==(977+offset3))
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
	if(input[i]>(967+offset3))
{
	if(input[i]>(971+offset3))
{
	if(input[i]>(973+offset3))
{
	if(input[i]==(975+offset3))
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
	if(input[i]==(973+offset3))
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
	if(input[i]>(969+offset3))
{
	if(input[i]==(971+offset3))
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
	if(input[i]==(969+offset3))
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
	if(input[i]>(963+offset3))
{
	if(input[i]>(965+offset3))
{
	if(input[i]==(967+offset3))
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
	if(input[i]==(965+offset3))
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
	if(input[i]>(961+offset3))
{
	if(input[i]==(963+offset3))
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
	if(input[i]==(961+offset3))
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
	if(input[i]>(927+offset3))
{
	if(input[i]>(943+offset3))
{
	if(input[i]>(951+offset3))
{
	if(input[i]>(955+offset3))
{
	if(input[i]>(957+offset3))
{
	if(input[i]==(959+offset3))
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
	if(input[i]==(957+offset3))
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
	if(input[i]>(953+offset3))
{
	if(input[i]==(955+offset3))
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
	if(input[i]==(953+offset3))
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
	if(input[i]>(947+offset3))
{
	if(input[i]>(949+offset3))
{
	if(input[i]==(951+offset3))
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
	if(input[i]==(949+offset3))
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
	if(input[i]>(945+offset3))
{
	if(input[i]==(947+offset3))
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
	if(input[i]==(945+offset3))
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
	if(input[i]>(935+offset3))
{
	if(input[i]>(939+offset3))
{
	if(input[i]>(941+offset3))
{
	if(input[i]==(943+offset3))
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
	if(input[i]==(941+offset3))
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
	if(input[i]>(937+offset3))
{
	if(input[i]==(939+offset3))
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
	if(input[i]==(937+offset3))
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
	if(input[i]>(931+offset3))
{
	if(input[i]>(933+offset3))
{
	if(input[i]==(935+offset3))
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
	if(input[i]==(933+offset3))
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
	if(input[i]>(929+offset3))
{
	if(input[i]==(931+offset3))
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
	if(input[i]==(929+offset3))
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
	if(input[i]>(911+offset3))
{
	if(input[i]>(919+offset3))
{
	if(input[i]>(923+offset3))
{
	if(input[i]>(925+offset3))
{
	if(input[i]==(927+offset3))
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
	if(input[i]==(925+offset3))
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
	if(input[i]>(921+offset3))
{
	if(input[i]==(923+offset3))
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
	if(input[i]==(921+offset3))
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
	if(input[i]>(915+offset3))
{
	if(input[i]>(917+offset3))
{
	if(input[i]==(919+offset3))
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
	if(input[i]==(917+offset3))
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
	if(input[i]>(913+offset3))
{
	if(input[i]==(915+offset3))
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
	if(input[i]==(913+offset3))
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
	if(input[i]>(903+offset3))
{
	if(input[i]>(907+offset3))
{
	if(input[i]>(909+offset3))
{
	if(input[i]==(911+offset3))
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
	if(input[i]==(909+offset3))
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
	if(input[i]>(905+offset3))
{
	if(input[i]==(907+offset3))
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
	if(input[i]==(905+offset3))
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
	if(input[i]>(899+offset3))
{
	if(input[i]>(901+offset3))
{
	if(input[i]==(903+offset3))
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
	if(input[i]==(901+offset3))
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
	if(input[i]>(897+offset3))
{
	if(input[i]==(899+offset3))
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
	if(input[i]==(897+offset3))
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
	if(input[i]>(831+offset3))
{
	if(input[i]>(863+offset3))
{
	if(input[i]>(879+offset3))
{
	if(input[i]>(887+offset3))
{
	if(input[i]>(891+offset3))
{
	if(input[i]>(893+offset3))
{
	if(input[i]==(895+offset3))
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
	if(input[i]==(893+offset3))
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
	if(input[i]>(889+offset3))
{
	if(input[i]==(891+offset3))
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
	if(input[i]==(889+offset3))
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
	if(input[i]>(883+offset3))
{
	if(input[i]>(885+offset3))
{
	if(input[i]==(887+offset3))
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
	if(input[i]==(885+offset3))
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
	if(input[i]>(881+offset3))
{
	if(input[i]==(883+offset3))
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
	if(input[i]==(881+offset3))
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
	if(input[i]>(871+offset3))
{
	if(input[i]>(875+offset3))
{
	if(input[i]>(877+offset3))
{
	if(input[i]==(879+offset3))
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
	if(input[i]==(877+offset3))
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
	if(input[i]>(873+offset3))
{
	if(input[i]==(875+offset3))
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
	if(input[i]==(873+offset3))
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
	if(input[i]>(867+offset3))
{
	if(input[i]>(869+offset3))
{
	if(input[i]==(871+offset3))
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
	if(input[i]==(869+offset3))
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
	if(input[i]>(865+offset3))
{
	if(input[i]==(867+offset3))
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
	if(input[i]==(865+offset3))
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
	if(input[i]>(847+offset3))
{
	if(input[i]>(855+offset3))
{
	if(input[i]>(859+offset3))
{
	if(input[i]>(861+offset3))
{
	if(input[i]==(863+offset3))
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
	if(input[i]==(861+offset3))
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
	if(input[i]>(857+offset3))
{
	if(input[i]==(859+offset3))
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
	if(input[i]==(857+offset3))
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
	if(input[i]>(851+offset3))
{
	if(input[i]>(853+offset3))
{
	if(input[i]==(855+offset3))
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
	if(input[i]==(853+offset3))
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
	if(input[i]>(849+offset3))
{
	if(input[i]==(851+offset3))
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
	if(input[i]==(849+offset3))
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
	if(input[i]>(839+offset3))
{
	if(input[i]>(843+offset3))
{
	if(input[i]>(845+offset3))
{
	if(input[i]==(847+offset3))
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
	if(input[i]==(845+offset3))
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
	if(input[i]>(841+offset3))
{
	if(input[i]==(843+offset3))
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
	if(input[i]==(841+offset3))
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
	if(input[i]>(835+offset3))
{
	if(input[i]>(837+offset3))
{
	if(input[i]==(839+offset3))
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
	if(input[i]==(837+offset3))
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
	if(input[i]>(833+offset3))
{
	if(input[i]==(835+offset3))
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
	if(input[i]==(833+offset3))
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
	if(input[i]>(799+offset3))
{
	if(input[i]>(815+offset3))
{
	if(input[i]>(823+offset3))
{
	if(input[i]>(827+offset3))
{
	if(input[i]>(829+offset3))
{
	if(input[i]==(831+offset3))
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
	if(input[i]==(829+offset3))
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
	if(input[i]>(825+offset3))
{
	if(input[i]==(827+offset3))
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
	if(input[i]==(825+offset3))
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
	if(input[i]>(819+offset3))
{
	if(input[i]>(821+offset3))
{
	if(input[i]==(823+offset3))
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
	if(input[i]==(821+offset3))
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
	if(input[i]>(817+offset3))
{
	if(input[i]==(819+offset3))
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
	if(input[i]==(817+offset3))
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
	if(input[i]>(807+offset3))
{
	if(input[i]>(811+offset3))
{
	if(input[i]>(813+offset3))
{
	if(input[i]==(815+offset3))
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
	if(input[i]==(813+offset3))
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
	if(input[i]>(809+offset3))
{
	if(input[i]==(811+offset3))
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
	if(input[i]==(809+offset3))
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
	if(input[i]>(803+offset3))
{
	if(input[i]>(805+offset3))
{
	if(input[i]==(807+offset3))
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
	if(input[i]==(805+offset3))
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
	if(input[i]>(801+offset3))
{
	if(input[i]==(803+offset3))
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
	if(input[i]==(801+offset3))
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
	if(input[i]>(783+offset3))
{
	if(input[i]>(791+offset3))
{
	if(input[i]>(795+offset3))
{
	if(input[i]>(797+offset3))
{
	if(input[i]==(799+offset3))
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
	if(input[i]==(797+offset3))
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
	if(input[i]>(793+offset3))
{
	if(input[i]==(795+offset3))
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
	if(input[i]==(793+offset3))
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
	if(input[i]>(787+offset3))
{
	if(input[i]>(789+offset3))
{
	if(input[i]==(791+offset3))
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
	if(input[i]==(789+offset3))
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
	if(input[i]>(785+offset3))
{
	if(input[i]==(787+offset3))
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
	if(input[i]==(785+offset3))
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
	if(input[i]>(775+offset3))
{
	if(input[i]>(779+offset3))
{
	if(input[i]>(781+offset3))
{
	if(input[i]==(783+offset3))
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
	if(input[i]==(781+offset3))
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
	if(input[i]>(777+offset3))
{
	if(input[i]==(779+offset3))
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
	if(input[i]==(777+offset3))
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
	if(input[i]>(771+offset3))
{
	if(input[i]>(773+offset3))
{
	if(input[i]==(775+offset3))
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
	if(input[i]==(773+offset3))
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
	if(input[i]>(769+offset3))
{
	if(input[i]==(771+offset3))
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
	if(input[i]==(769+offset3))
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
	if(input[i]>(639+offset3))
{
	if(input[i]>(703+offset3))
{
	if(input[i]>(735+offset3))
{
	if(input[i]>(751+offset3))
{
	if(input[i]>(759+offset3))
{
	if(input[i]>(763+offset3))
{
	if(input[i]>(765+offset3))
{
	if(input[i]==(767+offset3))
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
	if(input[i]==(765+offset3))
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
	if(input[i]>(761+offset3))
{
	if(input[i]==(763+offset3))
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
	if(input[i]==(761+offset3))
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
	if(input[i]>(755+offset3))
{
	if(input[i]>(757+offset3))
{
	if(input[i]==(759+offset3))
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
	if(input[i]==(757+offset3))
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
	if(input[i]>(753+offset3))
{
	if(input[i]==(755+offset3))
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
	if(input[i]==(753+offset3))
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
	if(input[i]>(743+offset3))
{
	if(input[i]>(747+offset3))
{
	if(input[i]>(749+offset3))
{
	if(input[i]==(751+offset3))
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
	if(input[i]==(749+offset3))
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
	if(input[i]>(745+offset3))
{
	if(input[i]==(747+offset3))
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
	if(input[i]==(745+offset3))
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
	if(input[i]>(739+offset3))
{
	if(input[i]>(741+offset3))
{
	if(input[i]==(743+offset3))
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
	if(input[i]==(741+offset3))
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
	if(input[i]>(737+offset3))
{
	if(input[i]==(739+offset3))
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
	if(input[i]==(737+offset3))
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
	if(input[i]>(719+offset3))
{
	if(input[i]>(727+offset3))
{
	if(input[i]>(731+offset3))
{
	if(input[i]>(733+offset3))
{
	if(input[i]==(735+offset3))
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
	if(input[i]==(733+offset3))
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
	if(input[i]>(729+offset3))
{
	if(input[i]==(731+offset3))
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
	if(input[i]==(729+offset3))
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
	if(input[i]>(723+offset3))
{
	if(input[i]>(725+offset3))
{
	if(input[i]==(727+offset3))
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
	if(input[i]==(725+offset3))
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
	if(input[i]>(721+offset3))
{
	if(input[i]==(723+offset3))
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
	if(input[i]==(721+offset3))
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
	if(input[i]>(711+offset3))
{
	if(input[i]>(715+offset3))
{
	if(input[i]>(717+offset3))
{
	if(input[i]==(719+offset3))
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
	if(input[i]==(717+offset3))
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
	if(input[i]>(713+offset3))
{
	if(input[i]==(715+offset3))
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
	if(input[i]==(713+offset3))
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
	if(input[i]>(707+offset3))
{
	if(input[i]>(709+offset3))
{
	if(input[i]==(711+offset3))
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
	if(input[i]==(709+offset3))
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
	if(input[i]>(705+offset3))
{
	if(input[i]==(707+offset3))
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
	if(input[i]==(705+offset3))
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
	if(input[i]>(671+offset3))
{
	if(input[i]>(687+offset3))
{
	if(input[i]>(695+offset3))
{
	if(input[i]>(699+offset3))
{
	if(input[i]>(701+offset3))
{
	if(input[i]==(703+offset3))
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
	if(input[i]==(701+offset3))
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
	if(input[i]>(697+offset3))
{
	if(input[i]==(699+offset3))
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
	if(input[i]==(697+offset3))
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
	if(input[i]>(691+offset3))
{
	if(input[i]>(693+offset3))
{
	if(input[i]==(695+offset3))
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
	if(input[i]==(693+offset3))
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
	if(input[i]>(689+offset3))
{
	if(input[i]==(691+offset3))
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
	if(input[i]==(689+offset3))
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
	if(input[i]>(679+offset3))
{
	if(input[i]>(683+offset3))
{
	if(input[i]>(685+offset3))
{
	if(input[i]==(687+offset3))
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
	if(input[i]==(685+offset3))
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
	if(input[i]>(681+offset3))
{
	if(input[i]==(683+offset3))
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
	if(input[i]==(681+offset3))
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
	if(input[i]>(675+offset3))
{
	if(input[i]>(677+offset3))
{
	if(input[i]==(679+offset3))
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
	if(input[i]==(677+offset3))
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
	if(input[i]>(673+offset3))
{
	if(input[i]==(675+offset3))
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
	if(input[i]==(673+offset3))
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
	if(input[i]>(655+offset3))
{
	if(input[i]>(663+offset3))
{
	if(input[i]>(667+offset3))
{
	if(input[i]>(669+offset3))
{
	if(input[i]==(671+offset3))
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
	if(input[i]==(669+offset3))
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
	if(input[i]>(665+offset3))
{
	if(input[i]==(667+offset3))
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
	if(input[i]==(665+offset3))
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
	if(input[i]>(659+offset3))
{
	if(input[i]>(661+offset3))
{
	if(input[i]==(663+offset3))
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
	if(input[i]==(661+offset3))
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
	if(input[i]>(657+offset3))
{
	if(input[i]==(659+offset3))
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
	if(input[i]==(657+offset3))
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
	if(input[i]>(647+offset3))
{
	if(input[i]>(651+offset3))
{
	if(input[i]>(653+offset3))
{
	if(input[i]==(655+offset3))
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
	if(input[i]==(653+offset3))
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
	if(input[i]>(649+offset3))
{
	if(input[i]==(651+offset3))
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
	if(input[i]==(649+offset3))
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
	if(input[i]>(643+offset3))
{
	if(input[i]>(645+offset3))
{
	if(input[i]==(647+offset3))
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
	if(input[i]==(645+offset3))
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
	if(input[i]>(641+offset3))
{
	if(input[i]==(643+offset3))
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
	if(input[i]==(641+offset3))
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
	if(input[i]>(575+offset3))
{
	if(input[i]>(607+offset3))
{
	if(input[i]>(623+offset3))
{
	if(input[i]>(631+offset3))
{
	if(input[i]>(635+offset3))
{
	if(input[i]>(637+offset3))
{
	if(input[i]==(639+offset3))
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
	if(input[i]==(637+offset3))
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
	if(input[i]>(633+offset3))
{
	if(input[i]==(635+offset3))
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
	if(input[i]==(633+offset3))
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
	if(input[i]>(627+offset3))
{
	if(input[i]>(629+offset3))
{
	if(input[i]==(631+offset3))
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
	if(input[i]==(629+offset3))
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
	if(input[i]>(625+offset3))
{
	if(input[i]==(627+offset3))
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
	if(input[i]==(625+offset3))
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
	if(input[i]>(615+offset3))
{
	if(input[i]>(619+offset3))
{
	if(input[i]>(621+offset3))
{
	if(input[i]==(623+offset3))
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
	if(input[i]==(621+offset3))
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
	if(input[i]>(617+offset3))
{
	if(input[i]==(619+offset3))
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
	if(input[i]==(617+offset3))
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
	if(input[i]>(611+offset3))
{
	if(input[i]>(613+offset3))
{
	if(input[i]==(615+offset3))
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
	if(input[i]==(613+offset3))
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
	if(input[i]>(609+offset3))
{
	if(input[i]==(611+offset3))
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
	if(input[i]==(609+offset3))
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
	if(input[i]>(591+offset3))
{
	if(input[i]>(599+offset3))
{
	if(input[i]>(603+offset3))
{
	if(input[i]>(605+offset3))
{
	if(input[i]==(607+offset3))
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
	if(input[i]==(605+offset3))
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
	if(input[i]>(601+offset3))
{
	if(input[i]==(603+offset3))
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
	if(input[i]==(601+offset3))
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
	if(input[i]>(595+offset3))
{
	if(input[i]>(597+offset3))
{
	if(input[i]==(599+offset3))
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
	if(input[i]==(597+offset3))
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
	if(input[i]>(593+offset3))
{
	if(input[i]==(595+offset3))
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
	if(input[i]==(593+offset3))
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
	if(input[i]>(583+offset3))
{
	if(input[i]>(587+offset3))
{
	if(input[i]>(589+offset3))
{
	if(input[i]==(591+offset3))
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
	if(input[i]==(589+offset3))
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
	if(input[i]>(585+offset3))
{
	if(input[i]==(587+offset3))
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
	if(input[i]==(585+offset3))
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
	if(input[i]>(579+offset3))
{
	if(input[i]>(581+offset3))
{
	if(input[i]==(583+offset3))
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
	if(input[i]==(581+offset3))
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
	if(input[i]>(577+offset3))
{
	if(input[i]==(579+offset3))
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
	if(input[i]==(577+offset3))
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
	if(input[i]>(543+offset3))
{
	if(input[i]>(559+offset3))
{
	if(input[i]>(567+offset3))
{
	if(input[i]>(571+offset3))
{
	if(input[i]>(573+offset3))
{
	if(input[i]==(575+offset3))
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
	if(input[i]==(573+offset3))
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
	if(input[i]>(569+offset3))
{
	if(input[i]==(571+offset3))
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
	if(input[i]==(569+offset3))
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
	if(input[i]>(563+offset3))
{
	if(input[i]>(565+offset3))
{
	if(input[i]==(567+offset3))
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
	if(input[i]==(565+offset3))
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
	if(input[i]>(561+offset3))
{
	if(input[i]==(563+offset3))
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
	if(input[i]==(561+offset3))
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
	if(input[i]>(551+offset3))
{
	if(input[i]>(555+offset3))
{
	if(input[i]>(557+offset3))
{
	if(input[i]==(559+offset3))
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
	if(input[i]==(557+offset3))
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
	if(input[i]>(553+offset3))
{
	if(input[i]==(555+offset3))
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
	if(input[i]==(553+offset3))
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
	if(input[i]>(547+offset3))
{
	if(input[i]>(549+offset3))
{
	if(input[i]==(551+offset3))
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
	if(input[i]==(549+offset3))
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
	if(input[i]>(545+offset3))
{
	if(input[i]==(547+offset3))
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
	if(input[i]==(545+offset3))
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
	if(input[i]>(527+offset3))
{
	if(input[i]>(535+offset3))
{
	if(input[i]>(539+offset3))
{
	if(input[i]>(541+offset3))
{
	if(input[i]==(543+offset3))
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
	if(input[i]==(541+offset3))
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
	if(input[i]>(537+offset3))
{
	if(input[i]==(539+offset3))
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
	if(input[i]==(537+offset3))
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
	if(input[i]>(531+offset3))
{
	if(input[i]>(533+offset3))
{
	if(input[i]==(535+offset3))
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
	if(input[i]==(533+offset3))
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
	if(input[i]>(529+offset3))
{
	if(input[i]==(531+offset3))
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
	if(input[i]==(529+offset3))
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
	if(input[i]>(519+offset3))
{
	if(input[i]>(523+offset3))
{
	if(input[i]>(525+offset3))
{
	if(input[i]==(527+offset3))
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
	if(input[i]==(525+offset3))
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
	if(input[i]>(521+offset3))
{
	if(input[i]==(523+offset3))
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
	if(input[i]==(521+offset3))
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
	if(input[i]>(515+offset3))
{
	if(input[i]>(517+offset3))
{
	if(input[i]==(519+offset3))
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
	if(input[i]==(517+offset3))
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
	if(input[i]>(513+offset3))
{
	if(input[i]==(515+offset3))
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
	if(input[i]==(513+offset3))
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
	if(input[i]>(255+offset3))
{
	if(input[i]>(383+offset3))
{
	if(input[i]>(447+offset3))
{
	if(input[i]>(479+offset3))
{
	if(input[i]>(495+offset3))
{
	if(input[i]>(503+offset3))
{
	if(input[i]>(507+offset3))
{
	if(input[i]>(509+offset3))
{
	if(input[i]==(511+offset3))
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
	if(input[i]==(509+offset3))
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
	if(input[i]>(505+offset3))
{
	if(input[i]==(507+offset3))
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
	if(input[i]==(505+offset3))
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
	if(input[i]>(499+offset3))
{
	if(input[i]>(501+offset3))
{
	if(input[i]==(503+offset3))
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
	if(input[i]==(501+offset3))
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
	if(input[i]>(497+offset3))
{
	if(input[i]==(499+offset3))
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
	if(input[i]==(497+offset3))
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
	if(input[i]>(487+offset3))
{
	if(input[i]>(491+offset3))
{
	if(input[i]>(493+offset3))
{
	if(input[i]==(495+offset3))
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
	if(input[i]==(493+offset3))
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
	if(input[i]>(489+offset3))
{
	if(input[i]==(491+offset3))
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
	if(input[i]==(489+offset3))
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
	if(input[i]>(483+offset3))
{
	if(input[i]>(485+offset3))
{
	if(input[i]==(487+offset3))
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
	if(input[i]==(485+offset3))
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
	if(input[i]>(481+offset3))
{
	if(input[i]==(483+offset3))
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
	if(input[i]==(481+offset3))
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
	if(input[i]>(463+offset3))
{
	if(input[i]>(471+offset3))
{
	if(input[i]>(475+offset3))
{
	if(input[i]>(477+offset3))
{
	if(input[i]==(479+offset3))
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
	if(input[i]==(477+offset3))
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
	if(input[i]>(473+offset3))
{
	if(input[i]==(475+offset3))
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
	if(input[i]==(473+offset3))
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
	if(input[i]>(467+offset3))
{
	if(input[i]>(469+offset3))
{
	if(input[i]==(471+offset3))
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
	if(input[i]==(469+offset3))
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
	if(input[i]>(465+offset3))
{
	if(input[i]==(467+offset3))
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
	if(input[i]==(465+offset3))
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
	if(input[i]>(455+offset3))
{
	if(input[i]>(459+offset3))
{
	if(input[i]>(461+offset3))
{
	if(input[i]==(463+offset3))
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
	if(input[i]==(461+offset3))
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
	if(input[i]>(457+offset3))
{
	if(input[i]==(459+offset3))
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
	if(input[i]==(457+offset3))
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
	if(input[i]>(451+offset3))
{
	if(input[i]>(453+offset3))
{
	if(input[i]==(455+offset3))
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
	if(input[i]==(453+offset3))
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
	if(input[i]>(449+offset3))
{
	if(input[i]==(451+offset3))
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
	if(input[i]==(449+offset3))
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
	if(input[i]>(415+offset3))
{
	if(input[i]>(431+offset3))
{
	if(input[i]>(439+offset3))
{
	if(input[i]>(443+offset3))
{
	if(input[i]>(445+offset3))
{
	if(input[i]==(447+offset3))
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
	if(input[i]==(445+offset3))
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
	if(input[i]>(441+offset3))
{
	if(input[i]==(443+offset3))
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
	if(input[i]==(441+offset3))
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
	if(input[i]>(435+offset3))
{
	if(input[i]>(437+offset3))
{
	if(input[i]==(439+offset3))
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
	if(input[i]==(437+offset3))
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
	if(input[i]>(433+offset3))
{
	if(input[i]==(435+offset3))
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
	if(input[i]==(433+offset3))
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
	if(input[i]>(423+offset3))
{
	if(input[i]>(427+offset3))
{
	if(input[i]>(429+offset3))
{
	if(input[i]==(431+offset3))
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
	if(input[i]==(429+offset3))
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
	if(input[i]>(425+offset3))
{
	if(input[i]==(427+offset3))
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
	if(input[i]==(425+offset3))
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
	if(input[i]>(419+offset3))
{
	if(input[i]>(421+offset3))
{
	if(input[i]==(423+offset3))
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
	if(input[i]==(421+offset3))
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
	if(input[i]>(417+offset3))
{
	if(input[i]==(419+offset3))
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
	if(input[i]==(417+offset3))
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
	if(input[i]>(399+offset3))
{
	if(input[i]>(407+offset3))
{
	if(input[i]>(411+offset3))
{
	if(input[i]>(413+offset3))
{
	if(input[i]==(415+offset3))
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
	if(input[i]==(413+offset3))
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
	if(input[i]>(409+offset3))
{
	if(input[i]==(411+offset3))
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
	if(input[i]==(409+offset3))
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
	if(input[i]>(403+offset3))
{
	if(input[i]>(405+offset3))
{
	if(input[i]==(407+offset3))
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
	if(input[i]==(405+offset3))
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
	if(input[i]>(401+offset3))
{
	if(input[i]==(403+offset3))
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
	if(input[i]==(401+offset3))
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
	if(input[i]>(391+offset3))
{
	if(input[i]>(395+offset3))
{
	if(input[i]>(397+offset3))
{
	if(input[i]==(399+offset3))
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
	if(input[i]==(397+offset3))
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
	if(input[i]>(393+offset3))
{
	if(input[i]==(395+offset3))
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
	if(input[i]==(393+offset3))
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
	if(input[i]>(387+offset3))
{
	if(input[i]>(389+offset3))
{
	if(input[i]==(391+offset3))
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
	if(input[i]==(389+offset3))
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
	if(input[i]>(385+offset3))
{
	if(input[i]==(387+offset3))
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
	if(input[i]==(385+offset3))
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
	if(input[i]>(319+offset3))
{
	if(input[i]>(351+offset3))
{
	if(input[i]>(367+offset3))
{
	if(input[i]>(375+offset3))
{
	if(input[i]>(379+offset3))
{
	if(input[i]>(381+offset3))
{
	if(input[i]==(383+offset3))
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
	if(input[i]==(381+offset3))
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
	if(input[i]>(377+offset3))
{
	if(input[i]==(379+offset3))
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
	if(input[i]==(377+offset3))
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
	if(input[i]>(371+offset3))
{
	if(input[i]>(373+offset3))
{
	if(input[i]==(375+offset3))
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
	if(input[i]==(373+offset3))
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
	if(input[i]>(369+offset3))
{
	if(input[i]==(371+offset3))
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
	if(input[i]==(369+offset3))
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
	if(input[i]>(359+offset3))
{
	if(input[i]>(363+offset3))
{
	if(input[i]>(365+offset3))
{
	if(input[i]==(367+offset3))
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
	if(input[i]==(365+offset3))
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
	if(input[i]>(361+offset3))
{
	if(input[i]==(363+offset3))
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
	if(input[i]==(361+offset3))
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
	if(input[i]>(355+offset3))
{
	if(input[i]>(357+offset3))
{
	if(input[i]==(359+offset3))
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
	if(input[i]==(357+offset3))
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
	if(input[i]>(353+offset3))
{
	if(input[i]==(355+offset3))
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
	if(input[i]==(353+offset3))
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
	if(input[i]>(335+offset3))
{
	if(input[i]>(343+offset3))
{
	if(input[i]>(347+offset3))
{
	if(input[i]>(349+offset3))
{
	if(input[i]==(351+offset3))
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
	if(input[i]==(349+offset3))
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
	if(input[i]>(345+offset3))
{
	if(input[i]==(347+offset3))
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
	if(input[i]==(345+offset3))
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
	if(input[i]>(339+offset3))
{
	if(input[i]>(341+offset3))
{
	if(input[i]==(343+offset3))
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
	if(input[i]==(341+offset3))
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
	if(input[i]>(337+offset3))
{
	if(input[i]==(339+offset3))
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
	if(input[i]==(337+offset3))
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
	if(input[i]>(327+offset3))
{
	if(input[i]>(331+offset3))
{
	if(input[i]>(333+offset3))
{
	if(input[i]==(335+offset3))
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
	if(input[i]==(333+offset3))
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
	if(input[i]>(329+offset3))
{
	if(input[i]==(331+offset3))
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
	if(input[i]==(329+offset3))
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
	if(input[i]>(323+offset3))
{
	if(input[i]>(325+offset3))
{
	if(input[i]==(327+offset3))
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
	if(input[i]==(325+offset3))
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
	if(input[i]>(321+offset3))
{
	if(input[i]==(323+offset3))
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
	if(input[i]==(321+offset3))
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
	if(input[i]>(287+offset3))
{
	if(input[i]>(303+offset3))
{
	if(input[i]>(311+offset3))
{
	if(input[i]>(315+offset3))
{
	if(input[i]>(317+offset3))
{
	if(input[i]==(319+offset3))
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
	if(input[i]==(317+offset3))
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
	if(input[i]>(313+offset3))
{
	if(input[i]==(315+offset3))
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
	if(input[i]==(313+offset3))
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
	if(input[i]>(307+offset3))
{
	if(input[i]>(309+offset3))
{
	if(input[i]==(311+offset3))
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
	if(input[i]==(309+offset3))
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
	if(input[i]>(305+offset3))
{
	if(input[i]==(307+offset3))
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
	if(input[i]==(305+offset3))
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
	if(input[i]>(295+offset3))
{
	if(input[i]>(299+offset3))
{
	if(input[i]>(301+offset3))
{
	if(input[i]==(303+offset3))
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
	if(input[i]==(301+offset3))
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
	if(input[i]>(297+offset3))
{
	if(input[i]==(299+offset3))
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
	if(input[i]==(297+offset3))
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
	if(input[i]>(291+offset3))
{
	if(input[i]>(293+offset3))
{
	if(input[i]==(295+offset3))
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
	if(input[i]==(293+offset3))
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
	if(input[i]>(289+offset3))
{
	if(input[i]==(291+offset3))
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
	if(input[i]==(289+offset3))
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
	if(input[i]>(271+offset3))
{
	if(input[i]>(279+offset3))
{
	if(input[i]>(283+offset3))
{
	if(input[i]>(285+offset3))
{
	if(input[i]==(287+offset3))
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
	if(input[i]==(285+offset3))
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
	if(input[i]>(281+offset3))
{
	if(input[i]==(283+offset3))
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
	if(input[i]==(281+offset3))
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
	if(input[i]>(275+offset3))
{
	if(input[i]>(277+offset3))
{
	if(input[i]==(279+offset3))
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
	if(input[i]==(277+offset3))
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
	if(input[i]>(273+offset3))
{
	if(input[i]==(275+offset3))
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
	if(input[i]==(273+offset3))
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
	if(input[i]>(263+offset3))
{
	if(input[i]>(267+offset3))
{
	if(input[i]>(269+offset3))
{
	if(input[i]==(271+offset3))
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
	if(input[i]==(269+offset3))
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
	if(input[i]>(265+offset3))
{
	if(input[i]==(267+offset3))
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
	if(input[i]==(265+offset3))
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
	if(input[i]>(259+offset3))
{
	if(input[i]>(261+offset3))
{
	if(input[i]==(263+offset3))
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
	if(input[i]==(261+offset3))
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
	if(input[i]>(257+offset3))
{
	if(input[i]==(259+offset3))
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
	if(input[i]==(257+offset3))
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
	if(input[i]>(127+offset3))
{
	if(input[i]>(191+offset3))
{
	if(input[i]>(223+offset3))
{
	if(input[i]>(239+offset3))
{
	if(input[i]>(247+offset3))
{
	if(input[i]>(251+offset3))
{
	if(input[i]>(253+offset3))
{
	if(input[i]==(255+offset3))
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
	if(input[i]==(253+offset3))
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
	if(input[i]>(249+offset3))
{
	if(input[i]==(251+offset3))
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
	if(input[i]==(249+offset3))
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
	if(input[i]>(243+offset3))
{
	if(input[i]>(245+offset3))
{
	if(input[i]==(247+offset3))
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
	if(input[i]==(245+offset3))
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
	if(input[i]>(241+offset3))
{
	if(input[i]==(243+offset3))
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
	if(input[i]==(241+offset3))
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
	if(input[i]>(231+offset3))
{
	if(input[i]>(235+offset3))
{
	if(input[i]>(237+offset3))
{
	if(input[i]==(239+offset3))
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
	if(input[i]==(237+offset3))
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
	if(input[i]>(233+offset3))
{
	if(input[i]==(235+offset3))
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
	if(input[i]==(233+offset3))
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
	if(input[i]>(227+offset3))
{
	if(input[i]>(229+offset3))
{
	if(input[i]==(231+offset3))
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
	if(input[i]==(229+offset3))
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
	if(input[i]>(225+offset3))
{
	if(input[i]==(227+offset3))
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
	if(input[i]==(225+offset3))
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
	if(input[i]>(207+offset3))
{
	if(input[i]>(215+offset3))
{
	if(input[i]>(219+offset3))
{
	if(input[i]>(221+offset3))
{
	if(input[i]==(223+offset3))
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
	if(input[i]==(221+offset3))
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
	if(input[i]>(217+offset3))
{
	if(input[i]==(219+offset3))
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
	if(input[i]==(217+offset3))
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
	if(input[i]>(211+offset3))
{
	if(input[i]>(213+offset3))
{
	if(input[i]==(215+offset3))
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
	if(input[i]==(213+offset3))
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
	if(input[i]>(209+offset3))
{
	if(input[i]==(211+offset3))
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
	if(input[i]==(209+offset3))
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
	if(input[i]>(199+offset3))
{
	if(input[i]>(203+offset3))
{
	if(input[i]>(205+offset3))
{
	if(input[i]==(207+offset3))
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
	if(input[i]==(205+offset3))
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
	if(input[i]>(201+offset3))
{
	if(input[i]==(203+offset3))
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
	if(input[i]==(201+offset3))
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
	if(input[i]>(195+offset3))
{
	if(input[i]>(197+offset3))
{
	if(input[i]==(199+offset3))
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
	if(input[i]==(197+offset3))
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
	if(input[i]>(193+offset3))
{
	if(input[i]==(195+offset3))
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
	if(input[i]==(193+offset3))
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
	if(input[i]>(159+offset3))
{
	if(input[i]>(175+offset3))
{
	if(input[i]>(183+offset3))
{
	if(input[i]>(187+offset3))
{
	if(input[i]>(189+offset3))
{
	if(input[i]==(191+offset3))
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
	if(input[i]==(189+offset3))
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
	if(input[i]>(185+offset3))
{
	if(input[i]==(187+offset3))
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
	if(input[i]==(185+offset3))
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
	if(input[i]>(179+offset3))
{
	if(input[i]>(181+offset3))
{
	if(input[i]==(183+offset3))
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
	if(input[i]==(181+offset3))
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
	if(input[i]>(177+offset3))
{
	if(input[i]==(179+offset3))
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
	if(input[i]==(177+offset3))
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
	if(input[i]>(167+offset3))
{
	if(input[i]>(171+offset3))
{
	if(input[i]>(173+offset3))
{
	if(input[i]==(175+offset3))
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
	if(input[i]==(173+offset3))
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
	if(input[i]>(169+offset3))
{
	if(input[i]==(171+offset3))
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
	if(input[i]==(169+offset3))
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
	if(input[i]>(163+offset3))
{
	if(input[i]>(165+offset3))
{
	if(input[i]==(167+offset3))
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
	if(input[i]==(165+offset3))
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
	if(input[i]>(161+offset3))
{
	if(input[i]==(163+offset3))
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
	if(input[i]==(161+offset3))
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
	if(input[i]>(143+offset3))
{
	if(input[i]>(151+offset3))
{
	if(input[i]>(155+offset3))
{
	if(input[i]>(157+offset3))
{
	if(input[i]==(159+offset3))
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
	if(input[i]==(157+offset3))
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
	if(input[i]>(153+offset3))
{
	if(input[i]==(155+offset3))
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
	if(input[i]==(153+offset3))
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
	if(input[i]>(147+offset3))
{
	if(input[i]>(149+offset3))
{
	if(input[i]==(151+offset3))
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
	if(input[i]==(149+offset3))
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
	if(input[i]>(145+offset3))
{
	if(input[i]==(147+offset3))
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
	if(input[i]==(145+offset3))
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
	if(input[i]>(135+offset3))
{
	if(input[i]>(139+offset3))
{
	if(input[i]>(141+offset3))
{
	if(input[i]==(143+offset3))
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
	if(input[i]==(141+offset3))
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
	if(input[i]>(137+offset3))
{
	if(input[i]==(139+offset3))
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
	if(input[i]==(137+offset3))
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
	if(input[i]>(131+offset3))
{
	if(input[i]>(133+offset3))
{
	if(input[i]==(135+offset3))
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
	if(input[i]==(133+offset3))
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
	if(input[i]>(129+offset3))
{
	if(input[i]==(131+offset3))
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
	if(input[i]==(129+offset3))
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
	if(input[i]>(63+offset3))
{
	if(input[i]>(95+offset3))
{
	if(input[i]>(111+offset3))
{
	if(input[i]>(119+offset3))
{
	if(input[i]>(123+offset3))
{
	if(input[i]>(125+offset3))
{
	if(input[i]==(127+offset3))
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
	if(input[i]==(125+offset3))
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
	if(input[i]>(121+offset3))
{
	if(input[i]==(123+offset3))
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
	if(input[i]==(121+offset3))
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
	if(input[i]>(115+offset3))
{
	if(input[i]>(117+offset3))
{
	if(input[i]==(119+offset3))
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
	if(input[i]==(117+offset3))
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
	if(input[i]>(113+offset3))
{
	if(input[i]==(115+offset3))
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
	if(input[i]==(113+offset3))
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
	if(input[i]>(103+offset3))
{
	if(input[i]>(107+offset3))
{
	if(input[i]>(109+offset3))
{
	if(input[i]==(111+offset3))
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
	if(input[i]==(109+offset3))
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
	if(input[i]>(105+offset3))
{
	if(input[i]==(107+offset3))
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
	if(input[i]==(105+offset3))
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
	if(input[i]>(99+offset3))
{
	if(input[i]>(101+offset3))
{
	if(input[i]==(103+offset3))
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
	if(input[i]==(101+offset3))
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
	if(input[i]>(97+offset3))
{
	if(input[i]==(99+offset3))
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
	if(input[i]==(97+offset3))
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
	if(input[i]>(79+offset3))
{
	if(input[i]>(87+offset3))
{
	if(input[i]>(91+offset3))
{
	if(input[i]>(93+offset3))
{
	if(input[i]==(95+offset3))
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
	if(input[i]==(93+offset3))
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
	if(input[i]>(89+offset3))
{
	if(input[i]==(91+offset3))
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
	if(input[i]==(89+offset3))
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
	if(input[i]>(83+offset3))
{
	if(input[i]>(85+offset3))
{
	if(input[i]==(87+offset3))
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
	if(input[i]==(85+offset3))
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
	if(input[i]>(81+offset3))
{
	if(input[i]==(83+offset3))
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
	if(input[i]==(81+offset3))
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
	if(input[i]>(71+offset3))
{
	if(input[i]>(75+offset3))
{
	if(input[i]>(77+offset3))
{
	if(input[i]==(79+offset3))
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
	if(input[i]==(77+offset3))
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
	if(input[i]>(73+offset3))
{
	if(input[i]==(75+offset3))
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
	if(input[i]==(73+offset3))
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
	if(input[i]>(67+offset3))
{
	if(input[i]>(69+offset3))
{
	if(input[i]==(71+offset3))
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
	if(input[i]==(69+offset3))
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
	if(input[i]>(65+offset3))
{
	if(input[i]==(67+offset3))
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
	if(input[i]==(65+offset3))
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
	if(input[i]>(31+offset3))
{
	if(input[i]>(47+offset3))
{
	if(input[i]>(55+offset3))
{
	if(input[i]>(59+offset3))
{
	if(input[i]>(61+offset3))
{
	if(input[i]==(63+offset3))
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
	if(input[i]==(61+offset3))
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
	if(input[i]>(57+offset3))
{
	if(input[i]==(59+offset3))
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
	if(input[i]==(57+offset3))
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
	if(input[i]>(51+offset3))
{
	if(input[i]>(53+offset3))
{
	if(input[i]==(55+offset3))
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
	if(input[i]==(53+offset3))
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
	if(input[i]>(49+offset3))
{
	if(input[i]==(51+offset3))
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
	if(input[i]==(49+offset3))
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
	if(input[i]>(39+offset3))
{
	if(input[i]>(43+offset3))
{
	if(input[i]>(45+offset3))
{
	if(input[i]==(47+offset3))
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
	if(input[i]==(45+offset3))
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
	if(input[i]>(41+offset3))
{
	if(input[i]==(43+offset3))
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
	if(input[i]==(41+offset3))
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
	if(input[i]>(35+offset3))
{
	if(input[i]>(37+offset3))
{
	if(input[i]==(39+offset3))
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
	if(input[i]==(37+offset3))
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
	if(input[i]>(33+offset3))
{
	if(input[i]==(35+offset3))
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
	if(input[i]==(33+offset3))
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
	if(input[i]>(15+offset3))
{
	if(input[i]>(23+offset3))
{
	if(input[i]>(27+offset3))
{
	if(input[i]>(29+offset3))
{
	if(input[i]==(31+offset3))
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
	if(input[i]==(29+offset3))
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
	if(input[i]>(25+offset3))
{
	if(input[i]==(27+offset3))
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
	if(input[i]==(25+offset3))
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
	if(input[i]>(19+offset3))
{
	if(input[i]>(21+offset3))
{
	if(input[i]==(23+offset3))
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
	if(input[i]==(21+offset3))
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
	if(input[i]>(17+offset3))
{
	if(input[i]==(19+offset3))
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
	if(input[i]==(17+offset3))
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
	if(input[i]>(7+offset3))
{
	if(input[i]>(11+offset3))
{
	if(input[i]>(13+offset3))
{
	if(input[i]==(15+offset3))
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
	if(input[i]==(13+offset3))
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
	if(input[i]>(9+offset3))
{
	if(input[i]==(11+offset3))
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
	if(input[i]==(9+offset3))
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
	if(input[i]>(3+offset3))
{
	if(input[i]>(5+offset3))
{
	if(input[i]==(7+offset3))
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
	if(input[i]==(5+offset3))
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
	if(input[i]>(1+offset3))
{
	if(input[i]==(3+offset3))
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
	if(input[i]==(1+offset3))
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
