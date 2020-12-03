data modify storage galaxy:temp block set from block ~ ~ ~

execute unless predicate minecraft:block_states/lit if score @s wrenchDoFacing matches 0 run setblock ~ ~ ~ furnace[facing=south,lit=false]
execute unless predicate minecraft:block_states/lit if score @s wrenchDoFacing matches 1 run setblock ~ ~ ~ furnace[facing=west,lit=false]
execute unless predicate minecraft:block_states/lit if score @s wrenchDoFacing matches 2 run setblock ~ ~ ~ furnace[facing=north,lit=false]
execute unless predicate minecraft:block_states/lit if score @s wrenchDoFacing matches 3 run setblock ~ ~ ~ furnace[facing=east,lit=false]
execute if predicate minecraft:block_states/lit if score @s wrenchDoFacing matches 0 run setblock ~ ~ ~ furnace[facing=south,lit=true]
execute if predicate minecraft:block_states/lit if score @s wrenchDoFacing matches 1 run setblock ~ ~ ~ furnace[facing=west,lit=true]
execute if predicate minecraft:block_states/lit if score @s wrenchDoFacing matches 2 run setblock ~ ~ ~ furnace[facing=north,lit=true]
execute if predicate minecraft:block_states/lit if score @s wrenchDoFacing matches 3 run setblock ~ ~ ~ furnace[facing=east,lit=true]

data modify block ~ ~ ~ {} merge from storage galaxy:temp block
