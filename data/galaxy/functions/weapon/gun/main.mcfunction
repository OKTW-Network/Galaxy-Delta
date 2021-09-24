function galaxy:weapon/gun/meta/detector/main
execute as @a[tag=galaxy.gun.changed,tag=galaxy.gun.swap] run function galaxy:weapon/gun/data_switch-hand
execute as @a[tag=galaxy.gun.changed.mainHand,tag=!galaxy.gun.swap] run function galaxy:weapon/gun/data_switch-hand_main
execute as @a[tag=galaxy.gun.changed.offHand,tag=!galaxy.gun.swap] run function galaxy:weapon/gun/data_switch-hand_off

execute as @a[predicate=galaxy:weapon/hold-gun_status-1] run function galaxy:weapon/gun/holster/end
execute as @a[predicate=galaxy:weapon/hand_off-gun] run function galaxy:weapon/gun/holster/start

execute as @a[predicate=galaxy:weapon/hold-gun_status1,predicate=!galaxy:weapon/posture-gun-aiming] run function galaxy:weapon/gun/aim/end
execute as @a[tag=galaxy.gun.changed.mainHand,predicate=galaxy:weapon/posture-gun-aiming] run function galaxy:weapon/gun/aim/start
execute as @a[predicate=galaxy:weapon/posture-gun-aiming,tag=!galaxy.gun.zooming] run function galaxy:weapon/gun/aim/zoom/start

execute as @e[tag=galaxy.bullet] run function galaxy:weapon/gun/bullet/main

execute as @a[tag=galaxy.gun.changed] run function galaxy:weapon/gun/temperature/base
execute as @a[scores={MhGunTemper=1..}] if score @s MhGunTemper > @s MhGunTemperMin run function galaxy:weapon/gun/temperature/hand_main
execute as @a[scores={FhGunTemper=1..}] if score @s FhGunTemper > @s FhGunTemperMin run function galaxy:weapon/gun/temperature/hand_off
execute as @a[scores={MhGunAclrateTim=1..}] run function galaxy:weapon/gun/accelerate/hand_main
execute as @a[scores={FhGunAclrateTim=1..}] run function galaxy:weapon/gun/accelerate/hand_off
execute as @a[scores={gunDelay=1..}] run function galaxy:weapon/gun/delay/main

execute as @a run function galaxy:weapon/gun/meta/detector/untag
