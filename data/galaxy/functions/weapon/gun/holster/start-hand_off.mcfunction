data modify storage cu:get item set value []
function cu:get/hand_off
data modify storage galaxy:temp +weapon.gun.holster.item set from storage cu:get item[0]
execute store result score #2 temp store result score #3 temp run data get storage galaxy:temp +weapon.gun.holster.item.tag.CustomModelData

scoreboard players set #1 temp -1

scoreboard players operation #3 temp %= #10 num
scoreboard players operation #2 temp -= #3 temp
scoreboard players add #2 temp 9

execute store result storage galaxy:temp +weapon.gun.holster.item.tag.CustomData.galaxy.tag.status int 1 run scoreboard players get #1 temp
execute store result storage galaxy:temp +weapon.gun.holster.item.tag.CustomModelData int 1 run scoreboard players get #2 temp
data modify storage cu:item replaceitem.input set from storage galaxy:temp +weapon.gun.holster.item
function cu:item/replaceitem/hand_off
