tag @s add triggerInteractEntity

execute at @s as @e[tag=empower_lens,distance=..10] at @s run function galaxy:entity/empower_lens/main

tag @s remove triggerInteractEntity
