datatype espressione = costante    of int
                     | somma       of espressione * espressione
                     | sottrazione of espressione * espressione
                     | prodotto    of espressione * espressione
                     | divisione   of espressione * espressione;
