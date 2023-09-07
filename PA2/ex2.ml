let prime num = 
  let rec rec_prime target div = 
    if div = 1 
      then true
      else 
        if target mod div = 0 
          then false 
          else rec_prime target (div-1)
  in
  rec_prime num (num-1);;

print_string (if prime 2 then "true" else "false");;
print_newline ();;
print_string (if prime 3 then "true" else "false");;
print_newline ();;
print_string (if prime 4 then "true" else "false");;
print_newline ();;
print_string (if prime 17 then "true" else "false");;
print_newline ();;

