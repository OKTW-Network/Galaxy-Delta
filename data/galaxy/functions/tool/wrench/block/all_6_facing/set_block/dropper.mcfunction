data modify storage galaxy:temp block set from block ~ ~ ~

execute unless predicate minecraft:block_states/triggered if score @s galaxy.tool.wrench.doFacing matches 0 run setblock ~ ~ ~ dropper[facing=south,triggered=false]
execute unless predicate minecraft:block_states/triggered if score @s galaxy.tool.wrench.doFacing matches 1 run setblock ~ ~ ~ dropper[facing=west,triggered=false]
execute unless predicate minecraft:block_states/triggered if score @s galaxy.tool.wrench.doFacing matches 2 run setblock ~ ~ ~ dropper[facing=north,triggered=false]
execute unless predicate minecraft:block_states/triggered if score @s galaxy.tool.wrench.doFacing matches 3 run setblock ~ ~ ~ dropper[facing=east,triggered=false]
execute unless predicate minecraft:block_states/triggered if score @s galaxy.tool.wrench.doFacing matches 4 run setblock ~ ~ ~ dropper[facing=down,triggered=false]
execute unless predicate minecraft:block_states/triggered if score @s galaxy.tool.wrench.doFacing matches 5 run setblock ~ ~ ~ dropper[facing=up,triggered=false]
execute if predicate minecraft:block_states/triggered if score @s galaxy.tool.wrench.doFacing matches 0 run setblock ~ ~ ~ dropper[facing=south,triggered=true]
execute if predicate minecraft:block_states/triggered if score @s galaxy.tool.wrench.doFacing matches 1 run setblock ~ ~ ~ dropper[facing=west,triggered=true]
execute if predicate minecraft:block_states/triggered if score @s galaxy.tool.wrench.doFacing matches 2 run setblock ~ ~ ~ dropper[facing=north,triggered=true]
execute if predicate minecraft:block_states/triggered if score @s galaxy.tool.wrench.doFacing matches 3 run setblock ~ ~ ~ dropper[facing=east,triggered=true]
execute if predicate minecraft:block_states/triggered if score @s galaxy.tool.wrench.doFacing matches 4 run setblock ~ ~ ~ dropper[facing=down,triggered=true]
execute if predicate minecraft:block_states/triggered if score @s galaxy.tool.wrench.doFacing matches 5 run setblock ~ ~ ~ dropper[facing=up,triggered=true]

data modify block ~ ~ ~ {} merge from storage galaxy:temp block
