execute unless entity @s[tag=placeFailed] run summon minecraft:armor_stand ~ ~ ~ {CustomNameVisible:0b,NoGravity:1b,Invulnerable:1b,Small:1b,Marker:1b,Invisible:1b,HandItems:[{id:"minecraft:diamond_sword",Count:1b,tag:{CustomModelData:100}},{}],Tags:["customBlock","haveGUI","hi-tech_crafting_table","init"]}
execute unless entity @s[tag=placeFailed] run setblock ~ ~ ~ minecraft:barrel{CustomName:'{"translate":"container.hi_tech_crafting"}'} replace

execute unless entity @s[tag=placeFailed] run summon minecraft:armor_stand ~ ~1 ~ {CustomNameVisible:0b,NoGravity:1b,Invulnerable:1b,Small:1b,Marker:1b,Invisible:1b,Tags:["fake_block","hi-tech_crafting_table_fake_block"],ArmorItems:[{},{},{},{id:"minecraft:wooden_sword",Count:1b,tag:{CustomModelData:10100,fakeBlock:1}}]}

scoreboard players set @e[tag=hi-tech_crafting_table,tag=init] guiMode 0
scoreboard players set @e[tag=hi-tech_crafting_table,tag=init] htctCategory 1
scoreboard players set @e[tag=hi-tech_crafting_table,tag=init] htctListPage 1
scoreboard players set @e[tag=hi-tech_crafting_table,tag=init] htctRequPage 1
scoreboard players remove @e[tag=hi-tech_crafting_table,tag=init] htctListPageMax 0
scoreboard players remove @e[tag=hi-tech_crafting_table,tag=init] htctRequPageMax 0
scoreboard players remove @e[tag=hi-tech_crafting_table,tag=init] countItems 0
scoreboard players remove @e[tag=hi-tech_crafting_table,tag=init] countTags 0
scoreboard players remove @e[tag=hi-tech_crafting_table,tag=init] reqRcpHTct 0
scoreboard players remove @e[tag=hi-tech_crafting_table,tag=init] reqHTctCraft 0
execute as @e[tag=hi-tech_crafting_table,tag=init] run function galaxy:gui/hi-tech_crafting_table/update
execute as @e[tag=hi-tech_crafting_table,tag=init] run tag @s remove init

execute if entity @s[tag=placeFailed] as @a[tag=triggerPlaceBlock] run function galaxy:block/give/hi-tech_crafting_table

execute unless entity @s[tag=placeFailed] run playsound block.metal.place block @a ~ ~ ~ 1 1.1
