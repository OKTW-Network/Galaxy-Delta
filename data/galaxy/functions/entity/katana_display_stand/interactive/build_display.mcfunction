execute if predicate galaxy:entity/katana_display_stand/hand_main-displayable run data modify entity @s ArmorItems[3].tag.CustomData.galaxy.data.displayOriginalItem set from entity @s HandItems[0]

item replace entity @s weapon.mainhand with minecraft:netherite_sword{CustomModelData:100,CustomData:{galaxy:{Type:"display",convertToItem:{},display:{purpose:"katana_display_stand"}}}}
item replace entity @s weapon.offhand with minecraft:air
execute if score @s galaxy.entity.katana_display_stand.type matches 1 run item replace entity @s weapon.offhand with netherite_sword{CustomModelData:100,CustomData:{galaxy:{Type:"display",display:{purpose:"katana_display_stand",minor:1b}}}}

scoreboard players set #1 calcu_temp 100100
scoreboard players set #2 calcu_temp 1000
scoreboard players set #3 calcu_temp 100
scoreboard players set #4 calcu_temp 10
scoreboard players operation #5 calcu_temp = @s galaxy.entity.katana_display_stand.type
scoreboard players operation #6 calcu_temp = @s galaxy.entity.states.katana_display_stand.style
execute store result score #7 calcu_temp store result score #8 calcu_temp run data get entity @s ArmorItems[3].tag.CustomData.galaxy.data.displayOriginalItem.tag.CustomModelData

scoreboard players operation #7 calcu_temp %= #10 num
scoreboard players remove #8 calcu_temp 100000
scoreboard players operation #8 calcu_temp /= #1000 num

scoreboard players remove #5 calcu_temp 1
scoreboard players remove #6 calcu_temp 1

scoreboard players operation #2 calcu_temp *= #8 calcu_temp
scoreboard players operation #3 calcu_temp *= #5 calcu_temp
scoreboard players operation #4 calcu_temp *= #7 calcu_temp

scoreboard players operation #1 calcu_temp += #2 calcu_temp
scoreboard players operation #1 calcu_temp += #3 calcu_temp
scoreboard players operation #1 calcu_temp += #4 calcu_temp
scoreboard players operation #1 calcu_temp += #6 calcu_temp

execute store result entity @s HandItems[0].tag.CustomModelData int 1 run scoreboard players get #1 calcu_temp
execute if score @s galaxy.entity.katana_display_stand.type matches 1 if score #7 calcu_temp matches 0 store result entity @s HandItems[0].tag.CustomModelData int 1 run scoreboard players add #1 calcu_temp 10
execute if score @s galaxy.entity.katana_display_stand.type matches 1 if score #7 calcu_temp matches 0 store result entity @s HandItems[1].tag.CustomModelData int 1 run scoreboard players add #1 calcu_temp 10

data modify entity @s HandItems[0].tag.CustomData.galaxy.convertToItem set from entity @s ArmorItems[3].tag.CustomData.galaxy.data.displayOriginalItem

tag @s add galaxy._tag.katana_display_stand.displaying
