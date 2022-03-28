execute if predicate galaxy:weapon/postures-katana run function galaxy:weapon/katana/get-action_data

execute if score #galaxy$katana_act_flash Config matches 1 if entity @s[predicate=minecraft:sneaking,predicate=galaxy:weapon/posture-katana-1,tag=galaxy._tag.katanaActionSwapPullReady] run tag @s add galaxy.reqKtnSwapPull

execute if entity @s[tag=galaxy.reqKtnSwapPull] run function galaxy:weapon/katana/action/swap_pull/main

tag @s[tag=galaxy.reqKtnSwapPull] remove galaxy.reqKtnSwapPull
