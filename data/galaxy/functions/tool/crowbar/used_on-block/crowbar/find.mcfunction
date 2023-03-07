scoreboard players operation #UUID.match.subject0 cu = @a[tag=galaxy._tag.ThisCrowbarUser] galaxy.tool.crowbar.UUID.using0
scoreboard players operation #UUID.match.subject1 cu = @a[tag=galaxy._tag.ThisCrowbarUser] galaxy.tool.crowbar.UUID.using1
scoreboard players operation #UUID.match.subject2 cu = @a[tag=galaxy._tag.ThisCrowbarUser] galaxy.tool.crowbar.UUID.using2
scoreboard players operation #UUID.match.subject3 cu = @a[tag=galaxy._tag.ThisCrowbarUser] galaxy.tool.crowbar.UUID.using3
scoreboard players set #UUID.match.findCustom cu 1
execute as @e[tag=galaxy.tool.crowbar] run function cu:uuid/match/main
tag @e[tag=UUIDMatch,limit=1] add galaxy._tag.ThisCrowbar
tag @e[tag=UUIDMatch] remove UUIDMatch
