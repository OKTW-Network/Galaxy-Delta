# block place
execute as @e[tag=coke_furnace_placer] at @s run summon minecraft:armor_stand ~ ~ ~ {CustomNameVisible:0b,NoGravity:1b,Invulnerable:1b,Small:1b,Marker:1b,Invisible:1b,Tags:["coke_furnace","function_place","initial"]}
execute as @e[tag=coke_furnace,tag=function_place] at @s run setblock ~ ~ ~ minecraft:barrel{CustomName:'{"translate":"container.coke_furnace"}'} replace
execute as @e[tag=coke_furnace,tag=function_place] at @s run summon minecraft:armor_stand ~ ~1 ~ {CustomNameVisible:0b,NoGravity:1b,Invulnerable:1b,Small:1b,Marker:1b,Invisible:1b,Tags:["coke_furnace_fake_block"],ArmorItems:[{},{},{},{id:"minecraft:wooden_sword",Count:1b,tag:{CustomModelData:10200,fakeBlock:1,cokeFurnace:1}}]}
scoreboard players set @e[tag=coke_furnace,tag=function_place] guiMode 0
scoreboard players set @e[tag=coke_furnace,tag=function_place] workStatus 0
scoreboard players set @e[tag=coke_furnace,tag=function_place] setGuiCover 1
scoreboard players set @e[tag=coke_furnace,tag=function_place] setSmelt 1
scoreboard players set @e[tag=coke_furnace,tag=function_place] setProcess 1
scoreboard players set @e[tag=coke_furnace,tag=function_place] setProgress 1
scoreboard players remove @e[tag=coke_furnace,tag=function_place] workProc1 0
scoreboard players remove @e[tag=coke_furnace,tag=function_place] workProc1Temp1 0
scoreboard players remove @e[tag=coke_furnace,tag=function_place] workProc1Temp2 0
kill @e[tag=coke_furnace_placer]
execute as @e[tag=coke_furnace,tag=function_place] run tag @s remove function_place

# machine protection
execute as @e[tag=coke_furnace] at @s positioned as @s run function galaxy:block/protection

# block destroy
execute as @e[tag=coke_furnace] positioned as @s if block ~ ~ ~ minecraft:air run tag @s add function_destroy
execute as @e[tag=coke_furnace,tag=function_destroy] at @s run function galaxy:block/machine/summon/coke_furnace
execute as @e[tag=coke_furnace,tag=function_destroy] at @s run summon minecraft:armor_stand ~ ~1 ~ {CustomNameVisible:0b,NoGravity:1b,Invulnerable:1b,Small:1b,Marker:1b,Invisible:1b,Tags:["fake_block_remover"]}
execute as @e[tag=fake_block_remover] at @s positioned as @s run kill @e[tag=coke_furnace_fake_block,distance=..0.25,sort=nearest,limit=1]
execute as @e[tag=fake_block_remover] run kill @s
execute as @e[tag=coke_furnace,tag=function_destroy] run kill @e[type=minecraft:item,nbt={Item:{tag:{display:{Name:"{\"translate\":\"container.coke_furnace\"}"}}}}]
execute as @e[tag=coke_furnace,tag=function_destroy] run kill @s

# relplace the block when GUI contains non-guiItem
execute as @e[tag=coke_furnace,tag=!initial] at @s positioned as @s if block ~ ~ ~ minecraft:barrel{Items:[{Slot:0b}]} unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:0b,tag:{guiItem:1}}]} run tag @s add function_replace
execute as @e[tag=coke_furnace,tag=!initial] at @s positioned as @s if block ~ ~ ~ minecraft:barrel{Items:[{Slot:1b}]} unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:1b,tag:{guiItem:1}}]} run tag @s add function_replace
execute as @e[tag=coke_furnace,tag=!initial] at @s positioned as @s if block ~ ~ ~ minecraft:barrel{Items:[{Slot:2b}]} unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:2b,tag:{guiItem:1}}]} run tag @s add function_replace
execute as @e[tag=coke_furnace,tag=!initial] at @s positioned as @s if block ~ ~ ~ minecraft:barrel{Items:[{Slot:3b}]} unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:3b,tag:{guiItem:1}}]} run tag @s add function_replace
execute as @e[tag=coke_furnace,tag=!initial] at @s positioned as @s if block ~ ~ ~ minecraft:barrel{Items:[{Slot:4b}]} unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:4b,tag:{guiItem:1}}]} run tag @s add function_replace
execute as @e[tag=coke_furnace,tag=!initial] at @s positioned as @s if block ~ ~ ~ minecraft:barrel{Items:[{Slot:5b}]} unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:5b,tag:{guiItem:1}}]} run tag @s add function_replace
execute as @e[tag=coke_furnace,tag=!initial] at @s positioned as @s if block ~ ~ ~ minecraft:barrel{Items:[{Slot:6b}]} unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:6b,tag:{guiItem:1}}]} run tag @s add function_replace
execute as @e[tag=coke_furnace,tag=!initial] at @s positioned as @s if block ~ ~ ~ minecraft:barrel{Items:[{Slot:7b}]} unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:7b,tag:{guiItem:1}}]} run tag @s add function_replace
execute as @e[tag=coke_furnace,tag=!initial] at @s positioned as @s if block ~ ~ ~ minecraft:barrel{Items:[{Slot:8b}]} unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:8b,tag:{guiItem:1}}]} run tag @s add function_replace
execute as @e[tag=coke_furnace,tag=!initial] at @s positioned as @s if block ~ ~ ~ minecraft:barrel{Items:[{Slot:9b}]} unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:9b,tag:{guiItem:1}}]} run tag @s add function_replace
execute as @e[tag=coke_furnace,tag=!initial] at @s positioned as @s if block ~ ~ ~ minecraft:barrel{Items:[{Slot:10b}]} unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:10b,tag:{guiItem:1}}]} run tag @s add function_replace
execute as @e[tag=coke_furnace,tag=!initial] at @s positioned as @s if block ~ ~ ~ minecraft:barrel{Items:[{Slot:12b}]} unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:12b,tag:{guiItem:1}}]} run tag @s add function_replace
execute as @e[tag=coke_furnace,tag=!initial] at @s positioned as @s if block ~ ~ ~ minecraft:barrel{Items:[{Slot:13b}]} unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:13b,tag:{guiItem:1}}]} run tag @s add function_replace
execute as @e[tag=coke_furnace,tag=!initial] at @s positioned as @s if block ~ ~ ~ minecraft:barrel{Items:[{Slot:14b}]} unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:14b,tag:{guiItem:1}}]} run tag @s add function_replace
execute as @e[tag=coke_furnace,tag=!initial] at @s positioned as @s if block ~ ~ ~ minecraft:barrel{Items:[{Slot:16b}]} unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:16b,tag:{guiItem:1}}]} run tag @s add function_replace
execute as @e[tag=coke_furnace,tag=!initial] at @s positioned as @s if block ~ ~ ~ minecraft:barrel{Items:[{Slot:17b}]} unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:17b,tag:{guiItem:1}}]} run tag @s add function_replace
execute as @e[tag=coke_furnace,tag=!initial] at @s positioned as @s if block ~ ~ ~ minecraft:barrel{Items:[{Slot:18b}]} unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:18b,tag:{guiItem:1}}]} run tag @s add function_replace
execute as @e[tag=coke_furnace,tag=!initial] at @s positioned as @s if block ~ ~ ~ minecraft:barrel{Items:[{Slot:19b}]} unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:19b,tag:{guiItem:1}}]} run tag @s add function_replace
execute as @e[tag=coke_furnace,tag=!initial] at @s positioned as @s if block ~ ~ ~ minecraft:barrel{Items:[{Slot:20b}]} unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:20b,tag:{guiItem:1}}]} run tag @s add function_replace
execute as @e[tag=coke_furnace,tag=!initial] at @s positioned as @s if block ~ ~ ~ minecraft:barrel{Items:[{Slot:21b}]} unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:21b,tag:{guiItem:1}}]} run tag @s add function_replace
execute as @e[tag=coke_furnace,tag=!initial] at @s positioned as @s if block ~ ~ ~ minecraft:barrel{Items:[{Slot:22b}]} unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:22b,tag:{guiItem:1}}]} run tag @s add function_replace
execute as @e[tag=coke_furnace,tag=!initial] at @s positioned as @s if block ~ ~ ~ minecraft:barrel{Items:[{Slot:23b}]} unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:23b,tag:{guiItem:1}}]} run tag @s add function_replace
execute as @e[tag=coke_furnace,tag=!initial] at @s positioned as @s if block ~ ~ ~ minecraft:barrel{Items:[{Slot:24b}]} unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:24b,tag:{guiItem:1}}]} run tag @s add function_replace
execute as @e[tag=coke_furnace,tag=!initial] at @s positioned as @s if block ~ ~ ~ minecraft:barrel{Items:[{Slot:25b}]} unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:25b,tag:{guiItem:1}}]} run tag @s add function_replace
execute as @e[tag=coke_furnace,tag=!initial] at @s positioned as @s if block ~ ~ ~ minecraft:barrel{Items:[{Slot:26b}]} unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:26b,tag:{guiItem:1}}]} run tag @s add function_replace
execute as @e[tag=coke_furnace,tag=!initial,tag=function_replace] at @s positioned as @s run function galaxy:gui/delete-gui_item
execute as @e[tag=coke_furnace,tag=!initial,tag=function_replace] at @s positioned as @s run setblock ~ ~ ~ minecraft:air destroy
execute as @e[tag=coke_furnace,tag=!initial,tag=function_replace] run kill @e[type=minecraft:item,nbt={Item:{tag:{display:{Name:"{\"translate\":\"container.coke_furnace\"}"}}}}]
execute as @e[tag=coke_furnace,tag=!initial,tag=function_replace] at @s positioned as @s run setblock ~ ~ ~ minecraft:barrel{CustomName:"{\"translate\":\"container.coke_furnace\"}"} replace
execute as @e[tag=coke_furnace,tag=!initial,tag=function_replace] run tag @s remove function_replace

# gui function
execute as @e[tag=coke_furnace] at @s positioned as @s run function galaxy:gui/coke_furnace


execute as @e[tag=coke_furnace,tag=initial] run tag @s remove initial
