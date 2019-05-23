let rec combine a1 a2 =
    match (a1,a2) with
    | ([],_) -> []
    | (_,[]) -> []
    | (h1::t1, h2::t2) ->
        (h1,h2) :: combine t1 t2;;
