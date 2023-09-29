def trapezio(vec: list(), n) -> list():
    id = 16

    if (id < n):
        rt00 = int(vec[id] > 1)  # root t00
        t00 = rt00 * (2 + int(vec[id] > 2))
        t00 += (1 - rt00) * int(vec[id] > 0)  # 0, 1, 2, 3

        rt01 = int(vec[id] > 5)  # root t01
        t01 = rt01 * (2 + int(vec[id] > 6))
        t01 += (1 - rt01) * int(vec[id] > 4)  # 0, 1, 2, 3

        rt02 = int(vec[id] > 9)  # root t02
        t02 = rt02 * (2 + int(vec[id] > 10))
        t02 += (1 - rt02) * int(vec[id] > 8)  # 0, 1, 2, 3

        rt03 = int(vec[id] > 13)  # root t03
        t03 = rt03 * (2 + int(vec[id] > 14))
        t03 += (1 - rt03) * int(vec[id] > 12)  # 0, 1, 2, 3

        rt04 = int(vec[id] > 17)  # root t04
        t04 = rt04 * (2 + int(vec[id] > 18))
        t04 += (1 - rt04) * int(vec[id] > 16)  # 0, 1, 2, 3

        rt05 = int(vec[id] > 21)  # root t05
        t05 = rt05 * (2 + int(vec[id] > 22))
        t05 += (1 - rt05) * int(vec[id] > 20)  # 0, 1, 2, 3

        rt06 = int(vec[id] > 25)  # root t06
        t06 = rt06 * (2 + int(vec[id] > 26))
        t06 += (1 - rt06) * int(vec[id] > 24)  # 0, 1, 2, 3

        rt07 = int(vec[id] > 29)  # root t07
        t07 = rt07 * (2 + int(vec[id] > 30))
        t07 += (1 - rt07) * int(vec[id] > 28)  # 0, 1, 2, 3

        rt10 = int(vec[id] > 3)  # root 10
        t10 = rt10 * (4 + t01)
        t10 += (1 - rt10) * t00  # 0, 1, 2, 3, 4, 5, 6, 7

        rt11 = int(vec[id] > 11)  # root 11
        t11 = rt11 * (4 + t03)
        t11 += (1 - rt11) * t02  # 0, 1, 2, 3, 4, 5, 6, 7

        rt12 = int(vec[id] > 19)  # root 12
        t12 = rt12 * (4 + t05)
        t12 += (1 - rt12) * t04  # 0, 1, 2, 3, 4, 5, 6, 7

        rt13 = int(vec[id] > 27)  # root 13
        t13 = rt13 * (4 + t07)
        t13 += (1 - rt13) * t06  # 0, 1, 2, 3, 4, 5, 6, 7

        rt20 = int(vec[id] > 7)  # root 10
        t20 = rt20 * (8 + t11)
        t20 += (1 - rt20) * t10
        # 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15

        rt21 = int(vec[id] > 23)  # root 10
        t21 = rt21 * (8 + t13)
        t21 += (1 - rt21) * t12
        # 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15

        root = int(vec[id] > 15)  # root 10
        leaf = root * (16 + t21)
        leaf += (1 - root) * t20
        # 0, ... , 31

    return leaf


N_ELEM = 32

vec = [i for i in range(N_ELEM)]
v = trapezio(vec, N_ELEM)
print(v)
