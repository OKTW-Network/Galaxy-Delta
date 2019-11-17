scoreboard players set @s isHoldSaber 0
scoreboard players set @s statusSaber 0
scoreboard players set @s styleSaber 0
scoreboard players set @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{saber:1}}}] isHoldSaber 1
execute as @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{saber:1}}}] store result score @s statusSaber run data get entity @s SelectedItem.tag.status
execute as @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{saber:1}}}] store result score @s styleSaber run data get entity @s SelectedItem.tag.type
