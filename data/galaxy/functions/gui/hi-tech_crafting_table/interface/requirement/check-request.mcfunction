execute as @a store success score @s galaxy.GUI.hi-tech_crafting_table.requestCraft run clear @s #minecraft:all{CustomData:{galaxy:{trigger:"htct_request_craft"}}} 0
tag @a[scores={galaxy.GUI.hi-tech_crafting_table.requestCraft=1..}] add galaxy._request.HTct.craft
execute if entity @a[tag=galaxy._request.HTct.craft] run function galaxy:gui/hi-tech_crafting_table/interface/requirement/request_craft
tag @a[tag=galaxy._request.HTct.craft] remove galaxy._request.HTct.craft
