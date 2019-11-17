execute as @a[scores={cdActFlash=0,reqActFlash=-1}] run scoreboard players set @s reqActFlash 0
execute as @a[scores={cdActFlash=1..,reqActFlash=1}] run scoreboard players set @s reqActFlash -1

scoreboard players remove @e[scores={cdActFlash=0..}] cdActFlash 1
