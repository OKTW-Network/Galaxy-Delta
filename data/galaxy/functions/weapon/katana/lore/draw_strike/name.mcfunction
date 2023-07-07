data modify storage cu:value string.static.input set value '{"translate":"  %s","with":[{"storage":"galaxy:temp","nbt":"+weapon.katana.lore.input.draw_strike.name","interpret":true,"color":"gold","italic":false}]}'
function cu:value/string/static
data modify storage galaxy:temp +weapon.katana.lore.result append from storage cu:value string.static.result
