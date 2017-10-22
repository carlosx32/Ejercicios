divi::Int->Int->Int
divi 0 num2 = 0
divi num1 0 = 0
divi num1 num2 = if (num1<num2) then 0 else cuenta num1 num2 1

cuenta::Int->Int->Int->Int
cuenta num1 num2 res = if (num1<num2) then res-1 else if (num1-num2==0) then res else cuenta (num1-num2) num2 res+1
