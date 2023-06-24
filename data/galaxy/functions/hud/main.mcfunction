execute if score #galaxy$hud.katana Config matches 1 as @a run function galaxy:hud/katana/main
execute if score #galaxy$hud.gun Config matches 1 as @a run function galaxy:hud/gun/main

tag @a[tag=galaxy._success.hud] add galaxy._tag.hud
title @a[tag=!galaxy._success.hud,tag=galaxy._tag.hud] actionbar {"text":""}
tag @a[tag=!galaxy._success.hud] remove galaxy._tag.hud
tag @a[tag=galaxy._success.hud] remove galaxy._success.hud
