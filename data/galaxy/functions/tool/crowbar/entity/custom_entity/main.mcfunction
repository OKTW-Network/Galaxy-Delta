tag @s[tag=galaxy.customEntity,tag=galaxy.katana_display_stand] add galaxy._tag.crowbarKatanaDisplayStand
tag @s[tag=galaxy.customEntity,tag=galaxy.empower_lens] add galaxy._tag.crowbarEmpowerLens

execute if entity @s[tag=galaxy._tag.crowbarKatanaDisplayStand] run function galaxy:tool/crowbar/entity/custom_entity/katana_display_stand
execute if entity @s[tag=galaxy._tag.crowbarEmpowerLens] run function galaxy:tool/crowbar/entity/custom_entity/empower_lens

tag @s[tag=galaxy._tag.crowbarKatanaDisplayStand] remove galaxy._tag.crowbarKatanaDisplayStand
tag @s[tag=galaxy._tag.crowbarEmpowerLens] remove galaxy._tag.crowbarEmpowerLens
