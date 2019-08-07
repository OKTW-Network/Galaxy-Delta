execute if block ~ ~1 ~ minecraft:hopper[facing=down] run setblock ~ ~1 ~ air destroy
execute if block ~ ~-1 ~ minecraft:hopper[facing=down] run setblock ~ ~-1 ~ air destroy
execute if block ~ ~ ~-1 minecraft:hopper[facing=south] run setblock ~ ~ ~-1 air destroy
execute if block ~ ~ ~1 minecraft:hopper[facing=north] run setblock ~ ~ ~1 air destroy
execute if block ~-1 ~ ~ minecraft:hopper[facing=east] run setblock ~-1 ~ ~ air destroy
execute if block ~1 ~ ~ minecraft:hopper[facing=west] run setblock ~1 ~ ~ air destroy
