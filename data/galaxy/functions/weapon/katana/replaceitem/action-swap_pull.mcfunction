function galaxy:weapon/katana/meta/detector/style-katana

data modify storage galaxy:get item set value []
function galaxy:weapon/katana/get/katana_edge
data modify storage cu:replaceitem item set from storage galaxy:get item[0]
function galaxy:weapon/katana/replaceitem/calculate_cmd-edge
execute store result storage cu:replaceitem item.tag.CustomModelData int 1 run scoreboard players get @s modelEdge
execute store result storage cu:replaceitem item.tag.katana.style byte 1 run scoreboard players get @s styleKatana
function cu:replaceitem/hand_main

data modify storage galaxy:get item set value []
function galaxy:weapon/katana/get/katana_scabbard
data modify storage cu:replaceitem item set from storage galaxy:get item[0]
function galaxy:weapon/katana/replaceitem/calculate_cmd-scabbard
execute store result storage cu:replaceitem item.tag.CustomModelData int 1 run scoreboard players get @s modelScabbard
execute store result storage cu:replaceitem item.tag.katana.style byte 1 run scoreboard players get @s styleKatana
function cu:replaceitem/hand_off

