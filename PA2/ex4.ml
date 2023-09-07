let fibo n =
  if n < 2 
    then n
    else 
      let rec rec_fibo n ele1 ele2 =
            if (n = 2) 
              then (ele1+ele2)
              else rec_fibo (n-1) ele2 (ele1+ele2)
      in rec_fibo n 0 1;;

print_int (fibo 0);;
print_newline ();;
print_int (fibo 1);;
print_newline ();;
print_int (fibo 2);;
print_newline ();;
print_int (fibo 3);;
print_newline ();;
print_int (fibo 10);;
print_newline ();;
