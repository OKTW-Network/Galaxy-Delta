data modify storage cu:data_storage create_container.tags set value ["galaxy.data.gun","galaxy._tag.data.init"]
function cu:data_storage/create_container
execute store result score @e[tag=galaxy.data.gun,tag=galaxy._tag.data.init,limit=1] galaxy.data.UUID0 run scoreboard players get @s galaxy.gun.offHandUUID0
execute store result score @e[tag=galaxy.data.gun,tag=galaxy._tag.data.init,limit=1] galaxy.data.UUID1 run scoreboard players get @s galaxy.gun.offHandUUID1
execute store result score @e[tag=galaxy.data.gun,tag=galaxy._tag.data.init,limit=1] galaxy.data.UUID2 run scoreboard players get @s galaxy.gun.offHandUUID2
execute store result score @e[tag=galaxy.data.gun,tag=galaxy._tag.data.init,limit=1] galaxy.data.UUID3 run scoreboard players get @s galaxy.gun.offHandUUID3
execute store result entity @e[tag=galaxy.data.gun,tag=galaxy._tag.data.init,limit=1] data.galaxy.gun.temperature int 1 run scoreboard players get @s galaxy.gun.temperature.offHand
execute store result entity @e[tag=galaxy.data.gun,tag=galaxy._tag.data.init,limit=1] data.galaxy.gun.overheat int 1 run scoreboard players get @s galaxy.gun.overheat.offHand
execute store result entity @e[tag=galaxy.data.gun,tag=galaxy._tag.data.init,limit=1] data.galaxy.gun.coolingTimer int 1 run scoreboard players get @s galaxy.gun.coolingTimer.offHand
execute store result entity @e[tag=galaxy.data.gun,tag=galaxy._tag.data.init,limit=1] data.galaxy.gun.unstableShot int 1 run scoreboard players get @s galaxy.gun.unstableShot.offHand
execute store result entity @e[tag=galaxy.data.gun,tag=galaxy._tag.data.init,limit=1] data.galaxy.gun.unstableShotTimer int 1 run scoreboard players get @s galaxy.gun.unstableShotTimer.offHand
tag @e[tag=galaxy.data.gun,tag=galaxy._tag.data.init] remove galaxy._tag.data.init
