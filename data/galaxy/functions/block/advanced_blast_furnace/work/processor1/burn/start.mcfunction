function galaxy:block/advanced_blast_furnace/work/processor1/burn/check-fuel

execute if score @s workProc1CanFuel matches 1 store result score #1 calcu_temp run data get storage galaxy:get item[{fuel:1b}].Count 1
execute if score @s workProc1CanFuel matches 1 if score #1 calcu_temp matches 1.. store result score @s workProc1BurnMax store result score @s workProc1Burn run data get storage galaxy:get item[{fuel:1b}].tag.CustomData.galaxy.tag.fuelABf 1
execute if score @s workProc1CanFuel matches 1 if score #1 calcu_temp matches 1.. store result block ~ ~ ~ Items[{Slot:20b}].Count byte 1 run scoreboard players remove #1 calcu_temp 1
