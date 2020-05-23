execute as @a[tag=!InitializedGalaxyGunScore] run function galaxy:weapon/gun/meta/scoreboard/set_player_score

function galaxy:weapon/gun/meta/detector/main
execute as @e[tag=bullet] run function galaxy:weapon/gun/bullet/main
execute as @a[scores={gunDelay=0..}] run function galaxy:weapon/gun/delay
execute as @a[predicate=galaxy:cooling_delay-gun] run function galaxy:weapon/gun/cooling_delay
execute as @a run function galaxy:weapon/gun/temperature
# execute if entity @e[tag=specialItemEntity,tag=gun] run function galaxy:weapon/gun/special_item-entity/main
