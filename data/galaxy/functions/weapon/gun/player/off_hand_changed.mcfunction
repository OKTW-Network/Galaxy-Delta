execute if entity @s[tag=!galaxy._tag.gun.swapHands,tag=!galaxy._tag.gun.offHandWasEmpty] run function galaxy:weapon/gun/data/save_from_off_hand/main

execute store result score @s galaxy.gun.offHandUUID0 run data get entity @s Inventory[{Slot:-106b}].tag.CustomData.galaxy.tag.assemblyInfo.UUID[0]
execute store result score @s galaxy.gun.offHandUUID1 run data get entity @s Inventory[{Slot:-106b}].tag.CustomData.galaxy.tag.assemblyInfo.UUID[1]
execute store result score @s galaxy.gun.offHandUUID2 run data get entity @s Inventory[{Slot:-106b}].tag.CustomData.galaxy.tag.assemblyInfo.UUID[2]
execute store result score @s galaxy.gun.offHandUUID3 run data get entity @s Inventory[{Slot:-106b}].tag.CustomData.galaxy.tag.assemblyInfo.UUID[3]

execute if entity @s[tag=!galaxy._tag.gun.swapToOffHand] run function galaxy:weapon/gun/data/refresh_off_hand
execute if entity @s[tag=!galaxy._tag.gun.swapToOffHand] run function galaxy:weapon/gun/data/fetch_to_off_hand/main
execute if entity @s[tag=galaxy._tag.gun.swapToOffHand] run function galaxy:weapon/gun/data/swap_to_off_hand
