scoreboard players set @s stylePistolOff 0
execute if predicate galaxy:weapon/hand_off-pistol store result score @s stylePistolOff run data get entity @s Inventory[{Slot:-106b}].tag.type
