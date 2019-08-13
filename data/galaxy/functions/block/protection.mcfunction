execute if block ~ ~1 ~ minecraft:hopper[facing=down] run setblock ~ ~1 ~ air destroy
execute if block ~ ~-1 ~ minecraft:hopper run setblock ~ ~-1 ~ air destroy
execute if block ~ ~ ~-1 minecraft:hopper[facing=south] run setblock ~ ~ ~-1 air destroy
execute if block ~ ~ ~1 minecraft:hopper[facing=north] run setblock ~ ~ ~1 air destroy
execute if block ~-1 ~ ~ minecraft:hopper[facing=east] run setblock ~-1 ~ ~ air destroy
execute if block ~1 ~ ~ minecraft:hopper[facing=west] run setblock ~1 ~ ~ air destroy

execute if block ~ ~1 ~ minecraft:dropper[facing=down] run setblock ~ ~1 ~ air destroy
execute if block ~ ~-1 ~ minecraft:dropper[facing=up] run setblock ~ ~-1 ~ air destroy
execute if block ~ ~ ~-1 minecraft:dropper[facing=south] run setblock ~ ~ ~-1 air destroy
execute if block ~ ~ ~1 minecraft:dropper[facing=north] run setblock ~ ~ ~1 air destroy
execute if block ~-1 ~ ~ minecraft:dropper[facing=east] run setblock ~-1 ~ ~ air destroy
execute if block ~1 ~ ~ minecraft:dropper[facing=west] run setblock ~1 ~ ~ air destroy

execute if entity @e[type=minecraft:hopper_minecart,dy=-1] run setblock ~ ~ ~ air replace
execute if entity @e[type=minecraft:hopper_minecart,dy=-1] run playsound minecraft:block.wood.place block @a[distance=..32] ~ ~ ~ 1 0.8 0.2
