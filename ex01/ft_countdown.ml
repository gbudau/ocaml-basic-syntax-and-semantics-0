let ft_countdown (n: int) : unit =
  let rec countdown (k: int) : unit =
    if k >= 0 then print_int k else print_int 0;
    print_char '\n';
    if k > 0 then countdown (k - 1) else ()
  in
  countdown n

let () =
  ft_countdown 3;
  print_char '-';
  print_char '\n';
  ft_countdown 0;
  print_char '-';
  print_char '\n';
  ft_countdown (-1);
  ()
