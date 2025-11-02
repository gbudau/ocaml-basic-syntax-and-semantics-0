let ft_power (base: int) (exp: int) : int =
  let rec power (b: int) (e: int) : int =
    if e <= 0 then 1 else b * power b (e - 1)
  in
  power base exp

let () =
  print_int (ft_power 2 4); (* Should display 16 *)
  print_char '\n';
  print_int (ft_power 3 0); (* Should display 1 *)
  print_char '\n';
  print_int (ft_power 0 5); (* Should display 0 *)
  print_char '\n';
  ()
