scoreboard players remove @e[scores={galaxy.status_effect.stun.duration=1..}] galaxy.status_effect.stun.duration 1
execute as @e[scores={galaxy.status_effect.stun.duration=0}] run function galaxy:status_effect/stun/remove
