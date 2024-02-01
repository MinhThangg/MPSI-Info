(*
let t= [|1 ; 3; 5; 7; 9; 11;|] in
  let a = t.(0) in
  t.(0)<-t.(1);
  t.(1)<-a;
  t;;*)
  
let string_to_tableau s =
  let t = Array.make (String.length s) ' ' in
  for i=0 to String.length s - 1 do
    if i mod 2 = 0 then
      t.(i)<- ' '
    else
      t.(i)<- s.[i]
    done;
  t;;

let str = "Salut à tous!";;
let tab = string_to_tableau str;;

let tab1 = 
  let t = Array.make 100 1 in
  for i=0 to 100-1 do
    t.(i)<-i*2+1
  done;
  t;;

let tab_impair n = 
  let t = Array.make n 1 in
  for i=0 to n-1 do
    t.(i)<-i*2+1
  done;
  t;;

let tab2 = tab_impair 5;;

let decal t = 
  let a = t.(Array.length t - 1) in
  for i=Array.length t - 1 downto 1 do
    t.(i)<-t.(i-1)
  done;
  t.(0)<-a;
  t;;

let tab3 = decal tab2;;

let palindrome t = 
  let pal = ref true in
  for i=0 to Array.length t - 1 do
    if t.(i)<>t.(Array.length t - 1 - i) then
      pal:=false
  done;
  !pal;;

let a = palindrome [|5;4;3;2;2;3;4;5|];;
