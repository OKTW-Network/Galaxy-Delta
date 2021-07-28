function galaxy:hitbox/tag/bullet-trace

execute if entity @e[tag=galaxy.hitbox.target] facing entity @e[tag=galaxy.hitbox.target,limit=1] eyes run tp ~ ~ ~

tag @e[tag=galaxy.hitbox.target] remove galaxy.hitbox.target

scoreboard players remove @s bulletTrace 1
scoreboard players set @s bulletTraceCD 4
