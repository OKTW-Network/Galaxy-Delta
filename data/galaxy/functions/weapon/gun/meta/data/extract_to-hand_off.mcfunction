execute store result score @s FhGunTemper run data get entity @e[tag=dataContainer,tag=dataGun,tag=dataExtraction,limit=1] HandItems[0].tag.data.temperature
execute store result score @s FhGunTemperMax run data get entity @e[tag=dataContainer,tag=dataGun,tag=dataExtraction,limit=1] HandItems[0].tag.data.temperMax
execute store result score @s FhGunOverheat run data get entity @e[tag=dataContainer,tag=dataGun,tag=dataExtraction,limit=1] HandItems[0].tag.data.overheat
execute store result score @s FhGunCooling run data get entity @e[tag=dataContainer,tag=dataGun,tag=dataExtraction,limit=1] HandItems[0].tag.data.cooling
execute store result score @s FhGunCoolDly run data get entity @e[tag=dataContainer,tag=dataGun,tag=dataExtraction,limit=1] HandItems[0].tag.data.cooling_delay
execute store result score @s FhGunDelay run data get entity @e[tag=dataContainer,tag=dataGun,tag=dataExtraction,limit=1] HandItems[0].tag.data.fireDelay
