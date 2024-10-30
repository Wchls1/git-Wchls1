pass='qwertyuiopasdfghjklzxcvbnmQWERTYUIOPASDFGHJKLZXCVBNM0123456789!@#$%^&*.'
for i in {1..8}
do
        num=$[RANDOM%71]
        num1=${pass:num:1}
        num2=$num2$num1
done
echo $num2
