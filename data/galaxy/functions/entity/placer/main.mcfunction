execute if entity @s[tag=galaxy.katana_display_stand,tag=type-1] run function galaxy:entity/placer/katana_display_stand-1
execute if entity @s[tag=galaxy.katana_display_stand,tag=type-2] run function galaxy:entity/placer/katana_display_stand-2
execute if entity @s[tag=galaxy.katana_display_stand,tag=type-3] run function galaxy:entity/placer/katana_display_stand-3
execute if entity @s[tag=galaxy.empower_lens] run function galaxy:entity/placer/empower_lens

kill @e[tag=galaxy._tag.ThisEntityPlacer]
