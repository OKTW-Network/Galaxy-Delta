function creative-utilities:meta/scoreboard/register
function creative-utilities:config
function creative-utilities:version_check

execute as @a[tag=!InitializedCUScore] run function creative-utilities:meta/scoreboard/set_player_score

function creative-utilities:meta/bossbar/register
execute as @a[tag=!InitializedCUBossBar] run function creative-utilities:meta/bossbar/set_player_visible

execute if score #cu_print_init Config matches 1 run tellraw @a ["",{"text":"[Creative Utilities]: ","color":"yellow","bold":true},{"text":"Initialize complete!"}]
