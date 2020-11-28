execute as @e[tag=WrenchAnchor] run function galaxy:tool/wrench/used_on-block/anchor/check_and-kill_not_use
execute as @e[tag=ThisWrenchTarget] at @s unless entity @e[tag=WrenchAnchor,distance=..0.05] run function galaxy:tool/wrench/used_on-block/anchor/summon
