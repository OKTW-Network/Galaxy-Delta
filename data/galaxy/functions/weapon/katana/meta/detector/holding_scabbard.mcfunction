scoreboard players set @s isHoldScabbard 0
scoreboard players set @s styleScabbard 0
scoreboard players set @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:carrot_on_a_stick",tag:{scabbard:1}}]}] isHoldScabbard 1
execute if entity @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:carrot_on_a_stick",tag:{scabbard:1}}]}] store result score @s styleScabbard run data get entity @s Inventory[{Slot:-106b}].tag.type
