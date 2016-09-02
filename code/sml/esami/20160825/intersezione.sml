val intersezione = fn f:insiemediinteri => fn g:insiemediinteri =>
	(fn n:int => if (n = x)
		then
			true
		else
			f n
	):insiemediinteri;