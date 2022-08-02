execute unless entity @s[tag=galaxy._tag.placeFailed] run summon minecraft:armor_stand ~ ~ ~ {CustomNameVisible:0b,NoGravity:1b,Invulnerable:1b,Small:1b,Marker:1b,Invisible:1b,Tags:["galaxy.customBlock","galaxy.hi-tech_crafting_table","haveGUI","init"],HandItems:[{id:"minecraft:diamond_sword",Count:1b,tag:{CustomModelData:100,CustomData:{galaxy:{Type:"data_storage",data:{}}}}},{}]}
execute unless entity @s[tag=galaxy._tag.placeFailed] run setblock ~ ~ ~ minecraft:barrel{CustomName:'{"translate":"container.galaxy.hi_tech_crafting"}'} replace

execute unless entity @s[tag=galaxy._tag.placeFailed] run summon minecraft:armor_stand ~ ~1 ~ {CustomNameVisible:0b,NoGravity:1b,Invulnerable:1b,Small:1b,Marker:1b,Invisible:1b,Tags:["galaxy.customFakeBlock","galaxy.hi-tech_crafting_table"],ArmorItems:[{},{},{},{id:"minecraft:wooden_sword",Count:1b,tag:{CustomModelData:10100}}]}

scoreboard players set @e[tag=galaxy.customBlock,tag=galaxy.hi-tech_crafting_table,tag=init] galaxy.GUI.interface 0
scoreboard players set @e[tag=galaxy.customBlock,tag=galaxy.hi-tech_crafting_table,tag=init] galaxy.GUI.HTct.category 1
scoreboard players set @e[tag=galaxy.customBlock,tag=galaxy.hi-tech_crafting_table,tag=init] galaxy.GUI.HTct.recipeSubjectListPage 1
scoreboard players set @e[tag=galaxy.customBlock,tag=galaxy.hi-tech_crafting_table,tag=init] galaxy.GUI.HTct.recipeRequirementListPage 1
scoreboard players remove @e[tag=galaxy.customBlock,tag=galaxy.hi-tech_crafting_table,tag=init] galaxy.GUI.HTct.recipeSubjectListPageMax 0
scoreboard players remove @e[tag=galaxy.customBlock,tag=galaxy.hi-tech_crafting_table,tag=init] galaxy.GUI.HTct.recipeRequirementListPageMax 0
execute as @e[tag=galaxy.customBlock,tag=galaxy.hi-tech_crafting_table,tag=init] run function galaxy:gui/hi-tech_crafting_table/update
execute as @e[tag=galaxy.customBlock,tag=galaxy.hi-tech_crafting_table,tag=init] run function galaxy:gui/hi-tech_crafting_table/main
tag @e[tag=galaxy.customBlock,tag=galaxy.hi-tech_crafting_table,tag=init] remove init

execute if entity @s[tag=galaxy._tag.placeFailed] as @a[tag=galaxy._tag.ThisPlaceBlock,gamemode=!creative] run function galaxy:block/give/hi-tech_crafting_table

execute unless entity @s[tag=galaxy._tag.placeFailed] run playsound block.metal.place block @a ~ ~ ~ 1 1.1
