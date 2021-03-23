module ComparatorTest exposing (..)

import Comparator exposing (..)
import Expect
import Test exposing (..)


intComparator : Comparator Int
intComparator =
    compare


type Signal
    = Green
    | Yellow
    | Red


signalComparator : Comparator Signal
signalComparator s1 s2 =
    case ( s1, s2 ) of
        ( Green, Yellow ) ->
            GT

        ( Green, Red ) ->
            GT

        ( Yellow, Red ) ->
            GT

        ( Yellow, Green ) ->
            LT

        ( Red, Green ) ->
            LT

        ( Red, Yellow ) ->
            LT

        ( _, _ ) ->
            EQ


addTest : Test
addTest =
    describe "#minimum"
        [ describe "[4, 1, 3, 2]のうち、compare関数を基準だと、"
            [ test "最小値は1" <|
                \_ ->
                    [ 4, 1, 3, 2 ]
                        |> minimum intComparator
                        |> Expect.equal (Just 1)
            ]
        , describe "[Green, Yellow, Red]のうち、Green > Red > Yellow の順であれば、"
            [ test "Redが最小値となる" <|
                \_ ->
                    [ Green, Yellow, Red ]
                        |> minimum signalComparator
                        |> Expect.equal (Just Red)
            ]
        ]
