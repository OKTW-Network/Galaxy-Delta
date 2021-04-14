replaceitem block ~ ~ ~ container.16 minecraft:carrot_on_a_stick{display:{Name:'{"translate":"item.galaxy.lasor","italic":false}'},CustomData:{galaxy:{Type:"item",id:"gun",tag:{status:0,SuperAssembled:1b}}},HideFlags:39,RepairCost:2147483647,Unbreakable:1b}
function cu:uuid/generate
data modify block ~ ~ ~ Items[{Slot:16b}].tag.CustomData.galaxy.UUID set from storage cu:uuid generate
