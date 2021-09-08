scoreboard players set @s FhGunTemper 0
execute store result score @s FhGunTemperMin run data get entity @s Inventory[{Slot:-106b}].tag.CustomData.galaxy.tag.temperature_min
execute store result score @s FhGunTemperMax run data get entity @s Inventory[{Slot:-106b}].tag.CustomData.galaxy.tag.temperature_max
scoreboard players set @s FhGunOverheat 0
execute store result score @s FhGunCooling run data get entity @s Inventory[{Slot:-106b}].tag.CustomData.galaxy.tag.cooling
execute store result score @s FhGunCoolingDly run data get entity @s Inventory[{Slot:-106b}].tag.CustomData.galaxy.tag.cooling_delay
