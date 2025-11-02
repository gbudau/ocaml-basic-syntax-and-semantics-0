let ft_print_alphabet unit : unit = 
  let rec print_alphabet (c: char) : unit =
    if c > 'z' then
      print_char '\n'
    else (
      print_char c;
      print_alphabet (int_of_char c + 1 |> char_of_int)
    )
  in
  print_alphabet 'a'

let () =
  ft_print_alphabet (); (* Should display abcdefghijklmnopqrstuvwxyz *)
  ()
