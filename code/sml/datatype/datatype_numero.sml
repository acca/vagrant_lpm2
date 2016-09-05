datatype numero = intero of int | reale of real;

val moltiplicanumeri = fn (intero a, intero b) => intero (a*b)
	| (intero a, reale b) => reale ((real a) * b)
	| (reale a, intero b) =>  reale (a * (real b))
	| (reale a, reale b) => reale (a*b);

val a:numero = reale 5.0;
val b = intero 5;

moltiplicanumeri (a,b);