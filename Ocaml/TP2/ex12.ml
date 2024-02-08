type nombre = Entier of int 
    | Flottant of float
    | Fraction of int*int 
    | Moins_inf | Plus_inf;;

exception FormeIndetermine

let somme a b = 
    let valeur nb = match nb with
    | Entier(n) -> float_of_int n
    | Flottant(n) -> n
    | Fraction(_,0) -> raise FormeIndetermine
    | Fraction(n,d) -> (float_of_int n /. float_of_int d)
    | _ -> raise FormeIndetermine
    in
    
    (valeur a)+.(valeur b);;

let produit a b = 
    let valeur nb = match nb with
    | Entier(n) -> float_of_int n
    | Flottant(n) -> n
    | Fraction(_,0) -> raise FormeIndetermine
    | Fraction(n,d) -> (float_of_int n /. float_of_int d)
    | _ -> raise FormeIndetermine
    in
    
    (valeur a)*.(valeur b);;


let a = produit (Fraction(5, 8)) (Fraction(5, 4))
let a = somme (Fraction(5, 8)) (Fraction(5, 4))
let a = produit (Plus_inf) (Fraction(5, 4))

(*
let produit a b = 
    if a = Plus_inf || a = Moins_inf || b = Plus_inf || b = Moins_inf then
        raise FormeIndetermine
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
        val_a*.val_b;;*)
