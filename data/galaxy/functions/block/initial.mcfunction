
function galaxy:block/functional/initial
# function galaxy:block/machine/initial

execute if score #galaxy_print_init Config matches 1 run tellraw @a ["",{"text":"[Galaxy]: ","color":"yellow","bold":true},{"text":"Block: "},{"text":"Initialize complete!"}]
