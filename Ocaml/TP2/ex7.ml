let plus_grand l = 
    let g = ref 0 in 
    for i=0 to Array.length l - 1 do 
        if l.(i) > !g then g:=l.(i)
    done;
    !g;;

plus_grand [|5;9;5000;56;1000|];;
