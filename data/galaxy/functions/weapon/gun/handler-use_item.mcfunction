scoreboard players add @s[predicate=galaxy:weapon/hand_main-gun,predicate=!galaxy:weapon/hands-gun_addon-dual,scores={gunDelay=0}] reqGunFire 1
scoreboard players add @s[predicate=galaxy:weapon/hands-pistol,predicate=galaxy:weapon/hands-gun_addon-dual,scores={gunDelay=0}] reqGunFire 2
execute if entity @s[predicate=galaxy:weapon/hand_main-gun] if score @s MhGunOverheat matches 1 run scoreboard players set @s reqGunFire -10
execute if entity @s[predicate=galaxy:weapon/hands-pistol,predicate=galaxy:weapon/hands-gun_addon-dual] if score @s FhGunOverheat matches 1 run scoreboard players set @s reqGunFire -10

execute if score @s reqGunFire matches 1.. run function galaxy:weapon/gun/fire
scoreboard players set @s[scores={reqGunFire=1..}] reqGunFire 0

execute if score @s reqGunFire matches -10 at @s run function galaxy:weapon/gun/sound-locked
scoreboard players set @s[scores={reqGunFire=-10}] reqGunFire 0
