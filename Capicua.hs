palindromo::Int->Int
palindromo a= if a==f a then 1
              else 0
f::Int->Int
f a= if a>0 then 10*f(div a 10) + mod a 10   
            else   0