execute if entity @s[tag=galaxy.hi-tech_crafting_table] run function galaxy:block/placer/hi-tech_crafting_table
execute if entity @s[tag=galaxy.coke_furnace] run function galaxy:block/placer/coke_furnace
execute if entity @s[tag=galaxy.advanced_blast_furnace] run function galaxy:block/placer/advanced_blast_furnace
execute if entity @s[tag=galaxy.assembly_table] run function galaxy:block/placer/assembly_table
execute if entity @s[tag=galaxy.super_assembler] run function galaxy:block/placer/super_assembler
execute if entity @s[tag=galaxy.elevator] run function galaxy:block/placer/elevator

kill @e[tag=galaxy._tag.ThisBlockPlacer]
