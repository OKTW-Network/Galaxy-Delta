scoreboard players set @e[scores={cdActSwapPut=1..}] isActSwapPutCd 1
scoreboard players set @e[scores={cdActSwapPut=0}] isActSwapPutCd 0

execute as @e[scores={isActSwapPutCd=0,reqActSwapPut=-1}] run scoreboard players set @s reqActSwapPut 0
execute as @e[scores={isActSwapPutCd=1,reqActSwapPut=0..1}] run scoreboard players set @s reqActSwapPut -1

scoreboard players remove @e[scores={cdActSwapPut=1..}] cdActSwapPut 1
