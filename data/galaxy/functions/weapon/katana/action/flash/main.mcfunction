execute as @a[scores={reqActFlash=1}] run scoreboard players set @s cdActSwapPut 0
execute as @a[scores={reqActFlash=1}] run scoreboard players set @s reqActSwapPut 1

execute as @a[scores={reqActFlash=1}] run scoreboard players set @s disActFlash 0
execute as @a[scores={reqActFlash=1}] run scoreboard players operation @s lmtActFlash = #katana_act_flash_distance_limit Config
execute as @a[scores={reqActFlash=1}] run scoreboard players operation @s lmtActFlash *= #static_2 numeric
execute as @a[scores={reqActFlash=1}] at @s run function galaxy:weapon/katana/action/flash/move

execute as @a[scores={reqActFlash=1}] run function galaxy:weapon/katana/action/flash/cooldown_calculate
