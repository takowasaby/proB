let rec sum ls =
    match ls with
        [] -> 0
    |   a :: rest -> a + sum rest;;
