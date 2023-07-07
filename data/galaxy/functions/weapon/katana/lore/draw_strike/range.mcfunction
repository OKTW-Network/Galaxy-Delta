data modify storage cu:value string.static.input set value '{"translate":"  %s","with":[{"translate":"text.express.relate","with":[{"translate":"attribute.name.galaxy.generic.attack_range","color":"aqua"},{"translate":"text.value_unit.block","with":[{"storage":"galaxy:temp","nbt":"+weapon.katana.lore.input.draw_strike.range","color":"dark_green"}],"color":"dark_gray"}],"color":"gray","italic":false}]}'
function cu:value/string/static
data modify storage galaxy:temp +weapon.katana.lore.result append from storage cu:value string.static.result
