tag @s add galaxy._tag.ThisPlayer

execute as @e[tag=galaxy.entity.katana_display_stand] at @s run function galaxy:entity/katana_display_stand/main
execute as @e[tag=galaxy.entity.empower_lens] at @s run function galaxy:entity/empower_lens/main

tag @s remove galaxy._tag.ThisPlayer
