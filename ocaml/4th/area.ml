let area s = match s with
  | Point -> 0.0
  | Circle r -> r *. r *. 4.0 *. atan(1.0)
  | Rectangle (w, h) -> w *. h;;
