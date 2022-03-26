execute if entity @a[tag=galaxy._tag.ThisCrowbarUser,predicate=minecraft:sneaking] run tag @s add galaxy._tag.crowbarEmpowerLensDestruct

execute if entity @s[tag=galaxy._tag.crowbarEmpowerLensDestruct] run function galaxy:entity/empower_lens/main

tag @s remove galaxy._tag.crowbarEmpowerLensDestruct
