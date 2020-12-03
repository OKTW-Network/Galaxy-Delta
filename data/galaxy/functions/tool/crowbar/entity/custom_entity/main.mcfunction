tag @s[tag=katana_display_stand] add crowbarKatanaDisplayStand
tag @s[tag=empower_lens] add crowbarEmpowerLens

execute if entity @s[tag=crowbarKatanaDisplayStand] run function galaxy:tool/crowbar/entity/custom_entity/katana_display_stand
execute if entity @s[tag=crowbarEmpowerLens] run function galaxy:tool/crowbar/entity/custom_entity/empower_lens

tag @s[tag=crowbarKatanaDisplayStand] remove crowbarKatanaDisplayStand
tag @s[tag=crowbarEmpowerLens] remove crowbarEmpowerLens
