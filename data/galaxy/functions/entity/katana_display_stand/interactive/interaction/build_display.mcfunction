data modify storage galaxy:temp +entity.katana_display_stand.build_display.item set value {id:"minecraft:netherite_sword",Count:1b,tag:{CustomModelData:100}}

scoreboard players set #1 calcu_temp 100100
scoreboard players set #2 calcu_temp 1000
scoreboard players set #3 calcu_temp 100
scoreboard players set #4 calcu_temp 10
scoreboard players operation #5 calcu_temp = @s galaxy.entity.katana_display_stand.type
scoreboard players operation #6 calcu_temp = @s galaxy.entity.states.katana_display_stand.style
execute store result score #7 calcu_temp store result score #8 calcu_temp run data get entity @s data.galaxy.katana_display_stand.item.tag.CustomModelData

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

execute store result storage galaxy:temp +entity.katana_display_stand.build_display.item.tag.CustomModelData int 1 run scoreboard players get #1 calcu_temp
execute if score @s galaxy.entity.katana_display_stand.type matches 1 if score #7 calcu_temp matches 0 store result storage galaxy:temp +entity.katana_display_stand.build_display.item.tag.CustomModelData int 1 run scoreboard players add #1 calcu_temp 10
data modify entity @e[tag=galaxy._tag.katana_display_stand.ThisDisplayItem1,limit=1] item set from storage galaxy:temp +entity.katana_display_stand.build_display.item

execute if score @s galaxy.entity.katana_display_stand.type matches 1 run data remove entity @e[tag=galaxy._tag.katana_display_stand.ThisDisplayItem2,limit=1] item
execute if score @s galaxy.entity.katana_display_stand.type matches 1 if score #7 calcu_temp matches 0 store result storage galaxy:temp +entity.katana_display_stand.build_display.item.tag.CustomModelData int 1 run scoreboard players add #1 calcu_temp 10
execute if score @s galaxy.entity.katana_display_stand.type matches 1 if score #7 calcu_temp matches 0 run data modify entity @e[tag=galaxy._tag.katana_display_stand.ThisDisplayItem2,limit=1] item set from storage galaxy:temp +entity.katana_display_stand.build_display.item

data remove storage galaxy:temp +entity.katana_display_stand.build_display.item
