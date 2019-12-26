function galaxy:meta/data/create-empty
tag @e[tag=dataContainer,tag=init] add dataPistol
execute store result score @e[tag=dataContainer,tag=dataPistol,tag=init,limit=1] miniUUIDMost run scoreboard players get @s MhPistolUUIDM
execute store result score @e[tag=dataContainer,tag=dataPistol,tag=init,limit=1] miniUUIDLeast run scoreboard players get @s MhPistolUUIDL
data merge entity @e[tag=dataContainer,tag=dataPistol,tag=init,limit=1] {HandItems:[{id:"minecraft:diamond_sword",Count:1b,tag:{CustomModelData:100}},{}]}
execute store result entity @e[tag=dataContainer,tag=dataPistol,tag=init,limit=1] HandItems[0].tag.data.temperature int 1 run scoreboard players get @s MhPistolTemper
execute store result entity @e[tag=dataContainer,tag=dataPistol,tag=init,limit=1] HandItems[0].tag.data.temperMax int 1 run scoreboard players get @s MhPistolMaxTemp
execute store result entity @e[tag=dataContainer,tag=dataPistol,tag=init,limit=1] HandItems[0].tag.data.overheat int 1 run scoreboard players get @s MhPistolOverheat
execute store result entity @e[tag=dataContainer,tag=dataPistol,tag=init,limit=1] HandItems[0].tag.data.cooling int 1 run scoreboard players get @s MhPistolCooling
execute store result entity @e[tag=dataContainer,tag=dataPistol,tag=init,limit=1] HandItems[0].tag.data.coolingDelay int 1 run scoreboard players get @s MhPistolCoolDly
execute store result entity @e[tag=dataContainer,tag=dataPistol,tag=init,limit=1] HandItems[0].tag.data.fireDelay int 1 run scoreboard players get @s MhPistolFireDly
tag @e[tag=dataContainer,tag=dataPistol,tag=init] remove init
