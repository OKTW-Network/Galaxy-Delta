scoreboard players set @s isHoldKatana 0
scoreboard players set @s styleKatana 0
scoreboard players set @s[predicate=galaxy:weapon/hand_off-katana] isHoldKatana 1
execute if predicate galaxy:weapon/hand_off-katana store result score @s styleKatana run data get entity @s Inventory[{Slot:-106b}].tag.type
