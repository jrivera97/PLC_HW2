#load "str.cma"


(*compare operators when encounteredin calc*)
let do_math op = match op with
	| "-" -> (-.)
	| "+" -> (+.)
	| "*" -> ( *. )
	| "/" -> (/.)
	| "^" -> ( ** )
	| oper -> failwith ("Invalid operator: '" ^ oper ^ "'")

let calc stack expr = match expr with

(*if current num matches number, pop onto stack*)
| num when Str.string_match (Str.regexp "[-+]?[0-9]*\\.?[0-9]+") num 0 ->
	float_of_string num :: stack;

(*if not, jump to do_math or raise error*)
| num -> match stack with
	| num1 :: num2 :: nums -> do_math num num2 num1 :: nums
	| _ -> failwith ("Are you sure the expression was given in rpn?")

let tokenize expr =
	let stack = Str.split (Str.regexp " ") expr in
	List.hd (List.fold_left calc [] stack)

let rec loop () =
match read_line () with
| input -> print_endline ( string_of_float(tokenize input) ); loop ()
| exception End_of_file -> ()

(*loop stdin*)
let () = loop ()
