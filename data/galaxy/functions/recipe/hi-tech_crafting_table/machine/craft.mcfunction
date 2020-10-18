# hi-tech crafting table
execute if score @s reqRcpHTct matches 1 as @a[scores={reqHTctCraft=1..},gamemode=!creative] run function galaxy:recipe/hi-tech_crafting_table/machine/requirement-check/hi-tech_crafting_table
execute if score @s reqRcpHTct matches 1 as @a[scores={reqHTctCraft=1..},tag=sucHTctRcp,gamemode=!creative] run function galaxy:recipe/hi-tech_crafting_table/machine/requirement-remove/hi-tech_crafting_table
execute if score @s reqRcpHTct matches 1 as @a[scores={reqHTctCraft=1..},tag=sucHTctRcp,gamemode=!creative] run function galaxy:block/give/hi-tech_crafting_table
execute if score @s reqRcpHTct matches 1 as @a[scores={reqHTctCraft=1..},gamemode=creative] run function galaxy:block/give/hi-tech_crafting_table

# coke furnace
execute if score @s reqRcpHTct matches 2 as @a[scores={reqHTctCraft=1..},gamemode=!creative] run function galaxy:recipe/hi-tech_crafting_table/machine/requirement-check/coke_furnace
execute if score @s reqRcpHTct matches 2 as @a[scores={reqHTctCraft=1..},tag=sucHTctRcp,gamemode=!creative] run function galaxy:recipe/hi-tech_crafting_table/machine/requirement-remove/coke_furnace
execute if score @s reqRcpHTct matches 2 as @a[scores={reqHTctCraft=1..},tag=sucHTctRcp,gamemode=!creative] run function galaxy:block/give/coke_furnace
execute if score @s reqRcpHTct matches 2 as @a[scores={reqHTctCraft=1..},gamemode=creative] run function galaxy:block/give/coke_furnace

# advanced blast furnace
execute if score @s reqRcpHTct matches 3 as @a[scores={reqHTctCraft=1..},gamemode=!creative] run function galaxy:recipe/hi-tech_crafting_table/machine/requirement-check/advanced_blast_furnace
execute if score @s reqRcpHTct matches 3 as @a[scores={reqHTctCraft=1..},tag=sucHTctRcp,gamemode=!creative] run function galaxy:recipe/hi-tech_crafting_table/machine/requirement-remove/advanced_blast_furnace
execute if score @s reqRcpHTct matches 3 as @a[scores={reqHTctCraft=1..},tag=sucHTctRcp,gamemode=!creative] run function galaxy:block/give/advanced_blast_furnace
execute if score @s reqRcpHTct matches 3 as @a[scores={reqHTctCraft=1..},gamemode=creative] run function galaxy:block/give/advanced_blast_furnace


execute as @a[scores={reqHTctCraft=1..}] run tag @s remove sucHTctRcp
execute as @a[scores={reqHTctCraft=1..}] run scoreboard players set @s reqHTctCraft 0
