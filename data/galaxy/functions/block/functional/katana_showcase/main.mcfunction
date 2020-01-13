# init
execute as @s[tag=init] run scoreboard players set @s holdKatana 100
execute as @s[tag=init] run scoreboard players set @s statusBlockDisp 1
execute as @s[tag=init] run tag @s remove init


# display
execute if data entity @s HandItems[0].tag.katana unless data entity @s HandItems[0].tag.katanaDisplay run tag @s add setDisplay
execute if data entity @s HandItems[0].tag.scabbard unless data entity @s HandItems[0].tag.katanaDisplay run tag @s add setDisplay
execute if data entity @s HandItems[0].tag.edge unless data entity @s HandItems[0].tag.katanaDisplay run tag @s add setDisplay

execute if entity @s[tag=setDisplay] run replaceitem entity @s weapon.offhand air

execute if entity @s[tag=setDisplay,predicate=galaxy:weapon/hand_main-katana] run scoreboard players set @s holdKatana 101
execute if entity @s[tag=setDisplay,predicate=galaxy:weapon/hand_main-katana_edge] run scoreboard players set @s holdKatana 102
execute if entity @s[tag=setDisplay,predicate=galaxy:weapon/hand_main-katana_scabbard] run scoreboard players set @s holdKatana 103
execute if entity @s[tag=setDisplay] store result score @s styleKatana run data get entity @s HandItems[0].tag.type

execute if entity @s[tag=setDisplay,tag=type-1] run function galaxy:block/functional/katana_showcase/type-1
execute if entity @s[tag=setDisplay,tag=type-2] run function galaxy:block/functional/katana_showcase/type-2

execute if entity @s[tag=setDisplay,tag=!displaying] run tag @s add displaying
execute if entity @s[tag=setDisplay] run function galaxy:weapon/katana/replace-hand_main/item_conversion-display

execute if entity @s[tag=setDisplay] run tag @s remove setDisplay

# if main-hand empty
execute if entity @s[tag=displaying,predicate=!galaxy:hand_main-not_empty,predicate=galaxy:hand_off-not_empty] run replaceitem entity @s weapon.offhand air
execute if entity @s[tag=displaying,predicate=!galaxy:hand_main-not_empty] run scoreboard players set @s holdKatana 100
execute if entity @s[tag=displaying,predicate=!galaxy:hand_main-not_empty] run scoreboard players set @s styleKatana 0
execute if entity @s[tag=displaying,predicate=!galaxy:hand_main-not_empty] run function galaxy:weapon/katana/replace-hand_main/item_conversion-display
execute if entity @s[tag=displaying,predicate=!galaxy:hand_main-not_empty] run tag @s remove displaying


# throw out non-katana items
execute if entity @s[predicate=galaxy:hand_main-not_empty,predicate=!galaxy:armor_stand/hand_main-katana_display,predicate=!galaxy:tool/hand_main-wrench] run tag @s add throw
execute if entity @s[tag=throw] run summon minecraft:item ~ ~ ~ {Tags:["throwItem"],PickupDelay:10s,Item:{id:"minecraft:stone",Count:1b}}
execute if entity @s[tag=throw] run data modify entity @e[tag=throwItem,limit=1] Item set from entity @s HandItems[0]
execute if entity @s[tag=throw] run replaceitem entity @s weapon.mainhand air
execute if entity @s[tag=throw] run tag @e[tag=throwItem] remove throwItem
execute if entity @s[tag=throw] run tag @s remove throw


# wrench
execute if entity @s[predicate=galaxy:hand_main-not_empty,predicate=galaxy:tool/hand_main-wrench] run function galaxy:tool/wrench

execute if entity @s[tag=adjustment,tag=displaying] run scoreboard players add @s statusBlockDisp 1
execute if entity @s[tag=adjustment,tag=displaying] if score @s statusBlockDisp matches 5 run scoreboard players set @s statusBlockDisp 1
execute if entity @s[tag=adjustment,tag=displaying,tag=type-1] run function galaxy:block/functional/katana_showcase/type-1
execute if entity @s[tag=adjustment,tag=displaying,tag=type-2] run function galaxy:block/functional/katana_showcase/type-2
execute if entity @s[tag=adjustment,tag=displaying] run tag @s remove adjustment

execute if entity @s[tag=remove] run function galaxy:weapon/katana/replace-hand_main/item_conversion-display
execute if entity @s[tag=remove,tag=type-1] run function galaxy:block/functional/summon/katana_showcase-1
execute if entity @s[tag=remove,tag=type-2] run function galaxy:block/functional/summon/katana_showcase-2
execute if entity @s[tag=remove] run kill @s
