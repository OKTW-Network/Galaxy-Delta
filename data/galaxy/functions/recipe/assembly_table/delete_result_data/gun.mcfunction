execute store result score #recipe.assembly_table.delete_result_data.UUID0 galaxy run data get entity @s data.galaxy.assembly_table.result.tag.CustomData.galaxy.tag.assemblyInfo.UUID[0]
execute store result score #recipe.assembly_table.delete_result_data.UUID1 galaxy run data get entity @s data.galaxy.assembly_table.result.tag.CustomData.galaxy.tag.assemblyInfo.UUID[1]
execute store result score #recipe.assembly_table.delete_result_data.UUID2 galaxy run data get entity @s data.galaxy.assembly_table.result.tag.CustomData.galaxy.tag.assemblyInfo.UUID[2]
execute store result score #recipe.assembly_table.delete_result_data.UUID3 galaxy run data get entity @s data.galaxy.assembly_table.result.tag.CustomData.galaxy.tag.assemblyInfo.UUID[3]

execute as @e[tag=galaxy.data.gun] if score @s galaxy.data.UUID0 = #recipe.assembly_table.delete_result_data.UUID0 galaxy if score @s galaxy.data.UUID1 = #recipe.assembly_table.delete_result_data.UUID1 galaxy if score @s galaxy.data.UUID2 = #recipe.assembly_table.delete_result_data.UUID2 galaxy if score @s galaxy.data.UUID3 = #recipe.assembly_table.delete_result_data.UUID3 galaxy run kill @s

execute as @a if score @s galaxy.gun.mainHandUUID0 = #recipe.assembly_table.delete_result_data.UUID0 galaxy if score @s galaxy.gun.mainHandUUID1 = #recipe.assembly_table.delete_result_data.UUID1 galaxy if score @s galaxy.gun.mainHandUUID2 = #recipe.assembly_table.delete_result_data.UUID2 galaxy if score @s galaxy.gun.mainHandUUID3 = #recipe.assembly_table.delete_result_data.UUID3 galaxy run function galaxy:weapon/gun/data/delete_main_hand
execute as @a if score @s galaxy.gun.offHandUUID0 = #recipe.assembly_table.delete_result_data.UUID0 galaxy if score @s galaxy.gun.offHandUUID1 = #recipe.assembly_table.delete_result_data.UUID1 galaxy if score @s galaxy.gun.offHandUUID2 = #recipe.assembly_table.delete_result_data.UUID2 galaxy if score @s galaxy.gun.offHandUUID3 = #recipe.assembly_table.delete_result_data.UUID3 galaxy run function galaxy:weapon/gun/data/delete_off_hand