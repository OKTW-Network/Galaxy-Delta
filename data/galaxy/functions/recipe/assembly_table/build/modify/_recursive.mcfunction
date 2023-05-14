# icon
data modify storage galaxy:temp +recipe.assembly_table.build.modify.blueprint[0].icon.tag merge value {CustomData:{galaxy:{Type:"gui",id:"assembly_table.blueprint_icon"}}}
scoreboard players set #1 temp 6
scoreboard players set #3 temp 9
execute store result score #4 temp run scoreboard players operation #2 temp = #recipe.assembly_table.build.modify._recursiveCount galaxy
scoreboard players operation #2 temp %= #2 num
scoreboard players operation #4 temp %= #6 num
scoreboard players operation #4 temp /= #2 num
scoreboard players operation #3 temp *= #4 temp
scoreboard players operation #1 temp += #2 temp
scoreboard players operation #1 temp += #3 temp
execute store result storage galaxy:temp +recipe.assembly_table.build.modify.blueprint[0].icon.Slot byte 1 store result storage galaxy:temp +recipe.assembly_table.build.modify.blueprint[0].icon.tag.CustomData.galaxy.gui.Slot byte 1 run scoreboard players get #1 temp

# parts
data modify storage galaxy:temp +recipe.assembly_table.build.modify.blueprint[0].parts[] merge value {Count:1b,tag:{CustomData:{galaxy:{Type:"gui",id:"assembly_table.parts_placeholder"}}}}
execute store result storage galaxy:temp +recipe.assembly_table.build.modify.blueprint[0].requiredCount byte 1 if data storage galaxy:temp +recipe.assembly_table.build.modify.blueprint[0].parts[{galaxyAssembly:{required:1b}}]

# cover
data modify storage cu:item simulate_container.input set value [{operation:"set_slot_dummy",value:[]},{operation:"append",value:[]},{operation:"invert_template"},{operation:"result_slot"}]
data modify storage cu:item simulate_container.input[0].value set value [{Slot:3b},{Slot:4b},{Slot:5b},{Slot:12b},{Slot:13b},{Slot:14b},{Slot:21b},{Slot:22b},{Slot:23b}]
data modify storage cu:item simulate_container.input[1].value set from storage galaxy:temp +recipe.assembly_table.build.modify.blueprint[0].parts
function cu:item/simulate_container/main
data modify storage galaxy:temp +recipe.assembly_table.build.modify.blueprint[0].cover set from storage cu:item simulate_container.result[0]
data modify storage galaxy:temp +recipe.assembly_table.build.modify.blueprint[0].cover[] merge value {id:"minecraft:white_stained_glass_pane",Count:1b,tag:{display:{Name:'{"text":""}'},CustomModelData:101001,CustomData:{galaxy:{Type:"gui",id:"assembly_table.cover"}}}}

data modify storage galaxy:recipe assembly_table.blueprint append from storage galaxy:temp +recipe.assembly_table.build.modify.blueprint[0]
data remove storage galaxy:temp +recipe.assembly_table.build.modify.blueprint[0]
scoreboard players add #recipe.assembly_table.build.modify._recursiveCount galaxy 1
execute if data storage galaxy:temp +recipe.assembly_table.build.modify.blueprint[0] run function galaxy:recipe/assembly_table/build/modify/_recursive
