execute unless score @s galaxy.gun.requestShoot matches 101 run function galaxy:weapon/gun/shoot/get_data_from_main_hand
execute if score @s galaxy.gun.requestShoot matches 101 run function galaxy:weapon/gun/shoot/get_data_from_off_hand

execute unless score @s galaxy.gun.requestShoot matches 101 run scoreboard players operation @s galaxy.gun.coolingTimer.mainHand = @s galaxy.gun.coolingDelay.mainHand
execute if score @s galaxy.gun.requestShoot matches 101 run scoreboard players operation @s galaxy.gun.coolingTimer.offHand = @s galaxy.gun.coolingDelay.offHand

scoreboard players operation @s galaxy.gun.interval = #gun.shoot.interval.mainHand galaxy
execute if score @s galaxy.gun.requestShoot matches 100..101 if score #gun.shoot.interval.mainHand galaxy < #gun.shoot.interval.offHand galaxy run scoreboard players operation @s galaxy.gun.interval = #gun.shoot.interval.offHand galaxy
scoreboard players set #1 temp 900
execute if score @s galaxy.gun.requestShoot matches 100..101 run scoreboard players operation @s galaxy.gun.interval *= #1 temp
execute if score @s galaxy.gun.requestShoot matches 100..101 run scoreboard players operation @s galaxy.gun.interval /= #1000 num

execute unless score @s galaxy.gun.requestShoot matches 101 run scoreboard players operation @s galaxy.gun.temperature.mainHand += #gun.shoot.heat galaxy
execute if score @s galaxy.gun.requestShoot matches 101 run scoreboard players operation @s galaxy.gun.temperature.offHand += #gun.shoot.heat galaxy

scoreboard players operation #1 temp = #gun.shoot.flexibility galaxy
scoreboard players operation #1 temp -= #1000 num
scoreboard players operation #1 temp *= #-1 num
scoreboard players set #2 temp 600
execute store result score #gun.shoot.unstableMove galaxy run scoreboard players operation #1 temp < #2 temp

scoreboard players set #gun.shoot.accuracy galaxy 1000
scoreboard players set #gun.shoot.unstable galaxy 0
execute unless score @s galaxy.gun.requestShoot matches 101 run scoreboard players operation #gun.shoot.unstable galaxy += @s galaxy.gun.unstableShot.mainHand
execute if score @s galaxy.gun.requestShoot matches 101 run scoreboard players operation #gun.shoot.unstable galaxy += @s galaxy.gun.unstableShot.offHand
execute if entity @s[tag=cu._status.moving] run scoreboard players operation #gun.shoot.unstable galaxy += #gun.shoot.unstableMove galaxy
scoreboard players operation #gun.shoot.unstable galaxy < #1000 num
execute if entity @s[tag=galaxy._status.gun.aiming] run scoreboard players operation #gun.shoot.unstable galaxy *= #75 num
execute if entity @s[tag=galaxy._status.gun.aiming] run scoreboard players operation #gun.shoot.unstable galaxy /= #100 num
scoreboard players operation #gun.shoot.accuracy galaxy -= #gun.shoot.unstable galaxy

execute unless score @s galaxy.gun.requestShoot matches 101 run function galaxy:weapon/gun/shoot/instability_level_up/main_hand
execute if score @s galaxy.gun.requestShoot matches 101 run function galaxy:weapon/gun/shoot/instability_level_up/off_hand

scoreboard players operation #gun.bullet.summon.accuracy galaxy = #gun.shoot.accuracy galaxy

scoreboard players set #gun.bullet.summon.totalBullet galaxy 1
scoreboard players operation #gun.bullet.summon.totalBullet galaxy += #gun.shoot.extraBullet galaxy
scoreboard players operation #gun.bullet.summon.remainingBullet galaxy = #gun.bullet.summon.totalBullet galaxy

execute at @s run function galaxy:weapon/gun/bullet/summon/main

execute at @s run function galaxy:weapon/gun/sound/shoot/main
