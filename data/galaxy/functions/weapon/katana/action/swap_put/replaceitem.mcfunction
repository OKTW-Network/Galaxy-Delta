data modify storage galaxy:temp +weapon.katana.transform.input set from entity @s SelectedItem
function galaxy:weapon/katana/transform/to_katana

item replace entity @s weapon.mainhand with minecraft:air
data modify storage cu:item replaceitem.input set from storage galaxy:temp +weapon.katana.transform.result.katana
function cu:item/replaceitem/hand_off
