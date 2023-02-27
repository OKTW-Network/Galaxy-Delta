execute store result score #_build.HTct.item.remain galaxy.recipe store result storage galaxy:recipe hi-tech_crafting_table.category[-1].recipeTotal int 1 store result score #1 calcu_temp store result score #2 calcu_temp run data get storage galaxy:temp +recipe.build.input
scoreboard players operation #1 calcu_temp /= #15 num
execute store result storage galaxy:recipe hi-tech_crafting_table.category[-1].recipeInFinalPage int 1 run scoreboard players operation #2 calcu_temp %= #15 num
execute if score #2 calcu_temp matches 1.. store result storage galaxy:recipe hi-tech_crafting_table.category[-1].recipePageTotal int 1 run scoreboard players add #1 calcu_temp 1
scoreboard players set #_build.HTct.item.remain.inPage galaxy.recipe 15
execute store result score #1 calcu_temp run data get storage galaxy:recipe hi-tech_crafting_table.category[-1].recipeInFinalPage
execute unless score #1 calcu_temp matches 0 run scoreboard players operation #_build.HTct.item.remain.inPage galaxy.recipe = #1 calcu_temp
data modify storage galaxy:recipe hi-tech_crafting_table.category[-1].recipeList set value []
data modify storage galaxy:temp +recipe.build.result set value []
function galaxy:recipe/hi-tech_crafting_table/build-recipe
