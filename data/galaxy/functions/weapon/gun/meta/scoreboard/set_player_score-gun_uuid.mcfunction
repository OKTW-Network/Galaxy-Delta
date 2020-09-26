execute store result score @s MhGunUUID0 run data get entity @s SelectedItem.tag.gun.UUID[0]
execute store result score @s MhGunUUID1 run data get entity @s SelectedItem.tag.gun.UUID[1]
execute store result score @s MhGunUUID2 run data get entity @s SelectedItem.tag.gun.UUID[2]
execute store result score @s MhGunUUID3 run data get entity @s SelectedItem.tag.gun.UUID[3]

execute store result score @s FhGunUUID0 run data get entity @s Inventory[{Slot:-106b}].tag.gun.UUID[0]
execute store result score @s FhGunUUID1 run data get entity @s Inventory[{Slot:-106b}].tag.gun.UUID[1]
execute store result score @s FhGunUUID2 run data get entity @s Inventory[{Slot:-106b}].tag.gun.UUID[2]
execute store result score @s FhGunUUID3 run data get entity @s Inventory[{Slot:-106b}].tag.gun.UUID[3]

tag @s add InitializedGalaxyGunUUID
