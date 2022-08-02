execute unless score @s galaxy.gun.overheat.mainHand matches 1 if score @s galaxy.gun.temperature.mainHand >= @s galaxy.gun.temperatureMax.mainHand run function galaxy:weapon/gun/temperature/overheat/start-hand_main
execute if entity @s[scores={galaxy.gun.coolingTimer.mainHand=1..}] run function galaxy:weapon/gun/temperature/cooling/hand_main
execute if entity @s[scores={galaxy.gun.coolingTimer.mainHand=0}] run scoreboard players operation @s galaxy.gun.temperature.mainHand -= @s galaxy.gun.cooling.mainHand
execute if score @s galaxy.gun.temperature.mainHand <= @s galaxy.gun.temperatureMin.mainHand run scoreboard players operation @s galaxy.gun.temperature.mainHand = @s galaxy.gun.temperatureMin.mainHand
execute if entity @s[scores={galaxy.gun.temperature.mainHand=..-1}] run scoreboard players set @s galaxy.gun.temperature.mainHand 0
execute if entity @s[scores={galaxy.gun.overheat.mainHand=1}] if score @s galaxy.gun.temperature.mainHand = @s galaxy.gun.temperatureMin.mainHand run scoreboard players set @s galaxy.gun.overheat.mainHand 0
execute if entity @s[scores={galaxy.gun.coolingTimer.mainHand=1..}] if score @s galaxy.gun.temperature.mainHand = @s galaxy.gun.temperatureMin.mainHand run scoreboard players set @s galaxy.gun.coolingTimer.mainHand 0
scoreboard players remove @s[scores={galaxy.gun.coolingTimer.mainHand=1..}] galaxy.gun.coolingTimer.mainHand 1
