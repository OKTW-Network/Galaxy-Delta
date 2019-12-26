scoreboard players set @s isMainHandPistol 0
scoreboard players set @s styleMainPistol 0
scoreboard players set @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{pistol:1}}}] isMainHandPistol 1
execute if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{pistol:1}}}] store result score @s styleMainPistol run data get entity @s SelectedItem.tag.type
