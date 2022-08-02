scoreboard players reset #katana.style.katana galaxy
scoreboard players reset #katana.style.katana_scabbard galaxy
scoreboard players reset #katana.style.katana_edge galaxy

execute if predicate galaxy:weapon/hand_off-katana store result score #katana.style.katana galaxy run data get entity @s Inventory[{Slot:-106b}].tag.CustomData.galaxy.tag.style
execute if predicate galaxy:weapon/hand_off-katana_scabbard store result score #katana.style.katana_scabbard galaxy run data get entity @s Inventory[{Slot:-106b}].tag.CustomData.galaxy.tag.style
execute if predicate galaxy:weapon/hand_main-katana_edge store result score #katana.style.katana_edge galaxy run data get entity @s SelectedItem.tag.CustomData.galaxy.tag.style
