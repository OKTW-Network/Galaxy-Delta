scoreboard players set @s hudPistol 0
execute if score #hud_pistol_single Config matches 1 if entity @s[predicate=galaxy:weapon/hand_main-pistol] run function galaxy:hud/pistol/single
execute if score #hud_pistol_double Config matches 1 if entity @s[predicate=galaxy:weapon/hand_main-pistol,predicate=galaxy:weapon/hand_off-pistol] run function galaxy:hud/pistol/double
execute if entity @a[scores={hudPistol=1..}] run scoreboard players set @s isPistolHUD 1
execute if entity @a[scores={hudPistol=0,isPistolHUD=1}] run title @s actionbar {"text":""}
execute if entity @a[scores={hudPistol=0}] run scoreboard players set @s isPistolHUD 0
