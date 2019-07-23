execute as @a[scores={reqActSwapPut=1}] at @s if score #katana_act_swap_sound Config matches 1 run playsound galaxy:katana.store player @a[distance=..32] ~ ~ ~ 1 1 0.2

replaceitem entity @a[scores={reqActSwapPut=1,styleScabbard=1,styleEdge=1}] weapon.offhand minecraft:carrot_on_a_stick{display:{Name:"{\"translate\":\"item.galaxy.katana.name\",\"color\":\"white\",\"italic\":false}"},HideFlags:39,Unbreakable:1b,CustomModelData:10200,katana:1,dur:128,dmg:0,type:1}
replaceitem entity @a[scores={reqActSwapPut=1,styleScabbard=2,styleEdge=2}] weapon.offhand minecraft:carrot_on_a_stick{display:{Name:"{\"translate\":\"item.galaxy.nazo.name\",\"color\":\"white\",\"italic\":false}"},HideFlags:39,Unbreakable:1b,CustomModelData:20200,katana:1,dur:128,dmg:0,type:2}

replaceitem entity @a[scores={reqActSwapPut=1}] weapon.mainhand minecraft:air
execute as @a[scores={reqActSwapPut=1}] store result score @s cdActSwapPut run scoreboard players get #katana_act_swap_put_cd Config
execute as @a[scores={reqActSwapPut=1}] store result score @s cdActSwapPull run scoreboard players get #katana_act_swap_pull_cd Config
