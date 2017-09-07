palindromo::Int->String
palindromo a= if a==(retroceder a) then "El numero es palindromo"
              else "El numero No es palindromo"

-- funcion para dividir enteros
divi::Int->Int->Int
divi 0 num2 = 0
divi num1 0 = 0
divi num1 num2 = if (num1<num2) then 0 else cuenta num1 num2 1
-- cuenta division
cuenta::Int->Int->Int->Int
cuenta num1 num2 res = if (num1<num2) then res-1 else if (num1-num2==0) then res else cuenta (num1-num2) num2 res+1
              
              
--contamos cuantas veces se puede dividir por 10 el numero (num)
divpor10::Int->Int
divpor10 num= if (num>=0) && (num<10) then 1 else 1+divpor10(divi num 10);  

    
--funcion que permite invertir un numero, le pasa a alreves las veces que puede divir por 10
retroceder::Int->Int
retroceder num= alreves num ((divpor10 num)-1)
--funcion que permite invertir el numero
alreves::Int->Int->Int
alreves num dp10=if(num>=0) && (num<10) then num 
                    else 10^dp10 * (mod num 10) + alreves (divi num 10) (dp10-1)  
