scoreboard players set @a[scores={isRClick=0,RClickCount=1..}] isRClick 1
scoreboard players set @a[scores={isRClick=1}] RClickCount 0

execute if score #katana_act_swap Config matches 1 run scoreboard players add @a[scores={isRClick=1,isSneak=1,isHoldKatana=1,isMainHandClear=1,reqActSwapPull=0}] reqActSwapPull 1
execute if score #katana_act_swap Config matches 1 run scoreboard players add @a[scores={isRClick=1,isSneak=1,isHoldEdge=1,isHoldScabbard=1,reqActSwapPut=0}] reqActSwapPut 1
execute if score #katana_act_stun Config matches 1 run scoreboard players add @a[scores={isRClick=1,isSneak=0,isHoldEdge=1,isHoldScabbard=1,reqActStun=0}] reqActStun 1
execute if score #katana_act_flash Config matches 1 run scoreboard players add @a[scores={isRClick=1,timActFlash=1..,reqActFlash=0},nbt={OnGround:1b}] reqActFlash 1

scoreboard players set @a[scores={isRClick=1,RClickCount=..0}] isRClick 0


# reqActFlash sender in swap_put
