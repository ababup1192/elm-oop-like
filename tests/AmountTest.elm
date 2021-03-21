module AmountTest exposing (..)

import Amount exposing (..)
import Expect
import Test exposing (..)


addTest : Test
addTest =
    describe "#add"
        [ describe "amount 1 + amount 2は、"
            [ test "中の整数を足して、amount 3となる" <|
                \_ ->
                    Amount.add (amount 1) (amount 1)
                        |> Expect.equal (amount 2)
            ]
        , describe "amount 大きすぎる数字 + amount 大きすぎる数字は、"
            [ test "和がInfになり、オーバーフロー通貨となる" <|
                \_ ->
                    Amount.add (amount <| 10 ^ 500) (amount <| 10 ^ 500)
                        |> isOverflow
                        |> Expect.true "オーバーフロー通過であることを期待します。"
            ]
        ]
