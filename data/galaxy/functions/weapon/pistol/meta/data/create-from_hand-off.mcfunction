function galaxy:meta/data/create-empty
tag @e[tag=dataContainer,tag=init] add dataPistol
execute store result score @e[tag=dataContainer,tag=dataPistol,tag=init,limit=1] miniUUIDMost run scoreboard players get @s FhPistolUUIDM
execute store result score @e[tag=dataContainer,tag=dataPistol,tag=init,limit=1] miniUUIDLeast run scoreboard players get @s FhPistolUUIDL
data merge entity @e[tag=dataContainer,tag=dataPistol,tag=init,limit=1] {HandItems:[{id:"minecraft:diamond_sword",Count:1b,tag:{CustomModelData:100}},{}]}
execute store result entity @e[tag=dataContainer,tag=dataPistol,tag=init,limit=1] HandItems[0].tag.data.temperature int 1 run scoreboard players get @s FhPistolTemper
execute store result entity @e[tag=dataContainer,tag=dataPistol,tag=init,limit=1] HandItems[0].tag.data.temperMax int 1 run scoreboard players get @s FhPistolMaxTemp
execute store result entity @e[tag=dataContainer,tag=dataPistol,tag=init,limit=1] HandItems[0].tag.data.overheat int 1 run scoreboard players get @s FhPistolOverheat
execute store result entity @e[tag=dataContainer,tag=dataPistol,tag=init,limit=1] HandItems[0].tag.data.cooling int 1 run scoreboard players get @s FhPistolCooling
execute store result entity @e[tag=dataContainer,tag=dataPistol,tag=init,limit=1] HandItems[0].tag.data.coolingDelay int 1 run scoreboard players get @s FhPistolCoolDly
execute store result entity @e[tag=dataContainer,tag=dataPistol,tag=init,limit=1] HandItems[0].tag.data.fireDelay int 1 run scoreboard players get @s FhPistolFireDly
tag @e[tag=dataContainer,tag=dataPistol,tag=init] remove init
