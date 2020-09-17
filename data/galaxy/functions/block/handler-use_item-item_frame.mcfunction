tag @s add triggerPlace

execute as @e[tag=block_placer] at @s align xyz positioned ~0.5 ~ ~0.5 run function galaxy:block/check_block
execute as @e[tag=entity_placer] at @s align xyz positioned ~0.5 ~ ~0.5 run function galaxy:block/check_entity

execute as @e[tag=hi-tech_crafting_table_placer] at @s align xyz positioned ~0.5 ~ ~0.5 run function galaxy:block/machine/placer/hi-tech_crafting_table
execute as @e[tag=coke_furnace_placer] at @s align xyz positioned ~0.5 ~ ~0.5 run function galaxy:block/machine/placer/coke_furnace
execute as @e[tag=advanced_blast_furnace_placer] at @s align xyz positioned ~0.5 ~ ~0.5 run function galaxy:block/machine/placer/advanced_blast_furnace
execute as @e[tag=builder-gun_placer] at @s align xyz positioned ~0.5 ~ ~0.5 run function galaxy:block/machine/placer/builder-gun
execute as @e[tag=super_builder-gun_placer] at @s align xyz positioned ~0.5 ~ ~0.5 run function galaxy:block/machine/placer/super_builder-gun

execute as @e[tag=elevator_placer] at @s align xyz positioned ~0.5 ~ ~0.5 run function galaxy:block/functional/placer/elevator
execute as @e[tag=katana_display_stand_placer,tag=type-1] at @s align xyz positioned ~0.5 ~ ~0.5 run function galaxy:block/functional/placer/katana_display_stand-1
execute as @e[tag=katana_display_stand_placer,tag=type-2] at @s align xyz positioned ~0.5 ~ ~0.5 run function galaxy:block/functional/placer/katana_display_stand-2
execute as @e[tag=katana_display_stand_placer,tag=type-3] at @s align xyz positioned ~0.5 ~ ~0.5 run function galaxy:block/functional/placer/katana_display_stand-3

execute as @e[tag=structure_empower_placer] at @s align xyz positioned ~0.5 ~ ~0.5 run function galaxy:block/functional/placer/structure_empower

tag @s remove triggerPlace
