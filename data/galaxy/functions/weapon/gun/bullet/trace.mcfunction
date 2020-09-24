summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["bulletTracer"],Particle:"block air",Radius:0.125f,WaitTime:2147483647}
execute as @e[tag=bulletTracer] at @s run function galaxy:hitbox/tag/bullet-trace
execute if entity @e[tag=bulletTraceTarget] as @e[tag=bulletTracer] at @s facing entity @e[tag=bulletTraceTarget,limit=1] eyes run tp ~ ~ ~
execute if entity @e[tag=bulletTraceTarget] run function galaxy:weapon/gun/bullet/trace-calculate
tag @e[tag=bulletTraceTarget] remove bulletTraceTarget
kill @e[tag=bulletTracer]
