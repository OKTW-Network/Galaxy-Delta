function galaxy:weapon/katana/action/swap_pull/sound
execute if score @s cdActFlash matches 0 store result score @s timActFlash run scoreboard players get #katana_act_flash_timer Config
execute store result score @s cdActSwapPull run scoreboard players get #katana_act_swap_pull_cd Config
execute store result score @s cdActSwapPut run scoreboard players get #katana_act_swap_put_cd Config