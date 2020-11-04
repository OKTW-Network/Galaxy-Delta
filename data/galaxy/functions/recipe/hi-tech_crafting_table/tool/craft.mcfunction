# wrench
execute if score @s reqRcpHTct matches 1 as @a[scores={reqHTctCraft=1..},gamemode=!creative] run function galaxy:recipe/hi-tech_crafting_table/tool/requirement-check/galaxy_delta
execute if score @s reqRcpHTct matches 1 as @a[scores={reqHTctCraft=1..},tag=sucHTctRcp,gamemode=!creative] run function galaxy:recipe/hi-tech_crafting_table/tool/requirement-remove/galaxy_delta
execute if score @s reqRcpHTct matches 1 as @a[scores={reqHTctCraft=1..},tag=sucHTctRcp,gamemode=!creative] run function galaxy:book/give/galaxy_delta
execute if score @s reqRcpHTct matches 1 as @a[scores={reqHTctCraft=1..},gamemode=creative] run function galaxy:book/give/galaxy_delta

# wrench
execute if score @s reqRcpHTct matches 2 as @a[scores={reqHTctCraft=1..},gamemode=!creative] run function galaxy:recipe/hi-tech_crafting_table/tool/requirement-check/wrench
execute if score @s reqRcpHTct matches 2 as @a[scores={reqHTctCraft=1..},tag=sucHTctRcp,gamemode=!creative] run function galaxy:recipe/hi-tech_crafting_table/tool/requirement-remove/wrench
execute if score @s reqRcpHTct matches 2 as @a[scores={reqHTctCraft=1..},tag=sucHTctRcp,gamemode=!creative] run function galaxy:tool/give/wrench
execute if score @s reqRcpHTct matches 2 as @a[scores={reqHTctCraft=1..},gamemode=creative] run function galaxy:tool/give/wrench

# structure empower
execute if score @s reqRcpHTct matches 3 as @a[scores={reqHTctCraft=1..},gamemode=!creative] run function galaxy:recipe/hi-tech_crafting_table/tool/requirement-check/empower_lens
execute if score @s reqRcpHTct matches 3 as @a[scores={reqHTctCraft=1..},tag=sucHTctRcp,gamemode=!creative] run function galaxy:recipe/hi-tech_crafting_table/tool/requirement-remove/empower_lens
execute if score @s reqRcpHTct matches 3 as @a[scores={reqHTctCraft=1..},tag=sucHTctRcp,gamemode=!creative] run function galaxy:tool/give/empower_lens
execute if score @s reqRcpHTct matches 3 as @a[scores={reqHTctCraft=1..},gamemode=creative] run function galaxy:tool/give/empower_lens


execute as @a[scores={reqHTctCraft=1..}] run tag @s remove sucHTctRcp
execute as @a[scores={reqHTctCraft=1..}] run scoreboard players set @s reqHTctCraft 0
