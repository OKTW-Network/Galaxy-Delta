execute if entity @s[predicate=galaxy:entity/katana_display_stand/hand_main-displayable] run function galaxy:entity/katana_display_stand/interactive/build_display
execute if entity @s[tag=galaxy._tag.katana_display_stand.displaying,predicate=minecraft:entity_properties/mob/hand_main-empty] run function galaxy:entity/katana_display_stand/interactive/remove_display

tag @s[predicate=!minecraft:entity_properties/mob/hand_main-empty,predicate=!galaxy:entity/katana_display_stand/hand_main-katana_display,predicate=!galaxy:tool/hand_main-wrench,predicate=!galaxy:tool/hand_main-crowbar] add galaxy._task.katana_display_stand.misplaced
execute if entity @s[tag=galaxy._task.katana_display_stand.misplaced] run function galaxy:entity/katana_display_stand/interactive/remove_display
execute if entity @s[tag=galaxy._task.katana_display_stand.misplaced] run function galaxy:entity/return/hand_main
tag @s[tag=galaxy._task.katana_display_stand.misplaced] remove galaxy._task.katana_display_stand.misplaced

execute if entity @s[tag=galaxy._task.katana_display_stand.rebuildDisplay] run function galaxy:entity/katana_display_stand/interactive/build_display
tag @s[tag=galaxy._task.katana_display_stand.rebuildDisplay] remove galaxy._task.katana_display_stand.rebuildDisplay

execute as @a run function galaxy:recipe/convertible
