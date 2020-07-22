#!/bin/bash

read -p "Enter any num : " a
read -p "Enter any num : " b
read -p "Enter any num : " c

declare -A arithmaticDict
exp1=$(( $a + ( $b * $c ) ))
arithmaticDict["exp1"]=$exp1
echo "${arithmaticDict["exp1"]}"

exp2=$(( $a * $b + $c ))
arithmaticDict["exp2"]=$exp2
echo "${arithmaticDict["exp2"]}"

exp3=$(( $a + $b / $c ))
arithmaticDict["exp3"]=$exp3
echo "${arithmaticDict["exp3"]}"

exp4=$(( $a % $b + $c ))
arithmaticDict["exp4"]=$exp4
echo "${arithmaticDict["exp4"]}"


count=0
for val in ${arithmaticDict[@]}
do
   arr[((count++))]=$val
done

for (( i=0; i<=4; i++ ))
do
   for (( j=$i; j<=4; j++ ))
   do
      if [[ ${arr[i]} -gt ${arr[j]} ]]
      then
         temp=${arr[i]}
         arr[i]=${arr[j]}
         arr[j]=$temp
      fi
   done
done
echo "ascending order : " ${arr[@]}

for (( i=0; i<=4; i++ ))
do
   for (( j=$i; j<=4; j++ ))
   do
      if [[ ${arr[j]} -gt ${arr[i]} ]]
      then
         temp=${arr[i]}
         arr[i]=${arr[j]}
         arr[j]=$temp
      fi
   done
done

echo "ascending order : " ${arr[@]}
