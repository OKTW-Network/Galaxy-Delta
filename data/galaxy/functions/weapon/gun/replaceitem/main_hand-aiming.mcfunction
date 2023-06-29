data modify storage galaxy:temp +weapon.gun.transform.input set from entity @s SelectedItem
execute if predicate galaxy:weapon/gun/posture/dual_wield_pistol run scoreboard players set #weapon.gun.transform.dualWield galaxy 1
function galaxy:weapon/gun/transform/to_aiming

data modify storage cu:item replaceitem.input set from storage galaxy:temp +weapon.gun.transform.result
function cu:item/replaceitem/main_hand
