#use "member.ml"

let rec union a b =
    match a with
      [] -> b
    | h :: t -> if member h b
                then union t b
                else h :: union t b;;
