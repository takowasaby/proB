let rec index_list_itr n = function
    [] -> []
  | h :: t -> (h, n) :: index_list_itr n t;;

let rec index_itr i = function
    [] -> []
  | h :: t -> (index_list_itr i h) @ index_itr (i + 1) t;;

let index = index_itr 1;;

