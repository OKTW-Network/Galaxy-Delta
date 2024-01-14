data modify storage cu:value different.input1 set from entity @s data.galaxy.assembly_table.blueprint.id
data modify storage cu:value different.input2 set from storage galaxy:temp +block.assembly_table.resultAssemblyInfo.blueprintID
function cu:value/different
scoreboard players set #1 temp 0
execute if score #value.different.result cu matches 1 run scoreboard players set #1 temp 1
