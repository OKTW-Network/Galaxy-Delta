# gui cover
execute unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:1b}]} run tag @s add setGuiCover
execute unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:5b}]} run tag @s add setGuiCover
execute unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:6b}]} run tag @s add setGuiCover
execute unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:7b}]} run tag @s add setGuiCover
execute unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:8b}]} run tag @s add setGuiCover
execute unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:10b}]} run tag @s add setGuiCover
execute unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:14b}]} run tag @s add setGuiCover
execute unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:15b}]} run tag @s add setGuiCover
execute unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:17b}]} run tag @s add setGuiCover
execute unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:19b}]} run tag @s add setGuiCover
execute unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:23b}]} run tag @s add setGuiCover
execute unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:24b}]} run tag @s add setGuiCover
execute unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:25b}]} run tag @s add setGuiCover
execute unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:26b}]} run tag @s add setGuiCover

execute if entity @s[tag=setGuiCover] run function galaxy:gui/remove-gui_item

execute if entity @s[tag=setGuiCover] run replaceitem block ~ ~ ~ container.1 minecraft:white_stained_glass_pane{display:{Name:"{\"translate\":\"gui.blank\",\"italic\":false}"},CustomModelData:100,guiItem:1}
execute if entity @s[tag=setGuiCover] run replaceitem block ~ ~ ~ container.5 minecraft:white_stained_glass_pane{display:{Name:"{\"translate\":\"gui.blank\",\"italic\":false}"},CustomModelData:20112,guiItem:1}
execute if entity @s[tag=setGuiCover] run replaceitem block ~ ~ ~ container.6 minecraft:white_stained_glass_pane{display:{Name:"{\"translate\":\"gui.blank\",\"italic\":false}"},CustomModelData:10300,guiItem:1}
execute if entity @s[tag=setGuiCover] run replaceitem block ~ ~ ~ container.7 minecraft:white_stained_glass_pane{display:{Name:"{\"translate\":\"gui.blank\",\"italic\":false}"},CustomModelData:100,guiItem:1}
execute if entity @s[tag=setGuiCover] run replaceitem block ~ ~ ~ container.8 minecraft:white_stained_glass_pane{display:{Name:"{\"translate\":\"gui.blank\",\"italic\":false}"},CustomModelData:100,guiItem:1}
execute if entity @s[tag=setGuiCover] run replaceitem block ~ ~ ~ container.10 minecraft:white_stained_glass_pane{display:{Name:"{\"translate\":\"gui.blank\",\"italic\":false}"},CustomModelData:20301,guiItem:1}
execute if entity @s[tag=setGuiCover] run replaceitem block ~ ~ ~ container.14 minecraft:white_stained_glass_pane{display:{Name:"{\"translate\":\"gui.blank\",\"italic\":false}"},CustomModelData:20424,guiItem:1}
execute if entity @s[tag=setGuiCover] run replaceitem block ~ ~ ~ container.15 minecraft:white_stained_glass_pane{display:{Name:"{\"translate\":\"gui.blank\",\"italic\":false}"},CustomModelData:100,guiItem:1}
execute if entity @s[tag=setGuiCover] run replaceitem block ~ ~ ~ container.17 minecraft:white_stained_glass_pane{display:{Name:"{\"translate\":\"gui.blank\",\"italic\":false}"},CustomModelData:100,guiItem:1}
execute if entity @s[tag=setGuiCover] run replaceitem block ~ ~ ~ container.19 minecraft:white_stained_glass_pane{display:{Name:"{\"translate\":\"gui.blank\",\"italic\":false}"},CustomModelData:100,guiItem:1}
execute if entity @s[tag=setGuiCover] run replaceitem block ~ ~ ~ container.23 minecraft:white_stained_glass_pane{display:{Name:"{\"translate\":\"gui.blank\",\"italic\":false}"},CustomModelData:20112,guiItem:1}
execute if entity @s[tag=setGuiCover] run replaceitem block ~ ~ ~ container.24 minecraft:white_stained_glass_pane{display:{Name:"{\"translate\":\"gui.blank\",\"italic\":false}"},CustomModelData:100,guiItem:1}
execute if entity @s[tag=setGuiCover] run replaceitem block ~ ~ ~ container.25 minecraft:white_stained_glass_pane{display:{Name:"{\"translate\":\"gui.blank\",\"italic\":false}"},CustomModelData:100,guiItem:1}
execute if entity @s[tag=setGuiCover] run replaceitem block ~ ~ ~ container.26 minecraft:white_stained_glass_pane{display:{Name:"{\"translate\":\"gui.blank\",\"italic\":false}"},CustomModelData:100,guiItem:1}

tag @s[tag=setGuiCover] remove setGuiCover

# 
execute unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:0b}]} run tag @s add setSbldAttribute
execute unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:9b}]} run tag @s add setSbldAttribute
execute unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:18b}]} run tag @s add setSbldAttribute

execute if entity @s[tag=setSbldAttribute] run function galaxy:gui/remove-gui_item

execute if entity @s[tag=setSbldAttribute] unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:0b}]} run scoreboard players remove @s sbldAttribute 1
execute if entity @s[tag=setSbldAttribute] unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:18b}]} run scoreboard players add @s sbldAttribute 1
execute if entity @s[tag=setSbldAttribute] if score @s sbldAttribute > #global sbldPistolAtbMax run scoreboard players set @s sbldAttribute 1
execute if entity @s[tag=setSbldAttribute] if score @s sbldAttribute matches ..0 store result score @s sbldAttribute run scoreboard players get #global sbldPistolAtbMax

execute if entity @s[tag=setSbldAttribute] run function galaxy:recipe/super_builder-gun/build-atb_category

execute if entity @s[tag=setSbldAttribute] run function galaxy:gui/super_builder-gun/build-num_selection_section

tag @s[tag=setSbldAttribute] remove setSbldAttribute

# 
execute unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:2b}]} run tag @s add setSbldValue
execute unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:3b}]} run tag @s add setSbldValue
execute unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:4b}]} run tag @s add setSbldValue
execute unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:11b}]} run tag @s add setSbldValue
execute unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:12b}]} run tag @s add setSbldValue
execute unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:13b}]} run tag @s add setSbldValue
execute unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:20b}]} run tag @s add setSbldValue
execute unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:21b}]} run tag @s add setSbldValue
execute unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:22b}]} run tag @s add setSbldValue

execute if entity @s[tag=setSbldValue] run function galaxy:gui/remove-gui_item

execute if entity @s[tag=setSbldValue] run function galaxy:gui/super_builder-gun/build-num_selection_section

tag @s[tag=setSbldValue] remove setSbldValue

# 
execute unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:16b}]} run tag @s add setSbldResult

execute if entity @s[tag=setSbldResult] run function galaxy:gui/super_builder-gun/build-result

tag @s[tag=setSbldResult] remove setSbldResult
