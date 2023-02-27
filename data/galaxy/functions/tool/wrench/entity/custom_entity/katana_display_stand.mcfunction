scoreboard players set #1 calcu_temp 0
execute store success score #1 calcu_temp if entity @a[tag=galaxy._tag.ThisWrenchUser,predicate=minecraft:entity_properties/sneaking] run tag @s[tag=galaxy._tag.katana_display_stand.displaying] add galaxy._task.katana_display_stand.states.style
execute store success score #1 calcu_temp if entity @a[tag=galaxy._tag.ThisWrenchUser,predicate=!minecraft:entity_properties/sneaking] run tag @s[tag=galaxy._tag.katana_display_stand.displaying] add galaxy._task.katana_display_stand.rebuildDisplay

execute if score #1 calcu_temp matches 1.. run function galaxy:entity/katana_display_stand/main
