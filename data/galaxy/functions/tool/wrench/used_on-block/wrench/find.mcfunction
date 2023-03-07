scoreboard players operation #UUID.match.subject0 cu = @s galaxy.tool.wrench.UUID.using0
scoreboard players operation #UUID.match.subject1 cu = @s galaxy.tool.wrench.UUID.using1
scoreboard players operation #UUID.match.subject2 cu = @s galaxy.tool.wrench.UUID.using2
scoreboard players operation #UUID.match.subject3 cu = @s galaxy.tool.wrench.UUID.using3
scoreboard players set #UUID.match.findCustom cu 1
execute as @e[tag=galaxy.tool.wrench] run function cu:uuid/match/main
tag @e[tag=UUIDMatch,limit=1] add galaxy._tag.ThisWrench
tag @e[tag=UUIDMatch] remove UUIDMatch
