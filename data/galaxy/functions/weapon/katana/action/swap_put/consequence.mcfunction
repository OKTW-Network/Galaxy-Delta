function galaxy:weapon/katana/action/swap_put/sound
execute if score #calculation_temp1 numeric matches 1 run replaceitem entity @s weapon.mainhand minecraft:air
execute if score #calculation_temp1 numeric matches 1 store result score @s cdActSwapPut run scoreboard players get #katana_act_swap_put_cd Config
execute if score #calculation_temp1 numeric matches 1 store result score @s cdActSwapPull run scoreboard players get #katana_act_swap_pull_cd Config
