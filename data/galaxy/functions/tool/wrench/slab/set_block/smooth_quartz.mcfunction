execute unless predicate galaxy:block/watterlogged if score #1 calcu_temp matches 0 run setblock ~ ~ ~ minecraft:smooth_quartz_slab[type=bottom,waterlogged=false]
execute if predicate galaxy:block/watterlogged if score #1 calcu_temp matches 0 run setblock ~ ~ ~ minecraft:smooth_quartz_slab[type=bottom,waterlogged=true]
execute unless predicate galaxy:block/watterlogged if score #1 calcu_temp matches 1 run setblock ~ ~ ~ minecraft:smooth_quartz_slab[type=top,waterlogged=false]
execute if predicate galaxy:block/watterlogged if score #1 calcu_temp matches 1 run setblock ~ ~ ~ minecraft:smooth_quartz_slab[type=top,waterlogged=true]
