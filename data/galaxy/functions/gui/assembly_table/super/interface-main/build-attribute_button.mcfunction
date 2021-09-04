execute if entity @s[tag=!update] run function galaxy:gui/assembly_table/super/store-option

scoreboard players operation #1 calcu_temp = @s sbldAttribute
execute if entity @s[tag=!update] unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:0b}]} run scoreboard players remove @s sbldAttribute 1
execute if entity @s[tag=!update] unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:1b}]} run scoreboard players remove @s sbldAttribute 1
execute if entity @s[tag=!update] unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:18b}]} run scoreboard players add @s sbldAttribute 1
execute if entity @s[tag=!update] unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:19b}]} run scoreboard players add @s sbldAttribute 1
execute if score @s sbldAttribute > #global sbldGAtbMax run scoreboard players set @s sbldAttribute 1
execute if score @s sbldAttribute matches ..0 store result score @s sbldAttribute run scoreboard players get #global sbldGAtbMax
execute unless score @s sbldAttribute = #1 calcu_temp run tag @s add getAttribute

execute if entity @s[tag=getAttribute] run function galaxy:gui/assembly_table/super/interface-main/get-attribute
execute if entity @s[tag=getAttribute] run function galaxy:gui/assembly_table/super/get-option
execute if entity @s[tag=getAttribute] run tag @s add setAttribute
execute if entity @s[tag=getAttribute] run tag @s[tag=!galaxy.super_assembler.is_advanced_value] add setValueButton
execute if entity @s[tag=getAttribute] run tag @s[tag=!galaxy.super_assembler.is_advanced_value] add setValue
execute if entity @s[tag=getAttribute] run tag @s[tag=galaxy.super_assembler.is_advanced_value] add setButtonAdvancedValue
execute if entity @s[tag=getAttribute] run tag @s add setCover
tag @s[tag=getAttribute] remove getAttribute

item replace block ~ ~ ~ container.0 with minecraft:gray_stained_glass_pane{display:{Name:'{"translate":"gui.previous","italic":false}'},CustomModelData:10200,guiItem:1}
item replace block ~ ~ ~ container.18 with minecraft:gray_stained_glass_pane{display:{Name:'{"translate":"gui.next","italic":false}'},CustomModelData:10201,guiItem:1}
