execute as @e[tag=ThisWrenchTarget] at @s unless entity @e[tag=WrenchAnchor,distance=..0.05] run function galaxy:tool/wrench/used_on-block/anchor/summon
execute at @e[tag=ThisWrenchTarget] run tag @e[tag=WrenchAnchor,distance=..0.05] add ThisWrenchAnchor
