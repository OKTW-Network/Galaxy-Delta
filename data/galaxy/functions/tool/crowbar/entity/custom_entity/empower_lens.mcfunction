execute if entity @a[tag=ThisCrowbarUser,predicate=minecraft:sneaking] run tag @s add crowbarEmpowerLensDestruct

execute if entity @s[tag=crowbarEmpowerLensDestruct] run function galaxy:entity/empower_lens/main

tag @s remove crowbarEmpowerLensDestruct
