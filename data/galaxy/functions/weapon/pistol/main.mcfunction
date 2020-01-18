execute as @a[tag=!InitializedGalaxyPistolScore] run function galaxy:weapon/pistol/meta/scoreboard/set_player_score

function galaxy:weapon/pistol/meta/detector/main
execute as @e[tag=pistolBullet] at @s run function galaxy:weapon/pistol/bullet/main
execute as @a[scores={pistolFireDly=0..}] run function galaxy:weapon/pistol/firing_delay
execute as @a[scores={MhPistolCoolDly=0..}] run function galaxy:weapon/pistol/cooling_delay
execute as @a[scores={FhPistolCoolDly=0..}] run function galaxy:weapon/pistol/cooling_delay
execute as @a run function galaxy:weapon/pistol/temperature
execute if entity @e[tag=specialItemEntity,tag=pistol] run function galaxy:weapon/pistol/special_item-entity/main

