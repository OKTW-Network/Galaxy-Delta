scoreboard players set @s hudPistol 0
execute if score #galaxy$hud_gun_type1 Config matches 1 if entity @s[predicate=galaxy:weapon/hand_main-gun_type1] run function galaxy:hud/gun/type1/main
execute if score #galaxy$hud_gun_type2 Config matches 1 if entity @s[predicate=galaxy:weapon/hand_main-gun_type2] run function galaxy:hud/gun/type2/main
execute if entity @a[scores={hudPistol=1..}] run scoreboard players set @s isPistolHUD 1
execute if entity @a[scores={hudPistol=0,isPistolHUD=1}] run title @s actionbar {"text":""}
execute if entity @a[scores={hudPistol=0}] run scoreboard players set @s isPistolHUD 0
