function galaxy:recipe/meta/scoreboard/register

function galaxy:recipe/hi-tech_crafting_table/build
function galaxy:recipe/super_builder-gun/build

execute if score #galaxy_print_init Config matches 1 run tellraw @a ["",{"text":"[Galaxy]: ","color":"yellow","bold":true},{"text":"Recipe: "},{"text":"Initialize complete!"}]
