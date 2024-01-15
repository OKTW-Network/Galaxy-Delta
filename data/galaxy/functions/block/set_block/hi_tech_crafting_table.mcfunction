execute align xyz positioned ~0.5 ~0.5 ~0.5 run summon minecraft:marker ~ ~ ~ {Tags:["galaxy.block","galaxy.block.hi_tech_crafting_table","galaxy._tag.set_block.init"]}
execute align xyz positioned ~0.5 ~0.5 ~-0.5 run summon minecraft:item_display ~ ~ ~ {Rotation:[0f,0f],item:{id:"minecraft:glow_item_frame",Count:1b,tag:{CustomModelData:1010100}},Tags:["galaxy.block_sprite","galaxy.block_sprite.hi_tech_crafting_table","galaxy.block_sprite.hi_tech_crafting_table.north_face","galaxy._tag.set_block.init"]}
execute align xyz positioned ~1.5 ~0.5 ~0.5 run summon minecraft:item_display ~ ~ ~ {Rotation:[90f,0f],item:{id:"minecraft:glow_item_frame",Count:1b,tag:{CustomModelData:1010100}},Tags:["galaxy.block_sprite","galaxy.block_sprite.hi_tech_crafting_table","galaxy.block_sprite.hi_tech_crafting_table.east_face","galaxy._tag.set_block.init"]}
execute align xyz positioned ~0.5 ~0.5 ~1.5 run summon minecraft:item_display ~ ~ ~ {Rotation:[180f,0f],item:{id:"minecraft:glow_item_frame",Count:1b,tag:{CustomModelData:1010100}},Tags:["galaxy.block_sprite","galaxy.block_sprite.hi_tech_crafting_table","galaxy.block_sprite.hi_tech_crafting_table.south_face","galaxy._tag.set_block.init"]}
execute align xyz positioned ~-0.5 ~0.5 ~0.5 run summon minecraft:item_display ~ ~ ~ {Rotation:[-90f,0f],item:{id:"minecraft:glow_item_frame",Count:1b,tag:{CustomModelData:1010100}},Tags:["galaxy.block_sprite","galaxy.block_sprite.hi_tech_crafting_table","galaxy.block_sprite.hi_tech_crafting_table.west_face","galaxy._tag.set_block.init"]}
execute align xyz positioned ~0.5 ~1.5 ~0.5 run summon minecraft:item_display ~ ~ ~ {Rotation:[180f,90f],item:{id:"minecraft:glow_item_frame",Count:1b,tag:{CustomModelData:1010101}},Tags:["galaxy.block_sprite","galaxy.block_sprite.hi_tech_crafting_table","galaxy.block_sprite.hi_tech_crafting_table.up_face","galaxy._tag.set_block.init"]}
execute align xyz positioned ~0.5 ~-0.5 ~0.5 run summon minecraft:item_display ~ ~ ~ {Rotation:[180f,-90f],item:{id:"minecraft:glow_item_frame",Count:1b,tag:{CustomModelData:1010102}},Tags:["galaxy.block_sprite","galaxy.block_sprite.hi_tech_crafting_table","galaxy.block_sprite.hi_tech_crafting_table.down_face","galaxy._tag.set_block.init"]}

execute as @e[tag=!galaxy.block,tag=galaxy._tag.set_block.init] run data modify entity @e[tag=galaxy.block,tag=galaxy._tag.set_block.init,limit=1] data.galaxy._subordinates append from entity @s UUID
execute as @e[tag=galaxy.block_sprite,tag=galaxy._tag.set_block.init] run data modify entity @e[tag=galaxy.block,tag=galaxy._tag.set_block.init,limit=1] data.galaxy.block.sprites append from entity @s UUID

execute at @e[tag=galaxy.block,tag=galaxy._tag.set_block.init] run setblock ~ ~ ~ minecraft:barrel{CustomName:'{"translate":"container.galaxy.hi_tech_crafting"}'} replace

execute as @e[tag=galaxy.block,tag=galaxy._tag.set_block.init] at @s run function galaxy:block/hi_tech_crafting_table/functional/switch_to_home
execute as @e[tag=galaxy.block,tag=galaxy._tag.set_block.init] at @s run function galaxy:gui/hi_tech_crafting_table/main

tag @e[tag=galaxy._tag.set_block.init] remove galaxy._tag.set_block.init
