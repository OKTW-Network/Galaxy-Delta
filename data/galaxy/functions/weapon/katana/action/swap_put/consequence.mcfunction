execute at @s run function galaxy:weapon/katana/sound/action-swap_put
execute store result score @s galaxy.weapon.katana.action.swap_pull.cooldown run scoreboard players get #galaxy$katana_act_swap_pull_cd Config
