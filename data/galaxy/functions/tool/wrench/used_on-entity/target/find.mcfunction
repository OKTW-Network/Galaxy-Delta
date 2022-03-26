scoreboard players operation #subject0 UUIDMatch = @s galaxy.tool.wrench.UUID.using0
scoreboard players operation #subject1 UUIDMatch = @s galaxy.tool.wrench.UUID.using1
scoreboard players operation #subject2 UUIDMatch = @s galaxy.tool.wrench.UUID.using2
scoreboard players operation #subject3 UUIDMatch = @s galaxy.tool.wrench.UUID.using3
scoreboard players set #custom UUIDMatch 1
scoreboard players set #hand UUIDMatch 0
execute as @e[tag=galaxy.customEntity,predicate=galaxy:tool/hand_main-wrench] run function cu:uuid/match/main
tag @e[tag=UUIDMatch,limit=1] add galaxy._tag.ThisWrenchTarget
tag @e[tag=UUIDMatch] remove UUIDMatch
