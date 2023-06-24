function galaxy:weapon/katana/replaceitem/blade_and_scabbard
function galaxy:weapon/katana/sound/action-swap_pull
scoreboard players set @s galaxy.katana.swapCooldown 10
tag @s remove galaxy._tag.katana.readyToDraw
