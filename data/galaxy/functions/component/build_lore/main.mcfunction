data remove storage galaxy:temp +component.build_lore.result

execute if data storage galaxy:temp +component.build_lore.input."galaxy.gun" run function galaxy:component/gun/build_lore/main

function #galaxy:component/build_lore
execute if data storage galaxy:temp +component.build_lore.result.suitable[0] run function galaxy:component/build_lore/suitable/main
data modify storage galaxy:temp +component.build_lore._alteration set from storage galaxy:temp +component.build_lore.result.alteration
data modify storage galaxy:temp +component.build_lore.result set value []
data modify storage galaxy:temp +component.build_lore.result append from storage galaxy:temp +component.build_lore._alteration[]
data modify storage galaxy:temp +component.build_lore.result append from storage galaxy:temp +component.build_lore._suitable[]

data remove storage galaxy:temp +component.build_lore.input
data remove storage galaxy:temp +component.build_lore.target
data remove storage galaxy:temp +component.build_lore._alteration
data remove storage galaxy:temp +component.build_lore._suitable
