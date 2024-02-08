type nombre = Entier of int 
    | Flottant of float
    | Fraction of int*int 
    | Moins_inf | Plus_inf;;

exception FractionImpossible;;

let n1 = Entier(3);;
let n2 = Entier(18);;
let f1 = Flottant(15.5);;
let f2 = Flottant(5.0);;
let fr1 = Fraction(2,3);;
let fr2 = Fraction(1,15);;

n2>n1;;
n1>f1;;

Moins_inf>n1;;
Plus_inf>n1;;

Fraction(2,4)<Fraction(1,2);;
Fraction(2,4)>Fraction(1,2);;
Fraction(2,4)=Fraction(1,2);;

