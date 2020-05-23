function galaxy:weapon/meta/scoreboard/register

function galaxy:weapon/katana/initial
function galaxy:weapon/energy_saber/initial
function galaxy:weapon/gun/initial

execute if score #galaxy_print_init Config matches 1 run tellraw @a ["",{"text":"[Galaxy]: ","color":"yellow","bold":true},{"text":"Weapon: "},{"text":"Initialize complete!"}]
