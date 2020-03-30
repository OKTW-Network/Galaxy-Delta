# katana
execute if score @s reqRcpHTct matches 1 as @a[scores={reqHTctCraft=1..},gamemode=!creative] run function galaxy:recipe/hi-tech_crafting_table/weapon/requirement-check/katana
execute if score @s reqRcpHTct matches 1 as @a[scores={reqHTctCraft=1..},tag=sucHTctRcp,gamemode=!creative] run function galaxy:recipe/hi-tech_crafting_table/weapon/requirement-remove/katana
execute if score @s reqRcpHTct matches 1 as @a[scores={reqHTctCraft=1..},tag=sucHTctRcp,gamemode=!creative] run function galaxy:weapon/katana/get/katana
execute if score @s reqRcpHTct matches 1 as @a[scores={reqHTctCraft=1..},gamemode=creative] run function galaxy:weapon/katana/get/katana


execute as @a[scores={reqHTctCraft=1..}] run tag @s remove sucHTctRcp
execute as @a[scores={reqHTctCraft=1..}] run scoreboard players set @s reqHTctCraft 0
