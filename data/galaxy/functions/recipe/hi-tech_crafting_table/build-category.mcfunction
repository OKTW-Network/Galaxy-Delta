execute store result storage galaxy:recipe HTct.category[-1].recipeTotal int 1 store result score #1 calcu_temp store result score #2 calcu_temp run data get storage galaxy:temp recipe
scoreboard players operation #1 calcu_temp /= #15 num
execute store result storage galaxy:recipe HTct.category[-1].recipeInFinalPage int 1 run scoreboard players operation #2 calcu_temp %= #15 num
execute if score #2 calcu_temp matches 1.. store result storage galaxy:recipe HTct.category[-1].recipePageTotal int 1 run scoreboard players add #1 calcu_temp 1

execute store result score #2 calcu_temp store result score #3 calcu_temp run scoreboard players set #1 calcu_temp 15
execute store result score #4 calcu_temp run data get storage galaxy:recipe HTct.category[-1].recipeInFinalPage
execute unless score #4 calcu_temp matches 0 store result score #1 calcu_temp store result score #2 calcu_temp store result score #3 calcu_temp run scoreboard players get #4 calcu_temp
data modify storage galaxy:recipe HTct.category[-1].recipeList set value []
function galaxy:recipe/hi-tech_crafting_table/build-recipe
