function galaxy:weapon/katana/action/swap_put/sound
execute store result score @s cdActSwapPut run scoreboard players get #katana_act_swap_put_cd Config
execute store result score @s cdActSwapPull run scoreboard players get #katana_act_swap_pull_cd Config
