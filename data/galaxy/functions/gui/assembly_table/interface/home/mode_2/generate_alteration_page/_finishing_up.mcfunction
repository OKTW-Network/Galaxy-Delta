scoreboard players set #1 temp 6
scoreboard players set #3 temp 9
execute store result score #4 temp run scoreboard players operation #2 temp = #gui.assembly_table.generate_alteration_page._recursiveCount galaxy
scoreboard players operation #2 temp %= #3 num
scoreboard players operation #4 temp %= #6 num
scoreboard players operation #4 temp /= #3 num
scoreboard players operation #3 temp *= #4 temp
scoreboard players operation #1 temp += #2 temp
scoreboard players operation #1 temp += #3 temp
execute store result storage galaxy:temp +gui.assembly_table.generate_alteration_page.icon[0].Slot byte 1 store result storage galaxy:temp +gui.assembly_table.generate_alteration_page.icon[0].tag.CustomData.galaxy.gui.Slot byte 1 run scoreboard players get #1 temp

data modify storage galaxy:temp +component.build_lore.input set from storage galaxy:temp +block.assembly_table.resultComponent.Alteration
data modify storage galaxy:temp +component.build_lore.target set from storage galaxy:temp +gui.assembly_table.generate_alteration_page.id[0]
scoreboard players set #build_lore.buildSuitable galaxy 0
function galaxy:component/build_lore/main
data modify storage galaxy:temp +gui.assembly_table.generate_alteration_page.icon[0].tag.display.Lore set from storage galaxy:temp +component.build_lore.result

data modify entity @s data.galaxy.gui.alteration_page append from storage galaxy:temp +gui.assembly_table.generate_alteration_page.icon[0]

data remove storage galaxy:temp +gui.assembly_table.generate_alteration_page.id[0]
data remove storage galaxy:temp +gui.assembly_table.generate_alteration_page.icon[0]
scoreboard players add #gui.assembly_table.generate_alteration_page._recursiveCount galaxy 1
execute if data storage galaxy:temp +gui.assembly_table.generate_alteration_page.icon[0] run function galaxy:gui/assembly_table/interface/home/mode_2/generate_alteration_page/_finishing_up
