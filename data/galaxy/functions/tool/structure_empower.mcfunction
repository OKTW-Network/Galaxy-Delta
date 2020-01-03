execute if score #structure_empower_weather_condition Config matches 2 if predicate galaxy:weather/rain run function galaxy:recipe/structure_empower/random
execute if score #structure_empower_weather_condition Config matches 1 if predicate galaxy:weather/thunder run function galaxy:recipe/structure_empower/random
execute if score #structure_empower_weather_condition Config matches 0 run function galaxy:recipe/structure_empower/random
