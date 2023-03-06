execute align xyz positioned ~0.5 ~0.5 ~0.5 run summon minecraft:armor_stand ~ ~ ~ {Silent:1b,CustomNameVisible:0b,NoGravity:1b,Invulnerable:1b,Small:1b,Marker:1b,Invisible:1b,Tags:["galaxy.block","galaxy.block.advanced_blast_furnace","galaxy._tag.set_block.init"],HandItems:[{id:"minecraft:diamond_sword",Count:1b,tag:{CustomModelData:100,CustomData:{galaxy:{Type:"data",data:{}}}}},{}]}
execute at @e[tag=galaxy._tag.set_block.init] run setblock ~ ~ ~ minecraft:barrel{CustomName:'{"translate":"container.galaxy.advanced_blast_furnace"}'} replace

execute at @e[tag=galaxy._tag.set_block.init] positioned ~ ~0.5 ~ run summon minecraft:armor_stand ~ ~ ~ {Silent:1b,CustomNameVisible:0b,NoGravity:1b,Invulnerable:1b,Small:1b,Marker:1b,Invisible:1b,Tags:["galaxy.block_mask","galaxy.block_mask.advanced_blast_furnace"],ArmorItems:[{},{},{},{id:"minecraft:item_frame",Count:1b,tag:{CustomModelData:103000}}]}

scoreboard players set @e[tag=galaxy._tag.set_block.init] galaxy.block.states.facing 0
execute if score #block.set_block.block_states.facing galaxy matches -2147483648..2147483647 run scoreboard players operation @e[tag=galaxy._tag.set_block.init] galaxy.block.states.facing = #block.set_block.block_states.facing galaxy
scoreboard players reset #block.set_block.block_states.facing galaxy
execute as @e[tag=galaxy._tag.set_block.init] at @s run function galaxy:block/advanced_blast_furnace/states/facing
scoreboard players set @e[tag=galaxy._tag.set_block.init] galaxy.block.states.lit 0
execute as @e[tag=galaxy._tag.set_block.init] at @s run function galaxy:block/advanced_blast_furnace/states/lit
scoreboard players set @e[tag=galaxy._tag.set_block.init] galaxy.block.process.idle 0
scoreboard players set @e[tag=galaxy._tag.set_block.init] galaxy.block.process.isProcessing 0
scoreboard players set @e[tag=galaxy._tag.set_block.init] galaxy.block.process.isBurning 0
scoreboard players set @e[tag=galaxy._tag.set_block.init] galaxy.block.process.progress 0
scoreboard players set @e[tag=galaxy._tag.set_block.init] galaxy.block.process.burnTime 0
scoreboard players set @e[tag=galaxy._tag.set_block.init] galaxy.GUI.build_piece.fuel_bar_1x1.lastValue -2147483648
scoreboard players set @e[tag=galaxy._tag.set_block.init] galaxy.GUI.build_piece.progress_bar_2x1.lastValue -2147483648
tag @s[tag=galaxy._tag.set_block.init] add galaxy._task.gui.refresh
execute as @e[tag=galaxy._tag.set_block.init] at @s run function galaxy:gui/advanced_blast_furnace/main
tag @e[tag=galaxy._tag.set_block.init] remove galaxy._tag.set_block.init
