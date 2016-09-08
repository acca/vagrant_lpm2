val rec compute = fn X 				=>	(fn x:int => fn y:int => x)
					|Y 				=>	(fn x:int => fn y:int => y)
					|Mul (e1,e2) 	=>  (fn x:int => fn y:int => (compute e1 x y) * (compute e2 x y))
					|Avg (e1,e2) 	=> 	(fn x:int => fn y:int => round((real(compute e1 x y) + real(compute e2 x y))/2.0));
