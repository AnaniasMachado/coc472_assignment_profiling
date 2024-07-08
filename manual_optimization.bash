#!/bin/bash
#echo "gcc -std=c99 -Wall -o jacobi_opt jacobi_opt.c -lm -O0"
gcc -std=c99 -Wall -o jacobi_opt jacobi_opt.c -lm -O0
count=$(grep -c "." manual_optimization.txt)

while [ $count -lt 100 ]
do
 # echo "./jacobi_opt -n 3000 >> compiler_optimization.txt"
 ./jacobi_opt -n 3000 >> manual_optimization.txt
 count=$(grep -c "." manual_optimization.txt)
done
