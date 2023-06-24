data modify storage galaxy:temp +weapon.katana.transform.input set from entity @s Inventory[{Slot:-106b}]
function galaxy:weapon/katana/transform/to_blade_and_scabbard

data modify storage cu:item replaceitem.input set from storage galaxy:temp +weapon.katana.transform.result.blade
function cu:item/replaceitem/hand_main

data modify storage cu:item replaceitem.input set from storage galaxy:temp +weapon.katana.transform.result.scabbard
function cu:item/replaceitem/hand_off
