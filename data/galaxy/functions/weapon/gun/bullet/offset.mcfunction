execute store result score #calculation_temp1 numeric run data get entity @s Rotation[0] 10
execute store result score #calculation_temp2 numeric run scoreboard players get @e[tag=bullet,tag=init,limit=1] bulletOffset
execute store result score #calculation_temp3 numeric run data get entity @e[tag=bullet,tag=init,limit=1] UUID[0]
scoreboard players operation #calculation_temp4 numeric = #calculation_temp3 numeric
scoreboard players operation #calculation_temp4 numeric %= #static_10 numeric
scoreboard players operation #calculation_temp3 numeric %= #calculation_temp2 numeric
execute if score #calculation_temp4 numeric matches ..5 run scoreboard players operation #calculation_temp1 numeric -= #calculation_temp3 numeric
execute unless score #calculation_temp4 numeric matches ..5 run scoreboard players operation #calculation_temp1 numeric += #calculation_temp3 numeric
execute store result entity @e[tag=bullet,tag=init,limit=1] Rotation[0] float 0.1 run scoreboard players get #calculation_temp1 numeric

execute store result score #calculation_temp1 numeric run data get entity @s Rotation[1] 10
execute store result score #calculation_temp2 numeric run scoreboard players get @e[tag=bullet,tag=init,limit=1] bulletOffset
execute store result score #calculation_temp3 numeric run data get entity @e[tag=bullet,tag=init,limit=1] UUID[1]
scoreboard players operation #calculation_temp4 numeric = #calculation_temp3 numeric
scoreboard players operation #calculation_temp4 numeric %= #static_10 numeric
scoreboard players operation #calculation_temp3 numeric %= #calculation_temp2 numeric
execute if score #calculation_temp4 numeric matches ..5 run scoreboard players operation #calculation_temp1 numeric -= #calculation_temp3 numeric
execute unless score #calculation_temp4 numeric matches ..5 run scoreboard players operation #calculation_temp1 numeric += #calculation_temp3 numeric
execute store result entity @e[tag=bullet,tag=init,limit=1] Rotation[1] float 0.1 run scoreboard players get #calculation_temp1 numeric
