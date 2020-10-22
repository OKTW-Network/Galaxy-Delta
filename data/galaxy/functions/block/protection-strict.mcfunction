execute positioned ~ ~-1 ~ if predicate galaxy:block/hopper run setblock ~ ~ ~ air destroy
execute positioned ~ ~1 ~ if predicate galaxy:block/hopper if predicate galaxy:block/facing-down run setblock ~ ~ ~ air destroy
execute positioned ~ ~ ~-1 if predicate galaxy:block/hopper if predicate galaxy:block/facing-south run setblock ~ ~ ~ air destroy
execute positioned ~ ~ ~1 if predicate galaxy:block/hopper if predicate galaxy:block/facing-north run setblock ~ ~ ~ air destroy
execute positioned ~-1 ~ ~ if predicate galaxy:block/hopper if predicate galaxy:block/facing-east run setblock ~ ~ ~ air destroy
execute positioned ~1 ~ ~ if predicate galaxy:block/hopper if predicate galaxy:block/facing-west run setblock ~ ~ ~ air destroy

execute if block ~ ~-1 ~ minecraft:dropper[facing=up] run setblock ~ ~-1 ~ air destroy
execute if block ~ ~1 ~ minecraft:dropper[facing=down] run setblock ~ ~1 ~ air destroy
execute if block ~ ~ ~-1 minecraft:dropper[facing=south] run setblock ~ ~ ~-1 air destroy
execute if block ~ ~ ~1 minecraft:dropper[facing=north] run setblock ~ ~ ~1 air destroy
execute if block ~-1 ~ ~ minecraft:dropper[facing=east] run setblock ~-1 ~ ~ air destroy
execute if block ~1 ~ ~ minecraft:dropper[facing=west] run setblock ~1 ~ ~ air destroy

execute positioned ~ ~-1 ~ if entity @e[type=minecraft:hopper_minecart,distance=..0.55] run setblock ~ ~1 ~ air replace
execute positioned ~ ~-1 ~ if entity @e[type=minecraft:hopper_minecart,distance=..0.55] run playsound minecraft:block.metal.break block @a ~ ~ ~ 1 1.8
