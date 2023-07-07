scoreboard players operation @s galaxy.gun.offHandUUID0 = @e[tag=galaxy._tag.gun.data.find_data_container.elect,limit=1] galaxy.data.UUID0
scoreboard players operation @s galaxy.gun.offHandUUID1 = @e[tag=galaxy._tag.gun.data.find_data_container.elect,limit=1] galaxy.data.UUID1
scoreboard players operation @s galaxy.gun.offHandUUID2 = @e[tag=galaxy._tag.gun.data.find_data_container.elect,limit=1] galaxy.data.UUID2
scoreboard players operation @s galaxy.gun.offHandUUID3 = @e[tag=galaxy._tag.gun.data.find_data_container.elect,limit=1] galaxy.data.UUID3
execute store result score @s galaxy.gun.interval.offHand run data get entity @e[tag=galaxy._tag.gun.data.find_data_container.elect,limit=1] data.galaxy.gun.interval
execute store result score @s galaxy.gun.temperature.offHand run data get entity @e[tag=galaxy._tag.gun.data.find_data_container.elect,limit=1] data.galaxy.gun.temperature
execute store result score @s galaxy.gun.overheat.offHand run data get entity @e[tag=galaxy._tag.gun.data.find_data_container.elect,limit=1] data.galaxy.gun.overheat
execute store result score @s galaxy.gun.coolingTimer.offHand run data get entity @e[tag=galaxy._tag.gun.data.find_data_container.elect,limit=1] data.galaxy.gun.coolingTimer
execute store result score @s galaxy.gun.unstableShot.offHand run data get entity @e[tag=galaxy._tag.gun.data.find_data_container.elect,limit=1] data.galaxy.gun.unstableShot
execute store result score @s galaxy.gun.unstableShotTimer.offHand run data get entity @e[tag=galaxy._tag.gun.data.find_data_container.elect,limit=1] data.galaxy.gun.unstableShotTimer
