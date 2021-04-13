execute store result score #1 calcu_temp run scoreboard players get @s MhGunTemper
execute store result score #2 calcu_temp run scoreboard players get @s MhGunTemperMax
scoreboard players operation #1 calcu_temp *= #1000 num
scoreboard players operation #1 calcu_temp /= #2 calcu_temp
function galaxy:hud/gun/temperature/hand_main

function galaxy:hud/gun/sub/charge

title @s actionbar {"translate":"%s <| %s","with":[{"nbt":"+HUD.gun.sub.final","storage":"galaxy:temp","interpret":true},{"nbt":"+HUD.gun.temperature.mainhand","storage":"galaxy:temp","interpret":true}],"color":"white"}

scoreboard players set @s hudPistol 20
