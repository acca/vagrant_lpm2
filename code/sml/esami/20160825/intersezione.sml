val intersezione = fn f:insiemediinteri => fn g:insiemediinteri =>
	(fn x => contiene f x andalso contiene g x):insiemediinteri;