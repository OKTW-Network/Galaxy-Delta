function cu:data_storage/create-empty_container
tag @e[tag=cu.dataStorage.container,tag=init] add galaxy.data.Gun
execute store result score @e[tag=cu.dataStorage.container,tag=galaxy.data.Gun,tag=init,limit=1] dataUUID0 run scoreboard players get @s FhGunUUID0
execute store result score @e[tag=cu.dataStorage.container,tag=galaxy.data.Gun,tag=init,limit=1] dataUUID1 run scoreboard players get @s FhGunUUID1
execute store result score @e[tag=cu.dataStorage.container,tag=galaxy.data.Gun,tag=init,limit=1] dataUUID2 run scoreboard players get @s FhGunUUID2
execute store result score @e[tag=cu.dataStorage.container,tag=galaxy.data.Gun,tag=init,limit=1] dataUUID3 run scoreboard players get @s FhGunUUID3
execute store result entity @e[tag=cu.dataStorage.container,tag=galaxy.data.Gun,tag=init,limit=1] data.temperature int 1 run scoreboard players get @s FhGunTemper
execute store result entity @e[tag=cu.dataStorage.container,tag=galaxy.data.Gun,tag=init,limit=1] data.temperMax int 1 run scoreboard players get @s FhGunTemperMax
execute store result entity @e[tag=cu.dataStorage.container,tag=galaxy.data.Gun,tag=init,limit=1] data.overheat int 1 run scoreboard players get @s FhGunOverheat
execute store result entity @e[tag=cu.dataStorage.container,tag=galaxy.data.Gun,tag=init,limit=1] data.cooling int 1 run scoreboard players get @s FhGunCooling
execute store result entity @e[tag=cu.dataStorage.container,tag=galaxy.data.Gun,tag=init,limit=1] data.cooling_delay int 1 run scoreboard players get @s FhGunCoolDly
tag @e[tag=cu.dataStorage.container,tag=galaxy.data.Gun,tag=init] remove init
