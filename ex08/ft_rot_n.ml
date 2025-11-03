let ft_rot_n (n: int) (str: string) : string =
  let shift base c =
    char_of_int (((int_of_char c + n) - base) mod 26 + base)
  in
  let rotate_char = function
    | 'a'..'z' as c -> shift (int_of_char 'a') c
    | 'A'..'Z' as c -> shift (int_of_char 'A') c
    | c -> c
  in
  String.map rotate_char str

let () =
  ft_rot_n 1 "abcdefghijklmnopqrstuvwxyz" |> print_endline; (* Outputs: "bcdefghijklmnopqrstuvwxyza" *)
  ft_rot_n 13 "abcdefghijklmnopqrstuvwxyz" |> print_endline; (* Outputs: "nopqrstuvwxyzabcdefghijklm" *)
  ft_rot_n 42 "0123456789" |> print_endline;  (* Outputs: "0123456789" *)
  ft_rot_n 0 "Damned !" |> print_endline;  (* Outputs: "Damned !" *)
  ft_rot_n 42 "" |> print_endline;  (* Outputs: "" *)
  ft_rot_n 1 "NBzlk qnbjr !" |> print_endline;  (* Outputs: "OCalm rocks !" *)
  ()
