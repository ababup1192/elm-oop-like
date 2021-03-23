module Comparable exposing (Comparable, minimum)

type alias Comparable a =
    a -> a -> Order


minimum : Comparable a -> List a -> Maybe a
minimum compF list =
    List.head <| List.sortWith compF list