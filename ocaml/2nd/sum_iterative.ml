let rec sum_iterative ls n =
    match ls with 
    | [] -> n
    | a :: rest -> sum_iterative rest (a + n);;
