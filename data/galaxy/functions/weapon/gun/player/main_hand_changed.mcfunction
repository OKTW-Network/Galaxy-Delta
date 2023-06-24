execute if entity @s[tag=!galaxy._tag.gun.swapHands,tag=!galaxy._tag.gun.mainHandWasEmpty] run function galaxy:weapon/gun/data/save_from_main_hand/main

execute store result score @s galaxy.gun.mainHandUUID0 run data get entity @s SelectedItem.tag.CustomData.galaxy.tag.assemblyInfo.UUID[0]
execute store result score @s galaxy.gun.mainHandUUID1 run data get entity @s SelectedItem.tag.CustomData.galaxy.tag.assemblyInfo.UUID[1]
execute store result score @s galaxy.gun.mainHandUUID2 run data get entity @s SelectedItem.tag.CustomData.galaxy.tag.assemblyInfo.UUID[2]
execute store result score @s galaxy.gun.mainHandUUID3 run data get entity @s SelectedItem.tag.CustomData.galaxy.tag.assemblyInfo.UUID[3]

execute if entity @s[tag=!galaxy._tag.gun.swapToMainHand] run function galaxy:weapon/gun/data/refresh_main_hand
execute if entity @s[tag=!galaxy._tag.gun.swapToMainHand] run function galaxy:weapon/gun/data/fetch_to_main_hand/main
execute if entity @s[tag=galaxy._tag.gun.swapToMainHand] run function galaxy:weapon/gun/data/swap_to_main_hand
