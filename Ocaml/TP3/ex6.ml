type pile = int array;;
exception Pile_pleine;;
exception Pile_vide;;
exception OhMince;;

let creer_pile n = Array.make (n+1) 0;;

let est_vide f = f.(0) = 0;;
let est_pleine f = f.(0) = (Array.length f - 1);;

let empiler e p = 
    p.(0)<-p.(0)+1;p.(((p.(0)-1) mod (Array.length p-1))+1)<-e;;

let depiler p =
    p.(0)<-p.(0)-1;
    p.(((p.(0)) mod (Array.length p-1))+1);;

let p = creer_pile 3;;

empiler 13 p;;
empiler 32 p;;
empiler 28 p;;

p;;
empiler 14 p;;
p;;
depiler p;;
depiler p;;
depiler p;;
p;;

