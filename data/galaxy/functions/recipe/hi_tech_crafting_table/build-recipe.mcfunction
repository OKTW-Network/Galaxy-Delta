execute store result score #1 calcu_temp store result score #_build.HTct.item.slotNumber galaxy.recipe run scoreboard players get #_build.HTct.item.remain.inPage galaxy.recipe
scoreboard players remove #_build.HTct.item.slotNumber galaxy.recipe 1
scoreboard players operation #_build.HTct.item.slotNumber galaxy.recipe /= #5 num
scoreboard players add #_build.HTct.item.slotNumber galaxy.recipe 1
scoreboard players operation #_build.HTct.item.slotNumber galaxy.recipe *= #9 num
scoreboard players remove #_build.HTct.item.slotNumber galaxy.recipe 2
scoreboard players operation #1 calcu_temp = #_build.HTct.item.remain galaxy.recipe
scoreboard players operation #1 calcu_temp %= #5 num
execute if score #1 calcu_temp matches 1.. run scoreboard players operation #1 calcu_temp -= #5 num
scoreboard players operation #_build.HTct.item.slotNumber galaxy.recipe += #1 calcu_temp

data modify storage galaxy:temp +recipe.build.result prepend from storage galaxy:temp +recipe.build.input[-1]
data modify storage cu:item simplify.keep_displayable_tags.items append from storage galaxy:temp +recipe.build.result[0]
function cu:item/simplify/keep_displayable_tags/main
data modify storage galaxy:temp +recipe.build.result[0] set from storage cu:item simplify.keep_displayable_tags.result
data modify storage galaxy:temp +recipe.build.result[0].tag merge value {HideFlags:127,CustomData:{galaxy:{Type:"gui"}}}
execute store result storage galaxy:temp +recipe.build.result[0].Slot byte 1 run scoreboard players get #_build.HTct.item.slotNumber galaxy.recipe

execute store result score #_build.HTct.require.remain galaxy.recipe store result storage galaxy:temp +recipe.build.result[0].requireTotal int 1 store result score #1 calcu_temp store result score #2 calcu_temp run data get storage galaxy:temp +recipe.build.result[0].require
scoreboard players operation #1 calcu_temp /= #12 num
execute store result storage galaxy:temp +recipe.build.result[0].requireInFinalPage int 1 run scoreboard players operation #2 calcu_temp %= #12 num
execute if score #2 calcu_temp matches 1.. store result storage galaxy:temp +recipe.build.result[0].requirePageTotal int 1 run scoreboard players add #1 calcu_temp 1
scoreboard players set #_build.HTct.require.remain.inPage galaxy.recipe 12
execute store result score #1 calcu_temp run data get storage galaxy:temp +recipe.build.result[0].requireInFinalPage
execute unless score #1 calcu_temp matches 0 run scoreboard players operation #_build.HTct.require.remain.inPage galaxy.recipe = #1 calcu_temp
data modify storage galaxy:temp +recipe.build.result[0].requireList set value []
data modify storage galaxy:temp +recipe.build.require set value []
function galaxy:recipe/hi_tech_crafting_table/build-require

data remove storage galaxy:temp +recipe.build.input[-1]
scoreboard players remove #_build.HTct.item.remain galaxy.recipe 1
scoreboard players remove #_build.HTct.item.remain.inPage galaxy.recipe 1

execute if score #_build.HTct.item.remain.inPage galaxy.recipe matches 0 run data modify storage galaxy:recipe hi_tech_crafting_table.category[-1].recipeList prepend from storage galaxy:temp +recipe.build.result
execute if score #_build.HTct.item.remain.inPage galaxy.recipe matches 0 run data modify storage galaxy:temp +recipe.build.result set value []
execute if score #_build.HTct.item.remain.inPage galaxy.recipe matches 0 if score #_build.HTct.item.remain galaxy.recipe matches 1.. run scoreboard players set #_build.HTct.item.remain.inPage galaxy.recipe 15

execute if score #_build.HTct.item.remain galaxy.recipe matches 1.. run function galaxy:recipe/hi_tech_crafting_table/build-recipe
