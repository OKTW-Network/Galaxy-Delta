execute if entity @e[tag=galaxy.customBlock,distance=..0.05] run tag @s add galaxy._tag.crowbarCustomBlock

execute if entity @s[tag=galaxy._tag.crowbarCustomBlock] run function galaxy:tool/crowbar/block/custom_block/main
