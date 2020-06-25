function galaxy:weapon/katana/replace-hand_main/conversion-display
execute if entity @s[tag=type-1] run function galaxy:block/functional/summon/katana_display_stand-1
execute if entity @s[tag=type-2] run function galaxy:block/functional/summon/katana_display_stand-2
execute if entity @s[tag=type-3] run function galaxy:block/functional/summon/katana_display_stand-3
execute if entity @s[tag=type-4] run function galaxy:block/functional/summon/katana_display_stand-4
kill @s
