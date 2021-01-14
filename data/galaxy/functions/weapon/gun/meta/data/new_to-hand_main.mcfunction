scoreboard players set @s MhGunTemper 0
execute store result score @s MhGunTemperMax run data get entity @s SelectedItem.tag.gun.temperMax
scoreboard players set @s MhGunOverheat 0
execute store result score @s MhGunCooling run data get entity @s SelectedItem.tag.gun.cooling
execute store result score @s MhGunCoolDly run data get entity @s SelectedItem.tag.gun.cooling_delay
