tag @e[tag=customBlock,distance=..0.5,limit=1] add ThisCustomBlock

execute if entity @a[tag=triggerWrench,predicate=minecraft:sneaking] run tag @s add wrenchCustomBlockDestruct

execute if entity @s[tag=wrenchCustomBlockDestruct] run function galaxy:tool/wrench/custom_block/destruct
