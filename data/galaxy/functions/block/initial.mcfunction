function galaxy:block/meta/scoreboard/register

schedule function galaxy:block/elevator/jump_inhibition_schedule 60s replace

execute if score #galaxy_print_init Config matches 1 run tellraw @a ["",{"text":"[Galaxy]: ","color":"yellow","bold":true},{"text":"Block: "},{"text":"Initialize complete!"}]
