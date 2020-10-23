execute unless predicate galaxy:block/slab-type-double if entity @a[tag=triggerWrench,predicate=!minecraft:sneaking] run tag @s add wrenchSlabHalf
execute if predicate galaxy:block/slab-type-double if predicate galaxy:entity/item_frame/horizontal if entity @a[tag=triggerWrench,predicate=minecraft:sneaking] run tag @s add wrenchSlabDestruct

execute if entity @s[tag=wrenchSlabHalf] run function galaxy:tool/wrench/slab/half
execute if entity @s[tag=wrenchSlabDestruct] run function galaxy:tool/wrench/slab/destruct
