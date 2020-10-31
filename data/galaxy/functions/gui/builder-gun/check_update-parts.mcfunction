data modify storage cu:compare input1 set from entity @s HandItems[0].tag.GUI.parts
function galaxy:gui/builder-gun/data_get-parts
data modify storage cu:compare input2 set from storage galaxy:get item
function cu:compare/different
execute if data storage cu:compare {result:1b} run tag @s add rebuildResult
