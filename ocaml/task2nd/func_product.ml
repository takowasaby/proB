let func_product ll rl f =
List.fold_right (fun a l -> (List.map (f a) rl) @ l) ll [];;
