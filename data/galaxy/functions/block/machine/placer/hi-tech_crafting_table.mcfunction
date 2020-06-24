summon minecraft:armor_stand ~ ~ ~ {CustomNameVisible:0b,NoGravity:1b,Invulnerable:1b,Small:1b,Marker:1b,Invisible:1b,Tags:["hi-tech_crafting_table","init"]}
setblock ~ ~ ~ minecraft:barrel{CustomName:'{"translate":"container.hi_tech_crafting"}'} replace
summon minecraft:armor_stand ~ ~1 ~ {CustomNameVisible:0b,NoGravity:1b,Invulnerable:1b,Small:1b,Marker:1b,Invisible:1b,Tags:["hi-tech_crafting_table_fake_block"],ArmorItems:[{},{},{},{id:"minecraft:wooden_sword",Count:1b,tag:{CustomModelData:10100,fakeBlock:1,HTct:1}}]}
execute if entity @s[tag=content_data] store result score @e[tag=hi-tech_crafting_table,tag=init] guiMode run data get entity @s HandItems[0].tag.guiMode
execute if entity @s[tag=content_data] store result score @e[tag=hi-tech_crafting_table,tag=init] htctListPage run data get entity @s HandItems[0].tag.htctListPage
execute if entity @s[tag=content_data] store result score @e[tag=hi-tech_crafting_table,tag=init] htctCategory run data get entity @s HandItems[0].tag.htctCategory
execute if entity @s[tag=content_data] store result score @e[tag=hi-tech_crafting_table,tag=init] reqRcpHTct run data get entity @s HandItems[0].tag.reqRcpHTct
execute if entity @s[tag=!content_data] run scoreboard players set @e[tag=hi-tech_crafting_table,tag=init] guiMode 0
execute if entity @s[tag=!content_data] run scoreboard players set @e[tag=hi-tech_crafting_table,tag=init] htctListPage 1
execute if entity @s[tag=!content_data] run scoreboard players set @e[tag=hi-tech_crafting_table,tag=init] htctCategory 1
execute if entity @s[tag=!content_data] run scoreboard players set @e[tag=hi-tech_crafting_table,tag=init] htctRequPage 1
scoreboard players remove @e[tag=hi-tech_crafting_table,tag=init] setGuiCover 0
scoreboard players remove @e[tag=hi-tech_crafting_table,tag=init] setHTctListPage 0
scoreboard players remove @e[tag=hi-tech_crafting_table,tag=init] setHTctCategory 0
scoreboard players remove @e[tag=hi-tech_crafting_table,tag=init] setButtBack1 0
scoreboard players remove @e[tag=hi-tech_crafting_table,tag=init] setButtConfirm 0
scoreboard players remove @e[tag=hi-tech_crafting_table,tag=init] setHTctResult 0
scoreboard players remove @e[tag=hi-tech_crafting_table,tag=init] setHTctRequPage 0
scoreboard players remove @e[tag=hi-tech_crafting_table,tag=init] htctListPageMax 0
execute store result score @e[tag=hi-tech_crafting_table,tag=init] htctCatgMax run scoreboard players get #global htctCatgMax
scoreboard players remove @e[tag=hi-tech_crafting_table,tag=init] htctRequPageMax 0
scoreboard players remove @e[tag=hi-tech_crafting_table,tag=init] htctListPageTemp 0
scoreboard players remove @e[tag=hi-tech_crafting_table,tag=init] htctCategoryTemp 0
scoreboard players remove @e[tag=hi-tech_crafting_table,tag=init] htctRequPageTemp 0
scoreboard players remove @e[tag=hi-tech_crafting_table,tag=init] countItems 0
scoreboard players remove @e[tag=hi-tech_crafting_table,tag=init] countTags 0
scoreboard players remove @e[tag=hi-tech_crafting_table,tag=init] sucRequest 0
scoreboard players remove @e[tag=hi-tech_crafting_table,tag=init] reqRcpHTct 0
scoreboard players remove @e[tag=hi-tech_crafting_table,tag=init] reqHTctCraft 0
execute as @e[tag=hi-tech_crafting_table,tag=init] run function galaxy:gui/hi-tech_crafting_table/update
execute as @e[tag=hi-tech_crafting_table,tag=init] run tag @s remove init
kill @s
