# elevator
execute if score @s reqRcpHTct matches 1 as @a[scores={reqHTctCraft=1..},gamemode=!creative] run function galaxy:recipe/hi-tech_crafting_table/functional_block/requirement-check/elevator
execute if score @s reqRcpHTct matches 1 as @a[scores={reqHTctCraft=1..},tag=sucHTctRcp,gamemode=!creative] run function galaxy:recipe/hi-tech_crafting_table/functional_block/requirement-remove/elevator
execute if score @s reqRcpHTct matches 1 as @a[scores={reqHTctCraft=1..},tag=sucHTctRcp,gamemode=!creative] run function galaxy:block/functional/get/elevator
execute if score @s reqRcpHTct matches 1 as @a[scores={reqHTctCraft=1..},gamemode=creative] run function galaxy:block/functional/get/elevator

# katana display stand type 1
execute if score @s reqRcpHTct matches 2 as @a[scores={reqHTctCraft=1..},gamemode=!creative] run function galaxy:recipe/hi-tech_crafting_table/functional_block/requirement-check/katana_display_stand-1
execute if score @s reqRcpHTct matches 2 as @a[scores={reqHTctCraft=1..},tag=sucHTctRcp,gamemode=!creative] run function galaxy:recipe/hi-tech_crafting_table/functional_block/requirement-remove/katana_display_stand-1
execute if score @s reqRcpHTct matches 2 as @a[scores={reqHTctCraft=1..},tag=sucHTctRcp,gamemode=!creative] run function galaxy:block/functional/get/katana_display_stand-1
execute if score @s reqRcpHTct matches 2 as @a[scores={reqHTctCraft=1..},gamemode=creative] run function galaxy:block/functional/get/katana_display_stand-1

# katana display stand type 2
execute if score @s reqRcpHTct matches 3 as @a[scores={reqHTctCraft=1..},gamemode=!creative] run function galaxy:recipe/hi-tech_crafting_table/functional_block/requirement-check/katana_display_stand-2
execute if score @s reqRcpHTct matches 3 as @a[scores={reqHTctCraft=1..},tag=sucHTctRcp,gamemode=!creative] run function galaxy:recipe/hi-tech_crafting_table/functional_block/requirement-remove/katana_display_stand-2
execute if score @s reqRcpHTct matches 3 as @a[scores={reqHTctCraft=1..},tag=sucHTctRcp,gamemode=!creative] run function galaxy:block/functional/get/katana_display_stand-2
execute if score @s reqRcpHTct matches 3 as @a[scores={reqHTctCraft=1..},gamemode=creative] run function galaxy:block/functional/get/katana_display_stand-2

# katana display stand type 3
execute if score @s reqRcpHTct matches 4 as @a[scores={reqHTctCraft=1..},gamemode=!creative] run function galaxy:recipe/hi-tech_crafting_table/functional_block/requirement-check/katana_display_stand-3
execute if score @s reqRcpHTct matches 4 as @a[scores={reqHTctCraft=1..},tag=sucHTctRcp,gamemode=!creative] run function galaxy:recipe/hi-tech_crafting_table/functional_block/requirement-remove/katana_display_stand-3
execute if score @s reqRcpHTct matches 4 as @a[scores={reqHTctCraft=1..},tag=sucHTctRcp,gamemode=!creative] run function galaxy:block/functional/get/katana_display_stand-3
execute if score @s reqRcpHTct matches 4 as @a[scores={reqHTctCraft=1..},gamemode=creative] run function galaxy:block/functional/get/katana_display_stand-3

# katana display stand type 4
execute if score @s reqRcpHTct matches 5 as @a[scores={reqHTctCraft=1..},gamemode=!creative] run function galaxy:recipe/hi-tech_crafting_table/functional_block/requirement-check/katana_display_stand-4
execute if score @s reqRcpHTct matches 5 as @a[scores={reqHTctCraft=1..},tag=sucHTctRcp,gamemode=!creative] run function galaxy:recipe/hi-tech_crafting_table/functional_block/requirement-remove/katana_display_stand-4
execute if score @s reqRcpHTct matches 5 as @a[scores={reqHTctCraft=1..},tag=sucHTctRcp,gamemode=!creative] run function galaxy:block/functional/get/katana_display_stand-4
execute if score @s reqRcpHTct matches 5 as @a[scores={reqHTctCraft=1..},gamemode=creative] run function galaxy:block/functional/get/katana_display_stand-4


execute as @a[scores={reqHTctCraft=1..}] run tag @s remove sucHTctRcp
execute as @a[scores={reqHTctCraft=1..}] run scoreboard players set @s reqHTctCraft 0
