tag @e[tag=bullet,tag=init,limit=1] add colorRainbow
scoreboard players set #max random 6
scoreboard players set #allowNegative random 0
function math:random
execute store result score @e[tag=bullet,tag=init,limit=1] bulletColor run scoreboard players get #result random
