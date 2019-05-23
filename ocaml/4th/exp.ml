type exp =
| Num of int
| Var of string
| Add of exp * exp
| Mul of exp * exp;;

let make_sum a1 a2 = Add (a1,a2);;
let make_product m1 m2 = Mul (m1,m2);;
let rec deriv v = function
| Num n -> Num 0
| Var x -> if (Var x)=v then Num 1 else Num 0
| Add (x, y) -> make_sum (deriv v x) (deriv v y)
| Mul (x, y) -> 
    make_sum
      (make_product x (deriv v y))
      (make_product (deriv v x) y);;
