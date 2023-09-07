let merge li1 li2 =
  let dequeue li = (List.hd li, List.tl li)
  in
  let rec rec_merge l1 l2 res=
    if l1 = [] then res@l2 else
      if l2 = [] then res@l1 else
        let (ele1, l1_) = dequeue l1
        in
        let (ele2, l2_)  = dequeue l2
        in
        if ele1 >= ele2 
          then rec_merge l1_ l2 (res@[ele1])
          else rec_merge l1 l2_ (res@[ele2])
  in
  rec_merge li1 li2 [];;

let print_list list =
  let rec print_elements list = match list with 
    | [] -> ()
    | h::t -> print_int h; if t=[] then () else (print_string ";"; print_elements t)
  in
  print_string "[";
  print_elements list;
  print_string "]";;

print_list (merge [3;2;1] [5;4]);;
print_newline ();;
print_list (merge [5;3] [5;2]);;
print_newline ();;
print_list (merge [4;2] []);;
print_newline ();;
print_list (merge [] [2;1]);;
print_newline ();;
print_list (merge [] []);;
print_newline ();;
print_list (merge [0;0;0;0] [0;0;0;0]);;
print_newline ();;
print_list (merge [4;3;-2] [9;7;7]);;
print_newline ();;
print_list (merge [-2;-999] []);;
print_newline ();;
