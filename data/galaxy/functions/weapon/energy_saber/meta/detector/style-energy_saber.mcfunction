scoreboard players set @s styleSaber 0
execute if predicate galaxy:weapon/hand_main-energy_saber store result score @s styleSaber run data get entity @s SelectedItem.tag.type
