function galaxy:block/advanced_blast_furnace/states/check-lit
execute if entity @s[tag=setStateLit] run function galaxy:block/advanced_blast_furnace/states/lit
tag @s[tag=setStateLit] remove setStateLit
