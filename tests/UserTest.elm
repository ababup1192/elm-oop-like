module UserTest exposing (..)

import Expect
import SkillSet exposing (..)
import Test exposing (..)
import User exposing (..)


hasSkillTest : Test
hasSkillTest =
    describe "#hasSkillTest"
        [ describe "ElmのスキルをABは持っている"
            [ test "Elmを持っているは正しい" <|
                \_ ->
                    let
                        ab =
                            createUser "ABAB" [ "Elm", "Elm", "Scala", "Java" ]
                    in
                    ab
                        |> User.skillSet
                        |> hasSkill (skill "Elm")
                        |> Expect.true "Expected has Elm"
            ]
        ]
