tag @s[predicate=!galaxy:weapon/hand_main-gun_type2] add galaxy.gunForceEnd
tag @s[tag=GunChanged] add galaxy.gunForceEnd
execute if entity @s[tag=galaxy.gunForceEnd] run function galaxy:weapon/gun/shoot/charge/end
tag @s remove galaxy.gunForceEnd
