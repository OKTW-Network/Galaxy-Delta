data modify storage cu:value string.static.input set value '{"storage":"galaxy:temp","nbt":"+weapon.katana.lore.input.name","interpret":true,"italic":false}'
function cu:value/string/static
data modify storage galaxy:temp +weapon.katana.lore.result append from storage cu:value string.static.result
