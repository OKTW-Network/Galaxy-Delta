data modify storage cu:list mix.subject set from block ~ ~ ~ Items
data modify storage cu:list mix.input set from entity @s HandItems[0].tag.CustomData.galaxy.data.recipePage
function cu:list/mix
data modify block ~ ~ ~ Items set from storage cu:list mix.subject