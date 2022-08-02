function cu:data_storage/create-empty_container
tag @e[tag=cu.dataStorage.container,tag=init] add galaxy.data.gun
execute store result score @e[tag=cu.dataStorage.container,tag=galaxy.data.gun,tag=init,limit=1] cu.dataStorage.UUID.0 run scoreboard players get @s galaxy.gun.UUID.mainHand0
execute store result score @e[tag=cu.dataStorage.container,tag=galaxy.data.gun,tag=init,limit=1] cu.dataStorage.UUID.1 run scoreboard players get @s galaxy.gun.UUID.mainHand1
execute store result score @e[tag=cu.dataStorage.container,tag=galaxy.data.gun,tag=init,limit=1] cu.dataStorage.UUID.2 run scoreboard players get @s galaxy.gun.UUID.mainHand2
execute store result score @e[tag=cu.dataStorage.container,tag=galaxy.data.gun,tag=init,limit=1] cu.dataStorage.UUID.3 run scoreboard players get @s galaxy.gun.UUID.mainHand3
execute store result entity @e[tag=cu.dataStorage.container,tag=galaxy.data.gun,tag=init,limit=1] data.galaxy.gun.temperature int 1 run scoreboard players get @s galaxy.gun.temperature.mainHand
execute store result entity @e[tag=cu.dataStorage.container,tag=galaxy.data.gun,tag=init,limit=1] data.galaxy.gun.overheat int 1 run scoreboard players get @s galaxy.gun.overheat.mainHand
execute store result entity @e[tag=cu.dataStorage.container,tag=galaxy.data.gun,tag=init,limit=1] data.galaxy.gun.coolingTimer int 1 run scoreboard players get @s galaxy.gun.coolingTimer.mainHand
execute store result entity @e[tag=cu.dataStorage.container,tag=galaxy.data.gun,tag=init,limit=1] data.galaxy.gun.unstableShot int 1 run scoreboard players get @s galaxy.gun.unstableShot.mainHand
execute store result entity @e[tag=cu.dataStorage.container,tag=galaxy.data.gun,tag=init,limit=1] data.galaxy.gun.unstableShotTimer int 1 run scoreboard players get @s galaxy.gun.unstableShotTimer.mainHand
tag @e[tag=cu.dataStorage.container,tag=galaxy.data.gun,tag=init] remove init
