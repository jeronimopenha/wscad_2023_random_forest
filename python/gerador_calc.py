import subprocess
import datetime


def gen_layers(levels: int) -> list():
    n_leaves = 2**levels
    layers = []
    counter = 1
    for l in range(levels + 1):
        layer = []
        for i in range(0, n_leaves // counter):
            if l == 0:
                layer.append(i)
            elif l == 1 or l == 2:
                layer.append(i * counter + 1)
            else:
                layer.append(i * counter + (counter - 1) // 2)
        counter = counter << 1
        layers.append(layer)
    return layers


def gerar_calc_core_ntrees(levels: int = 1, trees: int = 1) -> str:
    layers = gen_layers(levels)

    pat1 = ""
    pat1 += "int rt%d_%d_%d = (input[i] > (%d+offset%d));\n"
    pat1 += "int t%d_%d_%d = rt%d_%d_%d * (%d + (input[i] > (%d+offset%d)));\n"
    pat1 += "t%d_%d_%d += (1 - rt%d_%d_%d) * (input[i] > (%d+offset%d));\n"
    """
    int rt%d_%d_%d = (input[i] > (%d+offset%d));
    int t%d_%d_%d = rt%d_%d_%d * (%d + (input[i] > (%d+offset%d)));
    t%d_%d_%d += (1 - rt%d_%d_%d) * (input[i] > (%d+offset%d));
    """

    pat2 = ""
    pat2 += "int rt%d_%d_%d = (input[i] > (%d+offset%d));\n"
    pat2 += "int t%d_%d_%d = rt%d_%d_%d * (%d + t%d_%d_%d);\n"
    pat2 += "t%d_%d_%d += (1 - rt%d_%d_%d) * t%d_%d_%d;\n"

    """
    int rt%d_%d_%d = (input[i] > (%d+offset%d));
    int t%d_%d_%d = rt%d_%d_%d * (%d + t%d_%d);
    t%d_%d_%d += (1 - rt%d_%d_%d) * t%d_%d;
    """

    layers_str = []
    for t in range(trees):
        layers_str.append([])
        for l in range(2, levels + 1, 1):
            layers_str[t].append([])
            counter = 0
            for i in range(len(layers[l])):
                if l == 2:
                    """
                    int rt%d_%d_%d = (input[i] > (%d+offset%d));
                    int t%d_%d_%d = rt%d_%d_%d * (%d + (input[i] > (%d+offset%d)));
                    t%d_%d_%d += (1 - rt%d_%d_%d) * (input[i] > (%d+offset%d));
                    """
                    layers_str[t][l - 2].append(
                        pat1
                        % (
                            t,
                            l - 2,
                            i,
                            layers[l][i],
                            t,
                            t,
                            l - 2,
                            i,
                            t,
                            l - 2,
                            i,
                            2 ** (l - 1),
                            layers[l][i] + 1,
                            t,
                            t,
                            l - 2,
                            i,
                            t,
                            l - 2,
                            i,
                            layers[l][i] - 1,
                            t,
                        )
                    )
                else:
                    """
                    int rt%d_%d_%d = (input[i] > (%d+offset%d));
                    int t%d_%d_%d = rt%d_%d_%d * (%d + t%d_%d);
                    t%d_%d_%d += (1 - rt%d_%d_%d) * t%d_%d;
                    """
                    layers_str[t][l - 2].append(
                        pat2
                        % (
                            t,
                            l - 2,
                            i,
                            layers[l][i],
                            t,
                            t,
                            l - 2,
                            i,
                            t,
                            l - 2,
                            i,
                            2 ** (l - 1),
                            t,
                            l - 3,
                            counter + 1,
                            t,
                            l - 2,
                            i,
                            t,
                            l - 2,
                            i,
                            t,
                            l - 3,
                            counter,
                        )
                    )
                    counter += 2

    return layers_str


def gerar_cu_code(calc_core: list(), lv: int, trees: int) -> list():
    return_dic = {}

    calc_code_rdy = ""

    # corrigir o core do kernel
    for i in range(len(calc_core)):
        for j in range(len(calc_core[i])):
            for k in range(len(calc_core[i][j])):
                s = calc_core[i][j][k]
                calc_code_rdy += s + "\n"
    # create the return vector
    s = "vR[i] = t0_%d_0" % (lv - 2)
    for i in range(1, trees, 1):
        s += "+ (t0_%d_0 == t%d_%d_0)" % (lv - 2, i, lv - 2)
    s += ";\n"
    calc_code_rdy += s

    # print(calc_code_rdy)
    main_code = (
        "int main(int argc, char **argv)\n"
        + "{\n"
        + "\tfloat elapsed_time;\n"
        + "\t// set up device\n"
        + "\tint dev = 0;\n"
        + "\tcudaDeviceProp deviceProp;\n"
        + "\tCHECK(cudaGetDeviceProperties(&deviceProp, dev));\n"
        + '\tprintf("[CUDA - Random Forest]: EXP %s\\n", EXP_NAME);\n'
        + '\tprintf("[CUDA - Random Forest]: Using Device %d: %s\\n", dev, deviceProp.name);\n'
        + "\tCHECK(cudaSetDevice(dev));\n\n"
        + "\t// set up data size of vectors\n"
        + "\tint nElem = N_ELEM;\n"
        + '\tprintf("[CUDA - Random Forest]: Vector Size %d\\n", nElem);\n\n'
        + "\t// malloc host memory\n"
        + "\tsize_t nBytes = nElem * sizeof(float);\n"
        + "\tfloat *h_vR;\n"
        + "\th_vR = (float *)malloc(nBytes);\n"
        + "\tfloat *h_input;\n"
        + "\th_input = (float *)malloc(nBytes);\n\n"
        + '\tprintf("[CUDA - Random Forest]: Start Reading Dataset\\n");\n'
        + "\tinitData(h_input, nElem);\n"
        + '\tprintf("[CUDA - Random Forest]: Finished Reading Dataset\\n");\n'
        + "\tmemset(h_vR, 0, nBytes);\n\n"
        + "\t// malloc device global memory\n"
        + "\tfloat *d_vR;\n"
        + "\tCHECK(cudaMalloc((float **)&d_vR, nBytes));\n"
        + "\tfloat *d_input;\n"
        + "\tCHECK(cudaMalloc((float **)&d_input, nBytes));\n\n"
        + "\t// transfer data from host to device\n"
        + "\tCHECK(cudaMemcpy(d_input, h_input, nBytes, cudaMemcpyHostToDevice));\n\n"
        + "\t// invoke kernel at host side\n"
        + "\tint iLen = 512;\n"
        + "\tdim3 block(iLen);\n"
        + "\tdim3 grid((nElem + block.x - 1) / block.x);\n"
        + "\tcudaEvent_t start, stop;\n"
        + "\tCHECK(cudaEventCreate(&start));\n"
        + "\tCHECK(cudaEventCreate(&stop));\n\n"
        + "\t// record start event\n"
        + "\tCHECK(cudaEventRecord(start, 0));\n"
        + "#if defined(_2TREE)\n"
        + "\tRF_kernel<<<grid, block>>>(d_input, nElem, 0, 0, d_vR);\n"
        + "#elif defined(_3TREE)\n"
        + "\tRF_kernel<<<grid, block>>>(d_input, nElem, 0, 0, 0, d_vR);\n"
        + "#elif defined(_4TREE)\n"
        + "\tRF_kernel<<<grid, block>>>(d_input, nElem, 0, 0, 0, 0, d_vR);\n"
        + "#elif defined(_5TREE)\n"
        + "\tRF_kernel<<<grid, block>>>(d_input, nElem, 0, 0, 0, 0, 0, d_vR);\n"
        + "#elif defined(_6TREE)\n"
        + "\tRF_kernel<<<grid, block>>>(d_input, nElem, 0, 0, 0, 0, 0, 0, d_vR);\n"
        + "#elif defined(_7TREE)\n"
        + "\tRF_kernel<<<grid, block>>>(d_input, nElem, 0, 0, 0, 0, 0, 0, 0, d_vR);\n"
        + "#elif defined(_8TREE)\n"
        + "\tRF_kernel<<<grid, block>>>(d_input, nElem, 0, 0, 0, 0, 0, 0, 0, 0, d_vR);\n"
        + "#elif defined(_9TREE)\n"
        + "\tRF_kernel<<<grid, block>>>(d_input, nElem, 0, 0, 0, 0, 0, 0, 0, 0, 0, d_vR);\n"
        + "#elif defined(_10TREE)\n"
        + "\tRF_kernel<<<grid, block>>>(d_input, nElem, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, d_vR);\n"
        + "#else\n"
        + "\tRF_kernel<<<grid, block>>>(d_input, nElem, 0, d_vR);\n"
        + "#endif\n"
        + "\tCHECK(cudaEventRecord(stop, 0));\n"
        + "\tCHECK(cudaEventSynchronize(stop));\n"
        + "\tcudaDeviceSynchronize();\n\n"
        + "\t// calculate elapsed time\n"
        + "\tCHECK(cudaEventElapsedTime(&elapsed_time, start, stop));\n"
        + '\tprintf("[CUDA - Random Forest]: %s - execution time = %.6fms\\n", EXP_NAME, elapsed_time);\n'
        + "\tregisterTime(elapsed_time);\n\n"
        + "\t// copy kernel result back to host side\n"
        + "\tCHECK(cudaMemcpy(h_vR, d_vR, nBytes, cudaMemcpyDeviceToHost));\n"
        + "\tCHECK(cudaGetLastError());\n\n"
        + "\t//Verify the answers\n"
        + "\tchar flag = 1;\n"
        + "\tfor (int i = 0; i < nElem; i++)\n"
        + "\t{\n"
        + "\t\tif (i < 32)\n"
        + "\t\t{\n"
        + '\t\t\tprintf("%.3f ", h_vR[i]);\n'
        + "\t\t}\n"
        + "\t\tif (h_input[i] != h_vR[i])\n"
        + "\t\t{\n"
        + "\t\t\tflag = 0;\n"
        + "\t\t\tbreak;\n"
        + "\t\t}\n"
        + "\t}\n"
        + "\tif (flag == 1)\n"
        + "\t{\n"
        + '//\t\tprintf("Return correct");\n'
        + "\t}\n"
        + "\telse\n"
        + "\t{\n"
        + '//\t\tprintf("Error!!");\n'
        + "\t}\n"
        + '\tprintf("\\n ");\n\n'
        + "\t// free device memory\n"
        + "\tcudaFree(d_input);\n"
        + "\tcudaFree(d_vR);\n\n"
        + "\t// free host memory\n"
        + "\tfree(h_input);\n"
        + "\tfree(h_vR);\n"
        + "\treturn (0);\n"
        + "}\n\n"
    )

    exp_qty = [50000000, 100000000]

    footer = (
        "void initData(float *ip, int size)\n"
        + "{\n"
        + "\tfor (int i = 0; i < size; i++)\n"
        + "\t{\n"
        + "\t\tip[i] = (float)(0);\n"
        + "\t}\n"
        + "\treturn;\n"
        + "}\n"
        + "\n"
        + "void registerTime(float value)\n"
        + "{\n"
        + '\tprintf("[CUDA - Random Forest]: Time spent: %f.\\n", value);\n'
        + "}\n"
    )
    for j in range(len(exp_qty)):
        header = (
            "#include <sys/time.h>\n"
            + "#include <cuda_runtime.h>\n"
            + "#include <stdio.h>\n"
            + "#include <stdlib.h>\n"
            + "#include <stdbool.h>\n"
            + "#include <time.h>\n\n"
            + "#define N_ELEM %d\n\n" % exp_qty[j]
            + "#define WARP_SIZE 32\n\n"
            + "#define CHECK(call)                                                \\\n"
            + "\t{                                                              \\\n"
            + "\t\tconst cudaError_t error = call;                            \\\n"
            + "\t\tif (error != cudaSuccess)                                  \\\n"
            + "\t\t{                                                          \\\n"
            + '\t\t\tfprintf(stderr, "Error: %s:%d, ", __FILE__, __LINE__); \\\n'
            + '\t\t\tfprintf(stderr, "code: %d, reason: %s\\n", error,       \\\n'
            + "\t\t\t\t\tcudaGetErrorString(error));                    \\\n"
            + "\t\t}                                                          \\\n"
            + "\t}\n\n"
            + "void initData(float *ip, int size);\n"
            + "void registerTime(float value);\n\n"
        )
        file_name = ("_RF_CALC_%dTREE_%dLV_1INPUT_%d" % (trees, lv, exp_qty[j]),)

        kernel_code = (
            "#define _MOD %d\n" % (2**lv)
            + "#define _%dTREE\n" % (trees)
            + '#define EXP_NAME "%s"\n\n' % file_name
            # + '#define EXP_OUTPUT_FILE "_RF_31IF_4TREE_1INPUT_WORST_OUTPUT.txt"\n'
            # + '#define EXP_RESULT_FILE "_RF_31IF_4TREE_1INPUT_WORST_RESULT.csv"\n\n'
            + "// RF_with_if\n\n"
            + "__global__ void RF_kernel(float *input, const int n, const int offset0, "
            + ("const int offset1, " if trees >= 2 else "")
                + ("const int offset2, " if trees >= 3 else "")
                + ("const int offset3, " if trees >= 4 else "")
                + ("const int offset4, " if trees >= 5 else "")
                + ("const int offset5, " if trees >= 6 else "")
                + ("const int offset6, " if trees >= 7 else "")
                + ("const int offset7, " if trees >= 8 else "")
                + ("const int offset8, " if trees >= 9 else "")
                + ("const int offset9, " if trees >= 10 else "")
            + "float *vR)\n"
            + "{\n"
            + "\tint i = blockIdx.x * blockDim.x + threadIdx.x;\n"
            + "\tif (i < n)\n"
            + "\t{\n"
            + "%s" % calc_code_rdy
            + "\t}\n"
            + "}\n\n"
        )

        return_dic[file_name] = header + kernel_code + main_code + footer
        # print(header + kernel_code + main_code + footer)
    return return_dic


LEVELS = 3
TREES = 4

results = ""

for l in range(4, 5):
    for t in range(9,10):
        # gerar floresta calc
        calc_core = gerar_calc_core_ntrees(l + 1, t + 1)
        # gerar o codigo completo a ser compilado
        cu_codes = gerar_cu_code(calc_core, l + 1, t + 1)
        # salvar floresta
        for k in cu_codes.keys():
            results += "***********************************************************\n"
            results += "Experiment %s\n\n" % k[-1]
            cu_name = k[-1] + ".cu"
            ptx_name = k[-1] + ".ptx"
            with open(cu_name, "w") as file:
                file.write(cu_codes[k])
            file.close()
            # Gerar PTX
            ret = subprocess.run(
                ["nvcc", "-DKernelX", "-ptx", cu_name], stdout=subprocess.PIPE
            )
            ret_str = ret.stdout.decode("utf-8")
            if ret_str != "":
                print("error ptx %s" % cu_name)
                exit()

            # Contar Bra.uni
            ret = subprocess.run(["grep", "bra.uni", ptx_name], stdout=subprocess.PIPE)
            ret_str = ret.stdout.decode("utf-8")
            counter = len(ret_str.split("\n")) - 1 if ret_str != "" else 0
            # print(bra_uni)
            results += "BRA.UNI = %d\n" % counter

            # Contar setp
            ret = subprocess.run(["grep", "setp", ptx_name], stdout=subprocess.PIPE)
            ret_str = ret.stdout.decode("utf-8")
            counter = len(ret_str.split("\n")) - 1 if ret_str != "" else 0
            results += "SETP = %d\n" % counter

            # Contar add
            ret = subprocess.run(["grep", "add", ptx_name], stdout=subprocess.PIPE)
            ret_str = ret.stdout.decode("utf-8")
            counter = len(ret_str.split("\n")) - 1 if ret_str != "" else 0
            results += "ADD = %d\n" % counter

            # Contar and
            ret = subprocess.run(["grep", "and", ptx_name], stdout=subprocess.PIPE)
            ret_str = ret.stdout.decode("utf-8")
            counter = len(ret_str.split("\n")) - 1 if ret_str != "" else 0
            results += "AND = %d\n" % counter

            # Contar selp
            ret = subprocess.run(["grep", "selp", ptx_name], stdout=subprocess.PIPE)
            ret_str = ret.stdout.decode("utf-8")
            counter = len(ret_str.split("\n")) - 1 if ret_str != "" else 0
            results += "SELP = %d\n" % counter
            # print(results)

            results += "\n"

            # contar REGS
            # ret = subprocess.run(
            #    ["nvcc", "%s" % cu_name, "-Xptxas", "=", "-v"], stdout=subprocess.PIPE
            # )
            # ret_str = ret.stdout.decode("utf-8")
            # if ret_str != "":
            #    print("error")

            # compilar floresta
            # reutrn = subprocess.run('nvcc -o rf ./%s'%file_name)
            ret = subprocess.run(
                ["nvcc", "-o", "rf", "%s" % cu_name], stdout=subprocess.PIPE
            )
            ret_str = ret.stdout.decode("utf-8")
            if ret_str != "":
                print("error")
            # print(ret.stdout.decode("utf-8"))

            # executar floresta
            ret = subprocess.run(["sudo", "nvprof", "./rf"], stdout=subprocess.PIPE)
            ret_str = ret.stdout.decode("utf-8")
            results += ret_str + "\n"
            results += "----------------------------------------------------------\n"
            # print(results)

data_public = datetime.datetime.now()
data_public_str = data_public.strftime("%d/%m/%Y %H:%M")
data_public_str = data_public_str.replace(" ", "_").replace("/", "_").replace(":", "_")
with open("CALCs_%s.txt" % data_public_str, "w") as file:
    file.write(results)
file.close()
