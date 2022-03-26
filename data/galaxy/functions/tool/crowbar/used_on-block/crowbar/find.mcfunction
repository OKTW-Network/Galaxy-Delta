scoreboard players operation #subject0 UUIDMatch = @a[tag=galaxy._tag.ThisCrowbarUser] galaxy.tool.crowbar.UUID.using0
scoreboard players operation #subject1 UUIDMatch = @a[tag=galaxy._tag.ThisCrowbarUser] galaxy.tool.crowbar.UUID.using1
scoreboard players operation #subject2 UUIDMatch = @a[tag=galaxy._tag.ThisCrowbarUser] galaxy.tool.crowbar.UUID.using2
scoreboard players operation #subject3 UUIDMatch = @a[tag=galaxy._tag.ThisCrowbarUser] galaxy.tool.crowbar.UUID.using3
scoreboard players set #custom UUIDMatch 1
execute as @e[tag=Crowbar] run function cu:uuid/match/main
tag @e[tag=UUIDMatch,limit=1] add galaxy._tag.ThisCrowbar
tag @e[tag=UUIDMatch] remove UUIDMatch
