execute if entity @e[tag=galaxy.block,distance=..0.05] run tag @s add galaxy._task.crowbar.doGalaxyBlock

execute if entity @s[tag=galaxy._task.crowbar.doGalaxyBlock] run function galaxy:tool/crowbar/block/galaxy_block
