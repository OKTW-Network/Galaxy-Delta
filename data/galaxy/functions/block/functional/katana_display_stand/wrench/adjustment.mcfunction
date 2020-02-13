scoreboard players add @s statusBlockDisp 1
execute if score @s statusBlockDisp matches 5 run scoreboard players set @s statusBlockDisp 1
execute if entity @s[tag=type-1] run function galaxy:block/functional/katana_display_stand/type-1
execute if entity @s[tag=type-2] run function galaxy:block/functional/katana_display_stand/type-2
execute if entity @s[tag=type-3] run function galaxy:block/functional/katana_display_stand/type-3
execute if entity @s[tag=type-4] run function galaxy:block/functional/katana_display_stand/type-4
tag @s remove adjustment
