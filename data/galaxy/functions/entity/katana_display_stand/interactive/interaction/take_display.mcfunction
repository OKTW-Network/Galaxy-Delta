data modify storage cu:item replaceitem.input set from entity @s data.galaxy.katana_display_stand.item
execute as @a[tag=galaxy._tag.ThisPlayer] run function cu:item/replaceitem/main_hand
data remove entity @s data.galaxy.katana_display_stand.item
data remove entity @e[tag=galaxy._tag.katana_display_stand.ThisDisplayItem1,limit=1] item
execute if score @s galaxy.entity.katana_display_stand.type matches 1 run data remove entity @e[tag=galaxy._tag.katana_display_stand.ThisDisplayItem2,limit=1] item

tag @s remove galaxy._tag.katana_display_stand.displaying
