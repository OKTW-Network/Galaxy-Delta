summon minecraft:armor_stand ~ ~ ~ {CustomNameVisible:0b,NoGravity:1b,Invulnerable:1b,Small:1b,Marker:1b,Invisible:1b,Tags:["galaxy.customBlock","galaxy.hi-tech_crafting_table","haveGUI","init"],HandItems:[{id:"minecraft:diamond_sword",Count:1b,tag:{CustomModelData:100}},{}]}
setblock ~ ~ ~ minecraft:barrel{CustomName:'{"translate":"container.hi_tech_crafting"}'} replace

summon minecraft:armor_stand ~ ~1 ~ {CustomNameVisible:0b,NoGravity:1b,Invulnerable:1b,Small:1b,Marker:1b,Invisible:1b,Tags:["customFakeBlock","galaxy.hi-tech_crafting_table"],ArmorItems:[{},{},{},{id:"minecraft:wooden_sword",Count:1b,tag:{CustomModelData:10100}}]}

scoreboard players set @e[tag=galaxy.customBlock,tag=galaxy.hi-tech_crafting_table,tag=init] guiInterface 0
scoreboard players set @e[tag=galaxy.customBlock,tag=galaxy.hi-tech_crafting_table,tag=init] htctCategory 1
scoreboard players set @e[tag=galaxy.customBlock,tag=galaxy.hi-tech_crafting_table,tag=init] htctListPage 1
scoreboard players set @e[tag=galaxy.customBlock,tag=galaxy.hi-tech_crafting_table,tag=init] htctRequPage 1
scoreboard players remove @e[tag=galaxy.customBlock,tag=galaxy.hi-tech_crafting_table,tag=init] htctListPageMax 0
scoreboard players remove @e[tag=galaxy.customBlock,tag=galaxy.hi-tech_crafting_table,tag=init] htctRequPageMax 0
scoreboard players remove @e[tag=galaxy.customBlock,tag=galaxy.hi-tech_crafting_table,tag=init] countItems 0
scoreboard players remove @e[tag=galaxy.customBlock,tag=galaxy.hi-tech_crafting_table,tag=init] countTags 0
scoreboard players remove @e[tag=galaxy.customBlock,tag=galaxy.hi-tech_crafting_table,tag=init] reqRcpHTct 0
scoreboard players remove @e[tag=galaxy.customBlock,tag=galaxy.hi-tech_crafting_table,tag=init] reqHTctCraft 0
execute as @e[tag=galaxy.customBlock,tag=galaxy.hi-tech_crafting_table,tag=init] run function galaxy:gui/hi-tech_crafting_table/update
execute as @e[tag=galaxy.customBlock,tag=galaxy.hi-tech_crafting_table,tag=init] run function galaxy:gui/hi-tech_crafting_table/main
tag @e[tag=galaxy.customBlock,tag=galaxy.hi-tech_crafting_table,tag=init] remove init
