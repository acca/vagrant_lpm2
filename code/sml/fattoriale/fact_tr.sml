(*fact_tr è visibile all'ambiente globale*)
val rec fact_tr = fn n => fn res =>
	if n = 0 then
		res
	else
		fact_tr(n - 1) (n * res);

val rec fact = fn n =>
	fact_tr n 1;


(*fact_tr non è più visibile all'ambiente globale perchè
	definita in un blocco di annidamento statico*)
val rec fact = fn n =>
	let
		val rec fact_tr = fn n => fn res =>
			if n = 0 then
				res
			else
				fact_tr(n - 1) (n * res)
	in
		fact_tr n 1
	end;

