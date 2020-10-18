scoreboard players set @s styleScabbard 0
execute if predicate galaxy:weapon/hand_off-katana_scabbard store result score @s styleScabbard run data get entity @s Inventory[{Slot:-106b}].tag.katana.style
