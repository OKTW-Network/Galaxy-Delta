# Gun casing
execute if score @s galaxy.GUI.HTct.recipeSubject matches 1 as @a[tag=galaxy.request.HTct.craft,gamemode=!creative] run function galaxy:recipe/hi-tech_crafting_table/component/requirement-check/casing_gun_gold
execute if score @s galaxy.GUI.HTct.recipeSubject matches 1 as @a[tag=galaxy.request.HTct.craft,tag=galaxy.success.HTct.recipeRequirementCheck,gamemode=!creative] run function galaxy:recipe/hi-tech_crafting_table/component/requirement-remove/casing_gun_gold
execute if score @s galaxy.GUI.HTct.recipeSubject matches 1 as @a[tag=galaxy.request.HTct.craft,tag=galaxy.success.HTct.recipeRequirementCheck,gamemode=!creative] run function galaxy:component/give/casing_gun_gold
execute if score @s galaxy.GUI.HTct.recipeSubject matches 1 as @a[tag=galaxy.request.HTct.craft,gamemode=creative] run function galaxy:component/give/casing_gun_gold

execute if score @s galaxy.GUI.HTct.recipeSubject matches 2 as @a[tag=galaxy.request.HTct.craft,gamemode=!creative] run function galaxy:recipe/hi-tech_crafting_table/component/requirement-check/casing_gun_iron
execute if score @s galaxy.GUI.HTct.recipeSubject matches 2 as @a[tag=galaxy.request.HTct.craft,tag=galaxy.success.HTct.recipeRequirementCheck,gamemode=!creative] run function galaxy:recipe/hi-tech_crafting_table/component/requirement-remove/casing_gun_iron
execute if score @s galaxy.GUI.HTct.recipeSubject matches 2 as @a[tag=galaxy.request.HTct.craft,tag=galaxy.success.HTct.recipeRequirementCheck,gamemode=!creative] run function galaxy:component/give/casing_gun_iron
execute if score @s galaxy.GUI.HTct.recipeSubject matches 2 as @a[tag=galaxy.request.HTct.craft,gamemode=creative] run function galaxy:component/give/casing_gun_iron

execute if score @s galaxy.GUI.HTct.recipeSubject matches 3 as @a[tag=galaxy.request.HTct.craft,gamemode=!creative] run function galaxy:recipe/hi-tech_crafting_table/component/requirement-check/casing_gun_steel
execute if score @s galaxy.GUI.HTct.recipeSubject matches 3 as @a[tag=galaxy.request.HTct.craft,tag=galaxy.success.HTct.recipeRequirementCheck,gamemode=!creative] run function galaxy:recipe/hi-tech_crafting_table/component/requirement-remove/casing_gun_steel
execute if score @s galaxy.GUI.HTct.recipeSubject matches 3 as @a[tag=galaxy.request.HTct.craft,tag=galaxy.success.HTct.recipeRequirementCheck,gamemode=!creative] run function galaxy:component/give/casing_gun_steel
execute if score @s galaxy.GUI.HTct.recipeSubject matches 3 as @a[tag=galaxy.request.HTct.craft,gamemode=creative] run function galaxy:component/give/casing_gun_steel

execute if score @s galaxy.GUI.HTct.recipeSubject matches 4 as @a[tag=galaxy.request.HTct.craft,gamemode=!creative] run function galaxy:recipe/hi-tech_crafting_table/component/requirement-check/casing_gun_netherite
execute if score @s galaxy.GUI.HTct.recipeSubject matches 4 as @a[tag=galaxy.request.HTct.craft,tag=galaxy.success.HTct.recipeRequirementCheck,gamemode=!creative] run function galaxy:recipe/hi-tech_crafting_table/component/requirement-remove/casing_gun_netherite
execute if score @s galaxy.GUI.HTct.recipeSubject matches 4 as @a[tag=galaxy.request.HTct.craft,tag=galaxy.success.HTct.recipeRequirementCheck,gamemode=!creative] run function galaxy:component/give/casing_gun_netherite
execute if score @s galaxy.GUI.HTct.recipeSubject matches 4 as @a[tag=galaxy.request.HTct.craft,gamemode=creative] run function galaxy:component/give/casing_gun_netherite

# Laser core
execute if score @s galaxy.GUI.HTct.recipeSubject matches 5 as @a[tag=galaxy.request.HTct.craft,gamemode=!creative] run function galaxy:recipe/hi-tech_crafting_table/component/requirement-check/laser_core_t1
execute if score @s galaxy.GUI.HTct.recipeSubject matches 5 as @a[tag=galaxy.request.HTct.craft,tag=galaxy.success.HTct.recipeRequirementCheck,gamemode=!creative] run function galaxy:recipe/hi-tech_crafting_table/component/requirement-remove/laser_core_t1
execute if score @s galaxy.GUI.HTct.recipeSubject matches 5 as @a[tag=galaxy.request.HTct.craft,tag=galaxy.success.HTct.recipeRequirementCheck,gamemode=!creative] run function galaxy:component/give/laser_core_t1
execute if score @s galaxy.GUI.HTct.recipeSubject matches 5 as @a[tag=galaxy.request.HTct.craft,gamemode=creative] run function galaxy:component/give/laser_core_t1

execute if score @s galaxy.GUI.HTct.recipeSubject matches 6 as @a[tag=galaxy.request.HTct.craft,gamemode=!creative] run function galaxy:recipe/hi-tech_crafting_table/component/requirement-check/laser_core_t2
execute if score @s galaxy.GUI.HTct.recipeSubject matches 6 as @a[tag=galaxy.request.HTct.craft,tag=galaxy.success.HTct.recipeRequirementCheck,gamemode=!creative] run function galaxy:recipe/hi-tech_crafting_table/component/requirement-remove/laser_core_t2
execute if score @s galaxy.GUI.HTct.recipeSubject matches 6 as @a[tag=galaxy.request.HTct.craft,tag=galaxy.success.HTct.recipeRequirementCheck,gamemode=!creative] run function galaxy:component/give/laser_core_t2
execute if score @s galaxy.GUI.HTct.recipeSubject matches 6 as @a[tag=galaxy.request.HTct.craft,gamemode=creative] run function galaxy:component/give/laser_core_t2

execute if score @s galaxy.GUI.HTct.recipeSubject matches 7 as @a[tag=galaxy.request.HTct.craft,gamemode=!creative] run function galaxy:recipe/hi-tech_crafting_table/component/requirement-check/laser_core_t3
execute if score @s galaxy.GUI.HTct.recipeSubject matches 7 as @a[tag=galaxy.request.HTct.craft,tag=galaxy.success.HTct.recipeRequirementCheck,gamemode=!creative] run function galaxy:recipe/hi-tech_crafting_table/component/requirement-remove/laser_core_t3
execute if score @s galaxy.GUI.HTct.recipeSubject matches 7 as @a[tag=galaxy.request.HTct.craft,tag=galaxy.success.HTct.recipeRequirementCheck,gamemode=!creative] run function galaxy:component/give/laser_core_t3
execute if score @s galaxy.GUI.HTct.recipeSubject matches 7 as @a[tag=galaxy.request.HTct.craft,gamemode=creative] run function galaxy:component/give/laser_core_t3

# Cooling system
execute if score @s galaxy.GUI.HTct.recipeSubject matches 8 as @a[tag=galaxy.request.HTct.craft,gamemode=!creative] run function galaxy:recipe/hi-tech_crafting_table/component/requirement-check/cooling_system_t1
execute if score @s galaxy.GUI.HTct.recipeSubject matches 8 as @a[tag=galaxy.request.HTct.craft,tag=galaxy.success.HTct.recipeRequirementCheck,gamemode=!creative] run function galaxy:recipe/hi-tech_crafting_table/component/requirement-remove/cooling_system_t1
execute if score @s galaxy.GUI.HTct.recipeSubject matches 8 as @a[tag=galaxy.request.HTct.craft,tag=galaxy.success.HTct.recipeRequirementCheck,gamemode=!creative] run function galaxy:component/give/cooling_system_t1
execute if score @s galaxy.GUI.HTct.recipeSubject matches 8 as @a[tag=galaxy.request.HTct.craft,gamemode=creative] run function galaxy:component/give/cooling_system_t1

execute if score @s galaxy.GUI.HTct.recipeSubject matches 9 as @a[tag=galaxy.request.HTct.craft,gamemode=!creative] run function galaxy:recipe/hi-tech_crafting_table/component/requirement-check/cooling_system_t2
execute if score @s galaxy.GUI.HTct.recipeSubject matches 9 as @a[tag=galaxy.request.HTct.craft,tag=galaxy.success.HTct.recipeRequirementCheck,gamemode=!creative] run function galaxy:recipe/hi-tech_crafting_table/component/requirement-remove/cooling_system_t2
execute if score @s galaxy.GUI.HTct.recipeSubject matches 9 as @a[tag=galaxy.request.HTct.craft,tag=galaxy.success.HTct.recipeRequirementCheck,gamemode=!creative] run function galaxy:component/give/cooling_system_t2
execute if score @s galaxy.GUI.HTct.recipeSubject matches 9 as @a[tag=galaxy.request.HTct.craft,gamemode=creative] run function galaxy:component/give/cooling_system_t2

execute if score @s galaxy.GUI.HTct.recipeSubject matches 10 as @a[tag=galaxy.request.HTct.craft,gamemode=!creative] run function galaxy:recipe/hi-tech_crafting_table/component/requirement-check/cooling_system_t3
execute if score @s galaxy.GUI.HTct.recipeSubject matches 10 as @a[tag=galaxy.request.HTct.craft,tag=galaxy.success.HTct.recipeRequirementCheck,gamemode=!creative] run function galaxy:recipe/hi-tech_crafting_table/component/requirement-remove/cooling_system_t3
execute if score @s galaxy.GUI.HTct.recipeSubject matches 10 as @a[tag=galaxy.request.HTct.craft,tag=galaxy.success.HTct.recipeRequirementCheck,gamemode=!creative] run function galaxy:component/give/cooling_system_t3
execute if score @s galaxy.GUI.HTct.recipeSubject matches 10 as @a[tag=galaxy.request.HTct.craft,gamemode=creative] run function galaxy:component/give/cooling_system_t3

# Handle
execute if score @s galaxy.GUI.HTct.recipeSubject matches 11 as @a[tag=galaxy.request.HTct.craft,gamemode=!creative] run function galaxy:recipe/hi-tech_crafting_table/component/requirement-check/handle_gun_slime
execute if score @s galaxy.GUI.HTct.recipeSubject matches 11 as @a[tag=galaxy.request.HTct.craft,tag=galaxy.success.HTct.recipeRequirementCheck,gamemode=!creative] run function galaxy:recipe/hi-tech_crafting_table/component/requirement-remove/handle_gun_slime
execute if score @s galaxy.GUI.HTct.recipeSubject matches 11 as @a[tag=galaxy.request.HTct.craft,tag=galaxy.success.HTct.recipeRequirementCheck,gamemode=!creative] run function galaxy:component/give/handle_gun_slime
execute if score @s galaxy.GUI.HTct.recipeSubject matches 11 as @a[tag=galaxy.request.HTct.craft,gamemode=creative] run function galaxy:component/give/handle_gun_slime

execute if score @s galaxy.GUI.HTct.recipeSubject matches 12 as @a[tag=galaxy.request.HTct.craft,gamemode=!creative] run function galaxy:recipe/hi-tech_crafting_table/component/requirement-check/handle_gun_wood
execute if score @s galaxy.GUI.HTct.recipeSubject matches 12 as @a[tag=galaxy.request.HTct.craft,tag=galaxy.success.HTct.recipeRequirementCheck,gamemode=!creative] run function galaxy:recipe/hi-tech_crafting_table/component/requirement-remove/handle_gun_wood
execute if score @s galaxy.GUI.HTct.recipeSubject matches 12 as @a[tag=galaxy.request.HTct.craft,tag=galaxy.success.HTct.recipeRequirementCheck,gamemode=!creative] run function galaxy:component/give/handle_gun_wood
execute if score @s galaxy.GUI.HTct.recipeSubject matches 12 as @a[tag=galaxy.request.HTct.craft,gamemode=creative] run function galaxy:component/give/handle_gun_wood

execute if score @s galaxy.GUI.HTct.recipeSubject matches 13 as @a[tag=galaxy.request.HTct.craft,gamemode=!creative] run function galaxy:recipe/hi-tech_crafting_table/component/requirement-check/handle_gun_obsidian
execute if score @s galaxy.GUI.HTct.recipeSubject matches 13 as @a[tag=galaxy.request.HTct.craft,tag=galaxy.success.HTct.recipeRequirementCheck,gamemode=!creative] run function galaxy:recipe/hi-tech_crafting_table/component/requirement-remove/handle_gun_obsidian
execute if score @s galaxy.GUI.HTct.recipeSubject matches 13 as @a[tag=galaxy.request.HTct.craft,tag=galaxy.success.HTct.recipeRequirementCheck,gamemode=!creative] run function galaxy:component/give/handle_gun_obsidian
execute if score @s galaxy.GUI.HTct.recipeSubject matches 13 as @a[tag=galaxy.request.HTct.craft,gamemode=creative] run function galaxy:component/give/handle_gun_obsidian

# Barrel
execute if score @s galaxy.GUI.HTct.recipeSubject matches 14 as @a[tag=galaxy.request.HTct.craft,gamemode=!creative] run function galaxy:recipe/hi-tech_crafting_table/component/requirement-check/barrel_pure
execute if score @s galaxy.GUI.HTct.recipeSubject matches 14 as @a[tag=galaxy.request.HTct.craft,tag=galaxy.success.HTct.recipeRequirementCheck,gamemode=!creative] run function galaxy:recipe/hi-tech_crafting_table/component/requirement-remove/barrel_pure
execute if score @s galaxy.GUI.HTct.recipeSubject matches 14 as @a[tag=galaxy.request.HTct.craft,tag=galaxy.success.HTct.recipeRequirementCheck,gamemode=!creative] run function galaxy:component/give/barrel_pure
execute if score @s galaxy.GUI.HTct.recipeSubject matches 14 as @a[tag=galaxy.request.HTct.craft,gamemode=creative] run function galaxy:component/give/barrel_pure

execute if score @s galaxy.GUI.HTct.recipeSubject matches 15 as @a[tag=galaxy.request.HTct.craft,gamemode=!creative] run function galaxy:recipe/hi-tech_crafting_table/component/requirement-check/barrel_bounce
execute if score @s galaxy.GUI.HTct.recipeSubject matches 15 as @a[tag=galaxy.request.HTct.craft,tag=galaxy.success.HTct.recipeRequirementCheck,gamemode=!creative] run function galaxy:recipe/hi-tech_crafting_table/component/requirement-remove/barrel_bounce
execute if score @s galaxy.GUI.HTct.recipeSubject matches 15 as @a[tag=galaxy.request.HTct.craft,tag=galaxy.success.HTct.recipeRequirementCheck,gamemode=!creative] run function galaxy:component/give/barrel_bounce
execute if score @s galaxy.GUI.HTct.recipeSubject matches 15 as @a[tag=galaxy.request.HTct.craft,gamemode=creative] run function galaxy:component/give/barrel_bounce

execute if score @s galaxy.GUI.HTct.recipeSubject matches 16 as @a[tag=galaxy.request.HTct.craft,gamemode=!creative] run function galaxy:recipe/hi-tech_crafting_table/component/requirement-check/barrel_trace
execute if score @s galaxy.GUI.HTct.recipeSubject matches 16 as @a[tag=galaxy.request.HTct.craft,tag=galaxy.success.HTct.recipeRequirementCheck,gamemode=!creative] run function galaxy:recipe/hi-tech_crafting_table/component/requirement-remove/barrel_trace
execute if score @s galaxy.GUI.HTct.recipeSubject matches 16 as @a[tag=galaxy.request.HTct.craft,tag=galaxy.success.HTct.recipeRequirementCheck,gamemode=!creative] run function galaxy:component/give/barrel_trace
execute if score @s galaxy.GUI.HTct.recipeSubject matches 16 as @a[tag=galaxy.request.HTct.craft,gamemode=creative] run function galaxy:component/give/barrel_trace

execute if score @s galaxy.GUI.HTct.recipeSubject matches 17 as @a[tag=galaxy.request.HTct.craft,gamemode=!creative] run function galaxy:recipe/hi-tech_crafting_table/component/requirement-check/barrel_condenser
execute if score @s galaxy.GUI.HTct.recipeSubject matches 17 as @a[tag=galaxy.request.HTct.craft,tag=galaxy.success.HTct.recipeRequirementCheck,gamemode=!creative] run function galaxy:recipe/hi-tech_crafting_table/component/requirement-remove/barrel_condenser
execute if score @s galaxy.GUI.HTct.recipeSubject matches 17 as @a[tag=galaxy.request.HTct.craft,tag=galaxy.success.HTct.recipeRequirementCheck,gamemode=!creative] run function galaxy:component/give/barrel_condenser
execute if score @s galaxy.GUI.HTct.recipeSubject matches 17 as @a[tag=galaxy.request.HTct.craft,gamemode=creative] run function galaxy:component/give/barrel_condenser

execute if score @s galaxy.GUI.HTct.recipeSubject matches 18 as @a[tag=galaxy.request.HTct.craft,gamemode=!creative] run function galaxy:recipe/hi-tech_crafting_table/component/requirement-check/barrel_scatter
execute if score @s galaxy.GUI.HTct.recipeSubject matches 18 as @a[tag=galaxy.request.HTct.craft,tag=galaxy.success.HTct.recipeRequirementCheck,gamemode=!creative] run function galaxy:recipe/hi-tech_crafting_table/component/requirement-remove/barrel_scatter
execute if score @s galaxy.GUI.HTct.recipeSubject matches 18 as @a[tag=galaxy.request.HTct.craft,tag=galaxy.success.HTct.recipeRequirementCheck,gamemode=!creative] run function galaxy:component/give/barrel_scatter
execute if score @s galaxy.GUI.HTct.recipeSubject matches 18 as @a[tag=galaxy.request.HTct.craft,gamemode=creative] run function galaxy:component/give/barrel_scatter

# Sight
execute if score @s galaxy.GUI.HTct.recipeSubject matches 19 as @a[tag=galaxy.request.HTct.craft,gamemode=!creative] run function galaxy:recipe/hi-tech_crafting_table/component/requirement-check/sight_clear
execute if score @s galaxy.GUI.HTct.recipeSubject matches 19 as @a[tag=galaxy.request.HTct.craft,tag=galaxy.success.HTct.recipeRequirementCheck,gamemode=!creative] run function galaxy:recipe/hi-tech_crafting_table/component/requirement-remove/sight_clear
execute if score @s galaxy.GUI.HTct.recipeSubject matches 19 as @a[tag=galaxy.request.HTct.craft,tag=galaxy.success.HTct.recipeRequirementCheck,gamemode=!creative] run function galaxy:component/give/sight_clear
execute if score @s galaxy.GUI.HTct.recipeSubject matches 19 as @a[tag=galaxy.request.HTct.craft,gamemode=creative] run function galaxy:component/give/sight_clear

execute if score @s galaxy.GUI.HTct.recipeSubject matches 20 as @a[tag=galaxy.request.HTct.craft,gamemode=!creative] run function galaxy:recipe/hi-tech_crafting_table/component/requirement-check/sight_scope
execute if score @s galaxy.GUI.HTct.recipeSubject matches 20 as @a[tag=galaxy.request.HTct.craft,tag=galaxy.success.HTct.recipeRequirementCheck,gamemode=!creative] run function galaxy:recipe/hi-tech_crafting_table/component/requirement-remove/sight_scope
execute if score @s galaxy.GUI.HTct.recipeSubject matches 20 as @a[tag=galaxy.request.HTct.craft,tag=galaxy.success.HTct.recipeRequirementCheck,gamemode=!creative] run function galaxy:component/give/sight_scope
execute if score @s galaxy.GUI.HTct.recipeSubject matches 20 as @a[tag=galaxy.request.HTct.craft,gamemode=creative] run function galaxy:component/give/sight_scope

# Special
execute if score @s galaxy.GUI.HTct.recipeSubject matches 21 as @a[tag=galaxy.request.HTct.craft,gamemode=!creative] run function galaxy:recipe/hi-tech_crafting_table/component/requirement-check/special_dual
execute if score @s galaxy.GUI.HTct.recipeSubject matches 21 as @a[tag=galaxy.request.HTct.craft,tag=galaxy.success.HTct.recipeRequirementCheck,gamemode=!creative] run function galaxy:recipe/hi-tech_crafting_table/component/requirement-remove/special_dual
execute if score @s galaxy.GUI.HTct.recipeSubject matches 21 as @a[tag=galaxy.request.HTct.craft,tag=galaxy.success.HTct.recipeRequirementCheck,gamemode=!creative] run function galaxy:component/give/special_dual
execute if score @s galaxy.GUI.HTct.recipeSubject matches 21 as @a[tag=galaxy.request.HTct.craft,gamemode=creative] run function galaxy:component/give/special_dual

execute if score @s galaxy.GUI.HTct.recipeSubject matches 22 as @a[tag=galaxy.request.HTct.craft,gamemode=!creative] run function galaxy:recipe/hi-tech_crafting_table/component/requirement-check/special_flow
execute if score @s galaxy.GUI.HTct.recipeSubject matches 22 as @a[tag=galaxy.request.HTct.craft,tag=galaxy.success.HTct.recipeRequirementCheck,gamemode=!creative] run function galaxy:recipe/hi-tech_crafting_table/component/requirement-remove/special_flow
execute if score @s galaxy.GUI.HTct.recipeSubject matches 22 as @a[tag=galaxy.request.HTct.craft,tag=galaxy.success.HTct.recipeRequirementCheck,gamemode=!creative] run function galaxy:component/give/special_flow
execute if score @s galaxy.GUI.HTct.recipeSubject matches 22 as @a[tag=galaxy.request.HTct.craft,gamemode=creative] run function galaxy:component/give/special_flow

execute if score @s galaxy.GUI.HTct.recipeSubject matches 23 as @a[tag=galaxy.request.HTct.craft,gamemode=!creative] run function galaxy:recipe/hi-tech_crafting_table/component/requirement-check/special_sequence
execute if score @s galaxy.GUI.HTct.recipeSubject matches 23 as @a[tag=galaxy.request.HTct.craft,tag=galaxy.success.HTct.recipeRequirementCheck,gamemode=!creative] run function galaxy:recipe/hi-tech_crafting_table/component/requirement-remove/special_sequence
execute if score @s galaxy.GUI.HTct.recipeSubject matches 23 as @a[tag=galaxy.request.HTct.craft,tag=galaxy.success.HTct.recipeRequirementCheck,gamemode=!creative] run function galaxy:component/give/special_sequence
execute if score @s galaxy.GUI.HTct.recipeSubject matches 23 as @a[tag=galaxy.request.HTct.craft,gamemode=creative] run function galaxy:component/give/special_sequence

# Color lens
execute if score @s galaxy.GUI.HTct.recipeSubject matches 24 as @a[tag=galaxy.request.HTct.craft,gamemode=!creative] run function galaxy:recipe/hi-tech_crafting_table/component/requirement-check/color_lens_red
execute if score @s galaxy.GUI.HTct.recipeSubject matches 24 as @a[tag=galaxy.request.HTct.craft,tag=galaxy.success.HTct.recipeRequirementCheck,gamemode=!creative] run function galaxy:recipe/hi-tech_crafting_table/component/requirement-remove/color_lens_red
execute if score @s galaxy.GUI.HTct.recipeSubject matches 24 as @a[tag=galaxy.request.HTct.craft,tag=galaxy.success.HTct.recipeRequirementCheck,gamemode=!creative] run function galaxy:component/give/color_lens_red
execute if score @s galaxy.GUI.HTct.recipeSubject matches 24 as @a[tag=galaxy.request.HTct.craft,gamemode=creative] run function galaxy:component/give/color_lens_red

execute if score @s galaxy.GUI.HTct.recipeSubject matches 25 as @a[tag=galaxy.request.HTct.craft,gamemode=!creative] run function galaxy:recipe/hi-tech_crafting_table/component/requirement-check/color_lens_orange
execute if score @s galaxy.GUI.HTct.recipeSubject matches 25 as @a[tag=galaxy.request.HTct.craft,tag=galaxy.success.HTct.recipeRequirementCheck,gamemode=!creative] run function galaxy:recipe/hi-tech_crafting_table/component/requirement-remove/color_lens_orange
execute if score @s galaxy.GUI.HTct.recipeSubject matches 25 as @a[tag=galaxy.request.HTct.craft,tag=galaxy.success.HTct.recipeRequirementCheck,gamemode=!creative] run function galaxy:component/give/color_lens_orange
execute if score @s galaxy.GUI.HTct.recipeSubject matches 25 as @a[tag=galaxy.request.HTct.craft,gamemode=creative] run function galaxy:component/give/color_lens_orange

execute if score @s galaxy.GUI.HTct.recipeSubject matches 26 as @a[tag=galaxy.request.HTct.craft,gamemode=!creative] run function galaxy:recipe/hi-tech_crafting_table/component/requirement-check/color_lens_yellow
execute if score @s galaxy.GUI.HTct.recipeSubject matches 26 as @a[tag=galaxy.request.HTct.craft,tag=galaxy.success.HTct.recipeRequirementCheck,gamemode=!creative] run function galaxy:recipe/hi-tech_crafting_table/component/requirement-remove/color_lens_yellow
execute if score @s galaxy.GUI.HTct.recipeSubject matches 26 as @a[tag=galaxy.request.HTct.craft,tag=galaxy.success.HTct.recipeRequirementCheck,gamemode=!creative] run function galaxy:component/give/color_lens_yellow
execute if score @s galaxy.GUI.HTct.recipeSubject matches 26 as @a[tag=galaxy.request.HTct.craft,gamemode=creative] run function galaxy:component/give/color_lens_yellow

execute if score @s galaxy.GUI.HTct.recipeSubject matches 27 as @a[tag=galaxy.request.HTct.craft,gamemode=!creative] run function galaxy:recipe/hi-tech_crafting_table/component/requirement-check/color_lens_lime
execute if score @s galaxy.GUI.HTct.recipeSubject matches 27 as @a[tag=galaxy.request.HTct.craft,tag=galaxy.success.HTct.recipeRequirementCheck,gamemode=!creative] run function galaxy:recipe/hi-tech_crafting_table/component/requirement-remove/color_lens_lime
execute if score @s galaxy.GUI.HTct.recipeSubject matches 27 as @a[tag=galaxy.request.HTct.craft,tag=galaxy.success.HTct.recipeRequirementCheck,gamemode=!creative] run function galaxy:component/give/color_lens_lime
execute if score @s galaxy.GUI.HTct.recipeSubject matches 27 as @a[tag=galaxy.request.HTct.craft,gamemode=creative] run function galaxy:component/give/color_lens_lime

execute if score @s galaxy.GUI.HTct.recipeSubject matches 28 as @a[tag=galaxy.request.HTct.craft,gamemode=!creative] run function galaxy:recipe/hi-tech_crafting_table/component/requirement-check/color_lens_light_blue
execute if score @s galaxy.GUI.HTct.recipeSubject matches 28 as @a[tag=galaxy.request.HTct.craft,tag=galaxy.success.HTct.recipeRequirementCheck,gamemode=!creative] run function galaxy:recipe/hi-tech_crafting_table/component/requirement-remove/color_lens_light_blue
execute if score @s galaxy.GUI.HTct.recipeSubject matches 28 as @a[tag=galaxy.request.HTct.craft,tag=galaxy.success.HTct.recipeRequirementCheck,gamemode=!creative] run function galaxy:component/give/color_lens_light_blue
execute if score @s galaxy.GUI.HTct.recipeSubject matches 28 as @a[tag=galaxy.request.HTct.craft,gamemode=creative] run function galaxy:component/give/color_lens_light_blue

execute if score @s galaxy.GUI.HTct.recipeSubject matches 29 as @a[tag=galaxy.request.HTct.craft,gamemode=!creative] run function galaxy:recipe/hi-tech_crafting_table/component/requirement-check/color_lens_blue
execute if score @s galaxy.GUI.HTct.recipeSubject matches 29 as @a[tag=galaxy.request.HTct.craft,tag=galaxy.success.HTct.recipeRequirementCheck,gamemode=!creative] run function galaxy:recipe/hi-tech_crafting_table/component/requirement-remove/color_lens_blue
execute if score @s galaxy.GUI.HTct.recipeSubject matches 29 as @a[tag=galaxy.request.HTct.craft,tag=galaxy.success.HTct.recipeRequirementCheck,gamemode=!creative] run function galaxy:component/give/color_lens_blue
execute if score @s galaxy.GUI.HTct.recipeSubject matches 29 as @a[tag=galaxy.request.HTct.craft,gamemode=creative] run function galaxy:component/give/color_lens_blue

execute if score @s galaxy.GUI.HTct.recipeSubject matches 30 as @a[tag=galaxy.request.HTct.craft,gamemode=!creative] run function galaxy:recipe/hi-tech_crafting_table/component/requirement-check/color_lens_purple
execute if score @s galaxy.GUI.HTct.recipeSubject matches 30 as @a[tag=galaxy.request.HTct.craft,tag=galaxy.success.HTct.recipeRequirementCheck,gamemode=!creative] run function galaxy:recipe/hi-tech_crafting_table/component/requirement-remove/color_lens_purple
execute if score @s galaxy.GUI.HTct.recipeSubject matches 30 as @a[tag=galaxy.request.HTct.craft,tag=galaxy.success.HTct.recipeRequirementCheck,gamemode=!creative] run function galaxy:component/give/color_lens_purple
execute if score @s galaxy.GUI.HTct.recipeSubject matches 30 as @a[tag=galaxy.request.HTct.craft,gamemode=creative] run function galaxy:component/give/color_lens_purple

execute if score @s galaxy.GUI.HTct.recipeSubject matches 31 as @a[tag=galaxy.request.HTct.craft,gamemode=!creative] run function galaxy:recipe/hi-tech_crafting_table/component/requirement-check/color_lens_black
execute if score @s galaxy.GUI.HTct.recipeSubject matches 31 as @a[tag=galaxy.request.HTct.craft,tag=galaxy.success.HTct.recipeRequirementCheck,gamemode=!creative] run function galaxy:recipe/hi-tech_crafting_table/component/requirement-remove/color_lens_black
execute if score @s galaxy.GUI.HTct.recipeSubject matches 31 as @a[tag=galaxy.request.HTct.craft,tag=galaxy.success.HTct.recipeRequirementCheck,gamemode=!creative] run function galaxy:component/give/color_lens_black
execute if score @s galaxy.GUI.HTct.recipeSubject matches 31 as @a[tag=galaxy.request.HTct.craft,gamemode=creative] run function galaxy:component/give/color_lens_black

execute if score @s galaxy.GUI.HTct.recipeSubject matches 32 as @a[tag=galaxy.request.HTct.craft,gamemode=!creative] run function galaxy:recipe/hi-tech_crafting_table/component/requirement-check/color_lens_brown
execute if score @s galaxy.GUI.HTct.recipeSubject matches 32 as @a[tag=galaxy.request.HTct.craft,tag=galaxy.success.HTct.recipeRequirementCheck,gamemode=!creative] run function galaxy:recipe/hi-tech_crafting_table/component/requirement-remove/color_lens_brown
execute if score @s galaxy.GUI.HTct.recipeSubject matches 32 as @a[tag=galaxy.request.HTct.craft,tag=galaxy.success.HTct.recipeRequirementCheck,gamemode=!creative] run function galaxy:component/give/color_lens_brown
execute if score @s galaxy.GUI.HTct.recipeSubject matches 32 as @a[tag=galaxy.request.HTct.craft,gamemode=creative] run function galaxy:component/give/color_lens_brown

execute if score @s galaxy.GUI.HTct.recipeSubject matches 33 as @a[tag=galaxy.request.HTct.craft,gamemode=!creative] run function galaxy:recipe/hi-tech_crafting_table/component/requirement-check/color_lens_cyan
execute if score @s galaxy.GUI.HTct.recipeSubject matches 33 as @a[tag=galaxy.request.HTct.craft,tag=galaxy.success.HTct.recipeRequirementCheck,gamemode=!creative] run function galaxy:recipe/hi-tech_crafting_table/component/requirement-remove/color_lens_cyan
execute if score @s galaxy.GUI.HTct.recipeSubject matches 33 as @a[tag=galaxy.request.HTct.craft,tag=galaxy.success.HTct.recipeRequirementCheck,gamemode=!creative] run function galaxy:component/give/color_lens_cyan
execute if score @s galaxy.GUI.HTct.recipeSubject matches 33 as @a[tag=galaxy.request.HTct.craft,gamemode=creative] run function galaxy:component/give/color_lens_cyan

execute if score @s galaxy.GUI.HTct.recipeSubject matches 34 as @a[tag=galaxy.request.HTct.craft,gamemode=!creative] run function galaxy:recipe/hi-tech_crafting_table/component/requirement-check/color_lens_gray
execute if score @s galaxy.GUI.HTct.recipeSubject matches 34 as @a[tag=galaxy.request.HTct.craft,tag=galaxy.success.HTct.recipeRequirementCheck,gamemode=!creative] run function galaxy:recipe/hi-tech_crafting_table/component/requirement-remove/color_lens_gray
execute if score @s galaxy.GUI.HTct.recipeSubject matches 34 as @a[tag=galaxy.request.HTct.craft,tag=galaxy.success.HTct.recipeRequirementCheck,gamemode=!creative] run function galaxy:component/give/color_lens_gray
execute if score @s galaxy.GUI.HTct.recipeSubject matches 34 as @a[tag=galaxy.request.HTct.craft,gamemode=creative] run function galaxy:component/give/color_lens_gray

execute if score @s galaxy.GUI.HTct.recipeSubject matches 35 as @a[tag=galaxy.request.HTct.craft,gamemode=!creative] run function galaxy:recipe/hi-tech_crafting_table/component/requirement-check/color_lens_green
execute if score @s galaxy.GUI.HTct.recipeSubject matches 35 as @a[tag=galaxy.request.HTct.craft,tag=galaxy.success.HTct.recipeRequirementCheck,gamemode=!creative] run function galaxy:recipe/hi-tech_crafting_table/component/requirement-remove/color_lens_green
execute if score @s galaxy.GUI.HTct.recipeSubject matches 35 as @a[tag=galaxy.request.HTct.craft,tag=galaxy.success.HTct.recipeRequirementCheck,gamemode=!creative] run function galaxy:component/give/color_lens_green
execute if score @s galaxy.GUI.HTct.recipeSubject matches 35 as @a[tag=galaxy.request.HTct.craft,gamemode=creative] run function galaxy:component/give/color_lens_green

execute if score @s galaxy.GUI.HTct.recipeSubject matches 36 as @a[tag=galaxy.request.HTct.craft,gamemode=!creative] run function galaxy:recipe/hi-tech_crafting_table/component/requirement-check/color_lens_light_gray
execute if score @s galaxy.GUI.HTct.recipeSubject matches 36 as @a[tag=galaxy.request.HTct.craft,tag=galaxy.success.HTct.recipeRequirementCheck,gamemode=!creative] run function galaxy:recipe/hi-tech_crafting_table/component/requirement-remove/color_lens_light_gray
execute if score @s galaxy.GUI.HTct.recipeSubject matches 36 as @a[tag=galaxy.request.HTct.craft,tag=galaxy.success.HTct.recipeRequirementCheck,gamemode=!creative] run function galaxy:component/give/color_lens_light_gray
execute if score @s galaxy.GUI.HTct.recipeSubject matches 36 as @a[tag=galaxy.request.HTct.craft,gamemode=creative] run function galaxy:component/give/color_lens_light_gray

execute if score @s galaxy.GUI.HTct.recipeSubject matches 37 as @a[tag=galaxy.request.HTct.craft,gamemode=!creative] run function galaxy:recipe/hi-tech_crafting_table/component/requirement-check/color_lens_magenta
execute if score @s galaxy.GUI.HTct.recipeSubject matches 37 as @a[tag=galaxy.request.HTct.craft,tag=galaxy.success.HTct.recipeRequirementCheck,gamemode=!creative] run function galaxy:recipe/hi-tech_crafting_table/component/requirement-remove/color_lens_magenta
execute if score @s galaxy.GUI.HTct.recipeSubject matches 37 as @a[tag=galaxy.request.HTct.craft,tag=galaxy.success.HTct.recipeRequirementCheck,gamemode=!creative] run function galaxy:component/give/color_lens_magenta
execute if score @s galaxy.GUI.HTct.recipeSubject matches 37 as @a[tag=galaxy.request.HTct.craft,gamemode=creative] run function galaxy:component/give/color_lens_magenta

execute if score @s galaxy.GUI.HTct.recipeSubject matches 38 as @a[tag=galaxy.request.HTct.craft,gamemode=!creative] run function galaxy:recipe/hi-tech_crafting_table/component/requirement-check/color_lens_pink
execute if score @s galaxy.GUI.HTct.recipeSubject matches 38 as @a[tag=galaxy.request.HTct.craft,tag=galaxy.success.HTct.recipeRequirementCheck,gamemode=!creative] run function galaxy:recipe/hi-tech_crafting_table/component/requirement-remove/color_lens_pink
execute if score @s galaxy.GUI.HTct.recipeSubject matches 38 as @a[tag=galaxy.request.HTct.craft,tag=galaxy.success.HTct.recipeRequirementCheck,gamemode=!creative] run function galaxy:component/give/color_lens_pink
execute if score @s galaxy.GUI.HTct.recipeSubject matches 38 as @a[tag=galaxy.request.HTct.craft,gamemode=creative] run function galaxy:component/give/color_lens_pink

execute if score @s galaxy.GUI.HTct.recipeSubject matches 39 as @a[tag=galaxy.request.HTct.craft,gamemode=!creative] run function galaxy:recipe/hi-tech_crafting_table/component/requirement-check/color_lens_white
execute if score @s galaxy.GUI.HTct.recipeSubject matches 39 as @a[tag=galaxy.request.HTct.craft,tag=galaxy.success.HTct.recipeRequirementCheck,gamemode=!creative] run function galaxy:recipe/hi-tech_crafting_table/component/requirement-remove/color_lens_white
execute if score @s galaxy.GUI.HTct.recipeSubject matches 39 as @a[tag=galaxy.request.HTct.craft,tag=galaxy.success.HTct.recipeRequirementCheck,gamemode=!creative] run function galaxy:component/give/color_lens_white
execute if score @s galaxy.GUI.HTct.recipeSubject matches 39 as @a[tag=galaxy.request.HTct.craft,gamemode=creative] run function galaxy:component/give/color_lens_white

execute if score @s galaxy.GUI.HTct.recipeSubject matches 40 as @a[tag=galaxy.request.HTct.craft,gamemode=!creative] run function galaxy:recipe/hi-tech_crafting_table/component/requirement-check/color_lens_rainbow
execute if score @s galaxy.GUI.HTct.recipeSubject matches 40 as @a[tag=galaxy.request.HTct.craft,tag=galaxy.success.HTct.recipeRequirementCheck,gamemode=!creative] run function galaxy:recipe/hi-tech_crafting_table/component/requirement-remove/color_lens_rainbow
execute if score @s galaxy.GUI.HTct.recipeSubject matches 40 as @a[tag=galaxy.request.HTct.craft,tag=galaxy.success.HTct.recipeRequirementCheck,gamemode=!creative] run function galaxy:component/give/color_lens_rainbow
execute if score @s galaxy.GUI.HTct.recipeSubject matches 40 as @a[tag=galaxy.request.HTct.craft,gamemode=creative] run function galaxy:component/give/color_lens_rainbow

tag @a[tag=galaxy.request.HTct.craft] remove galaxy.success.HTct.recipeRequirementCheck
