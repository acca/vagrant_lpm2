(*Funzione controlla*)
val controlla = fn i:insiemediinteri => fn i1:insiemediinteri => fn i2:insiemediinteri => fn n:int =>
	contiene i n andalso contiene i1 n andalso contiene i2 n

(*Definizione insieme1*)
val insieme1 = aggiungi vuoto 1;
val insieme1 = aggiungi insieme1 2;
val insieme1 = aggiungi insieme1 3;
val insieme1 = aggiungi insieme1 4;
val insieme1 = aggiungi insieme1 5;

(*Definizione insieme2*)
val insieme2 = aggiungi vuoto 2;
val insieme2 = aggiungi insieme2 3;
val insieme2 = aggiungi insieme2 4;

(*Calcolo intersezione 1*)
val inter1e2 = intersezione insieme1 insieme2;
(*Controllo inter1e2*)
print "Controllo intersezione per intero: 1 - FALSE\n";
controlla inter1e2 insieme1 insieme2 1;
print "Controllo intersezione per intero: 2 - TRUE\n";
controlla inter1e2 insieme1 insieme2 2;
print "Controllo intersezione per intero: 3 - TRUE\n";
controlla inter1e2 insieme1 insieme2 3;
print "Controllo intersezione per intero: 4 - TRUE\n";
controlla inter1e2 insieme1 insieme2 4;
print "Controllo intersezione per intero: 5 - FALSE\n";
controlla inter1e2 insieme1 insieme2 5;


(*Calcolo intersezione 2*)
val inter1ev = intersezione insieme1 vuoto;
(*Controllo inter1ev*)
print "Controllo intersezione per intero: 1 - FALSE\n";
controlla inter1ev insieme1 vuoto 1;
print "Controllo intersezione per intero: 2 - FALSE\n";
controlla inter1ev insieme1 vuoto 2;
print "Controllo intersezione per intero: 3 - FALSE\n";
controlla inter1ev insieme1 vuoto 3;
print "Controllo intersezione per intero: 4 - FALSE\n";
controlla inter1ev insieme1 vuoto 4;
print "Controllo intersezione per intero: 5 - FALSE\n";
controlla inter1ev insieme1 vuoto 5;