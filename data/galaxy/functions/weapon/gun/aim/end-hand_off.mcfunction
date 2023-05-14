data modify storage cu:get item set value []
function cu:get/hand_off
data modify storage galaxy:temp +weapon.gun.aim.item set from storage cu:get item[0]
execute store result score #2 temp store result score #3 temp run data get storage galaxy:temp +weapon.gun.aim.item.tag.CustomModelData

scoreboard players operation #3 temp %= #10 num
scoreboard players operation #2 temp -= #3 temp

execute store result storage galaxy:temp +weapon.gun.aim.item.tag.CustomData.galaxy.tag.status int 1 run scoreboard players set #1 temp 0
execute store result storage galaxy:temp +weapon.gun.aim.item.tag.CustomModelData int 1 run scoreboard players get #2 temp
data modify storage cu:item replaceitem.input set from storage galaxy:temp +weapon.gun.aim.item
function cu:item/replaceitem/hand_off

tag @s remove galaxy._tag.gun.aiming
