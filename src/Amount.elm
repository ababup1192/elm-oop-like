module Amount exposing (Amount, add, amount)


type Amount
    = Amount Int


amount : Int -> Amount
amount value =
    Amount value


add : Amount -> Amount -> Amount
add (Amount v1) (Amount v2) =
    Amount <| v1 + v2
