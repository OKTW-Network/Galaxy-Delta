scoreboard players set @s isHoldKatana 0
scoreboard players set @s styleKatana 0
scoreboard players set @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:carrot_on_a_stick",tag:{katana:1}}]}] isHoldKatana 1
execute if score @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:carrot_on_a_stick",tag:{katana:1}}]}] store result score @s styleKatana run data get entity @s Inventory[{Slot:-106b}].tag.type
