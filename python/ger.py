from math import log2


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


def gerar_if(levels: int = 1) -> str:
    layers = gen_layers(levels)

    pat1 = ""
    pat1 += "if(input[i]>%d)"
    pat1 += "{"
    pat1 += "%s"
    pat1 += "}"
    pat1 += "else"
    pat1 += "{"
    pat1 += "%s"
    pat1 += "}"

    pat2 = ""
    pat2 += "if(input[i]==%d)"
    pat2 += "{"
    pat2 += "%s"
    pat2 += "}"
    pat2 += "else"
    pat2 += "{"
    pat2 += "%s"
    pat2 += "}"

    pat3 = "vR[i] = %d;"

    layers_str = []
    for l in range(levels + 1):
        layers_str.append([])
        for i in range(len(layers[l])):
            if l > 1:
                layers_str[l].append(
                    pat1
                    % (
                        layers[l][i],
                        layers_str[l - 1][i * 2 + 1],
                        layers_str[l - 1][i * 2],
                    )
                )
            elif l == 1:
                layers_str[l].append(
                    pat2
                    % (
                        layers[l][i],
                        layers_str[l - 1][i * 2 + 1],
                        layers_str[l - 1][i * 2],
                    )
                )
            else:
                layers_str[l].append(pat3 % layers[l][i])

    return layers_str[-1]


def gerar_if_ntrees(levels: int = 1, trees: int = 1) -> str:
    layers = gen_layers(levels)

    pat1 = ""
    pat1 += "if(input[i+offset%d]>%d)"
    pat1 += "{"
    pat1 += "%s"
    pat1 += "}"
    pat1 += "else"
    pat1 += "{"
    pat1 += "%s"
    pat1 += "}"

    pat2 = ""
    pat2 += "if(input[i+offset%d]==%d)"
    pat2 += "{"
    pat2 += "%s"
    pat2 += "}"
    pat2 += "else"
    pat2 += "{"
    pat2 += "%s"
    pat2 += "}"

    pat3 = "vR[i] = %d;"

    pat4 = "vR[i] += 1;"

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
                            t,
                            layers[l][i],
                            layers_str[t][l - 1][i * 2 + 1],
                            layers_str[t][l - 1][i * 2],
                        )
                    )
                elif l == 1:
                    layers_str[t][l].append(
                        pat2
                        % (
                            t,
                            layers[l][i],
                            layers_str[t][l - 1][i * 2 + 1],
                            layers_str[t][l - 1][i * 2],
                        )
                    )
                else:
                    if t == 0:
                        layers_str[t][l].append(pat3 % layers[l][i])
                    else:
                        layers_str[t][l].append(pat4)

    return_vec = []
    for t in range(trees):
        return_vec.append(layers_str[t][-1])

    return return_vec


def gerar_calc(levels: int = 1) -> list():
    layers = gen_layers(levels)

    pat1 = ""
    pat1 += "int rt%d_%d = (input[id] > %d);"
    pat1 += "int t%d_%d = rt%d_%d * (%d + (input[id] > %d));"
    pat1 += "t%d_%d += (1 - rt%d_%d) * (input[id] > %d);\n"
    """
    int rt%d_%d = (input[id] > %d);
    int t%d_%d = rt%d_%d * (%d + (input[id] > %d));
    t%d_%d += (1 - rt%d_%d) * (input[id] > %d);\n
    """

    pat2 = ""
    pat2 += "int rt%d_%d = (input[id] > %d);"
    pat2 += "int t%d_%d = rt%d_%d * (%d + t%d_%d);"
    pat2 += "t%d_%d += (1 - rt%d_%d) * t%d_%d;"

    """
    int rt%d_%d = (input[id] > %d);
    int t%d_%d = rt%d_%d * (%d + t%d_%d);
    t%d_%d += (1 - rt%d_%d) * t%d_%d;
    """

    pat3 = "vR[i] = %d;"

    layers_str = []
    for l in range(2, levels + 1, 1):
        layers_str.append([])
        counter = 0
        for i in range(len(layers[l])):
            if l == 2:
                """
                int rt%d_%d = (input[id] > %d);
                int t%d_%d = rt%d_%d * (%d + (input[id] > %d));
                t%d_%d += (1 - rt%d_%d) * (input[id] > %d);
                """
                layers_str[l - 2].append(
                    pat1
                    % (
                        l - 2,
                        i,
                        layers[l][i],
                        l - 2,
                        i,
                        l - 2,
                        i,
                        2 ** (l - 1),
                        layers[l][i] + 1,
                        l - 2,
                        i,
                        l - 2,
                        i,
                        layers[l][i] - 1,
                    )
                )
            else:
                """
                int rt%d_%d = (input[id] > %d);
                int t%d_%d = rt%d_%d * (%d + t%d_%d);
                t%d_%d += (1 - rt%d_%d) * t%d_%d;
                """
                layers_str[l - 2].append(
                    pat2
                    % (
                        l - 2,
                        i,
                        layers[l][i],
                        l - 2,
                        i,
                        l - 2,
                        i,
                        2 ** (l - 1),
                        l - 3,
                        counter + 1,
                        l - 2,
                        i,
                        l - 2,
                        i,
                        l - 3,
                        counter,
                    )
                )
                counter += 2

    return layers_str


def gerar_calc_ntrees(levels: int = 1, trees: int = 1) -> list():
    layers = gen_layers(levels)

    pat1 = ""
    pat1 += "int rt%d_%d_%d = (input[id+offset%d] > %d);"
    pat1 += "int t%d_%d_%d = rt%d_%d_%d * (%d + (input[id+offset%d] > %d));"
    pat1 += "t%d_%d_%d += (1 - rt%d_%d_%d) * (input[id+offset%d] > %d);"
    """
    int rt%d_%d_%d = (input[id+offset%d] > %d);
    int t%d_%d_%d = rt%d_%d_%d * (%d + (input[id+offset%d] > %d));
    t%d_%d_%d += (1 - rt%d_%d_%d) * (input[id+offset%d] > %d);
    """

    pat2 = ""
    pat2 += "int rt%d_%d_%d = (input[id+offset%d] > %d);"
    pat2 += "int t%d_%d_%d = rt%d_%d_%d * (%d + t%d_%d_%d);"
    pat2 += "t%d_%d_%d += (1 - rt%d_%d_%d) * t%d_%d_%d;"

    """
    int rt%d_%d_%d = (input[id+offset%d] > %d);
    int t%d_%d_%d = rt%d_%d_%d * (%d + t%d_%d);
    t%d_%d_%d += (1 - rt%d_%d_%d) * t%d_%d;
    """

    pat3 = "vR[i] = %d;"

    layers_str = []
    for t in range(trees):
        layers_str.append([])
        for l in range(2, levels + 1, 1):
            layers_str[t].append([])
            counter = 0
            for i in range(len(layers[l])):
                if l == 2:
                    """
                    int rt%d_%d_%d = (input[id+offset%d] > %d);
                    int t%d_%d_%d = rt%d_%d_%d * (%d + (input[id+offset%d] > %d));
                    t%d_%d_%d += (1 - rt%d_%d_%d) * (input[id+offset%d] > %d);
                    """
                    layers_str[t][l - 2].append(
                        pat1
                        % (
                            t,
                            l - 2,
                            i,
                            t,
                            layers[l][i],
                            t,
                            l - 2,
                            i,
                            t,
                            l - 2,
                            i,
                            2 ** (l - 1),
                            t,
                            layers[l][i] + 1,
                            t,
                            l - 2,
                            i,
                            t,
                            l - 2,
                            i,
                            t,
                            layers[l][i] - 1,
                        )
                    )
                else:
                    """
                    int rt%d_%d_%d = (input[id+offset%d] > %d);
                    int t%d_%d_%d = rt%d_%d_%d * (%d + t%d_%d_%d);
                    t%d_%d_%d += (1 - rt%d_%d_%d) * t%d_%d_%d;
                    """
                    layers_str[t][l - 2].append(
                        pat2
                        % (
                            t,
                            l - 2,
                            i,
                            t,
                            layers[l][i],
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


# vec = gerar_calc(7)
# for i in range(len(vec)):
# print(vec)
print(gerar_calc_ntrees(4, 4))
