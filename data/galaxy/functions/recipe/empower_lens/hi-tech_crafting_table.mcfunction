fill ~-1 ~ ~-1 ~1 ~ ~1 minecraft:air
function galaxy:block/set_block/hi-tech_crafting_table

execute as @a[distance=..12,advancements={galaxy:hi-tech_crafting_table=false}] run function galaxy:advancement/hi-tech_crafting_table

tag @s add galaxy.recipe.empower.succes
