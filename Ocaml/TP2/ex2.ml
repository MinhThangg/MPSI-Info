let rec croissant l = match l with
    | [] -> true
    | _::[] -> true
    | x::y::r -> if x <= y then croissant (y::r) else false;;

let test = croissant [1;2;3;3;6;7;8;10];;
