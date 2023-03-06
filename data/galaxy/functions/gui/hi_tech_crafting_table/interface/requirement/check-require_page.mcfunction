data modify storage cu:value different.input1 set from entity @s HandItems[0].tag.CustomData.galaxy.data.requirePage
function galaxy:gui/hi_tech_crafting_table/interface/requirement/data_get-require
data modify storage cu:value different.input2 set from storage galaxy:get item
function cu:value/different
execute if score #value.different.result cu matches 1 run tag @s add setRequirePage
