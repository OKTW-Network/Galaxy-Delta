data modify storage galaxy:temp block set from block ~ ~ ~
setblock ~ ~ ~ minecraft:air replace
execute if data storage galaxy:temp block{id:"minecraft:chest"} if score #1 calcu_temp matches 0 run setblock ~ ~ ~ minecraft:chest[type=single,facing=south]
execute if data storage galaxy:temp block{id:"minecraft:chest"} if score #1 calcu_temp matches 1 run setblock ~ ~ ~ minecraft:chest[type=single,facing=west]
execute if data storage galaxy:temp block{id:"minecraft:chest"} if score #1 calcu_temp matches 2 run setblock ~ ~ ~ minecraft:chest[type=single,facing=north]
execute if data storage galaxy:temp block{id:"minecraft:chest"} if score #1 calcu_temp matches 3 run setblock ~ ~ ~ minecraft:chest[type=single,facing=east]
execute if data storage galaxy:temp block{id:"minecraft:trapped_chest"} if score #1 calcu_temp matches 0 run setblock ~ ~ ~ minecraft:trapped_chest[type=single,facing=south]
execute if data storage galaxy:temp block{id:"minecraft:trapped_chest"} if score #1 calcu_temp matches 1 run setblock ~ ~ ~ minecraft:trapped_chest[type=single,facing=west]
execute if data storage galaxy:temp block{id:"minecraft:trapped_chest"} if score #1 calcu_temp matches 2 run setblock ~ ~ ~ minecraft:trapped_chest[type=single,facing=north]
execute if data storage galaxy:temp block{id:"minecraft:trapped_chest"} if score #1 calcu_temp matches 3 run setblock ~ ~ ~ minecraft:trapped_chest[type=single,facing=east]
data modify block ~ ~ ~ {} merge from storage galaxy:temp block
