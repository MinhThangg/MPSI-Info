let echange a b = 
    let c = !a in 
    a:=!b;
    b:=c;;


let a1 = ref 5;;
let b1 = ref 10;;
let test = echange a1 b1;;
a1;;
b1;;
    
