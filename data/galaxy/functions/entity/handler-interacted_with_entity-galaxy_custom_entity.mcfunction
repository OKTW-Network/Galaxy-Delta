tag @s add galaxy._tag.ThisPlayer

execute at @s as @e[tag=galaxy.customEntity,tag=galaxy.katana_display_stand,distance=..10] at @s run function galaxy:entity/katana_display_stand/main
execute at @s as @e[tag=galaxy.customEntity,tag=galaxy.empower_lens,distance=..10] at @s run function galaxy:entity/empower_lens/main

tag @s remove galaxy._tag.ThisPlayer
