scoreboard players set @s holdSaber 0
scoreboard players set @s statusSaber 0
scoreboard players set @s styleSaber 0
scoreboard players set @s[predicate=galaxy:weapon/hand_main-energy_saber] holdSaber 1
execute if predicate galaxy:weapon/hand_main-energy_saber store result score @s statusSaber run data get entity @s SelectedItem.tag.status
execute if predicate galaxy:weapon/hand_main-energy_saber store result score @s styleSaber run data get entity @s SelectedItem.tag.type
