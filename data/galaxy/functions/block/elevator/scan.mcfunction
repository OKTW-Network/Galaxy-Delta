execute if entity @s[tag=checkUp] run tp @s ~ ~1 ~
execute if entity @s[tag=checkDown] run tp @s ~ ~-1 ~

scoreboard players add #1 calcu_temp 1

execute at @s store success score #2 calcu_temp if entity @e[tag=customBlock,tag=galaxy.elevator,distance=..0.05]
execute if score #2 calcu_temp matches 1 at @s store success score #2 calcu_temp if block ~ ~1 ~ #minecraft:passable

execute unless score #1 calcu_temp matches 16 unless score #2 calcu_temp matches 1 at @s run function galaxy:block/elevator/scan
execute if score #1 calcu_temp matches 16 unless score #2 calcu_temp matches 1 run scoreboard players set #1 calcu_temp -1
kill @s
