function galaxy:tool/wrench/uuid/get-use
scoreboard players operation #subject0 UUIDMatch = @s UseWrenchUUID0
scoreboard players operation #subject1 UUIDMatch = @s UseWrenchUUID1
scoreboard players operation #subject2 UUIDMatch = @s UseWrenchUUID2
scoreboard players operation #subject3 UUIDMatch = @s UseWrenchUUID3
scoreboard players set #custom UUIDMatch 1
execute as @e[tag=wrench] run function cu:uuid/match/main
tag @e[tag=UUIDMatch,limit=1] add ThisWrench
tag @e[tag=UUIDMatch] remove UUIDMatch
