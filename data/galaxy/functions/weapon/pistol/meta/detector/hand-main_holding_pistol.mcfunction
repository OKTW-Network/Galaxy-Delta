scoreboard players set @s isMainHandPistol 0
scoreboard players set @s styleMainPistol 0
scoreboard players set @s[predicate=galaxy:weapon/hand-main_pistol] isMainHandPistol 1
execute if predicate galaxy:weapon/hand-main_pistol store result score @s styleMainPistol run data get entity @s SelectedItem.tag.type
