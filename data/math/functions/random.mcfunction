function creative-utilities:mini_uuid/generate
execute store result score #random_result random run data get storage cu:resources miniUUID.Most
execute if score #random_result random matches ..-1 run scoreboard players operation #random_result random *= #static_-1 numeric
scoreboard players operation #random_result random %= #random_max random
execute store result storage math:resources random.result int 1 run scoreboard players get #random_result random
