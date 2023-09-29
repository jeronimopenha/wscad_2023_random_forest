__global__ void RF_kernel(float *input, float *input1, float *input2, const float *TH, const int *table, const int n, const int offset0, float *vR)
{
    int i = blockIdx.x * blockDim.x + threadIdx.x;
    int next = 0, left, right, idx;
    float th;
    int v[4];

    int tab[3] = {1, 2, 3};

    v[1] = 12;
    v[2] = 128;
    v[3] = 1;

    if (i < n)
    {
        v[0] = input[i];

        idx = table[next] & 0x3;
        left = (table[next] >> 2) & 0xff;
        right = (table[next] >> 10) & 0xff;
        th = TH[next];
        next = (v[idx] > th) ? left : right;

        idx = table[next] & 0x3;
        left = (table[next] >> 2) & 0xff;
        right = (table[next] >> 10) & 0xff;
        th = TH[next];
        next += (v[idx] > th) ? left : right;

        idx = table[next] & 0x3;
        left = (table[next] >> 2) & 0xff;
        right = (table[next] >> 10) & 0xff;
        th = TH[next];
        next += (v[idx] > th) ? left : right;

        vR[i] = next;
    }
}

__global__ void RF_kernel(float *input, const float *TH, const int *table, const int n, const int offset0, float *vR)
{
    int i = blockIdx.x * blockDim.x + threadIdx.x;
    int next = 0, left, right, idx;
    float th;
    int v[4];

    v[1] = 12;
    v[2] = 128;
    v[3] = 1;

    if (i < n)
    {
        int v = input[i];

        // idx = table[next]&0x3;
        left = (table[next] >> 2) & 0xff;
        right = (table[next] >> 10) & 0xff;
        th = TH[next];
        next = (v > th) ? left : right;

        // idx = table[next]&0x3;
        left = (table[next] >> 2) & 0xff;
        right = (table[next] >> 10) & 0xff;
        th = TH[next];
        next = (v > th) ? left : right;

        // idx = table[next]&0x3;
        left = (table[next] >> 2) & 0xff;
        right = (table[next] >> 10) & 0xff;
        th = TH[next];
        next = (v > th) ? left : right;

        vR[i] = next;
    }
}

__global__ void RF_kernel(float *input, float *t, const int *table, const int n, const int offset0, float *vR)
{
    int i = blockIdx.x * blockDim.x + threadIdx.x;
    int next = 0, left, right, idx;
    float th;
    int v[4];

    __shared__ float TH[15];
    if (threadIdx.x < 15)
    {
        TH[threadIdx.x] = t[threadIdx.x];
    }

    v[1] = 12;
    v[2] = 128;
    v[3] = 1;

    if (i < n)
    {
        int v = input[i];

        // idx = table[next]&0x3;
        left = (table[next] >> 2) & 0xff;
        right = (table[next] >> 10) & 0xff;
        th = TH[next];
        next = (v > th) ? left : right;

        // idx = table[next]&0x3;
        left = (table[next] >> 2) & 0xff;
        right = (table[next] >> 10) & 0xff;
        th = TH[next];
        next = (v > th) ? left : right;

        // idx = table[next]&0x3;
        left = (table[next] >> 2) & 0xff;
        right = (table[next] >> 10) & 0xff;
        th = TH[next];
        next = (v > th) ? left : right;

        vR[i] = next;
    }
}

__global__ void RF_kernel_div_warp(float *input, float *input1, float *input2, const float *TH, const int *table, const int n, const int offset0, float *vR)
{
    int i = blockIdx.x * blockDim.x/2 + threadIdx.x%512;
    int next = 0, left, right, idx;
    float th;
    __shared__ int temp[1024];

    //rodar os de prof 5 e 6 com 4 árvores
    if(threadIdx.x < 512){
        //2 árvores
    }else{
        //outras duas
    }

    if (i < n)
    {
        //
    }

    __syncthreads();
    //retornar
}
