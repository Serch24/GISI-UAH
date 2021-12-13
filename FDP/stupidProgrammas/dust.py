#!/usr/bin/env python3

grid = [["-" for i in range(5)] for j in range(5)]
grid[3][2] = "d"
grid[2][4] = "d"
grid[0][0] = "b"
b = [0, 0]
d = [[3, 2], [2, 4], [1, 1]]
while True:

    i = 0
    if b[0] == d[i][0] and b[1] < d[i][1]:
        print("RIGHT")
        b[1] += 1
    elif b[1] == d[i][1] or b[0] < d[i][0]:
        print("DOWN")
        b[0] += 1
    elif b[0] > d[i][0]:
        print("UP")
        b[0] -= 1
    elif b[0] == d[i][0] and b[1] > d[i][1]:
        print("LEFT")
        b[1] -= 1

    if b[0] == d[i][0] and b[1] == d[i][1]:
        print("CLEAN")
        del d[i]

    print(b)

    if len(d) == 0:
        break
