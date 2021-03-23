# execute at @s run function galaxy:weapon/katana/meta/detector/check-action-shock

scoreboard players set @s hudKatana 0
execute unless score #hud_katana_act_flash Config matches 1 if entity @s[predicate=minecraft:sneaking,predicate=galaxy:weapon/posture-katana-1] run function galaxy:hud/katana/swap-pull
execute unless score #hud_katana_act_flash Config matches 1 if entity @s[predicate=minecraft:sneaking,predicate=galaxy:weapon/posture-katana-2] run function galaxy:hud/katana/swap-put
execute if score #hud_katana_act_stun Config matches 1 if entity @s[predicate=!minecraft:sneaking,predicate=galaxy:weapon/posture-katana-2,tag=!galaxy.ktnShockAvailable] run function galaxy:hud/katana/stun
execute if score #hud_katana_act_flash Config matches 1 if entity @s[predicate=minecraft:sneaking,predicate=minecraft:on_ground,predicate=galaxy:weapon/posture-katana-1] run function galaxy:hud/katana/flash/main
# execute if score #hud_katana_act_shock Config matches 1 if entity @s[predicate=!minecraft:sneaking,predicate=galaxy:weapon/posture-katana-2,tag=galaxy.ktnShockAvailable] run function galaxy:hud/katana/shock
execute if entity @s[scores={hudKatana=1..}] run scoreboard players set @s isKatanaHUD 1
execute if entity @s[scores={hudKatana=0,isKatanaHUD=1}] run title @s actionbar {"text":""}
execute if entity @s[scores={hudKatana=0}] run scoreboard players set @s isKatanaHUD 0
