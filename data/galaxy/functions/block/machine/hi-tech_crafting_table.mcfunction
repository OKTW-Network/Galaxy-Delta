# block place
execute as @e[tag=hi-tech_crafting_table_placer,tag=!content_data] at @s run summon minecraft:armor_stand ~ ~ ~ {CustomNameVisible:0b,NoGravity:1b,Invulnerable:1b,Small:1b,Marker:1b,Invisible:1b,Tags:["hi-tech_crafting_table","function_place"]}
execute as @e[tag=hi-tech_crafting_table_placer,tag=content_data] at @s run summon minecraft:armor_stand ~ ~ ~ {CustomNameVisible:0b,NoGravity:1b,Invulnerable:1b,Small:1b,Marker:1b,Invisible:1b,Tags:["hi-tech_crafting_table","function_place","content_data"]}
execute as @e[tag=hi-tech_crafting_table,tag=function_place] at @s run setblock ~ ~ ~ minecraft:barrel{CustomName:'{"translate":"container.hi_tech_crafting"}'} replace
execute as @e[tag=hi-tech_crafting_table,tag=function_place] at @s run summon minecraft:armor_stand ~ ~1 ~ {CustomNameVisible:0b,NoGravity:1b,Invulnerable:1b,Small:1b,Marker:1b,Invisible:1b,Tags:["hi-tech_crafting_table_fake_block"],ArmorItems:[{},{},{},{id:"minecraft:wooden_sword",Count:1b,tag:{CustomModelData:10100,fakeBlock:1,HTct:1}}]}
scoreboard players set @e[tag=hi-tech_crafting_table,tag=function_place] guiMode 0
scoreboard players set @e[tag=hi-tech_crafting_table,tag=function_place] htctListPage 1
scoreboard players set @e[tag=hi-tech_crafting_table,tag=function_place] htctCategory 1
scoreboard players set @e[tag=hi-tech_crafting_table,tag=function_place] htctRequPage 1
execute as @e[tag=hi-tech_crafting_table,tag=function_place,tag=content_data] at @s store result score @s guiMode run data get entity @e[tag=hi-tech_crafting_table_placer,sort=nearest,limit=1] HandItems[0].tag.guiMode
execute as @e[tag=hi-tech_crafting_table,tag=function_place,tag=content_data] at @s store result score @s htctListPage run data get entity @e[tag=hi-tech_crafting_table_placer,sort=nearest,limit=1] HandItems[0].tag.htctListPage
execute as @e[tag=hi-tech_crafting_table,tag=function_place,tag=content_data] at @s store result score @s htctCategory run data get entity @e[tag=hi-tech_crafting_table_placer,sort=nearest,limit=1] HandItems[0].tag.htctCategory
execute as @e[tag=hi-tech_crafting_table,tag=function_place,tag=content_data] at @s store result score @s reqRcpHTct run data get entity @e[tag=hi-tech_crafting_table_placer,sort=nearest,limit=1] HandItems[0].tag.reqRcpHTct
scoreboard players set @e[tag=hi-tech_crafting_table,tag=function_place] setGui 1
scoreboard players remove @e[tag=hi-tech_crafting_table,tag=function_place] setGuiCover 0
scoreboard players remove @e[tag=hi-tech_crafting_table,tag=function_place] setHTctListPage 0
scoreboard players remove @e[tag=hi-tech_crafting_table,tag=function_place] setHTctCategory 0
scoreboard players remove @e[tag=hi-tech_crafting_table,tag=function_place] setButtBack1 0
scoreboard players remove @e[tag=hi-tech_crafting_table,tag=function_place] setButtConfirm 0
scoreboard players remove @e[tag=hi-tech_crafting_table,tag=function_place] setHTctResult 0
scoreboard players remove @e[tag=hi-tech_crafting_table,tag=function_place] setHTctRequPage 0
scoreboard players remove @e[tag=hi-tech_crafting_table,tag=function_place] htctListPageMax 0
execute as @e[tag=hi-tech_crafting_table,tag=function_place] store result score @s htctCatgMax run scoreboard players get #global htctCatgMax
scoreboard players remove @e[tag=hi-tech_crafting_table,tag=function_place] htctRequPageMax 0
scoreboard players remove @e[tag=hi-tech_crafting_table,tag=function_place] htctListPageTemp 0
scoreboard players remove @e[tag=hi-tech_crafting_table,tag=function_place] htctCategoryTemp 0
scoreboard players remove @e[tag=hi-tech_crafting_table,tag=function_place] htctRequPageTemp 0
scoreboard players remove @e[tag=hi-tech_crafting_table,tag=function_place] countItems 0
scoreboard players remove @e[tag=hi-tech_crafting_table,tag=function_place] countTags 0
scoreboard players remove @e[tag=hi-tech_crafting_table,tag=function_place] sucRequest 0
scoreboard players remove @e[tag=hi-tech_crafting_table,tag=function_place] reqRcpHTct 0
scoreboard players remove @e[tag=hi-tech_crafting_table,tag=function_place] reqHTctCraft 0
kill @e[tag=hi-tech_crafting_table_placer]
execute as @e[tag=hi-tech_crafting_table,tag=function_place] run tag @s remove function_place

# hopper protect
execute as @e[tag=hi-tech_crafting_table] positioned as @s run function galaxy:block/protection

# block destroy
execute as @e[tag=hi-tech_crafting_table] positioned as @s if block ~ ~ ~ minecraft:air run tag @s add function_destroy
execute as @e[tag=hi-tech_crafting_table,tag=function_destroy] at @s run kill @e[tag=hi-tech_crafting_table_fake_block,sort=nearest,limit=1]
execute as @e[tag=hi-tech_crafting_table,tag=function_destroy] at @s run summon minecraft:item ~ ~0.5 ~ {PickupDelay:10s,Health:5s,Tags:["hi-tech_crafting_table_item","function_data_storage"],Item:{id:"minecraft:armor_stand",Count:1b,tag:{display:{Name:"{\"translate\":\"block.galaxy.hi_tech_crafting_table\",\"color\":\"blue\",\"italic\":false}",Lore:["{\"text\":\"(+NBT)\",\"color\":\"dark_purple\"}"]},CustomModelData:10100,placer:1,HTct:1,EntityTag:{CustomNameVisible:0b,NoGravity:1b,Invulnerable:1b,Small:1b,Marker:1b,Invisible:1b,Tags:["hi-tech_crafting_table_placer","content_data"],DisabledSlots:4144959,HandItems:[{id:"minecraft:wooden_sword",Count:1b,tag:{CustomModelData:100}},{}]}}}}
execute as @e[tag=hi-tech_crafting_table_item,tag=function_data_storage] at @s store result entity @s Item.tag.EntityTag.HandItems[0].tag.guiMode int 1 run scoreboard players get @e[tag=hi-tech_crafting_table,tag=function_destroy,sort=nearest,limit=1] guiMode
execute as @e[tag=hi-tech_crafting_table_item,tag=function_data_storage] at @s store result entity @s Item.tag.EntityTag.HandItems[0].tag.htctListPage int 1 run scoreboard players get @e[tag=hi-tech_crafting_table,tag=function_destroy,sort=nearest,limit=1] htctListPage
execute as @e[tag=hi-tech_crafting_table_item,tag=function_data_storage] at @s store result entity @s Item.tag.EntityTag.HandItems[0].tag.htctCategory int 1 run scoreboard players get @e[tag=hi-tech_crafting_table,tag=function_destroy,sort=nearest,limit=1] htctCategory
execute as @e[tag=hi-tech_crafting_table_item,tag=function_data_storage] at @s store result entity @s Item.tag.EntityTag.HandItems[0].tag.reqRcpHTct int 1 run scoreboard players get @e[tag=hi-tech_crafting_table,tag=function_destroy,sort=nearest,limit=1] reqRcpHTct
execute as @e[tag=hi-tech_crafting_table_item,tag=function_data_storage] run tag @s remove function_data_storage
execute as @e[tag=hi-tech_crafting_table,tag=function_destroy] run kill @s

# relplace the block when GUI contains non-guiItem
execute as @e[tag=hi-tech_crafting_table] at @s positioned as @s store result score @s countItems run execute if data block ~ ~ ~ Items[]
execute as @e[tag=hi-tech_crafting_table] at @s positioned as @s store result score @s countTags run execute if data block ~ ~ ~ Items[].tag.guiItem
execute as @e[tag=hi-tech_crafting_table] if score @s countItems > @s countTags run tag @s[tag=hi-tech_crafting_table] add function_replace
execute as @e[tag=hi-tech_crafting_table,tag=function_replace] at @s positioned as @s run function galaxy:gui/delete-gui_item
execute as @e[tag=hi-tech_crafting_table,tag=function_replace] at @s positioned as @s run setblock ~ ~ ~ minecraft:air destroy
execute as @e[tag=hi-tech_crafting_table,tag=function_replace] run kill @e[type=minecraft:item,nbt={Item:{tag:{display:{Name:"{\"translate\":\"container.hi_tech_crafting\"}"}}}}]
execute as @e[tag=hi-tech_crafting_table,tag=function_replace] at @s positioned as @s run setblock ~ ~ ~ minecraft:barrel{CustomName:"{\"translate\":\"container.hi_tech_crafting\"}"} replace
execute as @e[tag=hi-tech_crafting_table,tag=function_replace] run scoreboard players set @s setGui 1
execute as @e[tag=hi-tech_crafting_table,tag=function_replace] run tag @s remove function_replace

# gui function
execute as @e[tag=hi-tech_crafting_table] at @s positioned as @s run function galaxy:gui/hi-tech_crafting_table
