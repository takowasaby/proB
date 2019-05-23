#use "index.ml"

type index_tree =
| T
| N of index_tree * (string * int list) * index_tree;;

let rec ins_key a b = function
| T -> N (T, (a, [b]), T)
| N (l, (c, d), r) ->
  if a = c then N (l, (c, b :: d), r)
           else if a < c then N ((ins_key a b l), (c, d), r)
                         else N (l, (c, d), (ins_key a b r));;

let rec list_of_tree = function
| T -> []
| N (l, c, r) ->
  list_of_tree l @ (c :: list_of_tree r);;

let rec tree_of_list = function
| []     -> T
| (hk, hv) :: t -> ins_key hk hv (tree_of_list t);;

let index2 l = list_of_tree (tree_of_list (index l));;
