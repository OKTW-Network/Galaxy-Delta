data modify storage cu:value different.input1 set from entity @s data.galaxy.hi_tech_crafting_table.requirementPage
function galaxy:block/hi_tech_crafting_table/functional/get-requirement_page
data modify storage cu:value different.input2 set from storage galaxy:temp +block.hi_tech_crafting_table.requirementPage
function cu:value/different
execute if score #value.different.result cu matches 1 run tag @s add galaxy._task.hi_tech_crafting_table.buildRequirementPage
