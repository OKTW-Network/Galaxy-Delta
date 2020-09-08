execute store result score #1 calcu_temp run data get entity @s Inventory[{Slot:-106b}].tag.UUID[0]
execute store result score #2 calcu_temp run data get entity @s Inventory[{Slot:-106b}].tag.UUID[1]
execute store result score #3 calcu_temp run data get entity @s Inventory[{Slot:-106b}].tag.UUID[2]
execute store result score #4 calcu_temp run data get entity @s Inventory[{Slot:-106b}].tag.UUID[3]
execute unless score #1 calcu_temp = @s FhGunUUID0 run tag @s add FhGunChanged
execute unless score #2 calcu_temp = @s FhGunUUID1 run tag @s add FhGunChanged
execute unless score #3 calcu_temp = @s FhGunUUID2 run tag @s add FhGunChanged
execute unless score #4 calcu_temp = @s FhGunUUID3 run tag @s add FhGunChanged
