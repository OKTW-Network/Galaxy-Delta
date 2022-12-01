execute at @s run function galaxy:weapon/katana/sound/action-swap_put
execute store result score @s galaxy.katana.swapPull.cooldown run scoreboard players get #galaxy$weapon.katana.action.swap_pull.cd Config
