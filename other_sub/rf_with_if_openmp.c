#include <sys/time.h>
#include <omp.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#define N_ELEM 50000000
#define EXEC_TIMER 0

void initialData(float *ip, int size)
{

    for (int i = 0; i < size; i++)
    {
        ip[i] = (float)(rand() & 15);
    }
    return;
}
FILE *inFile;
FILE *outFile;

void readInFile(float **ip)
{
    FILE *file = fopen("Iris.csv", "r");
    if (file == NULL)
    {
        printf("[OPENMP]: Failed to open the file.\n");
        exit(1);
    }

    char line[1000];

    int row = 0;
    fgets(line, sizeof(line), file);
    while (fgets(line, sizeof(line), file))
    {
        char *token = strtok(line, ",");

        int column = 0;
        while (token != NULL)
        {
            ip[column][row] = atof(token);
            token = strtok(NULL, ",");
            column++;
        }

        row++;
        if (row > N_ELEM)
            break;
    }

    fclose(file);
}
void writeOutFile(int value)
{
    outFile = fopen("out_rf.csv", "a");
    fprintf(outFile, "%d\n", value);
    fclose(outFile);
}

void registerTime(float value)
{
    outFile = fopen("results.csv", "a");
    fprintf(outFile, ",%.4f", value);
    fclose(outFile);
}

void RF_with_IF(float *F0, float *F1, float *F2, float *F3, float *F4, int *P, const int N)
{
    int nCpu = omp_get_num_procs();
    printf("\n[OPENMP] Available CPUs %d.", nCpu);
#pragma omp parallel shared(F0, F1, F2, F3, F4, P)
    {
        int thId = omp_get_thread_num();
        // printf("\n[OPENMP] Thread %d initializing.", thId);
        for (int i = thId; i < N; i += nCpu)
        {
            int class0 = 0, class1 = 0, class2 = 0;
            if (F3[i] <= (0.7))
            {
                class0++;
            }
            else
            {
                if (F3[i] <= (1.75))
                {
                    if (F3[i] <= (1.45))
                    {
                        class1++;
                    }
                    else
                    {
                        class1++;
                    }
                }
                else
                {
                    class2++;
                }
            }

            if (F0[i] <= (5.95))
            {
                if (F2[i] <= (2.45))
                {
                    class0++;
                }
                else
                {
                    if (F2[i] <= (4.75))
                    {
                        class1++;
                    }
                    else
                    {
                        class2++;
                    }
                }
            }
            else
            {
                if (F3[i] <= (1.75))
                {
                    if (F1[i] <= (2.35))
                    {
                        class2++;
                    }
                    else
                    {
                        class1++;
                    }
                }
                else
                {
                    class2++;
                }
            }
            int p0 = (class0 > class1) ? 0 : 1;
            int Q0 = (class0 > class1) ? class0 : class1;
            int p1 = (class2 > Q0) ? 2 : p0;
            int Q1 = (class2 > Q0) ? class2 : Q0;
            P[i] = p1;
        }
        // printf("\n[OPENMP] Thread %d ending.", thId);
    }
}

int main(int argc, char **argv)
{

    float elapsed_time;
    // set up device
    int dev = 0;

    // set up data size of vectors
    int nElem = N_ELEM;
    printf("[OPENMP]: Vector Size %d\n", nElem);

    // malloc host memory
    size_t nBytes = nElem * sizeof(float);

    float *h_0, *h_1, *h_2, *h_3, *h_4;
    int *h_P;
    h_0 = (float *)malloc(nBytes);
    h_1 = (float *)malloc(nBytes);
    h_2 = (float *)malloc(nBytes);
    h_3 = (float *)malloc(nBytes);
    h_4 = (float *)malloc(nBytes);
    h_P = (int *)malloc(nBytes);

    printf("[OPENMP]: Start Reading Dataset\n");
    float *h[5] = {h_0, h_1, h_2, h_3, h_4};
    readInFile(h);
    printf("[OPENMP]: Finished Reading Dataset\n");

    memset(h_P, 0, nBytes);

    // invoke kernel at host side
    // record start event
    struct timeval stop, start;
    gettimeofday(&start, NULL);
    RF_with_IF(h_0, h_1, h_2, h_3, h_4, h_P, nElem);
    gettimeofday(&stop, NULL);
    // calculate elapsed time
    printf("[OPENMP]: RF with IF - execution time = %lu us\n", (stop.tv_sec - start.tv_sec) * 1000000 + stop.tv_usec - start.tv_usec); 

    // printf("[OPENMP]: RF with IF - execution time = %.6fms\n", elapsed_time);

    // registerTime(elapsed_time);

    printf("\n ");

    for (int i = 0; i < nElem; i++)
    {
        printf("%d ", h_P[i]);
    }

    // free host memory
    free(h_0);
    free(h_1);
    free(h_2);
    free(h_3);
    free(h_4);

    return (0);
}