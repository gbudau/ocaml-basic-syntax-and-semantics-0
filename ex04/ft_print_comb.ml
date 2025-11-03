let ft_print_comb unit : unit =
  let rec print_comb a b c =
    if a > 7 then ()
    else if b > 8 then print_comb (a + 1) (a + 2) (a + 3)
    else if c > 9 then print_comb a (b + 1) (b + 2)
    else (
      print_int a;
      print_int b;
      print_int c;
      if not (a = 7 && b = 8 && c = 9) then print_string ", ";
      print_comb a b (c + 1)
    )
  in
  print_comb 0 1 2;
  print_string "\n"

let () = 
  ft_print_comb (); (* Should display 012, 013, 014, 015, 016, 017, 018, 019, 023, ..., 789 *)
  ()
