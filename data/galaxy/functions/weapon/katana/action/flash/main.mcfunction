execute as @a[scores={reqActFlash=1}] run scoreboard players set @s cdActSwapPut 0
execute as @a[scores={reqActFlash=1}] run scoreboard players set @s reqActSwapPut 1

execute as @a[scores={reqActFlash=1}] run scoreboard players set @s disActFlash 0
execute as @a[scores={reqActFlash=1}] run scoreboard players operation @s lmtActFlash = #katana_act_flash_distance_limit Config
execute as @a[scores={reqActFlash=1}] run scoreboard players operation @s lmtActFlash *= #static_2 numeric
execute as @a[scores={reqActFlash=1}] at @s run function galaxy:weapon/katana/action/flash/move

execute as @a[scores={reqActFlash=1}] run scoreboard players operation @s cdActFlashTemp1 = @s disActFlash
execute as @a[scores={reqActFlash=1}] run scoreboard players operation @s cdActFlashTemp2 = #katana_act_flash_distance_limit Config
execute as @a[scores={reqActFlash=1}] run scoreboard players operation @s cdActFlashTemp1 *= #static_100 numeric
execute as @a[scores={reqActFlash=1}] run scoreboard players operation @s cdActFlashTemp1 /= @s cdActFlashTemp2
execute as @a[scores={reqActFlash=1}] run scoreboard players operation @s cdActFlashTemp2 = #katana_act_flash_cd_max Config
execute as @a[scores={reqActFlash=1}] run scoreboard players operation @s cdActFlashTemp2 *= @s cdActFlashTemp1
execute as @a[scores={reqActFlash=1}] run scoreboard players operation @s cdActFlashTemp2 /= #static_1000 numeric
execute as @a[scores={reqActFlash=1,disActFlash=0}] run scoreboard players set @s reqActFlash 0
execute as @a[scores={reqActFlash=1,disActFlash=1..}] run scoreboard players operation @s cdActFlash = @s cdActFlashTemp2
