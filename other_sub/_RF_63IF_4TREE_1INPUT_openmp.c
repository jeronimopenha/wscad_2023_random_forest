#include <sys/time.h>
#include <omp.h>
#include <stdio.h>
#include <stdlib.h>
#include <stdbool.h>
#include <time.h>
#include <string.h>

#define N_ELEM 50000000

 #define _RF_IF_1TREE_GLOBAL
// #define _RF_IF_2TREE_GLOBAL
//#define _RF_IF_3TREE_GLOBAL
// #define _RF_IF_4TREE_GLOBAL

void initData(float *ip, int size);
void registerTime(unsigned long int value);

#define _MOD 128

#if defined(_RF_IF_1TREE_GLOBAL)
#define EXP_NAME "_RF_IF_1TREE_GLOBAL"
#define _1TREE
#elif defined(_RF_IF_2TREE_GLOBAL)
#define EXP_NAME "_RF_IF_2TREE_GLOBAL"
#define _2TREE
#elif defined(_RF_IF_3TREE_GLOBAL)
#define EXP_NAME "_RF_IF_3TREE_GLOBAL"
#define _3TREE
#elif defined(_RF_IF_4TREE_GLOBAL)
#define EXP_NAME "_RF_IF_4TREE_GLOBAL"
#define _4TREE
#endif
// RF_with_if

void RF_kernel(float *input, const int n, const int offset0, const int offset1, const int offset2, const int offset3, float *vR)
{
	int nCpu = omp_get_num_procs();
	printf("\n[OPENMP] Available CPUs %d.\n", nCpu);
#pragma omp parallel shared(input, n, offset0, offset1, offset2, offset3, vR)
	{
		int thId = omp_get_thread_num();

		for (int i = thId; i < n; i += nCpu)
		{

			if (input[i] > (31 + offset0))
			{
				if (input[i] > (47 + offset0))
				{
					if (input[i] > (55 + offset0))
					{
						if (input[i] > (59 + offset0))
						{
							if (input[i] > (61 + offset0))
							{
								if (input[i] == (63 + offset0))
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
								if (input[i] == (61 + offset0))
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
							if (input[i] > (57 + offset0))
							{
								if (input[i] == (59 + offset0))
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
								if (input[i] == (57 + offset0))
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
						if (input[i] > (51 + offset0))
						{
							if (input[i] > (53 + offset0))
							{
								if (input[i] == (55 + offset0))
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
								if (input[i] == (53 + offset0))
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
							if (input[i] > (49 + offset0))
							{
								if (input[i] == (51 + offset0))
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
								if (input[i] == (49 + offset0))
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
					if (input[i] > (39 + offset0))
					{
						if (input[i] > (43 + offset0))
						{
							if (input[i] > (45 + offset0))
							{
								if (input[i] == (47 + offset0))
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
								if (input[i] == (45 + offset0))
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
							if (input[i] > (41 + offset0))
							{
								if (input[i] == (43 + offset0))
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
								if (input[i] == (41 + offset0))
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
						if (input[i] > (35 + offset0))
						{
							if (input[i] > (37 + offset0))
							{
								if (input[i] == (39 + offset0))
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
								if (input[i] == (37 + offset0))
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
							if (input[i] > (33 + offset0))
							{
								if (input[i] == (35 + offset0))
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
								if (input[i] == (33 + offset0))
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
				if (input[i] > (15 + offset0))
				{
					if (input[i] > (23 + offset0))
					{
						if (input[i] > (27 + offset0))
						{
							if (input[i] > (29 + offset0))
							{
								if (input[i] == (31 + offset0))
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
								if (input[i] == (29 + offset0))
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
							if (input[i] > (25 + offset0))
							{
								if (input[i] == (27 + offset0))
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
								if (input[i] == (25 + offset0))
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
						if (input[i] > (19 + offset0))
						{
							if (input[i] > (21 + offset0))
							{
								if (input[i] == (23 + offset0))
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
								if (input[i] == (21 + offset0))
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
							if (input[i] > (17 + offset0))
							{
								if (input[i] == (19 + offset0))
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
								if (input[i] == (17 + offset0))
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
					if (input[i] > (7 + offset0))
					{
						if (input[i] > (11 + offset0))
						{
							if (input[i] > (13 + offset0))
							{
								if (input[i] == (15 + offset0))
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
								if (input[i] == (13 + offset0))
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
							if (input[i] > (9 + offset0))
							{
								if (input[i] == (11 + offset0))
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
								if (input[i] == (9 + offset0))
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
						if (input[i] > (3 + offset0))
						{
							if (input[i] > (5 + offset0))
							{
								if (input[i] == (7 + offset0))
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
								if (input[i] == (5 + offset0))
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
							if (input[i] > (1 + offset0))
							{
								if (input[i] == (3 + offset0))
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
								if (input[i] == (1 + offset0))
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

#if defined(_2TREE) || defined(_3TREE) || defined(_4TREE)

			if (input[i] > (31 + offset1))
			{
				if (input[i] > (47 + offset1))
				{
					if (input[i] > (55 + offset1))
					{
						if (input[i] > (59 + offset1))
						{
							if (input[i] > (61 + offset1))
							{
								if (input[i] == (63 + offset1))
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
								if (input[i] == (61 + offset1))
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
							if (input[i] > (57 + offset1))
							{
								if (input[i] == (59 + offset1))
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
								if (input[i] == (57 + offset1))
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
						if (input[i] > (51 + offset1))
						{
							if (input[i] > (53 + offset1))
							{
								if (input[i] == (55 + offset1))
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
								if (input[i] == (53 + offset1))
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
							if (input[i] > (49 + offset1))
							{
								if (input[i] == (51 + offset1))
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
								if (input[i] == (49 + offset1))
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
					if (input[i] > (39 + offset1))
					{
						if (input[i] > (43 + offset1))
						{
							if (input[i] > (45 + offset1))
							{
								if (input[i] == (47 + offset1))
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
								if (input[i] == (45 + offset1))
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
							if (input[i] > (41 + offset1))
							{
								if (input[i] == (43 + offset1))
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
								if (input[i] == (41 + offset1))
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
						if (input[i] > (35 + offset1))
						{
							if (input[i] > (37 + offset1))
							{
								if (input[i] == (39 + offset1))
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
								if (input[i] == (37 + offset1))
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
							if (input[i] > (33 + offset1))
							{
								if (input[i] == (35 + offset1))
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
								if (input[i] == (33 + offset1))
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
				if (input[i] > (15 + offset1))
				{
					if (input[i] > (23 + offset1))
					{
						if (input[i] > (27 + offset1))
						{
							if (input[i] > (29 + offset1))
							{
								if (input[i] == (31 + offset1))
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
								if (input[i] == (29 + offset1))
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
							if (input[i] > (25 + offset1))
							{
								if (input[i] == (27 + offset1))
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
								if (input[i] == (25 + offset1))
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
						if (input[i] > (19 + offset1))
						{
							if (input[i] > (21 + offset1))
							{
								if (input[i] == (23 + offset1))
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
								if (input[i] == (21 + offset1))
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
							if (input[i] > (17 + offset1))
							{
								if (input[i] == (19 + offset1))
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
								if (input[i] == (17 + offset1))
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
					if (input[i] > (7 + offset1))
					{
						if (input[i] > (11 + offset1))
						{
							if (input[i] > (13 + offset1))
							{
								if (input[i] == (15 + offset1))
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
								if (input[i] == (13 + offset1))
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
							if (input[i] > (9 + offset1))
							{
								if (input[i] == (11 + offset1))
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
								if (input[i] == (9 + offset1))
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
						if (input[i] > (3 + offset1))
						{
							if (input[i] > (5 + offset1))
							{
								if (input[i] == (7 + offset1))
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
								if (input[i] == (5 + offset1))
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
							if (input[i] > (1 + offset1))
							{
								if (input[i] == (3 + offset1))
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
								if (input[i] == (1 + offset1))
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

#endif
#if defined(_3TREE) || defined(_4TREE)

			if (input[i] > (31 + offset2))
			{
				if (input[i] > (47 + offset2))
				{
					if (input[i] > (55 + offset2))
					{
						if (input[i] > (59 + offset2))
						{
							if (input[i] > (61 + offset2))
							{
								if (input[i] == (63 + offset2))
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
								if (input[i] == (61 + offset2))
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
							if (input[i] > (57 + offset2))
							{
								if (input[i] == (59 + offset2))
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
								if (input[i] == (57 + offset2))
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
						if (input[i] > (51 + offset2))
						{
							if (input[i] > (53 + offset2))
							{
								if (input[i] == (55 + offset2))
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
								if (input[i] == (53 + offset2))
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
							if (input[i] > (49 + offset2))
							{
								if (input[i] == (51 + offset2))
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
								if (input[i] == (49 + offset2))
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
					if (input[i] > (39 + offset2))
					{
						if (input[i] > (43 + offset2))
						{
							if (input[i] > (45 + offset2))
							{
								if (input[i] == (47 + offset2))
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
								if (input[i] == (45 + offset2))
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
							if (input[i] > (41 + offset2))
							{
								if (input[i] == (43 + offset2))
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
								if (input[i] == (41 + offset2))
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
						if (input[i] > (35 + offset2))
						{
							if (input[i] > (37 + offset2))
							{
								if (input[i] == (39 + offset2))
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
								if (input[i] == (37 + offset2))
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
							if (input[i] > (33 + offset2))
							{
								if (input[i] == (35 + offset2))
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
								if (input[i] == (33 + offset2))
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
				if (input[i] > (15 + offset2))
				{
					if (input[i] > (23 + offset2))
					{
						if (input[i] > (27 + offset2))
						{
							if (input[i] > (29 + offset2))
							{
								if (input[i] == (31 + offset2))
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
								if (input[i] == (29 + offset2))
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
							if (input[i] > (25 + offset2))
							{
								if (input[i] == (27 + offset2))
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
								if (input[i] == (25 + offset2))
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
						if (input[i] > (19 + offset2))
						{
							if (input[i] > (21 + offset2))
							{
								if (input[i] == (23 + offset2))
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
								if (input[i] == (21 + offset2))
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
							if (input[i] > (17 + offset2))
							{
								if (input[i] == (19 + offset2))
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
								if (input[i] == (17 + offset2))
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
					if (input[i] > (7 + offset2))
					{
						if (input[i] > (11 + offset2))
						{
							if (input[i] > (13 + offset2))
							{
								if (input[i] == (15 + offset2))
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
								if (input[i] == (13 + offset2))
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
							if (input[i] > (9 + offset2))
							{
								if (input[i] == (11 + offset2))
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
								if (input[i] == (9 + offset2))
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
						if (input[i] > (3 + offset2))
						{
							if (input[i] > (5 + offset2))
							{
								if (input[i] == (7 + offset2))
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
								if (input[i] == (5 + offset2))
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
							if (input[i] > (1 + offset2))
							{
								if (input[i] == (3 + offset2))
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
								if (input[i] == (1 + offset2))
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

#endif
#if defined(_4TREE)

			if (input[i] > (31 + offset3))
			{
				if (input[i] > (47 + offset3))
				{
					if (input[i] > (55 + offset3))
					{
						if (input[i] > (59 + offset3))
						{
							if (input[i] > (61 + offset3))
							{
								if (input[i] == (63 + offset3))
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
								if (input[i] == (61 + offset3))
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
							if (input[i] > (57 + offset3))
							{
								if (input[i] == (59 + offset3))
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
								if (input[i] == (57 + offset3))
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
						if (input[i] > (51 + offset3))
						{
							if (input[i] > (53 + offset3))
							{
								if (input[i] == (55 + offset3))
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
								if (input[i] == (53 + offset3))
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
							if (input[i] > (49 + offset3))
							{
								if (input[i] == (51 + offset3))
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
								if (input[i] == (49 + offset3))
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
					if (input[i] > (39 + offset3))
					{
						if (input[i] > (43 + offset3))
						{
							if (input[i] > (45 + offset3))
							{
								if (input[i] == (47 + offset3))
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
								if (input[i] == (45 + offset3))
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
							if (input[i] > (41 + offset3))
							{
								if (input[i] == (43 + offset3))
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
								if (input[i] == (41 + offset3))
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
						if (input[i] > (35 + offset3))
						{
							if (input[i] > (37 + offset3))
							{
								if (input[i] == (39 + offset3))
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
								if (input[i] == (37 + offset3))
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
							if (input[i] > (33 + offset3))
							{
								if (input[i] == (35 + offset3))
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
								if (input[i] == (33 + offset3))
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
				if (input[i] > (15 + offset3))
				{
					if (input[i] > (23 + offset3))
					{
						if (input[i] > (27 + offset3))
						{
							if (input[i] > (29 + offset3))
							{
								if (input[i] == (31 + offset3))
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
								if (input[i] == (29 + offset3))
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
							if (input[i] > (25 + offset3))
							{
								if (input[i] == (27 + offset3))
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
								if (input[i] == (25 + offset3))
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
						if (input[i] > (19 + offset3))
						{
							if (input[i] > (21 + offset3))
							{
								if (input[i] == (23 + offset3))
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
								if (input[i] == (21 + offset3))
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
							if (input[i] > (17 + offset3))
							{
								if (input[i] == (19 + offset3))
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
								if (input[i] == (17 + offset3))
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
					if (input[i] > (7 + offset3))
					{
						if (input[i] > (11 + offset3))
						{
							if (input[i] > (13 + offset3))
							{
								if (input[i] == (15 + offset3))
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
								if (input[i] == (13 + offset3))
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
							if (input[i] > (9 + offset3))
							{
								if (input[i] == (11 + offset3))
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
								if (input[i] == (9 + offset3))
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
						if (input[i] > (3 + offset3))
						{
							if (input[i] > (5 + offset3))
							{
								if (input[i] == (7 + offset3))
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
								if (input[i] == (5 + offset3))
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
							if (input[i] > (1 + offset3))
							{
								if (input[i] == (3 + offset3))
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
								if (input[i] == (1 + offset3))
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

#endif
		}
	}
}

int main(int argc, char **argv)
{
	unsigned long int elapsed_time;
	// set up device
	int dev = 0;
	printf("[OPENMP - Random Forest]: EXP %s\n", EXP_NAME);

	// set up data size of vectors
	int nElem = N_ELEM;
	printf("[OPENMP - Random Forest]: Vector Size %d\n", nElem);

	// malloc host memory
	size_t nBytes = nElem * sizeof(float);
	float *vR;
	vR = (float *)malloc(nBytes);
	float *input;
	input = (float *)malloc(nBytes);

	printf("[OPENMP - Random Forest]: Start Reading Dataset\n");
	initData(input, nElem);
	printf("[OPENMP - Random Forest]: Finished Reading Dataset\n");
	memset(vR, 0, nBytes);

	// record start event
	struct timeval stop, start;
	gettimeofday(&start, NULL);

	RF_kernel(input, nElem, 0, 0, 0, 0, vR);

	// calculate elapsed time
	gettimeofday(&stop, NULL);
	elapsed_time = (stop.tv_sec - start.tv_sec) * 1000000 + stop.tv_usec - start.tv_usec;
	registerTime(elapsed_time);

	// Verify the answers
	char flag = 1;
	for (int i = 0; i < nElem; i++)
	{
		if (i < 32)
		{
			printf("%.3f ", vR[i]);
		}
		if (input[i] != vR[i])
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

	// free host memory
	free(input);
	free(vR);
	return (0);
}

void initData(float *ip, int size)
{
	for (int i = 0; i < size; i++)
	{
		ip[i] = (float)(i % _MOD);
		// if (i < 32)
		// printf("%.2f ", ip[i]);
	}
	return;
}

void registerTime(unsigned long int value)
{
	printf("[OPENMP - Random Forest]: Time spent: %lu.\n", value);
}
