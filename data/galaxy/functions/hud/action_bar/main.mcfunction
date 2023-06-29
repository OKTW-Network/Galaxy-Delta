function galaxy:hud/action_bar/katana/main
execute if entity @s[tag=!galaxy._success.hud.action_bar] run function galaxy:hud/action_bar/gun/main

execute if entity @s[tag=galaxy._success.hud.action_bar] run tag @s add galaxy._status.hud.displaying.action_bar
execute if entity @s[tag=!galaxy._success.hud.action_bar,tag=galaxy._status.hud.displaying.action_bar] run title @s actionbar {"text":""}
execute if entity @s[tag=!galaxy._success.hud.action_bar] run tag @s remove galaxy._status.hud.displaying.action_bar
tag @s remove galaxy._success.hud.action_bar
