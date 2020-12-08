execute unless entity @s[tag=placeFailed] run summon minecraft:armor_stand ~ ~ ~ {CustomNameVisible:0b,NoGravity:1b,Invulnerable:1b,Small:1b,Marker:1b,Invisible:1b,Tags:["customBlock","elevator","init"]}
execute unless entity @s[tag=placeFailed] run setblock ~ ~ ~ minecraft:barrel{CustomName:'{"translate":"container.elevator"}'} replace

execute unless entity @s[tag=placeFailed] run summon minecraft:armor_stand ~ ~1 ~ {CustomNameVisible:0b,NoGravity:1b,Invulnerable:1b,Small:1b,Marker:1b,Invisible:1b,Tags:["fake_block","elevator_fake_block"],ArmorItems:[{},{},{},{id:"minecraft:wooden_sword",Count:1b,tag:{CustomModelData:10500,fakeBlock:1}}]}

execute as @e[tag=elevator,tag=init] at @s run function galaxy:block/elevator/scan_to_temp-up
execute as @e[tag=elevator,tag=init] at @s run function galaxy:block/elevator/scan_to_temp-down
tag @e[tag=elevator,tag=init] remove init

execute if entity @s[tag=placeFailed] as @a[tag=triggerPlaceBlock,gamemode=!creative] run function galaxy:block/give/elevator

execute unless entity @s[tag=placeFailed] run playsound block.metal.place block @a ~ ~ ~ 1 1.2
