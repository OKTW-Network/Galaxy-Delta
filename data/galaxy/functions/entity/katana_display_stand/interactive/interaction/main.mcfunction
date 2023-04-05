data modify storage cu:entity find_uuid.input append from entity @s data.galaxy.katana_display_stand.display.item_1
function cu:entity/find_uuid/main
tag @e[tag=cu._tag.entity.find_uuid.elect] add galaxy._tag.katana_display_stand.ThisDisplayItem1
execute if score @s galaxy.entity.katana_display_stand.type matches 1 run data modify storage cu:entity find_uuid.input append from entity @s data.galaxy.katana_display_stand.display.item_2
execute if score @s galaxy.entity.katana_display_stand.type matches 1 run function cu:entity/find_uuid/main
execute if score @s galaxy.entity.katana_display_stand.type matches 1 run tag @e[tag=cu._tag.entity.find_uuid.elect] add galaxy._tag.katana_display_stand.ThisDisplayItem2

scoreboard players set #entity.katana_display_stand.operation galaxy -1
execute if entity @a[tag=galaxy._tag.ThisPlayer,predicate=minecraft:entity_properties/mob/hand_main-empty] run scoreboard players set #entity.katana_display_stand.operation galaxy 0
execute if entity @a[tag=galaxy._tag.ThisPlayer,predicate=galaxy:entity/katana_display_stand/hand_main-displayable] run scoreboard players set #entity.katana_display_stand.operation galaxy 1
execute if score #entity.katana_display_stand.operation galaxy matches 1 if entity @s[tag=galaxy._tag.katana_display_stand.displaying] run scoreboard players set #entity.katana_display_stand.operation galaxy 2
execute if entity @a[tag=galaxy._tag.ThisPlayer,predicate=galaxy:tool/hand_main-wrench,predicate=minecraft:entity_properties/sneaking] run scoreboard players set #entity.katana_display_stand.operation galaxy 3
execute if entity @a[tag=galaxy._tag.ThisPlayer,predicate=galaxy:tool/hand_main-crowbar,predicate=minecraft:entity_properties/sneaking] run scoreboard players set #entity.katana_display_stand.operation galaxy 4

execute if score #entity.katana_display_stand.operation galaxy matches 0 run function galaxy:entity/katana_display_stand/interactive/interaction/take_display
execute if score #entity.katana_display_stand.operation galaxy matches 1 run function galaxy:entity/katana_display_stand/interactive/interaction/set_display
execute if score #entity.katana_display_stand.operation galaxy matches 2 run function galaxy:entity/katana_display_stand/interactive/interaction/replace_display
execute if score #entity.katana_display_stand.operation galaxy matches 3 run function galaxy:entity/katana_display_stand/interactive/interaction/toggle_style_state
execute if score #entity.katana_display_stand.operation galaxy matches 4 run function galaxy:entity/katana_display_stand/destruct

tag @e[tag=galaxy._tag.katana_display_stand.ThisDisplayItem1] remove galaxy._tag.katana_display_stand.ThisDisplayItem1
tag @e[tag=galaxy._tag.katana_display_stand.ThisDisplayItem2] remove galaxy._tag.katana_display_stand.ThisDisplayItem2

tag @s remove galaxy._task.entity.interacted
