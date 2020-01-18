# init pistol UUID score
execute as @a[tag=!InitializedGalaxyPistolUUIDScore] run function galaxy:weapon/pistol/meta/scoreboard/set_player_score-pistol_uuid

execute if score @s holdPistol matches 1 run tag @s add detectHandMain
execute if score @s holdPistol matches 2 run tag @s add detectHandMain
execute if score @s holdPistol matches -1 run tag @s add detectHandOff
execute if score @s holdPistol matches 2 run tag @s add detectHandOff

execute if entity @s[tag=detectHandMain] run function galaxy:weapon/pistol/meta/detector/change_pistol-hand-main
execute if entity @s[tag=detectHandOff] run function galaxy:weapon/pistol/meta/detector/change_pistol-hand-off

tag @s[tag=detectHandMain] remove detectHandMain
tag @s[tag=detectHandOff] remove detectHandOff
tag @s[tag=detectHandOff] remove detectBoth
