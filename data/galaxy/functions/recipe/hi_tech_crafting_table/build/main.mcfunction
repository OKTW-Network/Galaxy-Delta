# Recipe
data modify storage galaxy:recipe hi_tech_crafting_table.recipe set value []
function galaxy:recipe/hi_tech_crafting_table/recipe
function galaxy:recipe/hi_tech_crafting_table/build/standardization/recipe/main
data modify storage galaxy:recipe hi_tech_crafting_table.recipe[] merge value {type:"recipe"}

# Category
data modify storage galaxy:recipe hi_tech_crafting_table.category set value []

data modify storage galaxy:recipe hi_tech_crafting_table.category append value {id:"tool",name:'{"translate":"gui.galaxy.hi_tech_crafting_table.category.tool","italic":false}',icon:{},content:[]}
data modify storage galaxy:get item set value []
function galaxy:tool/get/wrench
data modify storage galaxy:recipe hi_tech_crafting_table.category[-1].icon set from storage galaxy:get item[0]
function galaxy:recipe/hi_tech_crafting_table/category_content/tool

data modify storage galaxy:recipe hi_tech_crafting_table.category append value {id:"functional_block",name:'{"translate":"gui.galaxy.hi_tech_crafting_table.category.functional_block","italic":false}',icon:{},content:[]}
data modify storage galaxy:get item set value []
function galaxy:block/get/coke_furnace
data modify storage galaxy:recipe hi_tech_crafting_table.category[-1].icon set from storage galaxy:get item[0]
function galaxy:recipe/hi_tech_crafting_table/category_content/functional_block

data modify storage galaxy:recipe hi_tech_crafting_table.category append value {id:"interactive_block",name:'{"translate":"gui.galaxy.hi_tech_crafting_table.category.interactive_block","italic":false}',icon:{},content:[]}
data modify storage galaxy:get item set value []
function galaxy:block/get/elevator
data modify storage galaxy:recipe hi_tech_crafting_table.category[-1].icon set from storage galaxy:get item[0]
function galaxy:recipe/hi_tech_crafting_table/category_content/interactive_block

# data modify storage galaxy:recipe hi_tech_crafting_table.category append value {id:"ingredient",icon:{},content:[]}
# function galaxy:recipe/hi_tech_crafting_table/category_content/ingredient

data modify storage galaxy:recipe hi_tech_crafting_table.category append value {id:"weapon",name:'{"translate":"gui.galaxy.hi_tech_crafting_table.category.weapon","italic":false}',icon:{},content:[]}
data modify storage galaxy:get item set value []
function galaxy:weapon/get/plasum
data modify storage galaxy:recipe hi_tech_crafting_table.category[-1].icon set from storage galaxy:get item[0]
function galaxy:recipe/hi_tech_crafting_table/category_content/weapon

function galaxy:recipe/hi_tech_crafting_table/category
function galaxy:recipe/hi_tech_crafting_table/build/standardization/category/main
data modify storage galaxy:recipe hi_tech_crafting_table.category[] merge value {type:"category"}

# Overview
data modify storage galaxy:recipe hi_tech_crafting_table.overview set value []

data modify storage galaxy:recipe hi_tech_crafting_table.overview append value {id:"home",category:[]}
data modify storage galaxy:recipe hi_tech_crafting_table.overview[-1].category append from storage galaxy:recipe hi_tech_crafting_table.category[{id:"tool"}]
data modify storage galaxy:recipe hi_tech_crafting_table.overview[-1].category append from storage galaxy:recipe hi_tech_crafting_table.category[{id:"functional_block"}]
data modify storage galaxy:recipe hi_tech_crafting_table.overview[-1].category append from storage galaxy:recipe hi_tech_crafting_table.category[{id:"interactive_block"}]
# data modify storage galaxy:recipe hi_tech_crafting_table.overview[-1].category append from storage galaxy:recipe hi_tech_crafting_table.category[{id:"ingredient"}]
data modify storage galaxy:recipe hi_tech_crafting_table.overview[-1].category append from storage galaxy:recipe hi_tech_crafting_table.category[{id:"weapon"}]

function galaxy:recipe/hi_tech_crafting_table/overview
data modify storage galaxy:recipe hi_tech_crafting_table.overview[] merge value {type:"overview"}



data remove storage galaxy:recipe hi_tech_crafting_table.recipe
data remove storage galaxy:recipe hi_tech_crafting_table.category

tag @e[tag=galaxy.block.hi_tech_crafting_table] add galaxy._task.hi_tech_crafting_table.switchToHome
