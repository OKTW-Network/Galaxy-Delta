execute as @a[scores={cdActTurnOff=0,reqActTurnOff=-1}] run scoreboard players set @s reqActTurnOff 0
execute as @a[scores={cdActTurnOff=1..,reqActTurnOff=0..1}] run scoreboard players set @s reqActTurnOff -1

scoreboard players remove @a[scores={cdActTurnOff=0..}] cdActTurnOff 1
