function galaxy:weapon/get_data-action

execute if score #galaxy$katana_act_flash Config matches 1 if entity @s[predicate=minecraft:sneaking,predicate=galaxy:weapon/posture-katana-1,scores={ktnSwapPullCd=0},tag=!cu.usingItemContinuously] run tag @s add galaxy.reqKtnSwapPullReady
execute if score #galaxy$katana_act_flash Config matches 0 if entity @s[predicate=minecraft:sneaking,predicate=galaxy:weapon/posture-katana-1,scores={ktnSwapPullCd=0},tag=galaxy.ktnSwapPullReady] run tag @s add galaxy.reqKtnSwapPull
execute if entity @s[predicate=minecraft:sneaking,predicate=galaxy:weapon/posture-katana-2,scores={ktnSwapPutCd=0}] run tag @s add galaxy.reqKtnSwapPut
execute if score #galaxy$katana_act_stun Config matches 1 if entity @s[predicate=!minecraft:sneaking,predicate=galaxy:weapon/posture-katana-2,scores={ktnStunCd=0}] run tag @s add galaxy.reqKtnStun
execute if score #galaxy$katana_act_flash Config matches 1 if entity @s[predicate=minecraft:sneaking,predicate=minecraft:on_ground,predicate=galaxy:weapon/posture-katana-1,scores={ktnFlashCd=0},tag=cu.usingItemContinuously] run tag @s add galaxy.reqKtnFlash

execute if entity @s[tag=galaxy.reqKtnSwapPullReady] run function galaxy:weapon/katana/action/swap_pull/ready/main
execute if entity @s[tag=galaxy.reqKtnSwapPull] run function galaxy:weapon/katana/action/swap_pull/main
execute if entity @s[tag=galaxy.reqKtnSwapPut] run function galaxy:weapon/katana/action/swap_put/main
execute if entity @s[tag=galaxy.reqKtnStun] run function galaxy:weapon/katana/action/stun/main
execute if entity @s[tag=galaxy.reqKtnFlash] run function galaxy:weapon/katana/action/flash/main

tag @s[tag=galaxy.reqKtnSwapPullReady] remove galaxy.reqKtnSwapPullReady
tag @s[tag=galaxy.reqKtnSwapPull] remove galaxy.reqKtnSwapPull
tag @s[tag=galaxy.reqKtnSwapPut] remove galaxy.reqKtnSwapPut
tag @s[tag=galaxy.reqKtnStun] remove galaxy.reqKtnStun
tag @s[tag=galaxy.reqKtnFlash] remove galaxy.reqKtnFlash
