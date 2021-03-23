module Comparator exposing (Comparator, minimum)


type alias Comparator a =
    a -> a -> Order


minimum : Comparator a -> List a -> Maybe a
minimum compF list =
    List.head <| List.sortWith compF list
