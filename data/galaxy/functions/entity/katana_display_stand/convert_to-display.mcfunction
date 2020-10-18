scoreboard players set #1 calcu_temp 110400
scoreboard players set #2 calcu_temp 10000
scoreboard players set #3 calcu_temp 100
scoreboard players set #4 calcu_temp 10
scoreboard players operation #5 calcu_temp = @s kdsType
scoreboard players operation #6 calcu_temp = @s kdsStatus
scoreboard players operation #7 calcu_temp = @s kdsDisplayType
scoreboard players operation #8 calcu_temp = @s kdsDisplayStyle

scoreboard players remove #5 calcu_temp 1
scoreboard players remove #6 calcu_temp 1
scoreboard players remove #7 calcu_temp 1
scoreboard players remove #8 calcu_temp 1

scoreboard players operation #2 calcu_temp *= #8 calcu_temp
scoreboard players operation #3 calcu_temp *= #5 calcu_temp
scoreboard players operation #4 calcu_temp *= #7 calcu_temp

scoreboard players operation #1 calcu_temp += #2 calcu_temp
scoreboard players operation #1 calcu_temp += #3 calcu_temp
scoreboard players operation #1 calcu_temp += #4 calcu_temp
scoreboard players operation #1 calcu_temp += #6 calcu_temp

execute store result entity @s HandItems[0].tag.CustomModelData int 1 run scoreboard players get #1 calcu_temp

execute if score @s kdsType matches 1 if score @s kdsDisplayType matches 1 run replaceitem entity @s weapon.offhand diamond_sword{entityItem:1b}
execute if score @s kdsType matches 1 if score @s kdsDisplayType matches 1 store result entity @s HandItems[0].tag.CustomModelData int 1 run scoreboard players add #1 calcu_temp 10
execute if score @s kdsType matches 1 if score @s kdsDisplayType matches 1 store result entity @s HandItems[1].tag.CustomModelData int 1 run scoreboard players add #1 calcu_temp 10
