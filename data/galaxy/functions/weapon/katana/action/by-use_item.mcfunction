function galaxy:weapon/katana/get_data-action

tag @s[tag=galaxy.ktnFirstAct] remove galaxy.ktnFirstAct
tag @s[tag=!cu.usedItem,tag=!cu.useItemBreak] add galaxy.ktnFirstAct

# execute at @s run function galaxy:weapon/katana/meta/detector/check-action-shock

execute if score #galaxy$katana_act_flash Config matches 0 if entity @s[predicate=minecraft:sneaking,predicate=galaxy:weapon/posture-katana-1,scores={ktnSwapPullCd=0}] run tag @s add galaxy.reqKtnSwapPull
execute if entity @s[predicate=minecraft:sneaking,predicate=galaxy:weapon/posture-katana-2,scores={ktnSwapPutCd=0}] run tag @s add galaxy.reqKtnSwapPut
execute if score #galaxy$katana_act_stun Config matches 1 if entity @s[predicate=!minecraft:sneaking,predicate=galaxy:weapon/posture-katana-2,scores={ktnStunCd=0}] run tag @s add galaxy.reqKtnStun
execute if score #galaxy$katana_act_flash Config matches 1 if entity @s[predicate=minecraft:sneaking,predicate=minecraft:on_ground,predicate=galaxy:weapon/posture-katana-1,scores={ktnFlashCd=0,ktnFlashCrgeLvl=..99},tag=!galaxy.ktnFirstAct] run tag @s add galaxy.reqKtnFlashCharge
# execute if score #katana_act_shock Config matches 1 if entity @s[predicate=!minecraft:sneaking,predicate=galaxy:weapon/posture-katana-2,tag=galaxy.ktnShockAvailable,scores={ktnShockCd=0}] run tag @s add galaxy.reqKtnShock

execute if entity @s[tag=galaxy.reqKtnSwapPull] run function galaxy:weapon/katana/action/swap_pull/main
execute if entity @s[tag=galaxy.reqKtnSwapPut] run function galaxy:weapon/katana/action/swap_put/main
execute if entity @s[tag=galaxy.reqKtnStun] run function galaxy:weapon/katana/action/stun/main
execute if entity @s[tag=galaxy.reqKtnFlashCharge] run function galaxy:weapon/katana/action/flash/charge/main
# execute if entity @s[tag=galaxy.reqKtnShock] run function galaxy:weapon/katana/action/shock/main

tag @s[tag=galaxy.reqKtnSwapPull] remove galaxy.reqKtnSwapPull
tag @s[tag=galaxy.reqKtnSwapPut] remove galaxy.reqKtnSwapPut
tag @s[tag=galaxy.reqKtnStun] remove galaxy.reqKtnStun
tag @s[tag=galaxy.reqKtnFlashCharge] remove galaxy.reqKtnFlashCharge
# tag @s[tag=galaxy.reqKtnShock] remove galaxy.reqKtnShock
