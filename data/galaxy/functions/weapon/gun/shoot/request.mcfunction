scoreboard players set @s[predicate=galaxy:weapon/hand_main-gun,predicate=!galaxy:weapon/hands-gun_special-dual,scores={gunDelay=0}] reqGunFire 1
scoreboard players set @s[predicate=galaxy:weapon/hands-gun_type1,predicate=galaxy:weapon/hands-gun_special-dual,scores={gunDelay=0}] reqGunFire 10
# scoreboard players set @s[predicate=galaxy:weapon/hand_main-gun_type2,predicate=galaxy:weapon/hand_main-gun_special-hold,scores={gunDelay=0}] reqGunFire 20
execute if entity @s[predicate=galaxy:weapon/hand_main-gun] if score @s MhGunOverheat matches 1 run scoreboard players set @s reqGunFire -10
execute if entity @s[predicate=galaxy:weapon/hands-gun_type1,predicate=galaxy:weapon/hands-gun_special-dual] if score @s FhGunOverheat matches 1 run scoreboard players set @s reqGunFire -10
