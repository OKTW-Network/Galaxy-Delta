
execute if entity @a[tag=!InitializedHUDScore] run function galaxy:hud/meta/scoreboard/set_player_score

function galaxy:meta/detector/main-hand_empty
execute if score #hud_katana Config matches 1 run function galaxy:weapon/katana/meta/detector/holding_katana
execute if score #hud_katana Config matches 1 run function galaxy:weapon/katana/meta/detector/holding_edge
execute if score #hud_katana Config matches 1 run function galaxy:weapon/katana/meta/detector/holding_scabbard

execute if entity @a[scores={isHoldKatana=1}] if score #hud_katana Config matches 1 run function galaxy:hud/katana
execute if entity @a[scores={isHoldScabbard=1,isHoldEdge=1}] if score #hud_katana Config matches 1 run function galaxy:hud/katana
