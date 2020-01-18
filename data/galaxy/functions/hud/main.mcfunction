execute as @a[tag=!InitializedGalaxyHUDScore] run function galaxy:hud/meta/scoreboard/set_player_score

execute if score #hud_katana Config matches 1 as @a run function galaxy:hud/katana/main
execute if score #hud_pistol Config matches 1 as @a run function galaxy:hud/pistol/main
