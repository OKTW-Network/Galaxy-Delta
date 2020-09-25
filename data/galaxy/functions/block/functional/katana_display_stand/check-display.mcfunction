execute if data entity @s HandItems[0].tag.katana unless data entity @s HandItems[0].tag.katanaDisplay run tag @s add setDisplay
execute if data entity @s HandItems[0].tag.scabbard unless data entity @s HandItems[0].tag.katanaDisplay run tag @s add setDisplay
execute if data entity @s HandItems[0].tag.edge unless data entity @s HandItems[0].tag.katanaDisplay run tag @s add setDisplay

execute if entity @s[tag=displaying,predicate=minecraft:hand_main-empty] run tag @s add removeDisplay
execute if entity @s[tag=displaying,predicate=!minecraft:hand_main-empty,predicate=!galaxy:armor_stand/hand_main-katana_display,predicate=!galaxy:tool/hand_main-wrench] run tag @s add removeDisplay
