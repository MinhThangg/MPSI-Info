type 'a pile = 'a list ref;;

exception Pile_vide;;
exception Non_trouve;;

let creer_pile () = ref [];;

let empiler e p = p := e::!p;;
let depiler p = match !p with 
    | [] -> raise Pile_vide
    | x::_ -> x;;

let rec prendre i p = match !p with
    | [] -> raise Non_trouve
    | x::r -> if i = 0 then x else prendre (i-1) (ref r);;

let p = creer_pile();;


for i=0 to 10 do 
    empiler (i*5) p;
done;;

prendre 3 p;;

