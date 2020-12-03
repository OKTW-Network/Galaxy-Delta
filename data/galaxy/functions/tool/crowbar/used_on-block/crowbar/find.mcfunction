scoreboard players operation #subject0 UUIDMatch = @a[tag=ThisCrowbarUser] UseCrowbarUUID0
scoreboard players operation #subject1 UUIDMatch = @a[tag=ThisCrowbarUser] UseCrowbarUUID1
scoreboard players operation #subject2 UUIDMatch = @a[tag=ThisCrowbarUser] UseCrowbarUUID2
scoreboard players operation #subject3 UUIDMatch = @a[tag=ThisCrowbarUser] UseCrowbarUUID3
scoreboard players set #custom UUIDMatch 1
execute as @e[tag=Crowbar] run function cu:uuid/match/main
tag @e[tag=UUIDMatch,limit=1] add ThisCrowbar
tag @e[tag=UUIDMatch] remove UUIDMatch
