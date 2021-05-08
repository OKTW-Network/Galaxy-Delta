execute if score #galaxy$gun_sniper_charge Config matches 1 run scoreboard players set @s[predicate=galaxy:weapon/hand_main-gun_type2,predicate=!galaxy:weapon/hand_main-gun_special-flow,scores={gunDelay=0,gunChargeLvl=100},tag=galaxy.gunCharged,tag=!galaxy.gunChargeLock] reqGunFire 21

execute if score @s reqGunFire matches 1.. run function galaxy:weapon/gun/shoot/main

scoreboard players set @s reqGunFire 0
