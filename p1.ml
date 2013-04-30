open List;;

let x = ref 0;;
for i = 0 to 999 do
 if i mod 5 == 0 || i mod 3 == 0 then x := i + !x;
done;
!x;;
Printf.printf "Loop version: %d\n" !x;;

let sum = List.fold_left (+) 0;;

let p1 max =
  let rec f n =
    if n <= max && ((n mod 5 == 0) || (n mod 3 == 0)) then
      n :: f (n+1)
    else if n <= max then
      f (n+1)
    else
      []
  in f 0;;

Printf.printf "Recursive version: %d\n" (sum(p1 999));;
