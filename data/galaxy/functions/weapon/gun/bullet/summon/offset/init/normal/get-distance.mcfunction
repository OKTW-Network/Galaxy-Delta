execute as @e[tag=galaxy.dummy.bulletBaseAnchor] at @s run summon minecraft:marker ~ ~ ~ {Tags:["galaxy.dummy.bulletGetDistance"]}

execute store result score #1 calcu_temp run data get entity @e[tag=galaxy.dummy.bulletGetDistance,limit=1] Rotation[0] 1000
function cu:uuid/generate
execute store result score #2 calcu_temp store result score #3 calcu_temp run data get storage cu:uuid generate[0]
scoreboard players operation #2 calcu_temp %= @e[tag=galaxy.bullet,tag=init,limit=1] bulletOffset
execute if score #3 calcu_temp matches ..-1 run scoreboard players operation #2 calcu_temp *= #-1 num
execute store result entity @e[tag=galaxy.dummy.bulletGetDistance,limit=1] Rotation[0] float 0.001 run scoreboard players operation #1 calcu_temp += #2 calcu_temp

execute store result score #1 calcu_temp run data get entity @e[tag=galaxy.dummy.bulletGetDistance,limit=1] Rotation[1] 1000
function cu:uuid/generate
execute store result score #2 calcu_temp store result score #3 calcu_temp run data get storage cu:uuid generate[0]
scoreboard players operation #2 calcu_temp %= @e[tag=galaxy.bullet,tag=init,limit=1] bulletOffset
execute if score #3 calcu_temp matches ..-1 run scoreboard players operation #2 calcu_temp *= #-1 num
execute store result entity @e[tag=galaxy.dummy.bulletGetDistance,limit=1] Rotation[1] float 0.001 run scoreboard players operation #1 calcu_temp += #2 calcu_temp

execute as @e[tag=galaxy.dummy.bulletGetDistance] at @s run tp ^ ^ ^1

# tellraw @a [{"nbt":"Rotation","entity":"@e[tag=galaxy.dummy.bulletGetDistance]","interpret":false}," ",{"nbt":"Pos","entity":"@e[tag=galaxy.dummy.bulletGetDistance]","interpret":false}]

execute store result score #1 calcu_temp run data get entity @e[tag=galaxy.dummy.bulletGetDistance,limit=1] Pos[0] 100
execute store result score #2 calcu_temp run data get entity @e[tag=galaxy.dummy.bulletGetDistance,limit=1] Pos[1] 100
execute store result score #3 calcu_temp run data get entity @e[tag=galaxy.dummy.bulletGetDistance,limit=1] Pos[2] 100

execute store result score @s gunBulletArrX run scoreboard players remove #1 calcu_temp 150
execute store result score @s gunBulletArrY run scoreboard players remove #2 calcu_temp 8150
execute store result score @s gunBulletArrZ run scoreboard players remove #3 calcu_temp 250

# tellraw @a [{"score":{"name":"@s","objective":"gunBulletArrX"}},{"text":" "},{"score":{"name":"@s","objective":"gunBulletArrY"}},{"text":" "},{"score":{"name":"@s","objective":"gunBulletArrZ"}}]

kill @e[tag=galaxy.dummy.bulletGetDistance]
