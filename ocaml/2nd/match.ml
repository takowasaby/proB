let rec fib = function
      0 -> 0
    | 1 -> 1
    | j -> fib (j - 1) + fib (j - 2);;
