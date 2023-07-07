execute if block ~ ~-1 ~ minecraft:hopper run setblock ~ ~-1 ~ air destroy
execute if block ~ ~1 ~ minecraft:hopper[facing=down] run setblock ~ ~1 ~ air destroy
execute if block ~ ~ ~-1 minecraft:hopper[facing=south] run setblock ~ ~ ~-1 air destroy
execute if block ~ ~ ~1 minecraft:hopper[facing=north] run setblock ~ ~ ~1 air destroy
execute if block ~-1 ~ ~ minecraft:hopper[facing=east] run setblock ~-1 ~ ~ air destroy
execute if block ~1 ~ ~ minecraft:hopper[facing=west] run setblock ~1 ~ ~ air destroy

execute if block ~ ~-1 ~ minecraft:dropper[facing=up] run setblock ~ ~-1 ~ air destroy
execute if block ~ ~1 ~ minecraft:dropper[facing=down] run setblock ~ ~1 ~ air destroy
execute if block ~ ~ ~-1 minecraft:dropper[facing=south] run setblock ~ ~ ~-1 air destroy
execute if block ~ ~ ~1 minecraft:dropper[facing=north] run setblock ~ ~ ~1 air destroy
execute if block ~-1 ~ ~ minecraft:dropper[facing=east] run setblock ~-1 ~ ~ air destroy
execute if block ~1 ~ ~ minecraft:dropper[facing=west] run setblock ~1 ~ ~ air destroy

execute align xyz positioned ~ ~-1 ~ as @e[type=minecraft:hopper_minecart,dx=0,dy=0,dz=0] at @s run function galaxy:block/protection/hopper_minecart
