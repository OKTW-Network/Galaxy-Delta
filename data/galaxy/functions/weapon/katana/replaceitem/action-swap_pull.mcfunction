data modify storage galaxy:temp +weapon.katana.replaceitem.itemTag set from entity @s Inventory[{Slot:-106b}].tag
data modify storage galaxy:temp +weapon.katana.replaceitem.itemCustomDataTag set from storage galaxy:temp +weapon.katana.replaceitem.itemTag.CustomData.galaxy.tag

data modify storage galaxy:get item set value []
function galaxy:weapon/katana/get/katana_edge
data modify storage cu:item input set from storage galaxy:get item[0]
function galaxy:weapon/katana/replaceitem/calculate_cmd-edge
execute store result storage cu:item input.tag.CustomModelData int 1 run scoreboard players get @s ktnMdlEdge
data modify storage galaxy:temp +weapon.katana.build-lore.itemCustomDataTag set from storage galaxy:temp +weapon.katana.replaceitem.itemCustomDataTag
function galaxy:weapon/katana/build-lore/edge
data modify storage cu:item input.tag.display.Lore set from storage galaxy:temp +weapon.katana.build-lore.result
data modify storage cu:item input.tag.display.Name set from storage galaxy:temp +weapon.katana.replaceitem.itemTag.display.Name
data modify storage cu:item input.tag.CustomData.galaxy.tag set from storage galaxy:temp +weapon.katana.replaceitem.itemCustomDataTag
data modify storage cu:item input.tag.CustomData.galaxy.tag.type set value 2b
function cu:item/replaceitem/hand_main

data modify storage galaxy:get item set value []
function galaxy:weapon/katana/get/katana_scabbard
data modify storage cu:item input set from storage galaxy:get item[0]
function galaxy:weapon/katana/replaceitem/calculate_cmd-scabbard
execute store result storage cu:item input.tag.CustomModelData int 1 run scoreboard players get @s ktnMdlScabbard
data modify storage galaxy:temp +weapon.katana.build-lore.itemCustomDataTag set from storage galaxy:temp +weapon.katana.replaceitem.itemCustomDataTag
function galaxy:weapon/katana/build-lore/scabbard
data modify storage cu:item input.tag.display.Lore set from storage galaxy:temp +weapon.katana.build-lore.result
data modify storage cu:item input.tag.CustomData.galaxy.tag set from storage galaxy:temp +weapon.katana.replaceitem.itemCustomDataTag
data modify storage cu:item input.tag.CustomData.galaxy.tag.type set value 3b
function cu:item/replaceitem/hand_off

