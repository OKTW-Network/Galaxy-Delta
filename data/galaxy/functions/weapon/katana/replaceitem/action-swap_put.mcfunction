data modify storage galaxy:temp +weapon.katana.replaceitem.itemTag set from entity @s SelectedItem.tag
data modify storage galaxy:temp +weapon.katana.replaceitem.itemCustomDataTag set from storage galaxy:temp +weapon.katana.replaceitem.itemTag.CustomData.galaxy.tag

data modify storage galaxy:get item set value []
function galaxy:weapon/katana/get/katana
data modify storage cu:item input set from storage galaxy:get item[0]
function galaxy:weapon/katana/replaceitem/calculate_cmd-katana
execute store result storage cu:item input.tag.CustomModelData int 1 run scoreboard players get @s ktnMdlKatana
data modify storage galaxy:temp +weapon.katana.build-lore.itemCustomDataTag set from storage galaxy:temp +weapon.katana.replaceitem.itemCustomDataTag
function galaxy:weapon/katana/build-lore/katana
data modify storage cu:item input.tag.display.Lore set from storage galaxy:temp +weapon.katana.build-lore.result
data modify storage cu:item input.tag.display.Name set from storage galaxy:temp +weapon.katana.replaceitem.itemTag.display.Name
data modify storage cu:item input.tag.CustomData.galaxy.tag set from storage galaxy:temp +weapon.katana.replaceitem.itemCustomDataTag
data modify storage cu:item input.tag.CustomData.galaxy.tag.type set value 1b
function cu:item/replaceitem/hand_off

item replace entity @s weapon.mainhand with minecraft:air
