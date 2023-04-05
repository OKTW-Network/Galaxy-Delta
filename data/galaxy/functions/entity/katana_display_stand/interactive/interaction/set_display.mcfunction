data modify entity @s data.galaxy.katana_display_stand.item set from entity @a[tag=galaxy._tag.ThisPlayer,limit=1] SelectedItem
function galaxy:entity/katana_display_stand/interactive/interaction/build_display

tag @s add galaxy._tag.katana_display_stand.displaying
