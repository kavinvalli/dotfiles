#! /bin/bash

# CONDITIONAL STATEMENTS
# count=11
# if [ $count == 10 ]
# # if [ $count != 10 ] (not equal)
# # if (( $count > 10 )) (greater than)
# # if (( $count < 10 )) (less than)
# then
#   echo "The condition returned true"
# elif [ $count == 11 ]
# then
#   echo "The condition returned true the second time"
# else
#   echo "The condition returned false"
# fi

# age=41
# if (($age > 18)) && (($age < 40)) # and
#   # if (($age > 18)) || (($age < 40)) (or)
# then
#   echo "Age is correct"
# else
#   echo "Age is not correct"
# fi

# car="volkswagen"
# case "$car" in
#   "mercedes") echo "Germany" ;;
#   "audi") echo "_Germany" ;;
#   "bmw") echo "Chennai" ;;
#   *) echo "Unknown" ;;
# esac

# LOOPS
# while
# number=1
# while (( $number < 10 ))
# do
#   echo "$number"
#   number=$(( number+1 ))
# done

# until
# number=1
# until (( $number >= 10 ))
# do
#   echo "$number"
#   number=$((number+1))
# done

# for
## for i in 1 2 3 4 5
## for i in {1..20}
# for (( i=0; i<5; i++ ))
# do
#   echo $i
# done

# input
# echo $1 $2 $3
# echo $0 $1 $2 $3
# args=("$@")
# echo ${args[0]} ${args[1]} ${args[2]}
# echo ${args[@]}
# echo $@
# echo $# # length of args

while read line
do
  echo "$line"
done < "${1}"
