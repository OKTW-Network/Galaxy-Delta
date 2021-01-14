execute if score @s reqGunFire matches 2 run scoreboard players add @s gunSwitch 1
execute if score @s reqGunFire matches 2 if score @s gunSwitch matches 2.. run scoreboard players set @s gunSwitch 0

execute if score @s reqGunFire matches 1 run function galaxy:weapon/gun/get_data-hand_main
execute if score @s reqGunFire matches 2 if score @s gunSwitch matches 0 run function galaxy:weapon/gun/get_data-hand_main
execute if score @s reqGunFire matches 2 if score @s gunSwitch matches 1 run function galaxy:weapon/gun/get_data-hand_off

execute if score @s reqGunFire matches 1 if score @s MhGunAclrate matches -2147483648..2147483647 run function galaxy:weapon/gun/accelerate/level_up-hand_main
execute if score @s reqGunFire matches 2 if score @s gunSwitch matches 0 if score @s MhGunAclrate matches -2147483648..2147483647 run function galaxy:weapon/gun/accelerate/level_up-hand_main
execute if score @s reqGunFire matches 2 if score @s gunSwitch matches 1 if score @s FhGunAclrate matches -2147483648..2147483647 run function galaxy:weapon/gun/accelerate/level_up-hand_off

execute if score @s reqGunFire matches 1 run scoreboard players operation @s gunDelay = @s MhGunDelay
execute if score @s reqGunFire matches 2 if score @s MhGunDelay >= @s FhGunDelay run scoreboard players operation @s gunDelay = @s MhGunDelay
execute if score @s reqGunFire matches 2 if score @s MhGunDelay < @s FhGunDelay run scoreboard players operation @s gunDelay = @s FhGunDelay

execute if score @s reqGunFire matches 1 run function galaxy:weapon/gun/temperature/heat-hand_main
execute if score @s reqGunFire matches 2 if score @s gunSwitch matches 0 run function galaxy:weapon/gun/temperature/heat-hand_main
execute if score @s reqGunFire matches 2 if score @s gunSwitch matches 1 run function galaxy:weapon/gun/temperature/heat-hand_off

execute if score @s reqGunFire matches 1.. at @s run function galaxy:weapon/gun/bullet/summon
execute if score @s reqGunFire matches 1.. at @s run function galaxy:weapon/gun/sound-shoot

execute store result score #1 calcu_temp run scoreboard players get @s gunDelay
scoreboard players operation #1 calcu_temp %= #4 num
execute unless score #1 calcu_temp matches 0 run scoreboard players add @s gunSchedule 1
