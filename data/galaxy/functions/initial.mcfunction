function #galaxy:config

function #galaxy:scoreboard-register
function #galaxy:team-register

function galaxy:check-version

execute as @a run function galaxy:initial-player

function galaxy:book/initial
function galaxy:recipe/initial

execute if score #galaxy$print_init Config matches 1 run tellraw @a ["",{"text":"[Galaxy]: ","color":"yellow","bold":true},{"text":"Initialize complete!"}]
