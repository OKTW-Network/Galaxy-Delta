scoreboard players set @s[predicate=galaxy:weapon/hand_main-gun] reqGunFire 1
scoreboard players set @s[predicate=galaxy:weapon/hands-gun_type1,predicate=galaxy:weapon/hands-gun_special-dual,scores={gunSwitch=0}] reqGunFire 10
scoreboard players set @s[predicate=galaxy:weapon/hands-gun_type1,predicate=galaxy:weapon/hands-gun_special-dual,scores={gunSwitch=1}] reqGunFire 11
scoreboard players set @s[predicate=galaxy:weapon/hand_main-gun_type2,predicate=!galaxy:weapon/hand_main-gun_special-flow,tag=galaxy.gun.fullyCharged] reqGunFire 20
scoreboard players set @s[predicate=galaxy:weapon/hand_main-gun_type2,tag=!galaxy.gun.fullyCharged] reqGunFire 0
scoreboard players set @s[predicate=galaxy:weapon/hand_main-gun_type3,predicate=galaxy:weapon/hand_main-gun_special-sequence,predicate=!minecraft:sneaking] reqGunFire 30
scoreboard players set @s[predicate=galaxy:weapon/hand_main-gun_type3,predicate=galaxy:weapon/hand_main-gun_special-sequence,predicate=minecraft:sneaking] reqGunFire 31

scoreboard players set @s[scores={gunDelay=1..}] reqGunFire 0
scoreboard players set @s[predicate=galaxy:weapon/hand_main-gun,scores={MhGunOverheat=1}] reqGunFire -1
scoreboard players set @s[predicate=galaxy:weapon/hands-gun_type1,predicate=galaxy:weapon/hands-gun_special-dual,scores={FhGunOverheat=1}] reqGunFire -1

scoreboard players set @s[tag=galaxy.cancel.gun.shoot] reqGunFire 0

tag @s[tag=galaxy.cancel.gun.shoot] remove galaxy.cancel.gun.shoot
