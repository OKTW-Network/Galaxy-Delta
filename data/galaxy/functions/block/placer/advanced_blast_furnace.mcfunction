execute unless entity @s[tag=galaxy._tag.placeFailed] run summon minecraft:armor_stand ~ ~ ~ {Silent:1b,CustomNameVisible:0b,NoGravity:1b,Invulnerable:1b,Small:1b,Marker:1b,Invisible:1b,Tags:["galaxy.customBlock","galaxy.advanced_blast_furnace","haveGUI","dropContent","init"],HandItems:[{id:"minecraft:diamond_sword",Count:1b,tag:{CustomModelData:100,CustomData:{galaxy:{Type:"data_storage",data:{}}}}},{}]}
execute unless entity @s[tag=galaxy._tag.placeFailed] run setblock ~ ~ ~ minecraft:barrel{CustomName:'{"translate":"container.galaxy.advanced_blast_furnace"}'} replace

execute unless entity @s[tag=galaxy._tag.placeFailed] run summon minecraft:armor_stand ~ ~1 ~ {Silent:1b,CustomNameVisible:0b,NoGravity:1b,Invulnerable:1b,Small:1b,Marker:1b,Invisible:1b,Tags:["galaxy.customFakeBlock","galaxy.advanced_blast_furnace","init"],ArmorItems:[{},{},{},{id:"minecraft:wooden_sword",Count:1b,tag:{CustomModelData:10300}}]}
execute unless entity @s[tag=galaxy._tag.placeFailed] run function galaxy:block/directional-horizon_4_facing
tag @e[tag=galaxy.customFakeBlock,tag=galaxy.advanced_blast_furnace,tag=init] remove init

scoreboard players set @e[tag=galaxy.customBlock,tag=galaxy.advanced_blast_furnace,tag=init] galaxy.block.states.lit 0
scoreboard players set @e[tag=galaxy.customBlock,tag=galaxy.advanced_blast_furnace,tag=init] galaxy.block.work.status.processing 0
scoreboard players set @e[tag=galaxy.customBlock,tag=galaxy.advanced_blast_furnace,tag=init] galaxy.block.work.status.burning 0
scoreboard players set @e[tag=galaxy.customBlock,tag=galaxy.advanced_blast_furnace,tag=init] galaxy.block.work.processor1.progress 0
scoreboard players set @e[tag=galaxy.customBlock,tag=galaxy.advanced_blast_furnace,tag=init] galaxy.block.work.processor1.burnTime 0
scoreboard players set @e[tag=galaxy.customBlock,tag=galaxy.advanced_blast_furnace,tag=init] galaxy.GUI.interface 0
scoreboard players set @e[tag=galaxy.customBlock,tag=galaxy.advanced_blast_furnace,tag=init] galaxy.GUI._temp.smeltValue -2147483648
scoreboard players set @e[tag=galaxy.customBlock,tag=galaxy.advanced_blast_furnace,tag=init] galaxy.GUI._temp.workStatus -2147483648
scoreboard players set @e[tag=galaxy.customBlock,tag=galaxy.advanced_blast_furnace,tag=init] galaxy.GUI._temp.progressValue -2147483648
execute as @e[tag=galaxy.customBlock,tag=galaxy.advanced_blast_furnace,tag=init] run function galaxy:gui/advanced_blast_furnace/update
execute as @e[tag=galaxy.customBlock,tag=galaxy.advanced_blast_furnace,tag=init] run function galaxy:gui/advanced_blast_furnace/main
tag @e[tag=galaxy.customBlock,tag=galaxy.advanced_blast_furnace,tag=init] remove init

execute if entity @s[tag=galaxy._tag.placeFailed] as @a[tag=galaxy._tag.ThisPlaceBlock,gamemode=!creative] run function galaxy:block/give/advanced_blast_furnace

execute unless entity @s[tag=galaxy._tag.placeFailed] run playsound block.metal.place block @a ~ ~ ~ 1 0.8
