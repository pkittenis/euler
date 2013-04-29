open List;;

let rec fib = function
  | 0 -> 0
  | 1 -> 1
  | n -> fib (n-1) + fib (n-2);;

let sum = List.fold_left ( + ) 0;;

let even i = 
  i mod 2 == 0;;

let x = ref [];;
let m = ref 0;;
let i = ref 0;;
while not (!m >= 4000000) do
  m := (fib !i);
  if !m mod 2 == 0 then x := !m :: !x;
  i := !i + 1;
done;

Printf.printf "%d\n" (sum !x);;
