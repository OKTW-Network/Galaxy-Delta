execute store result score #1 calcu_temp run data get block ~ ~ ~ Items[{Slot:11b}].Count 1
execute store result block ~ ~ ~ Items[{Slot:11b}].Count byte 1 run scoreboard players remove #1 calcu_temp 1

data modify storage galaxy:get item set value []
function galaxy:material/get/coke
execute store result score #1 calcu_temp run data get block ~ ~ ~ Items[{Slot:15b}].Count 1
execute unless data block ~ ~ ~ Items[{Slot:15b}] run data modify block ~ ~ ~ Items[{Slot:15b}] merge from storage galaxy:get item[0]
execute store result block ~ ~ ~ Items[{Slot:15b}].Count byte 1 run scoreboard players add #1 calcu_temp 1
