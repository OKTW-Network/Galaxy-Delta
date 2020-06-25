# init
scoreboard players set @s[tag=init] holdKatana 100
scoreboard players set @s[tag=init] statusBlockDisp 1
tag @s[tag=init] remove init

# display
function galaxy:block/functional/katana_display_stand/check-display
execute if entity @s[tag=setDisplay] run function galaxy:block/functional/katana_display_stand/build-display/main
execute if entity @s[tag=removeOffHand] run function galaxy:block/functional/katana_display_stand/clean_up-off_hand
tag @s[tag=setDisplay] remove setDisplay
tag @s[tag=removeOffHand] remove removeOffHand

# throw out non-katana items
execute if entity @s[predicate=!minecraft:hand_main-empty,predicate=!galaxy:armor_stand/hand_main-katana_display,predicate=!galaxy:tool/hand_main-wrench] run tag @s add throw
execute if entity @s[tag=throw] run function galaxy:block/functional/katana_display_stand/throw
tag @s[tag=throw] remove throw

# wrench
execute if entity @s[predicate=!minecraft:hand_main-empty,predicate=galaxy:tool/hand_main-wrench] run function galaxy:tool/wrench
execute if entity @s[tag=adjustment,tag=displaying] run function galaxy:block/functional/katana_display_stand/wrench/adjustment
execute if entity @s[tag=dismantle] run function galaxy:block/functional/katana_display_stand/wrench/dismantle
