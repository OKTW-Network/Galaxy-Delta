execute align xyz positioned ~0.5 ~0.5 ~0.5 run summon minecraft:armor_stand ~ ~ ~ {CustomNameVisible:0b,NoGravity:1b,Invulnerable:1b,Small:1b,Marker:1b,Invisible:1b,Tags:["galaxy.customBlock","galaxy.elevator","galaxy._tag.set_block.init"]}
execute at @e[tag=galaxy._tag.set_block.init] run setblock ~ ~ ~ minecraft:barrel{CustomName:'{"translate":"container.galaxy.elevator"}'} replace

execute at @e[tag=galaxy._tag.set_block.init] positioned ~ ~0.5 ~ run summon minecraft:armor_stand ~ ~ ~ {CustomNameVisible:0b,NoGravity:1b,Invulnerable:1b,Small:1b,Marker:1b,Invisible:1b,Tags:["galaxy.customFakeBlock","galaxy.elevator"],ArmorItems:[{},{},{},{id:"minecraft:item_frame",Count:1b,tag:{CustomModelData:105000}}]}

tag @e[tag=galaxy._tag.set_block.init] remove galaxy._tag.set_block.init
