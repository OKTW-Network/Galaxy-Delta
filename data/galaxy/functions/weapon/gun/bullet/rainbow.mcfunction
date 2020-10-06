tag @e[tag=bullet,tag=init,limit=1] add colorRainbow
scoreboard players set #max random 7
scoreboard players set #allowNegative random 0
function math:random
execute if score #result random matches 0 run scoreboard players set #result random 7
execute store result score @e[tag=bullet,tag=init,limit=1] bulletColor run scoreboard players get #result random
