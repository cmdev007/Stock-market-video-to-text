#!/bin/python

import sys

for line in sys.stdin:
        data=line.strip().split()
        data.pop()
        data.pop(0)
        sys.stdout.write(" ".join(data)+" ")
        break
