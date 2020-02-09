scoreboard players set @s stylePistolMain 0
execute if predicate galaxy:weapon/hand_main-pistol store result score @s stylePistolMain run data get entity @s SelectedItem.tag.type
