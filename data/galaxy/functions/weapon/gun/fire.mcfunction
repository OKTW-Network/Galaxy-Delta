execute if score @s MhGunOverheat matches 1 run scoreboard players set @s reqGunFire -10
execute if score @s FhGunOverheat matches 1 run scoreboard players set @s reqGunFire -10

execute if score @s reqGunFire matches 2 run scoreboard players add @s gunSwitch 1
execute if score @s reqGunFire matches 2 if score @s gunSwitch matches 2.. run scoreboard players set @s gunSwitch 0

execute if score @s reqGunFire matches 1..3 unless score @s reqGunFire matches 2 run function galaxy:weapon/gun/get_data-hand_main
execute if score @s reqGunFire matches 3 run function galaxy:weapon/gun/get_data-hand_off
execute if score @s reqGunFire matches 2 if score @s gunSwitch matches 0 run function galaxy:weapon/gun/get_data-hand_main
execute if score @s reqGunFire matches 2 if score @s gunSwitch matches 1 run function galaxy:weapon/gun/get_data-hand_off

execute if score @s reqGunFire matches 2..3 if score @s MhGunDelay >= @s FhGunDelay run scoreboard players operation @s gunDelay = @s MhGunDelay
execute if score @s reqGunFire matches 2..3 if score @s MhGunDelay < @s FhGunDelay run scoreboard players operation @s gunDelay = @s FhGunDelay
execute if score @s reqGunFire matches 1 run scoreboard players operation @s gunDelay = @s MhGunDelay

execute if score @s reqGunFire matches 1.. at @s run function galaxy:weapon/gun/bullet/summon
execute if score @s reqGunFire matches 1.. at @s run function galaxy:weapon/gun/sound-fire

execute if score @s reqGunFire matches -10 at @s run playsound minecraft:block.note_block.hat player @s ~ ~ ~ 1 1.6
execute if score @s reqGunFire matches -10 run scoreboard players set @s reqGunFire 0
