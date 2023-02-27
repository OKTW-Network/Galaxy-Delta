summon minecraft:armor_stand ~ ~ ~ {CustomNameVisible:0b,NoGravity:1b,Invulnerable:1b,Small:1b,Marker:1b,Invisible:1b,Tags:["galaxy.customBlock","galaxy.hi-tech_crafting_table","haveGUI","init"],HandItems:[{id:"minecraft:diamond_sword",Count:1b,tag:{CustomModelData:100}},{}]}
setblock ~ ~ ~ minecraft:barrel{CustomName:'{"translate":"container.galaxy.hi_tech_crafting"}'} replace

summon minecraft:armor_stand ~ ~1 ~ {CustomNameVisible:0b,NoGravity:1b,Invulnerable:1b,Small:1b,Marker:1b,Invisible:1b,Tags:["galaxy.customFakeBlock","galaxy.hi-tech_crafting_table"],ArmorItems:[{},{},{},{id:"minecraft:wooden_sword",Count:1b,tag:{CustomModelData:10100}}]}

scoreboard players set @e[tag=galaxy.customBlock,tag=galaxy.hi-tech_crafting_table,tag=init] galaxy.GUI.interface 0
scoreboard players set @e[tag=galaxy.customBlock,tag=galaxy.hi-tech_crafting_table,tag=init] galaxy.GUI.hi-tech_crafting_table.category 1
scoreboard players set @e[tag=galaxy.customBlock,tag=galaxy.hi-tech_crafting_table,tag=init] galaxy.GUI.hi-tech_crafting_table.recipeSubjectPage 1
scoreboard players set @e[tag=galaxy.customBlock,tag=galaxy.hi-tech_crafting_table,tag=init] galaxy.GUI.hi-tech_crafting_table.recipeRequirementPage 1
scoreboard players remove @e[tag=galaxy.customBlock,tag=galaxy.hi-tech_crafting_table,tag=init] galaxy.GUI.hi-tech_crafting_table.recipeSubjectPageMax 0
scoreboard players remove @e[tag=galaxy.customBlock,tag=galaxy.hi-tech_crafting_table,tag=init] galaxy.GUI.hi-tech_crafting_table.recipeRequirementPageMax 0
execute as @e[tag=galaxy.customBlock,tag=galaxy.hi-tech_crafting_table,tag=init] run tag @s add galaxy._task.gui.refresh
execute as @e[tag=galaxy.customBlock,tag=galaxy.hi-tech_crafting_table,tag=init] run function galaxy:gui/hi-tech_crafting_table/main
tag @e[tag=galaxy.customBlock,tag=galaxy.hi-tech_crafting_table,tag=init] remove init
