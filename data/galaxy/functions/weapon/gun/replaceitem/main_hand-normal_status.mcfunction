data modify storage galaxy:temp +weapon.gun.transform.input set from entity @s SelectedItem
function galaxy:weapon/gun/transform/to_normal_status

data modify storage cu:item replaceitem.input set from storage galaxy:temp +weapon.gun.transform.result
function cu:item/replaceitem/hand_main
