execute align xyz positioned ~0.5 ~0.5 ~0.5 run summon minecraft:armor_stand ~ ~ ~ {CustomNameVisible:0b,NoGravity:1b,Invulnerable:1b,Small:1b,Marker:1b,Invisible:1b,Tags:["galaxy.block","galaxy.block.hi_tech_crafting_table","galaxy._tag.set_block.init"],HandItems:[{id:"minecraft:diamond_sword",Count:1b,tag:{CustomModelData:100,CustomData:{galaxy:{Type:"data",data:{}}}}},{}]}
execute at @e[tag=galaxy._tag.set_block.init] run setblock ~ ~ ~ minecraft:barrel{CustomName:'{"translate":"container.galaxy.hi_tech_crafting"}'} replace

execute at @e[tag=galaxy._tag.set_block.init] positioned ~ ~0.5 ~ run summon minecraft:armor_stand ~ ~ ~ {CustomNameVisible:0b,NoGravity:1b,Invulnerable:1b,Small:1b,Marker:1b,Invisible:1b,Tags:["galaxy.block_mask","galaxy.block_mask.hi_tech_crafting_table"],ArmorItems:[{},{},{},{id:"minecraft:item_frame",Count:1b,tag:{CustomModelData:101000}}]}

execute as @e[tag=galaxy._tag.set_block.init] run data modify entity @s HandItems[0].tag.CustomData.galaxy.data.hi_tech_crafting_table.interface set value "overview"
scoreboard players set @e[tag=galaxy._tag.set_block.init] galaxy.GUI.hi_tech_crafting_table.category 1
scoreboard players set @e[tag=galaxy._tag.set_block.init] galaxy.GUI.hi_tech_crafting_table.recipeSubjectPage 1
scoreboard players set @e[tag=galaxy._tag.set_block.init] galaxy.GUI.hi_tech_crafting_table.recipeRequirementPage 1
scoreboard players remove @e[tag=galaxy._tag.set_block.init] galaxy.GUI.hi_tech_crafting_table.recipeSubjectPageMax 0
scoreboard players remove @e[tag=galaxy._tag.set_block.init] galaxy.GUI.hi_tech_crafting_table.recipeRequirementPageMax 0
tag @e[tag=galaxy._tag.set_block.init] add galaxy._task.gui.refresh
execute as @e[tag=galaxy._tag.set_block.init] run function galaxy:gui/hi_tech_crafting_table/main
tag @e[tag=galaxy._tag.set_block.init] remove galaxy._tag.set_block.init
