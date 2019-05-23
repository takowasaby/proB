let rec assoc x = function
  | [] -> None
  | (a,b)::t -> if (a=x) then (Some b) else assoc x t;;
