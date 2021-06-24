execute if entity @e[tag=customBlock,distance=..0.05] run tag @s add crowbarCustomBlock

execute if entity @s[tag=crowbarCustomBlock] run function galaxy:tool/crowbar/block/custom_block/main
