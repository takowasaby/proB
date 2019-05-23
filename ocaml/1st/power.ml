let rec power n x = 
    if n = 0 then 1
    else if n = 1 then x
         else (power ((n + 1) / 2) x) * (power (n / 2) x);;
