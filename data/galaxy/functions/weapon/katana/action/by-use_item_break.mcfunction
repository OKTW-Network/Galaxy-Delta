execute if predicate galaxy:weapon/postures-katana run function galaxy:weapon/katana/get-action_data

execute if score #galaxy$katana_act_flash Config matches 1 if entity @s[predicate=minecraft:sneaking,predicate=galaxy:weapon/posture-katana-1,tag=galaxy._tag.katanaSwapPullReady] run tag @s add galaxy._tag.requestKatanaActionSwapPull

execute if entity @s[tag=galaxy._tag.requestKatanaActionSwapPull] run function galaxy:weapon/katana/action/swap_pull/main

tag @s[tag=galaxy._tag.requestKatanaActionSwapPull] remove galaxy._tag.requestKatanaActionSwapPull
