execute as @e[tag=galaxy.entity] at @s unless block ~ ~ ~ #minecraft:entity_passable run function galaxy:entity/destruct
execute as @e[tag=galaxy.entity,tag=galaxy._tag.entity.attachment] at @s align xyz positioned ~0.5 ~0.5 ~0.5 run function galaxy:entity/attachment/main

execute as @e[tag=galaxy.entity.empower_lens,limit=1,sort=random] at @s run function galaxy:tool/empower_lens
