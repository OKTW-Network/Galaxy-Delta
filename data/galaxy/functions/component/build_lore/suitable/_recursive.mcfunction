data modify storage cu:value string.static.input set value '{"translate":" %s","with":[{"storage":"galaxy:temp","nbt":"+component.build_lore.result.suitable[0]","interpret":true,"color":"gray","italic":false}]}'
function cu:value/string/static
data modify storage galaxy:temp +component.build_lore._suitable append from storage cu:value string.static.result

data remove storage galaxy:temp +component.build_lore.result.suitable[0]

execute if data storage galaxy:temp +component.build_lore.result.suitable[0] run function galaxy:component/build_lore/suitable/_recursive
