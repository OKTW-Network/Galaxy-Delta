execute as @a store success score @s galaxy.GUI.HTct.requestCraftSuccess run clear @s #minecraft:all{CustomData:{galaxy:{trigger:"htct_request_craft"}}} 0
tag @a[scores={galaxy.GUI.HTct.requestCraftSuccess=1..}] add galaxy.request.HTct.craft
execute if entity @a[tag=galaxy.request.HTct.craft] run function galaxy:gui/hi-tech_crafting_table/interface-recipe_requirement/request_craft
tag @a[tag=galaxy.request.HTct.craft] remove galaxy.request.HTct.craft
