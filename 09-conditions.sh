# !/bin/bash
Number=$1
if [$Number -gt 10]
then
echo "Given number $Number is greater then 10."
else [$Number -lt 10]
echo "Given number $Number is less then 10."
fi
#-gt ---->greater then
#-lt---->less then 
#-eq---->equal to
#-ge----->greater then equal to 
#-le----->less then equal to 