data modify storage cu:value list.index.input set from entity @s HandItems[0].tag.CustomData.galaxy.data.attribute.value
execute store result score #1 calcu_temp run data get entity @s HandItems[0].tag.CustomData.galaxy.data.generateOption.type
execute store result score #value.list.index.min cu run scoreboard players remove #1 calcu_temp 1
function cu:value/list/index/main
data modify entity @s HandItems[0].tag.CustomData.galaxy.data.attribute.value set from storage cu:value list.index.result[0]
