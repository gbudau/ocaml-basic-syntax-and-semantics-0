let ft_test_sign (n: int) : unit = 
  if n >= 0 then
    print_endline "positive"
  else
    print_endline "negative"

let () =
  ft_test_sign 1; (* Should display positive *)
  ft_test_sign 0; (* Should display positive *)
  ft_test_sign (-1); (* Should display negative *)
  ()
