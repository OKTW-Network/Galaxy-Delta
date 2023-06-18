scoreboard players remove @s galaxy.effect.stun.duration 1
# reapply effects?
execute if score @s galaxy.effect.stun.duration matches ..0 run function galaxy:effect/stun/remove
