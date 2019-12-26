execute as @s[scores={pistolFireDly=0,reqPistolFire=-1}] run scoreboard players set @s reqPistolFire 0
execute as @s[scores={pistolFireDly=1..,reqPistolFire=1..}] run scoreboard players set @s reqPistolFire -1

scoreboard players remove @s[scores={pistolFireDly=0..}] pistolFireDly 1
