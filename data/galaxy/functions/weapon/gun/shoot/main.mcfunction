execute if score @s galaxy.gun.requestShoot matches 100..101 run scoreboard players add @s galaxy.gun.dualSwitch 1
execute if score @s galaxy.gun.dualSwitch matches 2.. run scoreboard players set @s galaxy.gun.dualSwitch 0

execute unless score @s galaxy.gun.requestShoot matches 101 run function galaxy:weapon/gun/shoot/get_data-hand_main
execute if score @s galaxy.gun.requestShoot matches 101 run function galaxy:weapon/gun/shoot/get_data-hand_off

scoreboard players operation @s galaxy.gun.interval = #gun.shoot.interval.mainHand galaxy
execute if score @s galaxy.gun.requestShoot matches 100..101 if score #gun.shoot.interval.mainHand galaxy < #gun.shoot.interval.offHand galaxy run scoreboard players operation @s galaxy.gun.interval = #gun.shoot.interval.offHand galaxy
scoreboard players set #1 temp 900
execute if score @s galaxy.gun.requestShoot matches 100..101 run scoreboard players operation @s galaxy.gun.interval *= #1 temp
execute if score @s galaxy.gun.requestShoot matches 100..101 run scoreboard players operation @s galaxy.gun.interval /= #1000 num

execute unless score @s galaxy.gun.requestShoot matches 101 run scoreboard players operation @s galaxy.gun.temperature.mainHand += #gun.shoot.heat galaxy
execute if score @s galaxy.gun.requestShoot matches 101 run scoreboard players operation @s galaxy.gun.temperature.offHand += #gun.shoot.heat galaxy

function galaxy:weapon/gun/accuracy/result

# Respect first shot
scoreboard players operation #gun.accuracy.instability galaxy = #gun.shoot.instability.shot galaxy
execute unless score @s galaxy.gun.requestShoot matches 101 run function galaxy:weapon/gun/accuracy/instability/level_up/hand_main
execute if score @s galaxy.gun.requestShoot matches 101 run function galaxy:weapon/gun/accuracy/instability/level_up/hand_off

execute unless score @s galaxy.gun.requestShoot matches 101 run scoreboard players operation #gun.bullet.summon.accuracy galaxy = #gun.accuracy.mainHand galaxy
execute if score @s galaxy.gun.requestShoot matches 101 run scoreboard players operation #gun.bullet.summon.accuracy galaxy = #gun.accuracy.offHand galaxy

scoreboard players set #gun.bullet.summon.totalBullet galaxy 1
scoreboard players operation #gun.bullet.summon.totalBullet galaxy += #gun.shoot.extraBullet galaxy
scoreboard players operation #gun.bullet.summon.remainingBullet galaxy = #gun.bullet.summon.totalBullet galaxy

execute at @s run function galaxy:weapon/gun/bullet/summon/main

execute at @s run function galaxy:weapon/gun/sound/shoot/main
