let range lower upper =
  let rec rec_range list ele =
    if ele >= lower
      then rec_range (ele::list) (ele-1)
      else list
  in  
  rec_range [] upper;;


let print_list list =
  let rec print_elements list = match list with 
    | [] -> ()
    | h::t -> print_int h; if t=[] then () else (print_string ";"; print_elements t)
  in
  print_string "[";
  print_elements list;
  print_string "]";;


print_list (range 10 15);;
print_newline ();;
print_list (range (-2) 7);;
print_newline ();;
print_list (range 9 3);;
print_newline ();;
print_list (range 22 22);;
print_newline ();;
print_list (range 55 (-12));;
print_newline ();;
