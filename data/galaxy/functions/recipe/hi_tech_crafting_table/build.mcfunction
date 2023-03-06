data modify storage galaxy:recipe hi_tech_crafting_table.category set value []

function galaxy:recipe/hi_tech_crafting_table/tool/build

function galaxy:recipe/hi_tech_crafting_table/functional_block/build

function galaxy:recipe/hi_tech_crafting_table/interactive_block/build

function galaxy:recipe/hi_tech_crafting_table/component/build

function galaxy:recipe/hi_tech_crafting_table/weapon/build

function #galaxy:recipe/hi_tech_crafting_table/build_external

execute store result score #recipe.hi_tech_crafting_table.categoryMax galaxy run data get storage galaxy:recipe hi_tech_crafting_table.category

tag @e[tag=galaxy.customBlock,tag=galaxy.hi_tech_crafting_table] add galaxy._task.hi_tech_crafting_table.refreshGui
