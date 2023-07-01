scoreboard players operation @s galaxy.gun.mainHandUUID0 = @e[tag=galaxy._tag.gun.data.find_data_container.elect,limit=1] galaxy.data.UUID0
scoreboard players operation @s galaxy.gun.mainHandUUID1 = @e[tag=galaxy._tag.gun.data.find_data_container.elect,limit=1] galaxy.data.UUID1
scoreboard players operation @s galaxy.gun.mainHandUUID2 = @e[tag=galaxy._tag.gun.data.find_data_container.elect,limit=1] galaxy.data.UUID2
scoreboard players operation @s galaxy.gun.mainHandUUID3 = @e[tag=galaxy._tag.gun.data.find_data_container.elect,limit=1] galaxy.data.UUID3
execute store result score @s galaxy.gun.interval.mainHand run data get entity @e[tag=galaxy._tag.gun.data.find_data_container.elect,limit=1] data.galaxy.gun.interval
execute store result score @s galaxy.gun.temperature.mainHand run data get entity @e[tag=galaxy._tag.gun.data.find_data_container.elect,limit=1] data.galaxy.gun.temperature
execute store result score @s galaxy.gun.overheat.mainHand run data get entity @e[tag=galaxy._tag.gun.data.find_data_container.elect,limit=1] data.galaxy.gun.overheat
execute store result score @s galaxy.gun.coolingTimer.mainHand run data get entity @e[tag=galaxy._tag.gun.data.find_data_container.elect,limit=1] data.galaxy.gun.coolingTimer
execute store result score @s galaxy.gun.unstableShot.mainHand run data get entity @e[tag=galaxy._tag.gun.data.find_data_container.elect,limit=1] data.galaxy.gun.unstableShot
execute store result score @s galaxy.gun.unstableShotTimer.mainHand run data get entity @e[tag=galaxy._tag.gun.data.find_data_container.elect,limit=1] data.galaxy.gun.unstableShotTimer
