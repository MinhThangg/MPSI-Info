let rec recherche e l = match l with
    | [] -> false
    | x::r -> if x = e then true else recherche e r;;

let rec recherche_ e l = match l with
    | [] -> false
    | x::_ when x=e -> true
    | _::r -> recherche e r

let test = recherche_ 5 [1;5;8;4;1;2;3;62;7];;
