data modify storage galaxy:temp block set from block ~ ~ ~

execute unless predicate minecraft:block_states/triggered if score @s wrenchDoFacing matches 0 run setblock ~ ~ ~ dispenser[facing=south,triggered=false]
execute unless predicate minecraft:block_states/triggered if score @s wrenchDoFacing matches 1 run setblock ~ ~ ~ dispenser[facing=west,triggered=false]
execute unless predicate minecraft:block_states/triggered if score @s wrenchDoFacing matches 2 run setblock ~ ~ ~ dispenser[facing=north,triggered=false]
execute unless predicate minecraft:block_states/triggered if score @s wrenchDoFacing matches 3 run setblock ~ ~ ~ dispenser[facing=east,triggered=false]
execute unless predicate minecraft:block_states/triggered if score @s wrenchDoFacing matches 4 run setblock ~ ~ ~ dispenser[facing=down,triggered=false]
execute unless predicate minecraft:block_states/triggered if score @s wrenchDoFacing matches 5 run setblock ~ ~ ~ dispenser[facing=up,triggered=false]
execute if predicate minecraft:block_states/triggered if score @s wrenchDoFacing matches 0 run setblock ~ ~ ~ dispenser[facing=south,triggered=true]
execute if predicate minecraft:block_states/triggered if score @s wrenchDoFacing matches 1 run setblock ~ ~ ~ dispenser[facing=west,triggered=true]
execute if predicate minecraft:block_states/triggered if score @s wrenchDoFacing matches 2 run setblock ~ ~ ~ dispenser[facing=north,triggered=true]
execute if predicate minecraft:block_states/triggered if score @s wrenchDoFacing matches 3 run setblock ~ ~ ~ dispenser[facing=east,triggered=true]
execute if predicate minecraft:block_states/triggered if score @s wrenchDoFacing matches 4 run setblock ~ ~ ~ dispenser[facing=down,triggered=true]
execute if predicate minecraft:block_states/triggered if score @s wrenchDoFacing matches 5 run setblock ~ ~ ~ dispenser[facing=up,triggered=true]

data modify block ~ ~ ~ {} merge from storage galaxy:temp block
