
type nombre = Entier of int 
    | Flottant of float
    | Fraction of int*int 
    | Moins_inf | Plus_inf;;

exception FractionImpossible;;

let coherent nb = match nb with
| Fraction (_,d) -> d<>0
| Entier(_) | Flottant(_) | Moins_inf | Plus_inf -> true;;

let simplifie f = match f with
| Fraction(n,b) -> n mod b <> 0
| _ -> false

let a = simplifie (Fraction(36, 4))
let a = simplifie (Fraction(8, 7))
