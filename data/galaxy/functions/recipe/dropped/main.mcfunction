execute as @e[type=minecraft:item,nbt={OnGround:1b,PickupDelay:0s},predicate=galaxy:recipe/dropped/on_the_crafting_table] if data entity @s Thrower run tag @s add galaxy._tag.TheseRecipeDroppedCandidate

execute as @e[tag=galaxy._tag.TheseRecipeDroppedCandidate,nbt={Item:{id:"minecraft:iron_ingot",Count:3b}}] at @s run function galaxy:recipe/dropped/wrench/main
execute as @e[tag=galaxy._tag.TheseRecipeDroppedCandidate,nbt={Item:{id:"minecraft:iron_ingot",Count:4b}}] at @s run function galaxy:recipe/dropped/crowbar/main
execute as @e[tag=galaxy._tag.TheseRecipeDroppedCandidate,nbt={Item:{id:"minecraft:blaze_rod",Count:6b}}] at @s run function galaxy:recipe/dropped/empower_lens/main
