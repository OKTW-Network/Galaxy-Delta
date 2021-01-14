scoreboard players add @s[predicate=galaxy:weapon/hand_main-gun,predicate=!galaxy:weapon/hands-gun_addon-dual,scores={gunDelay=0}] reqGunFire 1
scoreboard players add @s[predicate=galaxy:weapon/hands-pistol,predicate=galaxy:weapon/hands-gun_addon-dual,scores={gunDelay=0}] reqGunFire 2
execute if entity @s[predicate=galaxy:weapon/hand_main-gun] if score @s MhGunOverheat matches 1 run scoreboard players set @s reqGunFire -10
execute if entity @s[predicate=galaxy:weapon/hands-pistol,predicate=galaxy:weapon/hands-gun_addon-dual] if score @s FhGunOverheat matches 1 run scoreboard players set @s reqGunFire -10
