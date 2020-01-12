execute as @a[scores={reqActSwapPull=1}] at @s if score #katana_act_swap_sound Config matches 1 run playsound galaxy:katana.draw player @a[distance=..32] ~ ~ ~ 1

execute as @a[scores={reqActSwapPull=1}] run function galaxy:weapon/katana/meta/detector/holding-katana

execute as @a[scores={reqActSwapPull=1,styleKatana=1}] run function galaxy:weapon/katana/replace-hand_main/katana_edge
execute as @a[scores={reqActSwapPull=1,styleKatana=1}] run function galaxy:weapon/katana/replace-hand_off/katana_scabbard

execute as @a[scores={reqActSwapPull=1,styleKatana=2}] run function galaxy:weapon/katana/replace-hand_main/nazo_edge
execute as @a[scores={reqActSwapPull=1,styleKatana=2}] run function galaxy:weapon/katana/replace-hand_off/nazo_scabbard

execute as @a[scores={reqActSwapPull=1,reqActFlash=0}] store result score @s timActFlash run scoreboard players get #katana_act_flash_timer Config
execute as @a[scores={reqActSwapPull=1}] store result score @s cdActSwapPull run scoreboard players get #katana_act_swap_pull_cd Config
execute as @a[scores={reqActSwapPull=1}] store result score @s cdActSwapPut run scoreboard players get #katana_act_swap_put_cd Config
