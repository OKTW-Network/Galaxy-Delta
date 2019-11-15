execute as @e[scores={cdActStun=..0,reqActStun=-1}] run scoreboard players set @s reqActStun 0
execute as @e[scores={cdActStun=1..,reqActStun=1}] run scoreboard players set @s reqActStun -1

scoreboard players remove @e[scores={cdActStun=1..}] cdActStun 1
