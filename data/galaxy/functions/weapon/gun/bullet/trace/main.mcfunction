summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["bulletTracer"],Particle:"block air",Radius:0.125f,WaitTime:2147483647}
execute as @e[tag=bulletTracer] run function galaxy:hitbox/store-hitbox
scoreboard players operation #1 calcu_temp = @s bulletTrace
scoreboard players operation @e[tag=bulletTracer] hitboxXMin += #1 calcu_temp
scoreboard players operation @e[tag=bulletTracer] hitboxXMax -= #1 calcu_temp
scoreboard players operation @e[tag=bulletTracer] hitboxZMin += #1 calcu_temp
scoreboard players operation @e[tag=bulletTracer] hitboxZMax -= #1 calcu_temp
scoreboard players operation @e[tag=bulletTracer] hitboxYMin -= #1 calcu_temp
scoreboard players operation @e[tag=bulletTracer] hitboxYMax += #1 calcu_temp

execute as @e[tag=bulletTracer] at @s run function galaxy:hitbox/tag/bullet-trace

# execute if entity @e[tag=bulletTraceTarget] as @e[tag=bulletTracer] at @s facing entity @e[tag=bulletTraceTarget,limit=1] eyes run tp ~ ~ ~
# execute if entity @e[tag=bulletTraceTarget] run function galaxy:weapon/gun/bullet/trace/angle_limit

execute if entity @e[tag=bulletTraceTarget] facing entity @e[tag=bulletTraceTarget,limit=1] eyes run tp ~ ~ ~
tag @e[tag=bulletTraceTarget] remove bulletTraceTarget
kill @e[tag=bulletTracer]
