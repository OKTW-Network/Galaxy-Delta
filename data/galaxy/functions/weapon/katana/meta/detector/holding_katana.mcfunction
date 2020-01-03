scoreboard players set @s isHoldKatana 0
scoreboard players set @s styleKatana 0
scoreboard players set @s[predicate=galaxy:weapon/hand-off_katana] isHoldKatana 1
execute if predicate galaxy:weapon/hand-off_katana store result score @s styleKatana run data get entity @s Inventory[{Slot:-106b}].tag.type
