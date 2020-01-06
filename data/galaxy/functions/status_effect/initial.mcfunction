
function galaxy:status_effect/meta/scoreboard/register
execute as @a[tag=!InitializedStatusEffectScore] run function galaxy:status_effect/meta/scoreboard/set_player_score

execute if score #galaxy_print_init Config matches 1 run tellraw @a ["",{"text":"[Galaxy]: ","color":"yellow","bold":true},{"text":"Status effect: "},{"text":"Initialize complete!"}]
