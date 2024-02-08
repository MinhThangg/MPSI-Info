let rec print_int_array l =match l with
    | [] -> print_newline();
    | x::r -> print_int x ; print_int_array r;;

print_int_array [1;2;4;5;2;2];;
