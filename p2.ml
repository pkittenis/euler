open List;;

(* Plain recursion, slow due to 2* recursive calls to fib *)
(* let rec fib = function *)
(*   | 0 -> 0 *)
(*   | 1 -> 1 *)
(*   | n -> fib (n-1) + fib (n-2);; *)

(* tail recursion, faster *)
let fib n =
  let rec f n x y =
    if n <= 0 then y
    else f (n-1) (x+y) x in
  f n 1 0;;

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

Printf.printf "Loop version: %d\n" (sum !x);;

let p2 max =
  let rec f n =
    let m = fib n in
    match m with
    | m when m < max && m mod 2 == 0 -> m :: f (n+1)
    | m when m < max -> f (n+1)
    | _ -> []
  in f 0;;
  (*   if m < max && m mod 2 == 0 then m :: f (n+1) *)
  (*   else if m < max then f (n+1) *)
  (*   else [] *)
  (* in f 0;; *)

Printf.printf "Recursive version: %d\n" (sum (p2 4000000));;
