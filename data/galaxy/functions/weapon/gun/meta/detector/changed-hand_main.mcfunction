# main-hand
execute store result score #calculation_temp1 numeric run data get entity @s SelectedItem.tag.UUID[0]
execute store result score #calculation_temp2 numeric run data get entity @s SelectedItem.tag.UUID[1]
execute store result score #calculation_temp3 numeric run data get entity @s SelectedItem.tag.UUID[2]
execute store result score #calculation_temp4 numeric run data get entity @s SelectedItem.tag.UUID[3]
execute unless score #calculation_temp1 numeric = @s MhGunUUID0 run tag @s add MhGunChanged
execute unless score #calculation_temp2 numeric = @s MhGunUUID1 run tag @s add MhGunChanged
execute unless score #calculation_temp3 numeric = @s MhGunUUID2 run tag @s add MhGunChanged
execute unless score #calculation_temp4 numeric = @s MhGunUUID3 run tag @s add MhGunChanged
execute if entity @s[tag=MhGunChanged] if score #calculation_temp1 numeric = @s FhGunUUID0 if score #calculation_temp2 numeric = @s FhGunUUID1 if score #calculation_temp3 numeric = @s FhGunUUID2 if score #calculation_temp4 numeric = @s FhGunUUID3 run tag @s add MhGunSwap
## store data if UUID changed
execute if entity @s[tag=MhGunChanged] run function galaxy:weapon/gun/meta/data/store_manager-hand_main
## update score if UUID changed
execute if entity @s[tag=MhGunChanged] run scoreboard players operation @s MhGunUUID0 = #calculation_temp1 numeric
execute if entity @s[tag=MhGunChanged] run scoreboard players operation @s MhGunUUID1 = #calculation_temp2 numeric
execute if entity @s[tag=MhGunChanged] run scoreboard players operation @s MhGunUUID2 = #calculation_temp3 numeric
execute if entity @s[tag=MhGunChanged] run scoreboard players operation @s MhGunUUID3 = #calculation_temp4 numeric
## 
execute if entity @s[tag=MhGunSwap] run function galaxy:weapon/gun/meta/data/swap_to-hand_main
## extract data from new UUID
execute if entity @s[tag=MhGunChanged,tag=!MhGunSwap] run function galaxy:weapon/gun/meta/data/extract_manager-hand_main
## tag remove
tag @s[tag=MhGunSwap] remove MhGunSwap
tag @s[tag=MhGunChanged] remove MhGunChanged
