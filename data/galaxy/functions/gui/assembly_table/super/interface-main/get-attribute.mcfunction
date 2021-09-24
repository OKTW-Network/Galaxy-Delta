data modify storage cu:list index.input set from storage galaxy:recipe Samb.attribute
execute store result score #length listIndex run data get storage cu:list index.input
scoreboard players operation #1 calcu_temp = @s sbldAttribute
execute store result score #index listIndex run scoreboard players remove #1 calcu_temp 1
function cu:list/index/main
data modify entity @s HandItems[0].tag.GUI.attribute set from storage cu:list index.result
execute if data entity @s HandItems[0].tag.GUI.attribute.value[].type run function galaxy:gui/assembly_table/super/interface-main/get-value_limit
execute store result score @s sbldValueMin run data get entity @s HandItems[0].tag.GUI.attribute.value.min
execute store result score @s sbldValueMax run data get entity @s HandItems[0].tag.GUI.attribute.value.max
tag @s[tag=galaxy.super_assembler.is_advanced_value] remove galaxy.super_assembler.is_advanced_value
execute if score @s sbldValueMax matches 1000.. run tag @s add galaxy.super_assembler.is_advanced_value
execute if score @s sbldValueMin matches ..-1 run tag @s add galaxy.super_assembler.is_advanced_value