scoreboard players operation #weapon.gun.data.find_data_container.UUID0 galaxy = @s galaxy.gun.offHandUUID0
scoreboard players operation #weapon.gun.data.find_data_container.UUID1 galaxy = @s galaxy.gun.offHandUUID1
scoreboard players operation #weapon.gun.data.find_data_container.UUID2 galaxy = @s galaxy.gun.offHandUUID2
scoreboard players operation #weapon.gun.data.find_data_container.UUID3 galaxy = @s galaxy.gun.offHandUUID3

tag @e remove galaxy._tag.gun.data.find_data_container.elect
execute as @e[tag=galaxy.data.gun] if score @s galaxy.data.UUID0 = #weapon.gun.data.find_data_container.UUID0 galaxy if score @s galaxy.data.UUID1 = #weapon.gun.data.find_data_container.UUID1 galaxy if score @s galaxy.data.UUID2 = #weapon.gun.data.find_data_container.UUID2 galaxy if score @s galaxy.data.UUID3 = #weapon.gun.data.find_data_container.UUID3 galaxy run tag @s add galaxy._tag.gun.data.find_data_container.elect
