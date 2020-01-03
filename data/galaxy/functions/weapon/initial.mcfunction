
function galaxy:weapon/katana/meta/scoreboard/register
execute as @a[tag=!InitializedKatanaScore] run function galaxy:weapon/katana/meta/scoreboard/set_player_score

function galaxy:weapon/energy_saber/meta/scoreboard/register
execute as @a[tag=!InitializedEnergySaberScore] run function galaxy:weapon/energy_saber/meta/scoreboard/set_player_score

function galaxy:weapon/pistol/meta/scoreboard/register
execute as @a[tag=!InitializedPistolScore] run function galaxy:weapon/pistol/meta/scoreboard/set_player_score

execute if score #galaxy_print_init Config matches 1 run tellraw @a ["",{"text":"[Galaxy/module:Weapon]","color":"yellow"},{"text":" Initialize complete!"}]
