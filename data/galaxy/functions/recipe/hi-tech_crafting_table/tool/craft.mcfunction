# wrench
execute if score @s reqRcpHTct matches 1 as @a[scores={reqHTctCraft=1..},gamemode=!creative] run function galaxy:recipe/hi-tech_crafting_table/tool/requirement-check/wrench
execute if score @s reqRcpHTct matches 1 as @a[scores={reqHTctCraft=1..},tag=sucHTctRcp,gamemode=!creative] run function galaxy:recipe/hi-tech_crafting_table/tool/requirement-remove/wrench
execute if score @s reqRcpHTct matches 1 as @a[scores={reqHTctCraft=1..},tag=sucHTctRcp,gamemode=!creative] run function galaxy:tool/get/wrench
execute if score @s reqRcpHTct matches 1 as @a[scores={reqHTctCraft=1..},gamemode=creative] run function galaxy:tool/get/wrench

# structure empower
execute if score @s reqRcpHTct matches 2 as @a[scores={reqHTctCraft=1..},gamemode=!creative] run function galaxy:recipe/hi-tech_crafting_table/tool/requirement-check/structure_empower
execute if score @s reqRcpHTct matches 2 as @a[scores={reqHTctCraft=1..},tag=sucHTctRcp,gamemode=!creative] run function galaxy:recipe/hi-tech_crafting_table/tool/requirement-remove/structure_empower
execute if score @s reqRcpHTct matches 2 as @a[scores={reqHTctCraft=1..},tag=sucHTctRcp,gamemode=!creative] run function galaxy:tool/get/structure_empower
execute if score @s reqRcpHTct matches 2 as @a[scores={reqHTctCraft=1..},gamemode=creative] run function galaxy:tool/get/structure_empower


execute as @a[scores={reqHTctCraft=1..}] run tag @s remove sucHTctRcp
execute as @a[scores={reqHTctCraft=1..}] run scoreboard players set @s reqHTctCraft 0
