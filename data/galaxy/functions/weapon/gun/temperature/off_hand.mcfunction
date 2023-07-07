execute unless score @s galaxy.gun.overheat.offHand matches 1 if score @s galaxy.gun.temperature.offHand >= @s galaxy.gun.temperatureMax.offHand run function galaxy:weapon/gun/temperature/overheat/off_hand_start
execute if entity @s[scores={galaxy.gun.coolingTimer.offHand=1..}] run function galaxy:weapon/gun/temperature/cooling/off_hand
execute if entity @s[scores={galaxy.gun.coolingTimer.offHand=0}] run scoreboard players operation @s galaxy.gun.temperature.offHand -= @s galaxy.gun.cooling.offHand
execute if score @s galaxy.gun.temperature.offHand <= @s galaxy.gun.temperatureMin.offHand run scoreboard players operation @s galaxy.gun.temperature.offHand = @s galaxy.gun.temperatureMin.offHand
execute if entity @s[scores={galaxy.gun.temperature.offHand=..-1}] run scoreboard players set @s galaxy.gun.temperature.offHand 0
execute if entity @s[scores={galaxy.gun.overheat.offHand=1}] if score @s galaxy.gun.temperature.offHand = @s galaxy.gun.temperatureMin.offHand run scoreboard players set @s galaxy.gun.overheat.offHand 0
execute if entity @s[scores={galaxy.gun.coolingTimer.offHand=1..}] if score @s galaxy.gun.temperature.offHand = @s galaxy.gun.temperatureMin.offHand run scoreboard players set @s galaxy.gun.coolingTimer.offHand 0
scoreboard players remove @s[scores={galaxy.gun.coolingTimer.offHand=1..}] galaxy.gun.coolingTimer.offHand 1
