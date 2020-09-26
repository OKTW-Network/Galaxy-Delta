function galaxy:gui/builder-gun/data_get-parts

data modify storage cu:temporary comparator.input1 set from entity @s HandItems[0].tag.GUI.parts
data modify storage cu:temporary comparator.input2 set from storage galaxy:temp container
function cu:comparator/different
execute if data storage cu:result {comparator:1} run tag @s add rebuildResult
function cu:comparator/remove-result
