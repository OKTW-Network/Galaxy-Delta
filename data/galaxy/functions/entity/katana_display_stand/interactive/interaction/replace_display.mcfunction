data modify storage galaxy:temp +entity.katana_display_stand.replace_display.item set from entity @s data.galaxy.katana_display_stand.item
data modify entity @s data.galaxy.katana_display_stand.item set from entity @a[tag=galaxy._tag.ThisPlayer,limit=1] SelectedItem
function galaxy:entity/katana_display_stand/interactive/interaction/build_display

data modify storage cu:item replaceitem.input set from storage galaxy:temp +entity.katana_display_stand.replace_display.item
execute as @a[tag=galaxy._tag.ThisPlayer] run function cu:item/replaceitem/main_hand

data remove storage galaxy:temp +entity.katana_display_stand.replace_display.item
