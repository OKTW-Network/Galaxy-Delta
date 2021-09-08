function cu:data_storage/create-empty_container
tag @e[tag=cu.dataStorage.container,tag=init] add galaxy.data.Gun
execute store result score @e[tag=cu.dataStorage.container,tag=galaxy.data.Gun,tag=init,limit=1] dataUUID0 run scoreboard players get @s MhGunUUID0
execute store result score @e[tag=cu.dataStorage.container,tag=galaxy.data.Gun,tag=init,limit=1] dataUUID1 run scoreboard players get @s MhGunUUID1
execute store result score @e[tag=cu.dataStorage.container,tag=galaxy.data.Gun,tag=init,limit=1] dataUUID2 run scoreboard players get @s MhGunUUID2
execute store result score @e[tag=cu.dataStorage.container,tag=galaxy.data.Gun,tag=init,limit=1] dataUUID3 run scoreboard players get @s MhGunUUID3
execute store result entity @e[tag=cu.dataStorage.container,tag=galaxy.data.Gun,tag=init,limit=1] data.temperature int 1 run scoreboard players get @s MhGunTemper
execute store result entity @e[tag=cu.dataStorage.container,tag=galaxy.data.Gun,tag=init,limit=1] data.temperature_min int 1 run scoreboard players get @s MhGunTemperMin
execute store result entity @e[tag=cu.dataStorage.container,tag=galaxy.data.Gun,tag=init,limit=1] data.temperature_max int 1 run scoreboard players get @s MhGunTemperMax
execute store result entity @e[tag=cu.dataStorage.container,tag=galaxy.data.Gun,tag=init,limit=1] data.overheat int 1 run scoreboard players get @s MhGunOverheat
execute store result entity @e[tag=cu.dataStorage.container,tag=galaxy.data.Gun,tag=init,limit=1] data.cooling int 1 run scoreboard players get @s MhGunCooling
execute store result entity @e[tag=cu.dataStorage.container,tag=galaxy.data.Gun,tag=init,limit=1] data.cooling_delay int 1 run scoreboard players get @s MhGunCoolingDly
execute store result entity @e[tag=cu.dataStorage.container,tag=galaxy.data.Gun,tag=init,limit=1] data.cooling_timer int 1 run scoreboard players get @s MhGunCoolingTim
tag @e[tag=cu.dataStorage.container,tag=galaxy.data.Gun,tag=init] remove init
