execute align xyz positioned ~0.5 ~0.5 ~0.5 run summon minecraft:marker ~ ~ ~ {Tags:["galaxy.block","galaxy.block.assembly_table","galaxy._tag.set_block.init"]}
execute align xyz positioned ~0.5 ~0.5 ~-0.5 run summon minecraft:item_display ~ ~ ~ {Rotation:[0f,0f],item:{id:"minecraft:item_frame",Count:1b,tag:{CustomModelData:104100}},Tags:["galaxy.block_sprite","galaxy.block_sprite.assembly_table","galaxy.block_sprite.assembly_table.north_face","galaxy._tag.set_block.init"]}
execute align xyz positioned ~1.5 ~0.5 ~0.5 run summon minecraft:item_display ~ ~ ~ {Rotation:[90f,0f],item:{id:"minecraft:item_frame",Count:1b,tag:{CustomModelData:104100}},Tags:["galaxy.block_sprite","galaxy.block_sprite.assembly_table","galaxy.block_sprite.assembly_table.east_face","galaxy._tag.set_block.init"]}
execute align xyz positioned ~0.5 ~0.5 ~1.5 run summon minecraft:item_display ~ ~ ~ {Rotation:[180f,0f],item:{id:"minecraft:item_frame",Count:1b,tag:{CustomModelData:104100}},Tags:["galaxy.block_sprite","galaxy.block_sprite.assembly_table","galaxy.block_sprite.assembly_table.south_face","galaxy._tag.set_block.init"]}
execute align xyz positioned ~-0.5 ~0.5 ~0.5 run summon minecraft:item_display ~ ~ ~ {Rotation:[-90f,0f],item:{id:"minecraft:item_frame",Count:1b,tag:{CustomModelData:104100}},Tags:["galaxy.block_sprite","galaxy.block_sprite.assembly_table","galaxy.block_sprite.assembly_table.west_face","galaxy._tag.set_block.init"]}
execute align xyz positioned ~0.5 ~1.5 ~0.5 run summon minecraft:item_display ~ ~ ~ {Rotation:[180f,90f],item:{id:"minecraft:item_frame",Count:1b,tag:{CustomModelData:104101}},Tags:["galaxy.block_sprite","galaxy.block_sprite.assembly_table","galaxy.block_sprite.assembly_table.up_face","galaxy._tag.set_block.init"]}
execute align xyz positioned ~0.5 ~-0.5 ~0.5 run summon minecraft:item_display ~ ~ ~ {Rotation:[180f,-90f],item:{id:"minecraft:item_frame",Count:1b,tag:{CustomModelData:104102}},Tags:["galaxy.block_sprite","galaxy.block_sprite.assembly_table","galaxy.block_sprite.assembly_table.down_face","galaxy._tag.set_block.init"]}

execute as @e[tag=!galaxy.block,tag=galaxy._tag.set_block.init] run data modify entity @e[tag=galaxy.block,tag=galaxy._tag.set_block.init,limit=1] data.galaxy._subordinates append from entity @s UUID
execute as @e[tag=galaxy.block_sprite,tag=galaxy._tag.set_block.init] run data modify entity @e[tag=galaxy.block,tag=galaxy._tag.set_block.init,limit=1] data.galaxy.block.sprite append from entity @s UUID

execute at @e[tag=galaxy.block,tag=galaxy._tag.set_block.init] run setblock ~ ~ ~ minecraft:barrel{CustomName:'{"translate":"container.galaxy.assembly_table"}'} replace

tag @e[tag=galaxy.block,tag=galaxy._tag.set_block.init] add galaxy._tag.assembly_table.resultEmpty
scoreboard players set @e[tag=galaxy.block,tag=galaxy._tag.set_block.init] galaxy.GUI.assembly_table.blueprintPage 1
tag @e[tag=galaxy.block,tag=galaxy._tag.set_block.init] add galaxy._task.gui.refresh
execute as @e[tag=galaxy.block,tag=galaxy._tag.set_block.init] at @s run function galaxy:gui/assembly_table/main

tag @e[tag=galaxy._tag.set_block.init] remove galaxy._tag.set_block.init
