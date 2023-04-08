execute align xyz positioned ~0.5 ~0.5 ~0.5 run summon minecraft:marker ~ ~ ~ {Tags:["galaxy.block","galaxy.block.elevator","galaxy._tag.set_block.init"]}
execute align xyz positioned ~0.5 ~0.5 ~-0.5 run summon minecraft:item_display ~ ~ ~ {Rotation:[0f,0f],item:{id:"minecraft:item_frame",Count:1b,tag:{CustomModelData:105100}},Tags:["galaxy.block_sprite","galaxy.block_sprite.elevator","galaxy.block_sprite.elevator.north_face","galaxy._tag.set_block.init"]}
execute align xyz positioned ~1.5 ~0.5 ~0.5 run summon minecraft:item_display ~ ~ ~ {Rotation:[90f,0f],item:{id:"minecraft:item_frame",Count:1b,tag:{CustomModelData:105100}},Tags:["galaxy.block_sprite","galaxy.block_sprite.elevator","galaxy.block_sprite.elevator.east_face","galaxy._tag.set_block.init"]}
execute align xyz positioned ~0.5 ~0.5 ~1.5 run summon minecraft:item_display ~ ~ ~ {Rotation:[180f,0f],item:{id:"minecraft:item_frame",Count:1b,tag:{CustomModelData:105100}},Tags:["galaxy.block_sprite","galaxy.block_sprite.elevator","galaxy.block_sprite.elevator.south_face","galaxy._tag.set_block.init"]}
execute align xyz positioned ~-0.5 ~0.5 ~0.5 run summon minecraft:item_display ~ ~ ~ {Rotation:[-90f,0f],item:{id:"minecraft:item_frame",Count:1b,tag:{CustomModelData:105100}},Tags:["galaxy.block_sprite","galaxy.block_sprite.elevator","galaxy.block_sprite.elevator.west_face","galaxy._tag.set_block.init"]}
execute align xyz positioned ~0.5 ~1.5 ~0.5 run summon minecraft:item_display ~ ~ ~ {Rotation:[180f,90f],item:{id:"minecraft:item_frame",Count:1b,tag:{CustomModelData:105100}},Tags:["galaxy.block_sprite","galaxy.block_sprite.elevator","galaxy.block_sprite.elevator.up_face","galaxy._tag.set_block.init"]}
execute align xyz positioned ~0.5 ~-0.5 ~0.5 run summon minecraft:item_display ~ ~ ~ {Rotation:[180f,-90f],item:{id:"minecraft:item_frame",Count:1b,tag:{CustomModelData:105100}},Tags:["galaxy.block_sprite","galaxy.block_sprite.elevator","galaxy.block_sprite.elevator.down_face","galaxy._tag.set_block.init"]}

execute as @e[tag=!galaxy.block,tag=galaxy._tag.set_block.init] run data modify entity @e[tag=galaxy.block,tag=galaxy._tag.set_block.init,limit=1] data.galaxy._subordinates append from entity @s UUID
execute as @e[tag=galaxy.block_sprite,tag=galaxy._tag.set_block.init] run data modify entity @e[tag=galaxy.block,tag=galaxy._tag.set_block.init,limit=1] data.galaxy.block.sprite append from entity @s UUID

execute at @e[tag=galaxy.block,tag=galaxy._tag.set_block.init] run setblock ~ ~ ~ minecraft:barrel{CustomName:'{"translate":"container.galaxy.elevator"}'} replace

tag @e[tag=galaxy._tag.set_block.init] remove galaxy._tag.set_block.init
