execute as @a[scores={reqActSwapPut=1}] run function galaxy:weapon/katana/meta/detector/holding_scabbard
execute as @a[scores={reqActSwapPut=1}] run function galaxy:weapon/katana/meta/detector/holding_edge

scoreboard players set @a[scores={reqActSwapPut=1}] sucActSwapPut 0

execute as @a[scores={reqActSwapPut=1,styleScabbard=1,styleEdge=1}] store success score @s sucActSwapPut run function galaxy:weapon/katana/replace_off-hand/katana
execute as @a[scores={reqActSwapPut=1,styleScabbard=2,styleEdge=2}] store success score @s sucActSwapPut run function galaxy:weapon/katana/replace_off-hand/nazo

# execute as @a[scores={reqActSwapPut=1,sucActSwapPut=0}] at @s if score #katana_act_swap_sound Config matches 1 run playsound galaxy:katana.stuck player @a[distance=..32] ~ ~ ~ 1 1 0.2
execute as @a[scores={reqActSwapPut=1,sucActSwapPut=0}] run scoreboard players set @s reqActSwapPut 0

execute as @a[scores={reqActSwapPut=1,sucActSwapPut=1}] at @s if score #katana_act_swap_sound Config matches 1 run playsound galaxy:katana.store player @a[distance=..32] ~ ~ ~ 1 1 0.2
replaceitem entity @a[scores={reqActSwapPut=1,sucActSwapPut=1}] weapon.mainhand minecraft:air
execute as @a[scores={reqActSwapPut=1,sucActSwapPut=1}] store result score @s cdActSwapPut run scoreboard players get #katana_act_swap_put_cd Config
execute as @a[scores={reqActSwapPut=1,sucActSwapPut=1}] store result score @s cdActSwapPull run scoreboard players get #katana_act_swap_pull_cd Config
