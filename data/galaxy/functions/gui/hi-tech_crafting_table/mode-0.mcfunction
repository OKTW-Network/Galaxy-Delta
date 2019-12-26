# guiCovers
execute unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:9b}]} run scoreboard players set @s setGuiCover 1
execute unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:11b}]} run scoreboard players set @s setGuiCover 1

execute if score @s setGuiCover matches 1 run function galaxy:gui/remove-gui_item

execute if score @s setGuiCover matches 1 run replaceitem block ~ ~ ~ container.9 minecraft:white_stained_glass_pane{display:{Name:"{\"translate\":\"gui.blank\",\"italic\":false}"},CustomModelData:20201,guiItem:1}
execute if score @s setGuiCover matches 1 run replaceitem block ~ ~ ~ container.11 minecraft:white_stained_glass_pane{display:{Name:"{\"translate\":\"gui.blank\",\"italic\":false}"},CustomModelData:20301,guiItem:1}

execute if score @s setGuiCover matches 1 run scoreboard players set @s setGuiCover 0


# category selection area
execute unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:0b}]} run scoreboard players remove @s htctCategory 1
execute unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:1b}]} run scoreboard players remove @s htctCategory 1
execute unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:18b}]} run scoreboard players add @s htctCategory 1
execute unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:19b}]} run scoreboard players add @s htctCategory 1
execute unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:10b}]} run scoreboard players set @s setHTctCategory 1

execute unless score @s htctCategory = @s htctCategoryTemp run scoreboard players set @s setHTctCategory 1

execute if score @s setHTctCategory matches 1 if score @s htctCategory > #global htctCatgMax run scoreboard players set @s htctCategory 1
execute if score @s setHTctCategory matches 1 if score @s htctCategory matches ..0 store result score @s htctCategory run scoreboard players get #global htctCatgMax

execute if score @s setHTctCategory matches 1 run function galaxy:gui/remove-gui_item

execute if score @s setHTctCategory matches 1 run function galaxy:gui/hi-tech_crafting_table/delete-item_list

execute if score @s setHTctCategory matches 1 run function galaxy:recipe/hi-tech_crafting_table/build-category

execute if score @s setHTctCategory matches 1 run scoreboard players set @s htctListPage 1
execute if score @s setHTctCategory matches 1 run scoreboard players set @s setHTctListPage 1

execute if score @s setHTctCategory matches 1 run replaceitem block ~ ~ ~ container.0 minecraft:gray_stained_glass_pane{display:{Name:"{\"translate\":\"gui.htct.previous_category\",\"italic\":false}"},CustomModelData:10200,guiItem:1}
execute if score @s setHTctCategory matches 1 run replaceitem block ~ ~ ~ container.18 minecraft:gray_stained_glass_pane{display:{Name:"{\"translate\":\"gui.htct.next_category\",\"italic\":false}"},CustomModelData:10201,guiItem:1}

execute if score @s setHTctCategory matches 1 run scoreboard players operation @s htctCategoryTemp = @s htctCategory

execute if score @s setHTctCategory matches 1 run scoreboard players set @s setHTctCategory 0


# recipe list area
execute unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:2b}]} run scoreboard players remove @s htctListPage 1
execute unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:20b}]} run scoreboard players add @s htctListPage 1

execute unless score @s htctListPage = @s htctListPageTemp run scoreboard players set @s setHTctListPage 1

execute if score @s setHTctListPage matches 1 if score @s htctListPage > @s htctListPageMax run scoreboard players set @s htctListPage 1
execute if score @s setHTctListPage matches 1 if score @s htctListPage matches ..0 store result score @s htctListPage run scoreboard players get @s htctListPageMax

execute if score @s setHTctListPage matches 1 run function galaxy:gui/remove-gui_item

execute if score @s setHTctListPage matches 1 run function galaxy:gui/hi-tech_crafting_table/delete-item_list

execute if score @s setHTctListPage matches 1 if score @s htctListPage matches 1.. run replaceitem block ~ ~ ~ container.2 minecraft:gray_stained_glass_pane{display:{Name:"{\"translate\":\"gui.previous_page\",\"italic\":false,\"color\":\"dark_gray\"}"},CustomModelData:20200,guiItem:1}
execute if score @s setHTctListPage matches 1 if score @s htctListPage matches 1.. run replaceitem block ~ ~ ~ container.20 minecraft:gray_stained_glass_pane{display:{Name:"{\"translate\":\"gui.next_page\",\"italic\":false,\"color\":\"dark_gray\"}"},CustomModelData:20201,guiItem:1}
execute if score @s setHTctListPage matches 1 if score @s htctListPage matches 1.. if score @s htctListPageMax matches 2.. run replaceitem block ~ ~ ~ container.2 minecraft:gray_stained_glass_pane{display:{Name:"{\"translate\":\"gui.previous_page\",\"italic\":false}"},CustomModelData:10200,guiItem:1}
execute if score @s setHTctListPage matches 1 if score @s htctListPage matches 1.. if score @s htctListPageMax matches 2.. run replaceitem block ~ ~ ~ container.20 minecraft:gray_stained_glass_pane{display:{Name:"{\"translate\":\"gui.next_page\",\"italic\":false}"},CustomModelData:10201,guiItem:1}

execute if score @s setHTctListPage matches 1 run function galaxy:recipe/hi-tech_crafting_table/build-item_list

execute if score @s setHTctListPage matches 1 run scoreboard players operation @s htctListPageTemp = @s htctListPage

execute if score @s setHTctListPage matches 1 run scoreboard players set @s setHTctListPage 0


## guiMode switch
function galaxy:recipe/hi-tech_crafting_table/check-item_list
