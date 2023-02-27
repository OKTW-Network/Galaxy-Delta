data modify storage cu:value list.index.input set from storage galaxy:recipe super_assembler.attribute
scoreboard players operation #1 calcu_temp = @s galaxy.GUI.attribute.type
execute store result score #value.list.index.min cu run scoreboard players remove #1 calcu_temp 1
function cu:value/list/index/main
data modify entity @s HandItems[0].tag.CustomData.galaxy.data.attribute set from storage cu:value list.index.result[0]
execute if data entity @s HandItems[0].tag.CustomData.galaxy.data.attribute.value[].type run function galaxy:gui/super_assembler/interface-main/get-value_limit
execute store result score @s galaxy.GUI.attribute.valueMin run data get entity @s HandItems[0].tag.CustomData.galaxy.data.attribute.value.min
execute store result score @s galaxy.GUI.attribute.valueMax run data get entity @s HandItems[0].tag.CustomData.galaxy.data.attribute.value.max
tag @s[tag=galaxy.super_assembler.is_advanced_value] remove galaxy.super_assembler.is_advanced_value
execute if score @s galaxy.GUI.attribute.valueMax matches 1000.. run tag @s add galaxy.super_assembler.is_advanced_value
execute if score @s galaxy.GUI.attribute.valueMin matches ..-1 run tag @s add galaxy.super_assembler.is_advanced_value
