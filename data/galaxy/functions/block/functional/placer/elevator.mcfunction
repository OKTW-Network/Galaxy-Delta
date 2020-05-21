summon minecraft:armor_stand ~ ~ ~ {CustomNameVisible:0b,NoGravity:1b,Invulnerable:1b,Small:1b,Marker:1b,Invisible:1b,Tags:["elevator","init"]}
setblock ~ ~ ~ minecraft:barrel{CustomName:'{"translate":"container.elevator"}'} replace
summon minecraft:armor_stand ~ ~1 ~ {CustomNameVisible:0b,NoGravity:1b,Invulnerable:1b,Small:1b,Marker:1b,Invisible:1b,Tags:["elevator_fake_block"],ArmorItems:[{},{},{},{id:"minecraft:wooden_sword",Count:1b,tag:{CustomModelData:20100,fakeBlock:1,elevator:1}}]}
execute as @e[tag=elevator,tag=init] at @s run function galaxy:block/functional/elevator/trigger_update
execute as @e[tag=elevator,tag=init] at @s run function galaxy:block/functional/elevator/scan_to_temp-up
execute as @e[tag=elevator,tag=init] at @s run function galaxy:block/functional/elevator/scan_to_temp-down
tag @e[tag=elevator,tag=init] remove init
kill @s
