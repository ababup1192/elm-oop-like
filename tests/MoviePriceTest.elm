module MoviePriceTest exposing (..)

import Amount exposing (..)
import Expect
import MoviePrice exposing (..)
import Test exposing (..)


addTest : Test
addTest =
    describe "#price"
        [ describe "子供・休日の料金は、"
            [ test "600円です" <|
                \_ ->
                    MoviePrice.price Children Holiday
                        |> Expect.equal (amount 600)
            ]
        ]
