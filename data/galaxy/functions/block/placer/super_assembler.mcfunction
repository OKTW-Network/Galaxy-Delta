execute unless entity @s[tag=placeFailed] run summon minecraft:armor_stand ~ ~ ~ {Silent:1b,CustomNameVisible:0b,NoGravity:1b,Invulnerable:1b,Small:1b,Marker:1b,Invisible:1b,Tags:["galaxy.customBlock","haveGUI","galaxy.super_assembler","init"],HandItems:[{id:"minecraft:diamond_sword",Count:1b,tag:{CustomModelData:100,CustomData:{galaxy:{Type:"data_storage",data:{}}}}},{}]}
execute unless entity @s[tag=placeFailed] run setblock ~ ~ ~ minecraft:barrel{CustomName:'{"translate":"container.super_assembler"}'} replace

execute unless entity @s[tag=placeFailed] run summon minecraft:armor_stand ~ ~1 ~ {Silent:1b,CustomNameVisible:0b,NoGravity:1b,Invulnerable:1b,Small:1b,Marker:1b,Invisible:1b,Tags:["customFakeBlock","galaxy.super_assembler"],ArmorItems:[{},{},{},{id:"minecraft:wooden_sword",Count:1b,tag:{CustomModelData:10401,Enchantments:[{id:"minecraft:infinity",lvl:10}]}}]}

scoreboard players set @e[tag=galaxy.customBlock,tag=galaxy.super_assembler,tag=init] guiInterface 0
scoreboard players set @e[tag=galaxy.customBlock,tag=galaxy.super_assembler,tag=init] sbldAttribute 1
scoreboard players remove @e[tag=galaxy.customBlock,tag=galaxy.super_assembler,tag=init] sbldValue 0
execute as @e[tag=galaxy.customBlock,tag=galaxy.super_assembler,tag=init] run function galaxy:recipe/super_assembler/get-option_default
execute as @e[tag=galaxy.customBlock,tag=galaxy.super_assembler,tag=init] run function galaxy:gui/assembly_table/super/update
execute as @e[tag=galaxy.customBlock,tag=galaxy.super_assembler,tag=init] run function galaxy:gui/assembly_table/super/main
tag @e[tag=galaxy.customBlock,tag=galaxy.super_assembler,tag=init] remove init

execute if entity @s[tag=placeFailed] as @a[tag=ThisPlaceBlock,gamemode=!creative] run function galaxy:block/give/super_assembler

execute unless entity @s[tag=placeFailed] run playsound block.metal.place block @a ~ ~ ~ 1 0.8
