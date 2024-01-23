execute align xyz positioned ~0.5 ~0.5 ~0.5 run summon minecraft:marker ~ ~ ~ {Tags:["galaxy.block","galaxy.block.reinforced_blast_furnace","galaxy._tag.set_block.init"]}
execute align xyz positioned ~0.5 ~0.5 ~-0.5 run summon minecraft:item_display ~ ~ ~ {Rotation:[180f,0f],item:{id:"minecraft:glow_item_frame",Count:1b,tag:{CustomModelData:1030101}},Tags:["galaxy.block_sprite","galaxy.block_sprite.reinforced_blast_furnace","galaxy.block_sprite.reinforced_blast_furnace.north_face","galaxy._tag.block_sprite.vertical_face","galaxy._tag.set_block.init"]}
execute align xyz positioned ~1.5 ~0.5 ~0.5 run summon minecraft:item_display ~ ~ ~ {Rotation:[-90f,0f],item:{id:"minecraft:glow_item_frame",Count:1b,tag:{CustomModelData:1030101}},Tags:["galaxy.block_sprite","galaxy.block_sprite.reinforced_blast_furnace","galaxy.block_sprite.reinforced_blast_furnace.east_face","galaxy._tag.block_sprite.vertical_face","galaxy._tag.set_block.init"]}
execute align xyz positioned ~0.5 ~0.5 ~1.5 run summon minecraft:item_display ~ ~ ~ {Rotation:[0f,0f],item:{id:"minecraft:glow_item_frame",Count:1b,tag:{CustomModelData:1030101}},Tags:["galaxy.block_sprite","galaxy.block_sprite.reinforced_blast_furnace","galaxy.block_sprite.reinforced_blast_furnace.south_face","galaxy._tag.block_sprite.vertical_face","galaxy._tag.set_block.init"]}
execute align xyz positioned ~-0.5 ~0.5 ~0.5 run summon minecraft:item_display ~ ~ ~ {Rotation:[90f,0f],item:{id:"minecraft:glow_item_frame",Count:1b,tag:{CustomModelData:1030101}},Tags:["galaxy.block_sprite","galaxy.block_sprite.reinforced_blast_furnace","galaxy.block_sprite.reinforced_blast_furnace.west_face","galaxy._tag.block_sprite.vertical_face","galaxy._tag.set_block.init"]}
execute align xyz positioned ~0.5 ~1.5 ~0.5 run summon minecraft:item_display ~ ~ ~ {Rotation:[180f,-90f],item:{id:"minecraft:glow_item_frame",Count:1b,tag:{CustomModelData:1030102}},Tags:["galaxy.block_sprite","galaxy.block_sprite.reinforced_blast_furnace","galaxy.block_sprite.reinforced_blast_furnace.up_face","galaxy._tag.block_sprite.horizontal_face","galaxy._tag.set_block.init"]}
execute align xyz positioned ~0.5 ~-0.5 ~0.5 run summon minecraft:item_display ~ ~ ~ {Rotation:[180f,90f],item:{id:"minecraft:glow_item_frame",Count:1b,tag:{CustomModelData:1030102}},Tags:["galaxy.block_sprite","galaxy.block_sprite.reinforced_blast_furnace","galaxy.block_sprite.reinforced_blast_furnace.down_face","galaxy._tag.block_sprite.horizontal_face","galaxy._tag.set_block.init"]}

execute as @e[tag=!galaxy.block,tag=galaxy._tag.set_block.init] run data modify entity @e[tag=galaxy.block,tag=galaxy._tag.set_block.init,limit=1] data.galaxy._subordinates append from entity @s UUID
execute as @e[tag=galaxy.block_sprite,tag=galaxy._tag.set_block.init] run data modify entity @e[tag=galaxy.block,tag=galaxy._tag.set_block.init,limit=1] data.galaxy.block.sprites append from entity @s UUID

execute at @e[tag=galaxy.block,tag=galaxy._tag.set_block.init] run setblock ~ ~ ~ minecraft:barrel{CustomName:'{"translate":"container.galaxy.reinforced_blast_furnace"}'} replace

scoreboard players set @e[tag=galaxy.block,tag=galaxy._tag.set_block.init] galaxy.block.states.facing 0
execute if score #block.set_block.block_states.facing galaxy matches -2147483648..2147483647 run scoreboard players operation @e[tag=galaxy.block,tag=galaxy._tag.set_block.init] galaxy.block.states.facing = #block.set_block.block_states.facing galaxy
scoreboard players reset #block.set_block.block_states.facing galaxy
scoreboard players set @e[tag=galaxy.block,tag=galaxy._tag.set_block.init] galaxy.block.states.lit 0
execute as @e[tag=galaxy.block,tag=galaxy._tag.set_block.init] at @s run function galaxy:block/reinforced_blast_furnace/update_block_states
scoreboard players set @e[tag=galaxy.block,tag=galaxy._tag.set_block.init] galaxy.block.process.idle 0
scoreboard players set @e[tag=galaxy.block,tag=galaxy._tag.set_block.init] galaxy.block.process.isProcessing 0
scoreboard players set @e[tag=galaxy.block,tag=galaxy._tag.set_block.init] galaxy.block.process.isBurning 0
scoreboard players set @e[tag=galaxy.block,tag=galaxy._tag.set_block.init] galaxy.block.process.progress 0
scoreboard players set @e[tag=galaxy.block,tag=galaxy._tag.set_block.init] galaxy.block.process.burnTime 0
scoreboard players set @e[tag=galaxy.block,tag=galaxy._tag.set_block.init] galaxy.GUI.build_piece.fuel_bar_1x1.lastValue -2147483648
scoreboard players set @e[tag=galaxy.block,tag=galaxy._tag.set_block.init] galaxy.GUI.build_piece.progress_bar_2x1.lastValue -2147483648
tag @s[tag=galaxy.block,tag=galaxy._tag.set_block.init] add galaxy._task.gui.refresh
execute as @e[tag=galaxy.block,tag=galaxy._tag.set_block.init] at @s run function galaxy:gui/reinforced_blast_furnace/main

tag @e[tag=galaxy._tag.set_block.init] remove galaxy._tag.set_block.init
