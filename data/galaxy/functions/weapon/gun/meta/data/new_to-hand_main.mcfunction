scoreboard players set @s MhGunTemper 0
execute store result score @s MhGunTemperMin run data get entity @s SelectedItem.tag.CustomData.galaxy.tag.temperature_min
execute store result score @s MhGunTemperMax run data get entity @s SelectedItem.tag.CustomData.galaxy.tag.temperature_max
scoreboard players set @s MhGunOverheat 0
execute store result score @s MhGunCooling run data get entity @s SelectedItem.tag.CustomData.galaxy.tag.cooling
execute store result score @s MhGunCoolingDly run data get entity @s SelectedItem.tag.CustomData.galaxy.tag.cooling_delay
