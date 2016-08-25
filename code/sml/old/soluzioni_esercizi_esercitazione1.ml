(* 
   Esercizio 1.11
   Definire ricorsivamente una funzione che, applicata a un intero positivo n, determini se n e' una potenza di 2.
*)


let rec potenza2 = function
     1 -> true
   | n -> n mod 2 = 0 && potenza2 (n/2);;


(* 
   Esercizio 1.14
   Definire funzioni ricorsive di coda "equivalenti" a sum, power e stringcopy.
*)


let sum (n, m) =
      let rec aux (n, m, ris) = match m with
            0 -> ris
          | m -> aux (n, pred m, succ ris)
      in aux (n, m, n);;


let times (n, m) =
     let rec aux (n, m, ris) = match m with
           0 -> ris
         | m -> aux (n, pred m, sum (n, ris))
     in aux (n, m, 0);;


let power (n, m) =
     let rec aux (n, m, ris) = match m with
           0 -> ris
         | m -> aux (n, pred m, times (n, ris))
     in aux (n, m, 1);;


let stringcopy (c, n) =
    let rec aux (c, n, ris) =
      if n <= 0 then ris
                else aux (c, n-1, c^ris)
    in aux (c, n, "");;


(* 
   Esercizio 1.17
   Definire una funzione second che, applicata a una coppia, ne riporta il secondo elemento.
*)


let second (x, y) = y;;


(* 
   Esercizio 1.18
   Definire una funzione swap che, applicata a una coppia (x, y), riporti (y, x).
*)


let swap (x, y) = (y, x);;
