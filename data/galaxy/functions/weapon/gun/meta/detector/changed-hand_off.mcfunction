execute store result score #5 calcu_temp run data get entity @s Inventory[{Slot:-106b}].tag.UUID[0]
execute store result score #6 calcu_temp run data get entity @s Inventory[{Slot:-106b}].tag.UUID[1]
execute store result score #7 calcu_temp run data get entity @s Inventory[{Slot:-106b}].tag.UUID[2]
execute store result score #8 calcu_temp run data get entity @s Inventory[{Slot:-106b}].tag.UUID[3]
execute unless score #5 calcu_temp = @s FhGunUUID0 run tag @s add FhGunChanged
execute unless score #6 calcu_temp = @s FhGunUUID1 run tag @s add FhGunChanged
execute unless score #7 calcu_temp = @s FhGunUUID2 run tag @s add FhGunChanged
execute unless score #8 calcu_temp = @s FhGunUUID3 run tag @s add FhGunChanged
