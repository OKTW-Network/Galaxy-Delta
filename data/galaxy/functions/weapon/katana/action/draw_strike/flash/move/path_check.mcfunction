scoreboard players set #1 temp 0
execute if predicate galaxy:weapon/katana/flash_path_check run scoreboard players add #1 temp 1
execute positioned ~0.35 ~ ~0.35 if predicate galaxy:weapon/katana/flash_path_check run scoreboard players add #1 temp 1
execute positioned ~-0.35 ~ ~0.35 if predicate galaxy:weapon/katana/flash_path_check run scoreboard players add #1 temp 1
execute positioned ~-0.35 ~ ~-0.35 if predicate galaxy:weapon/katana/flash_path_check run scoreboard players add #1 temp 1
execute positioned ~0.35 ~ ~-0.35 if predicate galaxy:weapon/katana/flash_path_check run scoreboard players add #1 temp 1
execute if score #weapon.katana.action.draw_strike.flash._performOnGround galaxy matches 1 run execute if block ~ ~-1 ~ #global:entity_passable run scoreboard players set #1 temp 0
execute if score #1 temp matches 5 run tag @a[tag=galaxy._tag.ThisPerformKatanaDrawStrike] add galaxy._success.katana.drawStrike.flash.pathCheck
