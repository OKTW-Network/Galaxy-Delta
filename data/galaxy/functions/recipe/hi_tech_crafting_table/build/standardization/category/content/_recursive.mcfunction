data modify storage galaxy:temp +recipe.hi_tech_crafting_table.build.standardization._content set from storage galaxy:temp +recipe.hi_tech_crafting_table.build.standardization.category[0].content[0]
data modify storage galaxy:temp +recipe.hi_tech_crafting_table.build.standardization.category[0].content[0] set from storage galaxy:temp +recipe.hi_tech_crafting_table.build.standardization._content.icon
data modify storage galaxy:temp +recipe.hi_tech_crafting_table.build.standardization.category[0].content[0].galaxyHiTechCrafting set from storage galaxy:temp +recipe.hi_tech_crafting_table.build.standardization._content
execute if data storage galaxy:temp +recipe.hi_tech_crafting_table.build.standardization._content{type:"overview"} run function galaxy:recipe/hi_tech_crafting_table/build/standardization/category/content/cleanup_item_tag
data remove storage galaxy:temp +recipe.hi_tech_crafting_table.build.standardization._content

data modify storage galaxy:temp +recipe.hi_tech_crafting_table.build.standardization.category[0].content[0].tag merge value {CustomData:{galaxy:{Type:"gui",id:"hi_tech_crafting_table.overview.content_icon"}}}
scoreboard players set #1 calcu_temp 3
scoreboard players set #3 calcu_temp 9
execute store result score #4 calcu_temp run scoreboard players operation #2 calcu_temp = #recipe.hi_tech_crafting_table.build.standardization.category.content._recursiveCount galaxy
scoreboard players operation #2 calcu_temp %= #5 num
scoreboard players operation #4 calcu_temp %= #15 num
scoreboard players operation #4 calcu_temp /= #5 num
scoreboard players operation #3 calcu_temp *= #4 calcu_temp
scoreboard players operation #1 calcu_temp += #2 calcu_temp
scoreboard players operation #1 calcu_temp += #3 calcu_temp
execute store result storage galaxy:temp +recipe.hi_tech_crafting_table.build.standardization.category[0].content[0].Slot byte 1 store result storage galaxy:temp +recipe.hi_tech_crafting_table.build.standardization.category[0].content[0].tag.CustomData.galaxy.gui.Slot byte 1 run scoreboard players get #1 calcu_temp

data modify storage galaxy:recipe hi_tech_crafting_table.category[-1].content append from storage galaxy:temp +recipe.hi_tech_crafting_table.build.standardization.category[0].content[0]
data remove storage galaxy:temp +recipe.hi_tech_crafting_table.build.standardization.category[0].content[0]
scoreboard players add #recipe.hi_tech_crafting_table.build.standardization.category.content._recursiveCount galaxy 1
execute if data storage galaxy:temp +recipe.hi_tech_crafting_table.build.standardization.category[0].content[0] run function galaxy:recipe/hi_tech_crafting_table/build/standardization/category/content/_recursive
