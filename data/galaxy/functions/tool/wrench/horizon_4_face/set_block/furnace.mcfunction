data modify storage galaxy:temp block set from block ~ ~ ~
execute unless predicate galaxy:block/lit if score #1 calcu_temp matches 0 run setblock ~ ~ ~ furnace[facing=south,lit=false]
execute unless predicate galaxy:block/lit if score #1 calcu_temp matches 1 run setblock ~ ~ ~ furnace[facing=west,lit=false]
execute unless predicate galaxy:block/lit if score #1 calcu_temp matches 2 run setblock ~ ~ ~ furnace[facing=north,lit=false]
execute unless predicate galaxy:block/lit if score #1 calcu_temp matches 3 run setblock ~ ~ ~ furnace[facing=east,lit=false]
execute if predicate galaxy:block/lit if score #1 calcu_temp matches 0 run setblock ~ ~ ~ furnace[facing=south,lit=true]
execute if predicate galaxy:block/lit if score #1 calcu_temp matches 1 run setblock ~ ~ ~ furnace[facing=west,lit=true]
execute if predicate galaxy:block/lit if score #1 calcu_temp matches 2 run setblock ~ ~ ~ furnace[facing=north,lit=true]
execute if predicate galaxy:block/lit if score #1 calcu_temp matches 3 run setblock ~ ~ ~ furnace[facing=east,lit=true]
data modify block ~ ~ ~ {} merge from storage galaxy:temp block
