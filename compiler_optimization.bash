#!/bin/bash
for i in 0 1 2 3
do
 #echo "gcc -std=c99 -Wall -o jacobi jacobi.c -lm -O"$i
 gcc -std=c99 -Wall -o jacobi jacobi.c -lm -O$i

 for j in {1..10}
 do
  # echo "./jacobi -n 3000 >> compiler_optimization_O$i.txt"
  ./jacobi -n 3000 >> compiler_optimization_O$i.txt
 done
done
