let horner coefficients x =
List.fold_left
    (fun p a -> p * x + a)
    0
    coefficients;;
