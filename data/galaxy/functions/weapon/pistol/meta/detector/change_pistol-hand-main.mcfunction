# main-hand
execute store result score #calculation_temp1 numeric run data get entity @s SelectedItem.tag.miniUUIDMost
execute store result score #calculation_temp2 numeric run data get entity @s SelectedItem.tag.miniUUIDLeast
execute unless score #calculation_temp1 numeric = @s MhPistolUUIDM run tag @s add MhPistolChanged
execute unless score #calculation_temp2 numeric = @s MhPistolUUIDL run tag @s add MhPistolChanged
execute unless score #calculation_temp1 numeric = @s MhPistolUUIDM if score #calculation_temp1 numeric = @s FhPistolUUIDM run tag @s add MhPistolSwap
execute unless score #calculation_temp2 numeric = @s MhPistolUUIDL if score #calculation_temp2 numeric = @s FhPistolUUIDM run tag @s add MhPistolSwap
## store data if UUID changed
execute if entity @s[tag=MhPistolChanged] run function galaxy:weapon/pistol/meta/data/store_manager-hand-main
## update score if UUID changed
execute if entity @s[tag=MhPistolChanged] run scoreboard players operation @s MhPistolUUIDM = #calculation_temp1 numeric
execute if entity @s[tag=MhPistolChanged] run scoreboard players operation @s MhPistolUUIDL = #calculation_temp2 numeric
## 
execute if entity @s[tag=MhPistolSwap] run function galaxy:weapon/pistol/meta/data/swap_to-hand-main
## extract data from new UUID
execute if entity @s[tag=MhPistolChanged,tag=!MhPistolSwap] run function galaxy:weapon/pistol/meta/data/extract_manager-hand-main
## tag remove
tag @s[tag=MhPistolSwap] remove MhPistolSwap
tag @s[tag=MhPistolChanged] remove MhPistolChanged
