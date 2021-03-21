scoreboard players remove @s[scores={gunSchedule=1..}] gunSchedule 1

function galaxy:weapon/gun/shoot/request

execute if score @s reqGunFire matches 1.. run function galaxy:weapon/gun/shoot/main
scoreboard players set @s reqGunFire 0
