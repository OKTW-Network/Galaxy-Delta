execute if entity @s[tag=displaying] run function galaxy:entity/katana_display_stand/convert-player

replaceitem entity @s weapon.offhand air

execute if predicate galaxy:tool/hand_main-wrench run function galaxy:entity/katana_display_stand/convert_from-display

execute store result score @s kdsDisplayType run data get entity @s HandItems[0].tag.katana.type
execute store result score @s kdsDisplayStyle run data get entity @s HandItems[0].tag.katana.style
execute store result score @s kdsDisplayModel run data get entity @s HandItems[0].tag.CustomModelData

data modify entity @s HandItems[0].tag.katanaDisplay set value 1b

function galaxy:entity/katana_display_stand/convert_to-display

tag @s[tag=!displaying] add displaying
