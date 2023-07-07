execute unless predicate minecraft:block_states/type-double run tag @s add galaxy._task.wrench.toggleSlabType

execute if entity @s[tag=galaxy._task.wrench.toggleSlabType] run function galaxy:tool/wrench/block/slab/toggle_type

tag @s remove galaxy._task.wrench.doSlab
