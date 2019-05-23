let rec member a = function
      [] -> false
    | h :: t -> (a = h) || member a t;;
