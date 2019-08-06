execute as @a[scores={reqActSwapPut=1}] at @s if score #katana_act_swap_sound Config matches 1 run playsound galaxy:katana.store player @a[distance=..32] ~ ~ ~ 1 1 0.2

execute as @a[scores={reqActSwapPut=1,styleScabbard=1,styleEdge=1}] run function galaxy:weapon/katana/replace_off-hand/katana
execute as @a[scores={reqActSwapPut=1,styleScabbard=2,styleEdge=2}] run function galaxy:weapon/katana/replace_off-hand/nazo

replaceitem entity @a[scores={reqActSwapPut=1}] weapon.mainhand minecraft:air
execute as @a[scores={reqActSwapPut=1}] store result score @s cdActSwapPut run scoreboard players get #katana_act_swap_put_cd Config
execute as @a[scores={reqActSwapPut=1}] store result score @s cdActSwapPull run scoreboard players get #katana_act_swap_pull_cd Config
