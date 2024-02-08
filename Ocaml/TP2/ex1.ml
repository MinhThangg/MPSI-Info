let rec somme_float l = match l with
    | [] -> 0.
    | x::r -> x+.somme_float r;;


