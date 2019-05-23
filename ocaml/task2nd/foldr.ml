let max lhs rhs = if (lhs > rhs) then lhs
                                 else rhs

let list_max li = 
List.fold_right max li min_int;;

let append ll rl =
List.fold_right List.cons ll rl;;

let map f l =
List.fold_right (fun x l -> f(x) :: l) l [];;
