# category change
execute if score @s guiMode matches 0 unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:0b}]} run scoreboard players remove @s htctCategory 1
execute if score @s guiMode matches 0 unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:1b}]} run scoreboard players remove @s htctCategory 1
execute if score @s guiMode matches 0 unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:18b}]} run scoreboard players add @s htctCategory 1
execute if score @s guiMode matches 0 unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:19b}]} run scoreboard players add @s htctCategory 1

execute if score @s guiMode matches 0 unless score @s htctCategory = @s htctCategoryTemp run scoreboard players set @s setHTctCategory 1

execute if score @s guiMode matches 0 if score @s setHTctCategory matches 1 if score @s htctCategory > @s htctCatgMax run scoreboard players set @s htctCategory 1
execute if score @s guiMode matches 0 if score @s setHTctCategory matches 1 if score @s htctCategory matches ..0 store result score @s htctCategory run scoreboard players get @s htctCatgMax

execute if score @s guiMode matches 0 if score @s setHTctCategory matches 1 run function galaxy:recipe/hi-tech_crafting_table/delete-item_list

# execute if score @s guiMode matches 0 if score @s setHTctCategory matches 1 if score @s htctCategory matches 0 run replaceitem block ~ ~ ~ container.1 golden_hoe{display:{Name:'{"translate":"gui.htct.weapon","italic":false}'},HideFlags:63,CustomModelData:30104,guiItem:1}
# execute if score @s guiMode matches 0 if score @s setHTctCategory matches 1 if score @s htctCategory matches 0 run replaceitem block ~ ~ ~ container.10 golden_hoe{display:{Name:'{"translate":"gui.htct.all","italic":false}'},HideFlags:63,CustomModelData:30100,guiItem:1}
# execute if score @s guiMode matches 0 if score @s setHTctCategory matches 1 if score @s htctCategory matches 0 run replaceitem block ~ ~ ~ container.19 golden_hoe{display:{Name:'{"translate":"gui.htct.material","italic":false}'},HideFlags:63,CustomModelData:30101,guiItem:1}

# execute if score @s guiMode matches 0 if score @s setHTctCategory matches 1 if score @s htctCategory matches 1 run replaceitem block ~ ~ ~ container.1 golden_hoe{display:{Name:'{"translate":"gui.htct.all","italic":false}'},HideFlags:63,CustomModelData:30100,guiItem:1}
execute if score @s guiMode matches 0 if score @s setHTctCategory matches 1 if score @s htctCategory matches 1 run replaceitem block ~ ~ ~ container.1 golden_hoe{display:{Name:'{"translate":"gui.htct.weapon","italic":false}'},HideFlags:63,CustomModelData:30104,guiItem:1}
execute if score @s guiMode matches 0 if score @s setHTctCategory matches 1 if score @s htctCategory matches 1 run replaceitem block ~ ~ ~ container.10 golden_hoe{display:{Name:'{"translate":"gui.htct.material","italic":false}'},HideFlags:63,CustomModelData:30101,guiItem:1}
execute if score @s guiMode matches 0 if score @s setHTctCategory matches 1 if score @s htctCategory matches 1 run replaceitem block ~ ~ ~ container.19 golden_hoe{display:{Name:'{"translate":"gui.htct.machine","italic":false}'},HideFlags:63,CustomModelData:30102,guiItem:1}

execute if score @s guiMode matches 0 if score @s setHTctCategory matches 1 if score @s htctCategory matches 2 run replaceitem block ~ ~ ~ container.1 golden_hoe{display:{Name:'{"translate":"gui.htct.material","italic":false}'},HideFlags:63,CustomModelData:30101,guiItem:1}
execute if score @s guiMode matches 0 if score @s setHTctCategory matches 1 if score @s htctCategory matches 2 run replaceitem block ~ ~ ~ container.10 golden_hoe{display:{Name:'{"translate":"gui.htct.machine","italic":false}'},HideFlags:63,CustomModelData:30102,guiItem:1}
execute if score @s guiMode matches 0 if score @s setHTctCategory matches 1 if score @s htctCategory matches 2 run replaceitem block ~ ~ ~ container.19 golden_hoe{display:{Name:'{"translate":"gui.htct.functional_block","italic":false}'},HideFlags:63,CustomModelData:30103,guiItem:1}

execute if score @s guiMode matches 0 if score @s setHTctCategory matches 1 if score @s htctCategory matches 3 run replaceitem block ~ ~ ~ container.1 golden_hoe{display:{Name:'{"translate":"gui.htct.machine","italic":false}'},HideFlags:63,CustomModelData:30102,guiItem:1}
execute if score @s guiMode matches 0 if score @s setHTctCategory matches 1 if score @s htctCategory matches 3 run replaceitem block ~ ~ ~ container.10 golden_hoe{display:{Name:'{"translate":"gui.htct.functional_block","italic":false}'},HideFlags:63,CustomModelData:30103,guiItem:1}
execute if score @s guiMode matches 0 if score @s setHTctCategory matches 1 if score @s htctCategory matches 3 run replaceitem block ~ ~ ~ container.19 golden_hoe{display:{Name:'{"translate":"gui.htct.weapon","italic":false}'},HideFlags:63,CustomModelData:30104,guiItem:1}

execute if score @s guiMode matches 0 if score @s setHTctCategory matches 1 if score @s htctCategory matches 4 run replaceitem block ~ ~ ~ container.1 golden_hoe{display:{Name:'{"translate":"gui.htct.functional_block","italic":false}'},HideFlags:63,CustomModelData:30103,guiItem:1}
execute if score @s guiMode matches 0 if score @s setHTctCategory matches 1 if score @s htctCategory matches 4 run replaceitem block ~ ~ ~ container.10 golden_hoe{display:{Name:'{"translate":"gui.htct.weapon","italic":false}'},HideFlags:63,CustomModelData:30104,guiItem:1}
execute if score @s guiMode matches 0 if score @s setHTctCategory matches 1 if score @s htctCategory matches 4 run replaceitem block ~ ~ ~ container.19 golden_hoe{display:{Name:'{"translate":"gui.htct.material","italic":false}'},HideFlags:63,CustomModelData:30101,guiItem:1}
# execute if score @s guiMode matches 0 if score @s setHTctCategory matches 1 if score @s htctCategory matches 4 run replaceitem block ~ ~ ~ container.19 golden_hoe{display:{Name:'{"translate":"gui.htct.all","italic":false}'},CustomModelData:30100,guiItem:1}

execute if score @s guiMode matches 0 if score @s setHTctCategory matches 1 run scoreboard players set @s guiPage 1
execute if score @s guiMode matches 0 if score @s setHTctCategory matches 1 run scoreboard players set @s setGuiPage 1

execute if score @s guiMode matches 0 if score @s setHTctCategory matches 1 run replaceitem block ~ ~ ~ container.0 minecraft:gray_stained_glass_pane{display:{Name:'{"translate":"gui.htct.previous_category","italic":false}'},CustomModelData:10200,guiItem:1}
execute if score @s guiMode matches 0 if score @s setHTctCategory matches 1 run replaceitem block ~ ~ ~ container.18 minecraft:gray_stained_glass_pane{display:{Name:'{"translate":"gui.htct.next_category","italic":false}'},CustomModelData:10201,guiItem:1}

execute if score @s guiMode matches 0 if score @s setHTctCategory matches 1 run scoreboard players operation @s htctCategoryTemp = @s htctCategory

execute if score @s guiMode matches 0 if score @s setHTctCategory matches 1 run scoreboard players set @s setHTctCategory 0


# page change
execute if score @s guiMode matches 0 unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:2b}]} run scoreboard players remove @s guiPage 1
execute if score @s guiMode matches 0 unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:20b}]} run scoreboard players add @s guiPage 1

execute if score @s guiMode matches 0 unless score @s guiPage = @s guiPageTemp run scoreboard players set @s setGuiPage 1

execute if score @s guiMode matches 0 if score @s setGuiPage matches 1 if score @s guiPage > @s guiPageMax run scoreboard players set @s guiPage 1
execute if score @s guiMode matches 0 if score @s setGuiPage matches 1 if score @s guiPage matches ..0 store result score @s guiPage run scoreboard players get @s guiPageMax

execute if score @s guiMode matches 0 if score @s setGuiPage matches 1 run scoreboard players set @s canPagePrev 0
execute if score @s guiMode matches 0 if score @s setGuiPage matches 1 run scoreboard players set @s canPageNext 0

execute if score @s guiMode matches 0 if score @s setGuiPage matches 1 run function galaxy:recipe/hi-tech_crafting_table/delete-item_list

execute if score @s guiMode matches 0 if score @s guiPage matches 1 if score @s setGuiPage matches 1 run replaceitem block ~ ~ ~ container.2 minecraft:gray_stained_glass_pane{display:{Name:'{"translate":"gui.previous_page","italic":false,"color":"dark_gray"}'},CustomModelData:10300,guiItem:1}
execute if score @s guiMode matches 0 if score @s guiPage matches 1 if score @s setGuiPage matches 1 run replaceitem block ~ ~ ~ container.20 minecraft:gray_stained_glass_pane{display:{Name:'{"translate":"gui.next_page","italic":false,"color":"dark_gray"}'},CustomModelData:10301,guiItem:1}
execute if score @s guiMode matches 0 if score @s guiPage matches 1 if score @s setGuiPage matches 1 if score @s guiPageMax matches 2.. run replaceitem block ~ ~ ~ container.2 minecraft:gray_stained_glass_pane{display:{Name:'{"translate":"gui.previous_page","italic":false}'},CustomModelData:10200,guiItem:1}
execute if score @s guiMode matches 0 if score @s guiPage matches 1 if score @s setGuiPage matches 1 if score @s guiPageMax matches 2.. run replaceitem block ~ ~ ~ container.20 minecraft:gray_stained_glass_pane{display:{Name:'{"translate":"gui.next_page","italic":false}'},CustomModelData:10201,guiItem:1}

execute if score @s guiMode matches 0 if score @s guiPage matches 2 if score @s setGuiPage matches 1 run replaceitem block ~ ~ ~ container.2 minecraft:gray_stained_glass_pane{display:{Name:'{"translate":"gui.previous_page","italic":false}'},CustomModelData:10200,guiItem:1}
execute if score @s guiMode matches 0 if score @s guiPage matches 2 if score @s setGuiPage matches 1 run replaceitem block ~ ~ ~ container.20 minecraft:gray_stained_glass_pane{display:{Name:'{"translate":"gui.next_page","italic":false}'},CustomModelData:10200,guiItem:1}
execute if score @s guiMode matches 0 if score @s guiPage matches 2 if score @s setGuiPage matches 1 if score @s guiPageMax matches 3.. run replaceitem block ~ ~ ~ container.20 minecraft:gray_stained_glass_pane{display:{Name:'{"translate":"gui.next_page","italic":false}'},CustomModelData:10201,guiItem:1}

execute if score @s guiMode matches 0 if score @s setGuiPage matches 1 if score @s guiPageMax matches 2.. run scoreboard players set @s canPagePrev 1
execute if score @s guiMode matches 0 if score @s setGuiPage matches 1 if score @s guiPageMax matches 2.. run scoreboard players set @s canPageNext 1

execute if score @s guiMode matches 0 if score @s setGuiPage matches 1 run function galaxy:recipe/hi-tech_crafting_table/build-item_list

execute if score @s guiMode matches 0 if score @s setGuiPage matches 1 run scoreboard players operation @s guiPageTemp = @s guiPage

execute if score @s guiMode matches 0 if score @s setGuiPage matches 1 run scoreboard players set @s setGuiPage 0


# guiCovers
replaceitem block ~ ~ ~ container.9 minecraft:white_stained_glass_pane{display:{Name:'{"translate":"gui.blank","italic":false}'},CustomModelData:20100,guiItem:1}
replaceitem block ~ ~ ~ container.11 minecraft:white_stained_glass_pane{display:{Name:'{"translate":"gui.blank","italic":false}'},CustomModelData:20101,guiItem:1}


# relplace the block when GUI contains non-guiItem
execute unless block ~ ~ ~ minecraft:barrel{Items:[{tag:{guiItem:1}}]} run tag @s[tag=hi-tech_crafting_table] add function_replace
execute if entity @s[tag=hi-tech_crafting_table,tag=function_replace] run setblock ~ ~ ~ minecraft:air destroy
kill @e[type=minecraft:item,nbt={Item:{tag:{display:{Name:'{"translate":"block.galaxy.hi_tech_crafting_table"}'}}}}]
kill @e[type=minecraft:item,tag=guiItem]
execute as @e[tag=hi-tech_crafting_table,tag=function_replace] at @s run setblock ~ ~ ~ minecraft:barrel{CustomName:'{"translate":"block.galaxy.hi_tech_crafting_table"}'} replace
tag @e[tag=hi-tech_crafting_table,tag=function_replace] remove function_replace


# make sure the player never get guiItem
clear @a #galaxy:gui_item{guiItem:1}
kill @e[type=minecraft:item,nbt={Item:{tag:{guiItem:1}}}]
