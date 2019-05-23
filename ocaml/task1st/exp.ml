let rec exp_itr ret item i n =
    if n < (int_of_float i) then ret
                            else exp_itr (ret +. item /. i) (item /. i) (i +. 1.0) n;;

let exp n = exp_itr 1.0 1.0 1.0 n;;
