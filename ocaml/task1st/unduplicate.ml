let rec member a = function
      [] -> false
    | h :: t -> (h = a) || member a t;;

let rec unduplicate = function
      [] -> []
    | h :: t -> if member h t then unduplicate t
                              else h :: unduplicate t;; 
