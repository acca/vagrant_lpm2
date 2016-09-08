val rec eval = fn costante i => i
			| somma (e1,e2) => eval(e1) + eval(e2)
			| sottrazione (e1,e2) => eval(e1) - eval(e2)
			| prodotto (e1,e2) => eval(e1) * eval(e2)
			| divisione (e1,e2) => eval(e1) div eval(e2);