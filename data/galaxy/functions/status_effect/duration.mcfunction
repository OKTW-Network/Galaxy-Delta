scoreboard players remove @e[scores={galaxy.statusEffect.stun.duration=1..}] galaxy.statusEffect.stun.duration 1
execute as @e[scores={galaxy.statusEffect.stun.duration=0}] run function galaxy:status_effect/stun/remove
