data modify storage galaxy:temp +weapon.energy_saber.transform.input set from entity @s SelectedItem
function galaxy:weapon/energy_saber/transform/active

data modify storage cu:item replaceitem.input set from storage galaxy:temp +weapon.energy_saber.transform.result
function cu:item/replaceitem/hand_main
