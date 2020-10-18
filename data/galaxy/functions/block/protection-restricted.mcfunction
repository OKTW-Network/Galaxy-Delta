execute positioned ~ ~-1 ~ if predicate galaxy:block/hopper run tag @s add protect_hopper_down
execute if entity @s[tag=protect_hopper_down] run data modify storage galaxy:temporary block.protection.hopper.Items set from block ~ ~-1 ~ Items
execute if entity @s[tag=protect_hopper_down] positioned ~ ~-1 ~ if predicate galaxy:block/facing-down run setblock ~ ~ ~ minecraft:hopper[enabled=false,facing=down]
execute if entity @s[tag=protect_hopper_down] positioned ~ ~-1 ~ if predicate galaxy:block/facing-south run setblock ~ ~ ~ minecraft:hopper[enabled=false,facing=south]
execute if entity @s[tag=protect_hopper_down] positioned ~ ~-1 ~ if predicate galaxy:block/facing-north run setblock ~ ~ ~ minecraft:hopper[enabled=false,facing=north]
execute if entity @s[tag=protect_hopper_down] positioned ~ ~-1 ~ if predicate galaxy:block/facing-east run setblock ~ ~ ~ minecraft:hopper[enabled=false,facing=east]
execute if entity @s[tag=protect_hopper_down] positioned ~ ~-1 ~ if predicate galaxy:block/facing-west run setblock ~ ~ ~ minecraft:hopper[enabled=false,facing=west]
execute if entity @s[tag=protect_hopper_down] run data modify block ~ ~1 ~ Items set from storage galaxy:temporary block.protection.hopper.Items
execute if entity @s[tag=protect_hopper_down] run tag @s remove protect_hopper_down

execute positioned ~ ~1 ~ if predicate galaxy:block/facing-down run tag @s add protect_hopper_up
execute if entity @s[tag=protect_hopper_up] run data modify storage galaxy:temporary block.protection.hopper.Items set from block ~ ~1 ~ Items
execute if entity @s[tag=protect_hopper_up] run setblock ~ ~1 ~ minecraft:hopper[enabled=false,facing=down]
execute if entity @s[tag=protect_hopper_up] run data modify block ~ ~1 ~ Items set from storage galaxy:temporary block.protection.hopper.Items
execute if entity @s[tag=protect_hopper_up] run tag @s remove protect_hopper_up

execute positioned ~ ~ ~-1 if predicate galaxy:block/facing-south run tag @s add protect_hopper_north
execute if entity @s[tag=protect_hopper_north] run data modify storage galaxy:temporary block.protection.hopper.Items set from block ~ ~ ~-1 Items
execute if entity @s[tag=protect_hopper_north] run setblock ~ ~ ~-1 minecraft:hopper[enabled=false,facing=south]
execute if entity @s[tag=protect_hopper_north] run data modify block ~ ~ ~-1 Items set from storage galaxy:temporary block.protection.hopper.Items
execute if entity @s[tag=protect_hopper_north] run tag @s remove protect_hopper_north

execute positioned ~ ~ ~1 if predicate galaxy:block/facing-north run tag @s add protect_hopper_south
execute if entity @s[tag=protect_hopper_south] run data modify storage galaxy:temporary block.protection.hopper.Items set from block ~ ~ ~1 Items
execute if entity @s[tag=protect_hopper_south] run setblock ~ ~ ~1 minecraft:hopper[enabled=false,facing=north]
execute if entity @s[tag=protect_hopper_south] run data modify block ~ ~ ~1 Items set from storage galaxy:temporary block.protection.hopper.Items
execute if entity @s[tag=protect_hopper_south] run tag @s remove protect_hopper_south

execute positioned ~-1 ~ ~ if predicate galaxy:block/facing-east run tag @s add protect_hopper_west
execute if entity @s[tag=protect_hopper_west] run data modify storage galaxy:temporary block.protection.hopper.Items set from block ~-1 ~ ~ Items
execute if entity @s[tag=protect_hopper_west] run setblock ~-1 ~ ~ minecraft:hopper[enabled=false,facing=east]
execute if entity @s[tag=protect_hopper_west] run data modify block ~-1 ~ ~ Items set from storage galaxy:temporary block.protection.hopper.Items
execute if entity @s[tag=protect_hopper_west] run tag @s remove protect_hopper_west

execute positioned ~1 ~ ~ if predicate galaxy:block/facing-west run tag @s add protect_hopper_east
execute if entity @s[tag=protect_hopper_east] run data modify storage galaxy:temporary block.protection.hopper.Items set from block ~1 ~ ~ Items
execute if entity @s[tag=protect_hopper_east] run setblock ~1 ~ ~ minecraft:hopper[enabled=false,facing=west]
execute if entity @s[tag=protect_hopper_east] run data modify block ~1 ~ ~ Items set from storage galaxy:temporary block.protection.hopper.Items
execute if entity @s[tag=protect_hopper_east] run tag @s remove protect_hopper_east

execute if block ~ ~1 ~ minecraft:dropper[facing=down] run setblock ~ ~1 ~ air destroy
execute if block ~ ~-1 ~ minecraft:dropper[facing=up] run setblock ~ ~-1 ~ air destroy
execute if block ~ ~ ~-1 minecraft:dropper[facing=south] run setblock ~ ~ ~-1 air destroy
execute if block ~ ~ ~1 minecraft:dropper[facing=north] run setblock ~ ~ ~1 air destroy
execute if block ~-1 ~ ~ minecraft:dropper[facing=east] run setblock ~-1 ~ ~ air destroy
execute if block ~1 ~ ~ minecraft:dropper[facing=west] run setblock ~1 ~ ~ air destroy

execute positioned ~ ~-1 ~ if entity @e[type=minecraft:hopper_minecart,distance=..0.55] run setblock ~ ~1 ~ air replace
execute positioned ~ ~-1 ~ if entity @e[type=minecraft:hopper_minecart,distance=..0.55] run playsound minecraft:block.metal.break block @a ~ ~ ~ 1 1.8
