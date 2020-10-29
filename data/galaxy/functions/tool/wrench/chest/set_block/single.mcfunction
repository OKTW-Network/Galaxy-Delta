data modify storage galaxy:temp block set from block ~ ~ ~

setblock ~ ~ ~ minecraft:air replace

execute unless predicate galaxy:block/watterlogged if data storage galaxy:temp block{id:"minecraft:chest"} if score #1 calcu_temp matches 0 run setblock ~ ~ ~ minecraft:chest[type=single,facing=south,waterlogged=false]
execute unless predicate galaxy:block/watterlogged if data storage galaxy:temp block{id:"minecraft:chest"} if score #1 calcu_temp matches 1 run setblock ~ ~ ~ minecraft:chest[type=single,facing=west,waterlogged=false]
execute unless predicate galaxy:block/watterlogged if data storage galaxy:temp block{id:"minecraft:chest"} if score #1 calcu_temp matches 2 run setblock ~ ~ ~ minecraft:chest[type=single,facing=north,waterlogged=false]
execute unless predicate galaxy:block/watterlogged if data storage galaxy:temp block{id:"minecraft:chest"} if score #1 calcu_temp matches 3 run setblock ~ ~ ~ minecraft:chest[type=single,facing=east,waterlogged=false]
execute if predicate galaxy:block/watterlogged if data storage galaxy:temp block{id:"minecraft:chest"} if score #1 calcu_temp matches 0 run setblock ~ ~ ~ minecraft:chest[type=single,facing=south,waterlogged=true]
execute if predicate galaxy:block/watterlogged if data storage galaxy:temp block{id:"minecraft:chest"} if score #1 calcu_temp matches 1 run setblock ~ ~ ~ minecraft:chest[type=single,facing=west,waterlogged=true]
execute if predicate galaxy:block/watterlogged if data storage galaxy:temp block{id:"minecraft:chest"} if score #1 calcu_temp matches 2 run setblock ~ ~ ~ minecraft:chest[type=single,facing=north,waterlogged=true]
execute if predicate galaxy:block/watterlogged if data storage galaxy:temp block{id:"minecraft:chest"} if score #1 calcu_temp matches 3 run setblock ~ ~ ~ minecraft:chest[type=single,facing=east,waterlogged=true]

execute unless predicate galaxy:block/watterlogged if data storage galaxy:temp block{id:"minecraft:trapped_chest"} if score #1 calcu_temp matches 0 run setblock ~ ~ ~ minecraft:trapped_chest[type=single,facing=south,waterlogged=false]
execute unless predicate galaxy:block/watterlogged if data storage galaxy:temp block{id:"minecraft:trapped_chest"} if score #1 calcu_temp matches 1 run setblock ~ ~ ~ minecraft:trapped_chest[type=single,facing=west,waterlogged=false]
execute unless predicate galaxy:block/watterlogged if data storage galaxy:temp block{id:"minecraft:trapped_chest"} if score #1 calcu_temp matches 2 run setblock ~ ~ ~ minecraft:trapped_chest[type=single,facing=north,waterlogged=false]
execute unless predicate galaxy:block/watterlogged if data storage galaxy:temp block{id:"minecraft:trapped_chest"} if score #1 calcu_temp matches 3 run setblock ~ ~ ~ minecraft:trapped_chest[type=single,facing=east,waterlogged=false]
execute if predicate galaxy:block/watterlogged if data storage galaxy:temp block{id:"minecraft:trapped_chest"} if score #1 calcu_temp matches 0 run setblock ~ ~ ~ minecraft:trapped_chest[type=single,facing=south,waterlogged=true]
execute if predicate galaxy:block/watterlogged if data storage galaxy:temp block{id:"minecraft:trapped_chest"} if score #1 calcu_temp matches 1 run setblock ~ ~ ~ minecraft:trapped_chest[type=single,facing=west,waterlogged=true]
execute if predicate galaxy:block/watterlogged if data storage galaxy:temp block{id:"minecraft:trapped_chest"} if score #1 calcu_temp matches 2 run setblock ~ ~ ~ minecraft:trapped_chest[type=single,facing=north,waterlogged=true]
execute if predicate galaxy:block/watterlogged if data storage galaxy:temp block{id:"minecraft:trapped_chest"} if score #1 calcu_temp matches 3 run setblock ~ ~ ~ minecraft:trapped_chest[type=single,facing=east,waterlogged=true]

data modify block ~ ~ ~ {} merge from storage galaxy:temp block
