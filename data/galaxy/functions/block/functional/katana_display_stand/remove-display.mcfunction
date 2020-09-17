execute if entity @s[predicate=!minecraft:hand_off-empty] run function galaxy:block/functional/katana_display_stand/clean_up-off_hand
tag @s[tag=displaying] remove displaying
function galaxy:weapon/katana/replace-hand_main/conversion-display
