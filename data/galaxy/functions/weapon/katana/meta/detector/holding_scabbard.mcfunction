scoreboard players set @s isHoldScabbard 0
scoreboard players set @s styleScabbard 0
scoreboard players set @s[predicate=galaxy:weapon/hand-off_katana-scabbard] isHoldScabbard 1
execute if predicate galaxy:weapon/hand-off_katana-scabbard store result score @s styleScabbard run data get entity @s Inventory[{Slot:-106b}].tag.type
