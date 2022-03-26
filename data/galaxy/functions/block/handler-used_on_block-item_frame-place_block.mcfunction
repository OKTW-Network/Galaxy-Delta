tag @s add galaxy._tag.ThisPlaceBlock

execute at @s run tag @e[tag=customBlockPlacer,distance=..10,limit=1] add galaxy._tag.ThisBlockPlacer

execute as @e[tag=galaxy._tag.ThisBlockPlacer] at @s align xyz positioned ~0.5 ~ ~0.5 run function galaxy:block/check_block

execute as @e[tag=galaxy._tag.ThisBlockPlacer,tag=galaxy.hi-tech_crafting_table] at @s align xyz positioned ~0.5 ~ ~0.5 run function galaxy:block/placer/hi-tech_crafting_table
execute as @e[tag=galaxy._tag.ThisBlockPlacer,tag=galaxy.coke_furnace] at @s align xyz positioned ~0.5 ~ ~0.5 run function galaxy:block/placer/coke_furnace
execute as @e[tag=galaxy._tag.ThisBlockPlacer,tag=galaxy.advanced_blast_furnace] at @s align xyz positioned ~0.5 ~ ~0.5 run function galaxy:block/placer/advanced_blast_furnace
execute as @e[tag=galaxy._tag.ThisBlockPlacer,tag=galaxy.assembly_table] at @s align xyz positioned ~0.5 ~ ~0.5 run function galaxy:block/placer/assembly_table
execute as @e[tag=galaxy._tag.ThisBlockPlacer,tag=galaxy.super_assembler] at @s align xyz positioned ~0.5 ~ ~0.5 run function galaxy:block/placer/super_assembler
execute as @e[tag=galaxy._tag.ThisBlockPlacer,tag=galaxy.elevator] at @s align xyz positioned ~0.5 ~ ~0.5 run function galaxy:block/placer/elevator

kill @e[tag=galaxy._tag.ThisBlockPlacer]

tag @s remove galaxy._tag.ThisPlaceBlock
