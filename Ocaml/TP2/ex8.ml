let applique_2_fois f e = (f (f e));;
let fn n = n*2;;

applique_2_fois fn 5;;

let rec applique_n_fois f e n =
    if n > 1 then
        applique_n_fois f (f e) (n-1)
    else
        f e;;

applique_n_fois fn 5 2;;
