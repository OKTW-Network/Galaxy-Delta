# guiCovers
execute unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:0b}]} run scoreboard players set @s setGuiCover 1
execute unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:1b}]} run scoreboard players set @s setGuiCover 1
execute unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:2b}]} run scoreboard players set @s setGuiCover 1
execute unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:3b}]} run scoreboard players set @s setGuiCover 1
execute unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:4b}]} run scoreboard players set @s setGuiCover 1
execute unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:8b}]} run scoreboard players set @s setGuiCover 1
execute unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:9b}]} run scoreboard players set @s setGuiCover 1
execute unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:11b}]} run scoreboard players set @s setGuiCover 1
execute unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:13b}]} run scoreboard players set @s setGuiCover 1
execute unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:14b}]} run scoreboard players set @s setGuiCover 1
execute unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:17b}]} run scoreboard players set @s setGuiCover 1
execute unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:18b}]} run scoreboard players set @s setGuiCover 1
execute unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:19b}]} run scoreboard players set @s setGuiCover 1
execute unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:20b}]} run scoreboard players set @s setGuiCover 1
execute unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:21b}]} run scoreboard players set @s setGuiCover 1
execute unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:22b}]} run scoreboard players set @s setGuiCover 1

execute if score @s setGuiCover matches 1 run function galaxy:gui/remove-gui_item

execute if score @s setGuiCover matches 1 run replaceitem block ~ ~ ~ container.0 minecraft:white_stained_glass_pane{display:{Name:"{\"translate\":\"gui.blank\",\"italic\":false}"},CustomModelData:10201,guiItem:1}
execute if score @s setGuiCover matches 1 run replaceitem block ~ ~ ~ container.1 minecraft:white_stained_glass_pane{display:{Name:"{\"translate\":\"gui.blank\",\"italic\":false}"},CustomModelData:10202,guiItem:1}
execute if score @s setGuiCover matches 1 run replaceitem block ~ ~ ~ container.2 minecraft:white_stained_glass_pane{display:{Name:"{\"translate\":\"gui.blank\",\"italic\":false}"},CustomModelData:10202,guiItem:1}
execute if score @s setGuiCover matches 1 run replaceitem block ~ ~ ~ container.3 minecraft:white_stained_glass_pane{display:{Name:"{\"translate\":\"gui.blank\",\"italic\":false}"},CustomModelData:10202,guiItem:1}
execute if score @s setGuiCover matches 1 run replaceitem block ~ ~ ~ container.4 minecraft:white_stained_glass_pane{display:{Name:"{\"translate\":\"gui.blank\",\"italic\":false}"},CustomModelData:10203,guiItem:1}
execute if score @s setGuiCover matches 1 run replaceitem block ~ ~ ~ container.8 minecraft:white_stained_glass_pane{display:{Name:"{\"translate\":\"gui.blank\",\"italic\":false}"},CustomModelData:100,guiItem:1}
execute if score @s setGuiCover matches 1 run replaceitem block ~ ~ ~ container.9 minecraft:white_stained_glass_pane{display:{Name:"{\"translate\":\"gui.blank\",\"italic\":false}"},CustomModelData:10208,guiItem:1}
execute if score @s setGuiCover matches 1 run replaceitem block ~ ~ ~ container.11 minecraft:white_stained_glass_pane{display:{Name:"{\"translate\":\"gui.blank\",\"italic\":false}"},CustomModelData:20104,guiItem:1}
execute if score @s setGuiCover matches 1 run replaceitem block ~ ~ ~ container.13 minecraft:white_stained_glass_pane{display:{Name:"{\"translate\":\"gui.blank\",\"italic\":false}"},CustomModelData:10204,guiItem:1}
execute if score @s setGuiCover matches 1 run replaceitem block ~ ~ ~ container.14 minecraft:white_stained_glass_pane{display:{Name:"{\"translate\":\"gui.blank\",\"italic\":false}"},CustomModelData:20100,guiItem:1}
execute if score @s setGuiCover matches 1 run replaceitem block ~ ~ ~ container.17 minecraft:white_stained_glass_pane{display:{Name:"{\"translate\":\"gui.blank\",\"italic\":false}"},CustomModelData:20105,guiItem:1}
execute if score @s setGuiCover matches 1 run replaceitem block ~ ~ ~ container.18 minecraft:white_stained_glass_pane{display:{Name:"{\"translate\":\"gui.blank\",\"italic\":false}"},CustomModelData:10207,guiItem:1}
execute if score @s setGuiCover matches 1 run replaceitem block ~ ~ ~ container.19 minecraft:white_stained_glass_pane{display:{Name:"{\"translate\":\"gui.blank\",\"italic\":false}"},CustomModelData:10206,guiItem:1}
execute if score @s setGuiCover matches 1 run replaceitem block ~ ~ ~ container.20 minecraft:white_stained_glass_pane{display:{Name:"{\"translate\":\"gui.blank\",\"italic\":false}"},CustomModelData:10206,guiItem:1}
execute if score @s setGuiCover matches 1 run replaceitem block ~ ~ ~ container.21 minecraft:white_stained_glass_pane{display:{Name:"{\"translate\":\"gui.blank\",\"italic\":false}"},CustomModelData:10206,guiItem:1}
execute if score @s setGuiCover matches 1 run replaceitem block ~ ~ ~ container.22 minecraft:white_stained_glass_pane{display:{Name:"{\"translate\":\"gui.blank\",\"italic\":false}"},CustomModelData:10205,guiItem:1}

execute if score @s setGuiCover matches 1 run scoreboard players set @s setGuiCover 0


# recipe result display
execute unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:10b}]} run scoreboard players set @s setHTctResult 1

execute if score @s setHTctResult matches 1 run function galaxy:gui/remove-gui_item

execute if score @s setHTctResult matches 1 run function galaxy:recipe/hi-tech_crafting_table/build-recipe_result

execute if score @s setHTctResult matches 1 run scoreboard players set @s setHTctResult 0


# recipe material and page area
execute if score @s htctRequSlotMax matches 1..6 unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:6b}]} run scoreboard players set @s setHTctRequPage 1
execute if score @s htctRequSlotMax matches 2..6 unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:7b}]} run scoreboard players set @s setHTctRequPage 1
execute if score @s htctRequSlotMax matches 3..6 unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:15b}]} run scoreboard players set @s setHTctRequPage 1
execute if score @s htctRequSlotMax matches 4..6 unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:16b}]} run scoreboard players set @s setHTctRequPage 1
execute if score @s htctRequSlotMax matches 5..6 unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:24b}]} run scoreboard players set @s setHTctRequPage 1
execute if score @s htctRequSlotMax matches 6 unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:25b}]} run scoreboard players set @s setHTctRequPage 1

execute unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:5b}]} run scoreboard players remove @s htctRequPage 1
execute unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:23b}]} run scoreboard players add @s htctRequPage 1

execute unless score @s htctRequPage = @s htctRequPageTemp run scoreboard players set @s setHTctRequPage 1

execute if score @s setHTctRequPage matches 1 if score @s htctRequPage > @s htctRequPageMax run scoreboard players set @s htctRequPage 1
execute if score @s setHTctRequPage matches 1 if score @s htctRequPage matches ..0 store result score @s htctRequPage run scoreboard players get @s htctRequPageMax

execute if score @s setHTctRequPage matches 1 run function galaxy:gui/remove-gui_item

execute if score @s setHTctRequPage matches 1 run function galaxy:gui/hi-tech_crafting_table/delete-recipe_require

execute if score @s setHTctRequPage matches 1 if score @s htctRequPage matches 1.. run replaceitem block ~ ~ ~ container.5 minecraft:gray_stained_glass_pane{display:{Name:"{\"translate\":\"gui.previous_page\",\"italic\":false,\"color\":\"dark_gray\"}"},CustomModelData:20200,guiItem:1}
execute if score @s setHTctRequPage matches 1 if score @s htctRequPage matches 1.. run replaceitem block ~ ~ ~ container.23 minecraft:gray_stained_glass_pane{display:{Name:"{\"translate\":\"gui.next_page\",\"italic\":false,\"color\":\"dark_gray\"}"},CustomModelData:20201,guiItem:1}
execute if score @s setHTctRequPage matches 1 if score @s htctRequPage matches 1.. if score @s htctRequPageMax matches 2.. run replaceitem block ~ ~ ~ container.5 minecraft:gray_stained_glass_pane{display:{Name:"{\"translate\":\"gui.previous_page\",\"italic\":false}"},CustomModelData:10200,guiItem:1}
execute if score @s setHTctRequPage matches 1 if score @s htctRequPage matches 1.. if score @s htctRequPageMax matches 2.. run replaceitem block ~ ~ ~ container.23 minecraft:gray_stained_glass_pane{display:{Name:"{\"translate\":\"gui.next_page\",\"italic\":false}"},CustomModelData:10201,guiItem:1}

execute if score @s setHTctRequPage matches 1 run function galaxy:recipe/hi-tech_crafting_table/build-recipe_require

execute if score @s setHTctRequPage matches 1 run scoreboard players operation @s htctRequPageTemp = @s htctRequPage

execute if score @s setHTctRequPage matches 1 run scoreboard players set @s setHTctRequPage 0


# button craft confirm
execute if score @s setButtConfirm matches 0 unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:12b}]} run scoreboard players set @s setButtConfirm 1

execute if score @s setButtConfirm matches 1..2 run replaceitem block ~ ~ ~ container.12 minecraft:gray_stained_glass_pane{display:{Name:"{\"translate\":\"gui.htct.craftConfirm\",\"italic\":false}"},CustomModelData:10300,guiItem:1,htctCraft:1}

execute if score @s setButtConfirm matches 1 run execute as @a store success score @s reqHTctCraft run clear @s minecraft:gray_stained_glass_pane{htctCraft:1} 0
execute if score @s setButtConfirm matches 1 run function galaxy:recipe/hi-tech_crafting_table/craft
execute if score @s setButtConfirm matches 1 run function galaxy:gui/remove-gui_item

execute if score @s setButtConfirm matches 1.. run scoreboard players set @s setButtConfirm 0


# button guiMode switch
execute if score @s setButtBack1 matches 0 unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:26b}]} run scoreboard players set @s setButtBack1 1

execute if score @s setButtBack1 matches 2 run replaceitem block ~ ~ ~ container.26 minecraft:golden_hoe{display:{Name:"{\"translate\":\"gui.htct.returnToList\",\"italic\":false}"},HideFlags:63,CustomModelData:10106,guiItem:1}
execute if score @s setButtBack1 matches 2 run scoreboard players set @s setButtBack1 0

execute if score @s setButtBack1 matches 1 run function galaxy:gui/remove-gui_item
execute if score @s setButtBack1 matches 1 run scoreboard players set @s guiMode 0
execute if score @s setButtBack1 matches 1 run function galaxy:gui/hi-tech_crafting_table/update
execute if score @s setButtBack1 matches 1 run scoreboard players set @s setButtBack1 0
