item replace block ~ ~ ~ container.16 with minecraft:carrot_on_a_stick{display:{Name:'{"translate":"item.galaxy.gun","italic":false}'},CustomData:{galaxy:{Type:"item",id:"gun",tag:{status:0,SuperAssembled:1b}}},HideFlags:39,RepairCost:-2147483648,Unbreakable:1b}
function cu:uuid/generate
data modify block ~ ~ ~ Items[{Slot:16b}].tag.CustomData.galaxy.UUID set from storage cu:uuid generate
