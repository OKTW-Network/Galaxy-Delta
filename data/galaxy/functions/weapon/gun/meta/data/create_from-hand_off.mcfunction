function galaxy:meta/data/create-empty
tag @e[tag=dataContainer,tag=init] add dataGun
execute store result score @e[tag=dataContainer,tag=dataGun,tag=init,limit=1] UUID0 run scoreboard players get @s FhGunUUID0
execute store result score @e[tag=dataContainer,tag=dataGun,tag=init,limit=1] UUID1 run scoreboard players get @s FhGunUUID1
execute store result score @e[tag=dataContainer,tag=dataGun,tag=init,limit=1] UUID2 run scoreboard players get @s FhGunUUID2
execute store result score @e[tag=dataContainer,tag=dataGun,tag=init,limit=1] UUID3 run scoreboard players get @s FhGunUUID3
data merge entity @e[tag=dataContainer,tag=dataGun,tag=init,limit=1] {HandItems:[{id:"minecraft:diamond_sword",Count:1b,tag:{CustomModelData:100}},{}]}
execute store result entity @e[tag=dataContainer,tag=dataGun,tag=init,limit=1] HandItems[0].tag.data.temperature int 1 run scoreboard players get @s FhGunTemper
execute store result entity @e[tag=dataContainer,tag=dataGun,tag=init,limit=1] HandItems[0].tag.data.temperMax int 1 run scoreboard players get @s FhGunTemperMax
execute store result entity @e[tag=dataContainer,tag=dataGun,tag=init,limit=1] HandItems[0].tag.data.overheat int 1 run scoreboard players get @s FhGunOverheat
execute store result entity @e[tag=dataContainer,tag=dataGun,tag=init,limit=1] HandItems[0].tag.data.cooling int 1 run scoreboard players get @s FhGunCooling
execute store result entity @e[tag=dataContainer,tag=dataGun,tag=init,limit=1] HandItems[0].tag.data.cooling_delay int 1 run scoreboard players get @s FhGunCoolDly
execute store result entity @e[tag=dataContainer,tag=dataGun,tag=init,limit=1] HandItems[0].tag.data.fireDelay int 1 run scoreboard players get @s FhGunDelay
tag @e[tag=dataContainer,tag=dataGun,tag=init] remove init
