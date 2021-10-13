function galaxy:weapon/gun/meta/detector/main
execute as @a[tag=galaxy.gun.changed,tag=galaxy.gun.swap] run function galaxy:weapon/gun/data_switch-hand
execute as @a[tag=galaxy.gun.changed.mainHand,tag=!galaxy.gun.swap] run function galaxy:weapon/gun/data_switch-hand_main
execute as @a[tag=galaxy.gun.changed.offHand,tag=!galaxy.gun.swap] run function galaxy:weapon/gun/data_switch-hand_off

execute as @a[predicate=galaxy:weapon/hand_main-gun_type2,predicate=galaxy:weapon/hand_main-gun_special-flow,tag=galaxy.gun.doFlow,scores={gunDelay=0}] run function galaxy:weapon/gun/charge/flow
execute as @a[scores={gunChargeLvl=1..},tag=!galaxy.gun.charge] run function galaxy:weapon/gun/charge/discharge
execute as @a[scores={gunChargeLvl=..99},tag=galaxy.gun.charge] run function galaxy:weapon/gun/charge/charge
execute as @a[scores={gunChargeLvl=1..}] run function galaxy:weapon/gun/charge/check_and_run-reset

execute as @a[predicate=galaxy:weapon/hand_main-gun,predicate=galaxy:weapon/hand_main-gun_status-1] run function galaxy:weapon/gun/holster/end-hand_main
execute as @a[predicate=galaxy:weapon/hand_off-gun,predicate=galaxy:weapon/hands-gun_special-dual,predicate=galaxy:weapon/hand_off-gun_status-1] run function galaxy:weapon/gun/holster/end-hand_off
execute as @a[predicate=galaxy:weapon/hand_off-gun,predicate=!galaxy:weapon/hands-gun_special-dual,predicate=!galaxy:weapon/hand_off-gun_status-1] run function galaxy:weapon/gun/holster/start-hand_off

execute as @a[predicate=galaxy:weapon/hold-gun_status1,predicate=!galaxy:weapon/posture-gun-aiming] run function galaxy:weapon/gun/aim/end
execute as @a[tag=galaxy.gun.changed.mainHand,predicate=galaxy:weapon/posture-gun-aiming] run function galaxy:weapon/gun/aim/start
execute as @a[predicate=galaxy:weapon/posture-gun-aiming,tag=!galaxy.gun.zooming] run function galaxy:weapon/gun/aim/zoom/start

execute as @e[tag=galaxy.bullet] run function galaxy:weapon/gun/bullet/main

execute as @a[tag=galaxy.gun.changed] run function galaxy:weapon/gun/temperature/base
execute as @a[scores={gunChargeLvl=100}] run function galaxy:weapon/gun/temperature/heat-hand_main-charge
execute as @a[scores={MhGunTemper=1..}] if score @s MhGunTemper > @s MhGunTemperMin run function galaxy:weapon/gun/temperature/hand_main
execute as @a[scores={FhGunTemper=1..}] if score @s FhGunTemper > @s FhGunTemperMin run function galaxy:weapon/gun/temperature/hand_off
execute as @a[scores={MhGunAclrateTim=1..}] run function galaxy:weapon/gun/accelerate/hand_main
execute as @a[scores={FhGunAclrateTim=1..}] run function galaxy:weapon/gun/accelerate/hand_off
execute as @a[scores={gunDelay=1..}] run function galaxy:weapon/gun/delay/main

execute as @a run function galaxy:weapon/gun/meta/detector/untag
