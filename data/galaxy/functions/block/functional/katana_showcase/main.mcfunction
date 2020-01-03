# display
execute if data entity @s HandItems[0].tag.katana unless data entity @s HandItems[0].tag.katanaDisplay run tag @s add setDisplay
execute if data entity @s HandItems[0].tag.scabbard unless data entity @s HandItems[0].tag.katanaDisplay run tag @s add setDisplay
execute if data entity @s HandItems[0].tag.edge unless data entity @s HandItems[0].tag.katanaDisplay run tag @s add setDisplay

execute if entity @s[tag=setDisplay] run replaceitem entity @s weapon.offhand air

execute if entity @s[tag=type-1,tag=setDisplay] run function galaxy:block/functional/katana_showcase/type-1
execute if entity @s[tag=type-2,tag=setDisplay] run function galaxy:block/functional/katana_showcase/type-2

execute if entity @s[tag=setDisplay,tag=!displaying] run tag @s add displaying
execute if entity @s[tag=setDisplay] run function galaxy:weapon/katana/replace_main-hand/display_item_conversion

execute if entity @s[tag=setDisplay] run tag @s remove setDisplay


# if main-hand empty
execute unless data entity @s HandItems[0].Count if data entity @s HandItems[1].Count run replaceitem entity @s weapon.offhand air
execute unless data entity @s HandItems[0].Count if entity @s[tag=displaying] run function galaxy:weapon/katana/replace_main-hand/display_item_conversion
execute unless data entity @s HandItems[0].Count if entity @s[tag=displaying] run tag @s remove displaying


# remove
execute if data entity @s HandItems[0].Count if data entity @s HandItems[0].tag.wrench run tag @s add remove
execute if entity @s[tag=remove] run function galaxy:tool/wrench
execute if entity @s[tag=type-1,tag=remove] run function galaxy:block/functional/summon/katana_showcase-1
execute if entity @s[tag=type-2,tag=remove] run function galaxy:block/functional/summon/katana_showcase-2
execute if entity @s[tag=remove] run kill @s


# throw out non-katana items
execute if data entity @s HandItems[0].Count unless data entity @s HandItems[0].tag.katanaDisplay unless data entity @s HandItems[0].tag.wrench run tag @s add throw
execute if entity @s[tag=throw] run summon minecraft:item ~ ~ ~ {Tags:["katana_showcase_throw"],PickupDelay:10s,Item:{id:"minecraft:stone",Count:1b}}
execute if entity @s[tag=throw] run data modify entity @e[tag=katana_showcase_throw,limit=1] Item set from entity @s HandItems[0]
execute if entity @s[tag=throw] run replaceitem entity @s weapon.mainhand air
execute if entity @s[tag=throw] run tag @e[tag=katana_showcase_throw] remove katana_showcase_throw
execute if entity @s[tag=throw] run tag @s remove throw
