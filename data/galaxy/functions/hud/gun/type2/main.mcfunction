function galaxy:hud/gun/temperature/hand_main
function galaxy:hud/gun/sub/charge

title @s actionbar {"translate":"%s |> %s","with":[{"nbt":"+HUD.gun.sub.final","storage":"galaxy:temp","interpret":true},{"nbt":"+HUD.gun.temperature.mainhand","storage":"galaxy:temp","interpret":true}]}

tag @s add galaxy.hud.succes
