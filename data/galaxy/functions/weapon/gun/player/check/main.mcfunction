execute store result score #weapon.gun.UUID.mainHand0 galaxy run data get entity @s SelectedItem.tag.CustomData.galaxy.tag.assemblyInfo.UUID[0]
execute store result score #weapon.gun.UUID.mainHand1 galaxy run data get entity @s SelectedItem.tag.CustomData.galaxy.tag.assemblyInfo.UUID[1]
execute store result score #weapon.gun.UUID.mainHand2 galaxy run data get entity @s SelectedItem.tag.CustomData.galaxy.tag.assemblyInfo.UUID[2]
execute store result score #weapon.gun.UUID.mainHand3 galaxy run data get entity @s SelectedItem.tag.CustomData.galaxy.tag.assemblyInfo.UUID[3]
execute store result score #weapon.gun.UUID.offHand0 galaxy run data get entity @s Inventory[{Slot:-106b}].tag.CustomData.galaxy.tag.assemblyInfo.UUID[0]
execute store result score #weapon.gun.UUID.offHand1 galaxy run data get entity @s Inventory[{Slot:-106b}].tag.CustomData.galaxy.tag.assemblyInfo.UUID[1]
execute store result score #weapon.gun.UUID.offHand2 galaxy run data get entity @s Inventory[{Slot:-106b}].tag.CustomData.galaxy.tag.assemblyInfo.UUID[2]
execute store result score #weapon.gun.UUID.offHand3 galaxy run data get entity @s Inventory[{Slot:-106b}].tag.CustomData.galaxy.tag.assemblyInfo.UUID[3]

execute if predicate galaxy:weapon/gun/main_hand run function galaxy:weapon/gun/player/check/main_hand
execute if predicate galaxy:weapon/gun/off_hand run function galaxy:weapon/gun/player/check/off_hand

execute if entity @s[tag=galaxy._tag.gun.mainHandChanged] if score #weapon.gun.UUID.mainHand0 galaxy = @s galaxy.gun.offHandUUID0 if score #weapon.gun.UUID.mainHand1 galaxy = @s galaxy.gun.offHandUUID1 if score #weapon.gun.UUID.mainHand2 galaxy = @s galaxy.gun.offHandUUID2 if score #weapon.gun.UUID.mainHand3 galaxy = @s galaxy.gun.offHandUUID3 run tag @s add galaxy._tag.gun.swapToMainHand
execute if entity @s[tag=galaxy._tag.gun.offHandChanged] if score #weapon.gun.UUID.offHand0 galaxy = @s galaxy.gun.mainHandUUID0 if score #weapon.gun.UUID.offHand1 galaxy = @s galaxy.gun.mainHandUUID1 if score #weapon.gun.UUID.offHand2 galaxy = @s galaxy.gun.mainHandUUID2 if score #weapon.gun.UUID.offHand3 galaxy = @s galaxy.gun.mainHandUUID3 run tag @s add galaxy._tag.gun.swapToOffHand

tag @s[tag=galaxy._tag.gun.mainHandChanged] add galaxy._tag.gun.changed
tag @s[tag=galaxy._tag.gun.offHandChanged] add galaxy._tag.gun.changed
tag @s[tag=galaxy._tag.gun.swapToMainHand,tag=galaxy._tag.gun.swapToOffHand] add galaxy._tag.gun.swapHands
