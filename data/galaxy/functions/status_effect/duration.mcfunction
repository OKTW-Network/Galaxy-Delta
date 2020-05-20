scoreboard players remove @e[scores={durStuStun=1..}] durStuStun 1
execute as @e[type=!player,scores={durStuStun=0}] run function galaxy:status_effect/stun/remove
