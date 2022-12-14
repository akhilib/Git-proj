       #............Project ....................
       
echo " "
echo " "

echo "Welcome to the application!! "
echo " "
echo " "
echo "TASK 1: Finding the odd triangular numbers that are smaller than a number specified by the user
and print them."
echo " "
echo "TASK 2: Finding the numbers that can be written as the product of two nonnegative odd integers in
succession and print them in increasing order."
echo " "
echo "TASK 3: Finding the terms of a sequence given by the rule Term = an2 + bn + c, where a and b and c
are integers specified by the user"
echo " "
echo "Press T, t or 1 to do the first task"
echo "Press P, p or 2 to do the second task"
echo "Press Q, q or 3 to do the third task"
echo "To exit the application Press E, e or 4"
echo " "
echo "Enter your choice"
read ch
case $ch in
1|t|T)
echo -n "Enter the limit to find out the odd triangular numbers: "
    read tri
    number=2
    i=1
    odd=0
    even=0
    while [ $i -le $tri ];
    do
    let "m = $i % 2"
    if [ $m -eq 0 ];
    
    then
    let "even = $even + 1"
    else
    echo "$i"
    let "odd = $odd +1"
    fi
    
    let "i = $i + $number "
    let "number = $number + 1"
    
    done

    echo "even = $even"
    echo "odd = $odd"
echo ""
echo ""
echo ""
echo "Do you want to continue?(yes/no)"
read val
if [ $val = "yes" ] 
then 
exec $0
 
elif [ $val = "no" ]
then exit 0

fi


;;
P|p|2)
read -p "Select a positive integer : " num
read -p "Enter how many numbers you want to display : " dnum

a=1
i=1
j=$(($i + 2))

while [ $a -le $dnum ]
do
    k=$(($i * $j))
    echo "The product of $i and $j is $k"
    i=$(($i + 2))
    j=$(($j + 2))
    q=$(($k % $num))
    if [ $q -eq 0 ]
    then
        echo "$num is a factor of $k"
        echo ""
    else
        echo "$num is not a factor of $k"
        echo ""
    fi
    a=$(($a + 1))
done 
echo ""
echo ""
echo ""
echo "Do you want to continue?(yes/no)"
read val
if [ $val = "yes" ] 
then 
exec $0
 
elif [ $val = "no" ]
then exit 0

fi


;;
Q|q|3)
#user selects values for a, b, c
read -p "Please provide value to a:" a
read -p "Please provide value to b:" b
read -p "Please provide value to c:" c
#menu begins
echo "SELECT ONE OPTION";
echo "1. Option1- Find Limited Number of terms of the sequence"
echo "2. Option2- Find a term in a position"
echo -n "Enter your menu choice [1-2]:"
#menu ends
read choice
case $choice in
  1) read -p "How many terms would you like to print:" num
  n=1
  sum=0
  arr=()
  while [ $n -le $num ]
  do
  term=$(($a*$n*$n+$b*$n+$c))
  echo "$term"
  n=$(( n + 1))
  arr+=("$term")
   let "sum = $sum + $term"
   done 
  echo "The sum of 1 th term to $num th term is : $sum"
  ;;
  2) read -p "which term would you like to print:" numm
    termm=$(($a*$numm*$numm+$b*$numm+$c))
    echo $termm
    if ! (( $termm % 3 )) ; 
    then
    echo " It is a Multiple of three"
    else
    echo "Not a multiple of three"
    fi
  esac
  echo ""
echo ""
echo ""
echo "Do you want to continue?(yes/no)"
read val
if [ $val = "yes" ] 
then 
exec $0
 
elif [ $val = "no" ]
then exit 0

fi


;;
E|e|4)
echo "Bye!!!!!!!"
exit 0 
;;
*)
echo " Oops !!!!  Wrong Choice"
echo ""
echo ""
echo ""
echo "Do you want to continue?(yes/no)"
read val
if [ $val = "yes" ] 
then 
exec $0
 
elif [ $val = "no" ]
then exit 0

fi
;;
esac


