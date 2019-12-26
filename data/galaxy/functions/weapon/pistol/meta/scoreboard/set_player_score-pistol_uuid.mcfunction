execute store result score @s MhPistolUUIDM run data get entity @s SelectedItem.tag.miniUUIDMost
execute store result score @s MhPistolUUIDL run data get entity @s SelectedItem.tag.miniUUIDLeast

execute store result score @s FhPistolUUIDM run data get entity @s Inventory[{Slot:-106b}].tag.miniUUIDMost
execute store result score @s FhPistolUUIDL run data get entity @s Inventory[{Slot:-106b}].tag.miniUUIDLeast

tag @s add InitializedPistolUUIDScore
