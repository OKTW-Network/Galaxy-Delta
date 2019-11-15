
execute if entity @a[tag=!InitializedHUDScore] run function galaxy:hud/meta/scoreboard/set_player_score

execute if entity @a[scores={isHoldKatana=1}] run function galaxy:hud/katana
execute if entity @a[scores={isHoldScabbard=1,isHoldEdge=1}] run function galaxy:hud/katana
