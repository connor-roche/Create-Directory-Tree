# "create.sh 3 4 /home/cs288/hw2/tree depth"
# will create a tree with depth 3 and breath 4
# at /home/cs288/hw2/tree-depth in depth-first
# while command "create.sh 4 3 /home/cs288/hw2/tree breadth"
# will create a tree with depth 4 and breath 3 at
# /home/cs288/hw2/tree-breadth in breadth-first

#!/bin/bash

d=$1 b=$2 loc=$3 state=$4

 declare -a close
 open=($loc)
    

if [ $state == depth ]; then
    for((i=0;i<$d;i++)); do
            temp=()
            for ii in ${open[@]}; do
                temp_open=()
                for((j=0;j<$b;j++)); do
                    echo $ii/$j
                    temp+=($ii/$j)            
                done                   
                temp_open+=(${temp[@]})        
            done
            open=(${temp_open[@]})
            close+=(${temp_open[@]})   
    done
fi


if [ $state == breadth ]; then
    for((i=0;i<$b;i++)); do
            temp=()
            for ii in ${open[@]}; do
                temp_open=()
                for((j=0;j<$d;j++)); do
                    echo $ii/$j
                    temp+=($ii/$j)            
                done                   
                temp_open+=(${temp[@]})        
            done
            open=(${temp_open[@]})
            close+=(${temp_open[@]})   
    done
fi
        



