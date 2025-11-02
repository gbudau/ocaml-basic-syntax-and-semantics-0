let ft_string_all (f: char -> bool) (str: string) : bool =
  let rec string_all i =
    if i >= String.length str then true
    else if f (String.get str i) then string_all (i + 1)
    else false
  in
  string_all 0

let () =
  let is_digit c = c >= '0' && c <= '9' in
  ft_string_all is_digit "0123456789" |> string_of_bool |> print_endline; (* Should print "true" *)
  ft_string_all is_digit "O12EAS67B9" |> string_of_bool |> print_endline; (* Should print "false" *)
  ()
