# !/bin/bash

MOVIES={"RRR" "MURARI" "KUSHI"}

#size of array is 3
#index are 0,1,2
#list always starts with 0.

echo First Movie= ${MOVIES[0]}
echo "Second Movie= ${MOVIES[1]}"
echo "Third Movie= ${MOVIES[@]}"
