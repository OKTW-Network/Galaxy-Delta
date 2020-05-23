execute store result score @s MhGunUUIDM run data get entity @s SelectedItem.tag.miniUUIDMost
execute store result score @s MhGunUUIDL run data get entity @s SelectedItem.tag.miniUUIDLeast

execute store result score @s FhGunUUIDM run data get entity @s Inventory[{Slot:-106b}].tag.miniUUIDMost
execute store result score @s FhGunUUIDL run data get entity @s Inventory[{Slot:-106b}].tag.miniUUIDLeast

tag @s add InitializedGalaxyGunUUIDScore
