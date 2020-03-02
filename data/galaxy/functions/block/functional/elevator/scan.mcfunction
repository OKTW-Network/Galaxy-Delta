execute if entity @s[tag=checkUp] run tp @s ~ ~1 ~
execute if entity @s[tag=checkDown] run tp @s ~ ~-1 ~

scoreboard players add #calculation_temp2 numeric 1
execute at @s store success score #calculation_temp1 numeric if entity @e[tag=elevator,distance=..0.05] 
execute if entity @s[tag=checkSafe] if score #calculation_temp1 numeric matches 1 at @s store success score #calculation_temp1 numeric if block ~ ~1 ~ #minecraft:passable

execute unless score #calculation_temp1 numeric matches 1 unless score #calculation_temp2 numeric matches 16 at @s run function galaxy:block/functional/elevator/scan
execute unless score #calculation_temp1 numeric matches 1 if score #calculation_temp2 numeric matches 16 run scoreboard players set #calculation_temp2 numeric -1
execute if score #calculation_temp1 numeric matches 1 run kill @s
execute if score #calculation_temp2 numeric matches -1 run kill @s
