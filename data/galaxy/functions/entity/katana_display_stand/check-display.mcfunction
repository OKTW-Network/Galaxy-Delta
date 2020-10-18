execute if entity @s[predicate=galaxy:weapon/hold-katana,predicate=!galaxy:armor_stand/hand_main-katana_display] run tag @s add setDisplay

execute if entity @s[tag=displaying,predicate=minecraft:hand_main-empty] run tag @s add removeDisplay
execute if entity @s[tag=displaying,tag=!setDisplay,predicate=!minecraft:hand_main-empty,predicate=!galaxy:armor_stand/hand_main-katana_display,predicate=!galaxy:tool/hand_main-wrench] run tag @s add removeDisplay
