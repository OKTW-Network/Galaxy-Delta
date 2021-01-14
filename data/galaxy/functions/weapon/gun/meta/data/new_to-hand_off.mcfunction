scoreboard players set @s FhGunTemper 0
execute store result score @s FhGunTemperMax run data get entity @s Inventory[{Slot:-106b}].tag.gun.temperMax
scoreboard players set @s FhGunOverheat 0
execute store result score @s FhGunCooling run data get entity @s Inventory[{Slot:-106b}].tag.gun.cooling
execute store result score @s FhGunCoolDly run data get entity @s Inventory[{Slot:-106b}].tag.gun.cooling_delay
