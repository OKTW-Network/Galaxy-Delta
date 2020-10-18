execute if score #empower_lens_weather_condition Config matches 2 if predicate galaxy:weather/rain if predicate galaxy:configurable/structure_empower_success_chance run function galaxy:recipe/empower_lens/main
execute if score #empower_lens_weather_condition Config matches 1 if predicate galaxy:weather/thunder if predicate galaxy:configurable/structure_empower_success_chance run function galaxy:recipe/empower_lens/main
execute if score #empower_lens_weather_condition Config matches 0 if predicate galaxy:configurable/structure_empower_success_chance run function galaxy:recipe/empower_lens/main
