function cu:library/hitbox/main
scoreboard players set #1 calcu_temp 0
scoreboard players set #2 calcu_temp 0
scoreboard players set #3 calcu_temp 0
execute if score @s hitboxX1 >= @e[tag=bulletTracer,limit=1] hitboxX1 if score @s hitboxX1 < @e[tag=bulletTracer,limit=1] hitboxX2 run scoreboard players set #1 calcu_temp 1
execute unless score #1 calcu_temp matches 1 if score @s hitboxX2 < @e[tag=bulletTracer,limit=1] hitboxX2 if score @s hitboxX2 >= @e[tag=bulletTracer,limit=1] hitboxX1 run scoreboard players set #1 calcu_temp 1
execute if score @s hitboxZ1 >= @e[tag=bulletTracer,limit=1] hitboxZ1 if score @s hitboxZ1 < @e[tag=bulletTracer,limit=1] hitboxZ2 run scoreboard players set #2 calcu_temp 1
execute unless score #2 calcu_temp matches 1 if score @s hitboxZ2 < @e[tag=bulletTracer,limit=1] hitboxZ2 if score @s hitboxZ2 >= @e[tag=bulletTracer,limit=1] hitboxZ1 run scoreboard players set #2 calcu_temp 1
execute if score @s hitboxY1 >= @e[tag=bulletTracer,limit=1] hitboxY1 if score @s hitboxY1 < @e[tag=bulletTracer,limit=1] hitboxY2 run scoreboard players set #3 calcu_temp 1
execute unless score #3 calcu_temp matches 1 if score @s hitboxY2 < @e[tag=bulletTracer,limit=1] hitboxY2 if score @s hitboxY2 >= @e[tag=bulletTracer,limit=1] hitboxY1 run scoreboard players set #3 calcu_temp 1
execute if score #1 calcu_temp matches 1 if score #2 calcu_temp matches 1 if score #3 calcu_temp matches 1 run tag @s add bulletTraceTarget

tag @s remove bulletPossibleTrace
