data modify storage galaxy:temp block set from block ~ ~ ~

execute unless predicate minecraft:block_states/open if score @s galaxy.tool.wrench.doFacing matches 0 run setblock ~ ~ ~ barrel[facing=south,open=false]
execute unless predicate minecraft:block_states/open if score @s galaxy.tool.wrench.doFacing matches 1 run setblock ~ ~ ~ barrel[facing=west,open=false]
execute unless predicate minecraft:block_states/open if score @s galaxy.tool.wrench.doFacing matches 2 run setblock ~ ~ ~ barrel[facing=north,open=false]
execute unless predicate minecraft:block_states/open if score @s galaxy.tool.wrench.doFacing matches 3 run setblock ~ ~ ~ barrel[facing=east,open=false]
execute unless predicate minecraft:block_states/open if score @s galaxy.tool.wrench.doFacing matches 4 run setblock ~ ~ ~ barrel[facing=down,open=false]
execute unless predicate minecraft:block_states/open if score @s galaxy.tool.wrench.doFacing matches 5 run setblock ~ ~ ~ barrel[facing=up,open=false]
execute if predicate minecraft:block_states/open if score @s galaxy.tool.wrench.doFacing matches 0 run setblock ~ ~ ~ barrel[facing=south,open=true]
execute if predicate minecraft:block_states/open if score @s galaxy.tool.wrench.doFacing matches 1 run setblock ~ ~ ~ barrel[facing=west,open=true]
execute if predicate minecraft:block_states/open if score @s galaxy.tool.wrench.doFacing matches 2 run setblock ~ ~ ~ barrel[facing=north,open=true]
execute if predicate minecraft:block_states/open if score @s galaxy.tool.wrench.doFacing matches 3 run setblock ~ ~ ~ barrel[facing=east,open=true]
execute if predicate minecraft:block_states/open if score @s galaxy.tool.wrench.doFacing matches 4 run setblock ~ ~ ~ barrel[facing=down,open=true]
execute if predicate minecraft:block_states/open if score @s galaxy.tool.wrench.doFacing matches 5 run setblock ~ ~ ~ barrel[facing=up,open=true]

data modify block ~ ~ ~ {} merge from storage galaxy:temp block
