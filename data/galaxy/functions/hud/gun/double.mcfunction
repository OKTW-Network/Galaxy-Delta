execute store result score #1 calcu_temp run scoreboard players get @s MhGunTemper
execute store result score #2 calcu_temp run scoreboard players get @s MhGunTemperMax
scoreboard players operation #1 calcu_temp *= #1000 num
scoreboard players operation #1 calcu_temp /= #2 calcu_temp
execute if score @s MhGunOverheat matches 0 run function galaxy:hud/gun/double-hand_main-overheat_false
execute if score @s MhGunOverheat matches 1 run function galaxy:hud/gun/double-hand_main-overheat_true

execute store result score #1 calcu_temp run scoreboard players get @s FhGunTemper
execute store result score #2 calcu_temp run scoreboard players get @s FhGunTemperMax
scoreboard players operation #1 calcu_temp *= #1000 num
scoreboard players operation #1 calcu_temp /= #2 calcu_temp
execute if score @s FhGunOverheat matches 0 run function galaxy:hud/gun/double-hand_off-overheat_false
execute if score @s FhGunOverheat matches 1 run function galaxy:hud/gun/double-hand_off-overheat_true

title @s actionbar [{"nbt":"HUD.gun.double[1]","storage":"galaxy:temporary","interpret":true},{"text":" || ","color":"white"},{"nbt":"HUD.gun.double[0]","storage":"galaxy:temporary","interpret":true}]

scoreboard players set @s hudPistol 2
