module SkillSet exposing (SkillSet, hasSkill, skill, skillSet)


type Skill
    = Skill String


skill : String -> Skill
skill =
    Skill


type SkillSet
    = SkillSet (List Skill)


skillSet : List Skill -> SkillSet
skillSet skillList =
    SkillSet skillList


hasSkill : Skill -> SkillSet -> Bool
hasSkill skl (SkillSet list) =
    List.member skl list
