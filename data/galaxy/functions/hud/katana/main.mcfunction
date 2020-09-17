execute at @s run function galaxy:weapon/katana/meta/detector/check-action-shock

scoreboard players set @s hudKatana 0
execute unless score #hud_katana_act_flash Config matches 1 if entity @s[predicate=minecraft:sneaking,predicate=galaxy:weapon/hand_off-katana,predicate=minecraft:hand_main-empty] run function galaxy:hud/katana/swap-pull
execute unless score #hud_katana_act_flash Config matches 1 if entity @s[predicate=minecraft:sneaking,predicate=galaxy:weapon/hand_main-katana_edge,predicate=galaxy:weapon/hand_off-katana_scabbard] run function galaxy:hud/katana/swap-put
execute if score #hud_katana_act_stun Config matches 1 if entity @s[predicate=!minecraft:sneaking,predicate=galaxy:weapon/hand_main-katana_edge,predicate=galaxy:weapon/hand_off-katana_scabbard,tag=!canActShock] run function galaxy:hud/katana/stun
execute if score #hud_katana_act_flash Config matches 1 if entity @s[predicate=minecraft:sneaking,predicate=galaxy:weapon/hand_off-katana,predicate=minecraft:hand_main-empty,predicate=minecraft:on_ground] run function galaxy:hud/katana/flash
execute if score #hud_katana_act_flash Config matches 1 if entity @s[predicate=minecraft:sneaking,predicate=galaxy:weapon/hand_main-katana_edge,predicate=galaxy:weapon/hand_off-katana_scabbard,predicate=minecraft:on_ground] run function galaxy:hud/katana/flash-timer
execute if score #hud_katana_act_shock Config matches 1 if entity @s[predicate=!minecraft:sneaking,predicate=galaxy:weapon/hand_main-katana_edge,predicate=galaxy:weapon/hand_off-katana_scabbard,tag=canActShock] run function galaxy:hud/katana/shock
execute if entity @s[scores={hudKatana=1..}] run scoreboard players set @s isKatanaHUD 1
execute if entity @s[scores={hudKatana=0,isKatanaHUD=1}] run title @s actionbar {"text":""}
execute if entity @s[scores={hudKatana=0}] run scoreboard players set @s isKatanaHUD 0
