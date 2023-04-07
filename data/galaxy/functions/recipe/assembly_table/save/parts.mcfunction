function galaxy:recipe/assembly_table/save/delete-parts

scoreboard players set #recipe.assembly_table.get.parts_slot.fillEmpty galaxy 1
function galaxy:recipe/assembly_table/get/parts_slot/main
data modify entity @s data.galaxy.assembly_table.partsSlot set from storage galaxy:temp +recipe.assembly_table.get.parts_slot.result
data modify entity @s data.galaxy.assembly_table.parts set from storage galaxy:temp +recipe.assembly_table.get.parts_slot.result
data remove entity @s data.galaxy.assembly_table.parts[{tag:{CustomData:{galaxy:{Type:"gui",id:"assembly_table.parts_placeholder"}}}}]
