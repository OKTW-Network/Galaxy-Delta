execute store result score #1 temp run data get block ~ ~ ~ Items[{Slot:2b}].Count 1
execute store result block ~ ~ ~ Items[{Slot:2b}].Count byte 1 run scoreboard players remove #1 temp 1

data modify storage galaxy:get item set value []
function galaxy:material/get/steel_ingot
execute store result score #1 temp run data get block ~ ~ ~ Items[{Slot:15b}].Count 1
execute unless data block ~ ~ ~ Items[{Slot:15b}] run data modify block ~ ~ ~ Items[{Slot:15b}] merge from storage galaxy:get item[0]
execute store result block ~ ~ ~ Items[{Slot:15b}].Count byte 1 run scoreboard players add #1 temp 1
