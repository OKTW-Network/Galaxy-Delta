data modify storage cu:get item set value []
function cu:get/hand_main
data modify storage galaxy:temp +weapon.gun.aim.item set from storage cu:get item[0]
execute store result score #2 calcu_temp store result score #3 calcu_temp run data get storage galaxy:temp +weapon.gun.aim.item.tag.CustomModelData

scoreboard players set #1 calcu_temp 1
execute if predicate galaxy:weapon/hands-gun_special-dual run scoreboard players set #1 calcu_temp 2

scoreboard players operation #3 calcu_temp %= #100 num
scoreboard players operation #2 calcu_temp -= #3 calcu_temp
scoreboard players operation #2 calcu_temp += #1 calcu_temp

execute store result storage galaxy:temp +weapon.gun.aim.item.tag.CustomData.galaxy.tag.status int 1 run scoreboard players set #1 calcu_temp 1
execute store result storage galaxy:temp +weapon.gun.aim.item.tag.CustomModelData int 1 run scoreboard players get #2 calcu_temp
data modify storage cu:item input set from storage galaxy:temp +weapon.gun.aim.item
function cu:item/replaceitem/hand_main

tag @s add galaxy.gun.aiming
