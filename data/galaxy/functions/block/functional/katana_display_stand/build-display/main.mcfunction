replaceitem entity @s weapon.offhand air
execute if entity @s[predicate=galaxy:weapon/hand_main-katana] run scoreboard players set @s holdKatana 101
execute if entity @s[predicate=galaxy:weapon/hand_main-katana_edge] run scoreboard players set @s holdKatana 102
execute if entity @s[predicate=galaxy:weapon/hand_main-katana_scabbard] run scoreboard players set @s holdKatana 103
execute store result score @s styleKatana run data get entity @s HandItems[0].tag.type
execute if entity @s[tag=type-1] run function galaxy:block/functional/katana_display_stand/type-1
execute if entity @s[tag=type-2] run function galaxy:block/functional/katana_display_stand/type-2
execute if entity @s[tag=type-3] run function galaxy:block/functional/katana_display_stand/type-3
execute if entity @s[tag=type-4] run function galaxy:block/functional/katana_display_stand/type-4
tag @s[tag=!displaying] add displaying
function galaxy:weapon/katana/replace-hand_main/conversion-display
