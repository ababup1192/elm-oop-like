module MoviePrice exposing (Category(..), DayType(..), price)

import Amount exposing (Amount, amount)


type
    Category
    -- 一般 | 子供
    = General
    | Children


type
    DayType
    -- 平日 | 休日
    = Weekdays
    | Holiday


price : Category -> DayType -> Amount
price category dayType =
    amount
        (case ( category, dayType ) of
            ( General, Weekdays ) ->
                1000

            ( General, Holiday ) ->
                1500

            ( Children, Weekdays ) ->
                400

            ( Children, Holiday ) ->
                600
        )
