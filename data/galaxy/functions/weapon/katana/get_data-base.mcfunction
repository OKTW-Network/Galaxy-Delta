execute store result score @s ktnStlScabbard store result score @s ktnStlEdge run scoreboard players set @s ktnStlKatana 0

execute if predicate galaxy:weapon/hand_off-katana store result score @s ktnStlKatana run data get entity @s Inventory[{Slot:-106b}].tag.CustomData.galaxy.tag.style
execute if predicate galaxy:weapon/hand_off-katana_scabbard store result score @s ktnStlScabbard run data get entity @s Inventory[{Slot:-106b}].tag.CustomData.galaxy.tag.style
execute if predicate galaxy:weapon/hand_main-katana_edge store result score @s ktnStlEdge run data get entity @s SelectedItem.tag.CustomData.galaxy.tag.style
