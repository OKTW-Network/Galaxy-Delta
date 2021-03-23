data modify storage galaxy:temp katana.replaceitem.itemTag set from entity @s Inventory[{Slot:-106b}].tag
data modify storage galaxy:temp katana.replaceitem.itemCustomDataTag set from storage galaxy:temp katana.replaceitem.itemTag.CustomData.galaxy.tag

data modify storage galaxy:get item set value []
function galaxy:weapon/katana/get/katana_edge
data modify storage cu:replaceitem item set from storage galaxy:get item[0]
function galaxy:weapon/katana/replaceitem/calculate_cmd-edge
execute store result storage cu:replaceitem item.tag.CustomModelData int 1 run scoreboard players get @s ktnMdlEdge
data modify storage galaxy:temp katana.build-lore.itemCustomDataTag set from storage galaxy:temp katana.replaceitem.itemCustomDataTag
function galaxy:weapon/katana/build-lore/edge
data modify storage cu:replaceitem item.tag.display.Lore set from storage galaxy:temp katana.build-lore.result
data modify storage cu:replaceitem item.tag.display.Name set from storage galaxy:temp katana.replaceitem.itemTag.display.Name
data modify storage cu:replaceitem item.tag.CustomData.galaxy.tag set from storage galaxy:temp katana.replaceitem.itemCustomDataTag
data modify storage cu:replaceitem item.tag.CustomData.galaxy.tag.type set value 2b
function cu:replaceitem/hand_main

data modify storage galaxy:get item set value []
function galaxy:weapon/katana/get/katana_scabbard
data modify storage cu:replaceitem item set from storage galaxy:get item[0]
function galaxy:weapon/katana/replaceitem/calculate_cmd-scabbard
execute store result storage cu:replaceitem item.tag.CustomModelData int 1 run scoreboard players get @s ktnMdlScabbard
data modify storage galaxy:temp katana.build-lore.itemCustomDataTag set from storage galaxy:temp katana.replaceitem.itemCustomDataTag
function galaxy:weapon/katana/build-lore/scabbard
data modify storage cu:replaceitem item.tag.display.Lore set from storage galaxy:temp katana.build-lore.result
data modify storage cu:replaceitem item.tag.CustomData.galaxy.tag set from storage galaxy:temp katana.replaceitem.itemCustomDataTag
data modify storage cu:replaceitem item.tag.CustomData.galaxy.tag.type set value 3b
function cu:replaceitem/hand_off

