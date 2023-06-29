execute if entity @s[tag=!galaxy._tag.hud.suppress] run function galaxy:hud/action_bar/main

title @s[tag=galaxy._tag.hud.suppress,tag=galaxy._status.hud.displaying.action_bar] actionbar {"text":""}
tag @s[tag=galaxy._tag.hud.suppress] remove galaxy._status.hud.displaying.action_bar

tag @s[tag=galaxy._status.hud.displaying] remove galaxy._status.hud.displaying
tag @s[tag=galaxy._status.hud.displaying.action_bar] add galaxy._status.hud.displaying
