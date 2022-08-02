execute as @a run function galaxy:weapon/gun/changed/untag
execute as @a[predicate=galaxy:weapon/gun/hold] run function galaxy:weapon/gun/changed/main

execute as @a[tag=galaxy._status.gun.changed,tag=cu._status.moving] run function galaxy:weapon/gun/accuracy/flexibility/restart

execute as @a[predicate=galaxy:weapon/gun/main_hand,predicate=galaxy:weapon/gun/main_hand-status_-1] run function galaxy:weapon/gun/holster/end-hand_main
execute as @a[predicate=galaxy:weapon/gun/off_hand,predicate=galaxy:weapon/gun/hands-pistol,predicate=galaxy:weapon/gun/off_hand-status_-1] run function galaxy:weapon/gun/holster/end-hand_off
execute as @a[predicate=galaxy:weapon/gun/off_hand,predicate=!galaxy:weapon/gun/hands-pistol,predicate=!galaxy:weapon/gun/off_hand-status_-1] run function galaxy:weapon/gun/holster/start-hand_off

execute as @a[predicate=galaxy:weapon/gun/hold-status_1,predicate=!galaxy:weapon/gun/posture-aiming] run function galaxy:weapon/gun/aim/end
execute as @a[tag=galaxy._status.gun.changed.mainHand,predicate=galaxy:weapon/gun/posture-aiming] run function galaxy:weapon/gun/aim/start
execute as @a[predicate=galaxy:weapon/gun/posture-aiming,tag=!galaxy._tag.gun.zooming] run function galaxy:weapon/gun/aim/zoom/start

execute as @e[tag=galaxy.projectile.bullet] run function galaxy:weapon/gun/bullet/main

execute as @a[tag=galaxy._status.gun.changed] run function galaxy:weapon/gun/temperature/base
execute as @a[scores={galaxy.gun.temperature.mainHand=1..}] if score @s galaxy.gun.temperature.mainHand > @s galaxy.gun.temperatureMin.mainHand run function galaxy:weapon/gun/temperature/hand_main
execute as @a[scores={galaxy.gun.temperature.offHand=1..}] if score @s galaxy.gun.temperature.offHand > @s galaxy.gun.temperatureMin.offHand run function galaxy:weapon/gun/temperature/hand_off

execute as @a[scores={galaxy.gun.interval=1..}] run function galaxy:weapon/gun/interval

execute as @a[scores={galaxy.gun.unstableShot.mainHand=1..}] run function galaxy:weapon/gun/accuracy/instability/hand_main
execute as @a[scores={galaxy.gun.unstableShot.offHand=1..}] run function galaxy:weapon/gun/accuracy/instability/hand_off
