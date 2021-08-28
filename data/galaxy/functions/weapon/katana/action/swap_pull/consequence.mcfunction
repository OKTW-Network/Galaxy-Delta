execute at @s run function galaxy:weapon/katana/sound/action-swap_pull
execute store result score @s ktnSwapPutCd run scoreboard players get #galaxy$katana_act_swap_put_cd Config
function galaxy:weapon/katana/action/swap_pull/ready/reset
