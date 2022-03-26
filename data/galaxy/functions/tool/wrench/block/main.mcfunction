execute if entity @e[tag=galaxy.customBlock,tag=galaxy.coke_furnace,distance=..0.05] run tag @s add galaxy._tag.wrenchCustomBlockH4F
execute if entity @e[tag=galaxy.customBlock,tag=galaxy.advanced_blast_furnace,distance=..0.05] run tag @s add galaxy._tag.wrenchCustomBlockH4F
execute if block ~ ~ ~ #minecraft:large_chests run tag @s add galaxy._tag.wrenchChest
execute if block ~ ~ ~ hopper run tag @s add galaxy._tag.wrenchHopper
execute if block ~ ~ ~ #minecraft:slabs run tag @s add galaxy._tag.wrenchSlab
execute if block ~ ~ ~ #minecraft:stairs run tag @s add galaxy._tag.wrenchStairs
execute if block ~ ~ ~ ender_chest run tag @s add galaxy._tag.wrenchH4F
execute if block ~ ~ ~ furnace run tag @s add galaxy._tag.wrenchH4F
execute if block ~ ~ ~ blast_furnace run tag @s add galaxy._tag.wrenchH4F
execute if block ~ ~ ~ smoker run tag @s add galaxy._tag.wrenchH4F
execute if block ~ ~ ~ stonecutter run tag @s add galaxy._tag.wrenchH4F
execute if block ~ ~ ~ campfire run tag @s add galaxy._tag.wrenchH4F
execute if block ~ ~ ~ soul_campfire run tag @s add galaxy._tag.wrenchH4F
execute if block ~ ~ ~ #minecraft:glazed_terracotta run tag @s add galaxy._tag.wrenchH4F
execute if block ~ ~ ~ observer run tag @s add galaxy._tag.wrenchA6F
execute if block ~ ~ ~ dispenser run tag @s add galaxy._tag.wrenchA6F
execute if block ~ ~ ~ dropper run tag @s add galaxy._tag.wrenchA6F
execute if block ~ ~ ~ piston unless predicate minecraft:block_states/extended run tag @s add galaxy._tag.wrenchA6F
execute if block ~ ~ ~ sticky_piston unless predicate minecraft:block_states/extended run tag @s add galaxy._tag.wrenchA6F
execute if block ~ ~ ~ barrel unless entity @e[tag=galaxy.customBlock,distance=..0.05] run tag @s add galaxy._tag.wrenchA6F
execute if block ~ ~ ~ #minecraft:shulker_boxes run tag @s add galaxy._tag.wrenchA6F

execute if entity @s[tag=galaxy._tag.wrenchCustomBlockH4F] run function galaxy:tool/wrench/block/custom_block-horizon_4_facing/main
execute if entity @s[tag=galaxy._tag.wrenchChest] run function galaxy:tool/wrench/block/chest/main
execute if entity @s[tag=galaxy._tag.wrenchHopper] run function galaxy:tool/wrench/block/hopper/main
execute if entity @s[tag=galaxy._tag.wrenchSlab] run function galaxy:tool/wrench/block/slab/main
execute if entity @s[tag=galaxy._tag.wrenchStairs] run function galaxy:tool/wrench/block/stairs/main
execute if entity @s[tag=galaxy._tag.wrenchH4F] run function galaxy:tool/wrench/block/horizon_4_facing/main
execute if entity @s[tag=galaxy._tag.wrenchA6F] run function galaxy:tool/wrench/block/all_6_facing/main
