execute unless predicate minecraft:block_states/type-double run tag @s add wrenchSlabType

execute if entity @s[tag=wrenchSlabType] run function galaxy:tool/wrench/spin/slab/half
