#!/usr/bin/env python3
import os
import copy

os.system("clear")

cap = {
    "Madrid": {"Alcalde": "lo que sea", "superficie": 323424, "habitantes": 2413},
    "Barcelona": {"Alcalde": "lo que sea", "superficie": 323424, "habitantes": 2413},
}

coppy = copy.deepcopy(cap)

print(cap, "\n", id(cap))
print(coppy, id(coppy))
