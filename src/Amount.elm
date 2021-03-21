module Amount exposing (Amount, add, amount, isOverflow)


type Amount
    = Amount Int
    | Overflow


amount : Int -> Amount
amount value =
    Amount value


add : Amount -> Amount -> Amount
add amount1 amount2 =
    case ( amount1, amount2 ) of
        ( Amount v1, Amount v2 ) ->
            let
                sum =
                    v1 + v2
            in
            if isInfinite <| toFloat sum then
                Overflow

            else
                Amount sum

        _ ->
            Overflow


isOverflow : Amount -> Bool
isOverflow amnt =
    case amnt of
        Overflow ->
            True

        _ ->
            False
