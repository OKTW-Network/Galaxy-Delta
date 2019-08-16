# block place
execute as @e[tag=advanced_blast_furnace_placer] at @s run summon minecraft:armor_stand ~ ~ ~ {Silent:1b,CustomNameVisible:0b,NoGravity:1b,Invulnerable:1b,Small:1b,Marker:1b,Invisible:1b,Tags:["advanced_blast_furnace","function_place","initial"]}
execute as @e[tag=advanced_blast_furnace,tag=function_place] at @s run setblock ~ ~ ~ minecraft:barrel{CustomName:'{"translate":"container.advanced_blast_furnace"}'} replace
execute as @e[tag=advanced_blast_furnace_placer] store result score @s rotation0 run data get entity @s Rotation[0]
execute as @e[tag=advanced_blast_furnace_placer] if score @s rotation0 matches 45 run scoreboard players set @s rotation0 0
execute as @e[tag=advanced_blast_furnace_placer] if score @s rotation0 matches -45 run scoreboard players set @s rotation0 0
execute as @e[tag=advanced_blast_furnace_placer] if score @s rotation0 matches 135 run scoreboard players set @s rotation0 -180
execute as @e[tag=advanced_blast_furnace_placer] if score @s rotation0 matches -135 run scoreboard players set @s rotation0 -180
execute as @e[tag=advanced_blast_furnace_placer] if score @s rotation0 matches 0 at @s run summon minecraft:armor_stand ~ ~1 ~ {Silent:1b,CustomNameVisible:0b,NoGravity:1b,Invulnerable:1b,Small:1b,Marker:1b,Invisible:1b,Tags:["advanced_blast_furnace_fake_block"],ArmorItems:[{},{},{},{id:"minecraft:wooden_sword",Count:1b,tag:{CustomModelData:10300,fakeBlock:1,advancedBlastFurnace:1}}]}
execute as @e[tag=advanced_blast_furnace_placer] if score @s rotation0 matches 90 at @s run summon minecraft:armor_stand ~ ~1 ~ {Pose:{Head:[0f,90f,0f]},Silent:1b,CustomNameVisible:0b,NoGravity:1b,Invulnerable:1b,Small:1b,Marker:1b,Invisible:1b,Tags:["advanced_blast_furnace_fake_block"],ArmorItems:[{},{},{},{id:"minecraft:wooden_sword",Count:1b,tag:{CustomModelData:10300,fakeBlock:1,advancedBlastFurnace:1}}]}
execute as @e[tag=advanced_blast_furnace_placer] if score @s rotation0 matches -90 at @s run summon minecraft:armor_stand ~ ~1 ~ {Pose:{Head:[0f,-90f,0f]},Silent:1b,CustomNameVisible:0b,NoGravity:1b,Invulnerable:1b,Small:1b,Marker:1b,Invisible:1b,Tags:["advanced_blast_furnace_fake_block"],ArmorItems:[{},{},{},{id:"minecraft:wooden_sword",Count:1b,tag:{CustomModelData:10300,fakeBlock:1,advancedBlastFurnace:1}}]}
execute as @e[tag=advanced_blast_furnace_placer] if score @s rotation0 matches -180 at @s run summon minecraft:armor_stand ~ ~1 ~ {Pose:{Head:[0f,180f,0f]},Silent:1b,CustomNameVisible:0b,NoGravity:1b,Invulnerable:1b,Small:1b,Marker:1b,Invisible:1b,Tags:["advanced_blast_furnace_fake_block"],ArmorItems:[{},{},{},{id:"minecraft:wooden_sword",Count:1b,tag:{CustomModelData:10300,fakeBlock:1,advancedBlastFurnace:1}}]}
scoreboard players set @e[tag=advanced_blast_furnace,tag=function_place] guiMode 0
scoreboard players set @e[tag=advanced_blast_furnace,tag=function_place] workStatus 0
scoreboard players set @e[tag=advanced_blast_furnace,tag=function_place] setGuiCover 1
scoreboard players set @e[tag=advanced_blast_furnace,tag=function_place] setSmelt 1
scoreboard players set @e[tag=advanced_blast_furnace,tag=function_place] setProcess 1
scoreboard players set @e[tag=advanced_blast_furnace,tag=function_place] setProgress 1
scoreboard players remove @e[tag=advanced_blast_furnace,tag=function_place] workProc1 0
scoreboard players remove @e[tag=advanced_blast_furnace,tag=function_place] workProc1Temp1 0
scoreboard players remove @e[tag=advanced_blast_furnace,tag=function_place] workProc1Temp2 0
kill @e[tag=advanced_blast_furnace_placer]
execute as @e[tag=advanced_blast_furnace,tag=function_place] run tag @s remove function_place

# machine protection
execute as @e[tag=advanced_blast_furnace] at @s positioned as @s run function galaxy:block/protection

# block destroy
execute as @e[tag=advanced_blast_furnace] positioned as @s if block ~ ~ ~ minecraft:air run tag @s add function_destroy
execute as @e[tag=advanced_blast_furnace,tag=function_destroy] at @s run function galaxy:block/machine/summon/advanced_blast_furnace
execute as @e[tag=advanced_blast_furnace,tag=function_destroy] at @s run summon minecraft:armor_stand ~ ~1 ~ {CustomNameVisible:0b,NoGravity:1b,Invulnerable:1b,Small:1b,Marker:1b,Invisible:1b,Tags:["fake_block_remover"]}
execute as @e[tag=fake_block_remover] at @s run kill @e[tag=advanced_blast_furnace_fake_block,distance=..0.25,sort=nearest,limit=1]
execute as @e[tag=fake_block_remover] run kill @s
execute as @e[tag=advanced_blast_furnace,tag=function_destroy] run kill @e[type=minecraft:item,nbt={Item:{tag:{display:{Name:"{\"translate\":\"container.advanced_blast_furnace\"}"}}}}]
execute as @e[tag=advanced_blast_furnace,tag=function_destroy] run kill @s

# relplace the block when GUI contains non-guiItem
execute as @e[tag=advanced_blast_furnace,tag=!initial] at @s positioned as @s if block ~ ~ ~ minecraft:barrel{Items:[{Slot:0b}]} unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:0b,tag:{guiItem:1}}]} run tag @s add function_replace
execute as @e[tag=advanced_blast_furnace,tag=!initial] at @s positioned as @s if block ~ ~ ~ minecraft:barrel{Items:[{Slot:1b}]} unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:1b,tag:{guiItem:1}}]} run tag @s add function_replace
execute as @e[tag=advanced_blast_furnace,tag=!initial] at @s positioned as @s if block ~ ~ ~ minecraft:barrel{Items:[{Slot:3b}]} unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:3b,tag:{guiItem:1}}]} run tag @s add function_replace
execute as @e[tag=advanced_blast_furnace,tag=!initial] at @s positioned as @s if block ~ ~ ~ minecraft:barrel{Items:[{Slot:4b}]} unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:4b,tag:{guiItem:1}}]} run tag @s add function_replace
execute as @e[tag=advanced_blast_furnace,tag=!initial] at @s positioned as @s if block ~ ~ ~ minecraft:barrel{Items:[{Slot:5b}]} unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:5b,tag:{guiItem:1}}]} run tag @s add function_replace
execute as @e[tag=advanced_blast_furnace,tag=!initial] at @s positioned as @s if block ~ ~ ~ minecraft:barrel{Items:[{Slot:6b}]} unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:6b,tag:{guiItem:1}}]} run tag @s add function_replace
execute as @e[tag=advanced_blast_furnace,tag=!initial] at @s positioned as @s if block ~ ~ ~ minecraft:barrel{Items:[{Slot:7b}]} unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:7b,tag:{guiItem:1}}]} run tag @s add function_replace
execute as @e[tag=advanced_blast_furnace,tag=!initial] at @s positioned as @s if block ~ ~ ~ minecraft:barrel{Items:[{Slot:8b}]} unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:8b,tag:{guiItem:1}}]} run tag @s add function_replace
execute as @e[tag=advanced_blast_furnace,tag=!initial] at @s positioned as @s if block ~ ~ ~ minecraft:barrel{Items:[{Slot:9b}]} unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:9b,tag:{guiItem:1}}]} run tag @s add function_replace
execute as @e[tag=advanced_blast_furnace,tag=!initial] at @s positioned as @s if block ~ ~ ~ minecraft:barrel{Items:[{Slot:10b}]} unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:10b,tag:{guiItem:1}}]} run tag @s add function_replace
execute as @e[tag=advanced_blast_furnace,tag=!initial] at @s positioned as @s if block ~ ~ ~ minecraft:barrel{Items:[{Slot:11b}]} unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:11b,tag:{guiItem:1}}]} run tag @s add function_replace
execute as @e[tag=advanced_blast_furnace,tag=!initial] at @s positioned as @s if block ~ ~ ~ minecraft:barrel{Items:[{Slot:12b}]} unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:12b,tag:{guiItem:1}}]} run tag @s add function_replace
execute as @e[tag=advanced_blast_furnace,tag=!initial] at @s positioned as @s if block ~ ~ ~ minecraft:barrel{Items:[{Slot:13b}]} unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:13b,tag:{guiItem:1}}]} run tag @s add function_replace
execute as @e[tag=advanced_blast_furnace,tag=!initial] at @s positioned as @s if block ~ ~ ~ minecraft:barrel{Items:[{Slot:14b}]} unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:14b,tag:{guiItem:1}}]} run tag @s add function_replace
execute as @e[tag=advanced_blast_furnace,tag=!initial] at @s positioned as @s if block ~ ~ ~ minecraft:barrel{Items:[{Slot:16b}]} unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:16b,tag:{guiItem:1}}]} run tag @s add function_replace
execute as @e[tag=advanced_blast_furnace,tag=!initial] at @s positioned as @s if block ~ ~ ~ minecraft:barrel{Items:[{Slot:17b}]} unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:17b,tag:{guiItem:1}}]} run tag @s add function_replace
execute as @e[tag=advanced_blast_furnace,tag=!initial] at @s positioned as @s if block ~ ~ ~ minecraft:barrel{Items:[{Slot:18b}]} unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:18b,tag:{guiItem:1}}]} run tag @s add function_replace
execute as @e[tag=advanced_blast_furnace,tag=!initial] at @s positioned as @s if block ~ ~ ~ minecraft:barrel{Items:[{Slot:19b}]} unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:19b,tag:{guiItem:1}}]} run tag @s add function_replace
execute as @e[tag=advanced_blast_furnace,tag=!initial] at @s positioned as @s if block ~ ~ ~ minecraft:barrel{Items:[{Slot:21b}]} unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:21b,tag:{guiItem:1}}]} run tag @s add function_replace
execute as @e[tag=advanced_blast_furnace,tag=!initial] at @s positioned as @s if block ~ ~ ~ minecraft:barrel{Items:[{Slot:22b}]} unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:22b,tag:{guiItem:1}}]} run tag @s add function_replace
execute as @e[tag=advanced_blast_furnace,tag=!initial] at @s positioned as @s if block ~ ~ ~ minecraft:barrel{Items:[{Slot:23b}]} unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:23b,tag:{guiItem:1}}]} run tag @s add function_replace
execute as @e[tag=advanced_blast_furnace,tag=!initial] at @s positioned as @s if block ~ ~ ~ minecraft:barrel{Items:[{Slot:24b}]} unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:24b,tag:{guiItem:1}}]} run tag @s add function_replace
execute as @e[tag=advanced_blast_furnace,tag=!initial] at @s positioned as @s if block ~ ~ ~ minecraft:barrel{Items:[{Slot:25b}]} unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:25b,tag:{guiItem:1}}]} run tag @s add function_replace
execute as @e[tag=advanced_blast_furnace,tag=!initial] at @s positioned as @s if block ~ ~ ~ minecraft:barrel{Items:[{Slot:26b}]} unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:26b,tag:{guiItem:1}}]} run tag @s add function_replace
execute as @e[tag=advanced_blast_furnace,tag=!initial,tag=function_replace] at @s positioned as @s run function galaxy:gui/delete-gui_item
execute as @e[tag=advanced_blast_furnace,tag=!initial,tag=function_replace] at @s positioned as @s run setblock ~ ~ ~ minecraft:air destroy
execute as @e[tag=advanced_blast_furnace,tag=!initial,tag=function_replace] run kill @e[type=minecraft:item,nbt={Item:{tag:{display:{Name:"{\"translate\":\"container.advanced_blast_furnace\"}"}}}}]
execute as @e[tag=advanced_blast_furnace,tag=!initial,tag=function_replace] at @s positioned as @s run setblock ~ ~ ~ minecraft:barrel{CustomName:"{\"translate\":\"container.advanced_blast_furnace\"}"} replace
execute as @e[tag=advanced_blast_furnace,tag=!initial,tag=function_replace] run tag @s remove function_replace

# working status
execute as @e[tag=advanced_blast_furnace,tag=function_change_status] at @s if score @s workStatus matches 0 run summon minecraft:armor_stand ~ ~1 ~ {CustomNameVisible:0b,NoGravity:1b,Invulnerable:1b,Small:1b,Marker:1b,Invisible:1b,Tags:["advanced_blast_furnace","fake_block_changer","status_0"]}
execute as @e[tag=advanced_blast_furnace,tag=function_change_status] at @s if score @s workStatus matches 1 run summon minecraft:armor_stand ~ ~1 ~ {CustomNameVisible:0b,NoGravity:1b,Invulnerable:1b,Small:1b,Marker:1b,Invisible:1b,Tags:["advanced_blast_furnace","fake_block_changer","status_1"]}
execute as @e[tag=advanced_blast_furnace,tag=fake_block_changer,tag=status_0] at @s run replaceitem entity @e[tag=advanced_blast_furnace_fake_block,distance=..0.25,sort=nearest,limit=1] armor.head minecraft:wooden_sword{CustomModelData:10300,fakeBlock:1,advancedBlastFurnace:1}
execute as @e[tag=advanced_blast_furnace,tag=fake_block_changer,tag=status_1] at @s run replaceitem entity @e[tag=advanced_blast_furnace_fake_block,distance=..0.25,sort=nearest,limit=1] armor.head minecraft:wooden_sword{CustomModelData:10301,fakeBlock:1,advancedBlastFurnace:1}
execute as @e[tag=advanced_blast_furnace,tag=fake_block_changer] run kill @s
execute as @e[tag=advanced_blast_furnace,tag=function_change_status] run tag @s remove function_change_status

# gui function
execute as @e[tag=advanced_blast_furnace] at @s positioned as @s run function galaxy:gui/advanced_blast_furnace


execute as @e[tag=advanced_blast_furnace,tag=initial] run tag @s remove initial
