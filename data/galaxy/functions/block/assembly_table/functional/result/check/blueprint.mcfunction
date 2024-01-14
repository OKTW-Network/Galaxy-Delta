scoreboard players set #1 temp 0
execute unless data entity @s data.galaxy.assembly_table.blueprint run scoreboard players set #1 temp 1
execute if score #1 temp matches 0 if data entity @s data.galaxy.assembly_table.blueprint run function galaxy:block/assembly_table/functional/result/check/current_blueprint
execute if score #1 temp matches 1 run tag @s add galaxy._task.assembly_table.changeBlueprintFromResult
