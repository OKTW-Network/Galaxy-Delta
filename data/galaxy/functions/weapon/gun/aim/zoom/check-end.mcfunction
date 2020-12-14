scoreboard players set #1 calcu_temp 0
execute if entity @s[predicate=!galaxy:weapon/hand_main-gun] run scoreboard players set #1 calcu_temp 1
execute if entity @s[predicate=!minecraft:sneaking] run scoreboard players set #1 calcu_temp 1
execute if entity @s[tag=MhGunChanged] run scoreboard players set #1 calcu_temp 1
execute if score #1 calcu_temp matches 1 run function galaxy:weapon/gun/aim/zoom/end
