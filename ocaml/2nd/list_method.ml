let hd ls = function
    h :: t -> h;;

let tl (h :: t) = t;;

let null ls = (ls = []);;

let rec sum ls = 
    if null ls then 0
    else hd ls + sum (tl ls);;


