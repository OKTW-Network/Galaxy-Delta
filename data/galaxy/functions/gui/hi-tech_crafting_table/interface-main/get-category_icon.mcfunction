data modify storage cu:list index.input set from storage galaxy:recipe HTct.category
execute store result score #list.length cu run data get storage cu:list index.input
scoreboard players operation #1 calcu_temp = @s galaxy.GUI.HTct.category
scoreboard players remove #1 calcu_temp 1
execute store result score #list.index cu run scoreboard players remove #1 calcu_temp 1
execute if score #list.index cu matches ..-1 run scoreboard players operation #list.index cu += #list.length cu
function cu:list/index/main
data modify entity @s HandItems[0].tag.CustomData.galaxy.data.categoryPrev.icon set from storage cu:list index.result.icon

data modify storage cu:list index.input set from storage galaxy:recipe HTct.category
execute store result score #list.length cu run data get storage cu:list index.input
scoreboard players operation #1 calcu_temp = @s galaxy.GUI.HTct.category
scoreboard players add #1 calcu_temp 1
execute store result score #list.index cu run scoreboard players remove #1 calcu_temp 1
execute if score #list.index cu >= #list.length cu run scoreboard players operation #list.index cu -= #list.length cu
function cu:list/index/main
data modify entity @s HandItems[0].tag.CustomData.galaxy.data.categoryNext.icon set from storage cu:list index.result.icon
