execute as @a[scores={reqActSwapPull=1}] at @s if score #katana_act_swap_sound Config matches 1 run playsound galaxy:katana.draw player @a[distance=..32] ~ ~ ~ 1 1 0.2

replaceitem entity @a[scores={reqActSwapPull=1,styleKatana=1}] weapon.mainhand minecraft:diamond_sword{display:{Name:"{\"translate\":\"item.galaxy.katana.name\",\"color\":\"white\"}"},HideFlags:39,Unbreakable:1b,CustomModelData:10201,edge:1,dur:128,dmg:0,type:1}
replaceitem entity @a[scores={reqActSwapPull=1,styleKatana=1}] weapon.offhand minecraft:carrot_on_a_stick{display:{Name:"{\"translate\":\"item.galaxy.scabbard.name\",\"color\":\"white\"}"},HideFlags:39,Unbreakable:1b,CustomModelData:10202,scabbard:1,dur:128,dmg:0,type:1}

replaceitem entity @a[scores={reqActSwapPull=1,styleKatana=2}] weapon.mainhand minecraft:diamond_sword{display:{Name:"{\"translate\":\"item.galaxy.nazo.name\",\"color\":\"yellow\"}"},HideFlags:39,Unbreakable:1b,CustomModelData:20201,edge:1,dur:128,dmg:0,type:2}
replaceitem entity @a[scores={reqActSwapPull=1,styleKatana=2}] weapon.offhand minecraft:carrot_on_a_stick{display:{Name:"{\"translate\":\"item.galaxy.scabbard.name\",\"color\":\"yellow\"}"},HideFlags:39,Unbreakable:1b,CustomModelData:20202,scabbard:1,dur:128,dmg:0,type:2}

execute as @a[scores={reqActSwapPull=1,reqActFlash=0}] store result score @s timActFlash run scoreboard players get #katana_act_flash_timer Config
execute as @a[scores={reqActSwapPull=1}] store result score @s cdActSwapPull run scoreboard players get #katana_act_swap_pull_cd Config
execute as @a[scores={reqActSwapPull=1}] store result score @s cdActSwapPut run scoreboard players get #katana_act_swap_put_cd Config
