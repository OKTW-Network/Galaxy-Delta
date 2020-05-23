execute store result score @s MhGunTemper run data get entity @e[tag=dataContainer,tag=dataGun,tag=dataExtraction,limit=1] HandItems[0].tag.data.temperature
execute store result score @s MhGunTemperMax run data get entity @e[tag=dataContainer,tag=dataGun,tag=dataExtraction,limit=1] HandItems[0].tag.data.temperMax
execute store result score @s MhGunOverheat run data get entity @e[tag=dataContainer,tag=dataGun,tag=dataExtraction,limit=1] HandItems[0].tag.data.overheat
execute store result score @s MhGunCooling run data get entity @e[tag=dataContainer,tag=dataGun,tag=dataExtraction,limit=1] HandItems[0].tag.data.cooling
execute store result score @s MhGunCoolDly run data get entity @e[tag=dataContainer,tag=dataGun,tag=dataExtraction,limit=1] HandItems[0].tag.data.coolingDelay
execute store result score @s MhGunDelay run data get entity @e[tag=dataContainer,tag=dataGun,tag=dataExtraction,limit=1] HandItems[0].tag.data.fireDelay
