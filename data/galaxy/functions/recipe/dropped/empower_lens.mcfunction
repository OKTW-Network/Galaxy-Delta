execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:blaze_rod",Count:6b},PickupDelay:0s}] if data entity @s Thrower run tag @s add galaxy.recipe.dropped.empower_lens.material_1
execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:gold_ingot",Count:4b},PickupDelay:0s}] if data entity @s Thrower run tag @s add galaxy.recipe.dropped.empower_lens.material_2
execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:glass_pane",Count:2b},PickupDelay:0s}] if data entity @s Thrower run tag @s add galaxy.recipe.dropped.empower_lens.material_3

scoreboard players set @e[type=minecraft:item,tag=galaxy.recipe.dropped.empower_lens.material_1] sucDropRcp 0
execute as @e[type=minecraft:item,tag=galaxy.recipe.dropped.empower_lens.material_1] at @s if entity @e[type=minecraft:item,tag=galaxy.recipe.dropped.empower_lens.material_2,distance=..0.5] if entity @e[type=minecraft:item,tag=galaxy.recipe.dropped.empower_lens.material_3,distance=..0.5] run scoreboard players set @s sucDropRcp 1
execute as @e[type=minecraft:item,tag=galaxy.recipe.dropped.empower_lens.material_1,scores={sucDropRcp=1}] at @s run playsound minecraft:entity.zombie_villager.converted block @a ~ ~ ~ 1 2
execute as @e[type=minecraft:item,tag=galaxy.recipe.dropped.empower_lens.material_1,scores={sucDropRcp=1}] at @s run function galaxy:tool/summon/empower_lens
execute as @e[type=minecraft:item,tag=galaxy.recipe.dropped.empower_lens.material_1,scores={sucDropRcp=1}] at @s as @a[distance=..4,advancements={galaxy:empower_lens=false}] run function galaxy:advancement/empower_lens
execute as @e[type=minecraft:item,tag=galaxy.recipe.dropped.empower_lens.material_1,scores={sucDropRcp=1}] at @s run kill @e[type=minecraft:item,tag=galaxy.recipe.dropped.empower_lens.material_2,distance=..1,sort=nearest,limit=1]
execute as @e[type=minecraft:item,tag=galaxy.recipe.dropped.empower_lens.material_1,scores={sucDropRcp=1}] at @s run kill @e[type=minecraft:item,tag=galaxy.recipe.dropped.empower_lens.material_3,distance=..1,sort=nearest,limit=1]
execute as @e[type=minecraft:item,tag=galaxy.recipe.dropped.empower_lens.material_1,scores={sucDropRcp=1}] run kill @s

tag @e[type=minecraft:item,tag=galaxy.recipe.dropped.empower_lens.material_1] remove galaxy.recipe.dropped.empower_lens.material_1
tag @e[type=minecraft:item,tag=galaxy.recipe.dropped.empower_lens.material_2] remove galaxy.recipe.dropped.empower_lens.material_2
tag @e[type=minecraft:item,tag=galaxy.recipe.dropped.empower_lens.material_3] remove galaxy.recipe.dropped.empower_lens.material_3
