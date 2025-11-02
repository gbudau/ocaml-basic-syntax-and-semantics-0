let ft_is_palindrome (str: string) : bool =
  let rec is_palindrome left right =
    if left >= right then true
    else if String.get str left <> String.get str right then false
    else is_palindrome (left + 1) (right - 1)
  in
  is_palindrome 0 (String.length str - 1)

let () =
  ft_is_palindrome "radar" |> string_of_bool |> print_endline; (* Should print "true" *)
  ft_is_palindrome "madam" |> string_of_bool |> print_endline; (* Should print "true" *)
  ft_is_palindrome "car" |> string_of_bool |> print_endline; (* Should print "false" *)
  ft_is_palindrome "" |> string_of_bool |> print_endline; (* Should print "true" *)
  ()
