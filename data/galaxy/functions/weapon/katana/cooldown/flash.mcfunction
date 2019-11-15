scoreboard players remove @e[scores={timActFlash=1..}] timActFlash 1

execute as @e[scores={cdActFlash=..0,reqActFlash=-1}] run scoreboard players set @s reqActFlash 0
execute as @e[scores={cdActFlash=1..,reqActFlash=1}] run scoreboard players set @s reqActFlash -1

scoreboard players remove @e[scores={cdActFlash=1..}] cdActFlash 1
