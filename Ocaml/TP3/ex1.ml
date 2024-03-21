type file = int array;;
exception File_pleine;;
exception File_vide;;

let creer_file n = Array.make (n+1) 0;;

let est_vide f = f.(0) = 0;;
let est_pleine f = f.(0) = (Array.length f - 1);;

let enfiler e f = if est_pleine f 
    then raise File_pleine
    else
        f.(0)<-f.(0)+1;f.(f.(0))<-e;;

let defiler f = if (est_vide f) 
    then raise File_vide
    else
        f.(0)<-f.(0)-1;
        let r = f.(1) in
        for i = 2 to Array.length f - 1 do 
            f.(i-1)<-f.(i)
        done;
        r;;

let f = creer_file 10;;
enfiler 1 f;;
enfiler 2 f;;
enfiler 3 f;;
enfiler 4 f;;
enfiler 5 f;;

f;;

defiler f;;
defiler f;;
defiler f;;
defiler f;;
defiler f;;

for i=1 to 10 do
    enfiler (i*5) f;
done;;

f;;

for i=1 to 5 do
    print_int (defiler f);
done;;

f;;

enfiler 3 f;;
f;;

