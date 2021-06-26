execute store result score @s MhGunTemper run data get entity @e[tag=cu.dataStorage.container,tag=galaxy.data.Gun,tag=dataExtraction,limit=1] data.temperature
execute store result score @s MhGunTemperMax run data get entity @e[tag=cu.dataStorage.container,tag=galaxy.data.Gun,tag=dataExtraction,limit=1] data.temperMax
execute store result score @s MhGunOverheat run data get entity @e[tag=cu.dataStorage.container,tag=galaxy.data.Gun,tag=dataExtraction,limit=1] data.overheat
execute store result score @s MhGunCooling run data get entity @e[tag=cu.dataStorage.container,tag=galaxy.data.Gun,tag=dataExtraction,limit=1] data.cooling
execute store result score @s MhGunCoolDly run data get entity @e[tag=cu.dataStorage.container,tag=galaxy.data.Gun,tag=dataExtraction,limit=1] data.cooling_delay
