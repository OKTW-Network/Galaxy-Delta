data modify storage galaxy:temp +recipe.hi_tech_crafting_table.build.standardization.recipe[0].requirement[0].tag merge value {CustomData:{galaxy:{Type:"gui",id:"hi_tech_crafting_table.recipe.requirement_icon"}}}
scoreboard players set #1 temp 1
scoreboard players set #3 temp 9
execute store result score #4 temp run scoreboard players operation #2 temp = #recipe.hi_tech_crafting_table.build.standardization.recipe.requirement._recursiveCount galaxy
scoreboard players operation #2 temp %= #4 num
scoreboard players operation #4 temp %= #12 num
scoreboard players operation #4 temp /= #4 num
scoreboard players operation #3 temp *= #4 temp
scoreboard players operation #1 temp += #2 temp
scoreboard players operation #1 temp += #3 temp
execute store result storage galaxy:temp +recipe.hi_tech_crafting_table.build.standardization.recipe[0].requirement[0].Slot byte 1 store result storage galaxy:temp +recipe.hi_tech_crafting_table.build.standardization.recipe[0].requirement[0].tag.CustomData.galaxy.gui.Slot byte 1 run scoreboard players get #1 temp

data modify storage galaxy:recipe hi_tech_crafting_table.recipe[-1].requirement append from storage galaxy:temp +recipe.hi_tech_crafting_table.build.standardization.recipe[0].requirement[0]
data remove storage galaxy:temp +recipe.hi_tech_crafting_table.build.standardization.recipe[0].requirement[0]
scoreboard players add #recipe.hi_tech_crafting_table.build.standardization.recipe.requirement._recursiveCount galaxy 1
execute if data storage galaxy:temp +recipe.hi_tech_crafting_table.build.standardization.recipe[0].requirement[0] run function galaxy:recipe/hi_tech_crafting_table/build/standardization/recipe/requirement
