scoreboard players set @s isOffHandPistol 0
scoreboard players set @s styleSecPistol 0
scoreboard players set @s[predicate=galaxy:weapon/hand-off_pistol] isOffHandPistol 1
execute if predicate galaxy:weapon/hand-off_pistol store result score @s styleSecPistol run data get entity @s Inventory[{Slot:-106b}].tag.type
