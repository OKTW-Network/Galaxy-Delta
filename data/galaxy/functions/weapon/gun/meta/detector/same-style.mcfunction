scoreboard players set @s styleGunMain 0
scoreboard players set @s styleGunOff 0
execute if predicate galaxy:weapon/hand_main-gun store result score @s styleGunMain run data get entity @s SelectedItem.tag.style
execute if predicate galaxy:weapon/hand_off-gun store result score @s styleGunOff run data get entity @s Inventory[{Slot:-106b}].tag.style

tag @s remove styleGunSame
execute if score @s styleGunMain = @s styleGunOff run tag @s add styleGunSame
