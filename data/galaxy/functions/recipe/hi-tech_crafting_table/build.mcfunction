data remove storage galaxy:recipe HTct
data modify storage galaxy:recipe HTct.category set value []
data modify storage galaxy:recipe HTct.categories set value {}

function galaxy:recipe/hi-tech_crafting_table/tool/build-category
data modify storage galaxy:recipe HTct.category append from storage galaxy:recipe HTct.categories.tool
data remove storage galaxy:recipe HTct.categories

function galaxy:recipe/hi-tech_crafting_table/machine/build-category
data modify storage galaxy:recipe HTct.category append from storage galaxy:recipe HTct.categories.machine
data remove storage galaxy:recipe HTct.categories

function galaxy:recipe/hi-tech_crafting_table/functional_block/build-category
data modify storage galaxy:recipe HTct.category append from storage galaxy:recipe HTct.categories.functional_block
data remove storage galaxy:recipe HTct.categories

function galaxy:recipe/hi-tech_crafting_table/component/build-category
data modify storage galaxy:recipe HTct.category append from storage galaxy:recipe HTct.categories.component
data remove storage galaxy:recipe HTct.categories

function galaxy:recipe/hi-tech_crafting_table/weapon/build-category
data modify storage galaxy:recipe HTct.category append from storage galaxy:recipe HTct.categories.weapon
data remove storage galaxy:recipe HTct.categories

# function galaxy:recipe/hi-tech_crafting_table/all/build-categorys
# data modify storage galaxy:recipe HTct.category prepend from storage galaxy:recipe HTct.categories.all
# data remove storage galaxy:recipe HTct.categories

execute store result score #global htctCatgMax run data get storage galaxy:recipe HTct.category
