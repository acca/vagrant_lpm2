(* takewile : (a' -> bool) -> a' list -> a' list *)

let rec takewhile p = function
	[] -> []
	| x::xs -> 
			if p x then x::takewhile p xs
			else [];;
			
(* even : int -> bool *)			
let even n = n mod 2 = 0;;

takewhile even [4;8;9;10];;
