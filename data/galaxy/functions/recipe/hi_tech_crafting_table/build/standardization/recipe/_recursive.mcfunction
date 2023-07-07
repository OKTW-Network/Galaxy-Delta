data modify storage galaxy:recipe hi_tech_crafting_table.recipe append value {id:"",icon:{},requirement:[]}
data modify storage galaxy:recipe hi_tech_crafting_table.recipe[-1].id set from storage galaxy:temp +recipe.hi_tech_crafting_table.build.standardization.recipe[0].id

data modify storage cu:item simplify.keep_displayable_tags.items append from storage galaxy:temp +recipe.hi_tech_crafting_table.build.standardization.recipe[0].icon
scoreboard players set #item.simplify.keep_displayable_tags.keepHideFlags cu 1
function cu:item/simplify/keep_displayable_tags/main
data modify storage galaxy:recipe hi_tech_crafting_table.recipe[-1].icon set from storage cu:item simplify.keep_displayable_tags.result[0]
data modify storage galaxy:recipe hi_tech_crafting_table.recipe[-1].icon merge value {Slot:16b,tag:{CustomData:{galaxy:{Type:"trigger",id:"hi_tech_crafting_table.recipe.result_icon"}}}}

data modify storage cu:item simplify.keep_displayable_tags.items set from storage galaxy:temp +recipe.hi_tech_crafting_table.build.standardization.recipe[0].requirement
scoreboard players set #item.simplify.keep_displayable_tags.keepHideFlags cu 1
function cu:item/simplify/keep_displayable_tags/main
data modify storage galaxy:temp +recipe.hi_tech_crafting_table.build.standardization.recipe[0].requirement set from storage cu:item simplify.keep_displayable_tags.result
scoreboard players set #recipe.hi_tech_crafting_table.build.standardization.recipe.requirement._recursiveCount galaxy 0
function galaxy:recipe/hi_tech_crafting_table/build/standardization/recipe/requirement

data remove storage galaxy:temp +recipe.hi_tech_crafting_table.build.standardization.recipe[0]
execute if data storage galaxy:temp +recipe.hi_tech_crafting_table.build.standardization.recipe[0] run function galaxy:recipe/hi_tech_crafting_table/build/standardization/recipe/_recursive
