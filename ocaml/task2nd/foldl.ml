let length l =
List.fold_left (fun c _ -> c + 1) 0 l;;

let reverse l =
List.fold_left (fun l a -> a :: l) [] l;;  
