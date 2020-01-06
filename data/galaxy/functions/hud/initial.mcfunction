
function galaxy:hud/meta/storage/register

function galaxy:hud/meta/scoreboard/register
execute as @a[tag=!InitializedHUDScore] run function galaxy:hud/meta/scoreboard/set_player_score

execute if score #galaxy_print_init Config matches 1 run tellraw @a ["",{"text":"[Galaxy]: ","color":"yellow","bold":true},{"text":"HUD: "},{"text":"Initialize complete!"}]
