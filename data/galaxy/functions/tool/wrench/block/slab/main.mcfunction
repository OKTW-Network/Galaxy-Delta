execute unless predicate minecraft:block_states/type-double run tag @s add galaxy._tag.wrenchSlabType

execute if entity @s[tag=galaxy._tag.wrenchSlabType] run function galaxy:tool/wrench/block/slab/half
