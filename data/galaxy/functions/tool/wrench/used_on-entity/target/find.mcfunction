scoreboard players operation #subject0 UUIDMatch = @a[tag=ThisWrenchUser] UseWrenchUUID0
scoreboard players operation #subject1 UUIDMatch = @a[tag=ThisWrenchUser] UseWrenchUUID1
scoreboard players operation #subject2 UUIDMatch = @a[tag=ThisWrenchUser] UseWrenchUUID2
scoreboard players operation #subject3 UUIDMatch = @a[tag=ThisWrenchUser] UseWrenchUUID3
scoreboard players set #custom UUIDMatch 1
scoreboard players set #hand UUIDMatch 0
execute as @e[team=GalaxyCustomE,predicate=galaxy:tool/hand_main-wrench] run function cu:uuid/match/main
tag @e[tag=UUIDMatch,limit=1] add ThisWrenchTarget
tag @e[tag=UUIDMatch] remove UUIDMatch
