function galaxy:recipe/meta/scoreboard/register

execute store result score #recipeBuildHTct Debug run function galaxy:recipe/hi-tech_crafting_table/build
execute store result score #recipeBuildSbldG Debug run function galaxy:recipe/super_builder-gun/build

execute if score #galaxy_print_init Config matches 1 run tellraw @a ["",{"text":"[Galaxy]: ","color":"yellow","bold":true},{"text":"Recipe: "},{"text":"Initialize complete!"}]
