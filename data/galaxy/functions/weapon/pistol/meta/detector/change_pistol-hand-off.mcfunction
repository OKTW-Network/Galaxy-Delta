# off-hand
execute store result score #calculation_temp1 numeric run data get entity @s Inventory[{Slot:-106b}].tag.miniUUIDMost
execute store result score #calculation_temp2 numeric run data get entity @s Inventory[{Slot:-106b}].tag.miniUUIDLeast
execute unless score #calculation_temp1 numeric = @s FhPistolUUIDM run tag @s add FhPistolChanged
execute unless score #calculation_temp2 numeric = @s FhPistolUUIDL run tag @s add FhPistolChanged
## store data if UUID changed
execute if entity @s[tag=FhPistolChanged] run function galaxy:weapon/pistol/meta/data/store_manager-hand-off
## update score if UUID changed
execute if entity @s[tag=FhPistolChanged] run scoreboard players operation @s FhPistolUUIDM = #calculation_temp1 numeric
execute if entity @s[tag=FhPistolChanged] run scoreboard players operation @s FhPistolUUIDL = #calculation_temp2 numeric
## extract data from new UUID
execute if entity @s[tag=FhPistolChanged] run function galaxy:weapon/pistol/meta/data/extract_manager-hand-off
## tag remove
tag @s[tag=FhPistolChanged] remove FhPistolChanged
