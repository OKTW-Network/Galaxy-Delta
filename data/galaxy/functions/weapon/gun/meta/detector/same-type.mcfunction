scoreboard players set @s typeGunMain 0
scoreboard players set @s typeGunOff 0
execute if predicate galaxy:weapon/hand_main-gun store result score @s typeGunMain run data get entity @s SelectedItem.tag.type
execute if predicate galaxy:weapon/hand_off-gun store result score @s typeGunOff run data get entity @s Inventory[{Slot:-106b}].tag.type

tag @s remove typeGunSame
execute if score @s typeGunMain = @s typeGunOff run tag @s add typeGunSame
