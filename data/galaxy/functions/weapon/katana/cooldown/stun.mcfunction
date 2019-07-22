scoreboard players set @e[scores={cdActStun=1..}] isActStunCd 1
scoreboard players set @e[scores={cdActStun=0}] isActStunCd 0

execute as @e[scores={isActStunCd=0,reqActStun=-1}] run scoreboard players set @s reqActStun 0
execute as @e[scores={isActStunCd=1,reqActStun=1}] run scoreboard players set @s reqActStun -1

scoreboard players remove @e[scores={cdActStun=1..}] cdActStun 1
