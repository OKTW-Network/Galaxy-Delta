scoreboard players set @s hudPistol 0
execute if score #hud_gun_single Config matches 1 if entity @s[predicate=galaxy:weapon/hand_main-gun] run function galaxy:hud/gun/single
execute if score #hud_gun_double Config matches 1 if entity @s[predicate=galaxy:weapon/hands-pistol] run function galaxy:hud/gun/double
execute if entity @a[scores={hudPistol=1..}] run scoreboard players set @s isPistolHUD 1
execute if entity @a[scores={hudPistol=0,isPistolHUD=1}] run title @s actionbar {"text":""}
execute if entity @a[scores={hudPistol=0}] run scoreboard players set @s isPistolHUD 0
