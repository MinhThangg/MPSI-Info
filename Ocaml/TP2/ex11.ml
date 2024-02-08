type nombre = Entier of int 
    | Flottant of float
    | Fraction of int*int 
    | Moins_inf | Plus_inf;;

exception FractionImpossible;;
let coherent nb = match nb with
| Fraction (_,d) -> d<>0
| Entier(_) | Flottant(_) | Moins_inf | Plus_inf -> true;;
(*
let egaux a b = match (a, b) with
| (Entier(a), Entier(b)) -> a=b
| (Entier(a), Flottant(b)) -> float_of_int a = b 
| (Flottant(a), Flottant(b)) -> a = b
| (Entier(a), Fraction(n,d)) -> float_of_int a = (float_of_int n/.float_of_int d)
| (Flottant(a), Fraction(n,d)) -> a = (float_of_int n/.float_of_int d)
| (Fraction(n1,d1), Fraction(n2,d2)) -> (float_of_int n1/.float_of_int d1) = (float_of_int n2/.float_of_int d2)
| (_, Moins_inf) -> false
| (_, Plus_inf) -> false
*)

let egaux a b = 
    if a = Plus_inf || a = Moins_inf || b = Plus_inf || b = Moins_inf then
        false
    else
        let val_a = match a with
        | Entier(n) -> float_of_int n
        | Flottant(n) -> n
        | Fraction(n,d) -> (float_of_int n /. float_of_int d)
        | _ -> 0.0
        in
        let val_b = match b with
        | Entier(n) -> float_of_int n
        | Flottant(n) -> n
        | Fraction(n,d) -> (float_of_int n /. float_of_int d)
        | _ -> 0.0
        in
        val_a=val_b;;

