data remove block ~ ~ ~ Items[{Slot:6b}]
data remove block ~ ~ ~ Items[{Slot:7b}]
data remove block ~ ~ ~ Items[{Slot:8b}]
data remove block ~ ~ ~ Items[{Slot:15b}]
data remove block ~ ~ ~ Items[{Slot:16b}]
data remove block ~ ~ ~ Items[{Slot:17b}]

data modify storage cu:value list.index.input set from entity @s data.galaxy.gui.alteration_page
scoreboard players set #1 temp 6
scoreboard players operation #2 temp = @s galaxy.block.assembly_table.alterationPageNumber
scoreboard players remove #2 temp 1
execute store result score #value.list.index.start cu run scoreboard players operation #1 temp *= #2 temp
scoreboard players set #1 temp 6
scoreboard players operation #1 temp *= @s galaxy.block.assembly_table.alterationPageNumber
execute if score #1 temp > @s galaxy.block.assembly_table.alterationMax run scoreboard players operation #1 temp = @s galaxy.block.assembly_table.alterationMax
execute store result score #value.list.index.end cu run scoreboard players remove #1 temp 1
function cu:value/list/index/main
data modify block ~ ~ ~ Items append from storage cu:value list.index.result[]
