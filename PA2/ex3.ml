let rec sec_last list =
  match list with
  | (t2 :: t1 :: t) ->
    (
      if t = []
      then t2
      else sec_last (t1::t)
    )
  | t1 :: t -> 0
  | [] -> 0;;

print_int (sec_last [1;2;3;4;5]);;
print_newline ();;
print_int (sec_last [4;3;2;1]);;
print_newline ();;
print_int (sec_last []);;
print_newline ();;
print_int (sec_last [1]);;
print_newline ();;
print_int (sec_last [1;2]);;
print_newline ();;
