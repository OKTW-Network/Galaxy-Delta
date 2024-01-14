data modify storage galaxy:temp +weapon.katana.lore.input set from storage galaxy:temp +component.build_lore.input[{id:"galaxy.katana"}].value
function galaxy:weapon/katana/lore/main
data modify storage galaxy:temp +component.build_lore.result.alteration set from storage galaxy:temp +weapon.katana.lore.result
