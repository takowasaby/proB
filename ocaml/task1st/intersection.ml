let rec member a = function
      [] -> false
    | h :: t -> (a = h) || member a t;;

let rec intersection lls rls =
    match lls with
      [] -> []
    | h :: t -> if member h rls then h :: intersection t rls
                                else intersection t rls;;
