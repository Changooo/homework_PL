let rec fold3 f init li1 li2 li3 = 
  if li1 = [] then init else
    let dequeue li = (List.hd li, List.tl li)
    in
    let (ele1, li1_) = dequeue li1 in
    let (ele2, li2_) = dequeue li2 in
    let (ele3, li3_) = dequeue li3
    in 
    fold3 f (f init ele1 ele2 ele3) li1_ li2_ li3_;;


print_int (fold3 (fun a b c d -> a+b+c+d) 10 [33;67;12;33] [10;23;84;57] [11;55;23;58]);; 
print_newline ();;
print_int (fold3 (fun a b c d -> (-a)+b+c+d) 4 [11;63;-45;22] [75;123;-44;1] [55;24;20;3]);; 
print_newline ();;
print_int (fold3 (fun a b c d -> a*b*c*d) 55 [] [] []);; 
print_newline ();;
print_int (fold3 (fun a b c d -> (a*b*c+d) mod 7) 33 [12;33] [10;7] [5;12]);; 
print_newline ();;
print_int (fold3 (fun a b c d -> if b then a+c else a+d) 34 [true;false;false;true] [12;3;4;77] [11;23;6;100]);; 
print_newline ();;
print_int (fold3 (fun a b c d -> if b then a else c+d) 55 [true;true;false;false] [111;63;88;123;98] [0;23;778;34;6]);; 
print_newline ();;