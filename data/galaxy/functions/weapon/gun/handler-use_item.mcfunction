scoreboard players add @s[predicate=galaxy:weapon/hand_main-gun,scores={gunDelay=0}] reqGunFire 1
execute if score #gun_pistol_fire_switch Config matches 1 run scoreboard players add @s[predicate=galaxy:weapon/hands-pistol,scores={gunDelay=0},predicate=!galaxy:weapon/hold-gun_mode-sync] reqGunFire 2
execute if score #gun_pistol_fire_sync Config matches 1 run scoreboard players add @s[predicate=galaxy:weapon/hands-pistol,scores={gunDelay=0},predicate=galaxy:weapon/hold-gun_mode-sync] reqGunFire 3
execute if score @s MhGunOverheat matches 1 run scoreboard players set @s reqGunFire -10
execute if score @s FhGunOverheat matches 1 run scoreboard players set @s reqGunFire -10

execute if score @s reqGunFire matches 1.. run function galaxy:weapon/gun/fire
scoreboard players set @s[scores={reqGunFire=1..}] reqGunFire 0

execute if score @s reqGunFire matches -10 at @s run playsound minecraft:block.note_block.hat player @s ~ ~ ~ 1 1.6
scoreboard players set @s[scores={reqGunFire=-10}] reqGunFire 0
