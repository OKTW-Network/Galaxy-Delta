scoreboard players set @s FhGunTemper 0
execute store result score @s FhGunTemperMax run data get entity @s Inventory[{Slot:-106b}].tag.CustomData.galaxy.tag.temperMax
scoreboard players set @s FhGunOverheat 0
execute store result score @s FhGunCooling run data get entity @s Inventory[{Slot:-106b}].tag.CustomData.galaxy.tag.cooling
execute store result score @s FhGunCoolDly run data get entity @s Inventory[{Slot:-106b}].tag.CustomData.galaxy.tag.cooling_delay
