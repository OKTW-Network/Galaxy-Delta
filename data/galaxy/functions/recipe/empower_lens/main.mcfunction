execute align xyz positioned ~0.5 ~-1 ~0.5 if predicate galaxy:recipe/empower_lens/hi-tech_crafting_table/all run function galaxy:recipe/empower_lens/hi-tech_crafting_table

execute if entity @s[tag=galaxy.recipe.empower.succes] run playsound minecraft:block.glass.break block @a ~ ~ ~
execute if entity @s[tag=galaxy.recipe.empower.succes] run summon minecraft:lightning_bolt ~ ~-0.25 ~
kill @s[tag=galaxy.recipe.empower.succes]
