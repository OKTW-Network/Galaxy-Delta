# display
execute if data entity @s HandItems[0].tag.katana unless data entity @s HandItems[0].tag.katanaDisplay run tag @s add setDisplay
execute if data entity @s HandItems[0].tag.scabbard unless data entity @s HandItems[0].tag.katanaDisplay run tag @s add setDisplay
execute if data entity @s HandItems[0].tag.edge unless data entity @s HandItems[0].tag.katanaDisplay run tag @s add setDisplay

execute if entity @s[tag=setDisplay] run replaceitem entity @s weapon.offhand air

execute if entity @s[tag=type-1,tag=setDisplay] run function galaxy:block/functional/katana_showcase/type-1
execute if entity @s[tag=type-2,tag=setDisplay] run function galaxy:block/functional/katana_showcase/type-2

execute if entity @s[tag=setDisplay,tag=!displaying] run tag @s add displaying
execute if entity @s[tag=setDisplay] run function galaxy:weapon/katana/replace-hand_main/item_conversion-display

execute if entity @s[tag=setDisplay] run tag @s remove setDisplay

# if main-hand empty
execute if entity @s[tag=displaying,predicate=!galaxy:hand_main-not_empty,predicate=galaxy:hand_off-not_empty] run replaceitem entity @s weapon.offhand air
execute if entity @s[tag=displaying,predicate=!galaxy:hand_main-not_empty] run function galaxy:weapon/katana/replace-hand_main/item_conversion-display
execute if entity @s[tag=displaying,predicate=!galaxy:hand_main-not_empty] run tag @s remove displaying


# throw out non-katana items
execute if entity @s[predicate=galaxy:hand_main-not_empty,predicate=!galaxy:armor_stand/hand_main-katana_display,predicate=!galaxy:tool/hand_main-wrench] run tag @s add throw
execute if entity @s[tag=throw] run summon minecraft:item ~ ~ ~ {Tags:["throwItem"],PickupDelay:10s,Item:{id:"minecraft:stone",Count:1b}}
execute if entity @s[tag=throw] run data modify entity @e[tag=throwItem,limit=1] Item set from entity @s HandItems[0]
execute if entity @s[tag=throw] run replaceitem entity @s weapon.mainhand air
execute if entity @s[tag=throw] run tag @e[tag=throwItem] remove throwItem
execute if entity @s[tag=throw] run tag @s remove throw


# remove
execute if entity @s[predicate=galaxy:hand_main-not_empty,predicate=galaxy:tool/hand_main-wrench] run tag @s add remove
execute if entity @s[tag=remove] run function galaxy:weapon/katana/replace-hand_main/item_conversion-display
execute if entity @s[tag=remove] run function galaxy:tool/wrench
execute if entity @s[tag=type-1,tag=remove] run function galaxy:block/functional/summon/katana_showcase-1
execute if entity @s[tag=type-2,tag=remove] run function galaxy:block/functional/summon/katana_showcase-2
execute if entity @s[tag=remove] run kill @s
