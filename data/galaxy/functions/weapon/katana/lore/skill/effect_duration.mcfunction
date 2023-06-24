data modify storage cu:value string.static.input set value '{"translate":"  %s","with":[{"translate":"text.express.relate","with":[{"translate":"attribute.name.galaxy.generic.effect_duration","color":"aqua"},{"translate":"text.value_unit.tick","with":[{"storage":"galaxy:temp","nbt":"+weapon.katana.lore.input.skill.effect_duration","color":"dark_green"}],"color":"dark_gray"}],"color":"gray","italic":false}]}'
function cu:value/string/static
data modify storage galaxy:temp +weapon.katana.lore.result append from storage cu:value string.static.result
