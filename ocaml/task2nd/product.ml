let product ll rl =
let make_product a b = (a, b)
  in
    List.fold_right (fun a l -> (List.map (make_product a) rl) @ l) ll [];;
