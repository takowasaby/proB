let rec sum = function
        [] -> 0
    |   a :: rest -> a + sum rest;;
