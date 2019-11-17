execute as @a[scores={cdActSwapPut=0,reqActSwapPut=-1}] run scoreboard players set @s reqActSwapPut 0
execute as @a[scores={cdActSwapPut=1..,reqActSwapPut=0..1}] run scoreboard players set @s reqActSwapPut -1

scoreboard players remove @e[scores={cdActSwapPut=0..}] cdActSwapPut 1
