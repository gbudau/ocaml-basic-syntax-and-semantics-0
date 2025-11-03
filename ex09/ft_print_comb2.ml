let ft_print_comb2 () : unit =
  let print_two_digits n =
    if n < 10 then print_char '0' else ();
    print_int n
  in
  let rec print_pairs a b =
    if a > 98 then ()
    else if b > 99 then print_pairs (a + 1) (a + 2)
    else
      let () =
        print_two_digits a;
        print_char ' ';
        print_two_digits b;
        if not (a = 98 && b = 99) then (
          print_char ',';
          print_char ' ';
        )
      in
      print_pairs a (b + 1)
  in
  print_pairs 0 1;
  print_char '\n'

let () =
  ft_print_comb2 (); (* Should output 00 01, 00 02, 00 03, 00 04, 00 05, <more numbers>, 00 99, 01 02, <more numbers>, 97 99, 98 99 *)
  ()
