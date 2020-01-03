execute as @a[scores={cdActTurnOn=0,reqActTurnOn=-1}] run scoreboard players set @s reqActTurnOn 0
execute as @a[scores={cdActTurnOn=1..,reqActTurnOn=0..1}] run scoreboard players set @s reqActTurnOn -1

scoreboard players remove @e[scores={cdActTurnOn=0..}] cdActTurnOn 1
