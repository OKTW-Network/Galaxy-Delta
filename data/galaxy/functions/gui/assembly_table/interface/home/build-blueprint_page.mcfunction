data remove block ~ ~ ~ Items[{Slot:6b}]
data remove block ~ ~ ~ Items[{Slot:7b}]
data remove block ~ ~ ~ Items[{Slot:15b}]
data remove block ~ ~ ~ Items[{Slot:16b}]
data remove block ~ ~ ~ Items[{Slot:24b}]
data remove block ~ ~ ~ Items[{Slot:25b}]

data modify storage cu:value list.index.input set from storage galaxy:recipe assembly_table.blueprint
scoreboard players set #1 calcu_temp 6
scoreboard players operation #2 calcu_temp = @s galaxy.GUI.assembly_table.blueprintPage
scoreboard players remove #2 calcu_temp 1
execute store result score #value.list.index.start cu run scoreboard players operation #1 calcu_temp *= #2 calcu_temp
scoreboard players set #1 calcu_temp 6
scoreboard players operation #1 calcu_temp *= @s galaxy.GUI.assembly_table.blueprintPage
execute if score #1 calcu_temp > #recipe.assembly_table.blueprintMax galaxy run scoreboard players operation #1 calcu_temp = #recipe.assembly_table.blueprintMax galaxy
execute store result score #value.list.index.end cu run scoreboard players remove #1 calcu_temp 1
function cu:value/list/index/main
data modify block ~ ~ ~ Items append from storage cu:value list.index.result[].icon
