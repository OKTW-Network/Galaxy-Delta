execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:iron_ingot",Count:3b},PickupDelay:0s}] if data entity @s Thrower run tag @s add galaxy.recipe.dropped.wrench.material_1
execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:stick",Count:1b},PickupDelay:0s}] if data entity @s Thrower run tag @s add galaxy.recipe.dropped.wrench.material_2

scoreboard players set @e[type=minecraft:item,tag=galaxy.recipe.dropped.wrench.material_1] sucDropRcp 0
execute as @e[type=minecraft:item,tag=galaxy.recipe.dropped.wrench.material_1] at @s if entity @e[type=minecraft:item,tag=galaxy.recipe.dropped.wrench.material_2,distance=..0.5] run scoreboard players set @s sucDropRcp 1
execute as @e[type=minecraft:item,tag=galaxy.recipe.dropped.wrench.material_1,scores={sucDropRcp=1}] at @s run playsound minecraft:entity.zombie_villager.converted block @a ~ ~ ~ 1 2
execute as @e[type=minecraft:item,tag=galaxy.recipe.dropped.wrench.material_1,scores={sucDropRcp=1}] at @s run function galaxy:tool/summon/wrench
execute as @e[type=minecraft:item,tag=galaxy.recipe.dropped.wrench.material_1,scores={sucDropRcp=1}] at @s run kill @e[type=minecraft:item,tag=galaxy.recipe.dropped.wrench.material_2,distance=..1,sort=nearest,limit=1]
execute as @e[type=minecraft:item,tag=galaxy.recipe.dropped.wrench.material_1,scores={sucDropRcp=1}] run kill @s

tag @e[type=minecraft:item,tag=galaxy.recipe.dropped.wrench.material_1] remove galaxy.recipe.dropped.wrench.material_1
tag @e[type=minecraft:item,tag=galaxy.recipe.dropped.wrench.material_2] remove galaxy.recipe.dropped.wrench.material_2
