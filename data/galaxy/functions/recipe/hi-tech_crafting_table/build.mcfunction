data modify storage galaxy:recipe HTct.category set value []

function galaxy:recipe/hi-tech_crafting_table/tool/build

function galaxy:recipe/hi-tech_crafting_table/functional_block/build

function galaxy:recipe/hi-tech_crafting_table/interactive_block/build

function galaxy:recipe/hi-tech_crafting_table/component/build

function galaxy:recipe/hi-tech_crafting_table/weapon/build

execute store result score #global galaxy.GUI.HTct.categoryMax run data get storage galaxy:recipe HTct.category
