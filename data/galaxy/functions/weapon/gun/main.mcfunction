function galaxy:weapon/gun/meta/detector/main
execute as @a[tag=GunChanged,tag=GunSwapBoth] run function galaxy:weapon/gun/data_switch-hand
execute as @a[tag=MhGunChanged,tag=!GunSwapBoth] run function galaxy:weapon/gun/data_switch-hand_main
execute as @a[tag=FhGunChanged,tag=!GunSwapBoth] run function galaxy:weapon/gun/data_switch-hand_off

execute as @a[tag=galaxy.gunCharged] run function galaxy:weapon/gun/shoot/charge/force_end

execute as @a[predicate=galaxy:weapon/hand_main-gun,scores={gunDelay=0,gunSchedule=1..},tag=cu.useItemContinuous,tag=!galaxy.gunTickPatchLock] run function galaxy:weapon/gun/shoot/tick_patch

execute as @a[predicate=galaxy:weapon/hold-gun] run function galaxy:weapon/gun/holster/main
execute as @a run function galaxy:weapon/gun/aim/main
execute as @e[tag=galaxy.bullet] run function galaxy:weapon/gun/bullet/main
execute as @a[scores={MhGunTemper=1..}] run function galaxy:weapon/gun/temperature/hand_main
execute as @a[scores={FhGunTemper=1..}] run function galaxy:weapon/gun/temperature/hand_off
execute as @a[scores={MhGunAclrateTim=1..}] run function galaxy:weapon/gun/accelerate/hand_main
execute as @a[scores={FhGunAclrateTim=1..}] run function galaxy:weapon/gun/accelerate/hand_off
execute as @a[scores={gunDelay=1..}] run function galaxy:weapon/gun/delay/main
execute as @a[tag=!cu.useItemContinuous,scores={gunChargeLvl=1..}] run function galaxy:weapon/gun/shoot/charge/outflow

tag @a[tag=galaxy.gunChargeLock,tag=!cu.useItemContinuous,scores={gunDelay=0}] remove galaxy.gunChargeLock

execute as @a run function galaxy:weapon/gun/meta/detector/untag

tag @a[tag=galaxy.gunTickPatchLock] remove galaxy.gunTickPatchLock
