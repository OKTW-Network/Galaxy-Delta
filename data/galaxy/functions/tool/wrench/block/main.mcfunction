# execute if entity @e[tag=customBlock,distance=..0.05] run tag @s add wrenchCustomBlock
execute if block ~ ~ ~ #minecraft:large_chests run tag @s add wrenchChest
execute if block ~ ~ ~ hopper run tag @s add wrenchHopper
execute if block ~ ~ ~ #minecraft:slabs run tag @s add wrenchSlab
execute if block ~ ~ ~ #minecraft:stairs run tag @s add wrenchStairs
execute if block ~ ~ ~ ender_chest run tag @s add wrenchH4F
execute if block ~ ~ ~ furnace run tag @s add wrenchH4F
execute if block ~ ~ ~ blast_furnace run tag @s add wrenchH4F
execute if block ~ ~ ~ smoker run tag @s add wrenchH4F
execute if block ~ ~ ~ stonecutter run tag @s add wrenchH4F
execute if block ~ ~ ~ campfire run tag @s add wrenchH4F
execute if block ~ ~ ~ soul_campfire run tag @s add wrenchH4F
execute if block ~ ~ ~ #minecraft:glazed_terracotta run tag @s add wrenchH4F
execute if block ~ ~ ~ observer run tag @s add wrenchA6F
execute if block ~ ~ ~ dispenser run tag @s add wrenchA6F
execute if block ~ ~ ~ dropper run tag @s add wrenchA6F
execute if block ~ ~ ~ piston unless predicate minecraft:block_states/extended run tag @s add wrenchA6F
execute if block ~ ~ ~ sticky_piston unless predicate minecraft:block_states/extended run tag @s add wrenchA6F
execute if block ~ ~ ~ barrel run tag @s add wrenchA6F
execute if block ~ ~ ~ #minecraft:shulker_boxes run tag @s add wrenchA6F

# execute if entity @s[tag=wrenchCustomBlock] run function galaxy:tool/wrench/block/custom_block/main
execute if entity @s[tag=wrenchChest] run function galaxy:tool/wrench/block/chest/main
execute if entity @s[tag=wrenchHopper] run function galaxy:tool/wrench/block/hopper/main
execute if entity @s[tag=wrenchSlab] run function galaxy:tool/wrench/block/slab/main
execute if entity @s[tag=wrenchStairs] run function galaxy:tool/wrench/block/stairs/main
execute if entity @s[tag=wrenchH4F] run function galaxy:tool/wrench/block/horizon_4_facing/main
execute if entity @s[tag=wrenchA6F] run function galaxy:tool/wrench/block/all_6_facing/main
