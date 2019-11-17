scoreboard players set @s isHoldEdge 0
scoreboard players set @s styleEdge 0
scoreboard players set @s[nbt={SelectedItem:{id:"minecraft:diamond_sword",tag:{edge:1}}}] isHoldEdge 1
execute if entity @s[nbt={SelectedItem:{id:"minecraft:diamond_sword",tag:{edge:1}}}] store result score @s styleEdge run data get entity @s SelectedItem.tag.type
