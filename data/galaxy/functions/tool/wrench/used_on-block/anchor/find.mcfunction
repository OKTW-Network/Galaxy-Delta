execute as @e[tag=galaxy._tag.ThisWrenchTarget] at @s unless entity @e[tag=galaxy.dummy.wrenchAnchor,distance=..0.05] run function galaxy:tool/wrench/used_on-block/anchor/summon
execute at @e[tag=galaxy._tag.ThisWrenchTarget] run tag @e[tag=galaxy.dummy.wrenchAnchor,distance=..0.05] add galaxy._tag.ThisWrenchAnchor
