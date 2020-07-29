tag @e[tag=bullet,tag=init,limit=1] add colorRainbow
function cu:uuid/generate
execute store result score #1 calcu_temp1 run data get storage cu:resources UUID[0] 1
scoreboard players set #2 calcu_temp1 6
execute if score #1 calcu_temp1 matches ..-1 run scoreboard players operation #1 calcu_temp1 *= #static_-1 numeric
execute store result score @e[tag=bullet,tag=init,limit=1] bulletColor run scoreboard players operation #1 calcu_temp1 %= #2 calcu_temp1
