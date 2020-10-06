scoreboard players remove @e[tag=haveOwner] cdItemOwner 1
execute as @e[tag=haveOwner] if score @s cdItemOwner matches ..0 run data remove entity @s Owner
