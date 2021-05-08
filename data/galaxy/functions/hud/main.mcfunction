execute if score #galaxy$hud_katana Config matches 1 as @a run function galaxy:hud/katana/main
execute if score #galaxy$hud_gun Config matches 1 as @a run function galaxy:hud/gun/main

tag @a[tag=galaxy.hud.succes] add galaxy.hud.isShowing
title @a[tag=!galaxy.hud.succes,tag=galaxy.hud.isShowing] actionbar {"text":""}
tag @a[tag=!galaxy.hud.succes] remove galaxy.hud.isShowing
tag @a[tag=galaxy.hud.succes] remove galaxy.hud.succes
