execute unless entity @s[tag=placeFailed] run summon minecraft:armor_stand ~ ~ ~ {Silent:1b,CustomNameVisible:0b,NoGravity:1b,Invulnerable:1b,Small:1b,Marker:1b,Invisible:1b,Tags:["customBlock","haveGUI","dropContent","assembly_table","init"],HandItems:[{id:"minecraft:diamond_sword",Count:1b,tag:{CustomModelData:100}},{}]}
execute unless entity @s[tag=placeFailed] run setblock ~ ~ ~ minecraft:barrel{CustomName:'{"translate":"container.assembly_table"}'} replace

execute unless entity @s[tag=placeFailed] run summon minecraft:armor_stand ~ ~1 ~ {Silent:1b,CustomNameVisible:0b,NoGravity:1b,Invulnerable:1b,Small:1b,Marker:1b,Invisible:1b,Tags:["fake_block","assembly_table_fake_block"],ArmorItems:[{},{},{},{id:"minecraft:wooden_sword",Count:1b,tag:{CustomModelData:10400,fakeBlock:1}}]}

execute as @e[tag=assembly_table,tag=init] run function galaxy:gui/assembly_table/update
execute as @e[tag=assembly_table,tag=init] run function galaxy:gui/assembly_table/main
tag @e[tag=assembly_table,tag=init] remove init

execute if entity @s[tag=placeFailed] as @a[tag=triggerPlaceBlock,gamemode=!creative] run function galaxy:block/give/assembly_table

execute unless entity @s[tag=placeFailed] run playsound block.metal.place block @a ~ ~ ~ 1 0.8
