datatype currency = eur | usd | ounce_gold;
type money = real * currency;

fun convert (amount, to) =
    let val toeur = fn
        (x, eur)        => x
      | (x, usd)        => x / 1.05 
      | (x, ounce_gold) => x * 1113.0
    in
        ( case to of
            eur        => toeur amount
          | usd        => toeur amount * 1.05
          | ounce_gold => toeur amount / 1113.0
        , to)
   end;
