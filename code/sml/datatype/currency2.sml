datatype currency = eur | usd | ounce_gold;
datatype money = Eur of real | Usd of real | Ounce_gold of real;

fun convert (amount, to) =
    let val toeur = fn
        Eur x        => x
      | Usd x        => x / 1.05 
      | Ounce_gold x => x * 1113.0
    in
        ( case to of
            eur        => toeur amount
          | usd        => toeur amount * 1.05
          | ounce_gold => toeur amount / 1113.0
        , to)
   end;
