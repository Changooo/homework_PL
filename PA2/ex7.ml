let sigma a b f =
  let range lower upper func=
    let rec rec_range list ele =
      if ele >= lower
        then rec_range ((func ele)::list) (ele-1)
        else list
    in  
    rec_range [] upper
  in 
  List.fold_left (fun i x -> i+x) 0 (range a b f);;


print_int (sigma 10 10 (fun x->x));;
print_newline ();;
print_int (sigma 11 10 (fun x->x));;
print_newline ();;
print_int (sigma 10 5 (fun x->x));;
print_newline ();;
print_int (sigma 1 10 (fun x->if x mod 2 = 0 then 1 else 0));;
print_newline ();;
print_int (sigma 2 10 (fun x->x+10));;
print_newline ();;
print_int (sigma 0 100 (fun x->0));;
print_newline ();;
print_int (sigma 10 12 (fun x->2*x));;
print_newline ();;