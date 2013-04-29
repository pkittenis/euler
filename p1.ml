let x = ref 0;;
for i = 0 to 999 do
 if i mod 5 == 0 || i mod 3 == 0 then x := i + !x;
done;
!x;;
Printf.printf "%d\n" !x;;
