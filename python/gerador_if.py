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


def gerar_if_core_ntrees(levels: int = 1, trees: int = 1) -> str:
    layers = gen_layers(levels)

    pat1 = ""
    pat1 += "if(input[i]>(%d+offset%d))\n"
    pat1 += "{\n"
    pat1 += "\t%s\n"
    pat1 += "}\n"
    pat1 += "else\n"
    pat1 += "{\n"
    pat1 += "\t%s\n"
    pat1 += "}\n"

    pat2 = ""
    pat2 += "if(input[i]==(%d+offset%d))\n"
    pat2 += "{\n"
    pat2 += "\t%s\n"
    pat2 += "}\n"
    pat2 += "else\n"
    pat2 += "{\n"
    pat2 += "\t%s\n"
    pat2 += "}\n"

    pat3 = "vR[i] = %d;"

    layers_str = []
    for t in range(trees):
        layers_str.append([])
        for l in range(levels + 1):
            layers_str[t].append([])
            for i in range(len(layers[l])):
                if l > 1:
                    layers_str[t][l].append(
                        pat1
                        % (
                            layers[l][i],
                            t,
                            layers_str[t][l - 1][i * 2 + 1],
                            layers_str[t][l - 1][i * 2],
                        )
                    )
                elif l == 1:
                    layers_str[t][l].append(
                        pat2
                        % (
                            layers[l][i],
                            t,
                            layers_str[t][l - 1][i * 2 + 1],
                            layers_str[t][l - 1][i * 2],
                        )
                    )
                else:
                    layers_str[t][l].append(pat3 % layers[l][i])

    return_vec = []
    for t in range(trees):
        return_vec.append(layers_str[t][-1])

    return return_vec


def gerar_cu_code(if_core: list(), lv: int, trees: int) -> list():
    return_dic = {}

    if_code_rdy = ""

    for i in range(len(if_core)):
        if_code_rdy += if_core[i][0] + "\n\n"

    main_code = (
        "int main(int argc, char **argv)\n"
        + "{\n"
        + "\tfloat elapsed_time[TIMES], avg = 0.0, sd = 0.0;\n"
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
        + "\tfor (int t = 0; t < TIMES; t++)\n"
	    + "\t{\n"
        + "\t// record start event\n"
        + "\t\tCHECK(cudaEventRecord(start, 0));\n"
        + "#if defined(_2TREE)\n"
        + "\t\tRF_kernel<<<grid, block>>>(d_input, nElem, 0, 0, d_vR);\n"
        + "#elif defined(_3TREE)\n"
        + "\t\tRF_kernel<<<grid, block>>>(d_input, nElem, 0, 0, 0, d_vR);\n"
        + "#elif defined(_4TREE)\n"
        + "\t\tRF_kernel<<<grid, block>>>(d_input, nElem, 0, 0, 0, 0, d_vR);\n"
        + "#elif defined(_5TREE)\n"
        + "\t\tRF_kernel<<<grid, block>>>(d_input, nElem, 0, 0, 0, 0, 0, d_vR);\n"
        + "#elif defined(_6TREE)\n"
        + "\t\tRF_kernel<<<grid, block>>>(d_input, nElem, 0, 0, 0, 0, 0, 0, d_vR);\n"
        + "#elif defined(_7TREE)\n"
        + "\t\tRF_kernel<<<grid, block>>>(d_input, nElem, 0, 0, 0, 0, 0, 0, 0, d_vR);\n"
        + "#elif defined(_8TREE)\n"
        + "\t\tRF_kernel<<<grid, block>>>(d_input, nElem, 0, 0, 0, 0, 0, 0, 0, 0, d_vR);\n"
        + "#elif defined(_9TREE)\n"
        + "\t\tRF_kernel<<<grid, block>>>(d_input, nElem, 0, 0, 0, 0, 0, 0, 0, 0, 0, d_vR);\n"
        + "#elif defined(_10TREE)\n"
        + "\t\tRF_kernel<<<grid, block>>>(d_input, nElem, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, d_vR);\n"
        + "#else\n"
        + "\t\tRF_kernel<<<grid, block>>>(d_input, nElem, 0, d_vR);\n"
        + "#endif\n"
        + "\t\tCHECK(cudaEventRecord(stop, 0));\n"
        + "\t\tCHECK(cudaEventSynchronize(stop));\n"
        + "\t\tcudaDeviceSynchronize();\n\n"
        + "\t\t// calculate elapsed time\n"
        + "\t\tCHECK(cudaEventElapsedTime(&elapsed_time[t], start, stop));\n"
        + '\t\tprintf("[CUDA - Random Forest]: %s - execution time = %.6fms\\n", EXP_NAME, elapsed_time[t]);\n'
        + "\t\tregisterTime(elapsed_time[t]);\n\n"
        + "\t\tavg += elapsed_time[t];\n"
        + "\t}\n"
        + "\t// copy kernel result back to host side\n"
        + "\tCHECK(cudaMemcpy(h_vR, d_vR, nBytes, cudaMemcpyDeviceToHost));\n"
        + "\tCHECK(cudaGetLastError());\n\n"
        + "\t//Verify the answers\n"
        + "\tchar flag = 1;\n"
        + "\tfor (int i = 0; i < nElem; i++)\n"
        + "\t{\n"
        + "\t\tif (i < 32)\n"
        + "\t\t{\n"
        + '\t\t\t//printf("%.3f ", h_vR[i]);\n'
        + "\t\t}\n"
        + "\t\tif (h_input[i] != h_vR[i])\n"
        + "\t\t{\n"
        + "\t\t\tflag = 0;\n"
        + "\t\t\tbreak;\n"
        + "\t\t}\n"
        + "\t}\n"
        + "\tif (flag == 1)\n"
        + "\t{\n"
        + '\t\tprintf("Return correct");\n'
        + "\t}\n"
        + "\telse\n"
        + "\t{\n"
        + '\t\tprintf("Error!!");\n'
        + "\t}\n"
        + '\tprintf("\\n ");\n\n'
        + "\t// avg and standard deviation\n"
	    + "\tavg = (float)avg / TIMES;\n"
	    + "\tfor (int t = 0; t < TIMES; t++)\n"
	    + "\t{\n"
		+ "\t\tsd+=pow(elapsed_time[t]-avg,2);\n"
	    + "\t}\n"
	    + "\tsd = (float) sd/TIMES;\n"
	    + "\tsd = sqrt(sd);\n"
	    + '\tprintf("\\nAVG = %fms, SD = %fms\\n", avg,sd);\n'
        + "\t// free device memory\n"
        + "\tcudaFree(d_input);\n"
        + "\tcudaFree(d_vR);\n\n"
        + "\t// free host memory\n"
        + "\tfree(h_input);\n"
        + "\tfree(h_vR);\n"
        + "\treturn (0);\n"
        + "}\n\n"
    )

    exp_types = ["_BEST", "_WORST"]
    exp_qty = [50000000, 100000000]

    for i in range(len(exp_types)):
        footer = (
            "void initData(float *ip, int size)\n"
            + "{\n"
            + "\tfor (int i = 0; i < size; i++)\n"
            + "\t{\n"
            + "\n#if defined(_BEST)\n"
            + "\t\tip[i] = (float)(0);\n"
            + "#else\n"
            + "\t\tif(WARP_SIZE < _MOD)\n"
            + "\t\t{\n"
            + "\t\t\tint aux = _MOD / WARP_SIZE;\n"
            + "\t\t\tip[i] = (float)((i * aux) % _MOD);\n"
            + "\t\t}\n"
            + "\t\telse\n"
            + "\t\t{\n"
            + "\t\t\tip[i] = (float)(i % _MOD);\n"
            + "\t\t}\n"
            + "#endif\n"
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
                + "#define %s\n" % exp_types[i]
                + "#define TIMES 10\n"
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
            file_name = (
                "_RF_%dIF_%dTREE_1INPUT_%s_%d"
                % ((2**lv) - 1, trees, exp_types[i], exp_qty[j]),
            )

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
                + "%s" % if_code_rdy
                + "\t}\n"
                + "}\n\n"
            )

            return_dic[file_name] = header + kernel_code + main_code + footer
            # print(header + kernel_code + main_code + footer)
    return return_dic

def gen_ifs():
    LEVELS = 10
    TREES = 4

    results = ""

    for l in range(0,LEVELS):
        for t in range(0,TREES):
            # gerar floresta IF
            if_core = gerar_if_core_ntrees(l + 1, t + 1)
            # gerar o codigo completo a ser compilado
            cu_codes = gerar_cu_code(if_core, l + 1, t + 1)
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
                '''ret = subprocess.run(
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

                results += "\n"'''

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
                print(ret.stdout.decode("utf-8"))

                # executar floresta
                ret = subprocess.run(["sudo", "nvprof", "./rf"], stdout=subprocess.PIPE)
                ret_str = ret.stdout.decode("utf-8")
                results += ret_str + "\n"
                results += "----------------------------------------------------------\n"
                #print(results)

    data_public = datetime.datetime.now()
    data_public_str = data_public.strftime("%d/%m/%Y %H:%M")
    data_public_str = data_public_str.replace(" ", "_").replace("/", "_").replace(":","_")
    with open("IFs_%s.txt"%data_public_str,"w") as file:
        file.write(results)
    file.close()

def teste():
    LV = 3
    MAX = 2**LV -1
    pat1 = "h_table[%d] = (%d<<2)|(%d<<10);\n"
    pat2 = "h_table[%d] = %d;\n"
    pat3 = "h_th[%d] = %d;\n"
    
    retorno_str = ""
    
    layers = gen_layers(3)
    adj = []
    for i in range(len(layers)-1,0,-1):
        for j in range(len(layers[i])):
            pred = layers[i][j]
            g,l = layers[i-1][j*2+1],layers[i-1][j*2]
            adj.append([pred, g, l])
    
    idxi = 0
    counter_adj = len(adj)
    adj_add = []
    for i in adj:
        if i[0] == i[1]:
            adj_add.append(i[2])
            adj_add.append(i[1])
            i[2] = counter_adj
            i[1] = counter_adj+1
            counter_adj+=2
        else:
            g = i[1]
            l = i[2]
            idxg = None
            idxl = None
            for j in range(idxi+1,len(adj)):
                if adj[j][0] == g:
                    idxg = j
                if adj[j][0] == l:
                    idxl = j
                if idxg!= None and idxl !=None:
                    break
            i[1] = idxg
            i[2] = idxl

        idxi+=1
    for i in adj_add:
        adj.append([i])
    counter = 0
    for i in adj:
        if(len(i)>1):
            retorno_str +=pat1%(counter, i[1],i[2])
        else:
            retorno_str +=pat2%(counter, i[0])
        counter+=1
    retorno_str+='\n\n'
    counter = 0
    for i in adj:
        if(len(i)>1):
            retorno_str +=pat3%(counter, i[0])
        else:
            break
        counter+=1
    retorno_str+='\n'
    print(retorno_str)
            
gen_ifs()
#teste()