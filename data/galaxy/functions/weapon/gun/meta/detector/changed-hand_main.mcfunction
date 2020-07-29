execute store result score #calculation_temp1 numeric run data get entity @s SelectedItem.tag.UUID[0]
execute store result score #calculation_temp2 numeric run data get entity @s SelectedItem.tag.UUID[1]
execute store result score #calculation_temp3 numeric run data get entity @s SelectedItem.tag.UUID[2]
execute store result score #calculation_temp4 numeric run data get entity @s SelectedItem.tag.UUID[3]
execute unless score #calculation_temp1 numeric = @s MhGunUUID0 run tag @s add MhGunChanged
execute unless score #calculation_temp2 numeric = @s MhGunUUID1 run tag @s add MhGunChanged
execute unless score #calculation_temp3 numeric = @s MhGunUUID2 run tag @s add MhGunChanged
execute unless score #calculation_temp4 numeric = @s MhGunUUID3 run tag @s add MhGunChanged

execute if entity @s[tag=MhGunChanged] if score #calculation_temp1 numeric = @s FhGunUUID0 if score #calculation_temp2 numeric = @s FhGunUUID1 if score #calculation_temp3 numeric = @s FhGunUUID2 if score #calculation_temp4 numeric = @s FhGunUUID3 run tag @s add MhGunSwap
