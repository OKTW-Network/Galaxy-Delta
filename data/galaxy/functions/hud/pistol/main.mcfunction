function galaxy:weapon/pistol/meta/detector/holding_pistol

execute as @a run scoreboard players set @s hudPistol 0
execute if score #hud_pistol_single Config matches 1 as @a[scores={holdPistol=1}] run function galaxy:hud/pistol/single
execute if score #hud_pistol_double Config matches 1 as @a[scores={holdPistol=2..3}] run function galaxy:hud/pistol/double
execute as @a[scores={hudPistol=1..}] run scoreboard players set @s isPistolHUD 1
execute as @a[scores={hudPistol=0,isPistolHUD=1}] run title @s actionbar {"text":""}
execute as @a[scores={hudPistol=0}] run scoreboard players set @s isPistolHUD 0
