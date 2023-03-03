execute align xyz positioned ~0.5 ~0.5 ~0.5 run summon minecraft:armor_stand ~ ~ ~ {Silent:1b,CustomNameVisible:0b,NoGravity:1b,Invulnerable:1b,Small:1b,Marker:1b,Invisible:1b,Tags:["galaxy.customBlock","galaxy.advanced_blast_furnace","haveGUI","dropContent","galaxy._tag.set_block.init"],HandItems:[{id:"minecraft:diamond_sword",Count:1b,tag:{CustomModelData:100,CustomData:{galaxy:{Type:"data",data:{}}}}},{}]}
execute at @e[tag=galaxy._tag.set_block.init] run setblock ~ ~ ~ minecraft:barrel{CustomName:'{"translate":"container.galaxy.advanced_blast_furnace"}'} replace

execute at @e[tag=galaxy._tag.set_block.init] positioned ~ ~0.5 ~ run summon minecraft:armor_stand ~ ~ ~ {Silent:1b,CustomNameVisible:0b,NoGravity:1b,Invulnerable:1b,Small:1b,Marker:1b,Invisible:1b,Tags:["galaxy.customFakeBlock","galaxy.advanced_blast_furnace"],ArmorItems:[{},{},{},{id:"minecraft:item_frame",Count:1b,tag:{CustomModelData:103000}}]}

scoreboard players set @e[tag=galaxy._tag.set_block.init] galaxy.block.states.facing 0
execute if score #block.set_block.block_states.facing galaxy matches -2147483648..2147483647 run scoreboard players operation @e[tag=galaxy._tag.set_block.init] galaxy.block.states.facing = #block.set_block.block_states.facing galaxy
scoreboard players reset #block.set_block.block_states.facing galaxy
execute as @e[tag=galaxy._tag.set_block.init] at @s run function galaxy:block/advanced_blast_furnace/states/facing
scoreboard players set @e[tag=galaxy._tag.set_block.init] galaxy.block.states.lit 0
scoreboard players set @e[tag=galaxy._tag.set_block.init] galaxy.block.work.status.processing 0
scoreboard players set @e[tag=galaxy._tag.set_block.init] galaxy.block.work.status.burning 0
scoreboard players set @e[tag=galaxy._tag.set_block.init] galaxy.block.work.processor1.progress 0
scoreboard players set @e[tag=galaxy._tag.set_block.init] galaxy.block.work.processor1.burnTime 0
scoreboard players set @e[tag=galaxy._tag.set_block.init] galaxy.GUI.interface 0
scoreboard players set @e[tag=galaxy._tag.set_block.init] galaxy.GUI._temp.smeltValue -2147483648
scoreboard players set @e[tag=galaxy._tag.set_block.init] galaxy.GUI._temp.workStatus -2147483648
scoreboard players set @e[tag=galaxy._tag.set_block.init] galaxy.GUI._temp.progressValue -2147483648
execute as @e[tag=galaxy._tag.set_block.init] run function galaxy:gui/advanced_blast_furnace/update
execute as @e[tag=galaxy._tag.set_block.init] run function galaxy:gui/advanced_blast_furnace/main
tag @e[tag=galaxy._tag.set_block.init] remove galaxy._tag.set_block.init
