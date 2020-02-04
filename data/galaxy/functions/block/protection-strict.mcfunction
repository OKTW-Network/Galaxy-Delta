execute positioned ~ ~-1 ~ if predicate galaxy:block/hopper run setblock ~ ~ ~ air destroy
execute positioned ~ ~1 ~ if predicate galaxy:block/hopper-facing_down run setblock ~ ~ ~ air destroy
execute positioned ~ ~ ~-1 if predicate galaxy:block/hopper-facing_south run setblock ~ ~ ~ air destroy
execute positioned ~ ~ ~1 if predicate galaxy:block/hopper-facing_north run setblock ~ ~ ~ air destroy
execute positioned ~-1 ~ ~ if predicate galaxy:block/hopper-facing_east run setblock ~ ~ ~ air destroy
execute positioned ~1 ~ ~ if predicate galaxy:block/hopper-facing_west run setblock ~ ~ ~ air destroy

execute if block ~ ~-1 ~ minecraft:dropper[facing=up] run setblock ~ ~-1 ~ air destroy
execute if block ~ ~1 ~ minecraft:dropper[facing=down] run setblock ~ ~1 ~ air destroy
execute if block ~ ~ ~-1 minecraft:dropper[facing=south] run setblock ~ ~ ~-1 air destroy
execute if block ~ ~ ~1 minecraft:dropper[facing=north] run setblock ~ ~ ~1 air destroy
execute if block ~-1 ~ ~ minecraft:dropper[facing=east] run setblock ~-1 ~ ~ air destroy
execute if block ~1 ~ ~ minecraft:dropper[facing=west] run setblock ~1 ~ ~ air destroy

execute positioned ~ ~-1 ~ if entity @e[type=minecraft:hopper_minecart,distance=..0.55] run setblock ~ ~1 ~ air replace
execute positioned ~ ~-1 ~ if entity @e[type=minecraft:hopper_minecart,distance=..0.55] run playsound minecraft:block.metal.break block @a ~ ~ ~ 1 1.8
