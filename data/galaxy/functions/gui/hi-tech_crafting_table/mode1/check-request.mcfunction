execute as @a store success score @s reqHTctCraft run clear @s #minecraft:all{htctRequester:1} 0
execute if entity @a[scores={reqHTctCraft=1}] run function galaxy:recipe/hi-tech_crafting_table/craft
