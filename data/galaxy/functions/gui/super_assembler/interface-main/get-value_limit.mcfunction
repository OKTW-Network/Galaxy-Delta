data modify storage cu:list index.input set from entity @s HandItems[0].tag.CustomData.galaxy.data.attribute.value
execute store result score #list.length cu run data get storage cu:list index.input
execute store result score #1 calcu_temp run data get entity @s HandItems[0].tag.CustomData.galaxy.data.generateOption.type
execute store result score #list.index cu run scoreboard players remove #1 calcu_temp 1
function cu:list/index/main
data modify entity @s HandItems[0].tag.CustomData.galaxy.data.attribute.value set from storage cu:list index.result
