scoreboard players set @s styleKatana 0
execute if predicate galaxy:weapon/hand_off-katana store result score @s styleKatana run data get entity @s Inventory[{Slot:-106b}].tag.type
