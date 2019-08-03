# update gui on mode switch
execute if score @s setGui matches 1 run function galaxy:gui/delete-all_slots

execute if score @s setGui matches 1 run scoreboard players set @s setGuiCover 1

execute if score @s setGui matches 1 if score @s guiMode matches 0 run scoreboard players set @s setHTctCategory 1
execute if score @s setGui matches 1 if score @s guiMode matches 0 run scoreboard players set @s setHTctListPage 1

execute if score @s setGui matches 1 if score @s guiMode matches 1 run scoreboard players set @s setButtBack1 2
execute if score @s setGui matches 1 if score @s guiMode matches 1 run scoreboard players set @s setButtConfirm 2
execute if score @s setGui matches 1 if score @s guiMode matches 1 run scoreboard players set @s setHTctResult 1
execute if score @s setGui matches 1 if score @s guiMode matches 1 run scoreboard players set @s setHTctRequPage 1

execute if score @s setGui matches 1 run scoreboard players set @s setGui 0



# relplace the block when GUI contains non-guiItem
execute store result score @s countItems run execute if data block ~ ~ ~ Items[]
execute unless data block ~ ~ ~ Items[] run scoreboard players set @s countItems 0
execute store result score @s countTags run execute if data block ~ ~ ~ Items[].tag.guiItem
execute unless data block ~ ~ ~ Items[].tag.guiItem run scoreboard players set @s countTags 0
execute if score @s countItems > @s countTags run tag @s[tag=hi-tech_crafting_table] add function_replace
execute if entity @s[tag=hi-tech_crafting_table,tag=function_replace] run function galaxy:gui/delete-gui_item
execute if entity @s[tag=hi-tech_crafting_table,tag=function_replace] run setblock ~ ~ ~ minecraft:air destroy
kill @e[type=minecraft:item,nbt={Item:{tag:{display:{Name:"{\"translate\":\"container.hi_tech_crafting\"}"}}}}]
execute as @e[tag=hi-tech_crafting_table,tag=function_replace] at @s run setblock ~ ~ ~ minecraft:barrel{CustomName:"{\"translate\":\"container.hi_tech_crafting\"}"} replace
scoreboard players set @e[tag=hi-tech_crafting_table,tag=function_replace] setGui 1
tag @s[tag=hi-tech_crafting_table,tag=function_replace] remove function_replace



# mode 0 guiCovers
execute if score @s guiMode matches 0 unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:9b}]} run scoreboard players set @s setGuiCover 1
execute if score @s guiMode matches 0 unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:11b}]} run scoreboard players set @s setGuiCover 1

execute if score @s guiMode matches 0 if score @s setGuiCover matches 1 run function galaxy:gui/delete-gui_item

execute if score @s guiMode matches 0 if score @s setGuiCover matches 1 run replaceitem block ~ ~ ~ container.9 minecraft:white_stained_glass_pane{display:{Name:"{\"translate\":\"gui.blank\",\"italic\":false}"},CustomModelData:20201,guiItem:1}
execute if score @s guiMode matches 0 if score @s setGuiCover matches 1 run replaceitem block ~ ~ ~ container.11 minecraft:white_stained_glass_pane{display:{Name:"{\"translate\":\"gui.blank\",\"italic\":false}"},CustomModelData:20301,guiItem:1}

execute if score @s guiMode matches 0 if score @s setGuiCover matches 1 run scoreboard players set @s setGuiCover 0


# mode 0 category selection area build
execute if score @s guiMode matches 0 unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:0b}]} run scoreboard players remove @s htctCategory 1
execute if score @s guiMode matches 0 unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:1b}]} run scoreboard players remove @s htctCategory 1
execute if score @s guiMode matches 0 unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:18b}]} run scoreboard players add @s htctCategory 1
execute if score @s guiMode matches 0 unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:19b}]} run scoreboard players add @s htctCategory 1
execute if score @s guiMode matches 0 unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:10b}]} run scoreboard players set @s setHTctCategory 1

execute if score @s guiMode matches 0 unless score @s htctCategory = @s htctCategoryTemp run scoreboard players set @s setHTctCategory 1

execute if score @s guiMode matches 0 if score @s setHTctCategory matches 1 if score @s htctCategory > #global htctCatgMax run scoreboard players set @s htctCategory 1
execute if score @s guiMode matches 0 if score @s setHTctCategory matches 1 if score @s htctCategory matches ..0 store result score @s htctCategory run scoreboard players get #global htctCatgMax

execute if score @s guiMode matches 0 if score @s setHTctCategory matches 1 run function galaxy:gui/delete-gui_item

execute if score @s guiMode matches 0 if score @s setHTctCategory matches 1 run function galaxy:recipe/hi-tech_crafting_table/delete-item_list

## execute if score @s guiMode matches 0 if score @s setHTctCategory matches 1 if score @s htctCategory matches 0 run replaceitem block ~ ~ ~ container.1 golden_hoe{display:{Name:"{\"translate\":\"gui.htct.weapon\",\"italic\":false}"},HideFlags:63,CustomModelData:30104,guiItem:1}
## execute if score @s guiMode matches 0 if score @s setHTctCategory matches 1 if score @s htctCategory matches 0 run replaceitem block ~ ~ ~ container.10 golden_hoe{display:{Name:"{\"translate\":\"gui.htct.all\",\"italic\":false}"},HideFlags:63,CustomModelData:30100,guiItem:1}
## execute if score @s guiMode matches 0 if score @s setHTctCategory matches 1 if score @s htctCategory matches 0 run replaceitem block ~ ~ ~ container.19 golden_hoe{display:{Name:"{\"translate\":\"gui.htct.material\",\"italic\":false}"},HideFlags:63,CustomModelData:30101,guiItem:1}

## execute if score @s guiMode matches 0 if score @s setHTctCategory matches 1 if score @s htctCategory matches 1 run replaceitem block ~ ~ ~ container.1 golden_hoe{display:{Name:"{\"translate\":\"gui.htct.all\",\"italic\":false}"},HideFlags:63,CustomModelData:30100,guiItem:1}
execute if score @s guiMode matches 0 if score @s setHTctCategory matches 1 if score @s htctCategory matches 1 run replaceitem block ~ ~ ~ container.1 golden_hoe{display:{Name:"{\"translate\":\"gui.htct.weapon\",\"italic\":false}"},HideFlags:63,CustomModelData:30104,guiItem:1}
execute if score @s guiMode matches 0 if score @s setHTctCategory matches 1 if score @s htctCategory matches 1 run replaceitem block ~ ~ ~ container.10 golden_hoe{display:{Name:"{\"translate\":\"gui.htct.material\",\"italic\":false}"},HideFlags:63,CustomModelData:30101,guiItem:1}
execute if score @s guiMode matches 0 if score @s setHTctCategory matches 1 if score @s htctCategory matches 1 run replaceitem block ~ ~ ~ container.19 golden_hoe{display:{Name:"{\"translate\":\"gui.htct.machine\",\"italic\":false}"},HideFlags:63,CustomModelData:30102,guiItem:1}

execute if score @s guiMode matches 0 if score @s setHTctCategory matches 1 if score @s htctCategory matches 2 run replaceitem block ~ ~ ~ container.1 golden_hoe{display:{Name:"{\"translate\":\"gui.htct.material\",\"italic\":false}"},HideFlags:63,CustomModelData:30101,guiItem:1}
execute if score @s guiMode matches 0 if score @s setHTctCategory matches 1 if score @s htctCategory matches 2 run replaceitem block ~ ~ ~ container.10 golden_hoe{display:{Name:"{\"translate\":\"gui.htct.machine\",\"italic\":false}"},HideFlags:63,CustomModelData:30102,guiItem:1}
execute if score @s guiMode matches 0 if score @s setHTctCategory matches 1 if score @s htctCategory matches 2 run replaceitem block ~ ~ ~ container.19 golden_hoe{display:{Name:"{\"translate\":\"gui.htct.functional_block\",\"italic\":false}"},HideFlags:63,CustomModelData:30103,guiItem:1}

execute if score @s guiMode matches 0 if score @s setHTctCategory matches 1 if score @s htctCategory matches 3 run replaceitem block ~ ~ ~ container.1 golden_hoe{display:{Name:"{\"translate\":\"gui.htct.machine\",\"italic\":false}"},HideFlags:63,CustomModelData:30102,guiItem:1}
execute if score @s guiMode matches 0 if score @s setHTctCategory matches 1 if score @s htctCategory matches 3 run replaceitem block ~ ~ ~ container.10 golden_hoe{display:{Name:"{\"translate\":\"gui.htct.functional_block\",\"italic\":false}"},HideFlags:63,CustomModelData:30103,guiItem:1}
execute if score @s guiMode matches 0 if score @s setHTctCategory matches 1 if score @s htctCategory matches 3 run replaceitem block ~ ~ ~ container.19 golden_hoe{display:{Name:"{\"translate\":\"gui.htct.weapon\",\"italic\":false}"},HideFlags:63,CustomModelData:30104,guiItem:1}

execute if score @s guiMode matches 0 if score @s setHTctCategory matches 1 if score @s htctCategory matches 4 run replaceitem block ~ ~ ~ container.1 golden_hoe{display:{Name:"{\"translate\":\"gui.htct.functional_block\",\"italic\":false}"},HideFlags:63,CustomModelData:30103,guiItem:1}
execute if score @s guiMode matches 0 if score @s setHTctCategory matches 1 if score @s htctCategory matches 4 run replaceitem block ~ ~ ~ container.10 golden_hoe{display:{Name:"{\"translate\":\"gui.htct.weapon\",\"italic\":false}"},HideFlags:63,CustomModelData:30104,guiItem:1}
execute if score @s guiMode matches 0 if score @s setHTctCategory matches 1 if score @s htctCategory matches 4 run replaceitem block ~ ~ ~ container.19 golden_hoe{display:{Name:"{\"translate\":\"gui.htct.material\",\"italic\":false}"},HideFlags:63,CustomModelData:30101,guiItem:1}
## execute if score @s guiMode matches 0 if score @s setHTctCategory matches 1 if score @s htctCategory matches 4 run replaceitem block ~ ~ ~ container.19 golden_hoe{display:{Name:"{\"translate\":\"gui.htct.all\",\"italic\":false}"},CustomModelData:30100,guiItem:1}

execute if score @s guiMode matches 0 if score @s setHTctCategory matches 1 run scoreboard players set @s htctListPage 1
execute if score @s guiMode matches 0 if score @s setHTctCategory matches 1 run scoreboard players set @s setHTctListPage 1

execute if score @s guiMode matches 0 if score @s setHTctCategory matches 1 run replaceitem block ~ ~ ~ container.0 minecraft:gray_stained_glass_pane{display:{Name:"{\"translate\":\"gui.htct.previous_category\",\"italic\":false}"},CustomModelData:10200,guiItem:1}
execute if score @s guiMode matches 0 if score @s setHTctCategory matches 1 run replaceitem block ~ ~ ~ container.18 minecraft:gray_stained_glass_pane{display:{Name:"{\"translate\":\"gui.htct.next_category\",\"italic\":false}"},CustomModelData:10201,guiItem:1}

execute if score @s guiMode matches 0 if score @s setHTctCategory matches 1 run scoreboard players operation @s htctCategoryTemp = @s htctCategory

execute if score @s setHTctCategory matches 1 run scoreboard players set @s setHTctCategory 0


# mode 0 recipe and page area build
execute if score @s guiMode matches 0 unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:2b}]} run scoreboard players remove @s htctListPage 1
execute if score @s guiMode matches 0 unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:20b}]} run scoreboard players add @s htctListPage 1

execute if score @s guiMode matches 0 unless score @s htctListPage = @s htctListPageTemp run scoreboard players set @s setHTctListPage 1

execute if score @s guiMode matches 0 if score @s setHTctListPage matches 1 if score @s htctListPage > @s htctListPageMax run scoreboard players set @s htctListPage 1
execute if score @s guiMode matches 0 if score @s setHTctListPage matches 1 if score @s htctListPage matches ..0 store result score @s htctListPage run scoreboard players get @s htctListPageMax

execute if score @s guiMode matches 0 if score @s setHTctListPage matches 1 run function galaxy:gui/delete-gui_item

execute if score @s guiMode matches 0 if score @s setHTctListPage matches 1 run function galaxy:recipe/hi-tech_crafting_table/delete-item_list

execute if score @s guiMode matches 0 if score @s htctListPage matches 1 if score @s setHTctListPage matches 1 run replaceitem block ~ ~ ~ container.2 minecraft:gray_stained_glass_pane{display:{Name:"{\"translate\":\"gui.previous_page\",\"italic\":false,\"color\":\"dark_gray\"}"},CustomModelData:20200,guiItem:1}
execute if score @s guiMode matches 0 if score @s htctListPage matches 1 if score @s setHTctListPage matches 1 run replaceitem block ~ ~ ~ container.20 minecraft:gray_stained_glass_pane{display:{Name:"{\"translate\":\"gui.next_page\",\"italic\":false,\"color\":\"dark_gray\"}"},CustomModelData:20201,guiItem:1}
execute if score @s guiMode matches 0 if score @s htctListPage matches 1 if score @s setHTctListPage matches 1 if score @s htctListPageMax matches 2.. run replaceitem block ~ ~ ~ container.2 minecraft:gray_stained_glass_pane{display:{Name:"{\"translate\":\"gui.previous_page\",\"italic\":false}"},CustomModelData:10200,guiItem:1}
execute if score @s guiMode matches 0 if score @s htctListPage matches 1 if score @s setHTctListPage matches 1 if score @s htctListPageMax matches 2.. run replaceitem block ~ ~ ~ container.20 minecraft:gray_stained_glass_pane{display:{Name:"{\"translate\":\"gui.next_page\",\"italic\":false}"},CustomModelData:10201,guiItem:1}

execute if score @s guiMode matches 0 if score @s htctListPage matches 2 if score @s setHTctListPage matches 1 run replaceitem block ~ ~ ~ container.2 minecraft:gray_stained_glass_pane{display:{Name:"{\"translate\":\"gui.previous_page\",\"italic\":false}"},CustomModelData:10200,guiItem:1}
execute if score @s guiMode matches 0 if score @s htctListPage matches 2 if score @s setHTctListPage matches 1 run replaceitem block ~ ~ ~ container.20 minecraft:gray_stained_glass_pane{display:{Name:"{\"translate\":\"gui.next_page\",\"italic\":false}"},CustomModelData:10200,guiItem:1}
execute if score @s guiMode matches 0 if score @s htctListPage matches 2 if score @s setHTctListPage matches 1 if score @s htctListPageMax matches 3.. run replaceitem block ~ ~ ~ container.20 minecraft:gray_stained_glass_pane{display:{Name:"{\"translate\":\"gui.next_page\",\"italic\":false}"},CustomModelData:10201,guiItem:1}

execute if score @s guiMode matches 0 if score @s setHTctListPage matches 1 run function galaxy:recipe/hi-tech_crafting_table/build-item_list

execute if score @s guiMode matches 0 if score @s setHTctListPage matches 1 run scoreboard players operation @s htctListPageTemp = @s htctListPage

execute if score @s setHTctListPage matches 1 run scoreboard players set @s setHTctListPage 0


# mode 0 guiMode switch
execute if score @s guiMode matches 0 run function galaxy:recipe/hi-tech_crafting_table/click-item_list



# mode 1 guiCovers
execute if score @s guiMode matches 1 unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:0b}]} run scoreboard players set @s setGuiCover 1
execute if score @s guiMode matches 1 unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:1b}]} run scoreboard players set @s setGuiCover 1
execute if score @s guiMode matches 1 unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:2b}]} run scoreboard players set @s setGuiCover 1
execute if score @s guiMode matches 1 unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:3b}]} run scoreboard players set @s setGuiCover 1
execute if score @s guiMode matches 1 unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:4b}]} run scoreboard players set @s setGuiCover 1
execute if score @s guiMode matches 1 unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:8b}]} run scoreboard players set @s setGuiCover 1
execute if score @s guiMode matches 1 unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:9b}]} run scoreboard players set @s setGuiCover 1
execute if score @s guiMode matches 1 unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:11b}]} run scoreboard players set @s setGuiCover 1
execute if score @s guiMode matches 1 unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:13b}]} run scoreboard players set @s setGuiCover 1
execute if score @s guiMode matches 1 unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:14b}]} run scoreboard players set @s setGuiCover 1
execute if score @s guiMode matches 1 unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:17b}]} run scoreboard players set @s setGuiCover 1
execute if score @s guiMode matches 1 unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:18b}]} run scoreboard players set @s setGuiCover 1
execute if score @s guiMode matches 1 unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:19b}]} run scoreboard players set @s setGuiCover 1
execute if score @s guiMode matches 1 unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:20b}]} run scoreboard players set @s setGuiCover 1
execute if score @s guiMode matches 1 unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:21b}]} run scoreboard players set @s setGuiCover 1
execute if score @s guiMode matches 1 unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:22b}]} run scoreboard players set @s setGuiCover 1

execute if score @s guiMode matches 1 if score @s setGuiCover matches 1 run function galaxy:gui/delete-gui_item

execute if score @s guiMode matches 1 if score @s setGuiCover matches 1 run replaceitem block ~ ~ ~ container.0 minecraft:white_stained_glass_pane{display:{Name:"{\"translate\":\"gui.blank\",\"italic\":false}"},CustomModelData:10201,guiItem:1}
execute if score @s guiMode matches 1 if score @s setGuiCover matches 1 run replaceitem block ~ ~ ~ container.1 minecraft:white_stained_glass_pane{display:{Name:"{\"translate\":\"gui.blank\",\"italic\":false}"},CustomModelData:10202,guiItem:1}
execute if score @s guiMode matches 1 if score @s setGuiCover matches 1 run replaceitem block ~ ~ ~ container.2 minecraft:white_stained_glass_pane{display:{Name:"{\"translate\":\"gui.blank\",\"italic\":false}"},CustomModelData:10202,guiItem:1}
execute if score @s guiMode matches 1 if score @s setGuiCover matches 1 run replaceitem block ~ ~ ~ container.3 minecraft:white_stained_glass_pane{display:{Name:"{\"translate\":\"gui.blank\",\"italic\":false}"},CustomModelData:10202,guiItem:1}
execute if score @s guiMode matches 1 if score @s setGuiCover matches 1 run replaceitem block ~ ~ ~ container.4 minecraft:white_stained_glass_pane{display:{Name:"{\"translate\":\"gui.blank\",\"italic\":false}"},CustomModelData:10203,guiItem:1}
execute if score @s guiMode matches 1 if score @s setGuiCover matches 1 run replaceitem block ~ ~ ~ container.8 minecraft:white_stained_glass_pane{display:{Name:"{\"translate\":\"gui.blank\",\"italic\":false}"},CustomModelData:100,guiItem:1}
execute if score @s guiMode matches 1 if score @s setGuiCover matches 1 run replaceitem block ~ ~ ~ container.9 minecraft:white_stained_glass_pane{display:{Name:"{\"translate\":\"gui.blank\",\"italic\":false}"},CustomModelData:10208,guiItem:1}
execute if score @s guiMode matches 1 if score @s setGuiCover matches 1 run replaceitem block ~ ~ ~ container.11 minecraft:white_stained_glass_pane{display:{Name:"{\"translate\":\"gui.blank\",\"italic\":false}"},CustomModelData:20104,guiItem:1}
execute if score @s guiMode matches 1 if score @s setGuiCover matches 1 run replaceitem block ~ ~ ~ container.13 minecraft:white_stained_glass_pane{display:{Name:"{\"translate\":\"gui.blank\",\"italic\":false}"},CustomModelData:10204,guiItem:1}
execute if score @s guiMode matches 1 if score @s setGuiCover matches 1 run replaceitem block ~ ~ ~ container.14 minecraft:white_stained_glass_pane{display:{Name:"{\"translate\":\"gui.blank\",\"italic\":false}"},CustomModelData:20100,guiItem:1}
execute if score @s guiMode matches 1 if score @s setGuiCover matches 1 run replaceitem block ~ ~ ~ container.17 minecraft:white_stained_glass_pane{display:{Name:"{\"translate\":\"gui.blank\",\"italic\":false}"},CustomModelData:20105,guiItem:1}
execute if score @s guiMode matches 1 if score @s setGuiCover matches 1 run replaceitem block ~ ~ ~ container.18 minecraft:white_stained_glass_pane{display:{Name:"{\"translate\":\"gui.blank\",\"italic\":false}"},CustomModelData:10207,guiItem:1}
execute if score @s guiMode matches 1 if score @s setGuiCover matches 1 run replaceitem block ~ ~ ~ container.19 minecraft:white_stained_glass_pane{display:{Name:"{\"translate\":\"gui.blank\",\"italic\":false}"},CustomModelData:10206,guiItem:1}
execute if score @s guiMode matches 1 if score @s setGuiCover matches 1 run replaceitem block ~ ~ ~ container.20 minecraft:white_stained_glass_pane{display:{Name:"{\"translate\":\"gui.blank\",\"italic\":false}"},CustomModelData:10206,guiItem:1}
execute if score @s guiMode matches 1 if score @s setGuiCover matches 1 run replaceitem block ~ ~ ~ container.21 minecraft:white_stained_glass_pane{display:{Name:"{\"translate\":\"gui.blank\",\"italic\":false}"},CustomModelData:10206,guiItem:1}
execute if score @s guiMode matches 1 if score @s setGuiCover matches 1 run replaceitem block ~ ~ ~ container.22 minecraft:white_stained_glass_pane{display:{Name:"{\"translate\":\"gui.blank\",\"italic\":false}"},CustomModelData:10205,guiItem:1}

execute if score @s setGuiCover matches 1 run scoreboard players set @s setGuiCover 0


# mode 1 button guiMode switch
execute if score @s guiMode matches 1 if score @s setButtBack1 matches 2 run replaceitem block ~ ~ ~ container.26 minecraft:golden_hoe{display:{Name:"{\"translate\":\"gui.htct.returnToList\",\"italic\":false}"},HideFlags:63,CustomModelData:10106,guiItem:1}
execute if score @s guiMode matches 1 if score @s setButtBack1 matches 2 run scoreboard players set @s setButtBack1 -1

execute if score @s guiMode matches 1 if score @s setButtBack1 matches -1 unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:26b}]} run scoreboard players set @s setButtBack1 1
execute if score @s guiMode matches 1 if score @s setButtBack1 matches 1 run function galaxy:gui/delete-gui_item
execute if score @s guiMode matches 1 if score @s setButtBack1 matches 1 run scoreboard players set @s setGui 1
execute if score @s guiMode matches 1 if score @s setButtBack1 matches 1 run scoreboard players set @s guiMode 0
execute if score @s setButtBack1 matches 1 run scoreboard players set @s setButtBack1 0


# mode 1 button craft confirm
execute if score @s guiMode matches 1 if score @s setButtConfirm matches 0 unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:12b}]} run scoreboard players set @s setButtConfirm 1

execute if score @s guiMode matches 1 if score @s setButtConfirm matches 1..2 run replaceitem block ~ ~ ~ container.12 minecraft:gray_stained_glass_pane{display:{Name:"{\"translate\":\"gui.htct.craftConfirm\",\"italic\":false}"},CustomModelData:10300,guiItem:1,htctCraft:1}

execute if score @s guiMode matches 1 if score @s setButtConfirm matches 1 run execute as @a store success score @s reqHTctCraft run clear @s minecraft:gray_stained_glass_pane{htctCraft:1} 0
execute if score @s guiMode matches 1 if score @s setButtConfirm matches 1 run function galaxy:recipe/hi-tech_crafting_table/craft-recipe
execute if score @s guiMode matches 1 if score @s setButtConfirm matches 1 run function galaxy:gui/delete-gui_item

execute if score @s setButtConfirm matches 1.. run scoreboard players set @s setButtConfirm 0


# mode 1 recipe result display
execute if score @s guiMode matches 1 unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:10b}]} run scoreboard players set @s setHTctResult 1

execute if score @s guiMode matches 1 if score @s setHTctResult matches 1 run function galaxy:gui/delete-gui_item

execute if score @s guiMode matches 1 if score @s setHTctResult matches 1 run function galaxy:recipe/hi-tech_crafting_table/build-recipe_result

execute if score @s setHTctResult matches 1 run scoreboard players set @s setHTctResult 0


# mode 1 recipe material and page area build
execute if score @s guiMode matches 1 if score @s htctRequSlotMax matches 1 unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:6b}]} run scoreboard players set @s setHTctRequPage 1

execute if score @s guiMode matches 1 if score @s htctRequSlotMax matches 2 unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:6b}]} run scoreboard players set @s setHTctRequPage 1
execute if score @s guiMode matches 1 if score @s htctRequSlotMax matches 2 unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:7b}]} run scoreboard players set @s setHTctRequPage 1

execute if score @s guiMode matches 1 if score @s htctRequSlotMax matches 3 unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:6b}]} run scoreboard players set @s setHTctRequPage 1
execute if score @s guiMode matches 1 if score @s htctRequSlotMax matches 3 unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:7b}]} run scoreboard players set @s setHTctRequPage 1
execute if score @s guiMode matches 1 if score @s htctRequSlotMax matches 3 unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:15b}]} run scoreboard players set @s setHTctRequPage 1

execute if score @s guiMode matches 1 if score @s htctRequSlotMax matches 4 unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:6b}]} run scoreboard players set @s setHTctRequPage 1
execute if score @s guiMode matches 1 if score @s htctRequSlotMax matches 4 unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:7b}]} run scoreboard players set @s setHTctRequPage 1
execute if score @s guiMode matches 1 if score @s htctRequSlotMax matches 4 unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:15b}]} run scoreboard players set @s setHTctRequPage 1
execute if score @s guiMode matches 1 if score @s htctRequSlotMax matches 4 unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:16b}]} run scoreboard players set @s setHTctRequPage 1

execute if score @s guiMode matches 1 if score @s htctRequSlotMax matches 5 unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:6b}]} run scoreboard players set @s setHTctRequPage 1
execute if score @s guiMode matches 1 if score @s htctRequSlotMax matches 5 unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:7b}]} run scoreboard players set @s setHTctRequPage 1
execute if score @s guiMode matches 1 if score @s htctRequSlotMax matches 5 unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:15b}]} run scoreboard players set @s setHTctRequPage 1
execute if score @s guiMode matches 1 if score @s htctRequSlotMax matches 5 unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:16b}]} run scoreboard players set @s setHTctRequPage 1
execute if score @s guiMode matches 1 if score @s htctRequSlotMax matches 5 unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:24b}]} run scoreboard players set @s setHTctRequPage 1

execute if score @s guiMode matches 1 if score @s htctRequSlotMax matches 6 unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:6b}]} run scoreboard players set @s setHTctRequPage 1
execute if score @s guiMode matches 1 if score @s htctRequSlotMax matches 6 unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:7b}]} run scoreboard players set @s setHTctRequPage 1
execute if score @s guiMode matches 1 if score @s htctRequSlotMax matches 6 unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:15b}]} run scoreboard players set @s setHTctRequPage 1
execute if score @s guiMode matches 1 if score @s htctRequSlotMax matches 6 unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:16b}]} run scoreboard players set @s setHTctRequPage 1
execute if score @s guiMode matches 1 if score @s htctRequSlotMax matches 6 unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:24b}]} run scoreboard players set @s setHTctRequPage 1
execute if score @s guiMode matches 1 if score @s htctRequSlotMax matches 6 unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:25b}]} run scoreboard players set @s setHTctRequPage 1

execute if score @s guiMode matches 1 unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:5b}]} run scoreboard players remove @s htctRequPage 1
execute if score @s guiMode matches 1 unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:23b}]} run scoreboard players add @s htctRequPage 1

execute if score @s guiMode matches 1 unless score @s htctRequPage = @s htctRequPageTemp run scoreboard players set @s setHTctRequPage 1

execute if score @s guiMode matches 1 if score @s setHTctRequPage matches 1 if score @s htctRequPage > @s htctRequPageMax run scoreboard players set @s htctRequPage 1
execute if score @s guiMode matches 1 if score @s setHTctRequPage matches 1 if score @s htctRequPage matches ..0 store result score @s htctRequPage run scoreboard players get @s htctRequPageMax

execute if score @s guiMode matches 1 if score @s setHTctRequPage matches 1 run function galaxy:gui/delete-gui_item

execute if score @s guiMode matches 1 if score @s setHTctRequPage matches 1 run function galaxy:recipe/hi-tech_crafting_table/delete-recipe_require

execute if score @s guiMode matches 1 if score @s htctRequPage matches 1 if score @s setHTctRequPage matches 1 run replaceitem block ~ ~ ~ container.5 minecraft:gray_stained_glass_pane{display:{Name:"{\"translate\":\"gui.previous_page\",\"italic\":false,\"color\":\"dark_gray\"}"},CustomModelData:20200,guiItem:1}
execute if score @s guiMode matches 1 if score @s htctRequPage matches 1 if score @s setHTctRequPage matches 1 run replaceitem block ~ ~ ~ container.23 minecraft:gray_stained_glass_pane{display:{Name:"{\"translate\":\"gui.next_page\",\"italic\":false,\"color\":\"dark_gray\"}"},CustomModelData:20201,guiItem:1}
execute if score @s guiMode matches 1 if score @s htctRequPage matches 1 if score @s setHTctRequPage matches 1 if score @s htctRequPageMax matches 2.. run replaceitem block ~ ~ ~ container.5 minecraft:gray_stained_glass_pane{display:{Name:"{\"translate\":\"gui.previous_page\",\"italic\":false}"},CustomModelData:10200,guiItem:1}
execute if score @s guiMode matches 1 if score @s htctRequPage matches 1 if score @s setHTctRequPage matches 1 if score @s htctRequPageMax matches 2.. run replaceitem block ~ ~ ~ container.23 minecraft:gray_stained_glass_pane{display:{Name:"{\"translate\":\"gui.next_page\",\"italic\":false}"},CustomModelData:10201,guiItem:1}

execute if score @s guiMode matches 1 if score @s htctRequPage matches 2 if score @s setHTctRequPage matches 1 run replaceitem block ~ ~ ~ container.5 minecraft:gray_stained_glass_pane{display:{Name:"{\"translate\":\"gui.previous_page\",\"italic\":false}"},CustomModelData:10200,guiItem:1}
execute if score @s guiMode matches 1 if score @s htctRequPage matches 2 if score @s setHTctRequPage matches 1 run replaceitem block ~ ~ ~ container.23 minecraft:gray_stained_glass_pane{display:{Name:"{\"translate\":\"gui.next_page\",\"italic\":false}"},CustomModelData:10200,guiItem:1}
execute if score @s guiMode matches 1 if score @s htctRequPage matches 2 if score @s setHTctRequPage matches 1 if score @s htctRequPageMax matches 3.. run replaceitem block ~ ~ ~ container.23 minecraft:gray_stained_glass_pane{display:{Name:"{\"translate\":\"gui.next_page\",\"italic\":false}"},CustomModelData:10201,guiItem:1}

execute if score @s guiMode matches 1 if score @s setHTctRequPage matches 1 run function galaxy:recipe/hi-tech_crafting_table/build-recipe_require

execute if score @s guiMode matches 1 if score @s setHTctRequPage matches 1 run scoreboard players operation @s htctRequPageTemp = @s htctRequPage

execute if score @s setHTctRequPage matches 1 run scoreboard players set @s setHTctRequPage 0



# make sure the player never get guiItem
## execute as @a store result score @s countTags run execute if data entity @s Inventory[].tag.guiItem
## clear @a[scores={countTags=1..}] #galaxy:gui_item{guiItem:1}
## clear @a #galaxy:gui_item{guiItem:1}
kill @e[type=minecraft:item,nbt={Item:{tag:{guiItem:1}}}]
