execute store result score @s FhGunTemper run data get entity @e[tag=cu.dataStorage.container,tag=galaxy.data.Gun,tag=dataExtraction,limit=1] data.temperature
execute store result score @s FhGunTemperMin run data get entity @e[tag=cu.dataStorage.container,tag=galaxy.data.Gun,tag=dataExtraction,limit=1] data.temperature_min
execute store result score @s FhGunTemperMax run data get entity @e[tag=cu.dataStorage.container,tag=galaxy.data.Gun,tag=dataExtraction,limit=1] data.temperature_max
execute store result score @s FhGunOverheat run data get entity @e[tag=cu.dataStorage.container,tag=galaxy.data.Gun,tag=dataExtraction,limit=1] data.overheat
execute store result score @s FhGunCooling run data get entity @e[tag=cu.dataStorage.container,tag=galaxy.data.Gun,tag=dataExtraction,limit=1] data.cooling
execute store result score @s FhGunCoolingDly run data get entity @e[tag=cu.dataStorage.container,tag=galaxy.data.Gun,tag=dataExtraction,limit=1] data.cooling_delay
execute store result score @s FhGunCoolingTim run data get entity @e[tag=cu.dataStorage.container,tag=galaxy.data.Gun,tag=dataExtraction,limit=1] data.cooling_timer
