function galaxy:hud/gun/temperature/hand_main

function galaxy:hud/gun/temperature/hand_off

title @s actionbar {"translate":"%s || %s","with":[{"nbt":"+HUD.gun.temperature.offhand","storage":"galaxy:temp","interpret":true},{"nbt":"+HUD.gun.temperature.mainhand","storage":"galaxy:temp","interpret":true}],"color":"white"}

tag @s add galaxy._success.hud
