function galaxy:weapon/katana/meta/detector/style-edge

data modify storage galaxy:get item set value []
function galaxy:weapon/katana/get/katana
data modify storage cu:replaceitem item set from storage galaxy:get item[0]
function galaxy:weapon/katana/replaceitem/calculate_cmd-katana
execute store result storage cu:replaceitem item.tag.CustomModelData int 1 run scoreboard players get @s modelKatana
execute store result storage cu:replaceitem item.tag.katana.style byte 1 run scoreboard players get @s styleEdge
function cu:replaceitem/hand_off
replaceitem entity @s weapon.mainhand minecraft:air
