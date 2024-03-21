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

let inverse p =
    let p_aux = creer_pile (Array.length p) in
let size = p.(0) in
    for i = 1 to p.(0) do
        empiler (depiler p) p_aux;
    done;
    
    for i = 0 to size do
        p.(i) <- p_aux.(i);
    done;;

let p = creer_pile 10;;

empiler 13 p;;
empiler 32 p;;
empiler 128 p;;

p;;

inverse p;

p;;

