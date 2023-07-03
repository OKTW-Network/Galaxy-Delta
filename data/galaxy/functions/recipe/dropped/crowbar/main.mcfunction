tag @s add galaxy._tag.recipe.dropped.material.1
execute align xyz run summon minecraft:marker ~ ~ ~ {Tags:["galaxy.dummy.droppedRecipeAnchor"]}
execute as @e[tag=galaxy.dummy.droppedRecipeAnchor] at @s as @e[tag=galaxy._tag.TheseRecipeDroppedCandidate,nbt={Item:{id:"minecraft:stick",Count:2b}},dx=0,dy=0,dz=0,sort=nearest,limit=1] run tag @s add galaxy._tag.recipe.dropped.material.2
kill @e[tag=galaxy.dummy.droppedRecipeAnchor]

execute if entity @e[tag=galaxy._tag.recipe.dropped.material.2] run tag @s add galaxy._success.recipe.dropped
execute if entity @s[tag=galaxy._success.recipe.dropped] run function galaxy:recipe/dropped/crowbar/fusion

tag @e remove galaxy._tag.recipe.dropped.material.1
tag @e remove galaxy._tag.recipe.dropped.material.2
