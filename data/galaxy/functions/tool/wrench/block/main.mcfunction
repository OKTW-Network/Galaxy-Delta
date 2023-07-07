execute if entity @e[tag=galaxy.block.coke_furnace,distance=..0.05] run tag @s add galaxy._task.wrench.doGalaxyBlockHorizontalFacing
execute if entity @e[tag=galaxy.block.reinforced_blast_furnace,distance=..0.05] run tag @s add galaxy._task.wrench.doGalaxyBlockHorizontalFacing
execute if block ~ ~ ~ #minecraft:large_chests run tag @s add galaxy._task.wrench.doChest
execute if block ~ ~ ~ minecraft:hopper run tag @s add galaxy._task.wrench.doHopper
execute if block ~ ~ ~ #minecraft:slabs run tag @s add galaxy._task.wrench.doSlab
execute if block ~ ~ ~ #minecraft:stairs run tag @s add galaxy._task.wrench.doStairs
execute if block ~ ~ ~ minecraft:ender_chest run tag @s add galaxy._task.wrench.doHorizontalFacing
execute if block ~ ~ ~ minecraft:furnace run tag @s add galaxy._task.wrench.doHorizontalFacing
execute if block ~ ~ ~ minecraft:blast_furnace run tag @s add galaxy._task.wrench.doHorizontalFacing
execute if block ~ ~ ~ minecraft:smoker run tag @s add galaxy._task.wrench.doHorizontalFacing
execute if block ~ ~ ~ minecraft:stonecutter run tag @s add galaxy._task.wrench.doHorizontalFacing
execute if block ~ ~ ~ #minecraft:campfires run tag @s add galaxy._task.wrench.doHorizontalFacing
execute if block ~ ~ ~ #minecraft:glazed_terracotta run tag @s add galaxy._task.wrench.doHorizontalFacing
execute if block ~ ~ ~ minecraft:observer run tag @s add galaxy._task.wrench.doAllFacing
execute if block ~ ~ ~ minecraft:dispenser run tag @s add galaxy._task.wrench.doAllFacing
execute if block ~ ~ ~ minecraft:dropper run tag @s add galaxy._task.wrench.doAllFacing
execute if block ~ ~ ~ minecraft:piston unless predicate minecraft:block_states/extended run tag @s add galaxy._task.wrench.doAllFacing
execute if block ~ ~ ~ minecraft:sticky_piston unless predicate minecraft:block_states/extended run tag @s add galaxy._task.wrench.doAllFacing
execute if block ~ ~ ~ minecraft:barrel unless entity @e[tag=galaxy.block,distance=..0.05] run tag @s add galaxy._task.wrench.doAllFacing
execute if block ~ ~ ~ #minecraft:shulker_boxes run tag @s add galaxy._task.wrench.doAllFacing

execute if entity @s[tag=galaxy._task.wrench.doGalaxyBlockHorizontalFacing] run function galaxy:tool/wrench/block/galaxy_block/horizontal_facing/main
execute if entity @s[tag=galaxy._task.wrench.doChest] run function galaxy:tool/wrench/block/chest/main
execute if entity @s[tag=galaxy._task.wrench.doHopper] run function galaxy:tool/wrench/block/hopper/main
execute if entity @s[tag=galaxy._task.wrench.doSlab] run function galaxy:tool/wrench/block/slab/main
execute if entity @s[tag=galaxy._task.wrench.doStairs] run function galaxy:tool/wrench/block/stairs/main
execute if entity @s[tag=galaxy._task.wrench.doHorizontalFacing] run function galaxy:tool/wrench/block/horizontal_facing/main
execute if entity @s[tag=galaxy._task.wrench.doAllFacing] run function galaxy:tool/wrench/block/all_facing/main

execute if entity @s[tag=galaxy._task.wrench.anchorStoreOriginStates] as @e[tag=galaxy._tag.ThisWrenchAnchor] at @s run function galaxy:tool/wrench/used_on_block/anchor/store_origin_block_states
tag @s[tag=galaxy._task.wrench.anchorStoreOriginStates] remove galaxy._task.wrench.anchorStoreOriginStates
