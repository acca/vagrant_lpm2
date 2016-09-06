structure cerchio = struct
	val pi = 3.14152;
	val areacerchio = fn r => r * r * pi
end;

(*Utilizzo di pi o areacerchio specificando il nome della struttura*)
cerchio.pi;
cerchio.areacerchio 5.0;

(*Tentativo di utilizzo a pi o areacerchio senza speicicare il nome della struttura*)
pi;
areacerchio 5.0;
