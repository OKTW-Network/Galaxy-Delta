data modify storage cu:list index.input set from entity @s HandItems[0].tag.GUI.recipePage
execute store result score #length listIndex run data get storage cu:list index.input
scoreboard players operation #1 calcu_temp = @s reqRcpHTctPage
execute store result score #index listIndex run scoreboard players remove #1 calcu_temp 1
function cu:list/index/main
data modify entity @s HandItems[0].tag.GUI.recipe set from storage cu:list index.result
data modify entity @s HandItems[0].tag.GUI.recipe.Slot set value 16b
data modify entity @s HandItems[0].tag.GUI.recipe.tag merge value {htctRequester:1}
execute store result score @s htctRequMax run data get entity @s HandItems[0].tag.GUI.recipe.requireTotal
execute store result score @s htctRequPageMax run data get entity @s HandItems[0].tag.GUI.recipe.requirePageTotal
