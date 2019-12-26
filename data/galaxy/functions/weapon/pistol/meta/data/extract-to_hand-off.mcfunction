execute store result score @s FhPistolTemper run data get entity @e[tag=dataContainer,tag=dataPistol,tag=dataExtraction,limit=1] HandItems[0].tag.data.temperature
execute store result score @s FhPistolMaxTemp run data get entity @e[tag=dataContainer,tag=dataPistol,tag=dataExtraction,limit=1] HandItems[0].tag.data.temperMax
execute store result score @s FhPistolOverheat run data get entity @e[tag=dataContainer,tag=dataPistol,tag=dataExtraction,limit=1] HandItems[0].tag.data.overheat
execute store result score @s FhPistolCooling run data get entity @e[tag=dataContainer,tag=dataPistol,tag=dataExtraction,limit=1] HandItems[0].tag.data.cooling
execute store result score @s FhPistolCoolDly run data get entity @e[tag=dataContainer,tag=dataPistol,tag=dataExtraction,limit=1] HandItems[0].tag.data.coolingDelay
execute store result score @s FhPistolFireDly run data get entity @e[tag=dataContainer,tag=dataPistol,tag=dataExtraction,limit=1] HandItems[0].tag.data.fireDelay
