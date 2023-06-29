function galaxy:weapon/katana/replaceitem/blade_and_scabbard
function galaxy:weapon/katana/sound/draw
scoreboard players set @s galaxy.katana.swapCooldown 10
tag @s remove galaxy._tag.katana.readyToDraw
