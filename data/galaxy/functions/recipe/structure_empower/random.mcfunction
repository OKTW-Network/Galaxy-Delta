scoreboard players operation #random_max random = #structure_empower_success_chance Config
function math:random
execute store result score #calculation_temp1 numeric run data get storage math:resources random.result
execute if score #calculation_temp1 numeric matches 0 run function galaxy:recipe/structure_empower/main