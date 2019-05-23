let dot_product ll rl =
List.fold_right (fun (lhs, rhs) v -> v + (lhs * rhs)) (List.combine ll rl) 0;;
