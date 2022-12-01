function galaxy:weapon/katana/get-action_data

execute if score #galaxy$weapon.katana.action.flash Config matches 1 if entity @s[predicate=minecraft:sneaking,predicate=galaxy:weapon/posture-katana-1,scores={galaxy.katana.swapPull.cooldown=0},tag=!cu._status.usingItemContinuously] run tag @s add galaxy._request.katana.swapPullReady
execute if score #galaxy$weapon.katana.action.flash Config matches 0 if entity @s[predicate=minecraft:sneaking,predicate=galaxy:weapon/posture-katana-1,scores={galaxy.katana.swapPull.cooldown=0},tag=galaxy._tag.katanaSwapPullReady] run tag @s add galaxy._request.katana.swapPull
execute if entity @s[predicate=minecraft:sneaking,predicate=galaxy:weapon/posture-katana-2,scores={galaxy.katana.swapPut.cooldown=0}] run tag @s add galaxy._request.katana.swapPut
execute if score #galaxy$weapon.katana.action.stun Config matches 1 if entity @s[predicate=!minecraft:sneaking,predicate=galaxy:weapon/posture-katana-2,scores={galaxy.katana.stun.cooldown=0}] run tag @s add galaxy._request.katana.stun
execute if score #galaxy$weapon.katana.action.flash Config matches 1 if entity @s[predicate=minecraft:sneaking,predicate=minecraft:on_ground,predicate=galaxy:weapon/posture-katana-1,scores={galaxy.katana.flash.cooldown=0},tag=cu._status.usingItemContinuously] run tag @s add galaxy._request.katana.flash

execute if entity @s[tag=galaxy._request.katana.swapPullReady] run function galaxy:weapon/katana/action/swap_pull/ready/main
execute if entity @s[tag=galaxy._request.katana.swapPull] run function galaxy:weapon/katana/action/swap_pull/main
execute if entity @s[tag=galaxy._request.katana.swapPut] run function galaxy:weapon/katana/action/swap_put/main
execute if entity @s[tag=galaxy._request.katana.stun] run function galaxy:weapon/katana/action/stun/main
execute if entity @s[tag=galaxy._request.katana.flash] run function galaxy:weapon/katana/action/flash/main

tag @s[tag=galaxy._request.katana.swapPullReady] remove galaxy._request.katana.swapPullReady
tag @s[tag=galaxy._request.katana.swapPull] remove galaxy._request.katana.swapPull
tag @s[tag=galaxy._request.katana.swapPut] remove galaxy._request.katana.swapPut
tag @s[tag=galaxy._request.katana.stun] remove galaxy._request.katana.stun
tag @s[tag=galaxy._request.katana.flash] remove galaxy._request.katana.flash
