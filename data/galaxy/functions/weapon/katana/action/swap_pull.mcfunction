execute if score #katana_act_swap_sound Config matches 1 at @s run playsound galaxy:katana.draw player @a ~ ~ ~ 1

function galaxy:weapon/katana/meta/detector/style-katana

execute as @s[scores={styleKatana=1}] run function galaxy:weapon/katana/replace-hand_main/katana_edge
execute as @s[scores={styleKatana=1}] run function galaxy:weapon/katana/replace-hand_off/katana_scabbard

execute as @s[scores={styleKatana=2}] run function galaxy:weapon/katana/replace-hand_main/nazo_edge
execute as @s[scores={styleKatana=2}] run function galaxy:weapon/katana/replace-hand_off/nazo_scabbard

execute if score @s cdActFlash matches 0 store result score @s timActFlash run scoreboard players get #katana_act_flash_timer Config
execute store result score @s cdActSwapPull run scoreboard players get #katana_act_swap_pull_cd Config
execute store result score @s cdActSwapPut run scoreboard players get #katana_act_swap_put_cd Config
