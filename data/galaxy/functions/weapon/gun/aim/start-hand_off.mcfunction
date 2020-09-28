data modify storage cu:get item set value []
function cu:get/hand_off
data modify storage galaxy:temp item set from storage cu:get item[0]
execute store result score #2 calcu_temp store result score #3 calcu_temp run data get storage galaxy:temp item.tag.CustomModelData

execute if predicate galaxy:weapon/hands-gun_mode-dual run scoreboard players set #1 calcu_temp 2

execute if score #1 calcu_temp matches 2 run scoreboard players operation #3 calcu_temp %= #100 num
execute if score #1 calcu_temp matches 2 run scoreboard players operation #2 calcu_temp -= #3 calcu_temp
execute if score #1 calcu_temp matches 2 run scoreboard players operation #2 calcu_temp += #1 calcu_temp

execute store result storage galaxy:temp item.tag.gun.status int 1 run scoreboard players get #1 calcu_temp
execute store result storage galaxy:temp item.tag.CustomModelData int 1 run scoreboard players get #2 calcu_temp
data modify storage cu:replaceitem item set from storage galaxy:temp item
function cu:replaceitem/hand_off

tag @s add Aiming
