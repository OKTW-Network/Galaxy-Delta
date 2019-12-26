execute as @a run function galaxy:weapon/pistol/meta/detector/holding_pistol

execute as @a unless score @s holdPistol matches 0 run function galaxy:weapon/pistol/meta/detector/change_pistol
