execute unless score @s galaxy.gun.requestShoot matches 101 run function galaxy:weapon/gun/shoot/get_data/main_hand
execute if score @s galaxy.gun.requestShoot matches 101 run function galaxy:weapon/gun/shoot/get_data/off_hand

execute store result score #gun.shoot.interval.mainHand galaxy run data get entity @s SelectedItem.tag.CustomData.galaxy.tag.interval
execute store result score #gun.shoot.interval.offHand galaxy run data get entity @s Inventory[{Slot:-106b}].tag.CustomData.galaxy.tag.interval
