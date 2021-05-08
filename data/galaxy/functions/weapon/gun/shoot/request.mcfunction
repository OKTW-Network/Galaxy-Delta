scoreboard players set @s[predicate=galaxy:weapon/hand_main-gun,predicate=!galaxy:weapon/hands-gun_special-dual,predicate=!galaxy:weapon/hand_main-gun_type2,scores={gunDelay=0}] reqGunFire 1
scoreboard players set @s[predicate=galaxy:weapon/hands-gun_type1,predicate=galaxy:weapon/hands-gun_special-dual,scores={gunDelay=0,gunSwitch=0}] reqGunFire 10
scoreboard players set @s[predicate=galaxy:weapon/hands-gun_type1,predicate=galaxy:weapon/hands-gun_special-dual,scores={gunDelay=0,gunSwitch=1}] reqGunFire 11
scoreboard players set @s[predicate=galaxy:weapon/hand_main-gun_type2,scores={gunDelay=0},tag=!galaxy.gunChargeLock] reqGunFire 20
scoreboard players set @s[predicate=galaxy:weapon/hand_main-gun_type2,predicate=galaxy:weapon/hand_main-gun_special-flow,scores={gunDelay=0,gunChargeLvl=100},tag=galaxy.gunCharged,tag=!galaxy.gunChargeLock] reqGunFire 21
scoreboard players set @s[predicate=galaxy:weapon/hand_main-gun_type3,predicate=galaxy:weapon/hand_main-gun_special-sequence,predicate=!minecraft:sneaking,scores={gunDelay=0}] reqGunFire 30
scoreboard players set @s[predicate=galaxy:weapon/hand_main-gun_type3,predicate=galaxy:weapon/hand_main-gun_special-sequence,predicate=minecraft:sneaking,scores={gunDelay=0}] reqGunFire 31

execute if entity @s[predicate=galaxy:weapon/hand_main-gun] if score @s MhGunOverheat matches 1 run scoreboard players set @s reqGunFire -1
execute if entity @s[predicate=galaxy:weapon/hands-gun_type1,predicate=galaxy:weapon/hands-gun_special-dual] if score @s FhGunOverheat matches 1 run scoreboard players set @s reqGunFire -1
