data modify storage cu:list index.input set from storage galaxy:recipe SbldG.attribute
execute store result score #length listIndex run data get storage cu:list index.input
scoreboard players operation #1 calcu_temp = @s sbldAttribute
execute store result score #index listIndex run scoreboard players remove #1 calcu_temp 1
data remove storage cu:list index.result
function cu:list/index
data modify entity @s HandItems[0].tag.GUI.attribute set from storage cu:list index.result
execute if data entity @s HandItems[0].tag.GUI.attribute.value[].type run function galaxy:gui/super_builder-gun/get-value_limit
execute store result score @s sbldValueMin run data get entity @s HandItems[0].tag.GUI.attribute.value.min
execute store result score @s sbldValueMax run data get entity @s HandItems[0].tag.GUI.attribute.value.max
