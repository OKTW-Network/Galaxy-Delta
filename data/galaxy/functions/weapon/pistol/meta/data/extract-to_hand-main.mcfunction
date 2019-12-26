execute store result score @s MhPistolTemper run data get entity @e[tag=dataContainer,tag=dataPistol,tag=dataExtraction,limit=1] HandItems[0].tag.data.temperature
execute store result score @s MhPistolMaxTemp run data get entity @e[tag=dataContainer,tag=dataPistol,tag=dataExtraction,limit=1] HandItems[0].tag.data.temperMax
execute store result score @s MhPistolOverheat run data get entity @e[tag=dataContainer,tag=dataPistol,tag=dataExtraction,limit=1] HandItems[0].tag.data.overheat
execute store result score @s MhPistolCooling run data get entity @e[tag=dataContainer,tag=dataPistol,tag=dataExtraction,limit=1] HandItems[0].tag.data.cooling
execute store result score @s MhPistolCoolDly run data get entity @e[tag=dataContainer,tag=dataPistol,tag=dataExtraction,limit=1] HandItems[0].tag.data.coolingDelay
execute store result score @s MhPistolFireDly run data get entity @e[tag=dataContainer,tag=dataPistol,tag=dataExtraction,limit=1] HandItems[0].tag.data.fireDelay
