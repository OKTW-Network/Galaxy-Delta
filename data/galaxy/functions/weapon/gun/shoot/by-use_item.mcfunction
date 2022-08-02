function galaxy:weapon/gun/shoot/request

execute if score @s galaxy.gun.requestShoot matches 1.. run function galaxy:weapon/gun/shoot/main
execute if score @s galaxy.gun.requestShoot matches -1 at @s run function galaxy:weapon/gun/sound/locked
scoreboard players reset @s galaxy.gun.requestShoot
