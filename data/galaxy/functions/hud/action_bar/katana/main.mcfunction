execute if predicate galaxy:weapon/katana/posture/blade_and_scabbard run function galaxy:weapon/katana/check_type_pair

execute if entity @s[predicate=galaxy:weapon/katana/posture/action/skill,tag=galaxy._tag.katana.pairedType] run function galaxy:hud/action_bar/katana/skill

scoreboard players set #1 temp 0
execute if entity @s[predicate=galaxy:weapon/katana/posture/action/draw] run scoreboard players set #1 temp 1
execute if entity @s[predicate=galaxy:weapon/katana/posture/action/store,tag=galaxy._tag.katana.pairedType] run scoreboard players set #1 temp 1
execute if score #1 temp matches 1 run function galaxy:hud/action_bar/katana/draw_strike
