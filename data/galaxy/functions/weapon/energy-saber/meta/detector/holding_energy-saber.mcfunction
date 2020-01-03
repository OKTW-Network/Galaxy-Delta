scoreboard players set @s isHoldSaber 0
scoreboard players set @s statusSaber 0
scoreboard players set @s styleSaber 0
scoreboard players set @s[predicate=galaxy:weapon/hand-main_energy-saber] isHoldSaber 1
execute if predicate galaxy:weapon/hand-main_energy-saber store result score @s statusSaber run data get entity @s SelectedItem.tag.status
execute if predicate galaxy:weapon/hand-main_energy-saber store result score @s styleSaber run data get entity @s SelectedItem.tag.type
