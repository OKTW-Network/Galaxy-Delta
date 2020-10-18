scoreboard players operation #max random = #structure_empower_success_chance Config
function math:random
execute store result score #1 calcu_temp run data get storage math:resources random.result
execute if score #1 calcu_temp matches 0 run function galaxy:recipe/structure_empower/main