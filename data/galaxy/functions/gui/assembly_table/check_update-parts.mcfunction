data modify storage cu:compare input1 set from entity @s HandItems[0].tag.CustomData.galaxy.data.parts
function galaxy:gui/assembly_table/data_get-parts
data modify storage cu:compare input2 set from storage galaxy:get item
function cu:compare/different
execute if score #result compare matches 1 run tag @s add rebuildResult
