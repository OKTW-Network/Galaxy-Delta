execute align xyz positioned ~0.5 ~0.5 ~0.5 run summon minecraft:armor_stand ~ ~ ~ {Silent:1b,CustomNameVisible:0b,NoGravity:1b,Invulnerable:1b,Small:1b,Marker:1b,Invisible:1b,Tags:["galaxy.customBlock","galaxy.assembly_table","galaxy._tag.set_block.init"],HandItems:[{id:"minecraft:diamond_sword",Count:1b,tag:{CustomModelData:100,CustomData:{galaxy:{Type:"data",data:{}}}}},{}]}
execute at @e[tag=galaxy._tag.set_block.init] run setblock ~ ~ ~ minecraft:barrel{CustomName:'{"translate":"container.galaxy.assembly_table"}'} replace

execute at @e[tag=galaxy._tag.set_block.init] positioned ~ ~0.5 ~ run summon minecraft:armor_stand ~ ~ ~ {Silent:1b,CustomNameVisible:0b,NoGravity:1b,Invulnerable:1b,Small:1b,Marker:1b,Invisible:1b,Tags:["galaxy.customFakeBlock","galaxy.assembly_table"],ArmorItems:[{},{},{},{id:"minecraft:item_frame",Count:1b,tag:{CustomModelData:104000}}]}

execute as @e[tag=galaxy._tag.set_block.init] run tag @s add galaxy._tag.assembly_table.resultEmpty
execute as @e[tag=galaxy._tag.set_block.init] run scoreboard players set @s galaxy.GUI.assembly_table.blueprintPage 1
execute as @e[tag=galaxy._tag.set_block.init] run tag @s add galaxy._task.gui.refresh
execute as @e[tag=galaxy._tag.set_block.init] run function galaxy:gui/assembly_table/main
tag @e[tag=galaxy._tag.set_block.init] remove galaxy._tag.set_block.init
