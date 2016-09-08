val rec is_free = fn s:string => fn (Var x) => x = s
	| (Lambda (x,e)) =>
		if x = s then
			false
		else
			is_free s e
	| (Apply (e1,e2)) =>
		(is_free s e1) orelse (is_free s e2);