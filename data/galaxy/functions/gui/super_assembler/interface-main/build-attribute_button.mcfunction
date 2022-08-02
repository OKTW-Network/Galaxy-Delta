execute if entity @s[tag=!update] run function galaxy:gui/super_assembler/store-option

scoreboard players operation #1 calcu_temp = @s galaxy.GUI.attribute.type
execute if entity @s[tag=!update] unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:0b}]} run scoreboard players remove @s galaxy.GUI.attribute.type 1
execute if entity @s[tag=!update] unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:1b}]} run scoreboard players remove @s galaxy.GUI.attribute.type 1
execute if entity @s[tag=!update] unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:18b}]} run scoreboard players add @s galaxy.GUI.attribute.type 1
execute if entity @s[tag=!update] unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:19b}]} run scoreboard players add @s galaxy.GUI.attribute.type 1
execute if score @s galaxy.GUI.attribute.type > #global galaxy.GUI.attribute.typeMax run scoreboard players set @s galaxy.GUI.attribute.type 1
execute if score @s galaxy.GUI.attribute.type matches ..0 store result score @s galaxy.GUI.attribute.type run scoreboard players get #global galaxy.GUI.attribute.typeMax
execute unless score @s galaxy.GUI.attribute.type = #1 calcu_temp run tag @s add getAttribute

execute if entity @s[tag=getAttribute] run function galaxy:gui/super_assembler/interface-main/get-attribute
execute if entity @s[tag=getAttribute] run function galaxy:gui/super_assembler/get-option
execute if entity @s[tag=getAttribute] run tag @s add setAttribute
execute if entity @s[tag=getAttribute] run tag @s[tag=!galaxy.super_assembler.is_advanced_value] add setValueButton
execute if entity @s[tag=getAttribute] run tag @s[tag=!galaxy.super_assembler.is_advanced_value] add setValue
execute if entity @s[tag=getAttribute] run tag @s[tag=galaxy.super_assembler.is_advanced_value] add setButtonAdvancedValue
execute if entity @s[tag=getAttribute] run tag @s add galaxy._task.GUI.buildCover
tag @s[tag=getAttribute] remove getAttribute

item replace block ~ ~ ~ container.0 with minecraft:gray_stained_glass_pane{display:{Name:'{"translate":"gui.previous","italic":false}'},CustomModelData:10200,CustomData:{galaxy:{Type:"gui"}}}
item replace block ~ ~ ~ container.18 with minecraft:gray_stained_glass_pane{display:{Name:'{"translate":"gui.next","italic":false}'},CustomModelData:10201,CustomData:{galaxy:{Type:"gui"}}}
