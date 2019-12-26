scoreboard players set @s isOffHandPistol 0
scoreboard players set @s styleSecPistol 0
scoreboard players set @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:carrot_on_a_stick",tag:{pistol:1}}]}] isOffHandPistol 1
execute if entity @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:carrot_on_a_stick",tag:{pistol:1}}]}] store result score @s styleSecPistol run data get entity @s Inventory[{Slot:-106b}].tag.type
