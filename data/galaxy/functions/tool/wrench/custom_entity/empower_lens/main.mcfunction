execute if entity @a[tag=triggerWrench,predicate=minecraft:sneaking] run tag @s add wrenchEmpowerLensDestruct

execute if entity @s[tag=wrenchEmpowerLensDestruct] run function galaxy:tool/wrench/custom_entity/empower_lens/destruct

tag @s[tag=wrenchEmpowerLensDestruct] remove wrenchEmpowerLensDestruct
