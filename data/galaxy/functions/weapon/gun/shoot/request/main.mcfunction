execute if entity @s[predicate=galaxy:weapon/gun/posture/pistol] run scoreboard players set @s galaxy.gun.requestShoot 1
execute if entity @s[predicate=galaxy:weapon/gun/posture/dual_wield_pistol] run function galaxy:weapon/gun/shoot/request/dual_wield_pistol
execute if entity @s[predicate=galaxy:weapon/gun/posture/sinper_rifle] run scoreboard players set @s galaxy.gun.requestShoot 2

execute if entity @s[scores={galaxy.gun.interval=1..}] run scoreboard players set @s galaxy.gun.requestShoot 0
execute if entity @s[predicate=galaxy:weapon/gun/main_hand,scores={galaxy.gun.overheat.mainHand=1}] run scoreboard players set @s galaxy.gun.requestShoot -1
execute if entity @s[predicate=galaxy:weapon/gun/hands-pistol,scores={galaxy.gun.overheat.offHand=1}] run scoreboard players set @s galaxy.gun.requestShoot -1

execute if score @s galaxy.gun.requestShoot matches 1.. run function galaxy:weapon/gun/shoot/main
execute if score @s galaxy.gun.requestShoot matches -1 at @s run function galaxy:weapon/gun/sound/locked
scoreboard players reset @s galaxy.gun.requestShoot
