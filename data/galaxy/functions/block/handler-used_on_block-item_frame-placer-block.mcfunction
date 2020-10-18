tag @s add triggerPlaceBlock

execute at @s run tag @e[tag=block_placer,distance=..5,limit=1] add ThisPlacerBlock

execute as @e[tag=ThisPlacerBlock] at @s align xyz positioned ~0.5 ~ ~0.5 run function galaxy:block/check_block

execute as @e[tag=ThisPlacerBlock,tag=hi-tech_crafting_table_placer] at @s align xyz positioned ~0.5 ~ ~0.5 run function galaxy:block/placer/hi-tech_crafting_table
execute as @e[tag=ThisPlacerBlock,tag=coke_furnace_placer] at @s align xyz positioned ~0.5 ~ ~0.5 run function galaxy:block/placer/coke_furnace
execute as @e[tag=ThisPlacerBlock,tag=advanced_blast_furnace_placer] at @s align xyz positioned ~0.5 ~ ~0.5 run function galaxy:block/placer/advanced_blast_furnace
execute as @e[tag=ThisPlacerBlock,tag=builder-gun_placer] at @s align xyz positioned ~0.5 ~ ~0.5 run function galaxy:block/placer/builder-gun
execute as @e[tag=ThisPlacerBlock,tag=super_builder-gun_placer] at @s align xyz positioned ~0.5 ~ ~0.5 run function galaxy:block/placer/super_builder-gun
execute as @e[tag=ThisPlacerBlock,tag=elevator_placer] at @s align xyz positioned ~0.5 ~ ~0.5 run function galaxy:block/placer/elevator

kill @e[tag=ThisPlacerBlock]

tag @s remove triggerPlaceBlock
