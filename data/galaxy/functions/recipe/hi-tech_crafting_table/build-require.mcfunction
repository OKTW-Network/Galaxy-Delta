execute store result score #1 calcu_temp store result score #_build.HTct.require.slotNumber galaxy.recipe run scoreboard players get #_build.HTct.require.remain.inPage galaxy.recipe
scoreboard players remove #_build.HTct.require.slotNumber galaxy.recipe 1
scoreboard players operation #_build.HTct.require.slotNumber galaxy.recipe /= #4 num
scoreboard players add #_build.HTct.require.slotNumber galaxy.recipe 1
scoreboard players operation #_build.HTct.require.slotNumber galaxy.recipe *= #9 num
scoreboard players remove #_build.HTct.require.slotNumber galaxy.recipe 5
scoreboard players operation #1 calcu_temp = #_build.HTct.require.remain galaxy.recipe
scoreboard players operation #1 calcu_temp %= #4 num
execute if score #1 calcu_temp matches 1.. run scoreboard players operation #1 calcu_temp -= #4 num
scoreboard players operation #_build.HTct.require.slotNumber galaxy.recipe += #1 calcu_temp

data modify storage galaxy:temp +recipe.build.require prepend from storage galaxy:temp +recipe.build.input[-1].require[-1]
data modify storage cu:item simplify.item set from storage galaxy:temp +recipe.build.require[0]
function cu:item/simplify
data modify storage galaxy:temp +recipe.build.require[0] set from storage cu:item simplify.item
data modify storage galaxy:temp +recipe.build.require[0].tag merge value {HideFlags:63,CustomData:{galaxy:{id:"gui_item"}}}
execute store result storage galaxy:temp +recipe.build.require[0].Slot byte 1 run scoreboard players get #_build.HTct.require.slotNumber galaxy.recipe

data remove storage galaxy:temp +recipe.build.input[-1].require[-1]
scoreboard players remove #_build.HTct.require.remain galaxy.recipe 1
scoreboard players remove #_build.HTct.require.remain.inPage galaxy.recipe 1

execute if score #_build.HTct.require.remain.inPage galaxy.recipe matches 0 run data modify storage galaxy:temp +recipe.build.result[0].requireList prepend from storage galaxy:temp +recipe.build.require
execute if score #_build.HTct.require.remain.inPage galaxy.recipe matches 0 run data modify storage galaxy:temp +recipe.build.require set value []
execute if score #_build.HTct.require.remain.inPage galaxy.recipe matches 0 if score #_build.HTct.require.remain galaxy.recipe matches 1.. run scoreboard players set #_build.HTct.require.remain.inPage galaxy.recipe 12

execute if score #_build.HTct.require.remain galaxy.recipe matches 1.. run function galaxy:recipe/hi-tech_crafting_table/build-require
