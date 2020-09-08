execute store result score #1 calcu_temp run data get entity @s SelectedItem.tag.UUID[0]
execute store result score #2 calcu_temp run data get entity @s SelectedItem.tag.UUID[1]
execute store result score #3 calcu_temp run data get entity @s SelectedItem.tag.UUID[2]
execute store result score #4 calcu_temp run data get entity @s SelectedItem.tag.UUID[3]
execute unless score #1 calcu_temp = @s MhGunUUID0 run tag @s add MhGunChanged
execute unless score #2 calcu_temp = @s MhGunUUID1 run tag @s add MhGunChanged
execute unless score #3 calcu_temp = @s MhGunUUID2 run tag @s add MhGunChanged
execute unless score #4 calcu_temp = @s MhGunUUID3 run tag @s add MhGunChanged

execute if entity @s[tag=MhGunChanged] if score #1 calcu_temp = @s FhGunUUID0 if score #2 calcu_temp = @s FhGunUUID1 if score #3 calcu_temp = @s FhGunUUID2 if score #4 calcu_temp = @s FhGunUUID3 run tag @s add MhGunSwap
