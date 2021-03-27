module User exposing (User, createUser, skillSet)

import Set
import SkillSet exposing (SkillSet, skill)


type User
    = User
        { name : String
        , skillSet : SkillSet
        }


skillSet : User -> SkillSet
skillSet (User v) =
    v.skillSet


createUser : String -> List String -> User
createUser name skillList =
    User
        { name = name
        , skillSet =
            SkillSet.skillSet <| List.map skill <| Set.toList <| Set.fromList skillList
        }
