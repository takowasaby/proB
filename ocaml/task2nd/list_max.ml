let rec list_max_itr v = function
    [] -> v
  | h::t -> if (h > v) then list_max_itr h t
                       else list_max_itr v t;;

let list_max li = list_max_itr min_int li;;
