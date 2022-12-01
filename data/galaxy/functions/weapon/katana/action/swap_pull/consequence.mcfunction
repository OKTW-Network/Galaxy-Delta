execute at @s run function galaxy:weapon/katana/sound/action-swap_pull
execute store result score @s galaxy.katana.swapPut.cooldown run scoreboard players get #galaxy$weapon.katana.action.swap_put.cd Config
function galaxy:weapon/katana/action/swap_pull/ready/reset
