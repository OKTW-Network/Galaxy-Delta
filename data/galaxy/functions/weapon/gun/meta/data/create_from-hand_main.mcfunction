function galaxy:meta/data/create-empty
tag @e[tag=dataContainer,tag=init] add dataGun
execute store result score @e[tag=dataContainer,tag=dataGun,tag=init,limit=1] UUID0 run scoreboard players get @s MhGunUUID0
execute store result score @e[tag=dataContainer,tag=dataGun,tag=init,limit=1] UUID1 run scoreboard players get @s MhGunUUID1
execute store result score @e[tag=dataContainer,tag=dataGun,tag=init,limit=1] UUID2 run scoreboard players get @s MhGunUUID2
execute store result score @e[tag=dataContainer,tag=dataGun,tag=init,limit=1] UUID3 run scoreboard players get @s MhGunUUID3
data merge entity @e[tag=dataContainer,tag=dataGun,tag=init,limit=1] {HandItems:[{id:"minecraft:diamond_sword",Count:1b,tag:{CustomModelData:100}},{}]}
execute store result entity @e[tag=dataContainer,tag=dataGun,tag=init,limit=1] HandItems[0].tag.data.temperature int 1 run scoreboard players get @s MhGunTemper
execute store result entity @e[tag=dataContainer,tag=dataGun,tag=init,limit=1] HandItems[0].tag.data.temperMax int 1 run scoreboard players get @s MhGunTemperMax
execute store result entity @e[tag=dataContainer,tag=dataGun,tag=init,limit=1] HandItems[0].tag.data.overheat int 1 run scoreboard players get @s MhGunOverheat
execute store result entity @e[tag=dataContainer,tag=dataGun,tag=init,limit=1] HandItems[0].tag.data.cooling int 1 run scoreboard players get @s MhGunCooling
execute store result entity @e[tag=dataContainer,tag=dataGun,tag=init,limit=1] HandItems[0].tag.data.coolingDelay int 1 run scoreboard players get @s MhGunCoolDly
execute store result entity @e[tag=dataContainer,tag=dataGun,tag=init,limit=1] HandItems[0].tag.data.fireDelay int 1 run scoreboard players get @s MhGunDelay
tag @e[tag=dataContainer,tag=dataGun,tag=init] remove init
