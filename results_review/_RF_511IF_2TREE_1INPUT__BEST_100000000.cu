#include <sys/time.h>
#include <cuda_runtime.h>
#include <stdio.h>
#include <stdlib.h>
#include <stdbool.h>
#include <time.h>

#define _BEST
#define TIMES 10
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
#define _2TREE
#define EXP_NAME "_RF_511IF_2TREE_1INPUT__BEST_100000000"

// RF_with_if

__global__ void RF_kernel(float *input, const int n, const int offset0, const int offset1, float *vR)
{
	int i = blockIdx.x * blockDim.x + threadIdx.x;
	if (i < n)
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
