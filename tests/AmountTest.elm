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
        ]
