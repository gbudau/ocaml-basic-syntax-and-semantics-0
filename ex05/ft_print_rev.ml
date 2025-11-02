let ft_print_rev (str: string) : unit =
  let rec print_rev i =
    if i < 0 then print_char '\n'
    else (
      print_char (String.get str i);
      print_rev (i - 1)
    )
  in
  print_rev (String.length str - 1)

let () =
  ft_print_rev "Hello, World!"; (* Should print "!dlroW , olleH\n" *)
  ()
