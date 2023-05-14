data modify storage galaxy:temp +entity.katana_display_stand.build_display.item set value {id:"minecraft:netherite_sword",Count:1b,tag:{CustomModelData:100}}

scoreboard players set #1 temp 100100
scoreboard players set #2 temp 1000
scoreboard players set #3 temp 100
scoreboard players set #4 temp 10
scoreboard players operation #5 temp = @s galaxy.entity.katana_display_stand.type
scoreboard players operation #6 temp = @s galaxy.entity.states.katana_display_stand.style
execute store result score #7 temp store result score #8 temp run data get entity @s data.galaxy.katana_display_stand.item.tag.CustomModelData

scoreboard players operation #7 temp %= #10 num
scoreboard players remove #8 temp 100000
scoreboard players operation #8 temp /= #1000 num

scoreboard players remove #5 temp 1
scoreboard players remove #6 temp 1

scoreboard players operation #2 temp *= #8 temp
scoreboard players operation #3 temp *= #5 temp
scoreboard players operation #4 temp *= #7 temp

scoreboard players operation #1 temp += #2 temp
scoreboard players operation #1 temp += #3 temp
scoreboard players operation #1 temp += #4 temp
scoreboard players operation #1 temp += #6 temp

execute store result storage galaxy:temp +entity.katana_display_stand.build_display.item.tag.CustomModelData int 1 run scoreboard players get #1 temp
execute if score @s galaxy.entity.katana_display_stand.type matches 1 if score #7 temp matches 0 store result storage galaxy:temp +entity.katana_display_stand.build_display.item.tag.CustomModelData int 1 run scoreboard players add #1 temp 10
data modify entity @e[tag=galaxy._tag.katana_display_stand.ThisDisplayItem1,limit=1] item set from storage galaxy:temp +entity.katana_display_stand.build_display.item

execute if score @s galaxy.entity.katana_display_stand.type matches 1 run data remove entity @e[tag=galaxy._tag.katana_display_stand.ThisDisplayItem2,limit=1] item
execute if score @s galaxy.entity.katana_display_stand.type matches 1 if score #7 temp matches 0 store result storage galaxy:temp +entity.katana_display_stand.build_display.item.tag.CustomModelData int 1 run scoreboard players add #1 temp 10
execute if score @s galaxy.entity.katana_display_stand.type matches 1 if score #7 temp matches 0 run data modify entity @e[tag=galaxy._tag.katana_display_stand.ThisDisplayItem2,limit=1] item set from storage galaxy:temp +entity.katana_display_stand.build_display.item

data remove storage galaxy:temp +entity.katana_display_stand.build_display.item
