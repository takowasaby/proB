let rec fib_itr l r n =
    if n <= 0 then n
    else if n = 1 then r
         else fib_itr r (r + l) (n - 1);;

let fib n = fib_itr 0 1 n;;
