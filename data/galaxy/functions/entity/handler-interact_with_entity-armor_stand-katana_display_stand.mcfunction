tag @s add triggerInteractEntity

execute at @s as @e[tag=katana_display_stand,distance=..5] at @s run function galaxy:entity/katana_display_stand/main

tag @s remove triggerInteractEntity
