# display
function galaxy:entity/katana_display_stand/check-display
execute if entity @s[tag=setDisplay] run function galaxy:entity/katana_display_stand/build-display
execute if entity @s[tag=removeDisplay] run function galaxy:entity/katana_display_stand/remove-display
tag @s[tag=setDisplay] remove setDisplay
tag @s[tag=removeDisplay] remove removeDisplay

# return item
execute if entity @s[predicate=!minecraft:hand_main-empty,predicate=!galaxy:armor_stand/hand_main-katana_display,predicate=!galaxy:tool/hand_main-wrench,predicate=!galaxy:tool/hand_main-crowbar] run tag @s add returnItem
execute if entity @s[tag=returnItem] run data modify storage cu:give item set from entity @s HandItems[0]
execute if entity @s[tag=returnItem] run item replace entity @s weapon.mainhand with minecraft:air
execute if entity @s[tag=returnItem] as @a[tag=ThisPlayer,gamemode=!creative] run function cu:give/main
tag @s[tag=returnItem] remove returnItem

# wrench
execute if entity @s[tag=wrenchKatanaDisplayStandStatus] run function galaxy:entity/katana_display_stand/change_status
execute if entity @s[tag=wrenchKatanaDisplayStandRebuild] run function galaxy:entity/katana_display_stand/build-display

# crowbar
execute if entity @s[tag=crowbarKatanaDisplayStandDestruct] run function galaxy:entity/katana_display_stand/destruct
execute if entity @s[tag=crowbarKatanaDisplayStandRebuild] run function galaxy:entity/katana_display_stand/build-display
