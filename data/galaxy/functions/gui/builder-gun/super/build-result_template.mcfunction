replaceitem block ~ ~ ~ container.16 minecraft:carrot_on_a_stick{display:{Name:'{"translate":"item.galaxy.lasor","italic":false}'},gun:{status:0,sbldGResult:1}}
function cu:uuid/generate
data modify block ~ ~ ~ Items[{Slot:16b}].tag.gun.UUID set from storage cu:resources UUID
