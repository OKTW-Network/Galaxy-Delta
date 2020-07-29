execute store result score #calculation_temp1 numeric run data get entity @s Inventory[{Slot:-106b}].tag.UUID[0]
execute store result score #calculation_temp2 numeric run data get entity @s Inventory[{Slot:-106b}].tag.UUID[1]
execute store result score #calculation_temp3 numeric run data get entity @s Inventory[{Slot:-106b}].tag.UUID[2]
execute store result score #calculation_temp4 numeric run data get entity @s Inventory[{Slot:-106b}].tag.UUID[3]
execute unless score #calculation_temp1 numeric = @s FhGunUUID0 run tag @s add FhGunChanged
execute unless score #calculation_temp2 numeric = @s FhGunUUID1 run tag @s add FhGunChanged
execute unless score #calculation_temp3 numeric = @s FhGunUUID2 run tag @s add FhGunChanged
execute unless score #calculation_temp4 numeric = @s FhGunUUID3 run tag @s add FhGunChanged
