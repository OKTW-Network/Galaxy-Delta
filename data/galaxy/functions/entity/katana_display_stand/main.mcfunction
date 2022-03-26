# display
function galaxy:entity/katana_display_stand/check-display
execute if entity @s[tag=setDisplay] run function galaxy:entity/katana_display_stand/build-display
execute if entity @s[tag=removeDisplay] run function galaxy:entity/katana_display_stand/remove-display
tag @s[tag=setDisplay] remove setDisplay
tag @s[tag=removeDisplay] remove removeDisplay

# return item
execute if entity @s[predicate=!minecraft:hand_main-empty,predicate=!galaxy:armor_stand/hand_main-katana_display,predicate=!galaxy:tool/hand_main-wrench,predicate=!galaxy:tool/hand_main-crowbar] run tag @s add returnItem
execute if entity @s[tag=returnItem] run data modify storage cu:item input set from entity @s HandItems[0]
execute if entity @s[tag=returnItem] run item replace entity @s weapon.mainhand with minecraft:air
execute if entity @s[tag=returnItem] run data modify storage cu:item owner set from entity @a[tag=galaxy._tag.ThisPlayer,gamemode=!creative,limit=1]
execute if entity @s[tag=returnItem] as @a[tag=galaxy._tag.ThisPlayer,gamemode=!creative] run function cu:item/give
tag @s[tag=returnItem] remove returnItem

# wrench
execute if entity @s[tag=galaxy._tag.wrenchKatanaDisplayStandStatus] run function galaxy:entity/katana_display_stand/change_status
execute if entity @s[tag=galaxy._tag.wrenchKatanaDisplayStandRebuild] run function galaxy:entity/katana_display_stand/build-display

# crowbar
execute if entity @s[tag=galaxy._tag.crowbarKatanaDisplayStandDestruct] run function galaxy:entity/katana_display_stand/destruct
execute if entity @s[tag=galaxy._tag.crowbarKatanaDisplayStandRebuild] run function galaxy:entity/katana_display_stand/build-display
