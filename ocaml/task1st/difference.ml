let rec member a = function
      [] -> false
    | h :: t -> (h = a) || member a t;;

let rec difference lls rls =
    match lls with
      [] -> []
    | h :: t -> if member h rls then difference t rls
                                else h :: difference t rls;;
