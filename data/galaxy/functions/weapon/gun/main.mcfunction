function galaxy:weapon/gun/meta/detector/main
execute as @a[tag=MhGunChanged] run function galaxy:weapon/gun/data_switch-hand_main
execute as @a[tag=FhGunChanged] run function galaxy:weapon/gun/data_switch-hand_off
execute if score #gun_aim Config matches 1 run function galaxy:weapon/gun/aim
execute as @e[tag=bullet] run function galaxy:weapon/gun/bullet/main
execute as @a[scores={gunDelay=0..}] run function galaxy:weapon/gun/delay
execute as @a[predicate=galaxy:cooling_delay-gun] run function galaxy:weapon/gun/cooling_delay
execute as @a run function galaxy:weapon/gun/temperature
execute as @a run function galaxy:weapon/gun/meta/detector/untag
