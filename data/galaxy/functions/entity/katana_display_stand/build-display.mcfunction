execute if entity @s[tag=displaying] run function galaxy:entity/katana_display_stand/convert-player

item replace entity @s weapon.offhand with air

execute if predicate galaxy:tool/hand_main-wrench run function galaxy:entity/katana_display_stand/convert_from-display
execute if predicate galaxy:tool/hand_main-crowbar run function galaxy:entity/katana_display_stand/convert_from-display

data modify entity @s ArmorItems[3].tag.CustomData.galaxy.data.katanaTag set from entity @s HandItems[0].tag.CustomData.galaxy.tag
data modify entity @s ArmorItems[3].tag.CustomData.galaxy.data.katanaDisplay set from entity @s HandItems[0].tag.display
data modify entity @s ArmorItems[3].tag.CustomData.galaxy.data.katanaCustomModelData set from entity @s HandItems[0].tag.CustomModelData

data modify entity @s HandItems[0].tag.katanaDisplay set value 1b

function galaxy:entity/katana_display_stand/convert_to-display

tag @s[tag=!displaying] add displaying
