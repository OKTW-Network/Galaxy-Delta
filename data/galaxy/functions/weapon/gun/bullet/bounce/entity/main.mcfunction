summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["bulletTracer"],Particle:"block air",Radius:0.125f,WaitTime:2147483647}
execute as @e[tag=bulletTracer] run function galaxy:hitbox/store-hitbox
scoreboard players set #1 calcu_temp 40
scoreboard players operation @e[tag=bulletTracer] hitboxX1 -= #1 calcu_temp
scoreboard players operation @e[tag=bulletTracer] hitboxX2 += #1 calcu_temp
scoreboard players operation @e[tag=bulletTracer] hitboxZ1 -= #1 calcu_temp
scoreboard players operation @e[tag=bulletTracer] hitboxZ2 += #1 calcu_temp
scoreboard players operation @e[tag=bulletTracer] hitboxY1 -= #1 calcu_temp
scoreboard players operation @e[tag=bulletTracer] hitboxY2 += #1 calcu_temp

execute as @e[tag=bulletTracer] at @s run function galaxy:hitbox/tag/bullet-trace

execute if entity @e[tag=bulletTraceTarget] facing entity @e[tag=bulletTraceTarget,limit=1] eyes run tp ~ ~ ~

scoreboard players operation @s bulletWeaken = @s bulletBounce
scoreboard players operation @s bulletWeaken /= #2 num
execute if entity @e[tag=bulletTraceTarget] if score @s bulletWeaken matches 1..99 run function galaxy:weapon/gun/bullet/weaken

execute unless entity @e[tag=bulletTraceTarget] run function galaxy:weapon/gun/bullet/bounce/entity/random_rotation

scoreboard players set @s sucBulletHit -1

tag @e[tag=bulletTraceTarget] remove bulletTraceTarget
kill @e[tag=bulletTracer]



