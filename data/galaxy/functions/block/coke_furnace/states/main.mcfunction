function galaxy:block/coke_furnace/states/check-lit
execute if entity @s[tag=setStateLit] run function galaxy:block/coke_furnace/states/lit
tag @s[tag=setStateLit] remove setStateLit
