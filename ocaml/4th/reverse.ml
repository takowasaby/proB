let rec reverse ls = rev ls []
and rev ls r = match ls with
    [] -> r
  | h::t -> rev t (h::r);;
