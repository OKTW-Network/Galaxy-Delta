execute as @e[scores={cdActSwapPull=0,reqActSwapPull=-1}] run scoreboard players set @s reqActSwapPull 0
execute as @e[scores={cdActSwapPull=1..,reqActSwapPull=0..1}] run scoreboard players set @s reqActSwapPull -1

scoreboard players remove @e[scores={cdActSwapPull=1..}] cdActSwapPull 1
