tag @s[predicate=galaxy:weapon/hand_main-gun_type2,tag=!galaxy.gun.charge,tag=!galaxy.gun.fullyCharged,scores={MhGunOverheat=0}] add galaxy.request.gun.charge.start
tag @s[predicate=galaxy:weapon/hand_main-gun_type2,tag=galaxy.gun.charge] add galaxy.request.gun.charge.cancel

execute if entity @s[tag=galaxy.request.gun.charge.start] run function galaxy:weapon/gun/charge/start
execute if entity @s[tag=galaxy.request.gun.charge.cancel] run function galaxy:weapon/gun/charge/cancel

tag @s[tag=galaxy.request.gun.charge.start] remove galaxy.request.gun.charge.start
tag @s[tag=galaxy.request.gun.charge.cancel] remove galaxy.request.gun.charge.cancel
