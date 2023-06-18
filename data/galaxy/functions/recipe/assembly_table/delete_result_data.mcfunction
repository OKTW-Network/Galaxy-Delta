scoreboard players set #recipe.assembly_table.delete_result_data.success galaxy 0

execute store success score #recipe.assembly_table.delete_result_data.success galaxy if data entity @s data.galaxy.assembly_table.result.tag.CustomData.galaxy{id:"gun"} run function galaxy:recipe/assembly_table/delete_result_data/gun

execute if score #recipe.assembly_table.delete_result_data.success galaxy matches 0 run function #galaxy:recipe/assembly_table/delete_result_data
