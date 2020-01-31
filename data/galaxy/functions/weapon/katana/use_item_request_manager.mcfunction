# katana actions
execute if score #katana_act_swap Config matches 1 if entity @s[predicate=minecraft:sneaking,predicate=minecraft:hand_main-empty,predicate=galaxy:weapon/hand_off-katana,scores={cdActSwapPull=0}] run tag @s add reqActSwapPull
execute if score #katana_act_swap Config matches 1 if entity @s[predicate=minecraft:sneaking,predicate=galaxy:weapon/hand_main-katana_edge,predicate=galaxy:weapon/hand_off-katana_scabbard,scores={cdActSwapPut=0}] run tag @s add reqActSwapPut
execute if score #katana_act_stun Config matches 1 if entity @s[predicate=!minecraft:sneaking,predicate=galaxy:weapon/hand_main-katana_edge,predicate=galaxy:weapon/hand_off-katana_scabbard,scores={cdActStun=0}] run tag @s add reqActStun
execute if score #katana_act_flash Config matches 1 if score #katana_act_swap Config matches 1 if entity @s[predicate=minecraft:sneaking,predicate=minecraft:on_ground,predicate=galaxy:weapon/hand_main-katana_edge,predicate=galaxy:weapon/hand_off-katana_scabbard,scores={timActFlash=1..,cdActFlash=0}] run tag @s add reqActFlash

execute if entity @s[tag=reqActSwapPull] run function galaxy:weapon/katana/action/swap_pull
execute if entity @s[tag=reqActSwapPut] run function galaxy:weapon/katana/action/swap_put
execute if entity @s[tag=reqActStun] run function galaxy:weapon/katana/action/stun
execute if entity @s[tag=reqActFlash] run function galaxy:weapon/katana/action/flash/main

execute if entity @s[tag=reqActSwapPull] run tag @s remove reqActSwapPull
execute if entity @s[tag=reqActSwapPut] run tag @s remove reqActSwapPut
execute if entity @s[tag=reqActStun] run tag @s remove reqActStun
execute if entity @s[tag=reqActFlash] run tag @s remove reqActFlash
