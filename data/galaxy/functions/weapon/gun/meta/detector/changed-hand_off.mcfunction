# off-hand
execute store result score #calculation_temp1 numeric run data get entity @s Inventory[{Slot:-106b}].tag.UUID[0]
execute store result score #calculation_temp2 numeric run data get entity @s Inventory[{Slot:-106b}].tag.UUID[1]
execute store result score #calculation_temp3 numeric run data get entity @s Inventory[{Slot:-106b}].tag.UUID[2]
execute store result score #calculation_temp4 numeric run data get entity @s Inventory[{Slot:-106b}].tag.UUID[3]
execute unless score #calculation_temp1 numeric = @s FhGunUUID0 run tag @s add FhGunChanged
execute unless score #calculation_temp2 numeric = @s FhGunUUID1 run tag @s add FhGunChanged
execute unless score #calculation_temp3 numeric = @s FhGunUUID2 run tag @s add FhGunChanged
execute unless score #calculation_temp4 numeric = @s FhGunUUID3 run tag @s add FhGunChanged
## store data if UUID changed
execute if entity @s[tag=FhGunChanged] run function galaxy:weapon/gun/meta/data/store_manager-hand_off
## update score if UUID changed
execute if entity @s[tag=FhGunChanged] run scoreboard players operation @s FhGunUUID0 = #calculation_temp1 numeric
execute if entity @s[tag=FhGunChanged] run scoreboard players operation @s FhGunUUID1 = #calculation_temp2 numeric
execute if entity @s[tag=FhGunChanged] run scoreboard players operation @s FhGunUUID2 = #calculation_temp3 numeric
execute if entity @s[tag=FhGunChanged] run scoreboard players operation @s FhGunUUID3 = #calculation_temp4 numeric
## extract data from new UUID
execute if entity @s[tag=FhGunChanged] run function galaxy:weapon/gun/meta/data/extract_manager-hand_off
## tag remove
tag @s[tag=FhGunChanged] remove FhGunChanged
