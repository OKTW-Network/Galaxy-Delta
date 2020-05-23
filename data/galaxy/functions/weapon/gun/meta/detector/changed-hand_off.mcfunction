# off-hand
execute store result score #calculation_temp1 numeric run data get entity @s Inventory[{Slot:-106b}].tag.miniUUIDMost
execute store result score #calculation_temp2 numeric run data get entity @s Inventory[{Slot:-106b}].tag.miniUUIDLeast
execute unless score #calculation_temp1 numeric = @s FhGunUUIDM run tag @s add FhGunChanged
execute unless score #calculation_temp2 numeric = @s FhGunUUIDL run tag @s add FhGunChanged
## store data if UUID changed
execute if entity @s[tag=FhGunChanged] run function galaxy:weapon/gun/meta/data/store_manager-hand_off
## update score if UUID changed
execute if entity @s[tag=FhGunChanged] run scoreboard players operation @s FhGunUUIDM = #calculation_temp1 numeric
execute if entity @s[tag=FhGunChanged] run scoreboard players operation @s FhGunUUIDL = #calculation_temp2 numeric
## extract data from new UUID
execute if entity @s[tag=FhGunChanged] run function galaxy:weapon/gun/meta/data/extract_manager-hand_off
## tag remove
tag @s[tag=FhGunChanged] remove FhGunChanged
