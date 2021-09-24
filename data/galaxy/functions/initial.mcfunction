function #galaxy:scoreboard-register
function #galaxy:storage-register
function #galaxy:team-register

function #galaxy:config

function galaxy:check-version

function galaxy:recipe/initial
function galaxy:book/initial

execute as @a run function galaxy:initial-player

execute if score #galaxy$print_init Config matches 1 run tellraw @a ["",{"text":"[Galaxy]: ","color":"yellow","bold":true},{"text":"Initialize complete!"}]
