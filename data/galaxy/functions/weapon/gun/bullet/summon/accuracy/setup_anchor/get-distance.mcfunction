execute as @e[tag=galaxy.dummy.bulletBaseAnchor] at @s run summon minecraft:marker ~ ~ ~ {Tags:["galaxy.dummy.bulletGetDistance"]}

scoreboard players set #3 temp 15
scoreboard players operation #3 temp *= #gun.bullet.summon.accuracy galaxy
scoreboard players remove #3 temp 15000
function cu:uuid/generate
execute store result score #1 temp store result score #2 temp run data get storage cu:uuid generate.result[0]
scoreboard players operation #1 temp %= #3 temp
execute if score #2 temp matches 1.. run scoreboard players operation #1 temp *= #-1 num
execute store result entity @e[tag=galaxy.dummy.bulletGetDistance,limit=1] Rotation[0] float 0.001 run scoreboard players get #1 temp
execute store result score #1 temp store result score #2 temp run data get storage cu:uuid generate.result[3]
scoreboard players operation #1 temp %= #3 temp
execute if score #2 temp matches 1.. run scoreboard players operation #1 temp *= #-1 num
execute store result entity @e[tag=galaxy.dummy.bulletGetDistance,limit=1] Rotation[1] float 0.001 run scoreboard players get #1 temp

execute as @e[tag=galaxy.dummy.bulletGetDistance] at @s run tp ^ ^ ^1

execute store result score #gun.bullet.summon.accuracy.setup_anchor.distance.X galaxy run data get entity @e[tag=galaxy.dummy.bulletGetDistance,limit=1] Pos[0] 100
scoreboard players remove #gun.bullet.summon.accuracy.setup_anchor.distance.X galaxy 150
execute store result score #gun.bullet.summon.accuracy.setup_anchor.distance.Y galaxy run data get entity @e[tag=galaxy.dummy.bulletGetDistance,limit=1] Pos[1] 100
scoreboard players remove #gun.bullet.summon.accuracy.setup_anchor.distance.Y galaxy 8150
execute store result score #gun.bullet.summon.accuracy.setup_anchor.distance.Z galaxy run data get entity @e[tag=galaxy.dummy.bulletGetDistance,limit=1] Pos[2] 100
scoreboard players remove #gun.bullet.summon.accuracy.setup_anchor.distance.Z galaxy 250

kill @e[tag=galaxy.dummy.bulletGetDistance]
