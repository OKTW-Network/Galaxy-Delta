function galaxy:weapon/katana/get-action_data

execute if score #galaxy$katana_act_flash Config matches 1 if entity @s[predicate=minecraft:sneaking,predicate=galaxy:weapon/posture-katana-1,scores={galaxy.weapon.katana.action.swap_pull.cooldown=0},tag=!cu.usingItemContinuously] run tag @s add galaxy._tag.requestKatanaActionSwapPullReady
execute if score #galaxy$katana_act_flash Config matches 0 if entity @s[predicate=minecraft:sneaking,predicate=galaxy:weapon/posture-katana-1,scores={galaxy.weapon.katana.action.swap_pull.cooldown=0},tag=galaxy._tag.katanaActionSwapPullReady] run tag @s add galaxy._tag.requestKatanaActionSwapPull
execute if entity @s[predicate=minecraft:sneaking,predicate=galaxy:weapon/posture-katana-2,scores={galaxy.weapon.katana.action.swap_put.cooldown=0}] run tag @s add galaxy._tag.requestKatanaActionSwapPut
execute if score #galaxy$katana_act_stun Config matches 1 if entity @s[predicate=!minecraft:sneaking,predicate=galaxy:weapon/posture-katana-2,scores={galaxy.weapon.katana.action.stun.cooldown=0}] run tag @s add galaxy._tag.requestKatanaActionStun
execute if score #galaxy$katana_act_flash Config matches 1 if entity @s[predicate=minecraft:sneaking,predicate=minecraft:on_ground,predicate=galaxy:weapon/posture-katana-1,scores={galaxy.weapon.katana.action.flash.cooldown=0},tag=cu.usingItemContinuously] run tag @s add galaxy._tag.requestKatanaActionFlash

execute if entity @s[tag=galaxy._tag.requestKatanaActionSwapPullReady] run function galaxy:weapon/katana/action/swap_pull/ready/main
execute if entity @s[tag=galaxy._tag.requestKatanaActionSwapPull] run function galaxy:weapon/katana/action/swap_pull/main
execute if entity @s[tag=galaxy._tag.requestKatanaActionSwapPut] run function galaxy:weapon/katana/action/swap_put/main
execute if entity @s[tag=galaxy._tag.requestKatanaActionStun] run function galaxy:weapon/katana/action/stun/main
execute if entity @s[tag=galaxy._tag.requestKatanaActionFlash] run function galaxy:weapon/katana/action/flash/main

tag @s[tag=galaxy._tag.requestKatanaActionSwapPullReady] remove galaxy._tag.requestKatanaActionSwapPullReady
tag @s[tag=galaxy._tag.requestKatanaActionSwapPull] remove galaxy._tag.requestKatanaActionSwapPull
tag @s[tag=galaxy._tag.requestKatanaActionSwapPut] remove galaxy._tag.requestKatanaActionSwapPut
tag @s[tag=galaxy._tag.requestKatanaActionStun] remove galaxy._tag.requestKatanaActionStun
tag @s[tag=galaxy._tag.requestKatanaActionFlash] remove galaxy._tag.requestKatanaActionFlash
