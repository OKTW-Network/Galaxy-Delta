tag @e[tag=bullet,tag=init,limit=1] add colorRainbow
function cu:uuid/generate
execute store result score #1 calcu_temp run data get storage cu:resources UUID[0] 1
scoreboard players set #2 calcu_temp 6
execute if score #1 calcu_temp matches ..-1 run scoreboard players operation #1 calcu_temp *= #-1 num
execute store result score @e[tag=bullet,tag=init,limit=1] bulletColor run scoreboard players operation #1 calcu_temp %= #2 calcu_temp
