tag @s add galaxy._task.hi_tech_crafting_table.buildResult

execute as @a store success score @s galaxy._success run clear @s #minecraft:all{CustomData:{galaxy:{Type:"trigger",id:"hi_tech_crafting_table.recipe.result_icon"}}} 0
tag @a[scores={galaxy._success=1..},sort=nearest,limit=1] add galaxy._tag.hi_tech_crafting_table.ThisRequestCraft
clear @a[tag=galaxy._tag.hi_tech_crafting_table.ThisRequestCraft] #minecraft:all{CustomData:{galaxy:{Type:"trigger",id:"hi_tech_crafting_table.recipe.result_icon"}}}
data modify storage galaxy:temp +recipe.hi_tech_crafting_table.craft.recipe set from entity @s data.galaxy.hi_tech_crafting_table.recipe.id
execute as @a[tag=galaxy._tag.hi_tech_crafting_table.ThisRequestCraft] run function galaxy:recipe/hi_tech_crafting_table/craft
tag @a[tag=galaxy._tag.hi_tech_crafting_table.ThisRequestCraft] remove galaxy._tag.hi_tech_crafting_table.ThisRequestCraft
