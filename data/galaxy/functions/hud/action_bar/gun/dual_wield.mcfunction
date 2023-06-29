function galaxy:hud/action_bar/gun/temperature/hand_main

function galaxy:hud/action_bar/gun/temperature/hand_off

title @s actionbar {"translate":"%s || %s","with":[{"nbt":"+hud.gun.temperature.offhand","storage":"galaxy:temp","interpret":true},{"nbt":"+hud.gun.temperature.mainhand","storage":"galaxy:temp","interpret":true}],"color":"white"}

tag @s add galaxy._success.hud.action_bar
