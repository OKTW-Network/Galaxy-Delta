data modify storage cu:value string.static.input set value '{"translate":"  %s","with":[{"translate":"text.express.relate","with":[{"translate":"attribute.name.galaxy.generic.attack_range","color":"aqua"},{"storage":"galaxy:temp","nbt":"+weapon.katana.lore.input.skill.range","color":"dark_green"}],"color":"gray","italic":false}]}'
function cu:value/string/static
data modify storage galaxy:temp +weapon.katana.lore.result append from storage cu:value string.static.result
