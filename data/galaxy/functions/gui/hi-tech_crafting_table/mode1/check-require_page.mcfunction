data modify storage cu:compare input1 set from entity @s HandItems[0].tag.GUI.requirePage
function galaxy:gui/hi-tech_crafting_table/mode1/data_get-require
data modify storage cu:compare input2 set from storage galaxy:get item
function cu:compare/different
execute if data storage cu:compare {result:1b} run tag @s add setRequirePage
