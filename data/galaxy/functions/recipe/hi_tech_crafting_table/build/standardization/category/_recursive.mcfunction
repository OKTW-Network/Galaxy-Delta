data modify storage galaxy:recipe hi_tech_crafting_table.category append value {id:"",name:"",icon:{},content:[]}
data modify storage galaxy:recipe hi_tech_crafting_table.category[-1].id set from storage galaxy:temp +recipe.hi_tech_crafting_table.build.standardization.category[0].id

data modify storage cu:item simplify.keep_displayable_tags.items append from storage galaxy:temp +recipe.hi_tech_crafting_table.build.standardization.category[0].icon
function cu:item/simplify/keep_displayable_tags/main
data modify storage galaxy:recipe hi_tech_crafting_table.category[-1].icon set from storage cu:item simplify.keep_displayable_tags.result[0]
data modify storage galaxy:recipe hi_tech_crafting_table.category[-1].icon.tag merge value {HideFlags:127}
data modify storage galaxy:recipe hi_tech_crafting_table.category[-1].icon.tag.display.Name set from storage galaxy:temp +recipe.hi_tech_crafting_table.build.standardization.category[0].name

scoreboard players set #recipe.hi_tech_crafting_table.build.standardization.category.content._recursiveCount galaxy 0
function galaxy:recipe/hi_tech_crafting_table/build/standardization/category/content/_recursive

data remove storage galaxy:temp +recipe.hi_tech_crafting_table.build.standardization.category[0]
execute if data storage galaxy:temp +recipe.hi_tech_crafting_table.build.standardization.category[0] run function galaxy:recipe/hi_tech_crafting_table/build/standardization/category/_recursive
