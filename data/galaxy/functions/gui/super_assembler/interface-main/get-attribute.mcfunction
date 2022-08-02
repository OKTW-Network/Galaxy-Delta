data modify storage cu:list index.input set from storage galaxy:recipe super_assembler.attribute
execute store result score #list.length cu run data get storage cu:list index.input
scoreboard players operation #1 calcu_temp = @s galaxy.GUI.attribute.type
execute store result score #list.index cu run scoreboard players remove #1 calcu_temp 1
function cu:list/index/main
data modify entity @s HandItems[0].tag.CustomData.galaxy.data.attribute set from storage cu:list index.result
execute if data entity @s HandItems[0].tag.CustomData.galaxy.data.attribute.value[].type run function galaxy:gui/super_assembler/interface-main/get-value_limit
execute store result score @s galaxy.GUI.attribute.valueMin run data get entity @s HandItems[0].tag.CustomData.galaxy.data.attribute.value.min
execute store result score @s galaxy.GUI.attribute.valueMax run data get entity @s HandItems[0].tag.CustomData.galaxy.data.attribute.value.max
tag @s[tag=galaxy.super_assembler.is_advanced_value] remove galaxy.super_assembler.is_advanced_value
execute if score @s galaxy.GUI.attribute.valueMax matches 1000.. run tag @s add galaxy.super_assembler.is_advanced_value
execute if score @s galaxy.GUI.attribute.valueMin matches ..-1 run tag @s add galaxy.super_assembler.is_advanced_value
