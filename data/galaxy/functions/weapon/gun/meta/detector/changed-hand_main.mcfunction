# main-hand
execute store result score #calculation_temp1 numeric run data get entity @s SelectedItem.tag.miniUUIDMost
execute store result score #calculation_temp2 numeric run data get entity @s SelectedItem.tag.miniUUIDLeast
execute unless score #calculation_temp1 numeric = @s MhGunUUIDM run tag @s add MhGunChanged
execute unless score #calculation_temp2 numeric = @s MhGunUUIDL run tag @s add MhGunChanged
execute unless score #calculation_temp1 numeric = @s MhGunUUIDM if score #calculation_temp1 numeric = @s FhGunUUIDM run tag @s add MhGunSwap
execute unless score #calculation_temp2 numeric = @s MhGunUUIDL if score #calculation_temp2 numeric = @s FhGunUUIDM run tag @s add MhGunSwap
## store data if UUID changed
execute if entity @s[tag=MhGunChanged] run function galaxy:weapon/gun/meta/data/store_manager-hand_main
## update score if UUID changed
execute if entity @s[tag=MhGunChanged] run scoreboard players operation @s MhGunUUIDM = #calculation_temp1 numeric
execute if entity @s[tag=MhGunChanged] run scoreboard players operation @s MhGunUUIDL = #calculation_temp2 numeric
## 
execute if entity @s[tag=MhGunSwap] run function galaxy:weapon/gun/meta/data/swap_to-hand_main
## extract data from new UUID
execute if entity @s[tag=MhGunChanged,tag=!MhGunSwap] run function galaxy:weapon/gun/meta/data/extract_manager-hand_main
## tag remove
tag @s[tag=MhGunSwap] remove MhGunSwap
tag @s[tag=MhGunChanged] remove MhGunChanged
