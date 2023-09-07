let gcd n m = 
  let rec euclid_gcd a b = 
    if b = 0 
      then a 
      else euclid_gcd b (a mod b) 
    in 
  let (big, small) = 
    if n > m 
      then (n, m) 
      else (m, n) 
    in
  euclid_gcd big small;;

print_int (gcd 10 0);;
print_string "\n";;
print_int (gcd 9 5);;
print_string "\n";;
print_int (gcd 13 13);;
print_string "\n";;
print_int (gcd 37 600);;
print_string "\n";;
print_int (gcd 0 0);;
print_string "\n";;