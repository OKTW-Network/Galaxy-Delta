# relplace the block when GUI contains non-guiItem
execute if block ~ ~ ~ minecraft:barrel{Items:[{Slot:0b}]} unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:0b,tag:{guiItem:1}}]} run tag @s add replace
execute if block ~ ~ ~ minecraft:barrel{Items:[{Slot:1b}]} unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:1b,tag:{guiItem:1}}]} run tag @s add replace
execute if block ~ ~ ~ minecraft:barrel{Items:[{Slot:2b}]} unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:2b,tag:{guiItem:1}}]} run tag @s add replace
execute if block ~ ~ ~ minecraft:barrel{Items:[{Slot:3b}]} unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:3b,tag:{guiItem:1}}]} run tag @s add replace
execute if block ~ ~ ~ minecraft:barrel{Items:[{Slot:4b}]} unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:4b,tag:{guiItem:1}}]} run tag @s add replace
execute if block ~ ~ ~ minecraft:barrel{Items:[{Slot:5b}]} unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:5b,tag:{guiItem:1}}]} run tag @s add replace
execute if block ~ ~ ~ minecraft:barrel{Items:[{Slot:6b}]} unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:6b,tag:{guiItem:1}}]} run tag @s add replace
execute if block ~ ~ ~ minecraft:barrel{Items:[{Slot:7b}]} unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:7b,tag:{guiItem:1}}]} run tag @s add replace
execute if block ~ ~ ~ minecraft:barrel{Items:[{Slot:8b}]} unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:8b,tag:{guiItem:1}}]} run tag @s add replace
execute if block ~ ~ ~ minecraft:barrel{Items:[{Slot:9b}]} unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:9b,tag:{guiItem:1}}]} run tag @s add replace
execute if block ~ ~ ~ minecraft:barrel{Items:[{Slot:10b}]} unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:10b,tag:{guiItem:1}}]} run tag @s add replace
execute if block ~ ~ ~ minecraft:barrel{Items:[{Slot:11b}]} unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:11b,tag:{guiItem:1}}]} run tag @s add replace
execute if block ~ ~ ~ minecraft:barrel{Items:[{Slot:12b}]} unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:12b,tag:{guiItem:1}}]} run tag @s add replace
execute if block ~ ~ ~ minecraft:barrel{Items:[{Slot:13b}]} unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:13b,tag:{guiItem:1}}]} run tag @s add replace
execute if block ~ ~ ~ minecraft:barrel{Items:[{Slot:14b}]} unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:14b,tag:{guiItem:1}}]} run tag @s add replace
execute if block ~ ~ ~ minecraft:barrel{Items:[{Slot:15b}]} unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:15b,tag:{guiItem:1}}]} run tag @s add replace
execute if block ~ ~ ~ minecraft:barrel{Items:[{Slot:16b}]} unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:16b,tag:{pistolResult:1}}]} run tag @s add replace
execute if block ~ ~ ~ minecraft:barrel{Items:[{Slot:17b}]} unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:17b,tag:{guiItem:1}}]} run tag @s add replace
execute if block ~ ~ ~ minecraft:barrel{Items:[{Slot:18b}]} unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:18b,tag:{guiItem:1}}]} run tag @s add replace
execute if block ~ ~ ~ minecraft:barrel{Items:[{Slot:19b}]} unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:19b,tag:{guiItem:1}}]} run tag @s add replace
execute if block ~ ~ ~ minecraft:barrel{Items:[{Slot:20b}]} unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:20b,tag:{guiItem:1}}]} run tag @s add replace
execute if block ~ ~ ~ minecraft:barrel{Items:[{Slot:21b}]} unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:21b,tag:{guiItem:1}}]} run tag @s add replace
execute if block ~ ~ ~ minecraft:barrel{Items:[{Slot:22b}]} unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:22b,tag:{guiItem:1}}]} run tag @s add replace
execute if block ~ ~ ~ minecraft:barrel{Items:[{Slot:23b}]} unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:23b,tag:{guiItem:1}}]} run tag @s add replace
execute if block ~ ~ ~ minecraft:barrel{Items:[{Slot:24b}]} unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:24b,tag:{guiItem:1}}]} run tag @s add replace
execute if block ~ ~ ~ minecraft:barrel{Items:[{Slot:25b}]} unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:25b,tag:{guiItem:1}}]} run tag @s add replace
execute if block ~ ~ ~ minecraft:barrel{Items:[{Slot:26b}]} unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:26b,tag:{guiItem:1}}]} run tag @s add replace
execute if entity @s[tag=replace] run function galaxy:block/machine/super_builder-pistol/replace
tag @s[tag=replace] remove replace

# gui
execute if score @s guiMode matches 0 run function galaxy:gui/super_builder-pistol/mode-0
