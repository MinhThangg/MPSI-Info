type pile = int array;;
exception Pile_pleine;;
exception Pile_vide;;
exception OhMince;;

let creer_pile n = Array.make (n+1) 0;;

let est_vide f = f.(0) = 0;;
let est_pleine f = f.(0) = (Array.length f - 1);;

let empiler e f = if est_pleine f 
    then raise Pile_pleine
    else
        f.(0)<-f.(0)+1;f.(f.(0))<-e;;

let depiler f = if (est_vide f) 
    then raise Pile_vide
    else
        f.(0)<-f.(0)-1;
        f.(f.(0)+1);;

let echange p = if p.(0) < 2 then raise OhMince
        else
            let a = p.(p.(0)) in
        p.(p.(0))<-p.(p.(0) - 1);
            p.(p.(0) - 1)<-a;;

let va_la_bas p =if p.(0) < 2 then raise OhMince
    else

        for i=p.(0) downto 1 do
            p.(i+1)<-p.(i);
        done;
    p.(1)<-p.(p.(0)+1);;


let p = creer_pile 10;;

empiler 13 p;;
empiler 32 p;;
empiler 128 p;;

p;;

va_la_bas p;

p;;

