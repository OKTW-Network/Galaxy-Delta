execute if predicate galaxy:weapon/postures-katana run function galaxy:weapon/katana/get_data-action

execute if score #galaxy$katana_act_flash Config matches 1 if entity @s[predicate=minecraft:sneaking,predicate=galaxy:weapon/posture-katana-1,scores={ktnSwapPullCd=0},tag=galaxy.ktnFirstAct] run tag @s add galaxy.reqKtnSwapPull
execute if score #galaxy$katana_act_flash Config matches 1 if score #galaxy$katana_act_flash_charge Config matches 1 if entity @s[predicate=minecraft:sneaking,predicate=minecraft:on_ground,predicate=galaxy:weapon/posture-katana-1,tag=galaxy.ktnFlashCharged,tag=!galaxy.ktnFirstAct] run tag @s add galaxy.reqKtnFlash

execute if entity @s[tag=galaxy.reqKtnSwapPull] run function galaxy:weapon/katana/action/swap_pull/main
execute if entity @s[tag=galaxy.reqKtnFlash] run function galaxy:weapon/katana/action/flash/main

tag @s[tag=galaxy.reqKtnSwapPull] remove galaxy.reqKtnSwapPull
tag @s[tag=galaxy.reqKtnFlash] remove galaxy.reqKtnFlash

tag @s[tag=galaxy.ktnFirstAct] remove galaxy.ktnFirstAct

function galaxy:weapon/katana/action/flash/charge/reset
