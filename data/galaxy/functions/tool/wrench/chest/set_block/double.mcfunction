data modify storage galaxy:temp block set from block ~ ~ ~
setblock ~ ~ ~ minecraft:air replace
execute if data storage galaxy:temp block{id:"minecraft:chest"} if score #1 calcu_temp matches 0 if score #2 calcu_temp matches 1 run setblock ~ ~ ~ minecraft:chest[type=right,facing=south]
execute if data storage galaxy:temp block{id:"minecraft:chest"} if score #1 calcu_temp matches 1 if score #2 calcu_temp matches 1 run setblock ~ ~ ~ minecraft:chest[type=right,facing=west]
execute if data storage galaxy:temp block{id:"minecraft:chest"} if score #1 calcu_temp matches 2 if score #2 calcu_temp matches 1 run setblock ~ ~ ~ minecraft:chest[type=right,facing=north]
execute if data storage galaxy:temp block{id:"minecraft:chest"} if score #1 calcu_temp matches 3 if score #2 calcu_temp matches 1 run setblock ~ ~ ~ minecraft:chest[type=right,facing=east]
execute if data storage galaxy:temp block{id:"minecraft:chest"} if score #1 calcu_temp matches 0 if score #2 calcu_temp matches 2 run setblock ~ ~ ~ minecraft:chest[type=left,facing=south]
execute if data storage galaxy:temp block{id:"minecraft:chest"} if score #1 calcu_temp matches 1 if score #2 calcu_temp matches 2 run setblock ~ ~ ~ minecraft:chest[type=left,facing=west]
execute if data storage galaxy:temp block{id:"minecraft:chest"} if score #1 calcu_temp matches 2 if score #2 calcu_temp matches 2 run setblock ~ ~ ~ minecraft:chest[type=left,facing=north]
execute if data storage galaxy:temp block{id:"minecraft:chest"} if score #1 calcu_temp matches 3 if score #2 calcu_temp matches 2 run setblock ~ ~ ~ minecraft:chest[type=left,facing=east]
execute if data storage galaxy:temp block{id:"minecraft:trapped_chest"} if score #1 calcu_temp matches 0 if score #2 calcu_temp matches 1 run setblock ~ ~ ~ minecraft:trapped_chest[type=right,facing=south]
execute if data storage galaxy:temp block{id:"minecraft:trapped_chest"} if score #1 calcu_temp matches 1 if score #2 calcu_temp matches 1 run setblock ~ ~ ~ minecraft:trapped_chest[type=right,facing=west]
execute if data storage galaxy:temp block{id:"minecraft:trapped_chest"} if score #1 calcu_temp matches 2 if score #2 calcu_temp matches 1 run setblock ~ ~ ~ minecraft:trapped_chest[type=right,facing=north]
execute if data storage galaxy:temp block{id:"minecraft:trapped_chest"} if score #1 calcu_temp matches 3 if score #2 calcu_temp matches 1 run setblock ~ ~ ~ minecraft:trapped_chest[type=right,facing=east]
execute if data storage galaxy:temp block{id:"minecraft:trapped_chest"} if score #1 calcu_temp matches 0 if score #2 calcu_temp matches 2 run setblock ~ ~ ~ minecraft:trapped_chest[type=left,facing=south]
execute if data storage galaxy:temp block{id:"minecraft:trapped_chest"} if score #1 calcu_temp matches 1 if score #2 calcu_temp matches 2 run setblock ~ ~ ~ minecraft:trapped_chest[type=left,facing=west]
execute if data storage galaxy:temp block{id:"minecraft:trapped_chest"} if score #1 calcu_temp matches 2 if score #2 calcu_temp matches 2 run setblock ~ ~ ~ minecraft:trapped_chest[type=left,facing=north]
execute if data storage galaxy:temp block{id:"minecraft:trapped_chest"} if score #1 calcu_temp matches 3 if score #2 calcu_temp matches 2 run setblock ~ ~ ~ minecraft:trapped_chest[type=left,facing=east]
data modify block ~ ~ ~ {} merge from storage galaxy:temp block
